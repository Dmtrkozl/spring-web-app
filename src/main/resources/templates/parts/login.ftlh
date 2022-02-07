<#macro login path isRegisterForm>
    <form action="${path}" method="post" xmlns="http://www.w3.org/1999/html">
        <div class="mb-3">
            <label class="form-label"> User Name : </label>
            <input class="form-control" type="text" name="username" placeholder="User name"/>
        </div>

        <div class="mb-3">
            <label class="form-label"> Password: </label>
            <input class="form-control" type="password" name="password" placeholder="Password"/>
        </div>
         <#if isRegisterForm>
        <div class="mb-3">
            <label class="form-label"> Email: </label>
            <input class="form-control" type="email" name="email" placeholder="email@domen.com"/>
        </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Create<#else>Sign in</#if></button>
        <#if !isRegisterForm> <a href="/registration">Create new user</a></#if>
        </div>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Sign Out</button>
    </form>
</#macro>