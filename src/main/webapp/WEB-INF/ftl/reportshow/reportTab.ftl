<#import "/macros/spring.ftl" as spring>
<#assign sf = JspTaglibs["http://www.springframework.org/tags/form"] >
<#assign c = JspTaglibs["http://java.sun.com/jsp/jstl/core"] >
<#assign fmt = JspTaglibs["http://java.sun.com/jsp/jstl/fmt"] >
<#assign disp = JspTaglibs["http://displaytag.sf.net"] >
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>报表组页面</title>
<#include RscPage> 
</head>
<body>
	<@disp.table uid="reportLet" list=reportGroup.reportLets excludedParams="*" partialList=false
				class="resultTable">
		<@disp.caption>${reportGroup.groupName}</@disp.caption>
		<@disp.column title="报表代码" property="reportCode" />
		<@disp.column title="报表名称" property="reportName" />
		<@disp.column title="报表频率"> <@fmt.message key="reportshow.reportlet.frequence."+reportLet.frequence /> </@disp.column>
	</@disp.table>
<ul>

</ul>
</body>
</html>