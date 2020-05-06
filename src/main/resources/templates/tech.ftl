<#import "parts/common.ftl" as c>
<#import "parts/addCompModal.ftl" as acm>
<#import "parts/addOperationModal.ftl" as aom>
<#import "parts/addProdModal.ftl" as apm>

<@c.page>
    <div class="container-fluid mt-5">
        <div class="d-flex justify-content-end  mb-3">

            <div class="add-group addOperationBtn mr-4">
                <div class="d-flex my-3 mr-2 ml-3">
                    <div class="add-group-text mr-5 px-3">Добавить<br/>маршрут</div>
                    <div class="circle-btn blue">
                        <i class="material-icons" style="font-size:28px;">double_arrow</i>
                    </div>
                </div>
            </div>
            <div class="add-group addCompBtn mr-4">
                <div class="d-flex my-3 mr-2 ml-3">
                    <div class="add-group-text mr-5 px-3">Добавить<br/>материал</div>
                    <div class="circle-btn  green">
                        <i class="material-icons-outlined" style="font-size:28px;">widgets</i>
                    </div>
                </div>
            </div>
            <div class="add-group addProdBtn mr-5">
                <div class="d-flex my-3 mr-2 ml-3">
                    <div class="add-group-text mr-5 px-3">Добавить<br/>товар</div>
                    <div class="circle-btn  yellow">
                        <i class="material-icons" style="font-size:28px;">add</i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container my-5 pb-5">
        <div class="card-columns ">
            <#list products as prod>
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">${prod.name}</h5>
                        <p class="card-text ">Маршрут:
                        <ul class="list-unstyled text-left mt-2">
                            <li>1) покрасочный</li>
                            <li>2) упаковочный</li>
                            <li>3) сборочный</li>
                        </ul>
                        </p>
                        <table class="table table-sm pb-5 table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Комплектующие</th>
                                <th scope="col">Кол-во</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list prod.componentsNumberMap?keys as key>
                                <tr>
                                    <th scope="row">${key_index+1}</th>
                                    <td>${key}</td>
                                    <td>${prod.componentsNumberMap[key]}</td>
                                </tr>
                            </#list>
                            </tbody>
                        </table>
                        <div class="row">
                            <div class="col-4">
                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                <button type="submit" class="btn btn-primary mr-3">Изменить</button>
                            </div>
                            <div class="col-4">
                                <form method="post" action="deleteProduct">
                                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                    <input type="text" id="id" name="id" value="${prod.id}" readonly hidden>
                                    <button type="submit" class="btn btn-danger">Удалить</button>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>

    <div class="addOperationModal">
        <@aom.modal/>
    </div>

    <div class="addCompModal">
        <@acm.modal/>
    </div>

    <div class="addProdModal">
        <@apm.modal/>
    </div>
</@c.page>