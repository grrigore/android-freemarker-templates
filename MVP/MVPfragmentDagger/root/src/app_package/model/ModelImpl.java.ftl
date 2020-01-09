package ${packageName}.model;

<#assign fragment>
    ${fragmentClass?split("Fragment")[0]}
</#assign>

public class ${fragment}Model implements I${fragment}Model {

}