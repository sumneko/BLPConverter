local lm = require 'luamake'

lm.arch = 'x64'
lm.cxx = 'c++14'

lm:executable 'BLPConverter' {
    sources = {
        'main.cpp',
        'blp.cpp',
        'dependencies/FreeImage/*.cpp',
        'dependencies/FreeImage/*.c',
        'dependencies/squish/*.cpp',
    },
    includes = {
        'dependencies/include',
        'dependencies/FreeImage',
        'dependencies/FreeImage/DeprecationManager',
        'dependencies/FreeImage/LibRawLite',
        'dependencies/FreeImage/OpenEXR',
        'dependencies/FreeImage/OpenEXR/Half',
        'dependencies/FreeImage/OpenEXR/Iex',
        'dependencies/FreeImage/OpenEXR/IlmImf',
        'dependencies/FreeImage/OpenEXR/Imath',
        'dependencies/FreeImage/OpenEXR/IlmThread',
        'dependencies/FreeImage/ZLib',
        'dependencies/squish',
    },
    defines = {
        'WIN32',
        'NOMINMAX',
        'FREEIMAGE_LIB',
        'OPJ_STATIC',
        'LIBRAW_NODLL',
        '_CRT_SECURE_NO_DEPRECATE',
    },
    flags = {
        '/wd4018',
        '/wd4101',
        '/wd4146',
        '/wd4244',
        '/wd4267',
        '/wd4273',
        '/wd4297',
        '/wd4305',
        '/wd4309',
        '/wd4334',
        '/wd4554',
        '/wd4722',
        '/wd4723',
        '/wd4804',
        '/wd4819',
        '/wd4838',
        '/wd4996',
        '/wd5033',
        '/wd5040',
        '/Zc:strictStrings-',
    },
}
