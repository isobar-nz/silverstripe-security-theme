<form name="{$FormName}" {$FormAttributes}>
  <% if $Message || $ShowSuccessMessage %>
    <div class="l-sst-form__message">
      <% if $Message %>
        {$MessageHelper($Message)}
      <% else_if $ShowSuccessMessage %>
        <p class="c-sst-message c-sst-message--success">
          <% if $SuccessMessage %>
            {$SuccessMessage}
          <% else %>
            <%t SilverStripeSecurityTheme.BaseFormSuccessMessage 'Your form submission was saved successfully.' %>
          <% end_if %>
        </p>
      <% end_if %>
    </div>
  <% end_if %>

  <fieldset class="l-sst-form__fields">
    <div class="l-sst-form__content">
      {$Fields}
    </div>
    <div class="l-sst-form__actions">
      {$Actions}
    </div>
  </fieldset>
</form>
