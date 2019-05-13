<% if $Type == 'hidden' %>
  {$Field}
<% else %>
  <div id="{$Name}" class="l-sst-form-group l-sst-form-group--{$Type}<% if $Message %> has-message<% end_if %>">
    <% if $Type == 'checkbox' %>
      <% include LittleGiant/SilverstripeSecurityTheme/Forms/Fields/Checkbox %>
    <% else_if $Type == 'dropdown' %>
      <div class="l-sst-form-group__item">
        <div class="l-sst-form-group__field">
          <% include LittleGiant/SilverstripeSecurityTheme/Forms/Fields/Select %>
          <label for="{$ID}" class="c-sst-label">{$Title}</label>
        </div>
      </div>
    <% else %>
      <div class="l-sst-form-group__item">
        <div class="l-sst-form-group__field">
          <label for="{$ID}" class="c-sst-label">{$Title}</label>
          {$Field}
        </div>
      </div>
    <% end_if %>

    <% if $Description %>
      <div class="l-sst-form-group__description">
        <p>{$Description}</p>
      </div>
    <% end_if %>
  </div>
<% end_if %>
