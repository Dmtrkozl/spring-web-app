<#import "parts/common.ftlh" as c>

<@c.page>
    <h5>${username}</h5>
    ${message!}

    <form method="post" xmlns="http://www.w3.org/1999/html">
        <div class="mb-3">
            <label class="form-label"> Password: </label>
            <input class="form-control" type="password" name="password" placeholder="Password"/>
        </div>
            <div class="mb-3">
                <label class="form-label"> Email: </label>
                <input class="form-control" type="email" name="email" placeholder="email@domen.com" value="${email!}"/>
            </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary">Save</button>
        </div>
    </form>
</@c.page>

