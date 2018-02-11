<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="cat" TagName="PropertyLink" Src="~/Desktopmodules/CAT_PropertyLink/Link.ascx" %>

<!-- Dotnetnuke skin design by www.DNNStyle.com -->
<div class="PageMaster">
    <div class="ControlPanel">
        <div runat="server" id="ControlPanel" ></div>
    </div>
    <div class="clearBoth"></div>
    <div class="BorderTop">
        <div class="BorderStripes"></div>
    </div>
    <div class="clearBoth"></div>
    <div class="LogoBg">
        <div class="SkinWidth">
            <div class="LogoArea">
                <% if len(PortalSettings.LogoFile) > 0 then %>
                    <dnn:LOGO runat="server" id="dnnLOGO" />
                <% else %>
                    <h1 class="PortalName"><a href="http://<%= PortalSettings.PortalAlias.HTTPAlias %>" title="<%= PortalSettings.PortalName %>"><%= PortalSettings.PortalName %></a></h1>
                <% end if %>
            </div>
            <div class="LoginArea">
                <cat:PropertyLink id="CartLink" runat="server" Separator="" ModuleName="CAT_Cart" cssclass="ViewCart" />
                <span>&nbsp;&nbsp;&nbsp;</span><cat:PropertyLink id="WishListLink" runat="server" Separator="" ModuleName="CAT_WishList" cssclass="Wish_Link" />
                <span>&nbsp;&nbsp;&nbsp;</span><cat:PropertyLink id="AccountLink" runat="server" Separator="" ModuleName="CAT_CustomerAccount" cssclass="Account_Link" />
                <span>&nbsp;&nbsp;&nbsp;</span><dnn:USER runat="server" id="dnnUSER" CssClass="RegisterUser" />
                <span>&nbsp;&nbsp;&nbsp;</span><dnn:LOGIN runat="server" id="dnnLOGIN" CssClass="LoginUser" />
            </div>
            <div class="LanguageArea">

            </div>
            <div class="TaglineArea">
                <div class="TaglinePane" id="TaglinePane" runat="server"></div>
            </div>
            <div class="clearBoth"></div>
      </div>
    </div>
    <div class="clearBoth"></div>
    <div class="MenuArea">
        <div class="SkinWidth">
            <div class="MenuFloat">
                <dnn:NAV runat="server" id="dnnNAV"  ProviderName="DNNMenuNavigationProvider" IndicateChildren="false" ControlOrientation="Horizontal" CSSControl="mainMenu" SeparatorLeftHTML="&lt;span class=&quot;SepLeftCss&quot;&gt;&nbsp;&lt;/span&gt;" SeparatorRightHTML="&lt;span class=&quot;SepRightCss&quot;&gt;&nbsp;&lt;/span&gt;" />
            </div>
            <div class="SearchInputArea">
               <div class="SearchContent">
                   <img src="<%= SkinPath %>spacer.gif" width="10" height="25px" alt="" class="SearchSpacer" />
                    <dnn:SEARCH runat="server" id="dnnSEARCH"  CssClass="SearchCSS" UseDropDownList="false" ShowWeb="false" ShowSite="false" Submit="<img src=&quot;spacer.gif&quot; style=&quot;border: none 0px;&quot; width=&quot;20&quot; height=&quot;25&quot; alt=&quot;Search&quot; title=&quot;Search&quot; /&gt;" />
               </div>
            </div>
            <div class="clearBoth"></div>
        </div>
    </div>
    <div class="clearBoth"></div>
    <div class="ContentArea">
        <div class="SkinWidth">
            <div id="ImagePane" class="ImagePane" runat="server"></div>
            <div class="clearBoth"></div>
            <div class="BreadcrumbArea">
                <span class="Breadcrumb">
                <dnn:TEXT runat="server" id="dnnTEXT"  CssClass="Breadcrumb" Text="Current Page:" ResourceKey="Breadcrumb" />&nbsp;&nbsp;
	            <dnn:BREADCRUMB runat="server" id="dnnBREADCRUMB"  CssClass="Breadcrumb" RootLevel="0" Separator="&nbsp;&raquo;&nbsp;" />
	            </span>
            </div> 
            <div class="CurrentDateArea">
                <span class="Breadcrumb">
                <dnn:CURRENTDATE runat="server" id="dnnCURRENTDATE" CssClass="current_date" />
                </span>
            </div>           
            <div class="clearBoth"></div>
            <div class="ContentPaneArea">
                <table cellspacing="0" cellpadding="0" style="width: 100%; border: none 0px;">
                    <tr>
                        <td id="LeftPane" class="LeftPane" runat="server"></td>
                        <td id="ContentPane" class="ContentPane" runat="server"></td>
                        <td id="RightPane" class="RightPane" runat="server"></td>
                    </tr>
                </table>
                <table cellspacing="0" cellpadding="0" style="width: 100%; border: none 0px;">
                    <tr>
                        <td id="FullPane" class="FullPane" runat="server"></td>
                    </tr>
                </table>
                <table cellspacing="0" cellpadding="0" style="width: 100%; border: none 0px;">
                    <tr>
                        <td id="LeftHalfPane" class="LeftHalfPane" runat="server"></td>
                        <td id="RightHalfPane" class="RightHalfPane" runat="server"></td>
                    </tr>
                </table>
                <table cellspacing="0" cellpadding="0" style="width: 100%; border: none 0px;">
                    <tr>
                        <td id="LeftWidePane" class="LeftWidePane" runat="server"></td>
                        <td id="RightNarrowPane" class="RightNarrowPane" runat="server"></td>
                    </tr>
                </table>
                <table cellspacing="0" cellpadding="0" style="width: 100%; border: none 0px;">
                    <tr>
                        <td id="LeftNarrowPane" class="LeftNarrowPane" runat="server"></td>
                        <td id="RightWidePane" class="RightWidePane" runat="server"></td>
                    </tr>
                </table>
                <table cellspacing="0" cellpadding="0" style="width: 100%; border: none 0px;">
                    <tr>
                        <td id="LeftNarrowPane2" class="LeftNarrowPane" runat="server"></td>
                        <td id="MiddleNarrowPane" class="MiddleNarrowPane" runat="server"></td>
                        <td id="RightNarrowPane2" class="RightNarrowPane" runat="server"></td>
                    </tr>
                </table>
                <table cellspacing="0" cellpadding="0" style="width: 100%; border: none 0px;">
                    <tr>
                        <td id="BottomPane" class="BottomPane" runat="server"></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="clearBoth"></div>
    <div class="FooterArea">
        <div class="SkinWidth">
            <div class="FooterBg">
                <div class="FooterTop">
                    <div class="FooterLinksArea">
                        <dnn:LINKS runat="server" id="dnnLINKS"  CssClass="FooterLinks" Level="Root" Separator="&nbsp;&nbsp;&nbsp;&nbsp;" />
                        <span class="FooterLinks"><br /></span>
                        <span class="FooterLinks"><a class="FooterLinks" href="http://www.zaporta.com">ZAPORTA S.A.</a>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        <dnn:PRIVACY runat="server" id="dnnPRIVACY"  CssClass="FooterLinks" />
                        <span class="FooterLinks">&nbsp;&nbsp;&nbsp;&nbsp;</span><dnn:TERMS runat="server" id="dnnTERMS" CssClass="FooterLinks" />
                    </div>
                    <div class="clearBoth"></div>
                    <div class="copyrightArea">
                        <dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT"  CssClass="copyright" />
                    </div>
                    <div class="clearBoth"></div>
                    <div class="PreloadImages">
                        <img src="<%= SkinPath %>RegisterH.gif" width="1" height="1" alt="" class="Invisible" />
                        <img src="<%= SkinPath %>Logout.gif" width="1" height="1" alt="" class="Invisible" />
                        <img src="<%= SkinPath %>PreferidosHover.gif" width="1" height="1" alt="" class="Invisible" />
                        <img src="<%= SkinPath %>TusPedidosHover.gif" width="1" height="1" alt="" class="Invisible" />
                        <img src="<%= SkinPath %>MenuHoverL.jpg" width="1" height="1" alt="" class="Invisible" />
                        <img src="<%= SkinPath %>MenuHoverM.jpg" width="1" height="1" alt="" class="Invisible" />
                        <img src="<%= SkinPath %>MenuHoverR.jpg" width="1" height="1" alt="" class="Invisible" />
                    </div>
                    <div class="clearBoth"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearBoth"></div>
</div>


