package org.beesden.shop.view;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.beesden.shop.model.Category;
import org.beesden.shop.model.Config;
import org.beesden.utils.Utils;
import org.springframework.ui.ModelMap;

import com.fasterxml.jackson.databind.ObjectMapper;

public class View extends ViewServices {

	@SuppressWarnings("unchecked")
	public Map<String, Object> getConfig(HttpServletRequest request) {
		// Get site configuration settings
		Map<String, Object> config = new HashMap<String, Object>();
		List<Config> configList = configService.findAll("");
		for (Config configItem : configList) {
			if (configItem.getType() != null && configItem.getType().equals("map")) {
				try {
					HashMap<String, Object> result = new ObjectMapper().readValue(configItem.getValue(), HashMap.class);
					config.put(configItem.getName(), result);
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else if (configItem.getType() != null && configItem.getType().equals("integer")) {
				config.put(configItem.getName(), Integer.parseInt(configItem.getValue()));
			} else {
				config.put(configItem.getName(), configItem.getValue());
			}
		}
		return config;
	}

	public Map<String, Integer> getPagination(HttpServletRequest request, Integer size, Integer results) {
		// Object pagination
		Map<String, Integer> pagination = new HashMap<String, Integer>();
		// Check parameters
		String pageAttr = request.getParameter("page");
		Integer page = Utils.isNumeric(pageAttr) ? Integer.parseInt(pageAttr) : 1;
		String resultsAttr = request.getParameter("results");
		results = Utils.isNumeric(resultsAttr) ? Integer.parseInt(resultsAttr) : results;
		// Calculate pagination
		Integer first = (page - 1) * results + 1;
		first = first < 1 ? 1 : first;
		first = first > size ? 1 : first;
		Integer last = first + results - 1;
		last = last > size ? size : last;
		Integer pages = (int) Math.ceil((double) size / (double) results);
		// Add information to map
		pagination.put("page", page);
		pagination.put("pages", pages.intValue());
		pagination.put("results", results);
		pagination.put("first", first);
		pagination.put("last", last);
		pagination.put("size", size);
		return pagination;
	}

	public ModelMap getPromos(ModelMap model, Category promotion) {
		// Lazy load promotional products if requested
		if (promotion != null) {
			String sort = promotion.getSortOrder() != null && !promotion.getSortOrder().isEmpty() ? promotion.getSortOrder() : "heading";
			String dbQuery = productService.getQueryPaged("categories", promotion.getId().toString(), 1, sort);
			model.addAttribute("promotions", productService.findAll(dbQuery));
		}
		return model;
	}

	public String isAjax(ModelMap model, HttpServletRequest request, String redirect, Map<String, Object> config, long time) {
		// Use ajax layout if requested
		Boolean ajaxRequest = request.getParameter("ajax") != null && request.getParameter("ajax").equals("true");
		logger.info("Response time: " + (System.currentTimeMillis() - time) + "ms");
		if (!ajaxRequest) {
			model = templateStore(model, request, config);
			logger.info("Layout: " + redirect + "\n----------");
			return redirect;
		} else {
			model = templateAjax(model, request, config);
			logger.info("Layout : ajax." + redirect + "\n----------");
			return "ajax." + redirect;
		}
	}

	public ModelMap setTitle(ModelMap model, String pageType, String pageTitle) {
		// Set page type and title
		model.addAttribute("pageType", pageType);
		model.addAttribute("pageTitle", pageTitle);
		return model;
	}

	public ModelMap templateAjax(ModelMap model, HttpServletRequest request, Map<String, Object> config) {
		model.addAttribute("config", config);
		return model;
	}

	public ModelMap templateStore(ModelMap model, HttpServletRequest request, Map<String, Object> config) {
		// Get shared ajax view settings
		model = templateAjax(model, request, config);
		// Get site menus
		String dbQuery = menuService.getQuery(null, null, 1, "position");
		model.addAttribute("menu", menuService.findAll(dbQuery));
		// Add any system messages
		model.addAttribute("messages", request.getSession().getAttribute("messages"));
		request.getSession().setAttribute("messages", null);
		return model;
	}
}