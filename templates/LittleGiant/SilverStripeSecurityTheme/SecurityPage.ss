<!doctype html>
<html class="no-js" lang="{$ContentLocale}">

<head>
  <% base_tag %>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title><% if $MetaTitle %>{$MetaTitle}<% else %>{$Title}<% end_if %></title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  {$MetaTags(false)}
  <link rel="canonical" href="{$AbsoluteLink}">
  <link rel="alternate" href="{$AbsoluteLink}" hreflang="{$ContentLocale}">
</head>
<body class="{$ClassName.ShortName}"<% if $i18nScriptDirection %> dir="{$i18nScriptDirection}"<% end_if %>>
<div class="l-sst-security">
  <main class="l-sst-security__content" role="main">
    <% if $SecurityLogo %>
      <div class="c-sst-logo">
        <a href="{$BaseHref}" class="c-sst-logo__link">
          <img src="{$SecurityLogo}" alt="{$SiteConfig.Title}<%t SecurityPage.LogoSuffix ' Logo' %>" class="c-sst-logo__item" />
        </a>
      </div>
    <% end_if %>

    <div class="c-sst-box">
      <h1 class="c-sst-heading c-sst-heading--h3">{$Title}</h1>
      <% if $Form %>
        <% with $Form %>
          <% include LittleGiant/SilverStripeSecurityTheme/Form %>
        <% end_with %>
      <% end_if %>
    </div>
  </main>
</div>
</body>
</html>
