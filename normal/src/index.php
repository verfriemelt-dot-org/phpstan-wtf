<?php

    class bar {

    }

    class foo {

        public function __construct() {
            new class() extends bar {
                public array $arr;
            };
        }
    }
