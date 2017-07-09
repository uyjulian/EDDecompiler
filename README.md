# EDDecompiler

This projcet is forked from [Ouroboros/EDDecompiler](https://github.com/Ouroboros/EDDecompiler)

It can be used to decompile/recompile script files of PSP & PC games *Zero/Ao no Kiseki*

Just give the usage here:

## 1. Install python3

You must install the missing libs notified in step 3.   
Most of them could be installed with pip command and they will work correctly, except one lib : aiohttp.  
you must install aiohttp-1.2.0, since the lastest one is not suitable for this project.

```
    pip3 install xmltodict
    pip3 install aiohttp==1.2.0
    pip3 install rsa
    pip3 install hexdump
```

## 2. clone **EDDecompiler** and **PyLibs**

```
    git clone https://github.com/ZhenjianYang/EDDecompiler   
    git clone https://github.com/ZhenjianYang/PyLibs   
```

## 3. Decompile

Assume the script files are in folders **scena**, then you can decompile them with

```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    python EDDecompiler/Decompiler/ZeroScenarioScript.py --cp=ms932 scena 
```

If you are working with **_Ao no Kiseki_**, the second line should be:

```
    python EDDecompiler/Decompiler/ScenarioScript.py --cp=ms932 scena
```

parameter **--cp=ms932** is set the codepage to ms932, default is gbk.

Then you will get decompiled script files **xxxx.py** (xxxx stands for the script's name) under folder scena

## 4. Recompile

Assume you want to recompile **xxxx.py** to folder scena_new:   

```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    python xxxx.py --cp=ms932 scena_new
```

Then you will get **xxxx.bin** under scena_new

## About Custom Encoding

You can use "--cp={codepage}" to assign another codepage during decompiling and recompiling.

Or use "--cppy={path of python script of encoding}" to assign a custom encoding.

[csjis](https://github.com/ZhenjianYang/EDDecompiler/blob/master/CSjis/csjis.py) is an example of custom encoding.
