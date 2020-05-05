<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="projectDAA._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script type="text/javascript" src="script/dropdown.js"></script>
    <script language="javascript" type="text/javascript" src="script/MenuScript.js"></script>
    <link rel="Stylesheet" type="text/css" href="script/StyleSheet.css" />
    <script type="text/javascript">
        var bg_submenu = "#cccccc"; // màu nền của submenu
        var bg_hv_submenu = "#999999"; // màu nền của submenu khi rê chuột
        function otab() {
            document.write('<table border="0" bordercolor="#999" style="background-color: #FFF" cellspacing="0" cellpadding="0">');
        }
        function submn(submn_link, submn_text) {
            document.write('<tr><td onmouseover="this.style.background=\'' + bg_hv_submenu + '\'" onmouseout="this.style.background=\'' + bg_submenu + '\'" class="nav23sub" onclick="window.location.href=\'' + submn_link + '\'">' + submn_text + '</td></tr>');
        }
        function ctab() { document.write('<\/table>'); }
        function otab(child_id) {
            document.write('<table id="' + child_id + '" border="0" bordercolor="#999" style="background-color: #FFF" cellspacing="0" cellpadding="0">');
        }
    </script>


    <script src="script/jquery-1.4.2.min.js" type="text/javascript"></script>
    <style type="text/css">
        .neoslideshow {
            position: relative;
            width: 100%;
            height: 300px;
        }

            .neoslideshow img {
                position: absolute;
                left: 0;
                top: 0;
            }

        .style1 {
            width: 100%;
        }

        .style2 {
            height: 60px;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $('.neoslideshow img:gt(0)').hide();
            setInterval(function () {
                $('.neoslideshow :first-child').fadeOut()
                    .next('img').fadeIn()
                    .end().appendTo('.neoslideshow');
            },
                4000);
        })
    </script>




    <title>Untitled Page</title>
</head>
<body>

    <form id="form1" runat="server">

        <table align="center"
            style="width: 1200px; margin-top: -10px; margin-bottom: -10px;">
            <tr>
                <td colspan="3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/anh/banner.png"
                        Width="40%" />
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center" valign="top">
                    <div class="nav23">

                        <table width="90%">
                            <tr valign="top">
                                <td>

                                    <a id="idmenu1" href="#">
                                        <asp:Image ID="Image26" runat="server" ImageUrl="~/anh/home-logo.png"
                                            Width="60%" />
                                    </a>
                                    <a id="idmenu2" href="#">Giới Thiệu</a>
                                    <a id="idmenu3" href="#">Thông báo</a>
                                    <a id="idmenu4" href="#">Quy Định - Hướng Dẫn  </a>
                                    <a id="idmenu5" href="#">Kế Hoạch Năm</a>
                                    <a id="idmenu6" href="#">Chương Trình Đào Tạo</a>
                                    <a id="idmenu7" href="#">Lịch</a>
                                    <a id="idmenu8" href="Dangnhap.aspx">Đăng Nhập</a>

                                </td>
                                <td valign="top">
                                    <asp:TextBox ID="TextBox1" runat="server" Height="15px" Width="130px"></asp:TextBox>
                                </td>
                                <td valign="top">

                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px"
                                        ImageUrl="~/anh/Search.png" Width="25px" />

                                </td>
                            </tr>
                        </table>
                    </div>

                    <script type="text/javascript">
                        otab("idmenu1_child");
                        submn('link_submenu1.1', 'Cổng Thông Tin Đào Tạo');
                        submn('link_submenu1.2', 'Các Ngành Đào Tạo');
                        submn('link_submenu1.3', 'Phòng Đào Tạo Đại Học');
                        ctab();
                        at_attach("idmenu1", "idmenu1_child", "hover", "y", "pointer");

                        otab("idmenu2_child");
                        submn('link_submenu2.1', 'Đại Học Chính Quy');
                        submn('link_submenu2.1', 'Văn Bằng 2');
                        submn('link_submenu2.1', 'Đào Tạo Từ Xa');
                        ctab();
                        at_attach("idmenu2", "idmenu2_child", "hover", "y", "pointer");

                        otab("idmenu3_child");
                        submn('link_submenu3.1', 'Quy Chế, Quy Định Đào Tạo Đại Học');
                        submn('link_submenu3.1', 'Quy Chế Tuyển Sinh Đại Học TXQM');
                        submn('link_submenu3.1', 'Quy Định Về Xây Dựng Giáo Trình');
                        submn('link_submenu3.1', 'Quy Định Đào Tạo Ngắn Hạn');
                        submn('link_submenu3.1', 'Quy Trình Cho Giáo Viên');
                        submn('link_submenu3.1', 'Quy Trình Cho Sinh Viên');
                        ctab();
                        at_attach("idmenu3", "idmenu3_child", "hover", "y", "pointer");

                        otab("idmenu5_child");
                        submn('link_submenu5.1', 'Hệ Chính Quy');
                        submn('link_submenu5.2', 'Hệ Từ Xa');
                        ctab();
                        at_attach("idmenu5", "idmenu5_child", "hover", "y", "pointer");

                        otab("idmenu6_child");
                        submn('link_submenu6.1', 'Thông Tin Hợp Tác');
                        submn('link_submenu6.1', 'Hình Ảnh Hợp Tác');
                        submn('link_submenu6.1', 'Thông Tin Du Học');
                        ctab();
                        at_attach("idmenu6", "idmenu6_child", "hover", "y", "pointer");

                        otab("idmenu7_child");
                        ctab();
                        at_attach("idmenu7", "idmenu7_child", "hover", "y", "pointer");
                    </script>


                </td>
            </tr>
            <tr>
                <td width="22%" align="left" style="padding: 10px" valign="top">
                    <table align="center"
                        style="background-color: #2BA2F0; color: #FFFFFF; border-radius: 5px; -moz-border-radius: 5px;"
                        class="style1">
                        <tr>
                            <td align="center" colspan="2" style="padding: 7px">
                                <div style="padding: 5px; margin: -2px; color: #2BA2F0; font-weight: bold; background-color: #FFFFFF; border-radius: 5px; -moz-border-radius: 5px;">
                                    Tiện Ích
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/anh/Email.png"
                                    Width="27px" />
                            </td>
                            <td width="80%" style="font-weight: bold">
                                <a href="#">Hộp Thư GV-CBCC</a></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <hr style="background-color: #0066FF;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/anh/Info.png"
                                    Width="30px" />
                            </td>
                            <td style="font-weight: bold">
                                <a href="#">Thông <span lang="en-us">T</span>in Nội Bộ</a></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <hr style="background-color: #0066FF;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/anh/Email.png"
                                    Width="30px" />
                            </td>
                            <td style="font-weight: bold">
                                <a href="#">Hộp Thư Sinh Viên</a></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <hr style="background-color: #0066FF;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image5" runat="server" Height="30px"
                                    ImageUrl="~/anh/Bar Chart.png" Width="30px" />
                            </td>
                            <td style="font-weight: bold">
                                <a href="#">Lịch Công Tác</a></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <hr style="background-color: #0066FF;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image6" runat="server" Height="30px"
                                    ImageUrl="~/anh/Picture.png" Width="30px" />
                            </td>
                            <td style="font-weight: bold">
                                <a href="#">Hình Ảnh Hoạt Động</a></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <hr style="background-color: #0066FF;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image7" runat="server" Height="30px"
                                    ImageUrl="~/anh/Loading.png" Width="30px" />
                            </td>
                            <td style="font-weight: bold">
                                <a href="#">Sơ Đồ Phòng Học</a></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" valign="top">
                                <hr style="background-color: #0066FF;" />
                            </td>
                        </tr>
                    </table>
                    <p>
                        <asp:Image ID="Image16" runat="server" ImageUrl="~/anh/qc1.jpg" Width="100%" /><br />
                        <asp:Image ID="Image17" runat="server" ImageUrl="~/anh/qc2.jpg" Width="100%" /><br />
                        <asp:Image ID="Image18" runat="server" ImageUrl="~/anh/qc3.png" Width="100%" /><br />
                        <asp:Image ID="Image19" runat="server" ImageUrl="~/anh/qc4.jpg" Width="100%" />
                    </p>
                </td>
                <td width="55%" style="padding: 10px 2px 10px 2px;" valign="top">

                    <p></p>
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <table width="70%"
                                    style="padding: 0px; background-color: #2BA2F0; color: #FFFFFF; font-weight: bold; font-size: 16px; border-radius: 5px; -moz-border-radius: 5px; margin-bottom: -5px;">
                                    <tr>
                                        <td align="right" width="15%">
                                            <asp:Image ID="Image13" runat="server" Height="35px"
                                                ImageUrl="~/anh/Modify.png" Width="40px" />
                                        </td>
                                        <td>
                                            <span lang="en-us">&nbsp; </span>
                                            <asp:Label ID="Label1" runat="server" Text="THÔNG BÁO CHUNG"></asp:Label>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-style: outset; border-color: #999999">
                                <table style="width: 100%;">
                                    <tr>
                                        <td colspan="2">
                                            <span lang="en-us" style="color: #2BA2F0; font-weight: bold; font-size: 18px;">
                                                <a href="#">Hội Thảo Thống Nhất Chương Trình Đào Tạo Ngành Quản Lý Siêu Thị Và Ngành Quản Lý 
                                            Kho</a></span></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <span lang="en-us">&nbsp;</span><i>[Đăng ngày : 22/05/2012]</i></td>
                                    </tr>
                                    <tr>
                                        <td align="center" width="25%">
                                            <asp:Image ID="Image14" runat="server" Height="120px" ImageUrl="~/anh/1.jpg"
                                                Width="130px" />
                                        </td>
                                        <td>
                                            <p>
                                                Sáng ngày 21/05 tại Hội trường B trường DHCNTT diễn ra 
                                                Hội thảo&nbsp;thống nhất chương trình đào tạo ngành Quản lý siêu thị và ngành Quản lý 
                                                kho.
                                            </p>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="25%" colspan="2">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True"
                                                ForeColor="#BB7100">Xem Tiếp</asp:HyperLink>
                                            <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <p></p>
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <table width="70%"
                                    style="padding: 0px; background-color: #2BA2F0; color: #FFFFFF; font-weight: bold; font-size: 16px; border-radius: 5px; -moz-border-radius: 5px; margin-bottom: -5px;">
                                    <tr>
                                        <td align="right" width="15%">
                                            <asp:Image ID="Image12" runat="server" Height="35px"
                                                ImageUrl="~/anh/Modify.png" Width="40px" />
                                        </td>
                                        <td>
                                            <span lang="en-us">&nbsp; </span>
                                            <asp:Label ID="Label2" runat="server" Text="THÔNG BÁO NGHỈ, BÙ"></asp:Label>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-style: outset; border-color: #999999">
                                <table style="width: 100%;">
                                    <tr>
                                        <td colspan="2">
                                            <span lang="en-us" style="color: #2BA2F0; font-weight: bold; font-size: 18px;">
                                                <a href="#">Hội Thảo Thống Nhất Chương Trình Đào Tạo Ngành Quản Lý Siêu Thị Và Ngành Quản Lý 
                                            Kho</a></span></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <span lang="en-us">&nbsp;</span><i>[Đăng ngày : 22/05/2012]</i></td>
                                    </tr>
                                    <tr>
                                        <td align="center" width="25%">
                                            <asp:Image ID="Image15" runat="server" Height="120px" ImageUrl="~/anh/1.jpg"
                                                Width="130px" />
                                        </td>
                                        <td>
                                            <p>
                                                Sáng ngày 21/05 tại Hội trường B trường DHCNTTT diễn ra 
                                                Hội thảo&nbsp;thống nhất chương trình đào tạo ngành Quản lý siêu thị và ngành Quản lý 
                                                kho.
                                            </p>
                                           </td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="25%" colspan="2">
                                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True"
                                                ForeColor="#BB7100">Xem Tiếp</asp:HyperLink>
                                            <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                </td>
                <td width="23%" style="padding: 10px 0px 10px 10px" valign="top">
                    <table style="border: medium groove #999999; width: 100%; font-size: 14px; border-radius: 7px; -moz-border-radius: 7px; color: #333333;">
                        <tr>
                            <td align="center" colspan="2"
                                style="padding: 4px; font-size: 18px; font-weight: bold; background-color: #2BA2F0; color: #FFFFFF; border-radius: 5px; -moz-border-radius: 5px;">Thông Báo</td>
                        </tr>
                        <tr>
                            <td align="center" width="20%">
                                <asp:Image ID="Image8" runat="server" Height="30px" ImageUrl="~/anh/Next.png"
                                    Width="30px" />
                            </td>
                            <td style="padding: 5px 0px 5px 0px">
                                <a href="#">Kết Quả Công Nhận Xét Tốt Nghiệp Khóa 2012</a></td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image9" runat="server" Height="30px" ImageUrl="~/anh/Next.png"
                                    Width="30px" />
                            </td>
                            <td style="padding: 5px 0px 5px 0px">
                                <a href="#">Thu Học Phí Học Kì II Năm Học 2011-2012</a></td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image10" runat="server" Height="30px" ImageUrl="~/anh/Next.png"
                                    Width="30px" />
                            </td>
                            <td style="padding: 5px 0px 5px 0px">
                                <a href="#">Tổ Chức Thi Cấp Chứng Chỉ Hướng Dẫn Du Lịch</a></td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image11" runat="server" Height="30px" ImageUrl="~/anh/Next.png"
                                    Width="30px" />
                            </td>
                            <td style="padding: 5px 0px 5px 0px">
                                <span lang="en-us"><a href="#">Hướng Dẫn Tra Cứu Thông Tin Trên WebSite Của Trường</a></span></td>
                        </tr>
                    </table>

                    <br />
                    <p>
                        <asp:Image ID="Image23" runat="server" ImageUrl="~/anh/qc5.jpg" Width="100%" /><br />
                        <asp:Image ID="Image24" runat="server" ImageUrl="~/anh/qc6.jpg" Width="100%" /><br />
                        <asp:Image ID="Image25" runat="server" ImageUrl="~/anh/qc7.jpg" Width="100%" />
                    </p>
                </td>
            </tr>
            <tr>
                <td colspan="3"
                    style="padding: 20px; background-color: #2BA2F0; color: #FFFFFF; border-radius: 7px; -moz-border-radius: 7px;">
                    Điện thoại : 0905350442 -&nbsp;, Fax : 08.38962474
                <br />
                    Website: http://www.uit.edu.vn &nbsp;- Email: dhcntt@gm.edu.vn</td>
            </tr>
        </table>

    </form>

</body>
</html>
