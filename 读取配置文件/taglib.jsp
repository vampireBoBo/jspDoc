<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 读取指定路径的配置文件  并将其存放于resInfo-->
<fmt:setBundle basename="properties/config" var="resInfo" />

<!-- 创建新的key-value 该值对应的域为resInfo key该域对应的配置文件中的key  将可以的值存放于var中  后期通过var的名称读取该值${adminName}-->
<fmt:message key="admin" var="adminName" bundle="${resInfo}" />
<fmt:message key="op.leader" var="operationLeader" bundle="${resInfo}" />
<fmt:message key="co.manager" var="computerroomManager" bundle="${resInfo}" />
<fmt:message key="op.person" var="operationPerson" bundle="${resInfo}" />