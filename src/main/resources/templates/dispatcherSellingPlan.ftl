<#import "parts/common.ftl" as c>
<#import "parts/dispatcher/addProdOrderModal.ftl" as apom>

<@c.page>

    <div class="container-fluid pt-5 mt-5">
        <div class="container">
            <div class="row  mb-4">
                <div class="col-2 ml-5">
                    <div class="selling-plan-header">Месяц:</div>
                </div>
                <div class="col-5"></div>
                <div class="col-2 ml-5 ">
                    <div class="selling-plan-header">Выполнение:</div>
                </div>
            </div>

            <div class="jumbotron img-shadow my-5 py-5">
                <div class="d-flex py--5 ">
                    <div class="col-2">
                        <h2 class="">Январь</h2>
                    </div>
                    <div class="col-6 mr-5">
                        <table class="table table-striped table-sm">
                            <thead class="">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Товар</th>
                                <th scope="col">Кол-во</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>степлер</td>
                                <td>325</td>
                                <td><i class="material-icons" style="font-size:25px; color: #59CD90">check_box</i></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>карандаш красный</td>
                                <td>1500</td>
                                <td><i class="material-icons" style="font-size:25px; color: #EB3E33">indeterminate_check_box</i>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>карандаш синий</td>
                                <td>2500</td>
                                <td><i class="material-icons" style="font-size:25px; color: #59CD90">check_box</i></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-3">
                        <h4 class="">Не выполнен</h4>
                    </div>
                </div>

            </div>
            <div class="jumbotron img-shadow my-5 py-5">
                <div class="d-flex py--5 ">
                    <div class="col-2">
                        <h2 class="">Февраль</h2>
                    </div>
                    <div class="col-6 mr-5">
                        <table class="table table-striped table-sm">
                            <thead class="">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Товар</th>
                                <th scope="col">Кол-во</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>степлер</td>
                                <td>200</td>
                                <td><i class="material-icons" style="font-size:25px; color: #59CD90">check_box</i></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>карандаш красный</td>
                                <td>100</td>
                                <td><i class="material-icons" style="font-size:25px; color: #59CD90">check_box</i>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-3">
                        <h4 class="">Выполнен</h4>
                    </div>
                </div>

            </div>
            <div class="jumbotron img-shadow my-5 py-5">
                <div class="d-flex py--5 ">
                    <div class="col-2">
                        <h2 class="">Март</h2>
                    </div>
                    <div class="col-6 mr-5">
                        <table class="table table-striped table-sm">
                            <thead class="">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Товар</th>
                                <th scope="col">Кол-во</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>степлер</td>
                                <td>325</td>
                                <td><i class="material-icons" style="font-size:25px; color: #59CD90">check_box</i></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>карандаш черный</td>
                                <td>2500</td>
                                <td><i class="material-icons" style="font-size:25px; color: #59CD90">check_box</i></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>карандаш</td>
                                <td>1500</td>
                                <td><i class="material-icons" style="font-size:25px; color: #EB3E33">indeterminate_check_box</i>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div>

                    <div class="col-3">
                        <h4 class="">Не выполнен</h4>
                    </div>
                </div>

            </div>
            <div class="jumbotron img-shadow my-5 py-5">
                <div class="d-flex py--5 ">
                    <div class="col-2">
                        <h2 class="">Апрель</h2>
                    </div>
                    <div class="col-6 mr-5">
                        <table class="table table-striped table-sm">
                            <thead class="">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Товар</th>
                                <th scope="col">Кол-во</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>степлер</td>
                                <td>325</td>
                                <td><i class="material-icons" style="font-size:25px; color: #59CD90">check_box</i></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>карандаш красный</td>
                                <td>1500</td>
                                <td><i class="material-icons" style="font-size:25px; color: #EB3E33">indeterminate_check_box</i>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>карандаш синий</td>
                                <td>2500</td>
                                <td><i class="material-icons" style="font-size:25px; color: #59CD90">check_box</i></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-3">
                        <h4 class="">Не выполнен</h4>
                    </div>
                </div>

            </div>


        </div>
    </div>

    <div class="addProdOrderModal">
        <@apom.modal/>
    </div>
</@c.page>