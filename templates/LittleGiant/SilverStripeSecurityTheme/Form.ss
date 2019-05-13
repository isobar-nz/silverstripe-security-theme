<form name="{$FormName}" {$FormAttributes} class="l-sst-form">
  <% if $Message %>
    <p class="c-sst-message {$MessageType}">{$Message}</p>
  <% end_if %>

  <div class="l-sst-form__content">
    <% loop $Fields %>
      {$Me.setFieldHolderTemplate('LittleGiant/SilverstripeSecurityTheme/Forms/FieldHolder').FieldHolder}
    <% end_loop %>
  </div>
  <div class="l-sst-form__footer">
    <% loop $Actions %>
      {$Me.addExtraClass('c-button--primary')}
    <% end_loop %>
  </div>
</form>
