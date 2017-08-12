# EDDecompiler

This projcet is forked from [Ouroboros/EDDecompiler](https://github.com/Ouroboros/EDDecompiler) and merged with [illidan2004/EDDecompiler](https://github.com/illidan2004/EDDecompiler)

It can be used to decompile/recompile script files of PSP & PC games *Zero/Ao no Kiseki* and Steam game *Sora no Kiseki FC HD*

Just give the usage here:

## 1. Install python3   
And install missing libs with this command:   
```
    pip3 install xmltodict aiohttp==1.2.0 rsa hexdump
```
**NOTE:** You must install aiohttp-1.2.0, since the lastest version is not suitable for this project.

## 2. clone **EDDecompiler** and **PyLibs**   
```
    git clone https://github.com/ZhenjianYang/EDDecompiler   
    git clone https://github.com/ZhenjianYang/PyLibs   
```

## 3. Decompile

Assume the script files are in folders **scena**, then you can decompile them with

```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    py EDDecompiler/Decompiler/ZeroScenarioScript.py --cp=ms932 scena 
```

If you are working with **_Ao no Kiseki_**, the second line should be:

```
    py EDDecompiler/Decompiler/ScenarioScript.py --cp=ms932 scena
```

parameter **--cp=ms932** is set the codepage to ms932, default is gbk.

Then you will get decompiled script files **xxxx.py** (xxxx stands for the script's name) under folder scena.

If you are working with **_Sora no Kiseki FC HD_**, replace **GAME_PATH** with your <**Trails in the Sky Path**> in EDDecompiler/Decompiler/Base/ED6FCBase.py, 
and extract ED6_DT01.dat with [**falcncvt tool**](http://www.pokanchan.jp/dokuwiki/software/falcnvrt/start) or use the Chinese scenario scripts from [Ouroboros/ED6-FC-Steam-CN](https://github.com/Ouroboros/ED6-FC-Steam-CN), 
then use the following command line to decompile:

```
    py EDDecompiler/Decompiler/ED6FCScenarioScript <Trails in the Sky Path>/DAT/ED6_DT01
```

## 4. Recompile

Assume you want to recompile **xxxx.py** to folder scena_new:   

```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    py xxxx.py --cp=ms932 scena_new
```

Then you will get **xxxx.bin** under scena_new

## About Custom Encoding

You can use "--cp={codepage}" to assign another codepage during decompiling and recompiling.

Or use "--cppy={path of python script of encoding}" to assign a custom encoding.

[CSjis](https://github.com/ZhenjianYang/CSjis) is a custom Shift-JIS encoding,
which is defined by **jis2ucs.bin** and **ucs2jis.bin**.
