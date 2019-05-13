<?php

namespace LittleGiant\SilverStripeSecurityTheme\Extensions;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Security\Security;
use SilverStripe\View\Requirements;

/**
 * Class SecurityDataExtension
 * @package LittleGiant\SilverStripeSecurityTheme\Extensions
 */
class SecurityDataExtension extends DataExtension
{
    /**
     * @desc Add the client assets to the controller.
     */
    public function onAfterInit(): void
    {
        /**
         * Clear all requirements currently set for the project.
         * We do this to remove any styles/javascript that may interfere
         * with the styling/functionality of the page.
         */
        Requirements::clear();

        Requirements::css('littlegiant/silverstripe-security-theme:client/dist/index.css');

        self::getCSSOverrides();
    }

    /**
     * @desc Add the CSS overrides to the controller.
     * @return void
     */
    protected function getCSSOverrides(): void
    {
        $config = Security::config();

        $array = [];

        /**
         * Color of the focus outline on all
         * DOM nodes that have a focus state.
         */
        if ($focusAccent = $config->focus_accent) {
            $array[] = "--focus-accent: $focusAccent;";
        }

        /**
         * The max width of the logo component
         */
        if ($logoWidth = $config->logo_width) {
            $array[] = "--logo-max-width: {$logoWidth}px;";
        }

        /**
         * The button background
         */
        if ($buttonAccent = $config->button_accent) {
            $array[] = "--button-accent: $buttonAccent;";
        }

        /**
         * The button color
         */
        if ($buttonColor = $config->button_color) {
            $array[] = "--button-color: $buttonColor;";
        }

        /**
         * The button border color
         */
        if ($buttonBorderColor = $config->button_border_color) {
            $array[] = "--button-border-color: $buttonBorderColor;";
        }

        /**
         * the button border color when focused
         */
        if ($inputActiveBorderColor = $config->input_active_border_color) {
            $array[] = "--form-control-border-color-active: $inputActiveBorderColor;";
            $array[] = "--checkbox-border-color-active: $inputActiveBorderColor;";
        }

        $implodedArray = implode('', $array);

        Requirements::customCSS(
            ":root {{$implodedArray}}"
        );
    }
}
