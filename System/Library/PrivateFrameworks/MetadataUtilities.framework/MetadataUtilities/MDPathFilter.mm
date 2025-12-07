@interface MDPathFilter
- ($1CD0F41CAFB66BEF540F4446800F077B)filter:(SEL)filter allowBundleCheck:(const char *)check;
- ($1CD0F41CAFB66BEF540F4446800F077B)filterFullPath:(SEL)path;
- ($1CD0F41CAFB66BEF540F4446800F077B)filterFullPathTestBundle:(SEL)bundle;
- ($1CD0F41CAFB66BEF540F4446800F077B)filterPartialPath:(SEL)path;
- ($1CD0F41CAFB66BEF540F4446800F077B)iCloudPath:(SEL)path updateFilter:(const char *)filter;
- (MDPathFilter)initWithData:(id)data;
- (MDPathFilter)initWithMDPlist:(_MDPlistContainer *)plist;
- (id)data;
- (unint64_t)filterSubAuxValues:(id *)values count:(int *)count;
- (unint64_t)trimBundlePath:(id *)path path:(const char *)a4 buffer:(char *)buffer length:(unint64_t)length;
- (void)dealloc;
@end

@implementation MDPathFilter

- (MDPathFilter)initWithMDPlist:(_MDPlistContainer *)plist
{
  v68 = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = MDPathFilter;
  v4 = [(MDPathFilter *)&v67 init];
  v5 = v4;
  if (plist && v4)
  {
    v4->_plist = CFRetain(plist);
    v65 = 0uLL;
    v66 = 0;
    _MDPlistContainerGetPlistObjectAtKeyPath(plist, "/COMMON", &v65, v6, v7, v8, v9, v10);
    v64 = 0;
    v62 = v65;
    v63 = v66;
    v5->_commonValues = _MDPlistDataGetBytePtr(&v62, &v64);
    v62 = 0uLL;
    v63 = 0;
    _MDPlistContainerGetPlistObjectAtKeyPath(plist, "/PREFIXES", &v62, v11, v12, v13, v14, v15);
    *&v5->_prefixesDictionary.containerBytes = v62;
    v5->_prefixesDictionary.reference = v63;
    v62 = 0uLL;
    v63 = 0;
    _MDPlistContainerGetPlistObjectAtKeyPath(plist, "/EXTENSIONS", &v62, v16, v17, v18, v19, v20);
    *&v5->_extensionsDictionary.containerBytes = v62;
    v5->_extensionsDictionary.reference = v63;
    v62 = 0uLL;
    v63 = 0;
    _MDPlistContainerGetPlistObjectAtKeyPath(plist, "/HIDDEN_EXTENSIONS", &v62, v21, v22, v23, v24, v25);
    *&v5->_hiddenExtensionsDictionary.containerBytes = v62;
    v5->_hiddenExtensionsDictionary.reference = v63;
    v62 = 0uLL;
    v63 = 0;
    _MDPlistContainerGetPlistObjectAtKeyPath(plist, "/ROOT_ARRAY", &v62, v26, v27, v28, v29, v30);
    *&v5->_rootArray.containerBytes = v62;
    v5->_rootArray.reference = v63;
    v63 = 0;
    v62 = 0uLL;
    var2 = v5->_commonValues->var2;
    v60 = *&v5->_rootArray.containerBytes;
    reference = v5->_rootArray.reference;
    _MDPlistArrayGetPlistObjectAtIndex(&v60, var2, &v62, v32, v33, v34, v35, v36, v37);
    v60 = v62;
    reference = v63;
    if (_MDPlistGetPlistObjectType(&v60) != 240)
    {
      [(MDPathFilter *)&v62 initWithMDPlist:v38, v39, v40, v41, v42, v43, v44];
    }

    v60 = v62;
    reference = v63;
    v5->_rootElement = arrayObjectToElementRecord(&v60, v38, v39, v40, v41, v42, v43, v44);
    reference = 0;
    v60 = 0uLL;
    _MDPlistGetRootPlistObjectFromPlist(v5->_plist, &v60, v45, v46, v47, v48, v49);
    v58 = 0uLL;
    v59 = 0;
    v56 = v60;
    v57 = reference;
    if (_MDPlistDictionaryGetPlistObjectForKey(&v56, "IS_DATA_ROSP", 12, &v58, v50, v51, v52, v53))
    {
      v56 = v58;
      v57 = v59;
      v5->_isDataROSP = _MDPlistNumberGetIntValue(&v56) != 0;
    }

    commonValues = v5->_commonValues;
    v5->_mountDepth = commonValues->var0;
    v5->_defaultRule = *(&commonValues->var3 + 6);
    v5->_inheritMask = *(&commonValues->var2 + 1);
    v5->_processExtensions = commonValues->var1 != 0;
    v5->_auxValueCount = HIWORD(commonValues->var7);
    v5->_auxValues = &commonValues->var8;
  }

  return v5;
}

- (MDPathFilter)initWithData:(id)data
{
  if ([data length])
  {
    v5 = _MDPlistContainerCreateWithCopiedBytes(*MEMORY[0x1E695E480], [data bytes], objc_msgSend(data, "length"), 1);
    v6 = [(MDPathFilter *)self initWithMDPlist:v5];
    if (v5)
    {
      CFRelease(v5);
    }

    return v6;
  }

  else
  {

    return [(MDPathFilter *)self initWithMDPlist:0];
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  plist = self->_plist;
  if (plist)
  {
    CFRelease(plist);
  }

  v4.receiver = self;
  v4.super_class = MDPathFilter;
  [(MDPathFilter *)&v4 dealloc];
}

- (id)data
{
  plist = self->_plist;
  v4 = MEMORY[0x1E695DEF0];
  if (plist)
  {
    Bytes = _MDPlistContainerGetBytes(plist);
    Length = _MDPlistContainerGetLength(self->_plist);
    v7 = v4;
    v8 = Bytes;
  }

  else
  {
    v8 = "";
    v7 = MEMORY[0x1E695DEF0];
    Length = 0;
  }

  return [v7 dataWithBytes:v8 length:Length];
}

- ($1CD0F41CAFB66BEF540F4446800F077B)filter:(SEL)filter allowBundleCheck:(const char *)check
{
  v5 = MEMORY[0x1EEE9AC00](self);
  v7 = v6;
  v162 = v5;
  v9 = v8;
  v186 = *MEMORY[0x1E69E9840];
  bzero(v183, 0x400uLL);
  v10 = 0;
  v11 = v7 + 84;
  v12 = 47;
  do
  {
    if (v12 != v7[v10])
    {
      v11 = v7;
      goto LABEL_9;
    }

    v12 = aVarFoldersZzZy[++v10];
  }

  while (v10 != 84);
  v13 = strstr(v7 + 84, "/SMNopCopierSandbox-");
  if (v13)
  {
    v14 = v13;
    if (__strlcpy_chk() <= 0x3FF)
    {
      v183[v14 - v11] = 0;
      v11 = v183;
      if (strchr(v14 + 20, 47))
      {
        __strlcat_chk();
      }
    }
  }

LABEL_9:
  if (*v11 == 47)
  {
    v15 = (v11 + 1);
  }

  else
  {
    v15 = v11;
  }

  bzero(v182, 0x280uLL);
  bzero(v181, 0xA00uLL);
  v23 = v162;
  v24 = *(v162 + 120);
  *&v170 = 0;
  v171 = 0uLL;
  v173 = 0u;
  *&v174 = 0;
  *(&v170 + 1) = v24;
  v172 = 0uLL;
  v25 = *(v24 + 18);
  *&v173 = v25;
  v26 = v24[11];
  LOBYTE(v174) = v24[11] != 0;
  *(&v174 + 4) = __PAIR64__(v24[12], v26);
  HIDWORD(v174) = v24[13];
  if (!*v15)
  {
    v149 = 0;
    goto LABEL_215;
  }

  v27 = v24;
  v156 = v9;
  if (*(v162 + 152) == 1)
  {
    v184 = 0uLL;
    v185 = 0;
    v179 = *(v162 + 72);
    v180 = *(v162 + 88);
    if (_MDPlistDictionaryGetPlistObjectForKey(&v179, ".*", -1, &v184, v19, v20, v21, v22))
    {
      v179 = v184;
      v180 = v185;
      if (_MDPlistGetPlistObjectType(&v179) != 226)
      {
        v179 = v184;
        v180 = v185;
        if (_MDPlistGetPlistObjectType(&v179) != 35)
        {
          v179 = v184;
          v180 = v185;
          if (_MDPlistGetPlistObjectType(&v179) != 227)
          {
            v179 = v184;
            v180 = v185;
            if (_MDPlistGetPlistObjectType(&v179) != 51)
            {
              [MDPathFilter filter:allowBundleCheck:];
            }
          }
        }
      }

      v179 = v184;
      v180 = v185;
      IntValue = _MDPlistNumberGetIntValue(&v179);
      *(v162 + 168) = BYTE2(IntValue);
      *(v162 + 172) = IntValue;
    }

    v179 = *(v162 + 72);
    v180 = *(v162 + 88);
    result = _MDPlistDictionaryGetPlistObjectForKey(&v179, "icloud", -1, &v184, v28, v29, v30, v31);
    if (result)
    {
      v179 = v184;
      v180 = v185;
      if (_MDPlistGetPlistObjectType(&v179) != 226)
      {
        v179 = v184;
        v180 = v185;
        if (_MDPlistGetPlistObjectType(&v179) != 35)
        {
          v179 = v184;
          v180 = v185;
          if (_MDPlistGetPlistObjectType(&v179) != 227)
          {
            v179 = v184;
            v180 = v185;
            if (_MDPlistGetPlistObjectType(&v179) != 51)
            {
              [MDPathFilter filter:allowBundleCheck:];
            }
          }
        }
      }

      v179 = v184;
      v180 = v185;
      result = _MDPlistNumberGetIntValue(&v179);
      *(v162 + 176) = BYTE2(result);
      *(v162 + 180) = result;
    }
  }

  v33 = 0;
  v161 = 0;
  v157 = 0;
  v158 = v11;
  v34 = 0;
  var1 = v27;
  while (1)
  {
    while (1)
    {
      v36 = *v15;
      v163 = var1;
      if (*v15)
      {
        break;
      }

      v56 = 0;
      v55 = 0;
      v39 = 0;
      v57 = 0;
      v58 = 1;
      v41 = v15;
      if (!var1)
      {
LABEL_51:
        v59 = v41;
        v60 = 0;
        v61 = 0;
        result = 0;
        if (!v55)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      }

LABEL_89:
      v160 = v56;
      v84 = !v58;
      if (!*(var1 + 7))
      {
        v84 = 1;
      }

      if (v84)
      {
        v59 = v41;
        v60 = 0;
      }

      else
      {
        v185 = 0;
        v184 = 0uLL;
        v85 = v34;
        _MDPlistEmbeddedReferenceToPlistObject(*(v162 + 8), *(var1 + 7), 246, &v184, v18, v19, v20, v21, v22);
        v179 = v184;
        v180 = v185;
        v89 = fillFilterStackRecord(v41, &v170, &v179, v182, 4, v86, v87, v88);
        v34 = v85;
        var1 = v163;
        v60 = v89;
        v59 = v41;
        LOBYTE(v157) = (*v41 == 0) | v157;
      }

LABEL_94:
      v61 = 0;
      if (v58 && *(var1 + 9) | HIDWORD(v161))
      {
        v185 = 0;
        v184 = 0uLL;
        v90 = *(var1 + 9);
        if (v90)
        {
          v91 = v90;
        }

        else
        {
          v91 = HIDWORD(v161);
        }

        v92 = v34;
        _MDPlistEmbeddedReferenceToPlistObject(*(v162 + 8), v91, 246, &v184, v18, v19, v20, v21, v22);
        v179 = v184;
        v180 = v185;
        v96 = fillFilterStackRecord(v59, &v170, &v179, v182, 5, v93, v94, v95);
        v34 = v92;
        var1 = v163;
        v61 = v96;
        HIDWORD(v161) = 0;
      }

      if (*var1)
      {
        v184 = 0uLL;
        v185 = 0;
        v97 = *var1 - 1;
        v179 = *(v162 + 24);
        v180 = *(v162 + 40);
        v98 = v57;
        v99 = v34;
        _MDPlistArrayGetPlistObjectAtIndex(&v179, v97, &v184, v17, v18, v19, v20, v21, v22);
        v179 = v184;
        v180 = v185;
        result = fillFilterStackRecord(v15, &v170, &v179, v182, 6, v100, v101, v102);
        v34 = v99;
        v57 = v98;
        var1 = v163;
      }

      else
      {
        result = 0;
      }

      v56 = v160;
      if (!v55)
      {
LABEL_105:
        if (result)
        {
          v103 = &v181[5 * v34];
          v104 = *&result[1].var2;
          v103[2] = *&result[1].var0;
          v103[3] = v104;
          v103[4] = *&result[2].var0;
          v105 = *&result->var2;
          *v103 = *&result->var0;
          v103[1] = v105;
          v34 = (v34 + 1);
        }

        if (v61)
        {
          v106 = &v181[5 * v34];
          *v106 = *v61;
          v107 = v61[1];
          v108 = v61[2];
          v109 = v61[4];
          v106[3] = v61[3];
          v106[4] = v109;
          v106[1] = v107;
          v106[2] = v108;
          v34 = (v34 + 1);
        }

        if (v60)
        {
          v110 = &v181[5 * v34];
          *v110 = *v60;
          v111 = v60[1];
          v112 = v60[2];
          v113 = v60[4];
          v110[3] = v60[3];
          v110[4] = v113;
          v110[1] = v111;
          v110[2] = v112;
          v34 = (v34 + 1);
        }

        if (v57)
        {
          v114 = &v181[5 * v34];
          *v114 = *v57;
          v115 = v57[1];
          v116 = v57[2];
          v117 = v57[4];
          v114[3] = v57[3];
          v114[4] = v117;
          v114[1] = v115;
          v114[2] = v116;
          v34 = (v34 + 1);
        }

        v11 = v158;
        if (v56)
        {
          v118 = &v181[5 * v34];
          *v118 = *v39;
          v119 = *(v39 + 16);
          v120 = *(v39 + 32);
          v121 = *(v39 + 64);
          v118[3] = *(v39 + 48);
          v118[4] = v121;
          v118[1] = v119;
          v118[2] = v120;
          v34 = (v34 + 1);
        }

        if (!v55)
        {
          goto LABEL_161;
        }

        goto LABEL_118;
      }

LABEL_104:
      if ((*&v55[1].var2 & 0x8000000000000000) == 0)
      {
        goto LABEL_105;
      }

      v11 = v158;
LABEL_118:
      var1 = v55->var1;
      v170 = *&v55->var0;
      v122 = *&v55->var2;
      v123 = *&v55[1].var0;
      v124 = *&v55[1].var2;
      v174 = *&v55[2].var0;
      v172 = v123;
      v173 = v124;
      v171 = v122;
      if (*v59)
      {
        if (*v59 != 47)
        {
          goto LABEL_122;
        }

        v15 = (v59 + 1);
      }

      else
      {
        if (!*var1)
        {
          goto LABEL_211;
        }

LABEL_122:
        if (v34 >= 32)
        {
          goto LABEL_208;
        }

        v33 = 0;
        if (*v59 == 47)
        {
          v15 = (v59 + 1);
        }

        else
        {
          v15 = v59;
        }

        LOBYTE(v161) = v161 | (*v15 == 0);
      }
    }

    if ((HIDWORD(v161) != 0) | BYTE4(v157) & 1)
    {
      goto LABEL_34;
    }

    if (var1)
    {
      break;
    }

    HIDWORD(v161) = 0;
    v59 = v15;
LABEL_161:
    *&v173 = v173 & 0x7FFFFFFFFFFFFFFFLL;
    if (v34 >= 32)
    {
LABEL_208:
      [MDPathFilter filter:allowBundleCheck:];
    }

    *(&v174 + 1) = 0;
    if (v34)
    {
      if (v34 <= 0)
      {
        [MDPathFilter filter:allowBundleCheck:];
      }

      v34 = (v34 - 1);
      v143 = &v181[5 * v34];
      v144 = v143[1];
      v170 = *v143;
      v171 = v144;
      v145 = v143[3];
      v172 = v143[2];
      v173 = v145;
      v174 = *(v143 + 8);
      v15 = *(&v144 + 1);
      var1 = *(&v170 + 1);
      v146 = *v143;
      if (v146 <= 3)
      {
        if (v146 == 2)
        {
          if (*(*(&v170 + 1) + 2) || *(*(&v170 + 1) + 14))
          {
            v34 = 0;
          }

          else
          {
            v34 = 0;
            BYTE4(v157) |= **(&v170 + 1) == 0;
          }

          goto LABEL_192;
        }

        if (v146 != 3)
        {
          goto LABEL_222;
        }

        goto LABEL_184;
      }

      if ((v146 - 4) < 2)
      {
        if (v170 == 5)
        {
          v147 = HIDWORD(v161);
          if (**(&v171 + 1))
          {
            v147 = v171;
          }

          HIDWORD(v161) = v147;
        }

LABEL_184:
        v34 = v34 & ~(v173 >> 63);
        goto LABEL_192;
      }

      if (v146 != 6)
      {
LABEL_222:
        result = CFLog();
        __break(1u);
        return result;
      }

LABEL_192:
      v33 = 0;
      if ((*(*(&v170 + 1) + 36) & 0x8000000000000000) != 0)
      {
        v33 = 0;
        if (!**(&v171 + 1))
        {
          goto LABEL_211;
        }
      }
    }

    else
    {
      v148 = *v59;
      if (!*v59)
      {
        if (!(v157 & 1 | (var1 == 0)) && (*v15 || !*(var1 + 1)) && !*(var1 + 7) && !*(var1 + 9) && !*var1)
        {
          goto LABEL_200;
        }

        goto LABEL_211;
      }

      if (var1 && (!*v15 || !*(var1 + 1)) && !*(var1 + 7) && !*(var1 + 9) && !*var1)
      {
        *&v173 = v173 & 0xBFFFFFFFFFFFFFFFLL;
        v148 = *v59;
      }

      v34 = 0;
      var1 = 0;
      if (v148 == 47)
      {
        v15 = (v59 + 1);
      }

      else
      {
        v15 = v59;
      }

      BYTE4(v157) = 1;
    }
  }

  if (!*(var1 + 1) && !*(var1 + 5) && !*(var1 + 7) && !*(var1 + 9))
  {
    v160 = 0;
    HIDWORD(v161) = 0;
    v55 = 0;
    v39 = 0;
    v57 = 0;
    v60 = 0;
    v58 = 1;
    v59 = v15;
    goto LABEL_94;
  }

LABEL_34:
  v37 = 0;
  v38 = 0;
  v39 = 0;
  while (v36 == 46)
  {
    v40 = (v15 + v37);
    if (v15 + v37 > v11)
    {
      v33 |= *(v15 + v37 - 1) == 47;
    }

    v38 = v39;
LABEL_42:
    v36 = *(v15 + v37++ + 1);
    v39 = v40;
  }

  if (v36 && v36 != 47)
  {
    v40 = v39;
    goto LABEL_42;
  }

  v168 = 0uLL;
  v169 = 0;
  v166 = 0uLL;
  v41 = (v15 + v37);
  v167 = 0;
  if (!var1)
  {
    v57 = 0;
    goto LABEL_65;
  }

  v42 = *(var1 + 1);
  if (!v42)
  {
    v55 = 0;
    goto LABEL_57;
  }

  v43 = v34;
  _MDPlistEmbeddedReferenceToPlistObject(*(v162 + 8), v42, 241, &v184, v18, v19, v20, v21, v22);
  if (!_MDPlistDictionaryGetPlistObjectForKey(&v184, v15, v37, &v166, v44, v45, v46, v47))
  {
    v55 = 0;
LABEL_56:
    var1 = v163;
    v34 = v43;
LABEL_57:
    if (*(var1 + 3))
    {
      v62 = v34;
      v184 = 0uLL;
      v185 = 0;
      _MDPlistEmbeddedReferenceToPlistObject(*(v162 + 8), *(var1 + 3), 240, &v184, v18, v19, v20, v21, v22);
      v179 = v184;
      v180 = v185;
      Count = _MDPlistArrayGetCount(&v179);
      if (Count < 1)
      {
        v57 = 0;
      }

      else
      {
        v64 = Count;
        v65 = 0;
        while (1)
        {
          __n = 0;
          v164 = 0;
          v179 = 0uLL;
          v180 = 0;
          v177 = v184;
          v178 = v185;
          _MDPlistArrayGetPlistObjectAtIndex(&v177, v65, &v179, v17, v18, v19, v20, v21, v22);
          v177 = v179;
          v178 = v180;
          Value = _MDPlistStringGetValue(&v177, &__n, &v164);
          v17 = __n;
          if (v37 > __n && !strncmp(Value, v15, __n))
          {
            break;
          }

          v65 = (v65 + 1);
          if (v64 == v65)
          {
            v57 = 0;
            v41 = (v15 + v37);
            goto LABEL_84;
          }
        }

        v178 = 0;
        v177 = 0uLL;
        _MDPlistEmbeddedReferenceToPlistObject(*(v162 + 8), *(v163 + 5), 240, &v177, v18, v19, v20, v21, v22);
        v175 = v177;
        v176 = v178;
        _MDPlistArrayGetPlistObjectAtIndex(&v175, v65, &v168, v75, v76, v77, v78, v79, v80);
        v175 = v168;
        v176 = v169;
        v41 = (v15 + v37);
        v57 = fillFilterStackRecord((v15 + v37), &v170, &v175, v182, 3, v81, v82, v83);
      }

LABEL_84:
      var1 = v163;
      v34 = v62;
      if (v55)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v57 = 0;
      if (v55)
      {
LABEL_85:
        v56 = 0;
        goto LABEL_86;
      }
    }

LABEL_65:
    LOBYTE(v174) = 0;
    if (!v39)
    {
      v56 = 0;
      v55 = 0;
LABEL_87:
      LOBYTE(v69) = 0;
      goto LABEL_88;
    }

    if (*(v162 + 152) != 1)
    {
      v56 = 0;
      v55 = 0;
LABEL_86:
      v39 = 0;
      goto LABEL_87;
    }

    if ((v15 - v158) >= 21 && v38)
    {
      v67 = 0;
      v68 = 47;
      while (v68 == *(v15 - 20 + v67))
      {
        v68 = aLibraryContain[++v67];
        if (v67 == 20)
        {
          v56 = 0;
          v55 = 0;
          v39 = 0;
          LOBYTE(v69) = 0;
          goto LABEL_159;
        }
      }
    }

    v159 = v34;
    if (v38)
    {
      v70 = 115;
      v71 = 1u;
      do
      {
        v72 = v70;
        v73 = *(v39 + v71);
        if (v70 != v73)
        {
          break;
        }

        v70 = aSb[v71++];
      }

      while (v71 != 4);
      v74 = v41;
      if (v39 - v15 + 19 == v37 && v72 == v73)
      {
        v41 = v39;
        v39 = v38;
      }
    }

    else
    {
      v74 = v41;
    }

    v125 = &v184;
    bzero(&v184, 0x400uLL);
    v126 = (v39 + 1);
    if ((v39 + 1) != v41)
    {
      v125 = &v184;
      do
      {
        v127 = *v126++;
        *v125 = __tolower(v127);
        v125 = (v125 + 1);
      }

      while (v126 != v41);
    }

    *v125 = 0;
    v179 = 0uLL;
    v180 = 0;
    if (v33)
    {
      if (v39 == v15 && (v177 = *(v162 + 96), v178 = *(v162 + 112), _MDPlistDictionaryGetPlistObjectForKey(&v177, &v184, &v41[~v15], &v179, v19, v20, v21, v22)))
      {
        v177 = v179;
        v178 = v180;
        v131 = _MDPlistNumberGetIntValue(&v177);
        LOBYTE(v69) = BYTE2(v131);
        v129 = v131;
        if (v131)
        {
          v41 = v74;
          goto LABEL_153;
        }
      }

      else
      {
        LOBYTE(v69) = 0;
      }

      v177 = *(v162 + 72);
      v178 = *(v162 + 88);
      if (_MDPlistDictionaryGetPlistObjectForKey(&v177, &v184, &v41[~v39], &v179, v19, v20, v21, v22))
      {
        v177 = v179;
        v178 = v180;
        v128 = _MDPlistNumberGetIntValue(&v177);
        LOBYTE(v69) = BYTE2(v128);
        v129 = v128;
      }

      else
      {
        v129 = 0;
      }

      v41 = v74;
      v34 = v159;
      if (v129 != *(v162 + 180) && *(v162 + 172))
      {
        v69 = *(v162 + 168);
        v129 = *(v162 + 172);
        goto LABEL_152;
      }
    }

    else
    {
      v177 = *(v162 + 72);
      v178 = *(v162 + 88);
      if (!_MDPlistDictionaryGetPlistObjectForKey(&v177, &v184, &v41[~v39], &v179, v19, v20, v21, v22))
      {
        LOBYTE(v69) = 0;
        v41 = v74;
LABEL_147:
        v132 = &v184;
        if (v39 != v15)
        {
          v133 = v15;
          do
          {
            v134 = *v133++;
            *v132 = __tolower(v134);
            v132 = (v132 + 1);
          }

          while (v133 != v39);
        }

        *v132 = 0;
        v177 = *(v162 + 48);
        v178 = *(v162 + 64);
        PlistObjectForKey = _MDPlistDictionaryGetPlistObjectForKey(&v177, &v184, v39 - v15, &v179, v19, v20, v21, v22);
        v34 = v159;
        if (!PlistObjectForKey)
        {
          goto LABEL_158;
        }

        v177 = v179;
        v178 = v180;
        v136 = _MDPlistNumberGetIntValue(&v177);
        v34 = v159;
        LOBYTE(v69) = BYTE2(v136);
        v129 = v136;
LABEL_152:
        if (v129 > 0)
        {
LABEL_153:
          v177 = 0uLL;
          v178 = 0;
          v175 = *(v162 + 24);
          v176 = *(v162 + 40);
          _MDPlistArrayGetPlistObjectAtIndex(&v175, (v129 - 1), &v177, v17, v18, v19, v20, v21, v22);
          v175 = v177;
          v176 = v178;
          v137 = _MDPlistPlistObjectToEmbeddedReference(&v175);
          v56 = v137;
          v55 = 0;
          if ((v69 & 4) != 0 && v137)
          {
            v138 = v137;
            _MDPlistEmbeddedReferenceToPlistObject(*(v162 + 8), v137, 246, &v184, v18, v19, v20, v21, v22);
            v168 = v184;
            v169 = v185;
            v142 = fillFilterStackRecord(v41, &v170, &v184, v182, 2, v139, v140, v141);
            v56 = v138;
            v39 = v142;
            v55 = 0;
          }

          else
          {
            v39 = 0;
          }

          var1 = v163;
          v34 = v159;
          goto LABEL_88;
        }

LABEL_158:
        v56 = 0;
        v55 = 0;
        v39 = 0;
LABEL_159:
        var1 = v163;
LABEL_88:
        v58 = (v69 & 2) == 0;
        if (!var1)
        {
          goto LABEL_51;
        }

        goto LABEL_89;
      }

      v177 = v179;
      v178 = v180;
      v130 = _MDPlistNumberGetIntValue(&v177);
      LOBYTE(v69) = BYTE2(v130);
      v129 = v130;
      v41 = v74;
    }

    if (v129)
    {
      goto LABEL_153;
    }

    goto LABEL_147;
  }

  v184 = v166;
  v185 = v167;
  if (_MDPlistGetPlistObjectType(&v184) != 240)
  {
    [(MDPathFilter *)&v166 filter:v48 allowBundleCheck:v49, v50, v51, v52, v53, v54];
  }

  v184 = v166;
  v185 = v167;
  result = fillFilterStackRecord((v15 + v37), &v170, &v184, v182, 1, v52, v53, v54);
  v55 = result;
  if ((*&result[1].var2 & 0x8000000000000000) == 0)
  {
    goto LABEL_56;
  }

  var1 = v163;
  if (*v41)
  {
    HIDWORD(v161) = 0;
    v34 = 0;
    goto LABEL_57;
  }

  v150 = *&result->var2;
  v151 = *&result[1].var2;
  v152 = *&result[2].var0;
  v172 = *&result[1].var0;
  v173 = v151;
  v174 = v152;
  v170 = *&result->var0;
  v171 = v150;
  v153 = result->var1;
  if (!*(v153 + 2) && !*(v153 + 14) && !*(v153 + 18) && !*v153)
  {
LABEL_200:
    *&v173 = v173 & 0xBFFFFFFFFFFFFFFFLL;
  }

LABEL_211:
  v25 = v173;
  if (v161)
  {
    v149 = 0x4000000000000000;
  }

  else
  {
    v149 = 0;
  }

  v26 = DWORD1(v174);
  v9 = v156;
  v23 = v162;
LABEL_215:
  *v9 = v149 | v25;
  if (v26 < 1)
  {
    v154 = 0;
  }

  else
  {
    v154 = *(*(v23 + 160) + 8 * v26 - 8);
  }

  *(v9 + 8) = v154;
  *(v9 + 16) = v26;
  *(v9 + 18) = v174;
  v155 = WORD6(v174);
  *(v9 + 20) = WORD4(v174);
  *(v9 + 22) = v155;
  *(v9 + 24) = 0;
  return result;
}

- ($1CD0F41CAFB66BEF540F4446800F077B)iCloudPath:(SEL)path updateFilter:(const char *)filter
{
  v45 = *MEMORY[0x1E69E9840];
  if (iCloudPath_updateFilter__gSetupCache != -1)
  {
    [MDPathFilter iCloudPath:updateFilter:];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:filter];
  if (!v9)
  {
    goto LABEL_10;
  }

  pathComponents = [v9 pathComponents];
  if (!pathComponents)
  {
    goto LABEL_10;
  }

  v11 = pathComponents;
  v12 = [pathComponents indexOfObject:@"Mobile Documents"];
  if (v12 < 4 || v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  v15 = v12;
  v16 = v12 + 1;
  if ([v11 count] <= v12 + 1 || !objc_msgSend(objc_msgSend(v11, "objectAtIndexedSubscript:", v15 - 1), "isEqualToString:", @"Library"))
  {
    goto LABEL_10;
  }

  v17 = [MEMORY[0x1E696AEC0] pathWithComponents:{objc_msgSend(v11, "subarrayWithRange:", 0, v15)}];
  v18 = [v11 objectAtIndexedSubscript:v16];
  pthread_mutex_lock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
  v19 = [iCloudPath_updateFilter__gPerUserCacheMapping objectForKeyedSubscript:v17];
  if (v19)
  {
    dictionary = v19;
    st_uid = 0;
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    if (stat([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")], &__str))
    {
      pthread_mutex_unlock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
      goto LABEL_10;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [iCloudPath_updateFilter__gPerUserCacheMapping setObject:dictionary forKeyedSubscript:v17];
    st_uid = __str.st_uid;
    if (!dictionary)
    {
      v23 = 0;
      v22 = 0;
      goto LABEL_16;
    }
  }

  v22 = [dictionary objectForKeyedSubscript:v18];
  v23 = 1;
LABEL_16:
  pthread_mutex_unlock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
  if (st_uid)
  {
    out_token = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    memset(&__str, 0, sizeof(__str));
    snprintf(&__str, 0x100uLL, "user.uid.%d.BRContainerCacheDidChangeDistributedNotification", st_uid);
    global_queue = dispatch_get_global_queue(2, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__MDPathFilter_iCloudPath_updateFilter___block_invoke_2;
    handler[3] = &unk_1E7B257E0;
    handler[4] = dictionary;
    notify_register_dispatch(&__str, &out_token, global_queue, handler);
  }

  v25 = v23 ^ 1;
  if (v22)
  {
    v25 = 1;
  }

  if (v25)
  {
    if (!v22)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v26 = [v18 stringByReplacingOccurrencesOfString:@"~" withString:@"."];
    v27 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v17 stringByAppendingPathComponent:{@"Application Support", "stringByAppendingPathComponent:", @"CloudDocs", "stringByAppendingPathComponent:", @"session", "stringByAppendingPathComponent:", @"containers", "stringByAppendingPathComponent:", v26), "stringByAppendingPathExtension:", @"plist"}];
    v28 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v27];
    if (!v28)
    {
      goto LABEL_10;
    }

    v29 = [MEMORY[0x1E696AE40] propertyListWithData:v28 options:0 format:0 error:0];
    if (!v29)
    {
      goto LABEL_10;
    }

    v30 = v29;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v31 = [v30 objectForKeyedSubscript:v26];
    if (!v31)
    {
      goto LABEL_10;
    }

    v32 = v31;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v33 = [v32 objectForKeyedSubscript:@"BRContainerIsDocumentScopePublic"];
    v22 = &unk_1F29ABE08;
    if (v33)
    {
      v34 = v33;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v34;
      }
    }

    pthread_mutex_lock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
    [dictionary setObject:v22 forKeyedSubscript:v18];
    pthread_mutex_unlock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
  }

  if (([v22 BOOLValue] & 1) == 0)
  {
    a5->var0 = a5->var0 & 0xFFFFFFFFFFFFFFCFLL | 0x10;
  }

LABEL_10:
  objc_autoreleasePoolPop(v8);
  *&retstr->var0 = *&a5->var0;
  *(&retstr->var1 + 4) = *(&a5->var1 + 4);
  return result;
}

id __40__MDPathFilter_iCloudPath_updateFilter___block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  iCloudPath_updateFilter__gPerUserCacheMapping = result;
  return result;
}

uint64_t __40__MDPathFilter_iCloudPath_updateFilter___block_invoke_2(uint64_t a1)
{
  pthread_mutex_lock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
  [*(a1 + 32) removeAllObjects];

  return pthread_mutex_unlock(&iCloudPath_updateFilter__gComponentIsPublicCacheLock);
}

- ($1CD0F41CAFB66BEF540F4446800F077B)filterPartialPath:(SEL)path
{
  if (self->var1)
  {
    if (*a4 == 46)
    {
      v4 = a4 + 1;
      if (a4[1] != 47)
      {
        v4 = a4;
      }

      if (a4[1])
      {
        a4 = v4;
      }

      else
      {
        a4 = "/";
      }
    }

    return objc_msgSend_filter_allowBundleCheck_(self, path, a4, 0);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var6 = 0;
    *&retstr->var2 = 0;
  }

  return self;
}

- ($1CD0F41CAFB66BEF540F4446800F077B)filterFullPath:(SEL)path
{
  if (!self->var1)
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var6 = 0;
    *&retstr->var2 = 0;
    return self;
  }

  v5 = a4;
  selfCopy = self;
  var1 = self[4].var1;
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  retstr->var0 = var1;
  *&retstr->var6 = 0;
  var0_low = LOWORD(self[4].var0);
  if (LOBYTE(self[5].var6) != 1)
  {
    selfCopy2 = a4;
    if (LOWORD(self[4].var0))
    {
      goto LABEL_28;
    }

LABEL_12:
    LOWORD(selfCopy2) = a4;
    self = objc_msgSend_filter_allowBundleCheck_(self, path, a4, 0);
LABEL_34:
    v18 = 0;
LABEL_38:
    *&retstr->var0 = v22[0];
    *(&retstr->var1 + 4) = *(v22 + 12);
    v19 = selfCopy2 - v5;
    if (retstr->var6)
    {
      v20 = selfCopy2 - v5;
    }

    else
    {
      v20 = 0;
    }

    retstr->var6 += v20;
    if (!retstr->var7)
    {
      v19 = 0;
    }

    retstr->var7 += v19;
    if ((retstr->var0 & 0x2000000000) != 0)
    {
      if (v18)
      {
        memset(v22, 0, 28);
      }

      else
      {
        *v21 = *&retstr->var0;
        *&v21[12] = *(&retstr->var1 + 4);
        self = objc_msgSend_iCloudPath_updateFilter_(selfCopy, retstr->var0, *&v21[8], (*&v21[12] >> 32), *&v21[24]);
      }

      *&retstr->var0 = v22[0];
      *(&retstr->var1 + 4) = *(v22 + 12);
    }

    return self;
  }

  if (!LOWORD(self[4].var0))
  {
    goto LABEL_12;
  }

  if (var0_low == 2)
  {
    v12 = 0;
    v13 = a4 + 20;
    v14 = 47;
    while (v14 == a4[v12])
    {
      v14 = aSystemVolumesD[++v12];
      if (v12 == 20)
      {
        goto LABEL_18;
      }
    }

    v13 = 0;
LABEL_18:
    if (v13)
    {
      selfCopy2 = v13;
    }

    else
    {
      selfCopy2 = a4;
    }

    var0_low = 2;
  }

  else
  {
    selfCopy2 = a4;
    if (var0_low == 3)
    {
      v10 = 0;
      v11 = 47;
      while (v11 == a4[v10])
      {
        v11 = aSystemVolumesD[++v10];
        if (v10 == 20)
        {
LABEL_25:
          var0_low = 3;
          goto LABEL_27;
        }
      }

      v15 = 0;
      v16 = 47;
      while (v16 == a4[v15])
      {
        v16 = aSystemVolumesP[++v15];
        if (v15 == 23)
        {
          goto LABEL_25;
        }
      }

      var0_low = 1;
LABEL_27:
      selfCopy2 = a4;
    }
  }

LABEL_28:
  if (*selfCopy2 != 47)
  {
LABEL_32:
    if (!selfCopy)
    {
LABEL_37:
      memset(v22, 0, 28);
      v18 = 1;
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v17 = var0_low + 1;
  while (1)
  {
    self = strchr(selfCopy2 + 1, 47);
    if (!self)
    {
      break;
    }

    selfCopy2 = self;
    if (--v17 <= 1)
    {
      goto LABEL_32;
    }
  }

  if (v17 == 2)
  {
    selfCopy2 = "/";
    if (!selfCopy)
    {
      goto LABEL_37;
    }

LABEL_33:
    self = objc_msgSend_filter_allowBundleCheck_(selfCopy, path, selfCopy2, 0);
    goto LABEL_34;
  }

  return self;
}

- ($1CD0F41CAFB66BEF540F4446800F077B)filterFullPathTestBundle:(SEL)bundle
{
  if (self->var1)
  {
    v5 = a4;
    selfCopy = self;
    var1 = self[4].var1;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
    retstr->var0 = var1;
    *&retstr->var6 = 0;
    if (LOWORD(self[4].var0) && *a4 == 47)
    {
      v8 = LOWORD(self[4].var0) + 1;
      selfCopy2 = a4;
      while (1)
      {
        self = strchr(selfCopy2 + 1, 47);
        if (!self)
        {
          break;
        }

        selfCopy2 = self;
        if (--v8 <= 1)
        {
          if (selfCopy)
          {
            goto LABEL_10;
          }

LABEL_21:
          memset(v12, 0, 28);
          goto LABEL_11;
        }
      }

      if (v8 != 2)
      {
        return self;
      }

      selfCopy2 = "/";
      if (!selfCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
      LOWORD(selfCopy2) = a4;
    }

LABEL_10:
    self = objc_msgSend_filter_allowBundleCheck_(selfCopy);
LABEL_11:
    *&retstr->var0 = v12[0];
    *(&retstr->var1 + 4) = *(v12 + 12);
    v10 = selfCopy2 - v5;
    if (retstr->var6)
    {
      v11 = selfCopy2 - v5;
    }

    else
    {
      v11 = 0;
    }

    retstr->var6 += v11;
    if (!retstr->var7)
    {
      v10 = 0;
    }

    retstr->var7 += v10;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var6 = 0;
    *&retstr->var2 = 0;
  }

  return self;
}

- (unint64_t)trimBundlePath:(id *)path path:(const char *)a4 buffer:(char *)buffer length:(unint64_t)length
{
  var6 = path->var6;
  if (var6 + 1 < length)
  {
    lengthCopy = var6 + 1;
  }

  else
  {
    lengthCopy = length;
  }

  if (path->var6)
  {
    lengthCopy2 = lengthCopy;
  }

  else
  {
    lengthCopy2 = length;
  }

  v9 = strlcpy(buffer, a4, lengthCopy2);
  if (v9 + 1 < lengthCopy2)
  {
    return v9 + 1;
  }

  else
  {
    return lengthCopy2;
  }
}

- (unint64_t)filterSubAuxValues:(id *)values count:(int *)count
{
  var5 = values->var5;
  if (count)
  {
    *count = var5;
  }

  if (var5)
  {
    return &self->_auxValues[values->var4];
  }

  else
  {
    return 0;
  }
}

@end