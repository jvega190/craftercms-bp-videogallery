<#import "/templates/system/common/crafter.ftl" as crafter />
<#include "/templates/web/includes/global.ftl" />

<#macro default cstudioSupport = true>
  <!--
  Author: W3layouts
  Author URL: http://w3layouts.com
  License: Creative Commons Attribution 3.0 Unported
  License URL: http://creativecommons.org/licenses/by/3.0/
  -->
  <!DOCTYPE HTML>
  <html data-craftercms-preview="${modePreview?c}">
  <head>
    <title>Videostube Website Template | Home :: W3layouts</title>
    <link rel="shortcut icon" type="image/x-icon" href="/static-assets/images/pageicon.png" />
    <link href="/static-assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <meta
      name="keywords"
      content="Videostube iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="/static-assets/css/menu.css">
    <link rel="stylesheet" href="/static-assets/css/fontAwesome.css">
    <link rel="stylesheet" href="/static-assets/css/jssocials.css">
    <link rel="stylesheet" href="/static-assets/css/socialthemes/jssocials-theme-flat.css">
    <link rel="stylesheet" href="/static-assets/css/alertify.min.css">
    <link rel="stylesheet" href="/static-assets/css/jstree/style.css" />
    <link rel="stylesheet" href="/static-assets/css/slick/slick.css" />
    <link rel="stylesheet" href="/static-assets/css/slick/slick-theme.css" />
    <@crafter.head/>
  </head>
  <body >
    <@crafter.body_top/>
    <!----start-wrap---->
    <div class="wrap">
      <header id="header">
        <@renderHeader/>
      </header>

      <div class="clear"></div>

      <main class="mainContainer">
        <#nested/>
      </main>

      <div class="clear"></div>
    </div>
    <div class="clear"></div>
    </div>

    <footer id="footer">
      <@renderFooter/>
    </footer>
    </div>
    <!----End-wrap---->
    <script>window.jQuery || document.write('<script src="/static-assets/js/jquery-1.11.2.min.js"><\/script>');</script>
    <script src="/static-assets/js/alertify.min.js"></script>
    <script src="/static-assets/js/jstree.min.js"></script>
    <script src="/static-assets/js/jssocials.min.js"></script>
    <script src="/static-assets/js/handlebars-v4.0.11.js"></script>
    <!----Main-App Utils---->
    <script src="/static-assets/js/utils/state_Utils.js"></script>
    <script src="/static-assets/js/utils/mail_Utils.js"></script>
    <script src="/static-assets/js/utils/slider_Utils.js"></script>
    <script src="/static-assets/js/utils/jsTree_Utils.js"></script>
    <script src="/static-assets/js/utils/videos_Utils.js"></script>
    <script src="/static-assets/js/utils/pagination_Utils.js"></script>
    <script src="http://maps.google.com/maps/api/js"></script>
    <script src="/static-assets/js/gmaps.min.js"></script>
    <!----Main-App Libraries---->
    <script src="/static-assets/js/slick.min.js"></script>

    <script src="https://unpkg.com/rxjs@6.6.0/bundles/rxjs.umd.min.js"></script>
    <script src="/static-assets/js/craftercms-sdk/utils/utils.umd.min.js"></script>
    <script src="/static-assets/js/craftercms-sdk/classes/classes.umd.min.js"></script>
    <script src="/static-assets/js/craftercms-sdk/content/content.umd.min.js"></script>

    <script src="/static-assets/js/main.js"></script>
    <script>
      (function () {
        <#list contentModel.shareinsocialnetworks_o.item as social>
        socialMedia.push("${social.key}");
        </#list>
      })();
    </script>
    <script>
      var locationLatitude = ${contentModel.latitude_s};
      var locationLongitude = ${contentModel.longitude_s};
      var alertMsg = '';
      if (!(-85 < locationLatitude && locationLatitude < 85)) {
        alertMsg += 'Invalid latitude. Must be between -85 and 85.\n';
      }
      if (!(-180 < locationLongitude && locationLongitude < 180)) {
        alertMsg += 'Invalid longitude_s. Must be between -180 and 180.\n';
      }
      if (alertMsg) {
        alert(alertMsg);
      }

      var map = new GMaps({
        el: '.ourmap',
        lat: locationLatitude,
        lng: locationLongitude,
        gestureHandling: 'none',
        scrollwheel: false,
        zoom: 15,
        zoomControl: true,
        panControl: false,
        streetViewControl: true,
        mapTypeControl: false,
        overviewMapControl: false,
        clickable: false,
        styles: [{
          'stylers': [{ 'hue': '#000' }, { saturation: -200 },
            { gamma: 0.50 }]
        }]
      });
      map.addMarker({
        lat: ${contentModel.latitude_s},
        lng: ${contentModel.longitude_s}
      });
    </script>
    <@crafter.body_bottom/>
  </body>
  </html>
</#macro>