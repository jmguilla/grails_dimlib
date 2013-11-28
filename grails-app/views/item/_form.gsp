<%@ page import="com.jmguilla.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="item.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="brand" name="brand.id" from="${com.jmguilla.Brand.list()}" optionKey="id" required="" value="${itemInstance?.brand?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="item.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${com.jmguilla.Type.list()}" optionKey="id" required="" value="${itemInstance?.type?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="item.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${itemInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'asin', 'error')} ">
	<label for="asin">
		<g:message code="item.asin.label" default="Asin" />
		
	</label>
	<g:textField name="asin" value="${itemInstance?.asin}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'ean', 'error')} ">
	<label for="ean">
		<g:message code="item.ean.label" default="Ean" />
		
	</label>
	<g:textField name="ean" value="${itemInstance?.ean}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'contributions', 'error')} ">
	<label for="contributions">
		<g:message code="item.contributions.label" default="Contributions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${itemInstance?.contributions?}" var="c">
    <li><g:link controller="contribution" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contribution" action="create" params="['item.id': itemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contribution.label', default: 'Contribution')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'pointsOfMeasure', 'error')} ">
	<label for="pointsOfMeasure">
		<g:message code="item.pointsOfMeasure.label" default="Points Of Measure" />
		
	</label>
	<g:select name="pointsOfMeasure" from="${com.jmguilla.PointOfMeasure.list()}" multiple="multiple" optionKey="id" size="5" value="${itemInstance?.pointsOfMeasure*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'urls', 'error')} ">
	<label for="urls">
		<g:message code="item.urls.label" default="Urls" />
		
	</label>
	
</div>

