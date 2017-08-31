package ${packageName};

import android.databinding.DataBindingUtil;
import ${superClassFqcn};
import android.os.Bundle;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>
<#if applicationPackage?? && generateLayout>
import ${applicationPackage}.R;
</#if>

public class ${activityClass} extends ${superClass} {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        DataBindingUtil.setContentView(this, R.layout.${layoutName});
</#if>
<#include "../../../../common/jni_code_usage.java.ftl">
    }
<#include "../../../../common/jni_code_snippet.java.ftl">
}
