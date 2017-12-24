# EDDecompiler

This projcet is forked from [Ouroboros/EDDecompiler](https://github.com/Ouroboros/EDDecompiler).

It can be used to decompile/recompile script files of PSP & PC games *Zero/Ao no Kiseki* and PC game *Trails in the Sky* series(Published by Xseed).   

Just give the usage here:   
## 1. Install python3   
And install missing libs with this command:   
```
    pip3 install xmltodict aiohttp rsa hexdump
```

## 2. clone **EDDecompiler** and **PyLibs**   
```
    git clone https://github.com/ZhenjianYang/EDDecompiler   
    git clone https://github.com/ZhenjianYang/PyLibs   
```

## 3. Decompile

### *Zero no Kiseki*:   
```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    py EDDecompiler/Decompiler/ZeroScenarioScript.py --cp=<codepage> <scripts folder> 
```
### *Ao no Kiseki*:   
```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    py EDDecompiler/Decompiler/ScenarioScript.py --cp=<codepage> <scripts folder>  
```
### *Trails in the Sky FC*:   
```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    py EDDecompiler/Decompiler/ED6FCScenarioScript.py --cp=<codepage> --gp=<game folder> <scripts folder> 
```
### *Trails in the Sky SC*:   
```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    py EDDecompiler/Decompiler/ED6SCScenarioScript.py --cp=<codepage> --gp=<game folder> <scripts folder> 
```
### *Trails in the Sky the 3rd*:   
```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    py EDDecompiler/Decompiler/ED63RDScenarioScript.py --cp=<codepage> --gp=<game folder> <scripts folder> 
```

Scripts of *Zero no Kiseki* / *Ao no Kiseki* are **\.bin** files in `<game folder>/data/scena`.    
For *Trails in the Sky* series, they are **\.\_SN** files extracted from **ED6_DT01.dat** with tool [**falcncvt tool**](http://www.pokanchan.jp/dokuwiki/software/falcnvrt/start). 

Parameter **--cp=\<codepage\>** is setting the codepage, default is gbk.   
**NOTE**: The codepage of *Trails in the Sky* series (English version) is **ms932**, **NOT** ASCII.

Decompiled scripts will have a filename like **xxxx.py** (xxxx stands for the script's name).

And in projcet [Ouroboros/ED6-FC-Steam-CN](https://github.com/Ouroboros/ED6-FC-Steam-CN), you can find 
decompiled Chinese scripts of *Trails in the Sky FC*. 

## 4. Recompile   
***Zero no Kiseki*** / ***Ao no Kiseki***:   
```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    py <decompiled script file> --cp=<codepage> <output folder>
```
***Trails in the Sky*** series:   
```
    set PYTHONPATH=EDDecompiler/Decompiler;PyLibs
    py <decompiled script file> --cp=<codepage> --gp=<game folder> <output folder>
```

## About Custom Encoding

You can use "--cp=\<codepage\>" to assign codepage during decompiling and recompiling.

Or use "--cppy=\<path of python script of encoding\>" to assign a custom encoding.

[CSjis](https://github.com/ZhenjianYang/CSjis) is a custom Shift-JIS encoding,
which is defined by **jis2ucs.bin** and **ucs2jis.bin**.
