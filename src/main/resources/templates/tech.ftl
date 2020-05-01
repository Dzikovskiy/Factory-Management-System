<#import "parts/common.ftl" as c>
<#import "parts/addCompModal.ftl" as acm>
<#import "parts/addOperationModal.ftl" as aom>

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
            <div class="add-group mr-5">
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
        <div class="card-deck">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Степлер</h5>
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
                        <tr>
                            <th scope="row">1</th>
                            <td>сталь</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>клепки</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>пластик</td>
                            <td>2</td>
                        </tr>
                        </tbody>
                    </table>
                    <button type="submit" class="btn btn-primary mr-3">Изменить</button>
                    <button type="submit" class="btn btn-danger">Удалить</button>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Степлер</h5>
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
                        <tr>
                            <th scope="row">1</th>
                            <td>сталь</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>клепки</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>пластик</td>
                            <td>2</td>
                        </tr>
                        </tbody>
                    </table>
                    <button type="submit" class="btn btn-primary mr-3">Изменить</button>
                    <button type="submit" class="btn btn-danger">Удалить</button>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Степлер</h5>
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
                        <tr>
                            <th scope="row">1</th>
                            <td>сталь</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>клепки</td>
                            <td>5</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>пластик</td>
                            <td>2</td>
                        </tr>
                        </tbody>
                    </table>
                    <button type="submit" class="btn btn-primary mr-3">Изменить</button>
                    <button type="submit" class="btn btn-danger">Удалить</button>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                </div>
            </div>
        </div>
    </div>

    <div class="addOperationModal">
        <@aom.modal/>
    </div>

    <div class="addCompModal">
        <@acm.modal/>
    </div>
</@c.page>