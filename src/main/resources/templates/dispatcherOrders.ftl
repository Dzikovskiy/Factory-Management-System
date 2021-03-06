<#import "parts/common.ftl" as c>
<#import "parts/dispatcher/addProdOrderModal.ftl" as apom>

<@c.page>
    <div class="container-fluid mt-5">
        <div class="d-flex justify-content-end  mb-3">
            <div class="add-group addProdOrderBtn mr-5">
                <div class="d-flex my-3 mr-2 ml-3">
                    <div class="add-group-text mr-5 px-3">Добавить<br/>заказ</div>
                    <div class="circle-btn  yellow">
                        <i class="material-icons" style="font-size:28px;">add</i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row mb-4">
            <div class="col ml-5">
                <div class="selling-plan-header">Производственные заказы:</div>
            </div>
        </div>

        <div class="row">
            <table class="table table-striped ">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Товар</th>
                    <th scope="col">Кол-во</th>
                    <th scope="col">Произведено</th>
                    <th scope="col">Остаток</th>
                    <th scope="col">Дата готовности</th>
                    <th scope="col">Статус</th>
                    <th scope="col">редактировать</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <#if orders?has_content>
                    <#list orders as order>
                        <tr>
                            <th scope="row">${order_index+1}</th>
                            <td>${order.product.name}</td>
                            <td>${order.number}</td>
                            <td>${order.produced}</td>
                            <td>${order.balance}</td>
                            <td>${order.availabilityDate?date}</td>
                            <td>${order.status.getName()}</td>
                            <td><i class="material-icons"
                                   style="font-size:25px; color: #59CD90;cursor: pointer">tune</i> <i
                                        class="material-icons"
                                        style="font-size:25px; color: #EB3E33;cursor: pointer">cancel</i></td>
                        </tr>
                    </#list>
                </#if>
                </tbody>
            </table>
        </div>

    </div>

    <div class="addProdOrderModal">
        <@apom.modal/>
    </div>
</@c.page>