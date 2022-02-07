<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" value="${filter!}" placeholder="Search by tag">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </div>

    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
       aria-controls="collapseExample">
        Add new message
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="text" class="form-control" name="text" placeholder="Введите сообщение">
                <input type="text" class="form-control" name="tag" placeholder="Тэг">

                <div class="form-group">
                    <div class="custom-file">
                        <input class="form-control" type="file" name="file" id="formFile">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary mt-3">Добавить</button>
            </form>
        </div>
    </div>

    <div class="row" data-masonry='{"percentPosition": true }'>
        <#list messages as message>
            <div class="col-sm-4 col-md-3 py-3">
                <div class="card border-primary">
                    <#if message.filename??>
                        <img class="card-img-top" src="/img/${message.filename}">
                    </#if>
                    <div class="card-body">
                        <h3 class="card-title">${message.tag}</h3>
                        <p class="card-text">${message.text}</p>
                    </div>
                    <div class="card-footer">
                        ${message.authorName}
                    </div>
                </div>
            </div>
        </#list>
    </div>
</@c.page>