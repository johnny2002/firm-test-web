<?xml version="1.0" encoding="UTF-8"?>
<jsp:root version="1.2" xmlns:jsp="http://java.sun.com/JSP/Page" 
	xmlns:c="urn:jsptld:http://java.sun.com/jsp/jstl/core">
<jsp:directive.page import="com.google.gson.Gson"/>
	<jsp:directive.page contentType="application/json; charset=UTF-8" isErrorPage="true"/>
		<jsp:scriptlet>
			Gson gson = new Gson();
			Throwable t1 = exception;
			Throwable t2 = exception.getCause();
			while (t2 != null){
				t1 = t2;
				t2 = t2.getCause();
			}
			request.setAttribute("error", t1.getMessage());
		</jsp:scriptlet>
		{error: "${error}"}
</jsp:root>