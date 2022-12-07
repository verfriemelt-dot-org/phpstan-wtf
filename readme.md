# phpstan bug

with anonymouses classes we get different errors while working within paths containing a `.` in their name.

`normal` and `normal.php` has the same file contents but normal yields no errors (note the ignored error in the baseline) while the path reported for the normal.php yields an error:

note that this seem to happen with anonymous classes, since they contain the filepath in ther name.


```
 ~/src/phpstan-wtf/normal $  phpstan
 Note: Using configuration file /home/easteregg/src/phpstan-wtf/normal/phpstan.neon.
 1/1 [▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓] 100%

 [OK] No errors

 ~/src/phpstan-wtf/normal $ cd ../normal.php
 ~/src/phpstan-wtf/normal.php $ phpstan
 Note: Using configuration file /home/easteregg/src/phpstan-wtf/normal.php/phpstan.neon.
 1/1 [▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓] 100%

 ------ -----------------------------------------------------------------------------------------------------------------------
  Line   src/index.php
 ------ -----------------------------------------------------------------------------------------------------------------------
         Ignored error pattern #^Property class@anonymous/index\.php\:10\:\:\$arr type has no value type specified in iterable
         type array\.$# in path /home/easteregg/src/phpstan-wtf/normal.php/src/index.php was not matched in reported errors.
  11     Property class@anonymous/src/index.php:10::$arr type has no value type specified in iterable type array.
         💡 See: https://phpstan.org/blog/solving-phpstan-no-value-type-specified-in-iterable-type
 ------ -----------------------------------------------------------------------------------------------------------------------

 [ERROR] Found 2 errors
```
