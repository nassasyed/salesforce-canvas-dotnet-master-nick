<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default2.aspx.cs" Inherits="CanvasWebFormsHelloWorld._default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
    <script type="text/javascript" src="https:///nicklearn-dev-ed.my.salesforce.com/canvas/sdk/js/35.0/canvas-all.js"></script>
</head>
<body>
    <h2>Index</h2>
    <ul>
        <li><%=Greeting%></li>
        <li>Signed Request Status:
            <div>
            <%=SignedRequestStatus%>
            </div>
        </li>
    	<script>
            // Harcoded signed request in JASON. Can be programatic.
    	    var sr = JSON.parse('{"algorithm":"HMACSHA256","issuedAt":-1882588807,"userId":"005i0000001P83xAAC","client":{"instanceId":"_:AzureCanvasNew:j_id0:j_id1:canvasapp","targetOrigin":"https://nicklearn-dev-ed.my.salesforce.com","instanceUrl":"https://nicklearn-dev-ed.my.salesforce.com","oauthToken":"00Di0000000g2l5!AR8AQCpLmRs2fFqsoOo4iRQiB7ErFLUAW274JapWgqS1regPPKNrk6rc4tIVExn4boC2SrAdiKHsWe8ROiRsZfe9OrP6yU_W"},"context":{"user":{"language":"en_US","profilePhotoUrl":"https://nicklearn-dev-ed--c.na15.content.force.com/profilephoto/005/F","userId":"005i0000001P83xAAC","isDefaultNetwork":true,"userType":"STANDARD","profileId":"00ei0000001i6zr","email":"nsay@hotmail.com","networkId":null,"siteUrl":null,"timeZone":"America/Los_Angeles","userName":"nsay@learn.hotmail.com","locale":"en_US","fullName":"Nassar Syed","accessibilityModeEnabled":false,"profileThumbnailUrl":"https://nicklearn-dev-ed--c.na15.content.force.com/profilephoto/005/T","roleId":"00Ei0000000xoaJ","siteUrlPrefix":null,"currencyISOCode":"USD","firstName":"Nassar","lastName":"Syed"},"links":{"loginUrl":"https://nicklearn-dev-ed.my.salesforce.com","enterpriseUrl":"/services/Soap/c/35.0/00Di0000000g2l5","metadataUrl":"/services/Soap/m/35.0/00Di0000000g2l5","partnerUrl":"/services/Soap/u/35.0/00Di0000000g2l5","restUrl":"/services/data/v35.0/","sobjectUrl":"/services/data/v35.0/sobjects/","searchUrl":"/services/data/v35.0/search/","queryUrl":"/services/data/v35.0/query/","recentItemsUrl":"/services/data/v35.0/recent/","chatterFeedsUrl":"/services/data/v31.0/chatter/feeds","chatterGroupsUrl":"/services/data/v35.0/chatter/groups","chatterUsersUrl":"/services/data/v35.0/chatter/users","chatterFeedItemsUrl":"/services/data/v31.0/chatter/feed-items","userUrl":"/005i0000001P83xAAC"},"application":{"namespace":"test1234n","name":"AzureCanvasNew","canvasUrl":"https://localhost:44302","applicationId":"06Pi0000000Mv4q","version":"1.0","authType":"SIGNED_REQUEST","referenceId":"09Hi0000000D0HV","options":[],"developerName":"AzureCanvasNew"},"organization":{"organizationId":"00Di0000000g2l5EAA","name":"Nick Learn Inc.","multicurrencyEnabled":false,"namespacePrefix":"test1234n","currencyIsoCode":"USD"},"environment":{"locationUrl":"https://nicklearn-dev-ed.my.salesforce.com/canvas/proxy.jsp?a=%7B%22namespace%22%3A%22%22%2C%22developerName%22%3A%22AzureCanvasNew%22%2C%22name%22%3A%22AzureCanvasNew%22%7D\u0026ns=\u0026dn=AzureCanvasNew\u0026ri=undefined\u0026s=00Di0000000g2l5!AR8AQFzUNKymvvBGrHQj5q069ypoKOosTA9RYjn9vkSrIo.BF2_iL_0IMepVuitCGQc_SiUxNZR2EdhDV7e4EuEFWXFa8RXN\u0026sr=\u0026dm=https://nicklearn-dev-ed--test1234n.na15.visual.force.com\u0026o=%7B%22frameborder%22%3A%220%22%2C%22width%22%3A%7B%22value%22%3A%22750px%22%2C%22max%22%3A%221000px%22%7D%2C%22height%22%3A%7B%22value%22%3A%222000px%22%2C%22max%22%3A%222000px%22%7D%2C%22scrolling%22%3A%22no%22%2C%22displayLocation%22%3A%22Visualforce%22%2C%22showLoadingStatus%22%3Atrue%2C%22record%22%3A%7B%22Id%22%3A%22%22%2C%22fields%22%3A%22%22%7D%2C%22canvasId%22%3A%22j_id0%3Aj_id1%3Acanvasapp%22%2C%22parameters%22%3A%7B%22p1%22%3A%22ProjectIDX%22%2C%22p2%22%3A%22value2%22%2C%22p3%22%3A%22value3%22%7D%2C%22clientWidth%22%3A%221660px%22%2C%22clientHeight%22%3A%2230px%22%7D\u0026v=35.0","displayLocation":"Visualforce","uiTheme":"Theme3","dimensions":{"width":"750px","maxHeight":"2000px","maxWidth":"1000px","height":"2000px","clientWidth":"1660px","clientHeight":"30px"},"parameters":{"p1":"ProjectIDX","p2":"value2","p3":"value3"},"version":{"season":"WINTER","api":"35.0"}}}}');
    	    document.write("Success");
    	    document.write(sr);
    	    var url = sr.context.links.chatterFeedsUrl + "/news/" + sr.context.user.userId + "/feed-items";
    	    var body = { body: { messageSegments: [{ type: "Text", text: "Anirbhan Rocks!" }] } };
    	    Sfdc.canvas.client.ajax(url,
            {
                client: sr.client,
                method: 'POST',
                contentType: "application/json",
                data: JSON.stringify(body),
                success: function (data) {
                    if (201 === data.status) {
                        alert("Success");
                    }
                }
            });
	</script>
</body>
</html>

