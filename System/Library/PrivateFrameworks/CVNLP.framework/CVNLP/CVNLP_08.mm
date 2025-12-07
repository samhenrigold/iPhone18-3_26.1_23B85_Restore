void sub_1D9D94338(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1D9D94094);
}

void sub_1D9D94350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1D9D94408(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CVNLPCaptionEncoderTransformer;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void *sub_1D9D94D70(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_1D9D96D70(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  sub_1D9D96E64(va);
  _Unwind_Resume(a1);
}

id **sub_1D9D96E64(id **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 2;

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1D9D97104(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (!sub_1D9D9F86C(v3))
  {
    v5 = v3;
    if (objc_msgSend_length(v5, v6, v7, v8) < 2)
    {
      objc_msgSend_characterAtIndex_(v5, v9, 0, v10);
      Script = uscript_getScript();

      if (Script == 25)
      {
LABEL_7:
        v4 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (!sub_1D9D9FAEC(v5))
    {
      v4 = !sub_1D9D9FB7C(v5);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v4 = 2;
LABEL_9:

  return v4;
}

uint64_t sub_1D9D9720C(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_1D9D9F86C(a3))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_1D9D97468(uint64_t **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6, void *a7, void *a8, float a9, void *a10)
{
  v145 = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = a6;
  v129 = a7;
  v126 = a8;
  v128 = a10;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = 0;
  v19 = a1 + 4;
  v134 = a1 + 1;
  v135 = a1;
  *a1 = (a1 + 1);
  a1[3] = (a1 + 4);
  v133 = a1 + 3;
  a1[5] = 0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  a1[12] = 0;
  a1[17] = 1;
  v121 = v15;
  v125 = v16;
  if (v16)
  {
    v130 = sub_1D9D98348(v16);
  }

  else
  {
    if (!v15)
    {
      v130 = 0;
      if (!v129)
      {
        goto LABEL_135;
      }

      goto LABEL_6;
    }

    v20 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v17, v15, v18);
    v21 = MEMORY[0x1E695DEF0];
    v25 = objc_msgSend_path(v20, v22, v23, v24);
    v28 = objc_msgSend_dataWithContentsOfFile_(v21, v26, v25, v27);

    v138 = 0;
    v30 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v29, v28, 0, &v138);
    v31 = v138;
    v32 = sub_1D9D98348(v30);

    v130 = v32;
  }

  if (!v129)
  {
    goto LABEL_135;
  }

LABEL_6:
  v33 = v129;
  CFRetain(v33);
  theArray = v33;
  v34 = CFGetTypeID(v33);
  if (v34 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v35 = theArray;
    v127 = CFArrayGetCount(theArray);
    *(&v139 + 1) = 0;
    *&v140 = 0;
    v36 = &v139 + 8;
    *&v139 = &v139 + 8;
    if (Count)
    {
      v64 = 0;
      do
      {
        if (theArray == v35 && v64 == v127)
        {
          break;
        }

        v65 = v19;
        sub_1D9D9ACDC(theArray, v64, __p);
        v66 = *(&v139 + 1);
        if (v139 == (&v139 + 8))
        {
          goto LABEL_95;
        }

        v67 = *(&v139 + 1);
        v68 = &v139 + 8;
        if (*(&v139 + 1))
        {
          do
          {
            v36 = v67;
            v67 = *(v67 + 1);
          }

          while (v67);
        }

        else
        {
          do
          {
            v36 = *(v68 + 2);
            v62 = *v36 == v68;
            v68 = v36;
          }

          while (v62);
        }

        v69 = v36[55];
        if (v69 >= 0)
        {
          v70 = v36[55];
        }

        else
        {
          v70 = *(v36 + 5);
        }

        if (v69 >= 0)
        {
          v71 = v36 + 32;
        }

        else
        {
          v71 = *(v36 + 4);
        }

        if (SHIBYTE(v144) >= 0)
        {
          v72 = HIBYTE(v144);
        }

        else
        {
          v72 = __p[1];
        }

        if (SHIBYTE(v144) >= 0)
        {
          v73 = __p;
        }

        else
        {
          v73 = __p[0];
        }

        if (v72 >= v70)
        {
          v74 = v70;
        }

        else
        {
          v74 = v72;
        }

        v75 = memcmp(v71, v73, v74);
        v76 = v70 < v72;
        if (v75)
        {
          v76 = v75 < 0;
        }

        if (v76)
        {
LABEL_95:
          v77 = &v139;
          if (v66)
          {
            v77 = v36;
          }

          if (!*(v77 + 1))
          {
LABEL_118:
            operator new();
          }
        }

        else
        {
          if (!v66)
          {
            goto LABEL_118;
          }

          while (1)
          {
            while (1)
            {
              v78 = v66;
              v79 = *(v66 + 55);
              if (v79 >= 0)
              {
                v80 = *(v66 + 55);
              }

              else
              {
                v80 = *(v66 + 40);
              }

              if (v79 >= 0)
              {
                v81 = (v66 + 32);
              }

              else
              {
                v81 = *(v66 + 32);
              }

              if (v80 >= v72)
              {
                v82 = v72;
              }

              else
              {
                v82 = v80;
              }

              v83 = memcmp(v73, v81, v82);
              v84 = v72 < v80;
              if (v83)
              {
                v84 = v83 < 0;
              }

              if (!v84)
              {
                break;
              }

              v66 = *v78;
              if (!*v78)
              {
                goto LABEL_118;
              }
            }

            v85 = memcmp(v81, v73, v82);
            v86 = v80 < v72;
            if (v85)
            {
              v86 = v85 < 0;
            }

            if (!v86)
            {
              break;
            }

            v66 = v78[1];
            if (!v66)
            {
              goto LABEL_118;
            }
          }
        }

        if (SHIBYTE(v144) < 0)
        {
          operator delete(__p[0]);
        }

        ++v64;
        v36 = &v139 + 8;
        v19 = v65;
        v35 = theArray;
      }

      while (v64 != Count);
    }
  }

  else
  {
    *(&v139 + 1) = 0;
    *&v140 = 0;
    *&v139 = &v139 + 8;
  }

  if (v133 != &v139)
  {
    v37 = v139;
    if (a1[5])
    {
      v38 = *v133;
      *v133 = v19;
      (*v19)[2] = 0;
      *v19 = 0;
      v19[1] = 0;
      if (v38[1])
      {
        v39 = v38[1];
      }

      else
      {
        v39 = v38;
      }

      __p[0] = a1 + 3;
      v144 = v39;
      if (!v39)
      {
        v61 = v37;
        goto LABEL_130;
      }

      v40 = v39[2];
      if (v40)
      {
        v41 = *v40;
        if (*v40 == v39)
        {
          *v40 = 0;
          while (1)
          {
            v119 = *(v40 + 1);
            if (!v119)
            {
              break;
            }

            do
            {
              v40 = v119;
              v119 = *v119;
            }

            while (v119);
          }
        }

        else
        {
          for (*(v40 + 1) = 0; v41; v41 = *(v40 + 1))
          {
            do
            {
              v40 = v41;
              v41 = *v41;
            }

            while (v41);
          }
        }
      }

      __p[1] = v40;
      if (v37 != (&v139 + 8))
      {
        while (1)
        {
          std::string::operator=((v39 + 4), (v37 + 2));
          v42 = v144;
          v43 = *v19;
          v44 = v19;
          v45 = v19;
          if (*v19)
          {
            v46 = *(v144 + 55);
            if (v46 >= 0)
            {
              v47 = *(v144 + 55);
            }

            else
            {
              v47 = v144[5];
            }

            if (v46 >= 0)
            {
              v48 = v144 + 4;
            }

            else
            {
              v48 = v144[4];
            }

            do
            {
              while (1)
              {
                v44 = v43;
                v51 = v43[4];
                v49 = v43 + 4;
                v50 = v51;
                v52 = *(v49 + 23);
                if (v52 >= 0)
                {
                  v53 = *(v49 + 23);
                }

                else
                {
                  v53 = v49[1];
                }

                if (v52 >= 0)
                {
                  v54 = v49;
                }

                else
                {
                  v54 = v50;
                }

                if (v53 >= v47)
                {
                  v55 = v47;
                }

                else
                {
                  v55 = v53;
                }

                v56 = memcmp(v48, v54, v55);
                v57 = v47 < v53;
                if (v56)
                {
                  v57 = v56 < 0;
                }

                if (!v57)
                {
                  break;
                }

                v43 = *v44;
                v45 = v44;
                if (!*v44)
                {
                  goto LABEL_46;
                }
              }

              v43 = v44[1];
            }

            while (v43);
            v45 = v44 + 1;
          }

LABEL_46:
          *v42 = 0;
          v42[1] = 0;
          v42[2] = v44;
          *v45 = v42;
          v58 = **v133;
          if (v58)
          {
            *v133 = v58;
          }

          sub_1D9D1312C(a1[4], v42);
          a1[5] = (a1[5] + 1);
          v39 = __p[1];
          v144 = __p[1];
          if (__p[1])
          {
            v40 = *(__p[1] + 2);
            if (v40)
            {
              v59 = *v40;
              if (*v40 == __p[1])
              {
                *v40 = 0;
                while (1)
                {
                  v63 = *(v40 + 1);
                  if (!v63)
                  {
                    break;
                  }

                  do
                  {
                    v40 = v63;
                    v63 = *v63;
                  }

                  while (v63);
                }
              }

              else
              {
                for (*(v40 + 1) = 0; v59; v59 = *(v40 + 1))
                {
                  do
                  {
                    v40 = v59;
                    v59 = *v59;
                  }

                  while (v59);
                }
              }
            }

            __p[1] = v40;
            v60 = *(v37 + 1);
            if (v60)
            {
              do
              {
LABEL_57:
                v61 = v60;
                v60 = *v60;
              }

              while (v60);
              goto LABEL_61;
            }
          }

          else
          {
            v40 = 0;
            v60 = *(v37 + 1);
            if (v60)
            {
              goto LABEL_57;
            }
          }

          do
          {
            v61 = *(v37 + 2);
            v62 = *v61 == v37;
            v37 = v61;
          }

          while (!v62);
LABEL_61:
          if (v39)
          {
            v37 = v61;
            if (v61 != (&v139 + 8))
            {
              continue;
            }
          }

          v87 = __p[0];
          sub_1D9D9AC58(__p[0], v39);
          if (!v40)
          {
            goto LABEL_130;
          }

          goto LABEL_127;
        }
      }

      v87 = a1 + 3;
      v61 = v37;
      sub_1D9D9AC58(v133, v39);
      if (!v40)
      {
        goto LABEL_130;
      }

LABEL_127:
      for (i = *(v40 + 2); i; i = *(i + 2))
      {
        v40 = i;
      }

      sub_1D9D9AC58(v87, v40);
LABEL_130:
      v37 = v61;
    }

    if (v37 != (&v139 + 8))
    {
      operator new();
    }
  }

  sub_1D9D9AC58(&v139, *(&v139 + 1));
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_135:
  if (v128)
  {
    v89 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v17, v128, v18);
    v90 = objc_alloc(MEMORY[0x1E695DF20]);
    v136 = 0;
    v92 = objc_msgSend_initWithContentsOfURL_error_(v90, v91, v89, &v136);
    v93 = v136;
    v132 = sub_1D9D98348(v92);

    if (!v130)
    {
      goto LABEL_153;
    }
  }

  else
  {
    v132 = 0;
    if (!v130)
    {
      goto LABEL_153;
    }
  }

  v94 = v130;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v95 = v94;
  v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v139, __p, 16);
  if (v99)
  {
    v100 = *v140;
    do
    {
      for (j = 0; j != v99; ++j)
      {
        if (*v140 != v100)
        {
          objc_enumerationMutation(v95);
        }

        v102 = *(*(&v139 + 1) + 8 * j);
        v103 = objc_msgSend_objectForKeyedSubscript_(v95, v97, v102, v98);
        v104 = v102;
        v108 = objc_msgSend_UTF8String(v102, v105, v106, v107);
        v112 = objc_msgSend_unsignedIntegerValue(v103, v109, v110, v111);
        v113 = v134;
LABEL_145:
        v114 = *v113;
        if (!*v113)
        {
LABEL_149:
          operator new();
        }

        while (1)
        {
          v113 = v114;
          v115 = v114[4];
          if (v112 < v115)
          {
            goto LABEL_145;
          }

          if (v115 >= v112)
          {
            break;
          }

          v114 = v113[1];
          if (!v114)
          {
            goto LABEL_149;
          }
        }

        MEMORY[0x1DA740ED0](v113 + 5, v108);

        a1 = v135;
      }

      v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v97, &v139, __p, 16);
    }

    while (v99);
  }

LABEL_153:
  a1[13] = a2;
  v116 = 1.0;
  if (a9 > 0.0)
  {
    v116 = a9;
  }

  *(a1 + 28) = v116;
  a1[15] = a3;
  a1[16] = a4;
  v117 = a1[6];
  a1[6] = v126;

  return a1;
}

void sub_1D9D9817C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_1D9D98778((a25 + 80));
  sub_1D9D98778((a25 + 56));

  sub_1D9D9AC58(a23, *(a25 + 32));
  sub_1D9D9ABD4(a25, *(a25 + 8));

  _Unwind_Resume(a1);
}

id sub_1D9D98348(void *a1)
{
  v64 = *MEMORY[0x1E69E9840];
  memset(v61, 0, sizeof(v61));
  v55 = a1;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v1, v61, v63, 16))
  {
    v2 = **(&v61[0] + 1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_integerValue(v2, v3, v4, v5) <= 0)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      objc_opt_class();
      v6 = (objc_opt_isKindOfClass() & 1) != 0;
    }

    v10 = objc_msgSend_objectForKeyedSubscript_(v55, v8, v2, v9);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_integerValue(v10, v11, v12, v13) <= 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      objc_opt_class();
      v7 = (objc_opt_isKindOfClass() & 1) != 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v56 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v14, v15, v16);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v17 = v55;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v57, v62, 16);
  if (v19)
  {
    v20 = *v58;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v57 + 1) + 8 * i);
        v23 = v22;
        if (v6 == 3)
        {
          v25 = v22;
          v26 = MEMORY[0x1E696AD98];
          v30 = objc_msgSend_integerValue(v25, v27, v28, v29);
          v24 = objc_msgSend_numberWithInteger_(v26, v31, v30, v32);
        }

        else if (v6 == 2 || v6 == 1)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0;
        }

        v35 = objc_msgSend_objectForKeyedSubscript_(v17, v33, v23, v34);
        v36 = v35;
        if (v7 == 3)
        {
          v38 = v35;
          v39 = MEMORY[0x1E696AD98];
          v43 = objc_msgSend_integerValue(v38, v40, v41, v42);
          v37 = objc_msgSend_numberWithInteger_(v39, v44, v43, v45);
        }

        else if (v7 == 2 || v7 == 1)
        {
          v37 = v35;
        }

        else
        {
          v37 = 0;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v48 = v37;
        }

        else
        {
          v48 = v24;
        }

        if (isKindOfClass)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v56, v47, v48, v24);
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v56, v47, v48, v37);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v49, &v57, v62, 16);
    }

    while (v19);
  }

  v53 = objc_msgSend_copy(v56, v50, v51, v52);

  return v53;
}

char **sub_1D9D98778(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 2);
        if (v6)
        {
          CFRelease(v6);
          *(v3 - 2) = 0;
        }

        v7 = *(v3 - 5);
        if (v7)
        {
          v8 = *(v3 - 4);
          v5 = *(v3 - 5);
          if (v8 != v7)
          {
            do
            {
              if (*(v8 - 1) < 0)
              {
                operator delete(*(v8 - 24));
              }

              v8 -= 40;
            }

            while (v8 != v7);
            v5 = *(v3 - 5);
          }

          *(v3 - 4) = v7;
          operator delete(v5);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1D9D9883C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 16);
        if (v6)
        {
          CFRelease(v6);
          *(v3 - 16) = 0;
        }

        v7 = *(v3 - 40);
        if (v7)
        {
          v8 = *(v3 - 32);
          v5 = *(v3 - 40);
          if (v8 != v7)
          {
            do
            {
              if (*(v8 - 1) < 0)
              {
                operator delete(*(v8 - 24));
              }

              v8 -= 40;
            }

            while (v8 != v7);
            v5 = *(v3 - 40);
          }

          *(v3 - 32) = v7;
          operator delete(v5);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 56);
    if (v10 != v9)
    {
      do
      {
        v13 = *(v10 - 16);
        if (v13)
        {
          CFRelease(v13);
          *(v10 - 16) = 0;
        }

        v14 = *(v10 - 40);
        if (v14)
        {
          v15 = *(v10 - 32);
          v12 = *(v10 - 40);
          if (v15 != v14)
          {
            do
            {
              if (*(v15 - 1) < 0)
              {
                operator delete(*(v15 - 24));
              }

              v15 -= 40;
            }

            while (v15 != v14);
            v12 = *(v10 - 40);
          }

          *(v10 - 32) = v14;
          operator delete(v12);
        }

        v10 -= 48;
      }

      while (v10 != v9);
      v11 = *(a1 + 56);
    }

    *(a1 + 64) = v9;
    operator delete(v11);
  }

  sub_1D9D9AC58(a1 + 24, *(a1 + 32));
  sub_1D9D9ABD4(a1, *(a1 + 8));
  return a1;
}

void sub_1D9D989B0(uint64_t a1@<X0>, uint64_t *a2@<X1>, char **a3@<X8>)
{
  v4 = *a2;
  v185 = a2[1];
  if (*a2 != v185)
  {
    v191 = (a1 + 8);
    while (1)
    {
      v192 = *(v4 + 8);
      v189 = *(v4 + 24);
      v5 = *(a1 + 120);
      v186 = v4;
      if (v5)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1D9D84AB0();
      }

      v198 = 0;
      v199 = 0;
      v200 = 0;
      if ((*(a1 + 104) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = 0;
        while (1)
        {
          v194 = v6;
          v7 = MEMORY[0];
          memset(&v208, 0, sizeof(v208));
          if (!*(a1 + 16))
          {
            break;
          }

          v8 = v191;
          do
          {
            v9 = *v8;
            if (!*v8)
            {
              operator new();
            }

            v8 = *v8;
          }

          while (v9[4]);
          std::string::operator=(&v208, (v9 + 5));
          if ((SHIBYTE(v208.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v10 = SHIBYTE(v208.__r_.__value_.__r.__words[2]);
            if (v208.__r_.__value_.__l.__size_ != 3)
            {
              goto LABEL_26;
            }

            v11 = v208.__r_.__value_.__r.__words[0];
          }

          else
          {
            v10 = SHIBYTE(v208.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) != 3)
            {
              goto LABEL_26;
            }

            v11 = &v208;
          }

          data_low = LOWORD(v11->__r_.__value_.__l.__data_);
          v13 = v11->__r_.__value_.__s.__data_[2];
          if (data_low != 20053 || v13 != 75)
          {
LABEL_26:
            v15 = *(a1 + 32);
            if (v15)
            {
              v187 = v10;
              if ((v10 & 0x80000000) == 0)
              {
                size = v10;
              }

              else
              {
                size = v208.__r_.__value_.__l.__size_;
              }

              if ((v10 & 0x80000000) == 0)
              {
                v17 = &v208;
              }

              else
              {
                v17 = v208.__r_.__value_.__r.__words[0];
              }

              do
              {
                v18 = *(v15 + 55);
                if (v18 >= 0)
                {
                  v19 = *(v15 + 55);
                }

                else
                {
                  v19 = v15[5];
                }

                if (v18 >= 0)
                {
                  v20 = (v15 + 4);
                }

                else
                {
                  v20 = v15[4];
                }

                if (v19 >= size)
                {
                  v21 = size;
                }

                else
                {
                  v21 = v19;
                }

                v22 = memcmp(v17, v20, v21);
                v23 = size < v19;
                if (v22)
                {
                  v23 = v22 < 0;
                }

                if (!v23)
                {
                  v24 = memcmp(v20, v17, v21);
                  v25 = v19 < size;
                  if (v24)
                  {
                    v25 = v24 < 0;
                  }

                  if (!v25)
                  {
                    goto LABEL_81;
                  }

                  ++v15;
                }

                v15 = *v15;
              }

              while (v15);
              LOBYTE(v10) = v187;
            }

            goto LABEL_51;
          }

LABEL_81:
          MEMORY[0] = 0;
          if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v208.__r_.__value_.__l.__data_);
          }

          ++v6;
          if (v194 + 1 >= (2 * *(a1 + 104)))
          {
            goto LABEL_83;
          }
        }

        LOBYTE(v10) = 0;
LABEL_51:
        v26 = v199;
        if (v199 >= v200)
        {
          v28 = 0xCCCCCCCCCCCCCCCDLL * ((v199 - v198) >> 3) + 1;
          if (v28 > 0x666666666666666)
          {
            sub_1D9D9AF54();
          }

          if (0x999999999999999ALL * ((v200 - v198) >> 3) > v28)
          {
            v28 = 0x999999999999999ALL * ((v200 - v198) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v200 - v198) >> 3) >= 0x333333333333333)
          {
            v29 = 0x666666666666666;
          }

          else
          {
            v29 = v28;
          }

          cf = &v198;
          if (v29)
          {
            if (v29 <= 0x666666666666666)
            {
              operator new();
            }

            sub_1D9D10E9C();
          }

          v31 = (8 * ((v199 - v198) >> 3));
          __p[0] = 0;
          __p[1] = v31;
          v205 = v31;
          *v31 = 0;
          *(v31 + 2) = 0;
          *(v31 + 3) = v7;
          if ((v10 & 0x80) != 0)
          {
            sub_1D9D12B94(v31 + 16, v208.__r_.__value_.__l.__data_, v208.__r_.__value_.__l.__size_);
            v31 = __p[1];
            v32 = v205;
          }

          else
          {
            *(v31 + 2) = v208;
            v32 = v31;
          }

          v34 = v198;
          v33 = v199;
          v35 = v31 - (v199 - v198);
          v30 = v32 + 5;
          *&v205 = v32 + 5;
          if (v199 != v198)
          {
            v36 = 0;
            do
            {
              v38 = &v35[v36 * 8];
              v39 = &v34[v36];
              *v38 = v34[v36];
              *(v38 + 2) = v34[v36 + 1];
              *(v38 + 3) = HIDWORD(v34[v36 + 1]);
              if (SHIBYTE(v34[v36 + 4]) < 0)
              {
                sub_1D9D12B94(v38 + 16, v39[2], v39[3]);
              }

              else
              {
                v37 = *(v39 + 1);
                *(v38 + 4) = v39[4];
                *(v38 + 1) = v37;
              }

              v36 += 5;
            }

            while (v39 + 5 != v33);
            do
            {
              if (*(v34 + 39) < 0)
              {
                operator delete(v34[2]);
              }

              v34 += 5;
            }

            while (v34 != v33);
            v34 = v198;
            v30 = v205;
          }

          v198 = v35;
          v199 = v30;
          __p[1] = v34;
          *&v205 = v34;
          v200 = *(&v205 + 1);
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v199 = 0;
          v26[2] = 0;
          v26[3] = v7;
          if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_1D9D12B94(v26 + 16, v208.__r_.__value_.__l.__data_, v208.__r_.__value_.__l.__size_);
          }

          else
          {
            v27 = v208.__r_.__value_.__r.__words[2];
            *(v26 + 1) = *&v208.__r_.__value_.__l.__data_;
            *(v26 + 4) = v27;
          }

          v30 = v26 + 10;
        }

        v199 = v30;
        goto LABEL_81;
      }

LABEL_83:
      v40 = *(a1 + 56);
      v188 = *(a1 + 64);
      if (v188 != v40)
      {
        while (*(v40 + 40) != v189)
        {
LABEL_85:
          v40 += 48;
          if (v40 == v188)
          {
            goto LABEL_141;
          }
        }

        v42 = v198;
        v41 = v199;
        v195 = v199;
        while (2)
        {
          if (v42 == v41)
          {
            goto LABEL_85;
          }

          v44 = *(v40 + 8);
          if (*(v40 + 16) != v44)
          {
            operator new();
          }

          if (MEMORY[0xFFFFFFFFFFFFFFF8] != *v42)
          {
            v45 = *(a1 + 136);
            *(a1 + 136) = v45 + 1;
            __p[0] = *v40;
            v205 = 0uLL;
            __p[1] = 0;
            sub_1D9DBFEFC(&__p[1], *(v40 + 8), *(v40 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v40 + 16) - *(v40 + 8)) >> 3));
            cf = CFRetain(*(v40 + 32));
            v207 = v45;
            v46 = v205;
            if (v205 >= *(&v205 + 1))
            {
              *&v205 = sub_1D9DC04D8(&__p[1], v42);
              v48 = cf;
              if (!cf)
              {
                goto LABEL_101;
              }

              goto LABEL_100;
            }

            *v205 = *v42;
            *(v46 + 8) = *(v42 + 2);
            *(v46 + 12) = *(v42 + 3);
            if ((v42[39] & 0x80000000) == 0)
            {
              v47 = *(v42 + 1);
              *(v46 + 32) = *(v42 + 4);
              *(v46 + 16) = v47;
              *&v205 = v46 + 40;
              v48 = cf;
              if (!cf)
              {
                goto LABEL_101;
              }

LABEL_100:
              CFRelease(v48);
              cf = 0;
              goto LABEL_101;
            }

            sub_1D9D12B94((v46 + 16), *(v42 + 2), *(v42 + 3));
            *&v205 = v46 + 40;
            v48 = cf;
            if (cf)
            {
              goto LABEL_100;
            }

LABEL_101:
            cf = CFRetain(v192);
            v49 = logf(*(v42 + 3));
            __p[0] = COERCE_UNSIGNED_INT(*__p + v49);
            if ((sub_1D9D9A858(a1, __p, v50, v51) & 1) == 0)
            {
              v52 = *(a1 + 88);
              if (v52 >= *(a1 + 96))
              {
                v53 = sub_1D9D9B2CC((a1 + 80), __p);
              }

              else
              {
                *v52 = __p[0];
                *(v52 + 8) = 0;
                *(v52 + 16) = 0;
                *(v52 + 24) = 0;
                sub_1D9DBFEFC((v52 + 8), __p[1], v205, 0xCCCCCCCCCCCCCCCDLL * ((v205 - __p[1]) >> 3));
                *(v52 + 32) = CFRetain(cf);
                *(v52 + 40) = v207;
                v53 = (v52 + 48);
                *(a1 + 88) = v52 + 48;
              }

              *(a1 + 88) = v53;
            }

            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v54 = __p[1];
            if (__p[1])
            {
              v55 = v205;
              v43 = __p[1];
              if (v205 != __p[1])
              {
                do
                {
                  if (*(v55 - 1) < 0)
                  {
                    operator delete(*(v55 - 3));
                  }

                  v55 -= 5;
                }

                while (v55 != v54);
                v43 = __p[1];
              }

              *&v205 = v54;
              operator delete(v43);
            }
          }

          v42 += 40;
          v41 = v195;
          continue;
        }
      }

      v57 = v198;
      v56 = v199;
      if (v198 != v199)
      {
        break;
      }

      if (v198)
      {
        goto LABEL_118;
      }

LABEL_3:
      v4 = v186 + 32;
      if (v186 + 32 == v185)
      {
        goto LABEL_144;
      }
    }

    do
    {
      v60 = *(a1 + 136);
      *(a1 + 136) = v60 + 1;
      *__p = 0u;
      v205 = 0u;
      cf = 0;
      v207 = v60;
      *&v205 = sub_1D9DC04D8(&__p[1], v57);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      cf = CFRetain(v192);
      v61 = logf(v57[3]);
      __p[0] = COERCE_UNSIGNED_INT(*__p + v61);
      if ((sub_1D9D9A858(a1, __p, v62, v63) & 1) == 0)
      {
        v64 = *(a1 + 88);
        if (v64 >= *(a1 + 96))
        {
          v65 = sub_1D9D9B2CC((a1 + 80), __p);
        }

        else
        {
          *v64 = __p[0];
          *(v64 + 8) = 0;
          *(v64 + 16) = 0;
          *(v64 + 24) = 0;
          sub_1D9DBFEFC((v64 + 8), __p[1], v205, 0xCCCCCCCCCCCCCCCDLL * ((v205 - __p[1]) >> 3));
          *(v64 + 32) = CFRetain(cf);
          *(v64 + 40) = v207;
          v65 = (v64 + 48);
          *(a1 + 88) = v64 + 48;
        }

        *(a1 + 88) = v65;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v66 = __p[1];
      if (__p[1])
      {
        v67 = v205;
        v59 = __p[1];
        if (v205 != __p[1])
        {
          do
          {
            if (*(v67 - 1) < 0)
            {
              operator delete(*(v67 - 3));
            }

            v67 -= 5;
          }

          while (v67 != v66);
          v59 = __p[1];
        }

        *&v205 = v66;
        operator delete(v59);
      }

      v57 += 10;
    }

    while (v57 != v56);
LABEL_141:
    v57 = v198;
    if (!v198)
    {
      goto LABEL_3;
    }

LABEL_118:
    v58 = v199;
    if (v199 == v57)
    {
      v199 = v57;
      operator delete(v57);
    }

    else
    {
      do
      {
        if (*(v58 - 1) < 0)
        {
          operator delete(*(v58 - 3));
        }

        v58 -= 10;
      }

      while (v58 != v57);
      v199 = v57;
      operator delete(v198);
    }

    goto LABEL_3;
  }

LABEL_144:
  v68 = *(a1 + 80);
  v190 = (a1 + 80);
  v69 = *(a1 + 88);
  if (v68 != v69)
  {
    v70 = -*(a1 + 112);
    v71 = *(a1 + 80);
    do
    {
      v72 = exp2(*v71 * 1.44269504);
      v73 = pow((0xCCCCCCCCCCCCCCCDLL * ((*(v71 + 16) - *(v71 + 8)) >> 3)), v70);
      v74 = pow(v72, v73);
      *(v71 + 4) = v74;
      v71 += 48;
    }

    while (v71 != v69);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 4) >= *(a1 + 104))
  {
    v75 = *(a1 + 104);
  }

  else
  {
    v75 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 4);
  }

  v196 = 48 * v75;
  if (v75)
  {
    v76 = (v196 + v68);
    if (v75 >= 2)
    {
      v77 = (v75 - 2) >> 1;
      v78 = v77 + 1;
      v79 = v68 + 48 * v77;
      do
      {
        sub_1D9D9B578(v68, v75, v79);
        v79 -= 48;
        --v78;
      }

      while (v78);
    }

    if (v76 != v69)
    {
      v119 = v196 + v68;
      do
      {
        v121 = *(v119 + 4);
        if (v121 > *(v68 + 4))
        {
          LODWORD(__p[0]) = *v119;
          *(__p + 1) = v121;
          v205 = 0uLL;
          __p[1] = 0;
          sub_1D9DBFEFC(&__p[1], *(v119 + 8), *(v119 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v119 + 16) - *(v119 + 8)) >> 3));
          v122 = CFRetain(*(v119 + 32));
          v123 = *(v119 + 40);
          cf = v122;
          v207 = v123;
          if (v119 != v68)
          {
            sub_1D9DC0160((v119 + 8), *(v68 + 8), *(v68 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v68 + 16) - *(v68 + 8)) >> 3));
          }

          v124 = *(v119 + 32);
          if (v124)
          {
            CFRelease(v124);
            *(v119 + 32) = 0;
          }

          *(v119 + 32) = CFRetain(*(v68 + 32));
          *v119 = *v68;
          *(v119 + 40) = *(v68 + 40);
          if (v68 != __p)
          {
            sub_1D9DC0160((v68 + 8), __p[1], v205, 0xCCCCCCCCCCCCCCCDLL * ((v205 - __p[1]) >> 3));
          }

          v125 = *(v68 + 32);
          if (v125)
          {
            CFRelease(v125);
            *(v68 + 32) = 0;
          }

          *(v68 + 32) = CFRetain(cf);
          *v68 = __p[0];
          v126 = cf;
          *(v68 + 40) = v207;
          if (v126)
          {
            CFRelease(v126);
            cf = 0;
          }

          v127 = __p[1];
          if (__p[1])
          {
            v128 = v205;
            v120 = __p[1];
            if (v205 != __p[1])
            {
              do
              {
                if (*(v128 - 1) < 0)
                {
                  operator delete(*(v128 - 3));
                }

                v128 -= 5;
              }

              while (v128 != v127);
              v120 = __p[1];
            }

            *&v205 = v127;
            operator delete(v120);
          }

          sub_1D9D9B578(v68, v75, v68);
        }

        v119 += 48;
      }

      while (v119 != v69);
    }

    if (v75 >= 2)
    {
      do
      {
        v198 = *v68;
        v200 = 0;
        v201 = 0;
        v199 = 0;
        sub_1D9DBFEFC(&v199, *(v68 + 8), *(v68 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v68 + 16) - *(v68 + 8)) >> 3));
        v82 = CFRetain(*(v68 + 32));
        v83 = 0;
        v84 = *(v68 + 40);
        v202 = v82;
        v203 = v84;
        v85 = v68;
        do
        {
          v86 = &v85[6 * v83 + 6];
          v87 = 2 * v83;
          v83 = (2 * v83) | 1;
          v88 = v87 + 2;
          if (v87 + 2 < v75)
          {
            v89 = *(v86 + 4);
            v90 = *(v86 + 52);
            v91 = v89 <= v90 ? 0 : 48;
            v86 += v91;
            if (v89 > v90)
            {
              v83 = v88;
            }
          }

          if (v85 != v86)
          {
            sub_1D9DC0160(v85 + 1, *(v86 + 8), *(v86 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v86 + 16) - *(v86 + 8)) >> 3));
          }

          v92 = v85[4];
          if (v92)
          {
            CFRelease(v92);
            v85[4] = 0;
          }

          v85[4] = CFRetain(*(v86 + 32));
          *v85 = *v86;
          v85[5] = *(v86 + 40);
          v85 = v86;
        }

        while (v83 <= ((v75 - 2) >> 1));
        v93 = v76 - 6;
        if (v86 == v76 - 6)
        {
          if (v86 != &v198)
          {
            sub_1D9DC0160((v86 + 8), v199, v200, 0xCCCCCCCCCCCCCCCDLL * ((v200 - v199) >> 3));
          }

          v109 = *(v86 + 32);
          if (v109)
          {
            CFRelease(v109);
            *(v86 + 32) = 0;
          }

          *(v86 + 32) = CFRetain(v202);
          *v86 = v198;
          *(v86 + 40) = v203;
        }

        else
        {
          sub_1D9DC0160((v86 + 8), *(v76 - 5), *(v76 - 4), 0xCCCCCCCCCCCCCCCDLL * ((*(v76 - 4) - *(v76 - 5)) >> 3));
          v94 = *(v86 + 32);
          if (v94)
          {
            CFRelease(v94);
            *(v86 + 32) = 0;
          }

          *(v86 + 32) = CFRetain(*(v76 - 2));
          *v86 = *(v76 - 6);
          *(v86 + 40) = *(v76 - 1);
          if (v93 != &v198)
          {
            sub_1D9DC0160(v76 - 5, v199, v200, 0xCCCCCCCCCCCCCCCDLL * ((v200 - v199) >> 3));
          }

          v95 = *(v76 - 2);
          if (v95)
          {
            CFRelease(v95);
            *(v76 - 2) = 0;
          }

          *(v76 - 2) = CFRetain(v202);
          *(v76 - 6) = v198;
          *(v76 - 1) = v203;
          v96 = v86 - v68 + 48;
          if (v96 >= 49)
          {
            v97 = (-2 - 0x5555555555555555 * (v96 >> 4)) >> 1;
            v98 = v68 + 48 * v97;
            v99 = *(v86 + 4);
            if (*(v98 + 4) > v99)
            {
              LODWORD(__p[0]) = *v86;
              *(__p + 1) = v99;
              v205 = 0uLL;
              __p[1] = 0;
              sub_1D9DBFEFC(&__p[1], *(v86 + 8), *(v86 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v86 + 16) - *(v86 + 8)) >> 3));
              v100 = CFRetain(*(v86 + 32));
              v101 = *(v86 + 40);
              cf = v100;
              v207 = v101;
              do
              {
                v102 = v98;
                if (v86 != v98)
                {
                  sub_1D9DC0160((v86 + 8), *(v98 + 8), *(v98 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v98 + 16) - *(v98 + 8)) >> 3));
                }

                v103 = *(v86 + 32);
                if (v103)
                {
                  CFRelease(v103);
                  *(v86 + 32) = 0;
                }

                *(v86 + 32) = CFRetain(*(v98 + 32));
                *v86 = *v98;
                *(v86 + 40) = *(v98 + 40);
                if (!v97)
                {
                  break;
                }

                v97 = (v97 - 1) >> 1;
                v98 = v68 + 48 * v97;
                v86 = v102;
              }

              while (*(v98 + 4) > *(__p + 1));
              if (v102 != __p)
              {
                sub_1D9DC0160((v102 + 8), __p[1], v205, 0xCCCCCCCCCCCCCCCDLL * ((v205 - __p[1]) >> 3));
              }

              v104 = *(v102 + 32);
              if (v104)
              {
                CFRelease(v104);
                *(v102 + 32) = 0;
              }

              *(v102 + 32) = CFRetain(cf);
              *v102 = __p[0];
              v105 = cf;
              *(v102 + 40) = v207;
              if (v105)
              {
                CFRelease(v105);
                cf = 0;
              }

              v106 = __p[1];
              if (__p[1])
              {
                v107 = v205;
                if (v205 == __p[1])
                {
                  *&v205 = __p[1];
                  operator delete(__p[1]);
                  v108 = v202;
                  if (!v202)
                  {
                    goto LABEL_208;
                  }
                }

                else
                {
                  do
                  {
                    if (*(v107 - 1) < 0)
                    {
                      operator delete(*(v107 - 3));
                    }

                    v107 -= 5;
                  }

                  while (v107 != v106);
                  *&v205 = v106;
                  operator delete(__p[1]);
                  v108 = v202;
                  if (!v202)
                  {
                    goto LABEL_208;
                  }
                }

LABEL_207:
                CFRelease(v108);
                v202 = 0;
                goto LABEL_208;
              }
            }
          }
        }

        v108 = v202;
        if (v202)
        {
          goto LABEL_207;
        }

LABEL_208:
        v110 = v199;
        if (v199)
        {
          v111 = v200;
          v80 = v199;
          if (v200 != v199)
          {
            do
            {
              if (*(v111 - 1) < 0)
              {
                operator delete(*(v111 - 3));
              }

              v111 = (v111 - 40);
            }

            while (v111 != v110);
            v80 = v199;
          }

          v200 = v110;
          operator delete(v80);
        }

        v76 = v93;
      }

      while (v75-- > 2);
    }
  }

  v112 = a1;
  v114 = *(a1 + 80);
  v113 = *(a1 + 88);
  if (v196 + v114 == v113)
  {
    v115 = *(a1 + 88);
    v116 = a3;
    v117 = a1 + 56;
    v118 = *(a1 + 56);
    if (!v118)
    {
      goto LABEL_270;
    }

    goto LABEL_255;
  }

  v116 = a3;
  v115 = v114 + v196;
  while (v113 != v115)
  {
    v130 = *(v113 - 16);
    if (v130)
    {
      CFRelease(v130);
      *(v113 - 16) = 0;
    }

    v131 = *(v113 - 40);
    if (v131)
    {
      v132 = *(v113 - 32);
      v129 = *(v113 - 40);
      if (v132 != v131)
      {
        do
        {
          if (*(v132 - 1) < 0)
          {
            operator delete(*(v132 - 24));
          }

          v132 -= 40;
        }

        while (v132 != v131);
        v129 = *(v113 - 40);
      }

      *(v113 - 32) = v131;
      operator delete(v129);
    }

    v113 -= 48;
  }

  *(a1 + 88) = v115;
  v117 = a1 + 56;
  v118 = *(a1 + 56);
  if (v118)
  {
LABEL_255:
    v133 = *(a1 + 64);
    v134 = v118;
    if (v133 != v118)
    {
      do
      {
        v136 = *(v133 - 2);
        if (v136)
        {
          CFRelease(v136);
          *(v133 - 2) = 0;
        }

        v137 = *(v133 - 5);
        if (v137)
        {
          v138 = *(v133 - 4);
          v135 = *(v133 - 5);
          if (v138 != v137)
          {
            do
            {
              if (*(v138 - 1) < 0)
              {
                operator delete(*(v138 - 24));
              }

              v138 -= 40;
            }

            while (v138 != v137);
            v135 = *(v133 - 5);
          }

          *(v133 - 4) = v137;
          operator delete(v135);
        }

        v133 -= 48;
      }

      while (v133 != v118);
      v134 = *v117;
    }

    *(a1 + 64) = v118;
    operator delete(v134);
    *v117 = 0;
    *(v117 + 8) = 0;
    *(v117 + 16) = 0;
    v115 = *(a1 + 88);
  }

LABEL_270:
  v139 = *(a1 + 80);
  *(a1 + 56) = v139;
  *(a1 + 64) = v115;
  *(a1 + 72) = *(a1 + 96);
  v190[1] = 0;
  v190[2] = 0;
  *v190 = 0;
  v116[1] = 0;
  v116[2] = 0;
  *v116 = 0;
  if (v139 != v115)
  {
    v197 = v115;
    do
    {
      v141 = *(v139 + 16);
      v142 = *(v141 - 40);
      if (v142 != v112[16])
      {
        v146 = *(v139 + 32);
        v147 = *(v139 + 40);
        memset(&v208, 0, sizeof(v208));
        if (v141 != *(v139 + 8))
        {
          operator new();
        }

        v149 = v116[1];
        v148 = v116[2];
        if (v149 >= v148)
        {
          v155 = 0xAAAAAAAAAAAAAAABLL * ((v149 - *v116) >> 4);
          v156 = v155 + 1;
          if (v155 + 1 > 0x555555555555555)
          {
            sub_1D9D9AF54();
          }

          v157 = 0xAAAAAAAAAAAAAAABLL * ((v148 - *v116) >> 4);
          if (2 * v157 > v156)
          {
            v156 = 2 * v157;
          }

          if (v157 >= 0x2AAAAAAAAAAAAAALL)
          {
            v158 = 0x555555555555555;
          }

          else
          {
            v158 = v156;
          }

          cf = v116;
          if (v158)
          {
            if (v158 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1D9D10E9C();
          }

          __p[0] = 0;
          __p[1] = (48 * v155);
          v205 = 48 * v155;
          sub_1D9D9AE44((48 * v155), v142, v146, v147, &v208);
          v150 = (v205 + 48);
          *&v205 = v205 + 48;
          v173 = *v116;
          v174 = v116[1];
          v198 = v116;
          v199 = &v209;
          v200 = &v210;
          LOBYTE(v201) = 0;
          v175 = __p[1] + v173 - v174;
          v209 = v175;
          v210 = v175;
          if (v173 != v174)
          {
            v176 = __p[1] + v173 - v174;
            v177 = v173;
            do
            {
              *v176 = *v177;
              v178 = CFRetain(*(v177 + 1));
              v179 = *(v177 + 2);
              v176[3] = 0;
              v176[1] = v178;
              v176[2] = v179;
              v176[4] = 0;
              v176[5] = 0;
              v181 = *(v177 + 3);
              v180 = *(v177 + 4);
              if (v180 != v181)
              {
                if (((v180 - v181) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_1D9D84AB0();
              }

              v177 += 48;
              v176 = v210 + 48;
              v210 += 48;
            }

            while (v177 != v174);
            LOBYTE(v201) = 1;
            v116 = a3;
            v115 = v197;
            do
            {
              v182 = *(v173 + 1);
              if (v182)
              {
                CFRelease(v182);
                *(v173 + 1) = 0;
              }

              v183 = *(v173 + 3);
              if (v183)
              {
                *(v173 + 4) = v183;
                operator delete(v183);
              }

              v173 += 48;
            }

            while (v173 != v174);
            v173 = *a3;
          }

          *v116 = v175;
          v116[1] = v150;
          v116[2] = *(&v205 + 1);
          v112 = a1;
          if (v173)
          {
            operator delete(v173);
          }
        }

        else
        {
          sub_1D9D9AE44(v116[1], v142, v146, v147, &v208);
          v112 = a1;
          v150 = v149 + 48;
        }

        v116[1] = v150;
        if (v208.__r_.__value_.__r.__words[0])
        {
          operator delete(v208.__r_.__value_.__l.__data_);
        }

        goto LABEL_275;
      }

      v144 = v112[11];
      v143 = v112[12];
      if (v144 >= v143)
      {
        v151 = 0xAAAAAAAAAAAAAAABLL * ((v144 - *v190) >> 4);
        v152 = v151 + 1;
        if (v151 + 1 > 0x555555555555555)
        {
          sub_1D9D9AF54();
        }

        v153 = 0xAAAAAAAAAAAAAAABLL * ((v143 - *v190) >> 4);
        if (2 * v153 > v152)
        {
          v152 = 2 * v153;
        }

        if (v153 >= 0x2AAAAAAAAAAAAAALL)
        {
          v154 = 0x555555555555555;
        }

        else
        {
          v154 = v152;
        }

        cf = v190;
        if (v154)
        {
          if (v154 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        v159 = 48 * v151;
        __p[0] = 0;
        __p[1] = v159;
        v205 = v159;
        *v159 = *v139;
        *(v159 + 8) = 0;
        *(v159 + 16) = 0;
        *(v159 + 24) = 0;
        sub_1D9DBFEFC((v159 + 8), *(v139 + 8), *(v139 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v139 + 16) - *(v139 + 8)) >> 3));
        v160 = CFRetain(*(v139 + 32));
        v140 = v112[10];
        v161 = v112[11];
        v162 = v205;
        v163 = __p[1] - (v161 - v140);
        *(v159 + 32) = v160;
        *(v159 + 40) = *(v139 + 40);
        v145 = (v162 + 48);
        *&v205 = v162 + 48;
        if (v161 == v140)
        {
          v116 = a3;
          v112 = a1;
          v115 = v197;
          *(a1 + 80) = v163;
          *(a1 + 88) = v145;
          *(a1 + 96) = *(&v205 + 1);
          if (!v140)
          {
            goto LABEL_274;
          }
        }

        else
        {
          v164 = 0;
          do
          {
            v165 = &v140[v164];
            v166 = &v163[v164];
            *v166 = *&v140[v164];
            *(v166 + 2) = 0;
            *(v166 + 3) = 0;
            *(v166 + 1) = 0;
            sub_1D9DBFEFC(&v163[v164 + 8], *&v140[v164 + 8], *&v140[v164 + 16], 0xCCCCCCCCCCCCCCCDLL * ((*&v140[v164 + 16] - *&v140[v164 + 8]) >> 3));
            v167 = CFRetain(*&v140[v164 + 32]);
            v168 = &v163[v164];
            *(v168 + 4) = v167;
            *(v168 + 5) = *&v140[v164 + 40];
            v164 += 48;
          }

          while (v165 + 48 != v161);
          v116 = a3;
          v112 = a1;
          do
          {
            v170 = *(v140 + 4);
            if (v170)
            {
              CFRelease(v170);
              *(v140 + 4) = 0;
            }

            v171 = *(v140 + 1);
            if (v171)
            {
              v172 = *(v140 + 2);
              v169 = *(v140 + 1);
              if (v172 != v171)
              {
                do
                {
                  if (*(v172 - 1) < 0)
                  {
                    operator delete(*(v172 - 24));
                  }

                  v172 -= 40;
                }

                while (v172 != v171);
                v169 = *(v140 + 1);
              }

              *(v140 + 2) = v171;
              operator delete(v169);
            }

            v140 += 48;
          }

          while (v140 != v161);
          v140 = *v190;
          *(a1 + 80) = v163;
          *(a1 + 88) = v145;
          *(a1 + 96) = *(&v205 + 1);
          v115 = v197;
          if (!v140)
          {
            goto LABEL_274;
          }
        }

        operator delete(v140);
      }

      else
      {
        *v144 = *v139;
        v144[1] = 0;
        v144[2] = 0;
        v144[3] = 0;
        sub_1D9DBFEFC(v144 + 1, *(v139 + 8), *(v139 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v139 + 16) - *(v139 + 8)) >> 3));
        v144[4] = CFRetain(*(v139 + 32));
        v144[5] = *(v139 + 40);
        v145 = v144 + 6;
        v112[11] = v145;
      }

LABEL_274:
      v112[11] = v145;
LABEL_275:
      v139 += 48;
    }

    while (v139 != v115);
  }
}

void sub_1D9D9A498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1D9DBFC20(&a28);
  sub_1D9DBFC94(&a21);
  _Unwind_Resume(a1);
}

void sub_1D9D9A4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (*(v27 - 160))
  {
    operator delete(*(v27 - 160));
  }

  sub_1D9D84C34(a9);
  _Unwind_Resume(a1);
}

void sub_1D9D9A73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1D9DBFC94(va);
  _Unwind_Resume(a1);
}

void sub_1D9D9A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v28)
  {
    v31 = -v28;
    v32 = v27 + 40 * v29 + v28 - 24;
    do
    {
      if (*(v32 + 23) < 0)
      {
        operator delete(*v32);
      }

      v32 -= 40;
      v31 += 40;
    }

    while (v31);
  }

  sub_1D9D9B264(&a27);
  if (*(v30 - 137) < 0)
  {
    JUMPOUT(0x1D9D9A7E8);
  }

  JUMPOUT(0x1D9D9A7ECLL);
}

void sub_1D9D9A7D8()
{
  if (v0)
  {
    JUMPOUT(0x1D9D9A7E8);
  }

  JUMPOUT(0x1D9D9A7ECLL);
}

uint64_t sub_1D9D9A858(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_count(*(a1 + 48), a2, a3, a4))
  {
    return 0;
  }

  v6 = MEMORY[0x1E696AEC0];
  sub_1D9DBFD1C(a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithUTF8String_(v6, v7, &__p, v8);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v6, v7, __p.__r_.__value_.__l.__data_, v8);
  }
  v12 = ;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v13 = objc_msgSend_length(v12, v9, v10, v11);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = *(a1 + 48);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v22, v27, 16);
  if (v17)
  {
    v18 = *v23;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v14);
        }

        if (objc_msgSend_rangeOfFirstMatchInString_options_range_(*(*(&v22 + 1) + 8 * v19), v16, v12, 0, 0, v13, v22) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = 1;
          goto LABEL_17;
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v22, v27, 16);
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_17:

  return v20;
}

void sub_1D9D9AA4C(void *a1)
{
  v2 = a1[7];
  for (i = a1[8]; i != v2; i -= 48)
  {
    v5 = *(i - 16);
    if (v5)
    {
      CFRelease(v5);
      *(i - 16) = 0;
    }

    v6 = *(i - 40);
    if (v6)
    {
      v7 = *(i - 32);
      v4 = *(i - 40);
      if (v7 != v6)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 40;
        }

        while (v7 != v6);
        v4 = *(i - 40);
      }

      *(i - 32) = v6;
      operator delete(v4);
    }
  }

  a1[8] = v2;
  v8 = a1[10];
  for (j = a1[11]; j != v8; j -= 48)
  {
    v11 = *(j - 16);
    if (v11)
    {
      CFRelease(v11);
      *(j - 16) = 0;
    }

    v12 = *(j - 40);
    if (v12)
    {
      v13 = *(j - 32);
      v10 = *(j - 40);
      if (v13 != v12)
      {
        do
        {
          if (*(v13 - 1) < 0)
          {
            operator delete(*(v13 - 24));
          }

          v13 -= 40;
        }

        while (v13 != v12);
        v10 = *(j - 40);
      }

      *(j - 32) = v12;
      operator delete(v10);
    }
  }

  a1[11] = v8;
  a1[17] = 1;
}

const void **sub_1D9D9AB6C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D9D9ABA0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1D9D9ABD4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1D9D9ABD4(a1, *a2);
    sub_1D9D9ABD4(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_1D9D9AC58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D9D9AC58(a1, *a2);
    sub_1D9D9AC58(a1, *(a2 + 8));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

unint64_t sub_1D9D9ACDC@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D9ADDC(exception);
    goto LABEL_10;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(ValueAtIndex))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89454(exception);
LABEL_10:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_1D9D89464(ValueAtIndex, a3);
}

uint64_t *sub_1D9D9ADEC(uint64_t *a1)
{
  sub_1D9D9AC58(*a1, a1[2]);
  v2 = a1[1];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      a1[1] = v2;
    }

    sub_1D9D9AC58(*a1, v2);
  }

  return a1;
}

void sub_1D9D9AE44(void *a1, uint64_t a2, CFTypeRef cf, uint64_t a4, uint64_t a5)
{
  v7 = *a5;
  v8 = *(a5 + 8);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *a1 = a2;
  v9 = CFRetain(cf);
  a1[3] = 0;
  a1[1] = v9;
  a1[2] = a4;
  a1[4] = 0;
  a1[5] = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  if (v7)
  {

    operator delete(v7);
  }
}

void sub_1D9D9AF14(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D9AF6C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 40);
      if (v5)
      {
        CFRelease(v5);
        *(v3 - 40) = 0;
      }

      v6 = *(v3 - 24);
      if (v6)
      {
        *(v3 - 16) = v6;
        operator delete(v6);
      }

      v3 -= 48;
    }
  }

  return a1;
}

uint64_t sub_1D9D9AFE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = *(i - 40);
    if (v4)
    {
      CFRelease(v4);
      *(i - 40) = 0;
    }

    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D9D9B060(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v5 = *(i - 16);
    if (v5)
    {
      CFRelease(v5);
      *(i - 16) = 0;
    }

    v6 = *(i - 40);
    if (v6)
    {
      v7 = *(i - 32);
      v4 = *(i - 40);
      if (v7 != v6)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 40;
        }

        while (v7 != v6);
        v4 = *(i - 40);
      }

      *(i - 32) = v6;
      operator delete(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D9D9B118(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = v6 + v7;
      v10 = v4 + v7;
      *v9 = *(v4 + v7);
      *(v9 + 8) = *(v4 + v7 + 8);
      *(v9 + 12) = *(v4 + v7 + 12);
      if (*(v4 + v7 + 39) < 0)
      {
        sub_1D9D12B94((v9 + 16), *(v10 + 16), *(v10 + 24));
      }

      else
      {
        v8 = *(v10 + 16);
        *(v9 + 32) = *(v10 + 32);
        *(v9 + 16) = v8;
      }

      v7 += 40;
    }

    while (v10 + 40 != v5);
    do
    {
      if (*(v4 + 39) < 0)
      {
        operator delete(*(v4 + 16));
      }

      v4 += 40;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void sub_1D9D9B224(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = v1 + v2 - 24;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 -= 40;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D9B264(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1D9D9B2CC(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1D9D9AF54();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v24 = (16 * ((a1[1] - *a1) >> 4));
  *v24 = *a2;
  *(48 * v2 + 8) = 0;
  v24[2] = 0;
  v24[3] = 0;
  sub_1D9DBFEFC((48 * v2 + 8), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  v7 = CFRetain(*(a2 + 32));
  v8 = *(a2 + 40);
  v24[4] = v7;
  v24[5] = v8;
  v9 = 48 * v2 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v24 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = 0;
    do
    {
      v14 = &v10[v13];
      v15 = &v12[v13 * 8];
      *v15 = v10[v13];
      *(v15 + 2) = 0;
      *(v15 + 3) = 0;
      *(v15 + 1) = 0;
      sub_1D9DBFEFC(&v12[v13 * 8 + 8], v10[v13 + 1], v10[v13 + 2], 0xCCCCCCCCCCCCCCCDLL * ((v10[v13 + 2] - v10[v13 + 1]) >> 3));
      v16 = CFRetain(v10[v13 + 4]);
      v17 = &v12[v13 * 8];
      v18 = v10[v13 + 5];
      *(v17 + 4) = v16;
      *(v17 + 5) = v18;
      v13 += 6;
    }

    while (v14 + 6 != v11);
    do
    {
      v20 = v10[4];
      if (v20)
      {
        CFRelease(v20);
        v10[4] = 0;
      }

      v21 = v10[1];
      if (v21)
      {
        v22 = v10[2];
        v19 = v10[1];
        if (v22 != v21)
        {
          do
          {
            if (*(v22 - 1) < 0)
            {
              operator delete(*(v22 - 24));
            }

            v22 -= 40;
          }

          while (v22 != v21);
          v19 = v10[1];
        }

        v10[2] = v21;
        operator delete(v19);
      }

      v10 += 6;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_1D9D9B4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9DBFC20(v3);
  sub_1D9D9B060(va);
  _Unwind_Resume(a1);
}

void sub_1D9D9B518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D9B060(va);
  _Unwind_Resume(a1);
}

void sub_1D9D9B530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v4)
  {
    v6 = (v3 + v4 - 48);
    v7 = -v4;
    do
    {
      v6 = sub_1D9DBFC94(v6) - 6;
      v7 += 48;
    }

    while (v7);
  }

  sub_1D9D9B060(va);
  _Unwind_Resume(a1);
}

void sub_1D9D9B578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a3 - a1) >> 4)))
    {
      v8 = (0x5555555555555556 * ((a3 - a1) >> 4)) | 1;
      v9 = a1 + 48 * v8;
      if (0x5555555555555556 * ((a3 - a1) >> 4) + 2 < a2)
      {
        v10 = *(v9 + 4);
        v11 = *(v9 + 52);
        v12 = 48;
        if (v10 <= v11)
        {
          v12 = 0;
        }

        v9 += v12;
        if (v10 > v11)
        {
          v8 = 0x5555555555555556 * ((a3 - a1) >> 4) + 2;
        }
      }

      v13 = *(a3 + 4);
      if (*(v9 + 4) <= v13)
      {
        LODWORD(v28) = *a3;
        *(&v28 + 1) = v13;
        v30 = 0;
        v31 = 0;
        __p = 0;
        sub_1D9DBFEFC(&__p, *(a3 + 8), *(a3 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 16) - *(a3 + 8)) >> 3));
        v14 = CFRetain(*(v4 + 32));
        v15 = *(v4 + 40);
        cf = v14;
        v33 = v15;
        while (1)
        {
          v19 = v9;
          if (v4 != v9)
          {
            sub_1D9DC0160((v4 + 8), *(v9 + 8), *(v9 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v9 + 16) - *(v9 + 8)) >> 3));
          }

          v20 = *(v4 + 32);
          if (v20)
          {
            CFRelease(v20);
            *(v4 + 32) = 0;
          }

          v21 = CFRetain(*(v9 + 32));
          *v4 = *v9;
          v22 = *(v9 + 40);
          *(v4 + 32) = v21;
          *(v4 + 40) = v22;
          if (v6 < v8)
          {
            break;
          }

          v9 = a1 + 48 * ((2 * v8) | 1);
          if (2 * v8 + 2 < a2)
          {
            v16 = *(v9 + 4);
            v17 = *(v9 + 52);
            if (v16 <= v17)
            {
              v18 = 0;
            }

            else
            {
              v18 = 48;
            }

            v9 += v18;
            if (v16 <= v17)
            {
              v8 = (2 * v8) | 1;
            }

            else
            {
              v8 = 2 * v8 + 2;
            }

            v4 = v19;
            if (*(v9 + 4) > *(&v28 + 1))
            {
              break;
            }
          }

          else
          {
            v8 = (2 * v8) | 1;
            v4 = v19;
            if (*(v9 + 4) > *(&v28 + 1))
            {
              break;
            }
          }
        }

        if (v19 != &v28)
        {
          sub_1D9DC0160(v19 + 1, __p, v30, 0xCCCCCCCCCCCCCCCDLL * ((v30 - __p) >> 3));
        }

        v23 = v19[4];
        if (v23)
        {
          CFRelease(v23);
          v19[4] = 0;
        }

        v19[4] = CFRetain(cf);
        *v19 = v28;
        v24 = cf;
        v19[5] = v33;
        if (v24)
        {
          CFRelease(v24);
          cf = 0;
        }

        v25 = __p;
        if (__p)
        {
          v26 = v30;
          v27 = __p;
          if (v30 != __p)
          {
            do
            {
              if (*(v26 - 1) < 0)
              {
                operator delete(*(v26 - 3));
              }

              v26 = (v26 - 40);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v30 = v25;
          operator delete(v27);
        }
      }
    }
  }
}

void sub_1D9D9B828(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      operator new();
    }

    sub_1D9D9AF54();
  }
}

void sub_1D9D9B94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v11)
  {
    v13 = (v10 + v11 - 48);
    v14 = -v11;
    do
    {
      v13 = sub_1D9DBFC94(v13) - 6;
      v14 += 48;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  sub_1D9D9B998(&a9);
  _Unwind_Resume(a1);
}

void ***sub_1D9D9B998(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v7 = *(v4 - 2);
          if (v7)
          {
            CFRelease(v7);
            *(v4 - 2) = 0;
          }

          v8 = *(v4 - 5);
          if (v8)
          {
            v9 = *(v4 - 4);
            v6 = *(v4 - 5);
            if (v9 != v8)
            {
              do
              {
                if (*(v9 - 1) < 0)
                {
                  operator delete(*(v9 - 24));
                }

                v9 -= 40;
              }

              while (v9 != v8);
              v6 = *(v4 - 5);
            }

            *(v4 - 4) = v8;
            operator delete(v6);
          }

          v4 -= 48;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

os_log_t sub_1D9D9BA6C()
{
  result = os_log_create("com.apple.CVNLP", "Default");
  qword_1ECB71C30 = result;
  return result;
}

id sub_1D9D9CCA8(id **a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v60 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(**a1, v3, v60, v4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_32;
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(**a1, v6, v60, v7);

  if (!v8)
  {
LABEL_32:
    obj = 0;
    v53 = 0;
    v57 = objc_msgSend_copy(0, v9, v10, v11);
    goto LABEL_33;
  }

  v61 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v8;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v63, v67, 16);
  if (v13)
  {
    v14 = *v64;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v64 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v63 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        v21 = v18;
        if (v18)
        {
          v22 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"replaceKey", v20);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = objc_msgSend_objectForKeyedSubscript_(v21, v23, @"replaceKey", v24);
          }

          else
          {
            v25 = 0;
          }

          v28 = objc_msgSend_objectForKeyedSubscript_(v21, v26, @"replaceWith", v27);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = objc_msgSend_objectForKeyedSubscript_(v21, v29, @"replaceWith", v30);
          }

          else
          {
            v31 = 0;
          }

          v34 = objc_msgSend_objectForKeyedSubscript_(v21, v32, @"replaceProb", v33);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = objc_msgSend_objectForKeyedSubscript_(v21, v35, @"replaceProb", v36);
          }

          else
          {
            v37 = 0;
          }

          v40 = objc_msgSend_objectForKeyedSubscript_(v21, v38, @"genderOption", v39);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43 = objc_msgSend_objectForKeyedSubscript_(v21, v41, @"genderOption", v42);
          }

          else
          {
            v43 = 0;
          }

          if (v25 && v31)
          {
            v44 = [CVNLPCaptionRuntimeReplacements alloc];
            objc_msgSend_doubleValue(v37, v45, v46, v47);
            v49 = objc_msgSend_initWithKey_value_prob_genderOption_(v44, v48, v25, v31, v43);
            objc_msgSend_addObject_(v61, v50, v49, v51);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v63, v67, 16);
    }

    while (v13);
  }

  v53 = v61;
  v57 = objc_msgSend_copy(v61, v54, v55, v56);
LABEL_33:
  v58 = v57;

  return v58;
}

uint64_t sub_1D9D9D270(uint64_t a1)
{
  if (u_isWhitespace(a1))
  {
    return 95;
  }

  result = 57344;
  if ((a1 - 188) >= 3 && (a1 - 48) >= 0xA && (a1 - 1632) >= 0xA && a1 != 8585 && (a1 & 0xFFFFFFF0) != 0x2150)
  {
    if (u_charType(a1) == 20)
    {
      return 57345;
    }

    else if (u_charType(a1) == 21)
    {
      return 57346;
    }

    else
    {
      result = 57347;
      if ((a1 > 0x3F || ((1 << a1) & 0x8C00502200000000) == 0) && ((a1 - 1548) > 0x13 || ((1 << (a1 - 12)) & 0x88001) == 0) && a1 != 1642)
      {
        v3 = u_charType(a1);
        result = 57348;
        if (a1 != 63743 && ((1 << v3) & 0x3FF80000) == 0)
        {
          v4 = 1 << u_charType(a1);
          result = a1;
          if ((v4 & 0x3E) != 0)
          {

            JUMPOUT(0x1DA741D80);
          }
        }
      }
    }
  }

  return result;
}

void sub_1D9D9DAB8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CVNLPDecodingLanguageModel;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1D9D9DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v27 = v25;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D9E010(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9D9E028(uint64_t a1, void *a2, int a3, void *a4, CFStringRef theString1, _BYTE *a6)
{
  if (CFStringCompare(theString1, *MEMORY[0x1E69AC040], 0) == kCFCompareEqualTo)
  {
    v21 = a4;
    v13 = objc_msgSend_localeIdentifier(v21, v10, v11, v12);
    v17 = objc_msgSend_localeIdentifier(v21, v14, v15, v16);
    isEqualToString = objc_msgSend_isEqualToString_(v13, v18, v17, v19);

    if (isEqualToString)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a6 = 1;
    }
  }
}

void sub_1D9D9E63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, const void *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_1D9D89420(&a29);
  if (*(v36 - 33) < 0)
  {
    operator delete(*(v36 - 56));

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D9E78C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1D9D9F5B4("/", 1, a1, a2, __p);
  if ((v15 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v7)
  {
    if ((v15 & 0x80u) == 0)
    {
      v8 = v15;
    }

    else
    {
      v8 = __p[1];
    }

    cf = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if ((v15 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    cf = 0;
    if ((v15 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p[0]);
    }
  }

  v9 = objc_msgSend_createBundle(*(a1 + 24), v7, v5, v6);
  v11 = objc_msgSend_pathForResource_ofType_(v9, v10, cf, 0);
  v12 = v11;
  if (!v11)
  {
    v11 = &stru_1F554FF38;
  }

  sub_1D9D87968(v11, a3);

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1D9D9E8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  sub_1D9D89420(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D9EB58(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1D9D9EFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v42 - 216), 8);

  _Block_object_dispose((v42 - 176), 8);
  v44 = *(v42 - 128);
  if (v44)
  {
    *(v42 - 120) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1D9D9F090(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1D9D9F0B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1D9D9F0CC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1D9D9F0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = objc_msgSend_initWithBytes_length_encoding_(v8, v9, a2, a3, 4);
  v14 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v11, v12, v13);
  v17 = objc_msgSend_stringByTrimmingCharactersInSet_(v10, v15, v14, v16);

  if (objc_msgSend_length(v17, v18, v19, v20))
  {
    v52 = 0;
    v21 = objc_opt_class();
    v53 = objc_msgSend__normalizedLMTokenIDForWord_withTokenID_sourceLanguageModel_outScore_(v21, v22, v17, a4, *(a1 + 32), &v52);
    v23 = *(a1 + 40);
    v24 = *(*(*(a1 + 64) + 8) + 24);
    v28 = objc_msgSend_length(v23, v25, v26, v27, v52);
    v30 = objc_msgSend_rangeOfString_options_range_(v23, v29, v17, 0, v24, v28 - *(*(*(a1 + 64) + 8) + 24));
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = *(*(a1 + 72) + 8);
      if (v30 >= *(v34 + 48))
      {
        *(*(*(a1 + 80) + 8) + 24) += *(v34 + 56);
        v35 = *(*(*(a1 + 88) + 8) + 24);
        v36 = v30;
        v37 = v31;
        v38 = objc_msgSend_count(*(a1 + 48), v31, v32, v33);
        v31 = v37;
        v40 = v38;
        v30 = v36;
        if (v35 < v40)
        {
          v41 = objc_msgSend_objectAtIndex_(*(a1 + 48), v37, *(*(*(a1 + 88) + 8) + 24), v39);
          v45 = objc_msgSend_rangeValue(v41, v42, v43, v44);
          v46 = *(*(a1 + 72) + 8);
          *(v46 + 48) = v45;
          *(v46 + 56) = v47;

          ++*(*(*(a1 + 88) + 8) + 24);
          v31 = v37;
          v30 = v36;
        }
      }

      *(*(*(a1 + 64) + 8) + 24) = &v31[v30];
      v48 = *(a1 + 56);
      v49 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v31, *(*(*(a1 + 80) + 8) + 24) + v30, v31);
      objc_msgSend_addObject_(v48, v50, v49, v51);

      sub_1D9D9F374(*(*(a1 + 96) + 8) + 48, &v53);
    }
  }
}

void sub_1D9D9F374(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_1D9D84AB0();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_1D9D9F5B4@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1D9D100A8(&v22);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = sub_1D9D12280(&v22, v11, *(a3 + 23));
  }

  else
  {
    v12 = sub_1D9D12280(&v22, v11, *(a3 + 8));
  }

  sub_1D9D12280(v12, a1, a2);
  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = sub_1D9D12280(&v22, v14, *(a4 + 23));
  }

  else
  {
    v15 = sub_1D9D12280(&v22, v14, *(a4 + 8));
  }

  sub_1D9D12280(v15, a1, a2);
  std::stringbuf::str();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v16 = &v19;
    if (v21 >= (v21 - 1))
    {
      v17 = v21 - 1;
    }

    else
    {
      v17 = v21;
    }

    if (v17 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_18;
    }

LABEL_31:
    sub_1D9D12168();
  }

  v16 = v19;
  if (v20 >= v20 - 1)
  {
    v17 = v20 - 1;
  }

  else
  {
    v17 = v20;
  }

  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_31;
  }

LABEL_18:
  if (v17 >= 0x17)
  {
    operator new();
  }

  *(a5 + 23) = v17;
  if (v17)
  {
    memmove(a5, v16, v17);
    *(a5 + v17) = 0;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *a5 = 0;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  operator delete(v19);
LABEL_21:
  v22 = *MEMORY[0x1E69E54E8];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v23 = MEMORY[0x1E69E5548] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v26);
}

void sub_1D9D9F828(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_1D9D28030(&a12, MEMORY[0x1E69E54E8]);
  MEMORY[0x1DA7411E0](va);
  _Unwind_Resume(a1);
}

BOOL sub_1D9D9F86C(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v2, v3, v4);
  objc_msgSend_rangeOfCharacterFromSet_(v1, v6, v5, v7);
  v11 = v10 == objc_msgSend_length(v1, v10, v8, v9);

  return v11;
}

BOOL CVNLPIsWordSeparatorForLexicon_0(void *a1)
{
  v3 = a1;
  if (qword_1EE0005D0 != -1)
  {
    dispatch_once(&qword_1EE0005D0, &unk_1F554F568);
  }

  objc_msgSend_rangeOfCharacterFromSet_(v3, v1, qword_1EE0005D8, v2);
  v7 = v6 == objc_msgSend_length(v3, v6, v4, v5);

  return v7;
}

uint64_t sub_1D9D9F984(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  qword_1EE0005D8 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @" -/", a4);

  return MEMORY[0x1EEE66BB8]();
}

BOOL sub_1D9D9F9CC(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_lowercaseLetterCharacterSet(MEMORY[0x1E696AB08], v2, v3, v4);
  objc_msgSend_rangeOfCharacterFromSet_(v1, v6, v5, v7);
  v11 = v10 == objc_msgSend_length(v1, v10, v8, v9);

  return v11;
}

BOOL sub_1D9D9FA5C(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_uppercaseLetterCharacterSet(MEMORY[0x1E696AB08], v2, v3, v4);
  objc_msgSend_rangeOfCharacterFromSet_(v1, v6, v5, v7);
  v11 = v10 == objc_msgSend_length(v1, v10, v8, v9);

  return v11;
}

BOOL sub_1D9D9FAEC(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v2, v3, v4);
  objc_msgSend_rangeOfCharacterFromSet_(v1, v6, v5, v7);
  v11 = v10 == objc_msgSend_length(v1, v10, v8, v9);

  return v11;
}

BOOL sub_1D9D9FB7C(void *a1)
{
  v3 = a1;
  if (qword_1EE0005E0 != -1)
  {
    dispatch_once(&qword_1EE0005E0, &unk_1F554F588);
  }

  objc_msgSend_rangeOfCharacterFromSet_(v3, v1, qword_1EE0005E8, v2);
  v7 = v6 == objc_msgSend_length(v3, v6, v4, v5);

  return v7;
}

uint64_t sub_1D9D9FC04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  qword_1EE0005E8 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"0123456789", a4);

  return MEMORY[0x1EEE66BB8]();
}

BOOL sub_1D9D9FC4C(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 0;
  for (i = objc_msgSend_length(v1, v4, v5, v6); ; i = objc_msgSend_length(v1, v13, v14, v15))
  {
    v11 = i;
    if (v2 >= i)
    {
      break;
    }

    v12 = objc_msgSend_characterAtIndex_(v1, v8, v2, v9);
    if ((v12 - 48) < 0xA)
    {
      v10 = v3;
    }

    else
    {
      v10 = 2;
      if (v12 != 32 && v12 != 45)
      {
        if ((v12 - 8208) >= 6)
        {
          v16.i16[0] = v12;
          v16.i16[1] = v12 & 0xFFDF;
          v17 = vdup_lane_s16(v16, 0);
          v17.i16[1] = v12 & 0xFFDF;
          if (vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v17, 0xFF08FF28FFBFFF40))))
          {
            if (v3 == 4)
            {
              break;
            }

            v10 = 3;
          }

          else if ((v12 - 1024) >= 0x130)
          {
            if ((v12 - 880) >= 0x90)
            {
              v10 = 6;
              if (((v12 + 21504) >> 10) >= 0xBu && (v12 & 0xFFE0) != 0xA960 && (v12 & 0xFF00) != 0x1100 && (v12 - 12592) >= 0x60u)
              {
                if ((v12 - 1632) >= 0xA)
                {
                  v10 = 0;
                }

                else
                {
                  v10 = 7;
                }
              }
            }

            else
            {
              v10 = 5;
            }
          }

          else
          {
            if (v3 == 3)
            {
              break;
            }

            v10 = 4;
          }
        }

        else
        {
          v10 = 2;
        }
      }
    }

    ++v2;
    v3 = v10;
  }

  return v2 < v11;
}

uint64_t sub_1D9D9FE00(uint64_t result, _BYTE *a2, int *a3, int16x4_t a4)
{
  if ((result - 48) >= 0xA)
  {
    v4 = 2;
    if (result != 32 && result != 45)
    {
      if ((result - 8208) >= 6)
      {
        a4.i16[0] = result;
        a4.i16[1] = result & 0xFFDF;
        v5 = vdup_lane_s16(a4, 0);
        v5.i16[1] = result & 0xFFDF;
        if (vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v5, 0xFF08FF28FFBFFF40))))
        {
          v4 = 3;
        }

        else if ((result - 1024) >= 0x130)
        {
          if ((result - 880) >= 0x90)
          {
            v4 = 6;
            if (((result + 21504) >> 10) >= 0xBu && (result & 0xFFE0) != 0xA960 && (result & 0xFF00) != 0x1100 && (result - 12592) >= 0x60u)
            {
              if ((result - 1632) >= 0xA)
              {
                v4 = 0;
              }

              else
              {
                v4 = 7;
              }
            }
          }

          else
          {
            v4 = 5;
          }
        }

        else
        {
          v4 = 4;
        }
      }

      else
      {
        v4 = 2;
      }
    }

    if ((*a2 & 1) == 0)
    {
      if ((v6 = *a3, v4 == 4) && v6 == 3 || v4 == 3 && v6 == 4)
      {
        *a2 = 1;
      }
    }
  }

  else
  {
    if ((*a2 & 1) == 0)
    {
      return result;
    }

    v4 = 1;
  }

  *a3 = v4;
  return result;
}

id sub_1D9D9FF48(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], v2, v3, v4);
  v9 = objc_msgSend_length(v1, v6, v7, v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1D9DA0058;
  v13[3] = &unk_1E858E0F8;
  v10 = v5;
  v14 = v10;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v1, v11, 0, v9, 2, v13);

  return v10;
}

void sub_1D9DA0058(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_length(v11, v3, v4, v5) == 1)
  {
    v8 = objc_msgSend_characterAtIndex_(v11, v6, 0, v7);

    if (v8 == 57427)
    {
      objc_msgSend_appendString_(*(a1 + 32), v9, @"<PS>", v10);
      goto LABEL_6;
    }
  }

  else
  {
  }

  objc_msgSend_appendString_(*(a1 + 32), v9, v11, v10);
LABEL_6:
}

id sub_1D9DA0144(void *a1, void *a2)
{
  v3 = a1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1D9DA0350;
  v26 = sub_1D9DA0360;
  v27 = &stru_1F554FF38;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1D9DA0350;
  v20 = sub_1D9DA0360;
  v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v10 = objc_msgSend_length(v3, v7, v8, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1D9DA0368;
  v14[3] = &unk_1E858E120;
  v14[4] = &v22;
  v14[5] = v15;
  v14[6] = &v16;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v3, v11, 0, v10, 2, v14);
  if (a2)
  {
    *a2 = v17[5];
  }

  v12 = v23[5];
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void sub_1D9DA0304(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DA0350(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9DA0368(void *a1, void *a2)
{
  v47 = a2;
  v5 = objc_msgSend_dataUsingEncoding_(v47, v3, 2617245952, v4);
  v6 = v5;
  v13 = objc_msgSend_bytes(v6, v7, v8, v9);
  v14 = 0;
  v15 = 0;
  v16 = &stru_1F554FF38;
  while (v14 < objc_msgSend_length(v5, v10, v11, v12) >> 2)
  {
    v17 = *(v13 + 4 * v14);
    v48 = v17;
    if (v17 >> 4 == 4064)
    {
      v15 = 1;
      ++v14;
    }

    else
    {
      if (v17 - 917760 < 0xF0)
      {
        v15 = 1;
      }

      else
      {
        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v20 = objc_msgSend_initWithBytes_length_encoding_(v18, v19, &v48, 4, 2617245952);
        v23 = objc_msgSend_stringByAppendingString_(v16, v21, v20, v22);

        v16 = v23;
      }

      ++v14;
    }
  }

  v24 = *(*(a1[4] + 8) + 40);
  if (v15)
  {
    v25 = objc_msgSend_stringByAppendingString_(v24, v10, v16, v12);
    v26 = *(a1[4] + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    v31 = objc_msgSend_length(v47, v28, v29, v30);
    *(*(a1[5] + 8) + 24) = v31 - objc_msgSend_length(v16, v32, v33, v34);
    v38 = objc_msgSend_length(*(*(a1[4] + 8) + 40), v35, v36, v37);
    v39 = *(*(a1[5] + 8) + 24);
    v40 = *(*(a1[6] + 8) + 40);
    v42 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v41, v38, v39);
    objc_msgSend_addObject_(v40, v43, v42, v44);
  }

  else
  {
    v45 = objc_msgSend_stringByAppendingString_(v24, v10, v47, v12);
    v46 = *(a1[4] + 8);
    v42 = *(v46 + 40);
    *(v46 + 40) = v45;
  }
}

id sub_1D9DA05EC(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v8 = objc_msgSend_characterAtIndex_(v5, v6, a2, v7);
  v18 = v8;
  if ((v8 & 0xFC00) != 0xD800)
  {
    v14 = 1;
    if (a2 >= 1 && (v8 & 0xFC00) == 0xDC00)
    {
      v19 = v8;
      v15 = objc_msgSend_characterAtIndex_(v5, v9, a2 - 1, 1);
      v18 = v15;
      v14 = (v15 & 0xFC00) == 0xD800 ? 2 : 1;
      if ((v15 & 0xFC00) == 0xD800)
      {
        --a2;
      }
    }

    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_16:
    *a3 = a2;
    a3[1] = v14;
    goto LABEL_17;
  }

  if (a2 + 1 < objc_msgSend_length(v5, v9, v10, v11))
  {
    v13 = objc_msgSend_characterAtIndex_(v5, v9, a2 + 1, v12);
    v19 = v13;
    if (v13 >> 10 == 55)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v14 = 1;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_17:
  v16 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v9, &v18, v14);

  return v16;
}

uint64_t sub_1D9DA0714(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 56);
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL) - 56;
  }

  else
  {
    v3 = 0;
  }

  sub_1D9DA5F10(v3);
  operator delete(*(a1 + 24));
  return a1;
}

uint64_t sub_1D9DA075C(uint64_t a1)
{
  *a1 = &unk_1F554F6F0;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_1D9DA07EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(a1 + 8) = 4092732;
  *(a1 + 31) = 3;
  strcpy((a1 + 32), "</s>");
  *(a1 + 55) = 4;
  strcpy((a1 + 56), "<unk>");
  *(a1 + 79) = 5;
  *a1 = &unk_1F554F5B8;
  *(a1 + 88) = a1 + 112;
  operator new();
}

void sub_1D9DA1E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 217) < 0)
  {
    operator delete(*(v52 - 240));
    if ((*(v52 - 153) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v52 - 153) & 0x80000000) == 0)
  {
LABEL_8:
    sub_1D9D54468(&a42);
    v54 = *(a20 + 176);
    *(a20 + 176) = 0;
    if (v54)
    {
      (*(*v54 + 8))(v54);
    }

    sub_1D9DA8428(*a15);
    sub_1D9DA0714(a20 + 80);
    sub_1D9DA075C(a20);
    _Unwind_Resume(a1);
  }

  operator delete(*(v52 - 176));
  goto LABEL_8;
}

void sub_1D9DA1F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 145) < 0)
  {
    operator delete(*(v38 - 168));
    if ((a38 & 0x80000000) == 0)
    {
LABEL_3:
      v39 = *(a20 + 176);
      *(a20 + 176) = 0;
      if (v39)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a33);
  v40 = *(a20 + 176);
  *(a20 + 176) = 0;
  if (v40)
  {
LABEL_4:
    JUMPOUT(0x1D9DA1F3CLL);
  }

LABEL_7:
  JUMPOUT(0x1D9DA1F60);
}

void sub_1D9DA1FB8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1D9DA20B0);
  }

  JUMPOUT(0x1D9DA1F7CLL);
}

void sub_1D9DA1FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  sub_1D9D54468(va);
  v36 = *(a20 + 176);
  *(a20 + 176) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  sub_1D9DA8428(*a15);
  sub_1D9DA0714(a20 + 80);
  sub_1D9DA075C(a20);
  _Unwind_Resume(a1);
}

void sub_1D9DA1FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void **a41)
{
  sub_1D9DA8628((v41 - 240));
  sub_1D9D54C6C(&a25);
  sub_1D9D54C6C(&a41);
  JUMPOUT(0x1D9DA20D4);
}

void sub_1D9DA1FE0(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    operator delete(v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x1D9DA1F7CLL);
}

void sub_1D9DA2010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void **a41)
{
  __cxa_free_exception(v41);
  sub_1D9D54C6C(&a25);
  sub_1D9D54C6C(&a41);
  JUMPOUT(0x1D9DA20D4);
}

void sub_1D9DA2028(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    operator delete(*v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x1D9DA1F7CLL);
}

void sub_1D9DA2048(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x1D9DA20A8);
  }

  JUMPOUT(0x1D9DA1F7CLL);
}

void sub_1D9DA2058(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2)
  {
    sub_1D9D3FB90(a1);
  }

  JUMPOUT(0x1D9DA1F7CLL);
}

BOOL sub_1D9DA20F8(uint64_t a1, std::string::value_type *a2, uint64_t a3)
{
  memset(&v10, 0, sizeof(v10));
  if (a3)
  {
    v4 = a3;
    do
    {
      std::string::push_back(&v10, *a2++);
      --v4;
    }

    while (v4);
    v6 = *(a1 + 48);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1D9D12B94(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
      v7 = sub_1D9DA7438(*(v6 - 8), &__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(__p.__r_.__value_.__l.__data_);
      v8 = *(*(a1 + 48) - 8);
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v8 != v7;
      }

LABEL_11:
      operator delete(v10.__r_.__value_.__l.__data_);
      return v8 != v7;
    }
  }

  else
  {
    v6 = *(a1 + 48);
  }

  __p = v10;
  v7 = sub_1D9DA7438(*(v6 - 8), &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v8 = *(*(a1 + 48) - 8);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }

  return v8 != v7;
}

void sub_1D9DA21EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1D9DA220C(uint64_t a1, std::string::value_type *a2, uint64_t a3)
{
  memset(&v9, 0, sizeof(v9));
  if (a3)
  {
    v4 = a3;
    do
    {
      std::string::push_back(&v9, *a2++);
      --v4;
    }

    while (v4);
    v6 = *(a1 + 48);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1D9D12B94(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
      v7 = sub_1D9DA7438(*(v6 - 8), &__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(a1 + 48);
  }

  __p = v9;
  v7 = sub_1D9DA7438(*(v6 - 8), &__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    operator delete(v9.__r_.__value_.__l.__data_);
    if (*(*(a1 + 48) - 8) != v7)
    {
      return (*(v7 + 6) << 32) | 1;
    }

    return 0;
  }

LABEL_11:
  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(*(a1 + 48) - 8) != v7)
  {
    return (*(v7 + 6) << 32) | 1;
  }

  return 0;
}

void sub_1D9DA232C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D3FB90(a1);
}

void *sub_1D9DA2348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19[19] = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 136) - 8);
  v5 = *(v4 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(*(a1 + 136) - 8);
  do
  {
    while (*(v5 - 32) < a2)
    {
      v5 = *(v5 + 16);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v6 = v5 - 56;
    v5 = *(v5 + 8);
  }

  while (v5);
LABEL_7:
  if (v6 == v4 || *(v6 + 24) > a2)
  {
LABEL_9:
    sub_1D9D100A8(&buf);
    sub_1D9D12280(&buf, "Unknown TokenID: ", 17);
    MEMORY[0x1DA741090](&buf, a2);
    std::stringbuf::str();
    *&buf = *MEMORY[0x1E69E54E8];
    *(&v17[-2].__locale_ + *(buf - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&buf + 1) = MEMORY[0x1E69E5548] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    *(&buf + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v17);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](v19);
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v7 = qword_1ECB71C30;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v14;
      if ((v15 & 0x80u) != 0)
      {
        v8 = v14[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v8;
      _os_log_error_impl(&dword_1D9D0A000, v7, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v10 = exception;
    v11 = v15;
    v12 = v14;
    if ((v15 & 0x80u) != 0)
    {
      v12 = v14[0];
      v11 = v14[1];
    }

    *&buf = v12;
    *(&buf + 1) = v11;
    *exception = &unk_1F554F760;
    sub_1D9DA75B8(exception + 1, &buf);
    __cxa_throw(v10, &unk_1F554F618, sub_1D9DA26A4);
  }

  return sub_1D9DA2718(a3, v4, a2);
}

void sub_1D9DA2640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D9DA26A4(uint64_t a1)
{
  *a1 = &unk_1F554F760;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  std::exception::~exception(a1);
}

void *sub_1D9DA2718(void *result, unint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = a2;
  do
  {
    while (*(v3 - 32) < a3)
    {
      v3 = *(v3 + 16);
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v4 = v3 - 56;
    v3 = *(v3 + 8);
  }

  while (v3);
LABEL_7:
  if (v4 == a2 || *(v4 + 24) > a3)
  {
LABEL_14:
    std::logic_error::logic_error(&v8, "bimap<>: invalid key");
    v8.__vftable = (MEMORY[0x1E69E55B8] + 16);
    sub_1D9DA77D4(&v8);
  }

  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = *(v4 + 8);

    return sub_1D9D12B94(result, v6, v7);
  }

  else
  {
    v5 = *v4;
    result[2] = *(v4 + 16);
    *result = v5;
  }

  return result;
}

unint64_t sub_1D9DA2810(uint64_t a1, char *__s, uint64_t a3)
{
  v56[20] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 160))
  {
LABEL_53:
    v28 = sub_1D9DA220C(a1 + 80, __s, a3);
    if (v28)
    {
      return HIDWORD(v28);
    }

    if ((*(a1 + 172) & 1) == 0)
    {
      sub_1D9D100A8(&__dst);
      sub_1D9D12280(&__dst, "Unknown Token: ", 15);
      sub_1D9D12280(&__dst, __s, a3);
      std::stringbuf::str();
      *&__dst = *MEMORY[0x1E69E54E8];
      *(&v53[-2].__locale_ + *(__dst - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      *(&__dst + 1) = MEMORY[0x1E69E5548] + 16;
      if (v55 < 0)
      {
        operator delete(__p);
      }

      *(&__dst + 1) = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v53);
      std::ostream::~ostream();
      MEMORY[0x1DA7411E0](v56);
      if (qword_1ECB71C28 != -1)
      {
        dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
      }

      v29 = qword_1ECB71C30;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = v50;
        if (v51 < 0)
        {
          v30 = v50[0];
        }

        LODWORD(__dst) = 136315138;
        *(&__dst + 4) = v30;
        _os_log_error_impl(&dword_1D9D0A000, v29, OS_LOG_TYPE_ERROR, "%s", &__dst, 0xCu);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v32 = exception;
      v33 = HIBYTE(v51);
      v34 = v50;
      if (v51 < 0)
      {
        v34 = v50[0];
        v33 = v50[1];
      }

      *&__dst = v34;
      *(&__dst + 1) = v33;
      *exception = &unk_1F554F760;
      sub_1D9DA75B8(exception + 1, &__dst);
      __cxa_throw(v32, &unk_1F554F618, sub_1D9DA26A4);
    }

    return *(a1 + 168);
  }

  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v53[0].__locale_) = v6;
  if (v6)
  {
    memmove(&__dst, __s, v6);
    *(&v53[-2].__locale_ + v7) = 0;
    v8 = a1 + 152;
    v9 = *(a1 + 152);
    locale_high = HIBYTE(v53[0].__locale_);
    if (!v9)
    {
      goto LABEL_51;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v8 = a1 + 152;
    v9 = *(a1 + 152);
    locale_high = HIBYTE(v53[0].__locale_);
    if (!v9)
    {
      goto LABEL_51;
    }
  }

  v47 = a3;
  if ((locale_high & 0x80u) == 0)
  {
    v11 = locale_high;
  }

  else
  {
    v11 = *(&__dst + 1);
  }

  if ((locale_high & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v13 = v8;
  do
  {
    v14 = *(v9 + 55);
    if (v14 >= 0)
    {
      v15 = *(v9 + 55);
    }

    else
    {
      v15 = *(v9 + 40);
    }

    if (v14 >= 0)
    {
      v16 = (v9 + 32);
    }

    else
    {
      v16 = *(v9 + 32);
    }

    if (v11 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }

    v18 = memcmp(v16, p_dst, v17);
    v19 = v15 < v11;
    if (v18)
    {
      v19 = v18 < 0;
    }

    v20 = !v19;
    if (v19)
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v13 = v9;
    }

    v9 = *(v9 + v21);
  }

  while (v9);
  if (v13 != v8)
  {
    v22 = *(v13 + 55);
    if (v22 >= 0)
    {
      v23 = *(v13 + 55);
    }

    else
    {
      v23 = *(v13 + 40);
    }

    if (v22 >= 0)
    {
      v24 = (v13 + 32);
    }

    else
    {
      v24 = *(v13 + 32);
    }

    if (v23 >= v11)
    {
      v25 = v11;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(p_dst, v24, v25);
    v27 = v11 < v23;
    if (v26)
    {
      v27 = v26 < 0;
    }

    if (!v27)
    {
      if ((locale_high & 0x80) != 0)
      {
        goto LABEL_52;
      }

LABEL_48:
      if (v13 == v8)
      {
        goto LABEL_53;
      }

      goto LABEL_49;
    }
  }

LABEL_51:
  v13 = v8;
  if ((locale_high & 0x80) == 0)
  {
    goto LABEL_48;
  }

LABEL_52:
  operator delete(__dst);
  if (v13 == v8)
  {
    goto LABEL_53;
  }

LABEL_49:
  if (*(v13 + 79) < 0)
  {
    sub_1D9D12B94(v50, *(v13 + 56), *(v13 + 64));
  }

  else
  {
    *v50 = *(v13 + 56);
    v51 = *(v13 + 72);
  }

  if (v51 >= 0)
  {
    v35 = v50;
  }

  else
  {
    v35 = v50[0];
  }

  if (v51 >= 0)
  {
    v36 = HIBYTE(v51);
  }

  else
  {
    v36 = v50[1];
  }

  v37 = sub_1D9DA220C(a1 + 80, v35, v36);
  if ((v37 & 1) == 0)
  {
    sub_1D9D100A8(&__dst);
    sub_1D9D12280(&__dst, "Special token ", 14);
    if (v51 >= 0)
    {
      v38 = v50;
    }

    else
    {
      v38 = v50[0];
    }

    if (v51 >= 0)
    {
      sub_1D9D12280(&__dst, v38, HIBYTE(v51), v47);
    }

    else
    {
      sub_1D9D12280(&__dst, v38, v50[1], v47);
    }

    sub_1D9D12280(&__dst, " not found in vocab!", 20);
    std::stringbuf::str();
    *&__dst = *MEMORY[0x1E69E54E8];
    *(&v53[-2].__locale_ + *(__dst - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&__dst + 1) = MEMORY[0x1E69E5548] + 16;
    if (v55 < 0)
    {
      operator delete(__p);
    }

    *(&__dst + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v53);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](v56);
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v39 = qword_1ECB71C30;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = v48;
      if ((v49 & 0x80u) != 0)
      {
        v40 = v48[0];
      }

      LODWORD(__dst) = 136315138;
      *(&__dst + 4) = v40;
      _os_log_error_impl(&dword_1D9D0A000, v39, OS_LOG_TYPE_ERROR, "%s", &__dst, 0xCu);
    }

    v41 = __cxa_allocate_exception(0x20uLL);
    v42 = v41;
    v43 = v49;
    v44 = v48;
    if ((v49 & 0x80u) != 0)
    {
      v44 = v48[0];
      v43 = v48[1];
    }

    *&__dst = v44;
    *(&__dst + 1) = v43;
    *v41 = &unk_1F554F760;
    sub_1D9DA75B8(v41 + 1, &__dst);
    __cxa_throw(v42, &unk_1F554F618, sub_1D9DA26A4);
  }

  v45 = HIDWORD(v37);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  return v45;
}

void sub_1D9DA2F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_1D9DA30F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA3110(void *a1)
{
  v1 = a1[22];
  (*(*a1 + 72))(&__p);
  (*(*v1 + 24))(v1, &__p);
  v2 = __p;
  if (__p)
  {
    v3 = v7;
    v4 = __p;
    if (v7 != __p)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = __p;
    }

    v7 = v2;
    operator delete(v4);
  }
}

void sub_1D9DA31DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA31F0(uint64_t a1, char *__s, int64_t a3, int a4)
{
  v7 = (a1 + 8);
  v8 = *(a1 + 31);
  if (v8 < 0)
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (!v8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = (a1 + 8);
    if (!*(a1 + 31))
    {
      goto LABEL_25;
    }
  }

  if (a3 >= v8)
  {
    v14 = &__s[a3];
    v15 = *v9;
    v16 = a3;
    v17 = __s;
    while (1)
    {
      v18 = v16 - v8;
      if (v18 == -1)
      {
        goto LABEL_6;
      }

      v19 = memchr(v17, v15, v18 + 1);
      if (!v19)
      {
        goto LABEL_6;
      }

      v20 = v19;
      if (!memcmp(v19, v9, v8))
      {
        break;
      }

      v17 = v20 + 1;
      v16 = v14 - (v20 + 1);
      if (v16 < v8)
      {
        goto LABEL_6;
      }
    }

    if (v20 != v14 && __s == v20)
    {
LABEL_25:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1D9DA33FC(exception);
      __cxa_throw(exception, off_1E858DD48, MEMORY[0x1E69E5298]);
    }
  }

LABEL_6:
  (*(**(a1 + 176) + 16))(&__p);
  if (a4)
  {
    sub_1D9DA3438(&__p, __p, v7);
  }

  (*(*a1 + 80))(a1, &__p);
  v10 = __p;
  if (__p)
  {
    v11 = v23;
    v12 = __p;
    if (v23 != __p)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = __p;
    }

    v23 = v10;
    operator delete(v12);
  }
}

void sub_1D9DA33C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA33E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

std::logic_error *sub_1D9DA33FC(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "Input text should not contain BOS token!");
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

void sub_1D9DA3438(void *a1, std::string *this, std::string *a3)
{
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v17 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D9D84AB0();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v23 = this - v16;
    v24 = 8 * ((this - v16) >> 3);
    v32 = v24;
    v33 = v24;
    if (!(0xAAAAAAAAAAAAAAABLL * ((this - v16) >> 3)))
    {
      if (v23 < 1)
      {
        operator new();
      }

      v24 -= 24 * ((1 - 0x5555555555555555 * (v23 >> 3)) >> 1);
      v32 = v24;
      v33 = v24;
    }

    if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1D9D12B94(v24, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
      v24 = v32;
      v25 = v33;
    }

    else
    {
      *v24 = *&a3->__r_.__value_.__l.__data_;
      *(v24 + 16) = *(&a3->__r_.__value_.__l + 2);
      v25 = v24;
    }

    v26 = v25 + 24;
    memcpy((v25 + 24), this, a1[1] - this);
    v27 = *a1;
    v28 = v26 + a1[1] - this;
    a1[1] = this;
    v29 = (this - v27);
    v30 = (v24 - (this - v27));
    memcpy(v30, v27, v29);
    v31 = *a1;
    *a1 = v30;
    a1[1] = v28;
    a1[2] = 0;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else if (this == v7)
  {
    if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1D9D12B94(a1[1], a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = *&a3->__r_.__value_.__l.__data_;
      v7->__r_.__value_.__r.__words[2] = a3->__r_.__value_.__r.__words[2];
      *&v7->__r_.__value_.__l.__data_ = v22;
    }

    a1[1] = v7 + 1;
  }

  else
  {
    v8 = v7 - 1;
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      v9 = &v7[1];
      v10 = *&v8->__r_.__value_.__l.__data_;
      v7->__r_.__value_.__r.__words[2] = v7[-1].__r_.__value_.__r.__words[2];
      *&v7->__r_.__value_.__l.__data_ = v10;
      v7[-1].__r_.__value_.__l.__size_ = 0;
      v7[-1].__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
    }

    a1[1] = v9;
    if (v7 != &this[1])
    {
      v11 = 0;
      v12 = (this - v7 + 24);
      do
      {
        v14 = &v11[v7];
        v15 = &v11[v7 - 24];
        if (v11[v7 - 1] < 0)
        {
          operator delete(*v15);
        }

        v11 -= 24;
        v13 = *&v14[-2].__r_.__value_.__l.__data_;
        *(v15 + 16) = *(&v14[-2].__r_.__value_.__l + 2);
        *v15 = v13;
        *(&v14[-2].__r_.__value_.__s + 23) = 0;
        v14[-2].__r_.__value_.__s.__data_[0] = 0;
      }

      while (v12 != v11);
      v9 = a1[1];
    }

    v20 = v9 <= a3 || this > a3;
    v21 = 1;
    if (v20)
    {
      v21 = 0;
    }

    std::string::operator=(this, &a3[v21]);
  }
}

void sub_1D9DA375C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D73268(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA3770(char *__s@<X1>, uint64_t a2@<X0>, int64_t a3@<X2>, int a4@<W3>, std::string **a5@<X8>)
{
  v9 = (a2 + 8);
  v10 = *(a2 + 31);
  if (v10 < 0)
  {
    v11 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a2 + 8);
    if (!*(a2 + 31))
    {
      goto LABEL_17;
    }
  }

  if (a3 >= v10)
  {
    v12 = &__s[a3];
    v13 = *v11;
    v14 = a3;
    v15 = __s;
    while (1)
    {
      v16 = v14 - v10;
      if (v16 == -1)
      {
        goto LABEL_6;
      }

      v17 = memchr(v15, v13, v16 + 1);
      if (!v17)
      {
        goto LABEL_6;
      }

      v18 = v17;
      if (!memcmp(v17, v11, v10))
      {
        break;
      }

      v15 = v18 + 1;
      v14 = v12 - (v18 + 1);
      if (v14 < v10)
      {
        goto LABEL_6;
      }
    }

    if (v18 != v12 && __s == v18)
    {
LABEL_17:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1D9DA33FC(exception);
      __cxa_throw(exception, off_1E858DD48, MEMORY[0x1E69E5298]);
    }
  }

LABEL_6:
  (*(**(a2 + 176) + 16))(*(a2 + 176), __s, a3);
  if (a4)
  {
    sub_1D9DA3438(a5, *a5, v9);
  }
}

uint64_t sub_1D9DA38F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 31) = 3;
  *(a1 + 8) = 4092732;
  *(a1 + 55) = 4;
  strcpy((a1 + 32), "</s>");
  *(a1 + 79) = 5;
  strcpy((a1 + 56), "<unk>");
  *a1 = &unk_1F554F640;
  sub_1D9D18694(a1 + 80);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_1D9D18BD4(a1 + 80, v5, v6);
  if (v12.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D3F79C(&v12, v10);
    if (v11 >= 0)
    {
      v9 = v10;
    }

    else
    {
      v9 = v10[0];
    }

    std::runtime_error::runtime_error(exception, v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9D3F478(&v12);
  return a1;
}

void sub_1D9DA3A28(_Unwind_Exception *a1)
{
  sub_1D9D18834(v1 + 80);
  sub_1D9DA075C(v1);
  _Unwind_Resume(a1);
}

void sub_1D9DA3A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_1D9D3F478(&a15);
      sub_1D9D18834(v15 + 80);
      sub_1D9DA075C(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t sub_1D9DA3AA8(uint64_t a1)
{
  *a1 = &unk_1F554F640;
  sub_1D9D18834(a1 + 80);
  *a1 = &unk_1F554F6F0;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_1D9DA3B58(uint64_t a1)
{
  *a1 = &unk_1F554F640;
  sub_1D9D18834(a1 + 80);
  *a1 = &unk_1F554F6F0;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

void *sub_1D9DA3C08@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = a2;
  if (((*a1)[11])(a1) <= a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_1D9DA3DAC(v12, &v14);
    if ((v13 & 0x80u) == 0)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v11 = v13;
    }

    else
    {
      v11 = v12[1];
    }

    sub_1D9DA7550(exception, v10, v11);
    __cxa_throw(exception, &unk_1F554F618, sub_1D9DA26A4);
  }

  result = sub_1D9D23384(a1 + 10, a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v7;
  if (v7)
  {
    result = memmove(a3, result, v7);
    *(a3 + v8) = 0;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_1D9DA3D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (v15)
    {
LABEL_6:
      __cxa_free_exception(v14);
      _Unwind_Resume(a1);
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DA3DAC(void *a1, unsigned int *a2)
{
  sub_1D9D100A8(&v4);
  MEMORY[0x1DA741090](&v4, *a2);
  std::stringbuf::str();
  v4 = *MEMORY[0x1E69E54E8];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v8);
}

void sub_1D9DA3EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA3F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DA3F24(uint64_t a1, _BYTE *a2, int64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  memset(&v35, 0, sizeof(v35));
  if (a3)
  {
    v4 = a3;
    v6 = 0;
    v7 = &a2[a3];
    do
    {
      std::string::push_back(&v35, a2[v6++]);
    }

    while (v4 != v6);
    if (v4 >= 1)
    {
      v8 = a2;
      do
      {
        v9 = memchr(v8, 60, v4);
        if (!v9)
        {
          break;
        }

        if (*v9 == 60)
        {
          if (v9 == v7 || a2 != v9 || *(v7 - 1) != 62)
          {
            break;
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = &v35;
          }

          else
          {
            v10 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          v12 = sub_1D9D231BC((a1 + 80), v10, size);
          goto LABEL_41;
        }

        v8 = v9 + 1;
        v4 = v7 - v8;
      }

      while (v7 - v8 >= 1);
    }
  }

  __p = 0;
  v33 = 0;
  v34 = 0;
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v35;
  }

  else
  {
    v13 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v35.__r_.__value_.__l.__size_;
  }

  sub_1D9D1C36C(a1 + 80, v13, v14, &__p, &v31);
  if (v31.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D3F79C(&v31, buf);
    if (v39 >= 0)
    {
      v28 = buf;
    }

    else
    {
      v28 = *buf;
    }

    std::runtime_error::runtime_error(exception, v28);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9D3F478(&v31);
  v15 = __p;
  v16 = v33 - __p;
  if (v33 - __p == 8)
  {
    v17 = *(a1 + 31);
    if (v17 < 0)
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
    }

    else
    {
      v18 = a1 + 8;
    }

    v19 = *__p;
    if (v19 == (*(*a1 + 40))(a1, v18, v17))
    {
      v20 = __p;
      v15 = (__p + 4);
LABEL_35:
      v12 = *v15;
LABEL_40:
      v33 = v20;
      operator delete(v20);
      goto LABEL_41;
    }

    v15 = __p;
    v16 = v33 - __p;
  }

  v20 = v15;
  if (v16 == 4)
  {
    goto LABEL_35;
  }

  if (qword_1ECB71C28 != -1)
  {
    dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
  }

  v21 = qword_1ECB71C30;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v35;
    }

    else
    {
      v23 = v35.__r_.__value_.__r.__words[0];
    }

    v25 = __p;
    v24 = v33;
    sub_1D9D94D70(v29, " ");
    sub_1D9DA434C(&v31, &__p, v29);
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v31;
    }

    else
    {
      v26 = v31.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v23;
    v37 = 2048;
    v38 = (v24 - v25) >> 2;
    v39 = 2080;
    v40 = v26;
    _os_log_error_impl(&dword_1D9D0A000, v21, OS_LOG_TYPE_ERROR, "Expected token=%s to get converted into single TokenID, but got %zu tokenIDs: %s. Returning UNK TokenID as fallback.", buf, 0x20u);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  v12 = sub_1D9D231BC((a1 + 80), "<unk>", 5);
  v20 = __p;
  if (__p)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_1D9DA42AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9DA434C(void *a1, unsigned int **a2, uint64_t a3)
{
  sub_1D9D100A8(&v18);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  if (v8 == 1)
  {
    MEMORY[0x1DA741080](&v18, *v6);
    std::stringbuf::str();
    goto LABEL_24;
  }

  if (!v8)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    goto LABEL_24;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v6 != v7)
  {
    if (v9)
    {
      do
      {
        MEMORY[0x1DA741080](&v18, *v6);
        v10 = strlen(v9);
        sub_1D9D12280(&v18, v9, v10);
        ++v6;
      }

      while (v6 != v7);
    }

    else
    {
      do
      {
        MEMORY[0x1DA741080](&v18, *v6++);
      }

      while (v6 != v7);
    }
  }

  v11 = v16;
  std::stringbuf::str();
  v12 = v17;
  v13 = *(a3 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 8);
  }

  if ((v17 & 0x80u) != 0)
  {
    v12 = v16[1];
    v11 = v16[0];
  }

  if (v12 >= v12 - v13)
  {
    v14 = v12 - v13;
  }

  else
  {
    v14 = v12;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v14;
  if (v14)
  {
    memmove(a1, v11, v14);
    *(a1 + v14) = 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *a1 = 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  operator delete(v16[0]);
LABEL_24:
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v22);
}

void sub_1D9DA4668(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  a2[1] = 0;
  v2 = a2 + 1;
  a2[2] = 0;
  *a2 = (a2 + 1);
  v3 = (*(*a1 + 88))(a1);
  v25 = v3 << 32;
  v26 = 1;
  v21 = v3;
  if (v3)
  {
    v4 = 0;
    do
    {
      (*(*a1 + 48))(__p);
      v5 = *v2;
      if (!*v2)
      {
LABEL_28:
        operator new();
      }

      v6 = v24;
      if ((v24 & 0x80u) == 0)
      {
        v7 = v24;
      }

      else
      {
        v7 = __p[1];
      }

      if ((v24 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      while (1)
      {
        while (1)
        {
          v9 = v5;
          v12 = v5[4];
          v10 = v5 + 4;
          v11 = v12;
          v13 = *(v10 + 23);
          if (v13 >= 0)
          {
            v14 = *(v10 + 23);
          }

          else
          {
            v14 = v10[1];
          }

          if (v13 >= 0)
          {
            v15 = v10;
          }

          else
          {
            v15 = v11;
          }

          if (v14 >= v7)
          {
            v16 = v7;
          }

          else
          {
            v16 = v14;
          }

          v17 = memcmp(v8, v15, v16);
          v18 = v7 < v14;
          if (v17)
          {
            v18 = v17 < 0;
          }

          if (!v18)
          {
            break;
          }

          v5 = *v9;
          if (!*v9)
          {
            goto LABEL_28;
          }
        }

        v19 = memcmp(v15, v8, v16);
        v20 = v14 < v7;
        if (v19)
        {
          v20 = v19 < 0;
        }

        if (!v20)
        {
          break;
        }

        v5 = v9[1];
        if (!v5)
        {
          goto LABEL_28;
        }
      }

      *(v9 + 14) = v4;
      if ((v6 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }

      ++v4;
    }

    while (v4 != v21);
  }
}

void sub_1D9DA48BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1D9D9AC58(v17, *(v17 + 8));
    _Unwind_Resume(a1);
  }

  sub_1D9D9AC58(v17, *(v17 + 8));
  _Unwind_Resume(a1);
}

__n128 sub_1D9DA48FC@<Q0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  a2[1] = 0;
  v3 = a2 + 1;
  a2[2] = 0;
  *a2 = (a2 + 1);
  v4 = (*(*a1 + 88))(a1);
  v13 = v4 << 32;
  v14 = 1;
  v6 = v4;
  if (v4)
  {
    v7 = 0;
    do
    {
      (*(*a1 + 48))(&v11, a1, v7);
      v8 = *v3;
      if (!*v3)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = *(v8 + 8);
          if (v7 >= v10)
          {
            break;
          }

          v8 = *v9;
          if (!*v9)
          {
            goto LABEL_10;
          }
        }

        if (v10 >= v7)
        {
          break;
        }

        v8 = v9[1];
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      if (*(v9 + 63) < 0)
      {
        operator delete(v9[5]);
      }

      result = v11;
      *(v9 + 5) = v11;
      v9[7] = v12;
      v7 = (v7 + 1);
    }

    while (v7 != v6);
  }

  return result;
}

void sub_1D9DA4AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1D9D9ABD4(v15, *(v15 + 8));
    _Unwind_Resume(a1);
  }

  sub_1D9D9ABD4(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void sub_1D9DA4B08(std::string::value_type *__s@<X1>, uint64_t a2@<X0>, int64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v6 = a3;
  v7 = __s;
  v10 = (a2 + 8);
  v11 = *(a2 + 31);
  v49 = a2 + 8;
  if (v11 < 0)
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
  }

  if (!v11)
  {
    goto LABEL_30;
  }

  if (a3 >= v11)
  {
    v15 = &__s[a3];
    v16 = *v10;
    v17 = a3;
    v18 = __s;
    while (1)
    {
      v19 = v17 - v11;
      if (v19 == -1)
      {
        goto LABEL_5;
      }

      v20 = memchr(v18, v16, v19 + 1);
      if (!v20)
      {
        goto LABEL_5;
      }

      v21 = v20;
      if (!memcmp(v20, v10, v11))
      {
        break;
      }

      v18 = v21 + 1;
      v17 = v15 - (v21 + 1);
      if (v17 < v11)
      {
        goto LABEL_5;
      }
    }

    if (v21 != v15 && v7 == v21)
    {
LABEL_30:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1D9DA33FC(exception);
      __cxa_throw(exception, off_1E858DD48, MEMORY[0x1E69E5298]);
    }
  }

LABEL_5:
  *&v51.__r_.__value_.__r.__words[1] = 0uLL;
  v52 = 0;
  memset(&v50, 0, sizeof(v50));
  if (v6)
  {
    do
    {
      std::string::push_back(&v50, *v7++);
      --v6;
    }

    while (v6);
    v12 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    size = v50.__r_.__value_.__l.__size_;
    v14 = v50.__r_.__value_.__r.__words[0];
  }

  else
  {
    size = 0;
    v14 = 0;
    v12 = 0;
  }

  if ((v12 & 0x80u) == 0)
  {
    v22 = &v50;
  }

  else
  {
    v22 = v14;
  }

  if ((v12 & 0x80u) == 0)
  {
    v23 = v12;
  }

  else
  {
    v23 = size;
  }

  sub_1D9D1C36C(a2 + 80, v22, v23, &v51.__r_.__value_.__l.__size_, &v51);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v51.__r_.__value_.__r.__words[0])
  {
    v47 = __cxa_allocate_exception(0x10uLL);
    sub_1D9D3F79C(&v51, &v50);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v50;
    }

    else
    {
      v48 = v50.__r_.__value_.__r.__words[0];
    }

    std::runtime_error::runtime_error(v47, v48);
    __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9D3F478(&v51);
  if (a4)
  {
    v24 = v51.__r_.__value_.__l.__size_;
    if (v51.__r_.__value_.__l.__size_ != v51.__r_.__value_.__r.__words[2])
    {
      v25 = *(a2 + 31);
      if (v25 < 0)
      {
        v26 = *(a2 + 8);
        v25 = *(a2 + 16);
      }

      else
      {
        v26 = v49;
      }

      v28 = *v51.__r_.__value_.__l.__size_;
      if (v28 == (*(*a2 + 40))(a2, v26, v25))
      {
        goto LABEL_65;
      }

      v24 = v51.__r_.__value_.__l.__size_;
    }

    v29 = *(a2 + 31);
    if (v29 < 0)
    {
      v30 = *(a2 + 8);
      v29 = *(a2 + 16);
    }

    else
    {
      v30 = v49;
    }

    v31 = (*(*a2 + 40))(a2, v30, v29);
    v32 = v31;
    v33 = v51.__r_.__value_.__r.__words[2];
    if (v51.__r_.__value_.__r.__words[2] < v52)
    {
      if (v24 == v51.__r_.__value_.__r.__words[2])
      {
        *v51.__r_.__value_.__r.__words[2] = v31;
        v51.__r_.__value_.__r.__words[2] = (v33 + 4);
        goto LABEL_65;
      }

      v34 = v24 + 4;
      if (v51.__r_.__value_.__r.__words[2] < 4)
      {
        if (v51.__r_.__value_.__r.__words[2] == v34)
        {
LABEL_57:
          *v24 = v32;
          goto LABEL_65;
        }
      }

      else
      {
        *v51.__r_.__value_.__r.__words[2] = *(v51.__r_.__value_.__r.__words[2] - 4);
        v51.__r_.__value_.__r.__words[2] = (v33 + 4);
        if (v33 == v34)
        {
          goto LABEL_57;
        }
      }

      memmove(v24 + 4, v24, v33 - v34);
      goto LABEL_57;
    }

    v35 = ((v51.__r_.__value_.__r.__words[2] - v51.__r_.__value_.__l.__size_) >> 2) + 1;
    if (v35 >> 62)
    {
      sub_1D9D84AB0();
    }

    v36 = v52 - v51.__r_.__value_.__l.__size_;
    if ((v52 - v51.__r_.__value_.__l.__size_) >> 1 > v35)
    {
      v35 = v36 >> 1;
    }

    if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v37 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      if (!(v37 >> 62))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v38 = &v24[-v51.__r_.__value_.__l.__size_];
    v39 = &v24[-v51.__r_.__value_.__l.__size_] >> 2;
    v40 = (4 * v39);
    if (!v39)
    {
      if (v38 < 1)
      {
        v41 = v38 >> 1;
        if (v51.__r_.__value_.__l.__size_ == v24)
        {
          v42 = 1;
        }

        else
        {
          v42 = v41;
        }

        if (!(v42 >> 62))
        {
          operator new();
        }

        sub_1D9D10E9C();
      }

      v40 -= ((v38 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL;
    }

    *v40 = v31;
    memcpy(v40 + 4, v24, v51.__r_.__value_.__r.__words[2] - v24);
    v43 = &v40[v51.__r_.__value_.__r.__words[2] - v24 + 4];
    v51.__r_.__value_.__r.__words[2] = v24;
    v44 = (v40 - &v24[-v51.__r_.__value_.__l.__size_]);
    memcpy(v44, v51.__r_.__value_.__l.__size_, &v24[-v51.__r_.__value_.__l.__size_]);
    v45 = v51.__r_.__value_.__l.__size_;
    v51.__r_.__value_.__l.__size_ = v44;
    v51.__r_.__value_.__r.__words[2] = v43;
    v52 = 0;
    if (v45)
    {
      operator delete(v45);
    }
  }

LABEL_65:
  v46 = *&v51.__r_.__value_.__r.__words[1];
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if (*(&v46 + 1) != v46)
  {
    if (((*(&v46 + 1) - v46) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  if (v46)
  {
    v51.__r_.__value_.__r.__words[2] = v46;
    operator delete(v46);
  }
}

void sub_1D9DA505C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (v18)
  {
    operator delete(v18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9DA50FC@<X0>(uint64_t a1@<X0>, char **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  v4 = a2[1];
  v10 = 0;
  v11 = 0;
  __p = 0;
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  sub_1D9D1CAA4(a1 + 80, &__p, a3, &v12);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v12.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D3F79C(&v12, &__p);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    std::runtime_error::runtime_error(exception, p_p);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_1D9D3F478(&v12);
}

void sub_1D9DA52C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
    if ((*(v15 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v15 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9DA5354@<X0>(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  memset(&__p, 0, sizeof(__p));
  if (a3)
  {
    v6 = a3;
    do
    {
      std::string::push_back(&__p, *a2++);
      --v6;
    }

    while (v6);
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    size = 0;
    v10 = 0;
    v8 = 0;
  }

  if ((v8 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v10;
  }

  if ((v8 & 0x80u) == 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = size;
  }

  sub_1D9D1BFF8(a1 + 80, p_p, v12, a4, &v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v17.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D3F79C(&v17, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p.__r_.__value_.__r.__words[0];
    }

    std::runtime_error::runtime_error(exception, v15);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_1D9D3F478(&v17);
}

void sub_1D9DA547C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1D9D54C6C(v15);
    _Unwind_Resume(a1);
  }

  sub_1D9D54C6C(v15);
  _Unwind_Resume(a1);
}

void sub_1D9DA54F0(uint64_t a1)
{
  sub_1D9DA8170(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9DA5528(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v2 = *(*(a1 + 128) - 8);
  a2[1] = 0;
  v3 = a2 + 1;
  a2[2] = 0;
  *a2 = (a2 + 1);
  v4 = v2[5];
  if (v4)
  {
    v5 = (v4 - 32);
  }

  else
  {
    v5 = 0;
  }

  v29 = v2;
  if (v5 != v2)
  {
    do
    {
      if (*(v5 + 23) < 0)
      {
        sub_1D9D12B94(__p, *v5, v5[1]);
      }

      else
      {
        v11 = *v5;
        v31 = v5[2];
        *__p = v11;
      }

      v32 = *(v5 + 6);
      v12 = *v3;
      if (!*v3)
      {
LABEL_41:
        operator new();
      }

      v13 = HIBYTE(v31);
      if (v31 >= 0)
      {
        v14 = HIBYTE(v31);
      }

      else
      {
        v14 = __p[1];
      }

      if (v31 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      while (1)
      {
        while (1)
        {
          v16 = v12;
          v19 = v12[4];
          v17 = v12 + 4;
          v18 = v19;
          v20 = *(v17 + 23);
          if (v20 >= 0)
          {
            v21 = *(v17 + 23);
          }

          else
          {
            v21 = v17[1];
          }

          if (v20 >= 0)
          {
            v22 = v17;
          }

          else
          {
            v22 = v18;
          }

          if (v21 >= v14)
          {
            v23 = v14;
          }

          else
          {
            v23 = v21;
          }

          v24 = memcmp(v15, v22, v23);
          v25 = v14 < v21;
          if (v24)
          {
            v25 = v24 < 0;
          }

          if (!v25)
          {
            break;
          }

          v12 = *v16;
          if (!*v16)
          {
            goto LABEL_41;
          }
        }

        v26 = memcmp(v22, v15, v23);
        v27 = v21 < v14;
        if (v26)
        {
          v27 = v26 < 0;
        }

        if (!v27)
        {
          break;
        }

        v12 = v16[1];
        if (!v12)
        {
          goto LABEL_41;
        }
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
        v28 = v5[6];
        if (!v28)
        {
LABEL_6:
          v7 = v5[4];
          v6 = v5 + 4;
          v8 = (v7 & 0xFFFFFFFFFFFFFFFELL);
          if (v6 == *((v7 & 0xFFFFFFFFFFFFFFFELL) + 16))
          {
            do
            {
              v6 = v8;
              v8 = (*v8 & 0xFFFFFFFFFFFFFFFELL);
            }

            while (v6 == v8[2]);
            v9 = v6[2];
          }

          else
          {
            v9 = 0;
          }

          if (v9 == v8)
          {
            v10 = v6;
          }

          else
          {
            v10 = v8;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v28 = v5[6];
        if (!v28)
        {
          goto LABEL_6;
        }
      }

      do
      {
        v10 = v28;
        v28 = v28[1];
      }

      while (v28);
LABEL_11:
      v5 = v10 - 4;
    }

    while (v10 - 4 != v29);
  }
}

void sub_1D9DA57A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1D9D912F0(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D9AC58(v19, *(v19 + 8));
  _Unwind_Resume(a1);
}

void sub_1D9DA57F8(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v2 = *(*(a1 + 128) - 8);
  a2[1] = 0;
  v3 = a2 + 1;
  a2[2] = 0;
  *a2 = (a2 + 1);
  v4 = v2[5];
  if (v4)
  {
    v5 = (v4 - 32);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != v2)
  {
    do
    {
      if (*(v5 + 23) < 0)
      {
        sub_1D9D12B94(__p, *v5, v5[1]);
      }

      else
      {
        v11 = *v5;
        v18 = v5[2];
        *__p = v11;
      }

      v12 = *(v5 + 6);
      v19 = v12;
      v13 = *v3;
      if (!*v3)
      {
LABEL_23:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 8);
          if (v15 <= v12)
          {
            break;
          }

          v13 = *v14;
          if (!*v14)
          {
            goto LABEL_23;
          }
        }

        if (v15 >= v12)
        {
          break;
        }

        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
        v16 = v5[6];
        if (!v16)
        {
LABEL_6:
          v7 = v5[4];
          v6 = v5 + 4;
          v8 = (v7 & 0xFFFFFFFFFFFFFFFELL);
          if (v6 == *((v7 & 0xFFFFFFFFFFFFFFFELL) + 16))
          {
            do
            {
              v6 = v8;
              v8 = (*v8 & 0xFFFFFFFFFFFFFFFELL);
            }

            while (v6 == v8[2]);
            v9 = v6[2];
          }

          else
          {
            v9 = 0;
          }

          if (v9 == v8)
          {
            v10 = v6;
          }

          else
          {
            v10 = v8;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v16 = v5[6];
        if (!v16)
        {
          goto LABEL_6;
        }
      }

      do
      {
        v10 = v16;
        v16 = v16[1];
      }

      while (v16);
LABEL_11:
      v5 = v10 - 4;
    }

    while (v10 - 4 != v2);
  }
}

void sub_1D9DA59E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1D9DA8278(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D9ABD4(v17, *(v17 + 8));
  _Unwind_Resume(a1);
}

void sub_1D9DA5A38(void *a2@<X1>, void *a3@<X8>)
{
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_1D9DA5B44(_Unwind_Exception *a1)
{
  sub_1D9D54C6C(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_1D9DA5B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D54C6C(v15);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void sub_1D9DA5B8C(uint64_t a1@<X0>, void *a2@<X8>, __int128 **a3@<X1>)
{
  sub_1D9DA82E0(&v21, a3);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = v21;
  v6 = v22;
  if (v21 != v22)
  {
    v7 = 0;
    while (1)
    {
      if (*(v5 + 23) < 0)
      {
        sub_1D9D12B94(__p, *v5, v5[1]);
      }

      else
      {
        v8 = *v5;
        v24 = v5[2];
        *__p = v8;
      }

      v9 = SHIBYTE(v24) >= 0 ? __p : __p[0];
      v10 = SHIBYTE(v24) >= 0 ? HIBYTE(v24) : __p[1];
      v11 = (*(*a1 + 40))(a1, v9, v10);
      v12 = a2[2];
      if (v7 >= v12)
      {
        break;
      }

      *v7 = v11;
      v7 += 4;
      a2[1] = v7;
      if (SHIBYTE(v24) < 0)
      {
        goto LABEL_26;
      }

LABEL_3:
      v5 += 3;
      if (v5 == v6)
      {
        *a2 = 0;
        v5 = v21;
        goto LABEL_28;
      }
    }

    v13 = v7;
    v14 = v7 >> 2;
    v15 = v14 + 1;
    if ((v14 + 1) >> 62)
    {
      *a2 = 0;
      sub_1D9D84AB0();
    }

    if (v12 >> 1 > v15)
    {
      v15 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v16 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      if (!(v16 >> 62))
      {
        operator new();
      }

      *a2 = 0;
      sub_1D9D10E9C();
    }

    v17 = (4 * v14);
    *v17 = v11;
    v7 = (v17 + 1);
    memcpy(0, 0, v13);
    a2[1] = v7;
    a2[2] = 0;
    a2[1] = v7;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    operator delete(__p[0]);
    goto LABEL_3;
  }

LABEL_28:
  if (v5)
  {
    v18 = v22;
    v19 = v5;
    if (v22 != v5)
    {
      do
      {
        v20 = *(v18 - 1);
        v18 -= 3;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v5);
      v19 = v21;
    }

    v22 = v5;
    operator delete(v19);
  }
}

void sub_1D9DA5DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  *v18 = v19;
  if (!v19)
  {
    sub_1D9D54C6C(&a10);
    _Unwind_Resume(a1);
  }

  v18[1] = v19;
  operator delete(v19);
  sub_1D9D54C6C(&a10);
  _Unwind_Resume(a1);
}

void sub_1D9DA5E24(uint64_t a1)
{
  *a1 = &unk_1F554F640;
  sub_1D9D18834(a1 + 80);
  *a1 = &unk_1F554F6F0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      operator delete(*(a1 + 8));
LABEL_4:

      JUMPOUT(0x1DA741280);
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 32));
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  goto LABEL_9;
}

void sub_1D9DA5F10(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = v2 - 56;
    }

    else
    {
      v3 = 0;
    }

    sub_1D9DA5F10(v3);
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = v4 - 56;
    }

    else
    {
      v5 = 0;
    }

    sub_1D9DA5F10(v5);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
      v6 = a1;
    }

    else
    {
      v6 = a1;
    }

    operator delete(v6);
  }
}

unint64_t sub_1D9DA5FA4(unint64_t result, unint64_t *a2)
{
  v2 = *result & 0xFFFFFFFFFFFFFFFELL;
  *result = v2;
  v3 = (*a2 & 0xFFFFFFFFFFFFFFFELL);
  if (v3 != result)
  {
    for (i = *v2; (*v2 & 1) == 0; i = *v2)
    {
      v5 = *(i + 8);
      if (v5 == v2)
      {
        v5 = *(i + 16);
        if (!v5 || (*v5 & 1) != 0)
        {
          v8 = *(v2 + 16);
          if (result == v8)
          {
            v12 = v8[1];
            *(v2 + 16) = v12;
            if (v12)
            {
              *v12 = *v12 & 1 | v2;
              i = *v2;
            }

            *v8 = i & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
            if ((*a2 & 0xFFFFFFFFFFFFFFFELL) == v2)
            {
              *a2 = *a2 & 1 | result;
              v13 = *v2;
            }

            else
            {
              v13 = *v2;
              v15 = *v2 & 0xFFFFFFFFFFFFFFFELL;
              if (*(v15 + 8) == v2)
              {
                *(v15 + 8) = v8;
              }

              else
              {
                *(v15 + 16) = v8;
              }
            }

            v8[1] = v2;
            *v2 = v13 & 1 | result;
            v9 = (result & 0xFFFFFFFFFFFFFFFELL);
            i = *(result & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v9 = v2;
            v2 = result;
          }

          *v9 = i | 1;
          *(*(*v2 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
          v16 = *(*v2 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL;
          v17 = *(v16 + 8);
          v21 = v17[2];
          *(v16 + 8) = v21;
          if (v21)
          {
            *v21 = *v21 & 1 | v16;
          }

          *v17 = *v16 & 0xFFFFFFFFFFFFFFFELL | *v17 & 1;
          if ((*a2 & 0xFFFFFFFFFFFFFFFELL) == v16)
          {
            *a2 = *a2 & 1 | v17;
            v19 = *v16;
          }

          else
          {
            v19 = *v16;
            v22 = *v16 & 0xFFFFFFFFFFFFFFFELL;
            if (*(v22 + 16) == v16)
            {
              *(v22 + 16) = v17;
            }

            else
            {
              *(v22 + 8) = v17;
            }
          }

          v17[2] = v16;
LABEL_46:
          *v16 = v19 & 1 | v17;
          result = v2;
          v3 = (*a2 & 0xFFFFFFFFFFFFFFFELL);
          if (v2 == v3)
          {
            break;
          }

          goto LABEL_47;
        }
      }

      else if (!v5 || (*v5 & 1) != 0)
      {
        v6 = *(v2 + 8);
        if (result == v6)
        {
          v10 = v6[2];
          *(v2 + 8) = v10;
          if (v10)
          {
            *v10 = *v10 & 1 | v2;
            i = *v2;
          }

          *v6 = i & 0xFFFFFFFFFFFFFFFELL | *v6 & 1;
          if ((*a2 & 0xFFFFFFFFFFFFFFFELL) == v2)
          {
            *a2 = *a2 & 1 | result;
            v11 = *v2;
          }

          else
          {
            v11 = *v2;
            v14 = *v2 & 0xFFFFFFFFFFFFFFFELL;
            if (*(v14 + 16) == v2)
            {
              *(v14 + 16) = v6;
            }

            else
            {
              *(v14 + 8) = v6;
            }
          }

          v6[2] = v2;
          *v2 = v11 & 1 | result;
          v7 = (result & 0xFFFFFFFFFFFFFFFELL);
          i = *(result & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          v7 = v2;
          v2 = result;
        }

        *v7 = i | 1;
        *(*(*v2 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
        v16 = *(*v2 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL;
        v17 = *(v16 + 16);
        v18 = v17[1];
        *(v16 + 16) = v18;
        if (v18)
        {
          *v18 = *v18 & 1 | v16;
        }

        *v17 = *v16 & 0xFFFFFFFFFFFFFFFELL | *v17 & 1;
        if ((*a2 & 0xFFFFFFFFFFFFFFFELL) == v16)
        {
          *a2 = *a2 & 1 | v17;
          v19 = *v16;
        }

        else
        {
          v19 = *v16;
          v20 = *v16 & 0xFFFFFFFFFFFFFFFELL;
          if (*(v20 + 8) == v16)
          {
            *(v20 + 8) = v17;
          }

          else
          {
            *(v20 + 16) = v17;
          }
        }

        v17[1] = v16;
        goto LABEL_46;
      }

      *v2 = i | 1;
      *v5 |= 1uLL;
      *(*(*result & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
      result = *(*result & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL;
      v3 = (*a2 & 0xFFFFFFFFFFFFFFFELL);
      if (result == v3)
      {
        break;
      }

LABEL_47:
      v2 = *result & 0xFFFFFFFFFFFFFFFELL;
    }
  }

  *v3 |= 1uLL;
  return result;
}

__n128 sub_1D9DA6320(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v60 = v12 + 1;
        v61 = v12[1].n128_u64[0];
        v63 = a2[-1].n128_u64[0];
        v58 = a2 - 1;
        v62 = v63;
        if (v61 < v12->n128_u64[0])
        {
          if (v62 >= v61)
          {
            v134 = *v12;
            *v12 = *v60;
            result = v134;
            *v60 = v134;
            if (v58->n128_u64[0] < v12[1].n128_u64[0])
            {
              result = *v60;
              *v60 = *v58;
              *v58 = result;
            }

            return result;
          }

LABEL_109:
          v130 = *v12;
          *v12 = *v58;
          result = v130;
          *v58 = v130;
          return result;
        }

        if (v62 >= v61)
        {
          return result;
        }

        result = *v60;
        *v60 = *v58;
        *v58 = result;
LABEL_189:
        if (v12[1].n128_u64[0] < v12->n128_u64[0])
        {
          v136 = *v12;
          *v12 = *v60;
          result = v136;
          *v60 = v136;
        }

        return result;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {

          result.n128_u64[0] = sub_1D9DA6E9C(v12, v12 + 1, v12[2].n128_u64, v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
          return result;
        }

        goto LABEL_9;
      }

      v60 = v12 + 1;
      v64 = v12[1].n128_u64[0];
      v65 = v12 + 2;
      v66 = v12[2].n128_u64[0];
      if (v64 >= v12->n128_u64[0])
      {
        if (v66 < v64)
        {
          result = *v60;
          *v60 = *v65;
          *v65 = result;
          if (v12[1].n128_u64[0] < v12->n128_u64[0])
          {
            v133 = *v12;
            *v12 = *v60;
            result = v133;
            *v60 = v133;
          }
        }

        goto LABEL_186;
      }

      if (v66 >= v64)
      {
        v135 = *v12;
        *v12 = *v60;
        result = v135;
        *v60 = v135;
        if (v66 >= v12[1].n128_u64[0])
        {
          goto LABEL_186;
        }

        result = *v60;
        *v60 = *v65;
      }

      else
      {
        v131 = *v12;
        *v12 = *v65;
        result = v131;
      }

      *v65 = result;
LABEL_186:
      if (v9->n128_u64[0] >= v65->n128_u64[0])
      {
        return result;
      }

      result = *v65;
      *v65 = *v9;
      *v9 = result;
      if (v65->n128_u64[0] >= v60->n128_u64[0])
      {
        return result;
      }

      result = *v60;
      *v60 = *v65;
      *v65 = result;
      goto LABEL_189;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v59 = a2[-1].n128_u64[0];
      v58 = a2 - 1;
      if (v59 >= v12->n128_u64[0])
      {
        return result;
      }

      goto LABEL_109;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v67 = v12 + 1;
      v69 = v12 == a2 || v67 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v69)
        {
          do
          {
            v106 = v67;
            v107 = a1[1].n128_u64[0];
            if (v107 < a1->n128_u64[0])
            {
              v108 = a1[1].n128_u64[1];
              v109 = v106;
              do
              {
                result = v109[-1];
                *v109 = result;
                v110 = v109[-2].n128_u64[0];
                --v109;
              }

              while (v107 < v110);
              v109->n128_u64[0] = v107;
              v109->n128_u64[1] = v108;
            }

            v67 = v106 + 1;
            a1 = v106;
          }

          while (&v106[1] != a2);
        }

        return result;
      }

      if (v69)
      {
        return result;
      }

      v70 = 0;
      v71 = v12;
      while (1)
      {
        v73 = v67;
        v74 = v71[1].n128_u64[0];
        if (v74 < v71->n128_u64[0])
        {
          v75 = v71[1].n128_u64[1];
          v76 = v70;
          do
          {
            result = *(v12 + v76);
            *(v12 + v76 + 16) = result;
            if (!v76)
            {
              v72 = v12;
              goto LABEL_123;
            }

            v77 = *(v12[-1].n128_u64 + v76);
            v76 -= 16;
          }

          while (v74 < v77);
          v72 = (v12 + v76 + 16);
LABEL_123:
          v72->n128_u64[0] = v74;
          v72->n128_u64[1] = v75;
        }

        v67 = v73 + 1;
        v70 += 16;
        v71 = v73;
        if (&v73[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 < 0x81)
    {
      v18 = v12->n128_u64[0];
      if (v12->n128_u64[0] < v14->n128_u64[0])
      {
        if (v16 >= v18)
        {
          v119 = *v14;
          *v14 = *v12;
          result = v119;
          *v12 = v119;
          if (v9->n128_u64[0] >= v12->n128_u64[0])
          {
            goto LABEL_37;
          }

          v112 = *v12;
          *v12 = *v9;
        }

        else
        {
          v112 = *v14;
          *v14 = *v9;
        }

        result = v112;
        *v9 = v112;
LABEL_37:
        --a3;
        v19 = v12->n128_u64[0];
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v115 = *v12;
      *v12 = *v9;
      result = v115;
      *v9 = v115;
      if (v12->n128_u64[0] >= v14->n128_u64[0])
      {
        goto LABEL_37;
      }

      v116 = *v14;
      *v14 = *v12;
      result = v116;
      *v12 = v116;
      --a3;
      v19 = v12->n128_u64[0];
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (v12[-1].n128_u64[0] < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= v9->n128_u64[0])
      {
        n128_u64 = v12[1].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          n128_u64 += 16;
        }

        while (v19 >= v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v50 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v19 >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v53);
      }

      v54 = a1->n128_u64[1];
      while (v12 < v52)
      {
        v129 = *v12;
        *v12 = *v52;
        result = v129;
        *v52 = v129;
        do
        {
          v55 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v19 >= v55);
        do
        {
          v56 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v19 < v56);
      }

      v57 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v57;
        *a1 = *v57;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v19;
      v12[-1].n128_u64[1] = v54;
    }

    else
    {
      v17 = v14->n128_u64[0];
      if (v14->n128_u64[0] >= v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v113 = *v14;
          *v14 = *v9;
          *v9 = v113;
          if (v14->n128_u64[0] < v12->n128_u64[0])
          {
            v114 = *v12;
            *v12 = *v14;
            *v14 = v114;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v117 = *v12;
          *v12 = *v14;
          *v14 = v117;
          if (v9->n128_u64[0] >= v14->n128_u64[0])
          {
            goto LABEL_28;
          }

          v111 = *v14;
          *v14 = *v9;
        }

        else
        {
          v111 = *v12;
          *v12 = *v9;
        }

        *v9 = v111;
      }

LABEL_28:
      v20 = v12 + 1;
      v21 = v14 - 1;
      v22 = v14[-1].n128_u64[0];
      v23 = v10->n128_u64[0];
      if (v22 >= v12[1].n128_u64[0])
      {
        if (v23 < v22)
        {
          v118 = *v21;
          *v21 = *v10;
          *v10 = v118;
          if (v21->n128_u64[0] < v20->n128_u64[0])
          {
            v25 = *v20;
            *v20 = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v23 >= v22)
        {
          v26 = *v20;
          *v20 = *v21;
          *v21 = v26;
          if (v10->n128_u64[0] >= v21->n128_u64[0])
          {
            goto LABEL_42;
          }

          v120 = *v21;
          *v21 = *v10;
          v24 = v120;
        }

        else
        {
          v24 = *v20;
          *v20 = *v10;
        }

        *v10 = v24;
      }

LABEL_42:
      v27 = v12 + 2;
      v30 = v14[1].n128_u64[0];
      v28 = v14 + 1;
      v29 = v30;
      v31 = v11->n128_u64[0];
      if (v30 >= v12[2].n128_u64[0])
      {
        if (v31 < v29)
        {
          v121 = *v28;
          *v28 = *v11;
          *v11 = v121;
          if (v28->n128_u64[0] < v27->n128_u64[0])
          {
            v33 = *v27;
            *v27 = *v28;
            *v28 = v33;
          }
        }
      }

      else
      {
        if (v31 >= v29)
        {
          v34 = *v27;
          *v27 = *v28;
          *v28 = v34;
          if (v11->n128_u64[0] >= v28->n128_u64[0])
          {
            goto LABEL_51;
          }

          v122 = *v28;
          *v28 = *v11;
          v32 = v122;
        }

        else
        {
          v32 = *v27;
          *v27 = *v11;
        }

        *v11 = v32;
      }

LABEL_51:
      v35 = v15->n128_u64[0];
      v36 = v28->n128_u64[0];
      if (v15->n128_u64[0] >= v21->n128_u64[0])
      {
        if (v36 < v35)
        {
          v124 = *v15;
          *v15 = *v28;
          *v28 = v124;
          if (v15->n128_u64[0] < v21->n128_u64[0])
          {
            v125 = *v21;
            *v21 = *v15;
            *v15 = v125;
          }
        }
      }

      else
      {
        if (v36 >= v35)
        {
          v126 = *v21;
          *v21 = *v15;
          *v15 = v126;
          if (v28->n128_u64[0] >= v15->n128_u64[0])
          {
            goto LABEL_60;
          }

          v123 = *v15;
          *v15 = *v28;
        }

        else
        {
          v123 = *v21;
          *v21 = *v28;
        }

        *v28 = v123;
      }

LABEL_60:
      v127 = *v12;
      *v12 = *v15;
      result = v127;
      *v15 = v127;
      --a3;
      v19 = v12->n128_u64[0];
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v37 = 0;
      v38 = v12->n128_u64[1];
      do
      {
        v39 = v12[++v37].n128_u64[0];
      }

      while (v39 < v19);
      v40 = &v12[v37];
      v41 = a2;
      if (v37 == 1)
      {
        v41 = a2;
        do
        {
          if (v40 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v19);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v19);
      }

      v12 = (v12 + v37 * 16);
      if (v40 < v41)
      {
        v44 = v41;
        do
        {
          v128 = *v12;
          *v12 = *v44;
          result = v128;
          *v44 = v128;
          do
          {
            v45 = v12[1].n128_u64[0];
            ++v12;
          }

          while (v45 < v19);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v46 >= v19);
        }

        while (v12 < v44);
      }

      v47 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      v12[-1].n128_u64[0] = v19;
      v12[-1].n128_u64[1] = v38;
      if (v40 < v41)
      {
LABEL_81:
        result = sub_1D9DA6320(a1, v12 - 1, a3, a4 & 1, result);
        a4 = 0;
      }

      else
      {
        v48 = sub_1D9DA7020(a1, v12 - 1, result);
        if (sub_1D9DA7020(v12, a2, v49))
        {
          a2 = v12 - 1;
          if (v48)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v48)
        {
          goto LABEL_81;
        }
      }
    }
  }

  if (v12 == a2)
  {
    return result;
  }

  v78 = (v13 - 2) >> 1;
  v79 = v78;
  while (2)
  {
    if (v78 >= v79)
    {
      v81 = (2 * (v79 & 0xFFFFFFFFFFFFFFFLL)) | 1;
      v82 = &v12[v81];
      if (2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2 >= v13)
      {
        v85 = &v12[v79];
        v86 = v85->n128_u64[0];
        if (v82->n128_u64[0] >= v85->n128_u64[0])
        {
LABEL_144:
          v87 = v85->n128_u64[1];
          while (1)
          {
            v89 = v85;
            v85 = v82;
            *v89 = *v82;
            if (v78 < v81)
            {
              break;
            }

            v90 = (2 * (v81 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v82 = &v12[v90];
            v81 = 2 * v81 + 2;
            if (v81 < v13)
            {
              v88 = v82->n128_u64[0];
              if (v82->n128_u64[0] >= v82[1].n128_u64[0])
              {
                v81 = v90;
              }

              else
              {
                v88 = v82[1].n128_u64[0];
                ++v82;
              }

              if (v88 < v86)
              {
                break;
              }
            }

            else
            {
              v81 = v90;
              if (v82->n128_u64[0] < v86)
              {
                break;
              }
            }
          }

          v85->n128_u64[0] = v86;
          v85->n128_u64[1] = v87;
        }
      }

      else
      {
        v83 = v82[1].n128_u64[0];
        v84 = v82->n128_u64[0] >= v83;
        if (v82->n128_u64[0] < v83)
        {
          ++v82;
        }

        else
        {
          v83 = v82->n128_u64[0];
        }

        if (!v84)
        {
          v81 = 2 * (v79 & 0xFFFFFFFFFFFFFFFLL) + 2;
        }

        v85 = &v12[v79];
        v86 = v85->n128_u64[0];
        if (v83 >= v85->n128_u64[0])
        {
          goto LABEL_144;
        }
      }
    }

    v80 = v79-- <= 0;
    if (!v80)
    {
      continue;
    }

    break;
  }

  do
  {
    v91 = 0;
    v132 = *v12;
    v92 = (v13 - 2) >> 1;
    v93 = v12;
    do
    {
      while (1)
      {
        v97 = &v93[v91];
        v96 = v97 + 1;
        v98 = (2 * v91) | 1;
        v91 = 2 * v91 + 2;
        if (v91 < v13)
        {
          break;
        }

        v91 = v98;
        *v93 = *v96;
        v93 = v97 + 1;
        if (v98 > v92)
        {
          goto LABEL_162;
        }
      }

      v95 = v97[2].n128_u64[0];
      v94 = v97 + 2;
      if (v94[-1].n128_u64[0] >= v95)
      {
        v91 = v98;
      }

      else
      {
        v96 = v94;
      }

      *v93 = *v96;
      v93 = v96;
    }

    while (v91 <= v92);
LABEL_162:
    if (v96 == --a2)
    {
      result = v132;
      *v96 = v132;
    }

    else
    {
      *v96 = *a2;
      result = v132;
      *a2 = v132;
      v99 = (v96 - v12 + 16) >> 4;
      v80 = v99 < 2;
      v100 = v99 - 2;
      if (!v80)
      {
        v101 = v100 >> 1;
        v102 = &v12[v101];
        v103 = v96->n128_u64[0];
        if (v102->n128_u64[0] < v96->n128_u64[0])
        {
          v104 = v96->n128_u64[1];
          do
          {
            v105 = v96;
            v96 = v102;
            result = *v102;
            *v105 = *v102;
            if (!v101)
            {
              break;
            }

            v101 = (v101 - 1) >> 1;
            v102 = &v12[v101];
          }

          while (v102->n128_u64[0] < v103);
          v96->n128_u64[0] = v103;
          v96->n128_u64[1] = v104;
        }
      }
    }

    v80 = v13-- <= 2;
  }

  while (!v80);
  return result;
}

__n128 sub_1D9DA6E9C(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_1D9DA7020(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 16);
      v8 = *(a1 + 16);
      v10 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v29 = *a1;
          *a1 = *v7;
          *v7 = v29;
          if (v4->n128_u64[0] < *(a1 + 16))
          {
            v30 = *v7;
            *v7 = *v4;
            *v4 = v30;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *v7;
      *v7 = *v4;
      *v4 = v24;
LABEL_49:
      if (*(a1 + 16) < *a1)
      {
        v43 = *a1;
        *a1 = *v7;
        *v7 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_1D9DA6E9C(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v7 = (a1 + 16);
    v18 = *(a1 + 16);
    v19 = (a1 + 32);
    v20 = *(a1 + 32);
    v21 = a2 - 1;
    v22 = *a1;
    if (v18 >= *a1)
    {
      if (v20 < v18)
      {
        v27 = *v7;
        *v7 = *v19;
        *v19 = v27;
        if (v7->n128_u64[0] < v22)
        {
          v28 = *a1;
          *a1 = *v7;
          *v7 = v28;
        }
      }

      goto LABEL_46;
    }

    if (v20 >= v18)
    {
      v40 = *a1;
      *a1 = *v7;
      *v7 = v40;
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_46;
      }

      v23 = *v7;
      *v7 = *v19;
    }

    else
    {
      v23 = *a1;
      *a1 = *v19;
    }

    *v19 = v23;
LABEL_46:
    if (v21->n128_u64[0] >= v19->n128_u64[0])
    {
      return 1;
    }

    v41 = *v19;
    *v19 = *v21;
    *v21 = v41;
    if (v19->n128_u64[0] >= v7->n128_u64[0])
    {
      return 1;
    }

    v42 = *v7;
    *v7 = *v19;
    *v19 = v42;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

LABEL_12:
    v11 = *a1;
    *a1 = *v4;
    *v4 = v11;
    return 1;
  }

LABEL_13:
  v12 = (a1 + 32);
  v13 = *(a1 + 32);
  v14 = (a1 + 16);
  v15 = *(a1 + 16);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      v25 = *v14;
      *v14 = *v12;
      *v12 = v25;
      if (v14->n128_u64[0] < v16)
      {
        v26 = *a1;
        *a1 = *v14;
        *v14 = v26;
      }
    }
  }

  else
  {
    if (v13 >= v15)
    {
      v31 = *a1;
      *a1 = *v14;
      *v14 = v31;
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_32;
      }

      v17 = *v14;
      *v14 = *v12;
    }

    else
    {
      v17 = *a1;
      *a1 = *v12;
    }

    *v12 = v17;
  }

LABEL_32:
  v32 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (v32->n128_u64[0] < v12->n128_u64[0])
    {
      break;
    }

LABEL_41:
    v12 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }

  v36 = v32->n128_u64[1];
  v37 = v33;
  do
  {
    *(a1 + v37 + 48) = *(a1 + v37 + 32);
    if (v37 == -32)
    {
      *a1 = v35;
      *(a1 + 8) = v36;
      if (++v34 != 8)
      {
        goto LABEL_41;
      }

      return &v32[1] == a2;
    }

    v38 = *(a1 + v37 + 16);
    v37 -= 16;
  }

  while (v35 < v38);
  v39 = a1 + v37;
  *(v39 + 48) = v35;
  *(v39 + 56) = v36;
  if (++v34 != 8)
  {
    goto LABEL_41;
  }

  return &v32[1] == a2;
}

uint64_t sub_1D9DA73A4(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && *(a1 + 40))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      v4 = *(*(a1 + 32) + v3);
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
        v4 = *(*(a1 + 32) + v3);
      }

      operator delete(v4);
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 40));
  }

  if (*(a1 + 24))
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

const void **sub_1D9DA7438(uint64_t a1, const void **a2)
{
  v2 = a1;
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (v3)
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = a1;
    do
    {
      while (1)
      {
        v8 = (v3 - 32);
        v9 = *(v3 - 9);
        if (v9 >= 0)
        {
          v10 = *(v3 - 9);
        }

        else
        {
          v10 = *(v3 - 24);
        }

        if (v9 >= 0)
        {
          v11 = (v3 - 32);
        }

        else
        {
          v11 = *(v3 - 32);
        }

        if (v5 >= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v5;
        }

        v13 = memcmp(v11, v6, v12);
        v14 = v10 < v5;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (v14)
        {
          break;
        }

        v3 = *(v3 + 8);
        v7 = v8;
        if (!v3)
        {
          goto LABEL_24;
        }
      }

      v3 = *(v3 + 16);
    }

    while (v3);
    v8 = v7;
LABEL_24:
    if (v8 != v2)
    {
      v15 = *(v8 + 23);
      if (v15 >= 0)
      {
        v16 = *(v8 + 23);
      }

      else
      {
        v16 = v8[1];
      }

      if (v15 >= 0)
      {
        v17 = v8;
      }

      else
      {
        v17 = *v8;
      }

      if (v16 >= v5)
      {
        v18 = v5;
      }

      else
      {
        v18 = v16;
      }

      v19 = memcmp(v6, v17, v18);
      v20 = v5 < v16;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        return v8;
      }
    }
  }

  return v2;
}

void *sub_1D9DA7550(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  *a1 = &unk_1F554F760;
  sub_1D9DA75B8(a1 + 1, v5);
  return a1;
}

uint64_t sub_1D9DA75B8(void *a1, uint64_t a2)
{
  sub_1D9D100A8(&v4);
  sub_1D9D12280(&v4, "OutOfVocabularyError: ", 22);
  sub_1D9D12280(&v4, *a2, *(a2 + 8));
  std::stringbuf::str();
  v4 = *MEMORY[0x1E69E54E8];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v8);
}

void sub_1D9DA771C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA7730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA7744(std::exception *this)
{
  this->__vftable = &unk_1F554F760;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9DA77B8(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1D9DA77D4(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = sub_1D9DA7814(exception, a1);
  __cxa_throw(v3, &unk_1F554F798, sub_1D9DA78C0);
}

uint64_t sub_1D9DA7814(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_1F554F868;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F554F7F0;
  *(a1 + 8) = &unk_1F554F820;
  *(a1 + 24) = &unk_1F554F848;
  return a1;
}

uint64_t sub_1D9DA78C0(uint64_t a1)
{
  *(a1 + 24) = &unk_1F554F898;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  MEMORY[0x1DA740DD0](a1 + 8);
  return a1;
}