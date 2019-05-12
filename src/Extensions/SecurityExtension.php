<?php

use SilverStripe\ORM\DataExtension;

class MyMemberExtension extends DataExtension
{

    private static $db = [
        'DateOfBirth' => 'DBDatetime'
    ];

    public function SayHi()
    {
        // $this->owner refers to the original instance. In this case a `Member`.
        return "Hi " . $this->owner->Name;
    }
}
