# EDDecompiler

This projcet is forked from [Ouroboros/EDDecompiler](https://github.com/Ouroboros/EDDecompiler)

It can be used to decompile/recompile script files of PSP & PC games *Zero/Ao no Kiseki*

Just give the usage here:

## 1. Install python3

## 2. clone **EDDecompiler** and **PyLibs**

```
    git clone https://github.com/ZhenjianYang/EDDecompiler   
    git clone https://github.com/ZhenjianYang/PyLibs   
```

## 3. Decompile

Assume the script files are in folders **scena**, then you can decompile them with

```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    python3 EDDecompiler/Decompiler/ZeroScenarioScript.py --cp=ms932 scena 
```

If you are working with **_Ao no Kiseki_**, the second line should be:

```
    python3 EDDecompiler/Decompiler/ScenarioScript.py --cp=ms932 scena
```

parameter **--cp=ms932** is set the codepage to ms932, default is gbk.

Then you will get decompiled script files **xxxx.py** (xxxx stands for the script's name) under folder scena

## 4. Recompile

Assume you want to recompile **xxxx.py** to folder scena_new:   

```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    python3 xxxx.py scena_new
```

Then you will get **xxxx.bin** under scena_new


