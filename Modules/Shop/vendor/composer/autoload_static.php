<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitd5fc071c4698d97b728fc8860f20eae6
{
    public static $prefixLengthsPsr4 = array (
        'M' => 
        array (
            'Modules\\Shop\\Database\\Seeders\\' => 30,
            'Modules\\Shop\\Database\\Factories\\' => 32,
            'Modules\\Shop\\' => 13,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Modules\\Shop\\Database\\Seeders\\' => 
        array (
            0 => __DIR__ . '/../..' . '/database/seeders',
        ),
        'Modules\\Shop\\Database\\Factories\\' => 
        array (
            0 => __DIR__ . '/../..' . '/database/factories',
        ),
        'Modules\\Shop\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitd5fc071c4698d97b728fc8860f20eae6::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitd5fc071c4698d97b728fc8860f20eae6::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitd5fc071c4698d97b728fc8860f20eae6::$classMap;

        }, null, ClassLoader::class);
    }
}
