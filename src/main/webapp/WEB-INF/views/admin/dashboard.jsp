<%@ include file="template/header.html" %>
<body>

<!-- Left side content -->
<%@ include file="template/leftSidebar.html" %>
<!-- Right side -->
<div id="rightSide">

    <!-- Top fixed navigation -->
    <%@ include file="template/topNav.html" %>

    <!-- Responsive header -->
    <%@ include file="template/responsiveHeader.html" %>

    <!-- Title area -->
    <%@ include file="template/titleArea.html" %>

    <div class="line"></div>

    <!-- Shortcuts -->
    <%@ include file="template/shortcuts.html" %>

    <div class="line"></div>

    <!-- Main content wrapper -->
    <div class="wrapper">

        <!-- Note -->
        <div class="nNote nInformation hideit">
            <p><strong>INFORMATION: </strong>Pending Transfers and orders to be processed</p>
        </div>

        <!-- Products List table -->
        <div class="widget">
            <div class="title"><span class="titleIcon"><input type="checkbox" id="titleCheck" name="titleCheck"/></span>
                <h6>Media table</h6></div>
            <table cellpadding="0" cellspacing="0" width="100%" class="sTable withCheck mTable" id="checkAll">
                <thead>
                <tr>
                    <td><img src="img/icons/tableArrows.png" alt=""/></td>
                    <td>Image</td>
                    <td class="sortCol">
                        <div>Description<span></span></div>
                    </td>
                    <td class="sortCol">
                        <div>Date<span></span></div>
                    </td>
                    <td>File info</td>
                    <td>Actions</td>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <td colspan="6">
                        <div class="itemActions">
                            <label>Apply action:</label>
                            <select>
                                <option value="">Select action...</option>
                                <option value="Edit">Edit</option>
                                <option value="Delete">Delete</option>
                                <option value="Move">Move somewhere</option>
                            </select>
                        </div>
                        <div class="tPagination">
                            <ul>
                                <li class="prev"><a href="#" title=""></a></li>
                                <li><a href="#" title="">1</a></li>
                                <li><a href="#" title="">2</a></li>
                                <li><a href="#" title="">3</a></li>
                                <li><a href="#" title="">4</a></li>
                                <li><a href="#" title="">5</a></li>
                                <li><a href="#" title="">6</a></li>
                                <li>...</li>
                                <li><a href="#" title="">20</a></li>
                                <li class="next"><a href="#" title=""></a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                </tfoot>
                <tbody>
                <tr>
                    <td><input type="checkbox" id="titleCheck2" name="checkRow"/></td>
                    <td align="center"><a href="img/big.png" title="" rel="lightbox"><img src="img/user.png"
                                                                                             alt=""/></a></td>
                    <td><a href="#" title="">Image1 description</a></td>
                    <td align="center">Feb 12, 2012. 12:28</td>
                    <td class="fileInfo">
                        <span><strong>Size:</strong> 215 Kb</span><span><strong>Format:</strong> .jpg</span></td>
                    <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="img/icons/edit.png"
                                                                                     alt=""/></a><a href="#"
                                                                                                    title="Remove"
                                                                                                    class="tipS"><img
                            src="img/icons/remove.png" alt=""/></a></td>
                </tr>
                </tbody>
            </table>
        </div>
        <!-- Widgets -->
        <div class="widgets">
            <div class="oneTwo">
                <!-- Warehouses list widget -->
                <div class="widget">
                    <div class="title"><img src="img/icons/dark/users.png" alt="" class="titleIcon"/><h6>Partners
                        list</h6></div>
                    <ul class="partners">
                        <li>
                            <a href="#" title="" class="floatL"><img src="img/user.png" alt=""/></a>

                            <div class="pInfo">
                                <a href="#" title=""><strong>Dave Armstrong</strong></a>
                                <i>Creative director at Google Inc. Zurich</i>
                            </div>
                            <div class="pLinks">
                                <a href="#" title="Direct call" class="tipW"><img src="img/icons/pSkype.png" alt=""/></a>
                                <a href="#" title="Send an email" class="tipW"><img src="img/icons/pEmail.png"
                                                                                    alt=""/></a>
                            </div>
                            <div class="clear"></div>
                        </li>
                    </ul>
                </div>

                <!--  Transfers table widget -->
                <div class="widget">
                    <div class="title"><img src="img/icons/dark/timer.png" alt="" class="titleIcon"/><h6>TODO:
                        transfers</h6>

                        <div class="num"><a href="#" class="blueNum">+245</a></div>
                    </div>
                    <table cellpadding="0" cellspacing="0" width="100%" class="sTable taskWidget">
                        <thead>
                        <tr>
                            <td>Description</td>
                            <td width="100">Status</td>
                            <td width="60">Acts</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="taskD"><a href="#" title="">Start beta testing</a></td>
                            <td><span class="red f11">done</span></td>
                            <td class="actBtns"><a href="#" title="Update" class="tipS"><img src="img/icons/edit.png"
                                                                                             alt=""/></a><a href="#"
                                                                                                            title="Remove"
                                                                                                            class="tipS"><img
                                    src="img/icons/remove.png" alt=""/></a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>


            <!-- 2 columns widgets -->
            <div class="oneTwo">

                <!-- Search -->
                <div class="searchWidget">
                    <form action="">
                        <input type="text" name="search" placeholder="Enter search text..."/>
                        <input type="submit" name="find" value=""/>
                    </form>
                </div>
                <!-- Last Purchase info widget -->
                <div class="widget">
                    <div class="title">
                        <img src="img/icons/dark/money.png" alt="" class="titleIcon"/>
                        <h6>Last Order</h6>

                        <div class="topIcons">
                            <a href="#" class="tipS" title="Download statement"><img src="img/icons/downloadTop.png"
                                                                                     alt=""/></a>
                            <a href="#" class="tipS" title="Print invoice"><img src="img/icons/printTop.png" alt=""/></a>
                            <a href="#" class="tipS" title="Edit"><img src="img/icons/editTop.png" alt=""/></a>
                        </div>
                    </div>
                    <div class="newOrder">
                        <div class="userRow">
                            <a href="#" title=""><img src="img/user.png" alt="" class="floatL"/></a>
                            <ul class="leftList">
                                <li><a href="#" title=""><strong>Julia Maria Shine</strong></a></li>
                                <li>Order status:</li>
                            </ul>
                            <ul class="rightList">
                                <li><a href="#" title=""> <strong>#2112</strong></a></li>
                                <li class="orderIcons"><span class="oUnfinished"></span><span class="oShipped tipN"
                                                                                              title="Shipped on Feb 2nd, 2012"></span><span
                                        class="oPaid tipN" title="Paid on Feb 1st, 2012"></span></li>
                            </ul>
                            <div class="clear"></div>
                        </div>

                        <div class="cLine"></div>

                        <div class="orderRow">
                            <ul class="leftList">
                                <li>Date and time:</li>
                                <li>Subtotal amount:</li>
                                <li>Taxes</li>
                            </ul>
                            <ul class="rightList">
                                <li><strong>Jan 31, 2012</strong> | 12:51</li>
                                <li><strong class="green">$5,514.36</strong></li>
                                <li><strong class="orange">- $1,158.54</strong></li>
                            </ul>
                            <div class="clear"></div>
                        </div>

                        <div class="cLine"></div>
                        <div class="totalAmount"><h6 class="floatL blue">Total:</h6><h6 class="floatR blue">
                            $12,157.99</h6>

                            <div class="clear"></div>
                        </div>
                    </div>
                </div>

                <!-- New Customers widget -->
                <div class="widget">
                    <div class="title"><img src="img/icons/dark/add.png" alt="" class="titleIcon"/><h6>New
                        Customers</h6></div>

                    <div class="cLine"></div>

                    <div class="wUserInfo">
                        <a href="#" title="" class="wUserPic"><img src="img/user.png" alt=""/></a>
                        <ul class="leftList">
                            <li><a href="#" title=""><strong>Valery Dow</strong></a></li>
                            <li><a href="#" title="">valery@dow.com</a></li>
                        </ul>
                        <ul class="rightList">
                            <li><a href="#" class="green"><strong>$4,048</strong></a></li>
                            <li><a href="#" class="red">96 purchases</a></li>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="cLine"></div>

                    <div class="wUserInfo">
                        <a href="#" title="" class="wUserPic"><img src="img/user.png" alt=""/></a>
                        <ul class="leftList">
                            <li><a href="#" title=""><strong>Liam Paterson</strong></a></li>
                            <li><a href="#" title="">liam@paterson.com</a></li>
                        </ul>
                        <ul class="rightList">
                            <li><a href="#" class="green"><strong>$94,127.20</strong></a></li>
                            <li><a href="#" class="red">128 purchases</a></li>
                        </ul>
                        <div class="clear"></div>
                    </div>


                </div>


                <div class="clear"></div>

            </div>
            <div class="clear"></div>
        </div>


        <!-- Dynamic table -->
        <div class="widget">
            <div class="title"><img src="img/icons/dark/full2.png" alt="" class="titleIcon"/><h6>Dynamic table</h6>
            </div>
            <table cellpadding="0" cellspacing="0" border="0" class="display dTable">
                <thead>
                <tr>
                    <th>Rendering engine</th>
                    <th>Browser</th>
                    <th>Platform(s)</th>
                    <th>Engine version</th>
                </tr>
                </thead>
                <tbody>
                <tr class="gradeX">
                    <td>Trident</td>
                    <td>Internet
                        Explorer 4.0
                    </td>
                    <td>Win 95+</td>
                    <td class="center">4</td>
                </tr>
                <tr class="gradeC">
                    <td>Trident</td>
                    <td>Internet
                        Explorer 5.0
                    </td>
                    <td>Win 95+</td>
                    <td class="center">5</td>
                </tr>
                <tr class="gradeA">
                    <td>Trident</td>
                    <td>Internet
                        Explorer 5.5
                    </td>
                    <td>Win 95+</td>
                    <td class="center">5.5</td>
                </tr>
                <tr class="gradeA">
                    <td>Trident</td>
                    <td>Internet
                        Explorer 6
                    </td>
                    <td>Win 98+</td>
                    <td class="center">6</td>
                </tr>
                <tr class="gradeA">
                    <td>Trident</td>
                    <td>Internet Explorer 7</td>
                    <td>Win XP SP2+</td>
                    <td class="center">7</td>
                </tr>
                <tr class="gradeA">
                    <td>Trident</td>
                    <td>AOL browser (AOL desktop)</td>
                    <td>Win XP</td>
                    <td class="center">6</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Firefox 1.0</td>
                    <td>Win 98+ / OSX.2+</td>
                    <td class="center">1.7</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Firefox 1.5</td>
                    <td>Win 98+ / OSX.2+</td>
                    <td class="center">1.8</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Firefox 2.0</td>
                    <td>Win 98+ / OSX.2+</td>
                    <td class="center">1.8</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Firefox 3.0</td>
                    <td>Win 2k+ / OSX.3+</td>
                    <td class="center">1.9</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Camino 1.0</td>
                    <td>OSX.2+</td>
                    <td class="center">1.8</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Camino 1.5</td>
                    <td>OSX.3+</td>
                    <td class="center">1.8</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Netscape 7.2</td>
                    <td>Win 95+ / Mac OS 8.6-9.2</td>
                    <td class="center">1.7</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Netscape Browser 8</td>
                    <td>Win 98SE+</td>
                    <td class="center">1.7</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Netscape Navigator 9</td>
                    <td>Win 98+ / OSX.2+</td>
                    <td class="center">1.8</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.0</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.1</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.1</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.2</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.2</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.3</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.3</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.4</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.4</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.5</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.5</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.6</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">1.6</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.7</td>
                    <td>Win 98+ / OSX.1+</td>
                    <td class="center">1.7</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Mozilla 1.8</td>
                    <td>Win 98+ / OSX.1+</td>
                    <td class="center">1.8</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Seamonkey 1.1</td>
                    <td>Win 98+ / OSX.2+</td>
                    <td class="center">1.8</td>
                </tr>
                <tr class="gradeA">
                    <td>Gecko</td>
                    <td>Epiphany 2.20</td>
                    <td>Gnome</td>
                    <td class="center">1.8</td>
                </tr>
                <tr class="gradeA">
                    <td>Webkit</td>
                    <td>Safari 1.2</td>
                    <td>OSX.3</td>
                    <td class="center">125.5</td>
                </tr>
                <tr class="gradeA">
                    <td>Webkit</td>
                    <td>Safari 1.3</td>
                    <td>OSX.3</td>
                    <td class="center">312.8</td>
                </tr>
                <tr class="gradeA">
                    <td>Webkit</td>
                    <td>Safari 2.0</td>
                    <td>OSX.4+</td>
                    <td class="center">419.3</td>
                </tr>
                <tr class="gradeA">
                    <td>Webkit</td>
                    <td>Safari 3.0</td>
                    <td>OSX.4+</td>
                    <td class="center">522.1</td>
                </tr>
                <tr class="gradeA">
                    <td>Webkit</td>
                    <td>OmniWeb 5.5</td>
                    <td>OSX.4+</td>
                    <td class="center">420</td>
                </tr>
                <tr class="gradeA">
                    <td>Webkit</td>
                    <td>iPod Touch / iPhone</td>
                    <td>iPod</td>
                    <td class="center">420.1</td>
                </tr>
                <tr class="gradeA">
                    <td>Webkit</td>
                    <td>S60</td>
                    <td>S60</td>
                    <td class="center">413</td>
                </tr>
                <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 7.0</td>
                    <td>Win 95+ / OSX.1+</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 7.5</td>
                    <td>Win 95+ / OSX.2+</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 8.0</td>
                    <td>Win 95+ / OSX.2+</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 8.5</td>
                    <td>Win 95+ / OSX.2+</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 9.0</td>
                    <td>Win 95+ / OSX.3+</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 9.2</td>
                    <td>Win 88+ / OSX.3+</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera 9.5</td>
                    <td>Win 88+ / OSX.3+</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                    <td>Presto</td>
                    <td>Opera for Wii</td>
                    <td>Wii</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                    <td>Presto</td>
                    <td>Nokia N800</td>
                    <td>N800</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                    <td>Presto</td>
                    <td>Nintendo DS browser</td>
                    <td>Nintendo DS</td>
                    <td class="center">8.5</td>
                </tr>
                <tr class="gradeC">
                    <td>KHTML</td>
                    <td>Konqureror 3.1</td>
                    <td>KDE 3.1</td>
                    <td class="center">3.1</td>
                </tr>
                <tr class="gradeA">
                    <td>KHTML</td>
                    <td>Konqureror 3.3</td>
                    <td>KDE 3.3</td>
                    <td class="center">3.3</td>
                </tr>
                <tr class="gradeA">
                    <td>KHTML</td>
                    <td>Konqureror 3.5</td>
                    <td>KDE 3.5</td>
                    <td class="center">3.5</td>
                </tr>
                <tr class="gradeX">
                    <td>Tasman</td>
                    <td>Internet Explorer 4.5</td>
                    <td>Mac OS 8-9</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeC">
                    <td>Tasman</td>
                    <td>Internet Explorer 5.1</td>
                    <td>Mac OS 7.6-9</td>
                    <td class="center">1</td>
                </tr>
                <tr class="gradeC">
                    <td>Tasman</td>
                    <td>Internet Explorer 5.2</td>
                    <td>Mac OS 8-X</td>
                    <td class="center">1</td>
                </tr>
                <tr class="gradeA">
                    <td>Misc</td>
                    <td>NetFront 3.1</td>
                    <td>Embedded devices</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeA">
                    <td>Misc</td>
                    <td>NetFront 3.4</td>
                    <td>Embedded devices</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeX">
                    <td>Misc</td>
                    <td>Dillo 0.8</td>
                    <td>Embedded devices</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeX">
                    <td>Misc</td>
                    <td>Links</td>
                    <td>Text only</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeX">
                    <td>Misc</td>
                    <td>Lynx</td>
                    <td>Text only</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeC">
                    <td>Misc</td>
                    <td>IE Mobile</td>
                    <td>Windows Mobile 6</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeC">
                    <td>Misc</td>
                    <td>PSP browser</td>
                    <td>PSP</td>
                    <td class="center">-</td>
                </tr>
                <tr class="gradeU">
                    <td>Other browsers</td>
                    <td>All others</td>
                    <td>-</td>
                    <td class="center">-</td>
                </tr>
                </tbody>
            </table>
        </div>

    </div>

    <!-- Footer line -->
    <%@ include file="template/Footer.html" %>

</div>

<div class="clear"></div>

</body>
</html>