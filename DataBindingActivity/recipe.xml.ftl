<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
	
	<merge from="root/build.gradle"
              to="${escapeXmlAttribute(projectOut)}/build.gradle" />
   
    	 
    <instantiate from="root/res/layout/databinding_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
