void sub_18382AAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, const void *);
  sub_183695860(va);
  sub_1836C040C(va1);
  _Unwind_Resume(a1);
}

void sub_18382AB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1836C040C(va);
  _Unwind_Resume(a1);
}

void sub_18382AB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, const void *);
  sub_18383AB04(va);
  sub_1836C040C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_18382AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 247) < 0)
  {
    sub_183688F34(__p, *(a2 + 224), *(a2 + 232));
  }

  else
  {
    *__p = *(a2 + 224);
    v32 = *(a2 + 240);
  }

  if (v32 >= 0)
  {
    v7 = (__p + HIBYTE(v32));
  }

  else
  {
    v7 = (__p[0] + __p[1]);
  }

  if (v32 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  for (; v8 != v7; v8 = (v8 + 1))
  {
    *v8 = __tolower(*v8);
  }

  v12 = objc_msgSend_root(*(a1 + 168), a2, a3, a4, a5, a6, __p[0]);
  if (v32 >= 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v9, __p, 4, v10, v11);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v9, __p[0], 4, v10, v11);
  }
  v13 = ;
  v18 = objc_msgSend_objectForKeyedSubscript_(v12, v14, v13, v15, v16, v17);

  if (v18 && objc_msgSend_isMatch(v18, v19, v20, v21, v22, v23))
  {
    v29 = objc_msgSend_containsCurrency(v18, v24, v25, v26, v27, v28);

    if (SHIBYTE(v32) < 0)
    {
LABEL_18:
      operator delete(__p[0]);
      return v29;
    }
  }

  else
  {
    v29 = 0;

    if (SHIBYTE(v32) < 0)
    {
      goto LABEL_18;
    }
  }

  return v29;
}

void sub_18382ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = v15;

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_18382AD0C(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(*(a2 + 208) - 4) == 1)
  {
    operator new();
  }

  return 0;
}

void sub_18382B850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v15);
  operator delete(v14);
  _Unwind_Resume(a1);
}

void sub_18382B918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_18382B930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_18382B964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

BOOL sub_18382B990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 208);
  if (*(v6 - 4) != 1)
  {
    return 0;
  }

  v7 = *(a2 + 200);
  v8 = v6 - v7;
  if (v8 != 4)
  {
    if (v8 >= 5)
    {
      v24 = a1;
      v9 = a2;
      v25 = *(v7 + v8 - 8);
      v39 = xmmword_1839D8EB0;
      *v36 = 0u;
      *__p = 0u;
      v38 = 1065353216;
      sub_18383BA44(v36, 3u, &v39);
      sub_18383BA44(v36, 9u, &v39 + 1);
      sub_18383BA44(v36, 0xBu, &v39 + 2);
      sub_18383BA44(v36, 6u, (&v39 | 0xC));
      if (v36[1])
      {
        v26 = vcnt_s8(v36[1]);
        v26.i16[0] = vaddlv_u8(v26);
        if (v26.u32[0] > 1uLL)
        {
          v27 = v25;
          if (v36[1] <= v25)
          {
            v27 = v25 % LODWORD(v36[1]);
          }
        }

        else
        {
          v27 = (LODWORD(v36[1]) - 1) & v25;
        }

        v28 = *(v36[0] + v27);
        if (v28)
        {
          v29 = *v28;
          if (v29)
          {
            if (v26.u32[0] < 2uLL)
            {
              while (1)
              {
                v31 = v29[1];
                if (v31 == v25)
                {
                  if (*(v29 + 4) == v25)
                  {
                    goto LABEL_29;
                  }
                }

                else if ((v31 & (v36[1] - 1)) != v27)
                {
                  goto LABEL_30;
                }

                v29 = *v29;
                if (!v29)
                {
                  goto LABEL_30;
                }
              }
            }

            do
            {
              v30 = v29[1];
              if (v30 == v25)
              {
                if (*(v29 + 4) == v25)
                {
LABEL_29:
                  v32 = 1;
                  goto LABEL_31;
                }
              }

              else
              {
                if (v30 >= v36[1])
                {
                  v30 %= v36[1];
                }

                if (v30 != v27)
                {
                  break;
                }
              }

              v29 = *v29;
            }

            while (v29);
          }
        }
      }

LABEL_30:
      v32 = 0;
LABEL_31:
      v33 = __p[0];
      if (__p[0])
      {
        do
        {
          v34 = *v33;
          operator delete(v33);
          v33 = v34;
        }

        while (v34);
      }

      v35 = v36[0];
      v36[0] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      a1 = v24;
      if (v32)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  v9 = a2;
LABEL_4:
  v13 = objc_msgSend_root(*(a1 + 168), a2, a3, a4, a5, a6, v36[0]);
  v16 = *(v9 + 224);
  v15 = v9 + 224;
  v14 = v16;
  if (*(v15 + 23) >= 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v10, v15, 4, v11, v12);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v10, v14, 4, v11, v12);
  }
  v17 = ;
  v22 = objc_msgSend_objectForKeyedSubscript_(v13, v18, v17, v19, v20, v21);

  return v22 != 0;
}

void sub_18382BBFC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_18382BC38(std::string *a1, uint64_t a2, void *a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  operator new();
}

void sub_18382C168(_Unwind_Exception *a1)
{
  operator delete(v3);
  operator delete(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_18382C1B8(void *a1, uint64_t a2, void *a3)
{
  result = sub_183686288(a1 + 11, a2);
  if (!result)
  {
    return result;
  }

  v7 = a3[9];
  v8 = (a3[10] - v7) >> 2;
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v8 > v9 + 3)
  {
    v10 = a3[15];
    if (*(v10 + 8 * v8 - 8) == 0x2000)
    {
      v11 = v8 - v9 - 2;
      if (*(v10 + 8 * v11) == 0x2000)
      {
LABEL_7:
        v12 = *(v10 + 8 * (v8 - v9) - 24);
        result = 1;
        if (v12 == 64 || v12 == 128)
        {
          return result;
        }
      }

      else
      {
        v13 = a1[17];
        if (v13)
        {
          v14 = *(v7 + 4 * v11);
          v15 = vcnt_s8(v13);
          v15.i16[0] = vaddlv_u8(v15);
          if (v15.u32[0] > 1uLL)
          {
            v16 = v14;
            if (*&v13 <= v14)
            {
              v16 = v14 % *&v13;
            }
          }

          else
          {
            v16 = (*&v13 - 1) & v14;
          }

          v17 = *(a1[16] + 8 * v16);
          if (v17)
          {
            v18 = *v17;
            if (v18)
            {
              if (v15.u32[0] < 2uLL)
              {
                v19 = *&v13 - 1;
                while (1)
                {
                  v21 = v18[1];
                  if (v21 == v14)
                  {
                    if (*(v18 + 4) == v14)
                    {
                      goto LABEL_7;
                    }
                  }

                  else if ((v21 & v19) != v16)
                  {
                    goto LABEL_30;
                  }

                  v18 = *v18;
                  if (!v18)
                  {
                    goto LABEL_30;
                  }
                }
              }

              do
              {
                v20 = v18[1];
                if (v20 == v14)
                {
                  if (*(v18 + 4) == v14)
                  {
                    goto LABEL_7;
                  }
                }

                else
                {
                  if (v20 >= *&v13)
                  {
                    v20 %= *&v13;
                  }

                  if (v20 != v16)
                  {
                    break;
                  }
                }

                v18 = *v18;
              }

              while (v18);
            }
          }
        }
      }
    }
  }

LABEL_30:
  if (v8 <= v9 + 2)
  {
    return 0;
  }

  v22 = a1[17];
  if (!*&v22)
  {
    return 0;
  }

  v23 = *(a3[10] - 4);
  v24 = vcnt_s8(v22);
  v24.i16[0] = vaddlv_u8(v24);
  if (v24.u32[0] > 1uLL)
  {
    v25 = *(a3[10] - 4);
    if (*&v22 <= v23)
    {
      v25 = v23 % *&v22;
    }
  }

  else
  {
    v25 = (*&v22 - 1) & v23;
  }

  v26 = a1[16];
  v27 = *(v26 + 8 * v25);
  if (!v27)
  {
    return 0;
  }

  v28 = *v27;
  if (!*v27)
  {
    return 0;
  }

  v29 = *&v22 - 1;
  if (v24.u32[0] < 2uLL)
  {
    while (1)
    {
      v30 = v28[1];
      if (v30 == v23)
      {
        if (*(v28 + 4) == v23)
        {
          goto LABEL_52;
        }
      }

      else if ((v30 & v29) != v25)
      {
        return 0;
      }

      result = 0;
      v28 = *v28;
      if (!v28)
      {
        return result;
      }
    }
  }

  while (1)
  {
    v31 = v28[1];
    if (v31 == v23)
    {
      break;
    }

    if (v31 >= *&v22)
    {
      v31 %= *&v22;
    }

    if (v31 != v25)
    {
      return 0;
    }

LABEL_46:
    result = 0;
    v28 = *v28;
    if (!v28)
    {
      return result;
    }
  }

  if (*(v28 + 4) != v23)
  {
    goto LABEL_46;
  }

LABEL_52:
  v32 = v8 - v9 - 2;
  if (*(a3[15] + 8 * v32) == 0x2000)
  {
    return 1;
  }

  v33 = *(v7 + 4 * v32);
  if (v24.u32[0] > 1uLL)
  {
    v34 = v33;
    if (*&v22 <= v33)
    {
      v34 = v33 % *&v22;
    }
  }

  else
  {
    v34 = v29 & v33;
  }

  v35 = *(v26 + 8 * v34);
  if (v35)
  {
    v36 = *v35;
    if (v36)
    {
      if (v24.u32[0] < 2uLL)
      {
        while (1)
        {
          v37 = v36[1];
          if (v37 == v33)
          {
            if (*(v36 + 4) == v33)
            {
              return 1;
            }
          }

          else if ((v37 & v29) != v34)
          {
            return 0;
          }

          result = 0;
          v36 = *v36;
          if (!v36)
          {
            return result;
          }
        }
      }

      while (1)
      {
        v38 = v36[1];
        if (v38 == v33)
        {
          if (*(v36 + 4) == v33)
          {
            return 1;
          }
        }

        else
        {
          if (v38 >= *&v22)
          {
            v38 %= *&v22;
          }

          if (v38 != v34)
          {
            return 0;
          }
        }

        result = 0;
        v36 = *v36;
        if (!v36)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

void sub_18382C6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_18382C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (!a4)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_40;
  }

  v8 = (*(a1 + 224) + 24 * *(*(a2 + 72) + 4 * a3));
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (v8[1] == 1)
    {
      v10 = **v8;
      if ((v10 & 0x80000000) == 0)
      {
LABEL_5:
        if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x1000) != 0)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      if (__maskrune(v10, 0x1000uLL))
      {
LABEL_6:
        v11 = 0;
        v12 = 0;
        v13 = 1;
        v14 = v4 - 1;
        if (v4 == 1)
        {
          goto LABEL_40;
        }

        goto LABEL_20;
      }

LABEL_12:
      if (*(v8 + 23) < 0)
      {
        v8 = *v8;
      }

      v15 = *v8;
      if ((v15 & 0x80000000) != 0)
      {
        v16 = __maskrune(v15, 0x8000uLL);
      }

      else
      {
        v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x8000;
      }

      v13 = 0;
      v11 = v16 != 0;
      v12 = v16 != 0;
      v14 = v4 - 1;
      if (v4 != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }
  }

  else if (v9 == 1)
  {
    v10 = *v8;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a4 - 1;
  if (a4 != 1)
  {
LABEL_20:
    v70 = v11;
    v17 = 4 * v5 + 4;
    v18 = MEMORY[0x1E69E9830];
    while (1)
    {
      v19 = (*(a1 + 224) + 24 * *(*(a2 + 72) + v17));
      v20 = *(v19 + 23);
      if (v20 < 0)
      {
        if (v19[1] != 1)
        {
          goto LABEL_22;
        }

        v21 = **v19;
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v20 != 1)
        {
          goto LABEL_22;
        }

        v21 = *v19;
        if ((v21 & 0x80000000) != 0)
        {
LABEL_30:
          if (!__maskrune(v21, 0x1000uLL))
          {
LABEL_31:
            if (*(v19 + 23) < 0)
            {
              v22 = **v19;
              if ((v22 & 0x80000000) != 0)
              {
                goto LABEL_35;
              }

LABEL_33:
              v23 = *(v18 + 4 * v22 + 60) & 0x8000;
            }

            else
            {
              v22 = *v19;
              if ((v22 & 0x80000000) == 0)
              {
                goto LABEL_33;
              }

LABEL_35:
              v23 = __maskrune(v22, 0x8000uLL);
            }

            if (v23)
            {
              ++v12;
            }

            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      if ((*(v18 + 4 * v21 + 60) & 0x1000) == 0)
      {
        goto LABEL_31;
      }

LABEL_21:
      ++v13;
LABEL_22:
      v17 += 4;
      if (!--v14)
      {
        v5 = a3;
        v11 = v70;
        break;
      }
    }
  }

LABEL_40:
  v24 = v12 == 1 && v11;
  if (v4 && v13 >= 1 && v12 >= 1 && !v24)
  {
    v25 = v12 == v13 && v11;
    if (v12 > v13)
    {
      v25 = 1;
    }

    v71 = v4;
    v26 = 0;
    if ((v25 & 1) == 0)
    {
      while (1)
      {
        v49 = v26 + v5;
        v50 = *(a1 + 224) + 24 * *(*(a2 + 72) + 4 * (v26 + v5));
        if (*(v50 + 23) < 0)
        {
          sub_183688F34(&v73, *v50, *(v50 + 8));
          v52 = SHIBYTE(v74);
          if ((SHIBYTE(v74) & 0x80000000) == 0)
          {
LABEL_102:
            if (v52 != 1)
            {
              goto LABEL_99;
            }

            v53 = &v73;
            goto LABEL_106;
          }
        }

        else
        {
          v51 = *v50;
          v74 = *(v50 + 16);
          v73 = v51;
          v52 = SHIBYTE(v74);
          if ((SHIBYTE(v74) & 0x80000000) == 0)
          {
            goto LABEL_102;
          }
        }

        v53 = v73;
        if (*(&v73 + 1) != 1)
        {
          goto LABEL_98;
        }

LABEL_106:
        v54 = *v53;
        if ((v54 & 0x80000000) != 0)
        {
          v55 = __maskrune(v54, 0x8000uLL);
          LOBYTE(v52) = HIBYTE(v74);
          if (!v55)
          {
LABEL_108:
            if ((v52 & 0x80) == 0)
            {
              goto LABEL_99;
            }

LABEL_141:
            v53 = v73;
LABEL_98:
            operator delete(v53);
            goto LABEL_99;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v54 + 60) & 0x8000) == 0)
        {
          goto LABEL_108;
        }

        v34 = (v52 & 0x80u) != 0;
        v56 = &v73;
        if (v34)
        {
          v56 = v73;
        }

        v57 = __tolower(*v56);
        v58 = &v73;
        if (v74 < 0)
        {
          v58 = v73;
        }

        *v58 = v57;
        v59 = *(a1 + 256);
        if (!v59)
        {
          goto LABEL_143;
        }

        if (v74 >= 0)
        {
          v60 = HIBYTE(v74);
        }

        else
        {
          v60 = *(&v73 + 1);
        }

        if (v74 >= 0)
        {
          v61 = &v73;
        }

        else
        {
          v61 = v73;
        }

        while (1)
        {
          while (1)
          {
            v62 = *(v59 + 55);
            if (v62 >= 0)
            {
              v63 = *(v59 + 55);
            }

            else
            {
              v63 = v59[5];
            }

            if (v62 >= 0)
            {
              v64 = v59 + 4;
            }

            else
            {
              v64 = v59[4];
            }

            if (v63 >= v60)
            {
              v65 = v60;
            }

            else
            {
              v65 = v63;
            }

            v66 = memcmp(v61, v64, v65);
            v67 = v60 < v63;
            if (v66)
            {
              v67 = v66 < 0;
            }

            if (!v67)
            {
              break;
            }

            v59 = *v59;
            if (!v59)
            {
              goto LABEL_143;
            }
          }

          v68 = memcmp(v64, v61, v65);
          v69 = v63 < v60;
          if (v68)
          {
            v69 = v68 < 0;
          }

          if (!v69)
          {
            break;
          }

          v59 = v59[1];
          if (!v59)
          {
            goto LABEL_143;
          }
        }

        *(*(a2 + 72) + 4 * v49) = *(v59 + 14);
        v4 = v71;
        v5 = a3;
        if (v74 < 0)
        {
          goto LABEL_141;
        }

LABEL_99:
        if (++v26 == v4)
        {
          return;
        }
      }
    }

    do
    {
      v27 = v26 + v5;
      v28 = *(a1 + 224) + 24 * *(*(a2 + 72) + 4 * (v26 + v5));
      if (*(v28 + 23) < 0)
      {
        sub_183688F34(&v73, *v28, *(v28 + 8));
        v30 = SHIBYTE(v74);
        if ((SHIBYTE(v74) & 0x80000000) == 0)
        {
LABEL_58:
          if (v30 != 1)
          {
            goto LABEL_55;
          }

          v31 = &v73;
LABEL_62:
          v32 = *v31;
          if ((v32 & 0x80000000) != 0)
          {
            v33 = __maskrune(v32, 0x1000uLL);
            LOBYTE(v30) = HIBYTE(v74);
            if (!v33)
            {
              goto LABEL_64;
            }
          }

          else if ((*(MEMORY[0x1E69E9830] + 4 * v32 + 60) & 0x1000) == 0)
          {
LABEL_64:
            if ((v30 & 0x80) == 0)
            {
              goto LABEL_55;
            }

            goto LABEL_97;
          }

          v34 = (v30 & 0x80u) != 0;
          v35 = &v73;
          if (v34)
          {
            v35 = v73;
          }

          v36 = __toupper(*v35);
          v37 = &v73;
          if (v74 < 0)
          {
            v37 = v73;
          }

          *v37 = v36;
          v38 = *(a1 + 256);
          if (!v38)
          {
LABEL_143:
            sub_1836868A4("map::at:  key not found");
          }

          if (v74 >= 0)
          {
            v39 = HIBYTE(v74);
          }

          else
          {
            v39 = *(&v73 + 1);
          }

          if (v74 >= 0)
          {
            v40 = &v73;
          }

          else
          {
            v40 = v73;
          }

          while (1)
          {
            while (1)
            {
              v41 = *(v38 + 55);
              if (v41 >= 0)
              {
                v42 = *(v38 + 55);
              }

              else
              {
                v42 = v38[5];
              }

              if (v41 >= 0)
              {
                v43 = v38 + 4;
              }

              else
              {
                v43 = v38[4];
              }

              if (v42 >= v39)
              {
                v44 = v39;
              }

              else
              {
                v44 = v42;
              }

              v45 = memcmp(v40, v43, v44);
              v46 = v39 < v42;
              if (v45)
              {
                v46 = v45 < 0;
              }

              if (!v46)
              {
                break;
              }

              v38 = *v38;
              if (!v38)
              {
                goto LABEL_143;
              }
            }

            v47 = memcmp(v43, v40, v44);
            v48 = v42 < v39;
            if (v47)
            {
              v48 = v47 < 0;
            }

            if (!v48)
            {
              break;
            }

            v38 = v38[1];
            if (!v38)
            {
              goto LABEL_143;
            }
          }

          *(*(a2 + 72) + 4 * v27) = *(v38 + 14);
          v4 = v71;
          v5 = a3;
          if ((v74 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_97:
          v31 = v73;
          goto LABEL_54;
        }
      }

      else
      {
        v29 = *v28;
        v74 = *(v28 + 16);
        v73 = v29;
        v30 = SHIBYTE(v74);
        if ((SHIBYTE(v74) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }
      }

      v31 = v73;
      if (*(&v73 + 1) == 1)
      {
        goto LABEL_62;
      }

LABEL_54:
      operator delete(v31);
LABEL_55:
      ++v26;
    }

    while (v26 != v4);
  }
}

void sub_18382CCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    v16 = a1;
    operator delete(__p);
    a1 = v16;
  }

  _Unwind_Resume(a1);
}

void sub_18382CD08(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v6 = (a2 + 224);
  if ((*(a2 + 247) & 0x80000000) == 0)
  {
    if (*(a2 + 247))
    {
      *&v20.__r_.__value_.__l.__data_ = *v6;
      v20.__r_.__value_.__r.__words[2] = *(a2 + 240);
      goto LABEL_6;
    }

LABEL_18:
    *a3 = 1;
    return;
  }

  if (!*(a2 + 232))
  {
    goto LABEL_18;
  }

  sub_183688F34(&v20, *v6, *(a2 + 232));
LABEL_6:
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = (&v20 + HIBYTE(v20.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v7 = (v20.__r_.__value_.__r.__words[0] + v20.__r_.__value_.__l.__size_);
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v20;
  }

  else
  {
    v8 = v20.__r_.__value_.__r.__words[0];
  }

  for (; v8 != v7; v8 = (v8 + 1))
  {
    v8->__r_.__value_.__s.__data_[0] = __tolower(v8->__r_.__value_.__s.__data_[0]);
  }

  v9 = *(a2 + 247);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 232);
  }

  v19 = v9;
  if (!sub_183686288((a1 + 8), &v20))
  {
    sub_18382BC38(&__p, a1, a2);
  }

  if (!std::string::compare(&v20, "e"))
  {
    v10 = 32;
    if (*(a1 + 284))
    {
      v10 = 16;
    }
  }

  else
  {
    v10 = 16;
  }

  *v21 = 1;
  v11 = v19 - *(a2 + 196) + 1;
  if (!v19)
  {
    v15 = 0;
    goto LABEL_32;
  }

  v12 = *(a2 + 128) - 8 * v11;
  if (v19 >= 4)
  {
    v13 = v19 & 3;
    v14 = (v12 + 8 * (v19 & 0xFFFFFFFFFFFFFFFCLL));
    v16 = vdupq_n_s64(v10);
    v17 = (v12 + 16);
    v18 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v17[-1] = v16;
      *v17 = v16;
      v17 += 2;
      v18 -= 4;
    }

    while (v18);
    if (v19 == (v19 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = v19;
    v14 = (*(a2 + 128) - 8 * v11);
  }

  do
  {
    *v14++ = v10;
    --v13;
  }

  while (v13);
LABEL_31:
  v15 = v19;
LABEL_32:
  sub_18382C6EC(a1, a2, ((*(a2 + 80) - *(a2 + 72)) >> 2) - v11, v15);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_18382DFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  operator delete(v35);
  operator delete(v34);
  if (v33)
  {
    operator delete(v33);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18382E0D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  ***a1 = 1;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *v1 - *(v3 + 196) + 1;
  if (*v1)
  {
    memset_pattern16((*(v3 + 128) - 8 * v4), &unk_1839D8F40, 8 * *v1);
    v5 = *v1;
  }

  else
  {
    v5 = 0;
  }

  v6 = ((*(v3 + 80) - *(v3 + 72)) >> 2) - v4;

  sub_18382C6EC(v2, v3, v6, v5);
}

uint64_t sub_18382E170(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = (a2 + 224);
  if (*(a2 + 247) < 0)
  {
    v7 = *(a2 + 232);
    if (v7 < 2)
    {
      return 0;
    }

    sub_183688F34(&v31, *v6, v7);
  }

  else
  {
    if (*(a2 + 247) < 2u)
    {
      return 0;
    }

    *&v31.__r_.__value_.__l.__data_ = *v6;
    v31.__r_.__value_.__r.__words[2] = *(a2 + 240);
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = (&v31 + HIBYTE(v31.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v9 = (v31.__r_.__value_.__r.__words[0] + v31.__r_.__value_.__l.__size_);
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31.__r_.__value_.__r.__words[0];
  }

  for (; v10 != v9; v10 = (v10 + 1))
  {
    v10->__r_.__value_.__s.__data_[0] = __tolower(v10->__r_.__value_.__s.__data_[0]);
  }

  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&v31.__r_.__value_.__s + 23))
    {
      v11 = SHIBYTE(v31.__r_.__value_.__r.__words[2]) - 1;
      --*(&v31.__r_.__value_.__s + 23);
      v31.__r_.__value_.__s.__data_[v11] = 0;
      if (sub_183686288((a1 + 8), &v31))
      {
        goto LABEL_23;
      }

LABEL_22:
      sub_18382BC38(&__p, a1, a2);
    }

    return 0;
  }

  if (!v31.__r_.__value_.__l.__size_)
  {
    result = 0;
LABEL_65:
    v30 = result;
    operator delete(v31.__r_.__value_.__l.__data_);
    return v30;
  }

  --v31.__r_.__value_.__l.__size_;
  *(v31.__r_.__value_.__r.__words[0] + v31.__r_.__value_.__l.__size_) = 0;
  if (!sub_183686288((a1 + 8), &v31))
  {
    goto LABEL_22;
  }

LABEL_23:
  if (std::string::compare(&v31, "e"))
  {
    v12 = 16;
    v13 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    v14 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    size = v31.__r_.__value_.__l.__size_;
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v31.__r_.__value_.__l.__size_;
    }

    if (!v16)
    {
      goto LABEL_45;
    }

LABEL_36:
    v17 = *(a2 + 247);
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a2 + 232);
    }

    v18 = *(a2 + 128) + 8 * (*(a2 + 196) - a3) - 8 * v17;
    if (v16 >= 4)
    {
      v19 = v16 & 3;
      v20 = (v18 + 8 * (v16 & 0xFFFFFFFFFFFFFFFCLL));
      v21 = vdupq_n_s64(v12);
      v22 = (v18 + 16);
      v23 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v22[-1] = v21;
        *v22 = v21;
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v19 = v16;
      v20 = (*(a2 + 128) + 8 * (*(a2 + 196) - a3) - 8 * v17);
    }

    do
    {
      *v20++ = v12;
      --v19;
    }

    while (v19);
LABEL_44:
    v13 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    size = v31.__r_.__value_.__l.__size_;
    v14 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    goto LABEL_45;
  }

  if (*(a1 + 284))
  {
    v12 = 16;
  }

  else
  {
    v12 = 32;
  }

  v13 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  v14 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  size = v31.__r_.__value_.__l.__size_;
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v31.__r_.__value_.__l.__size_;
  }

  if (v16)
  {
    goto LABEL_36;
  }

LABEL_45:
  v24 = *(a2 + 247);
  v25 = *(a2 + 232);
  if ((v24 & 0x80000000) == 0)
  {
    v26 = *(a2 + 247);
  }

  else
  {
    v26 = *(a2 + 232);
  }

  if (v14 >= 0)
  {
    v27 = v13;
  }

  else
  {
    v27 = size;
  }

  v28 = v26 - v27;
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24 >= v28)
    {
      v29 = v6 + v24 - v28;
      if (v28 < 0x17)
      {
        goto LABEL_54;
      }

LABEL_61:
      operator new();
    }

LABEL_66:
    sub_18368688C();
  }

  if (v25 < v28)
  {
    goto LABEL_66;
  }

  if (v28 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v29 = *v6 + v25 - v28;
  if (v28 >= 0x17)
  {
    goto LABEL_61;
  }

LABEL_54:
  *(&__p.__r_.__value_.__s + 23) = v26 - v27;
  if (v26 == v27)
  {
    __p.__r_.__value_.__s.__data_[v28] = 0;
    if ((*(a2 + 247) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    memmove(&__p, v29, v28);
    __p.__r_.__value_.__s.__data_[v28] = 0;
    if ((*(a2 + 247) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }
  }

  operator delete(*v6);
LABEL_56:
  *v6 = __p;
  result = 1;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_65;
  }

  return result;
}

void sub_18382E524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_18382E548(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(a1 + 224) + 24 * *(*(a2 + 80) - 4));
  if (!std::string::compare(v6, "\) || !std::string::compare(v6, ".""))
  {
    if (!std::string::compare(v6, "\""))
    {
      v7 = " ";
    }

    else
    {
      v7 = ".";
    }

    v8 = a2 + 224;
    std::string::append((a2 + 224), v7);
    v9 = *(a2 + 208);
    v17 = *(v9 - 4);
    *(a2 + 208) = v9 - 4;
    if ((sub_18382AD0C(a1, a2, 0, a3) & 1) != 0 || !a3 && sub_18382B990(a1, a2, v10, v11, v12, v13))
    {
      return 1;
    }

    v15 = *(a2 + 247);
    if (v15 < 0)
    {
      v8 = *(a2 + 224);
      v16 = *(a2 + 232) - 1;
      *(a2 + 232) = v16;
    }

    else
    {
      v16 = v15 - 1;
      *(a2 + 247) = v16 & 0x7F;
    }

    *(v8 + v16) = 0;
    sub_183829298(a2 + 200, &v17);
  }

  return 0;
}

uint64_t sub_18382E688(void **a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 247);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 232);
  }

  if (v3 < 2)
  {
    return 0;
  }

  v8 = (a2 + 224);
  if (std::string::find((a2 + 224), 32, 0) == -1 && std::string::find(v8, 46, 0) == -1)
  {
    return 0;
  }

  if (*(a2 + 247) < 0)
  {
    sub_183688F34(__p, *(a2 + 224), *(a2 + 232));
  }

  else
  {
    *__p = *&v8->__r_.__value_.__l.__data_;
    v53 = v8->__r_.__value_.__r.__words[2];
  }

  if (v53 >= 0)
  {
    v9 = (__p + HIBYTE(v53));
  }

  else
  {
    v9 = (__p[0] + __p[1]);
  }

  if (v53 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  for (; v10 != v9; v10 = (v10 + 1))
  {
    *v10 = __tolower(*v10);
  }

  while (1)
  {
    while (1)
    {
      LODWORD(v11) = HIBYTE(v53);
      if (SHIBYTE(v53) < 0)
      {
        break;
      }

      if (!HIBYTE(v53))
      {
        goto LABEL_27;
      }

      v12 = HIBYTE(v53);
      v13 = *(&v51.__r_.__value_.__r.__words[2] + HIBYTE(v53) + 7);
      if (v13 == 32 || v13 == 46)
      {
        goto LABEL_27;
      }

      --HIBYTE(v53);
      *(__p + v12 - 1) = 0;
    }

    if (!__p[1])
    {
      break;
    }

    v14 = *(__p[0] + __p[1] - 1);
    if (v14 == 32 || v14 == 46)
    {
      break;
    }

    *(__p[0] + --__p[1]) = 0;
  }

LABEL_27:
  memset(&v51, 0, sizeof(v51));
  while ((v11 & 0x80) == 0)
  {
    if (!v11)
    {
      goto LABEL_65;
    }

    v11 = v11;
    v16 = *(&v51.__r_.__value_.__r.__words[2] + v11 + 7);
    v17 = __p;
    if (v16 != 46 && v16 != 32)
    {
      goto LABEL_40;
    }

LABEL_38:
    std::string::operator=(&v51, *(v17 + v11 - 1));
    if ((SHIBYTE(v53) & 0x8000000000000000) != 0)
    {
      v15 = __p[0];
      v11 = --__p[1];
    }

    else
    {
      v11 = SHIBYTE(v53) - 1;
      HIBYTE(v53) = v11 & 0x7F;
      v15 = __p;
    }

    *(v15 + v11) = 0;
    LODWORD(v11) = HIBYTE(v53);
  }

  v11 = __p[1];
  if (!__p[1])
  {
    goto LABEL_65;
  }

  v17 = __p[0];
  v18 = *(__p[0] + __p[1] - 1);
  if (v18 == 32 || v18 == 46)
  {
    goto LABEL_38;
  }

LABEL_40:
  v19 = sub_18382A848(__p, 0, 0, a1[22], a1[23]);
  v20 = a3;
  if (v19)
  {
    goto LABEL_41;
  }

  v34 = *(a2 + 200);
  if (*(a2 + 208) - v34 < 9uLL || *v34 != 1 || v34[1] != 9)
  {
LABEL_65:
    result = 0;
    goto LABEL_66;
  }

  result = sub_18382A848(__p, 0, 0, a1[25], a1[26]);
  v20 = a3;
  if (!result)
  {
LABEL_66:
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_94:
    v47 = result;
    operator delete(v51.__r_.__value_.__l.__data_);
    result = v47;
    if (SHIBYTE(v53) < 0)
    {
      goto LABEL_95;
    }

    return result;
  }

LABEL_41:
  v21 = v20 - *(a2 + 196);
  v22 = HIBYTE(v53);
  v23 = HIBYTE(v53);
  v24 = __p[1];
  if (v53 >= 0)
  {
    v25 = HIBYTE(v53);
  }

  else
  {
    v25 = __p[1];
  }

  if (v25)
  {
    v26 = *(a2 + 247);
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(a2 + 232);
    }

    memset_pattern16((*(a2 + 128) - 8 * (v26 + v21)), &unk_1839D8F40, 8 * v25);
    v22 = HIBYTE(v53);
    v24 = __p[1];
    v23 = HIBYTE(v53);
  }

  v27 = *(a2 + 247);
  v28 = *(a2 + 232);
  if ((v27 & 0x80000000) == 0)
  {
    v29 = *(a2 + 247);
  }

  else
  {
    v29 = *(a2 + 232);
  }

  if (v23 < 0)
  {
    v22 = v24;
  }

  size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v51.__r_.__value_.__l.__size_;
  }

  v31 = size + v22;
  v32 = v29 - v31;
  if ((v27 & 0x8000000000000000) == 0)
  {
    if (v27 >= v32)
    {
      v33 = v8 + v27 - v32;
      if (v32 < 0x17)
      {
        goto LABEL_58;
      }

LABEL_72:
      operator new();
    }

LABEL_96:
    sub_18368688C();
  }

  if (v28 < v32)
  {
    goto LABEL_96;
  }

  if (v32 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v33 = (v8->__r_.__value_.__r.__words[0] + v28 - v32);
  if (v32 >= 0x17)
  {
    goto LABEL_72;
  }

LABEL_58:
  HIBYTE(v50) = v29 - v31;
  if (v29 != v31)
  {
    memmove(&v49, v33, v32);
  }

  *(&v49 + v32) = 0;
  if (*(a2 + 247) < 0)
  {
    operator delete(v8->__r_.__value_.__l.__data_);
  }

  *&v8->__r_.__value_.__l.__data_ = v49;
  v8->__r_.__value_.__r.__words[2] = v50;
  v35 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  v36 = (v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  v37 = v51.__r_.__value_.__l.__size_;
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v51.__r_.__value_.__l.__size_;
  }

  if (v38)
  {
    v39 = 0;
    v40 = *(a2 + 120);
    v41 = ((*(a2 + 128) - v40) >> 3) - (v32 + v21);
    do
    {
      v42 = !v36;
      if (v36)
      {
        v43 = v51.__r_.__value_.__r.__words[0];
      }

      else
      {
        v43 = &v51;
      }

      v44 = v43->__r_.__value_.__s.__data_[v39];
      if (!v42)
      {
        v35 = v37;
      }

      if (v44 == 32)
      {
        v45 = 0x2000;
      }

      else
      {
        v45 = 4;
      }

      *(v40 + 8 * (v41 - v35) + 8 * v39++) = v45;
      v35 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      v36 = (v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      v37 = v51.__r_.__value_.__l.__size_;
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v51.__r_.__value_.__l.__size_;
      }
    }

    while (v46 > v39);
  }

  result = 1;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_94;
  }

LABEL_67:
  if (SHIBYTE(v53) < 0)
  {
LABEL_95:
    v48 = result;
    operator delete(__p[0]);
    return v48;
  }

  return result;
}

void sub_18382EB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_18382EB80(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v5 = *(a2 + 247);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 232);
  }

  if (v5)
  {
    if (!sub_18382AD0C(a1, a2, 1, a4))
    {
      operator new();
    }

    *a3 = 1;
  }

  else
  {
    *a3 = 1;
  }
}

void sub_18382F354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25)
  {
    operator delete(v25);
    if (a18 < 0)
    {
LABEL_7:
      operator delete(__p);
      if ((a25 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_9:
      operator delete(a20);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_7;
  }

  if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_9;
}

void sub_18382F40C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 196))
  {
    goto LABEL_13;
  }

  v4 = (*(a1 + 224) + 24 * *(*(a2 + 80) - 4));
  v5 = v4[23];
  if ((v5 & 0x80000000) == 0)
  {
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v6 = *v4;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (*(v4 + 1) != 1)
  {
    goto LABEL_13;
  }

  v6 = **v4;
  if ((v6 & 0x80000000) != 0)
  {
LABEL_9:
    v7 = a1;
    v8 = a2;
    v9 = a3;
    v10 = __maskrune(v6, 0x100uLL);
    a2 = v8;
    a3 = v9;
    v11 = v10;
    a1 = v7;
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_13:

    sub_18382CD08(a1, a2, a3, 0);
    return;
  }

LABEL_5:
  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x100) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:

  sub_18382EB80(a1, a2, a3, 0);
}

uint64_t sub_18382F4EC(uint64_t a1, void *a2, float a3, float a4)
{
  *a1 = &unk_1EF1BE8D0;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 44) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = a2[1];
  v33 = (a1 + 16);
  if (v6 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_18383B70C();
  }

  *(a1 + 40) = 0;
  v7 = *a2;
  if (a2[1] != *a2)
  {
    for (i = 0; 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > i; ++i)
    {
      v11 = v7;
      v9 = *v7;
      v10 = v11[1];
      memset(__p, 0, 24);
      v12 = v10 - v9;
      if (v12)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18369F168();
      }

      v13 = *(*a2 + 8) - **a2;
      if (v13)
      {
        v14 = 0;
        v15 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = (*(*a2 + 24 * i) + 24);
        do
        {
          v18 = *v17;
          v17 += 5;
          if (v18)
          {
            *((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v14;
            ++*(a1 + 40);
          }

          ++v14;
        }

        while (v16 != v14);
      }

      v20 = *(a1 + 24);
      v19 = *(a1 + 32);
      if (v20 >= v19)
      {
        v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *v33) >> 3);
        v23 = v22 + 1;
        if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_18383B70C();
        }

        v24 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *v33) >> 3);
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x555555555555555)
        {
          v25 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v23;
        }

        v38 = v33;
        if (v25)
        {
          if (v25 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_183688F00();
        }

        __p[3] = 0;
        v35 = 24 * v22;
        v36 = 24 * v22;
        v37 = 0;
        sub_18369F384((24 * v22), __p);
        v26 = v36;
        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v29 = (v35 + v28 - v27);
        if (v27 != v28)
        {
          v30 = *(a1 + 16);
          v31 = (v35 + v28 - v27);
          do
          {
            *v31 = *v30;
            *(v31 + 8) = *(v30 + 8);
            *v30 = 0;
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            v30 += 24;
            v31 += 24;
          }

          while (v30 != v27);
          do
          {
            if (*v28)
            {
              operator delete(*v28);
            }

            v28 += 3;
          }

          while (v28 != v27);
          v28 = *v33;
        }

        *(a1 + 16) = v29;
        *(a1 + 24) = v26 + 24;
        *(a1 + 32) = v37;
        if (v28)
        {
          operator delete(v28);
        }

        *(a1 + 24) = v26 + 24;
        v21 = __p[0];
        if (!__p[0])
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_18369F384(*(a1 + 24), __p);
        *(a1 + 24) = v20 + 24;
        *(a1 + 24) = v20 + 24;
        v21 = __p[0];
        if (!__p[0])
        {
          goto LABEL_6;
        }
      }

      operator delete(v21);
LABEL_6:
      v7 = *a2;
    }
  }

  return a1;
}

void sub_18382F95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_18383D7C4(a10);
  _Unwind_Resume(a1);
}

void sub_18382F9C4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 196) == 1)
  {
    v9 = objc_msgSend_UTF8String(@"past_attention_weights", a2, a3, a4, a5, a6);
    v10 = strlen(v9);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_146;
    }

    v11 = v10;
    v145 = a3;
    if (v10 >= 0x17)
    {
      operator new();
    }

    v148 = v10;
    if (v10)
    {
      memmove(&__dst, v9, v10);
    }

    *(&__dst + v11) = 0;
    v12 = *(a2 + 8);
    if (!v12)
    {
LABEL_33:
      sub_1836868A4("map::at:  key not found");
    }

    v13 = v148;
    v14 = __dst;
    v15 = (v148 & 0x80u) == 0 ? v148 : v147;
    v16 = (v148 & 0x80u) == 0 ? &__dst : __dst;
    while (1)
    {
      while (1)
      {
        v17 = *(v12 + 55);
        if (v17 >= 0)
        {
          v18 = *(v12 + 55);
        }

        else
        {
          v18 = v12[5];
        }

        if (v17 >= 0)
        {
          v19 = (v12 + 4);
        }

        else
        {
          v19 = v12[4];
        }

        if (v18 >= v15)
        {
          v20 = v15;
        }

        else
        {
          v20 = v18;
        }

        v21 = memcmp(v16, v19, v20);
        v22 = v15 < v18;
        if (v21)
        {
          v22 = v21 < 0;
        }

        if (!v22)
        {
          break;
        }

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_33;
        }
      }

      v23 = memcmp(v19, v16, v20);
      v29 = v18 < v15;
      if (v23)
      {
        v29 = v23 < 0;
      }

      if (!v29)
      {
        break;
      }

      v12 = v12[1];
      if (!v12)
      {
        goto LABEL_33;
      }
    }

    v30 = objc_msgSend_shape(v12[7], v24, v25, v26, v27, v28);
    v35 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, 1, v32, v33, v34);
    v41 = objc_msgSend_intValue(v35, v36, v37, v38, v39, v40);

    if (v13 < 0)
    {
      operator delete(v14);
    }

    v47 = objc_msgSend_UTF8String(@"past_attention_weights", v42, v43, v44, v45, v46);
    v48 = strlen(v47);
    if (v48 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_146;
    }

    v49 = v48;
    v144 = v41;
    if (v48 >= 0x17)
    {
      operator new();
    }

    v148 = v48;
    if (v48)
    {
      memmove(&__dst, v47, v48);
    }

    *(&__dst + v49) = 0;
    v50 = *(a2 + 8);
    if (!v50)
    {
LABEL_66:
      sub_1836868A4("map::at:  key not found");
    }

    v51 = v148;
    v52 = __dst;
    v53 = (v148 & 0x80u) == 0 ? v148 : v147;
    v54 = (v148 & 0x80u) == 0 ? &__dst : __dst;
    while (1)
    {
      while (1)
      {
        v55 = *(v50 + 55);
        if (v55 >= 0)
        {
          v56 = *(v50 + 55);
        }

        else
        {
          v56 = v50[5];
        }

        if (v55 >= 0)
        {
          v57 = (v50 + 4);
        }

        else
        {
          v57 = v50[4];
        }

        if (v56 >= v53)
        {
          v58 = v53;
        }

        else
        {
          v58 = v56;
        }

        v59 = memcmp(v54, v57, v58);
        v60 = v53 < v56;
        if (v59)
        {
          v60 = v59 < 0;
        }

        if (!v60)
        {
          break;
        }

        v50 = *v50;
        if (!v50)
        {
          goto LABEL_66;
        }
      }

      v61 = memcmp(v57, v54, v58);
      v67 = v56 < v53;
      if (v61)
      {
        v67 = v61 < 0;
      }

      if (!v67)
      {
        break;
      }

      v50 = v50[1];
      if (!v50)
      {
        goto LABEL_66;
      }
    }

    v68 = objc_msgSend_shape(v50[7], v62, v63, v64, v65, v66);
    v73 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, 2, v70, v71, v72);
    v79 = objc_msgSend_intValue(v73, v74, v75, v76, v77, v78);

    if (v51 < 0)
    {
      operator delete(v52);
    }

    v85 = objc_msgSend_UTF8String(@"attention_weights", v80, v81, v82, v83, v84);
    v86 = strlen(v85);
    if (v86 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_146;
    }

    v87 = v86;
    v142 = v79;
    if (v86 >= 0x17)
    {
      operator new();
    }

    v148 = v86;
    if (v86)
    {
      memmove(&__dst, v85, v86);
    }

    *(&__dst + v87) = 0;
    v88 = *(a2 + 8);
    if (!v88)
    {
LABEL_99:
      sub_1836868A4("map::at:  key not found");
    }

    v89 = v148;
    v90 = __dst;
    v91 = (v148 & 0x80u) == 0 ? v148 : v147;
    v92 = (v148 & 0x80u) == 0 ? &__dst : __dst;
    while (1)
    {
      while (1)
      {
        v93 = *(v88 + 55);
        if (v93 >= 0)
        {
          v94 = *(v88 + 55);
        }

        else
        {
          v94 = v88[5];
        }

        if (v93 >= 0)
        {
          v95 = (v88 + 4);
        }

        else
        {
          v95 = v88[4];
        }

        if (v94 >= v91)
        {
          v96 = v91;
        }

        else
        {
          v96 = v94;
        }

        v97 = memcmp(v92, v95, v96);
        v98 = v91 < v94;
        if (v97)
        {
          v98 = v97 < 0;
        }

        if (!v98)
        {
          break;
        }

        v88 = *v88;
        if (!v88)
        {
          goto LABEL_99;
        }
      }

      v99 = memcmp(v95, v92, v96);
      v100 = v94 < v91;
      if (v99)
      {
        v100 = v99 < 0;
      }

      if (!v100)
      {
        break;
      }

      v88 = v88[1];
      if (!v88)
      {
        goto LABEL_99;
      }
    }

    v101 = v88[7];
    v112 = objc_msgSend_dataPointer(v101, v102, v103, v104, v105, v106);
    if (v89 < 0)
    {
      operator delete(v90);
    }

    v113 = objc_msgSend_UTF8String(@"past_attention_weights", v107, v108, v109, v110, v111, v142);
    v114 = strlen(v113);
    if (v114 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_146:
      sub_183688FF0();
    }

    v115 = v114;
    if (v114 >= 0x17)
    {
      operator new();
    }

    v148 = v114;
    if (v114)
    {
      memmove(&__dst, v113, v114);
    }

    *(&__dst + v115) = 0;
    v116 = *(a2 + 8);
    if (!v116)
    {
LABEL_132:
      sub_1836868A4("map::at:  key not found");
    }

    v117 = v148;
    v118 = __dst;
    if ((v148 & 0x80u) == 0)
    {
      v119 = v148;
    }

    else
    {
      v119 = v147;
    }

    if ((v148 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    while (1)
    {
      while (1)
      {
        v121 = *(v116 + 55);
        if (v121 >= 0)
        {
          v122 = *(v116 + 55);
        }

        else
        {
          v122 = v116[5];
        }

        if (v121 >= 0)
        {
          v123 = (v116 + 4);
        }

        else
        {
          v123 = v116[4];
        }

        if (v122 >= v119)
        {
          v124 = v119;
        }

        else
        {
          v124 = v122;
        }

        v125 = memcmp(p_dst, v123, v124);
        v126 = v119 < v122;
        if (v125)
        {
          v126 = v125 < 0;
        }

        if (!v126)
        {
          break;
        }

        v116 = *v116;
        if (!v116)
        {
          goto LABEL_132;
        }
      }

      v127 = memcmp(v123, p_dst, v124);
      v128 = v122 < v119;
      if (v127)
      {
        v128 = v127 < 0;
      }

      if (!v128)
      {
        break;
      }

      v116 = v116[1];
      if (!v116)
      {
        goto LABEL_132;
      }
    }

    v129 = v116[7];
    v135 = objc_msgSend_dataPointer(v129, v130, v131, v132, v133, v134);
    if (v117 < 0)
    {
      v136 = v135;
      operator delete(v118);
      v135 = v136;
    }

    v137 = 0.0;
    if (v144 >= 1 && v143 >= 1)
    {
      v138 = 0;
      v139 = 0;
      v140 = 4 * v143;
      do
      {
        for (i = 0; i != v143; ++i)
        {
          if (((*(*(*(a1 + 16) + 24 * v138) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) != 0 && (*(v112 + 4 * i) + *(v135 + 4 * i)) > *(a1 + 44))
          {
            ++v139;
          }
        }

        ++v138;
        v135 += v140;
        v112 += v140;
      }

      while (v138 != v144);
      v137 = v139;
    }

    *v145 = 1;
    logf(v137 / *(a1 + 40));
  }

  else
  {
    *a3 = 1;
  }
}

void sub_183830114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18383016C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if ((a17 & 0x80) == 0)
  {
    JUMPOUT(0x183830164);
  }

  JUMPOUT(0x18383015CLL);
}

void sub_18383017C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if ((a17 & 0x80) == 0)
  {
    JUMPOUT(0x183830164);
  }

  JUMPOUT(0x18383015CLL);
}

float sub_18383018C(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2[10];
  v7 = (v6 - a2[9]) >> 2;
  v8 = 0.0;
  if (v7 >= 2 && !std::string::compare((*(a1 + 16) + 24 * *(v6 - 4)), "0"))
  {
    v9 = (*(a1 + 16) + 24 * *(a2[9] + 4 * (v7 - 2)));
    v10 = *(v9 + 23);
    if (v10 < 0)
    {
      if (v9[1] != 1)
      {
        goto LABEL_13;
      }

      v11 = **v9;
      if ((v11 & 0x80000000) == 0)
      {
LABEL_6:
        v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x100;
        goto LABEL_10;
      }
    }

    else
    {
      if (v10 != 1)
      {
        goto LABEL_13;
      }

      v11 = *v9;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    v12 = __maskrune(v11, 0x100uLL);
LABEL_10:
    if (v12)
    {
      v8 = -0.32154;
    }

    else
    {
      v8 = 0.0;
    }
  }

LABEL_13:
  v13 = a2[25];
  if (((a2[26] - v13) & 0x3FFFFFFFCLL) == 8 && !*v13 && v13[1] == 9)
  {
    v8 = v8 + -0.321535349;
  }

  *a3 = 1;
  return v8 * *(a1 + 8);
}

void sub_183830508(_Unwind_Exception *a1)
{
  sub_18368922C(v1 + 32, *(v1 + 40));
  sub_183689748(v1);
  _Unwind_Resume(a1);
}

void sub_18383053C(uint64_t *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v7 = (v2 + v3);
      *(sub_1836897BC(&v5, (v2 + v3), &unk_1839CD620, &v7) + 14) = v4++;
      v2 = *a1;
      v3 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v4);
  }

  operator new();
}

void sub_183830718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  MEMORY[0x1865E5EC0](v11, 0x10A1C40A9CC8DD9, a3, a4, a5, a6, a7, a8);
  sub_18368922C(&a10, a11);
  _Unwind_Resume(a1);
}

void sub_183830760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  (*(*v11 + 16))(v11, a2, a3, a4, a5, a6, a7, a8);
  sub_18368922C(&a10, a11);
  _Unwind_Resume(a1);
}

void sub_183830C90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{
  MEMORY[0x1865E5EC0](v10, 0x10E1C40278FA830, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void sub_183830CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{
  (*(*v10 + 16))(v10, a2, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void sub_183830D0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1 + 640;
  if (v5 != a2)
  {
    *(a1 + 672) = *(a2 + 32);
    sub_18383E144(v5, *(a2 + 16), 0);
  }

  if ((a1 + 720) != a3)
  {
    sub_18383E678((a1 + 720), *a3, a3[1], 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
  }

  if (*(a1 + 704))
  {
    v6 = *(a1 + 696);
    if (v6)
    {
      do
      {
        v7 = *v6;
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    *(a1 + 696) = 0;
    v8 = *(a1 + 688);
    if (v8)
    {
      bzero(*(a1 + 680), 8 * v8);
    }

    *(a1 + 704) = 0;
  }

  v9 = *(a1 + 728);
  v10 = *(a1 + 720);
  if (v9 != v10)
  {
    v11 = 0;
    do
    {
      v12 = *(v10 + 40 * v11 + 16);
      if (v12)
      {
        do
        {
          v13 = *(v12 + 4);
          v14 = &v13;
          *(sub_18383EA88((a1 + 680), &v13, &unk_1839CD620, &v14) + 5) = v11;
          v12 = *v12;
        }

        while (v12);
        v9 = *(a1 + 728);
        v10 = *(a1 + 720);
      }

      ++v11;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3) > v11);
  }
}

void sub_183830E68(void *a1, uint64_t *a2, uint64_t **a3, int a4, void *a5, int a6, int a7)
{
  v130 = *MEMORY[0x1E69E9840];
  v123 = a5;
  v15 = objc_msgSend_UTF8String(@"decoder_state_h", v10, v11, v12, v13, v14);
  v16 = strlen(v15);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_183688FF0();
  }

  v21 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  v128 = v16;
  if (v16)
  {
    memmove(&__dst, v15, v16);
  }

  *(&__dst + v21) = 0;
  v22 = objc_msgSend_objectForKeyedSubscript_(v123, v17, @"new_decoder_state_h", v18, v19, v20);
  sub_183829674(a3, &__dst, v22, a6);

  if (v128 < 0)
  {
    operator delete(__dst);
  }

  v28 = objc_msgSend_UTF8String(@"decoder_state_c", v23, v24, v25, v26, v27);
  v29 = strlen(v28);
  if (v29 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_183688FF0();
  }

  v34 = v29;
  if (v29 >= 0x17)
  {
    operator new();
  }

  v128 = v29;
  if (v29)
  {
    memmove(&__dst, v28, v29);
  }

  *(&__dst + v34) = 0;
  v35 = objc_msgSend_objectForKeyedSubscript_(v123, v30, @"new_decoder_state_c", v31, v32, v33);
  sub_183829674(a3, &__dst, v35, a6);

  if (v128 < 0)
  {
    operator delete(__dst);
  }

  v41 = objc_msgSend_UTF8String(@"attention_weights", v36, v37, v38, v39, v40);
  v42 = strlen(v41);
  if (v42 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_183688FF0();
  }

  v47 = v42;
  if (v42 >= 0x17)
  {
    operator new();
  }

  v128 = v42;
  if (v42)
  {
    memmove(&__dst, v41, v42);
  }

  *(&__dst + v47) = 0;
  v48 = objc_msgSend_objectForKeyedSubscript_(v123, v43, @"attention_weights", v44, v45, v46);
  sub_183829674(a3, &__dst, v48, a6);

  if (v128 < 0)
  {
    operator delete(__dst);
  }

  v54 = objc_msgSend_UTF8String(@"y", v49, v50, v51, v52, v53);
  v55 = strlen(v54);
  if (v55 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_183688FF0();
  }

  v60 = v55;
  if (v55 >= 0x17)
  {
    operator new();
  }

  v128 = v55;
  if (v55)
  {
    memmove(&__dst, v54, v55);
  }

  *(&__dst + v60) = 0;
  v61 = objc_msgSend_objectForKeyedSubscript_(v123, v56, @"y", v57, v58, v59);
  sub_183829674(a3, &__dst, v61, a6);

  if (v128 < 0)
  {
    operator delete(__dst);
  }

  v128 = 1;
  LOWORD(__dst) = 121;
  __p[0] = &__dst;
  v62 = sub_18383C538(a3, &__dst, __p);
  v68 = objc_msgSend_count(v62[7], v63, v64, v65, v66, v67);
  if (v68)
  {
    if (!(v68 >> 61))
    {
      operator new();
    }

    sub_18383B70C();
  }

  if (v128 < 0)
  {
    operator delete(__dst);
  }

  v128 = 1;
  LOWORD(__dst) = 121;
  __p[0] = &__dst;
  v69 = sub_18383C538(a3, &__dst, __p)[7];
  v75 = objc_msgSend_dataPointer(v69, v70, v71, v72, v73, v74);
  if (v128 < 0)
  {
    operator delete(__dst);
  }

  v76 = 0;
  for (i = 4; ; i += 8)
  {
    v128 = 1;
    LOWORD(__dst) = 121;
    __p[0] = &__dst;
    v78 = sub_18383C538(a3, &__dst, __p);
    v84 = objc_msgSend_count(v78[7], v79, v80, v81, v82, v83);
    if (v128 < 0)
    {
      v85 = v84;
      operator delete(__dst);
      v84 = v85;
    }

    if (v84 <= v76)
    {
      break;
    }

    *(i - 4) = *(v75 + 4 * v76);
    *i = v76++;
  }

  v86 = 0;
  v125 = a4;
  while (1)
  {
    v128 = 1;
    LOWORD(__dst) = 121;
    __p[0] = &__dst;
    v87 = sub_18383C538(a3, &__dst, __p);
    v93 = objc_msgSend_count(v87[7], v88, v89, v90, v91, v92);
    if (v128 < 0)
    {
      v94 = v93;
      operator delete(__dst);
      v93 = v94;
    }

    if (v93 <= v86)
    {
      break;
    }

    v95 = *(8 * v86);
    if (v95 > *(a2 + 191))
    {
      v96 = a2[81];
      if (v96)
      {
        v97 = vcnt_s8(v96);
        v97.i16[0] = vaddlv_u8(v97);
        if (v97.u32[0] > 1uLL)
        {
          v98 = v86;
          if (*&v96 <= v86)
          {
            v98 = v86 % *&v96;
          }
        }

        else
        {
          v98 = (*&v96 + 0x7FFFFFFFLL) & v86;
        }

        v99 = a2[80];
        v100 = *(v99 + 8 * v98);
        if (v100)
        {
          v101 = *v100;
          if (*v100)
          {
            v102 = *&v96 - 1;
            if (v97.u32[0] < 2uLL)
            {
              while (1)
              {
                v103 = v101[1];
                if (v103 == v86)
                {
                  if (v86 == *(v101 + 4))
                  {
                    goto LABEL_72;
                  }
                }

                else if ((v103 & v102) != v98)
                {
                  goto LABEL_46;
                }

                v101 = *v101;
                if (!v101)
                {
                  goto LABEL_46;
                }
              }
            }

            do
            {
              v104 = v101[1];
              if (v104 == v86)
              {
                if (v86 == *(v101 + 4))
                {
LABEL_72:
                  if (v97.u32[0] > 1uLL)
                  {
                    v105 = v86;
                    if (*&v96 <= v86)
                    {
                      v105 = v86 % v96.i32[0];
                    }
                  }

                  else
                  {
                    v105 = (*&v96 + 0x7FFFFFFFLL) & v86;
                  }

                  v106 = *(v99 + 8 * v105);
                  if (!v106 || (v107 = *v106) == 0)
                  {
LABEL_102:
                    sub_1836868A4("unordered_map::at: key not found");
                  }

                  if (v97.u32[0] < 2uLL)
                  {
                    while (1)
                    {
                      v108 = v107[1];
                      if (v108 == v86)
                      {
                        if (v86 == *(v107 + 4))
                        {
                          goto LABEL_84;
                        }
                      }

                      else if ((v108 & v102) != v105)
                      {
                        goto LABEL_102;
                      }

                      v107 = *v107;
                      if (!v107)
                      {
                        goto LABEL_102;
                      }
                    }
                  }

                  while (1)
                  {
                    v112 = v107[1];
                    if (v112 == v86)
                    {
                      if (v86 == *(v107 + 4))
                      {
LABEL_84:
                        v109 = v107[3];
                        v110 = v107[4];
                        while (v109 != v110)
                        {
                          v111 = *v109;
                          if (*(8 * v111) < v95)
                          {
                            *(4 * v111) = *(4 * v111) + (v95 * v109[1]);
                            v125 = fmin((v125 + 1), (*(a2 + 188) + a4));
                          }

                          v109 += 2;
                        }

                        goto LABEL_46;
                      }
                    }

                    else
                    {
                      if (v112 >= *&v96)
                      {
                        v112 %= *&v96;
                      }

                      if (v112 != v105)
                      {
                        goto LABEL_102;
                      }
                    }

                    v107 = *v107;
                    if (!v107)
                    {
                      goto LABEL_102;
                    }
                  }
                }
              }

              else
              {
                if (v104 >= *&v96)
                {
                  v104 %= *&v96;
                }

                if (v104 != v98)
                {
                  break;
                }
              }

              v101 = *v101;
            }

            while (v101);
          }
        }
      }
    }

LABEL_46:
    ++v86;
  }

  v113 = 0;
  for (j = 0; ; j += 2)
  {
    v128 = 1;
    LOWORD(__dst) = 121;
    __p[0] = &__dst;
    v115 = sub_18383C538(a3, &__dst, __p);
    v121 = objc_msgSend_count(v115[7], v116, v117, v118, v119, v120);
    if (v128 < 0)
    {
      v122 = v121;
      operator delete(__dst);
      v121 = v122;
    }

    if (v121 <= v113)
    {
      break;
    }

    *j = *(4 * v113++) + *j;
  }

  sub_18383EDC0(0, 0, 0, 1);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_183833F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1838342E8(a19);
  if (a20)
  {
    operator delete(a20);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_1838341D0(uint64_t a1, _DWORD *a2)
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
    sub_18368964C();
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

    sub_183688F00();
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

void **sub_1838342E8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_18383AB38(v3 - 248);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_183834344(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t **a4@<X3>, int a5@<W5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v1008 = *MEMORY[0x1E69E9840];
  v931 = a2;
  v11 = objc_alloc(MEMORY[0x1E695FED0]);
  v12 = a4[6];
  v986 = &unk_1EF1ED8E8;
  v13 = MEMORY[0x1E696AD98];
  v19 = objc_msgSend_numInputChannels(v931, v14, v15, v16, v17, v18);
  objc_msgSend_numberWithInteger_(v13, v20, v19, v21, v22, v23);
  v958 = a3;
  v946 = a5;
  v987 = v961 = a1;
  v24 = v987;
  v29 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v25, **a4, v26, v27, v28);
  v988 = v29;
  v34 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v30, (*a4)[1], v31, v32, v33);
  v989 = v34;
  v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v35, &v986, 4, v36, v37);
  v985[0] = &unk_1EF1ED8E8;
  v985[1] = &unk_1EF1ED8E8;
  v39 = MEMORY[0x1E696AD98];
  v45 = objc_msgSend_numInputChannels(v931, v40, v41, v42, v43, v44);
  v50 = objc_msgSend_numberWithInteger_(v39, v46, v45, v47, v48, v49);
  v985[2] = v50;
  v55 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v51, **a4, v52, v53, v54);
  v985[3] = v55;
  v59 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v56, v985, 4, v57, v58);
  v926 = objc_msgSend_initWithDataPointer_shape_dataType_strides_deallocator_error_(v11, v60, v12, v38, 65568, v59, 0, 0);

  v61 = objc_alloc(MEMORY[0x1E695FE48]);
  v983 = @"image";
  v984 = v926;
  v64 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v62, &v984, &v983, 1, v63);
  v925 = objc_msgSend_initWithDictionary_error_(v61, v65, v64, 0, v66, v67);

  v68 = objc_alloc(MEMORY[0x1E695FF08]);
  v927 = objc_msgSend_initWithUsesCPUOnly_(v68, v69, 1, v70, v71, v72);
  v78 = objc_msgSend_encoderModel(v931, v73, v74, v75, v76, v77);
  v968 = 0;
  v930 = objc_msgSend_predictionFromFeatures_options_error_(v78, v79, v925, v927, &v968, v80);
  v929 = v968;

  if (!v930)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v85 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v91 = objc_msgSend_localizedDescription(v929, v86, v87, v88, v89, v90);
      LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
      *(buf.__r_.__value_.__r.__words + 4) = v91;
      _os_log_impl(&dword_18366B000, v85, OS_LOG_TYPE_ERROR, "An error occurred when running math encoder inference: %@", &buf, 0xCu);
    }

    if (qword_1EA84DC48 == -1)
    {
      v92 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v92 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    v98 = objc_msgSend_localizedDescription(v929, v93, v94, v95, v96, v97);
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = v98;
    _os_log_impl(&dword_18366B000, v92, OS_LOG_TYPE_FAULT, "An error occurred when running math encoder inference: %@", &buf, 0xCu);

    goto LABEL_9;
  }

LABEL_10:
  v99 = *(a6 + 24);
  if (!v99 || !(*(*v99 + 48))(v99))
  {
    v100 = objc_msgSend_featureValueForName_(v930, v81, @"encoded_image", v82, v83, v84);
    v106 = objc_msgSend_multiArrayValue(v100, v101, v102, v103, v104, v105);
    v936 = sub_183828F68(v106);

    v111 = objc_msgSend_featureValueForName_(v930, v107, @"encoded_image_projected", v108, v109, v110);
    v117 = objc_msgSend_multiArrayValue(v111, v112, v113, v114, v115, v116);
    v937 = sub_183828F68(v117);

    v118 = MEMORY[0x1E695FED0];
    v982 = v936;
    v122 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v119, &v982, 1, v120, v121);
    v945 = objc_msgSend_multiArrayByConcatenatingMultiArrays_alongAxis_dataType_(v118, v123, v122, 0, 65568, v124);

    v125 = MEMORY[0x1E695FED0];
    v981 = v937;
    v129 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v126, &v981, 1, v127, v128);
    v922 = objc_msgSend_multiArrayByConcatenatingMultiArrays_alongAxis_dataType_(v125, v130, v129, 0, 65568, v131);

    __s2 = v931;
    v137 = objc_msgSend_activeAlphabet(__s2, v132, v133, v134, v135, v136);
    LOBYTE(v129) = v137 == 0;

    if ((v129 & 1) == 0)
    {
      v143 = objc_msgSend_codeMap(__s2, v138, v139, v140, v141, v142);
      v149 = objc_msgSend_count(v143, v144, v145, v146, v147, v148);
      if (v149)
      {
        if (!(v149 >> 62))
        {
          operator new();
        }

        sub_18369761C();
      }

      v971 = 0u;
      v972 = 0u;
      __dst = 0u;
      v970 = 0u;
      v155 = objc_msgSend_activeAlphabet(__s2, v150, v151, v152, v153, v154);
      v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v156, &__dst, &buf, 16, v157);
      if (v163)
      {
        v164 = *v970;
        do
        {
          for (i = 0; i != v163; ++i)
          {
            if (*v970 != v164)
            {
              objc_enumerationMutation(v155);
            }

            v166 = *(*(&__dst + 1) + 8 * i);
            v167 = objc_msgSend_codeMap(__s2, v158, v159, v160, v161, v162);
            v172 = objc_msgSend_containsObject_(v167, v168, v166, v169, v170, v171);

            if (v172)
            {
              v173 = objc_msgSend_codeMap(__s2, v158, v159, v160, v161, v162);
              *(4 * objc_msgSend_indexOfObject_(v173, v174, v166, v175, v176, v177)) = 1065353216;
            }
          }

          v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v158, &__dst, &buf, 16, v162);
        }

        while (v163);
      }
    }

    v965 = 0;
    v966 = 0;
    v967 = 0;
    v178 = v930;
    *&buf.__r_.__value_.__r.__words[1] = 0uLL;
    buf.__r_.__value_.__r.__words[0] = &buf.__r_.__value_.__l.__size_;
    v992[1] = 0;
    v992[0] = 0;
    v991 = v992;
    v1002[1] = 0;
    v1002[0] = 0;
    v993 = 0u;
    v994 = 0u;
    v995 = 0u;
    v996 = 0u;
    v997 = 0u;
    v998 = 0u;
    v999 = 0u;
    v1000 = 0;
    v1001 = v1002;
    v1003 = 0.0;
    v1004 = 0;
    v1007 = 0u;
    v1006 = 0u;
    v1005 = 0u;
    v183 = objc_msgSend_featureValueForName_(v178, v179, @"decoder_state_h", v180, v181, v182);
    v189 = objc_msgSend_multiArrayValue(v183, v184, v185, v186, v187, v188);
    v190 = sub_183828F68(v189);
    v196 = objc_msgSend_UTF8String(@"decoder_state_h", v191, v192, v193, v194, v195);
    v197 = strlen(v196);
    if (v197 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_183688FF0();
    }

    v198 = v197;
    if (v197 >= 0x17)
    {
      operator new();
    }

    BYTE7(v970) = v197;
    if (v197)
    {
      memmove(&__dst, v196, v197);
    }

    *(&__dst + v198) = 0;
    v974[0] = &__dst;
    v199 = sub_18383C538(&buf, &__dst, v974);
    v200 = v199[7];
    v199[7] = v190;

    if (SBYTE7(v970) < 0)
    {
      operator delete(__dst);
    }

    v205 = objc_msgSend_featureValueForName_(v178, v201, @"decoder_state_c", v202, v203, v204);
    v211 = objc_msgSend_multiArrayValue(v205, v206, v207, v208, v209, v210);
    v212 = sub_183828F68(v211);
    v218 = objc_msgSend_UTF8String(@"decoder_state_c", v213, v214, v215, v216, v217);
    v219 = strlen(v218);
    if (v219 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_183688FF0();
    }

    v220 = v219;
    if (v219 >= 0x17)
    {
      operator new();
    }

    BYTE7(v970) = v219;
    if (v219)
    {
      memmove(&__dst, v218, v219);
    }

    *(&__dst + v220) = 0;
    v974[0] = &__dst;
    v221 = sub_18383C538(&buf, &__dst, v974);
    v222 = v221[7];
    v221[7] = v212;

    if (SBYTE7(v970) < 0)
    {
      operator delete(__dst);
    }

    v227 = objc_msgSend_featureValueForName_(v178, v223, @"past_attention_weights", v224, v225, v226);
    v233 = objc_msgSend_multiArrayValue(v227, v228, v229, v230, v231, v232);
    v234 = sub_183828F68(v233);
    v240 = objc_msgSend_UTF8String(@"past_attention_weights", v235, v236, v237, v238, v239);
    v241 = strlen(v240);
    if (v241 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_183688FF0();
    }

    v242 = v241;
    if (v241 >= 0x17)
    {
      operator new();
    }

    BYTE7(v970) = v241;
    if (v241)
    {
      memmove(&__dst, v240, v241);
    }

    *(&__dst + v242) = 0;
    v974[0] = &__dst;
    v243 = sub_18383C538(&buf, &__dst, v974);
    v244 = v243[7];
    v243[7] = v234;

    if (SBYTE7(v970) < 0)
    {
      operator delete(__dst);
    }

    v249 = objc_msgSend_featureValueForName_(v178, v245, @"y", v246, v247, v248);
    v255 = objc_msgSend_multiArrayValue(v249, v250, v251, v252, v253, v254);
    v256 = sub_183828F68(v255);
    v262 = objc_msgSend_UTF8String(@"y", v257, v258, v259, v260, v261);
    v263 = strlen(v262);
    if (v263 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_183688FF0();
    }

    v264 = v263;
    if (v263 >= 0x17)
    {
      operator new();
    }

    BYTE7(v970) = v263;
    if (v263)
    {
      memmove(&__dst, v262, v263);
    }

    *(&__dst + v264) = 0;
    v974[0] = &__dst;
    v265 = sub_18383C538(&buf, &__dst, v974);
    v266 = v265[7];
    v265[7] = v256;

    if (SBYTE7(v970) < 0)
    {
      operator delete(__dst);
    }

    if (v966 >= v967)
    {
      v268 = 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3) + 1;
      if (v268 > 0x108421084210842)
      {
        sub_18383B70C();
      }

      if (0xDEF7BDEF7BDEF7BELL * ((v967 - v965) >> 3) > v268)
      {
        v268 = 0xDEF7BDEF7BDEF7BELL * ((v967 - v965) >> 3);
      }

      if (0xEF7BDEF7BDEF7BDFLL * ((v967 - v965) >> 3) >= 0x84210842108421)
      {
        v269 = 0x108421084210842;
      }

      else
      {
        v269 = v268;
      }

      *&v971 = &v965;
      if (v269)
      {
        if (v269 <= 0x108421084210842)
        {
          operator new();
        }

        sub_183688F00();
      }

      *&__dst = 0;
      *(&__dst + 1) = 8 * ((v966 - v965) >> 3);
      v970 = *(&__dst + 1);
      sub_18383ACBC(*(&__dst + 1), &buf);
      v267 = (v970 + 248);
      *&v970 = v970 + 248;
      v270 = v965;
      v271 = v966;
      v272 = (*(&__dst + 1) + v965 - v966);
      if (v965 != v966)
      {
        v273 = 0;
        v274 = v965;
        v275 = (*(&__dst + 1) + v965 - v966);
        do
        {
          sub_18383ACBC(v275, v274);
          v274 += 31;
          v275 += 31;
          v273 -= 248;
        }

        while (v274 != v271);
        do
        {
          sub_18383AB38(v270);
          v270 += 31;
        }

        while (v270 != v271);
        v270 = v965;
      }

      v965 = v272;
      v966 = v267;
      v967 = *(&v970 + 1);
      if (v270)
      {
        operator delete(v270);
      }
    }

    else
    {
      sub_18383ACBC(v966, &buf);
      v267 = v966 + 31;
    }

    v966 = v267;
    sub_18383AB38(&buf);
    v281 = fmin((4 * v958), 1024.0);
    if (v958 >= 8)
    {
      v282 = v281;
    }

    else
    {
      v282 = 32;
    }

    if (v282 >= 1)
    {
      v959 = 0;
      v935 = 248 * v946;
      v283 = (v946 - 2) >> 1;
      v924 = 248 * v283;
      v923 = v283 + 1;
      v284 = 0x1E695D000uLL;
      *&v280 = 138412290;
      v915 = v280;
      __src = v929;
      v916 = v282;
      while (1)
      {
        memset(&__p, 0, sizeof(__p));
        v933 = objc_msgSend_arrayWithCapacity_(*(v284 + 3952), v276, 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3), v277, v278, v279, v915);
        v934 = objc_msgSend_arrayWithCapacity_(*(v284 + 3952), v285, 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3), v286, v287, v288);
        v941 = objc_msgSend_arrayWithCapacity_(*(v284 + 3952), v289, 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3), v290, v291, v292);
        v942 = objc_msgSend_arrayWithCapacity_(*(v284 + 3952), v293, 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3), v294, v295, v296);
        v943 = objc_msgSend_arrayWithCapacity_(*(v284 + 3952), v297, 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3), v298, v299, v300);
        v944 = objc_msgSend_arrayWithCapacity_(*(v284 + 3952), v301, 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3), v302, v303, v304);
        v310 = v965;
        if (v966 != v965)
        {
          v311 = 0;
          do
          {
            v312 = objc_msgSend_shape(v945, v305, v306, v307, v308, v309);
            v317 = objc_msgSend_objectAtIndexedSubscript_(v312, v313, 0, v314, v315, v316);
            v323 = objc_msgSend_unsignedIntValue(v317, v318, v319, v320, v321, v322);
            v324 = 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3) == v323;

            if (!v324)
            {
              objc_msgSend_setObject_atIndexedSubscript_(v933, v325, v936, v311, v328, v329);
              objc_msgSend_setObject_atIndexedSubscript_(v934, v330, v937, v311, v331, v332);
            }

            v333 = objc_msgSend_UTF8String(@"decoder_state_h", v325, v326, v327, v328, v329);
            v334 = strlen(v333);
            if (v334 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_183688FF0();
            }

            v335 = v334;
            if (v334 >= 0x17)
            {
              operator new();
            }

            *(&buf.__r_.__value_.__s + 23) = v334;
            if (v334)
            {
              memmove(&buf, v333, v334);
            }

            buf.__r_.__value_.__s.__data_[v335] = 0;
            v337 = &v310[248 * v311 + 8];
            v336 = *v337;
            if (!*v337)
            {
LABEL_118:
              operator new();
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = buf.__r_.__value_.__l.__size_;
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_buf = &buf;
            }

            else
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

            while (1)
            {
              while (1)
              {
                v340 = v336;
                v343 = v336[4];
                v341 = v336 + 4;
                v342 = v343;
                v344 = *(v341 + 23);
                if (v344 >= 0)
                {
                  v345 = *(v341 + 23);
                }

                else
                {
                  v345 = v341[1];
                }

                if (v344 >= 0)
                {
                  v346 = v341;
                }

                else
                {
                  v346 = v342;
                }

                if (v345 >= size)
                {
                  v347 = size;
                }

                else
                {
                  v347 = v345;
                }

                v348 = memcmp(p_buf, v346, v347);
                v349 = size < v345;
                if (v348)
                {
                  v349 = v348 < 0;
                }

                if (!v349)
                {
                  break;
                }

                v336 = *v340;
                if (!*v340)
                {
                  goto LABEL_118;
                }
              }

              v350 = memcmp(v346, p_buf, v347);
              v354 = v345 < size;
              if (v350)
              {
                v354 = v350 < 0;
              }

              if (!v354)
              {
                break;
              }

              v336 = v340[1];
              if (!v336)
              {
                goto LABEL_118;
              }
            }

            objc_msgSend_setObject_atIndexedSubscript_(v941, v351, v340[7], v311, v352, v353);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            v360 = objc_msgSend_UTF8String(@"decoder_state_c", v355, v356, v357, v358, v359);
            v361 = strlen(v360);
            if (v361 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_183688FF0();
            }

            v362 = v361;
            if (v361 >= 0x17)
            {
              operator new();
            }

            *(&buf.__r_.__value_.__s + 23) = v361;
            if (v361)
            {
              memmove(&buf, v360, v361);
              buf.__r_.__value_.__s.__data_[v362] = 0;
              v363 = *v337;
              if (!*v337)
              {
LABEL_151:
                operator new();
              }
            }

            else
            {
              buf.__r_.__value_.__s.__data_[0] = 0;
              v363 = *v337;
              if (!*v337)
              {
                goto LABEL_151;
              }
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v364 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v364 = buf.__r_.__value_.__l.__size_;
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v365 = &buf;
            }

            else
            {
              v365 = buf.__r_.__value_.__r.__words[0];
            }

            while (1)
            {
              while (1)
              {
                v366 = v363;
                v369 = v363[4];
                v367 = v363 + 4;
                v368 = v369;
                v370 = *(v367 + 23);
                if (v370 >= 0)
                {
                  v371 = *(v367 + 23);
                }

                else
                {
                  v371 = v367[1];
                }

                if (v370 >= 0)
                {
                  v372 = v367;
                }

                else
                {
                  v372 = v368;
                }

                if (v371 >= v364)
                {
                  v373 = v364;
                }

                else
                {
                  v373 = v371;
                }

                v374 = memcmp(v365, v372, v373);
                v375 = v364 < v371;
                if (v374)
                {
                  v375 = v374 < 0;
                }

                if (!v375)
                {
                  break;
                }

                v363 = *v366;
                if (!*v366)
                {
                  goto LABEL_151;
                }
              }

              v376 = memcmp(v372, v365, v373);
              v380 = v371 < v364;
              if (v376)
              {
                v380 = v376 < 0;
              }

              if (!v380)
              {
                break;
              }

              v363 = v366[1];
              if (!v363)
              {
                goto LABEL_151;
              }
            }

            objc_msgSend_setObject_atIndexedSubscript_(v942, v377, v366[7], v311, v378, v379);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            v386 = objc_msgSend_UTF8String(@"past_attention_weights", v381, v382, v383, v384, v385);
            v387 = strlen(v386);
            if (v387 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_183688FF0();
            }

            v388 = v387;
            if (v387 >= 0x17)
            {
              operator new();
            }

            *(&buf.__r_.__value_.__s + 23) = v387;
            if (v387)
            {
              memmove(&buf, v386, v387);
              buf.__r_.__value_.__s.__data_[v388] = 0;
              v389 = *v337;
              if (!*v337)
              {
LABEL_184:
                operator new();
              }
            }

            else
            {
              buf.__r_.__value_.__s.__data_[0] = 0;
              v389 = *v337;
              if (!*v337)
              {
                goto LABEL_184;
              }
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v390 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v390 = buf.__r_.__value_.__l.__size_;
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v391 = &buf;
            }

            else
            {
              v391 = buf.__r_.__value_.__r.__words[0];
            }

            while (1)
            {
              while (1)
              {
                v392 = v389;
                v395 = v389[4];
                v393 = v389 + 4;
                v394 = v395;
                v396 = *(v393 + 23);
                if (v396 >= 0)
                {
                  v397 = *(v393 + 23);
                }

                else
                {
                  v397 = v393[1];
                }

                if (v396 >= 0)
                {
                  v398 = v393;
                }

                else
                {
                  v398 = v394;
                }

                if (v397 >= v390)
                {
                  v399 = v390;
                }

                else
                {
                  v399 = v397;
                }

                v400 = memcmp(v391, v398, v399);
                v401 = v390 < v397;
                if (v400)
                {
                  v401 = v400 < 0;
                }

                if (!v401)
                {
                  break;
                }

                v389 = *v392;
                if (!*v392)
                {
                  goto LABEL_184;
                }
              }

              v402 = memcmp(v398, v391, v399);
              v406 = v397 < v390;
              if (v402)
              {
                v406 = v402 < 0;
              }

              if (!v406)
              {
                break;
              }

              v389 = v392[1];
              if (!v389)
              {
                goto LABEL_184;
              }
            }

            objc_msgSend_setObject_atIndexedSubscript_(v943, v403, v392[7], v311, v404, v405);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            v412 = objc_msgSend_UTF8String(@"y", v407, v408, v409, v410, v411);
            v413 = strlen(v412);
            if (v413 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_183688FF0();
            }

            v414 = v413;
            if (v413 >= 0x17)
            {
              operator new();
            }

            *(&buf.__r_.__value_.__s + 23) = v413;
            if (v413)
            {
              memmove(&buf, v412, v413);
              buf.__r_.__value_.__s.__data_[v414] = 0;
              v415 = *v337;
              if (!*v337)
              {
LABEL_217:
                operator new();
              }
            }

            else
            {
              buf.__r_.__value_.__s.__data_[0] = 0;
              v415 = *v337;
              if (!*v337)
              {
                goto LABEL_217;
              }
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v416 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v416 = buf.__r_.__value_.__l.__size_;
            }

            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v417 = &buf;
            }

            else
            {
              v417 = buf.__r_.__value_.__r.__words[0];
            }

            while (1)
            {
              while (1)
              {
                v418 = v415;
                v421 = v415[4];
                v419 = v415 + 4;
                v420 = v421;
                v422 = *(v419 + 23);
                if (v422 >= 0)
                {
                  v423 = *(v419 + 23);
                }

                else
                {
                  v423 = v419[1];
                }

                if (v422 >= 0)
                {
                  v424 = v419;
                }

                else
                {
                  v424 = v420;
                }

                if (v423 >= v416)
                {
                  v425 = v416;
                }

                else
                {
                  v425 = v423;
                }

                v426 = memcmp(v417, v424, v425);
                v427 = v416 < v423;
                if (v426)
                {
                  v427 = v426 < 0;
                }

                if (!v427)
                {
                  break;
                }

                v415 = *v418;
                if (!*v418)
                {
                  goto LABEL_217;
                }
              }

              v428 = memcmp(v424, v417, v425);
              v432 = v423 < v416;
              if (v428)
              {
                v432 = v428 < 0;
              }

              if (!v432)
              {
                break;
              }

              v415 = v418[1];
              if (!v415)
              {
                goto LABEL_217;
              }
            }

            objc_msgSend_setObject_atIndexedSubscript_(v944, v429, v418[7], v311, v430, v431);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            v310 = v965;
            ++v311;
          }

          while (0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3) > v311);
        }

        v433 = objc_msgSend_shape(v945, v305, v306, v307, v308, v309);
        v438 = objc_msgSend_objectAtIndexedSubscript_(v433, v434, 0, v435, v436, v437);
        v444 = objc_msgSend_unsignedIntValue(v438, v439, v440, v441, v442, v443);
        v445 = 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3) == v444;

        if (!v445)
        {
          v448 = objc_msgSend_multiArrayByConcatenatingMultiArrays_alongAxis_dataType_(MEMORY[0x1E695FED0], v446, v933, 0, 65568, v447);

          v451 = objc_msgSend_multiArrayByConcatenatingMultiArrays_alongAxis_dataType_(MEMORY[0x1E695FED0], v449, v934, 0, 65568, v450);

          v922 = v451;
          v945 = v448;
        }

        context = objc_autoreleasePoolPush();
        v452 = objc_alloc(MEMORY[0x1E695FE48]);
        v979[0] = @"encoded_image";
        v979[1] = @"encoded_image_projected";
        v980[0] = v945;
        v980[1] = v922;
        v979[2] = @"decoder_state_h";
        v455 = objc_msgSend_multiArrayByConcatenatingMultiArrays_alongAxis_dataType_(MEMORY[0x1E695FED0], v453, v941, 0, 65568, v454);
        v980[2] = v455;
        v979[3] = @"decoder_state_c";
        v458 = objc_msgSend_multiArrayByConcatenatingMultiArrays_alongAxis_dataType_(MEMORY[0x1E695FED0], v456, v942, 0, 65568, v457);
        v980[3] = v458;
        v979[4] = @"past_attention_weights";
        v461 = objc_msgSend_multiArrayByConcatenatingMultiArrays_alongAxis_dataType_(MEMORY[0x1E695FED0], v459, v943, 0, 65568, v460);
        v980[4] = v461;
        v979[5] = @"y_prev";
        v464 = objc_msgSend_multiArrayByConcatenatingMultiArrays_alongAxis_dataType_(MEMORY[0x1E695FED0], v462, v944, 0, 65568, v463);
        v980[5] = v464;
        v467 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v465, v980, v979, 6, v466);
        v920 = objc_msgSend_initWithDictionary_error_(v452, v468, v467, 0, v469, v470);

        v476 = objc_msgSend_decoderModel(__s2, v471, v472, v473, v474, v475);
        v964 = __src;
        v928 = objc_msgSend_predictionFromFeatures_options_error_(v476, v477, v920, v927, &v964, v478);
        v929 = v964;

        v483 = v928;
        if (!v928)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v484 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v484, OS_LOG_TYPE_ERROR))
          {
            v490 = objc_msgSend_localizedDescription(v929, v485, v486, v487, v488, v489);
            LODWORD(buf.__r_.__value_.__l.__data_) = v915;
            *(buf.__r_.__value_.__r.__words + 4) = v490;
            _os_log_impl(&dword_18366B000, v484, OS_LOG_TYPE_ERROR, "An error occurred when running math decoder inference: %@", &buf, 0xCu);
          }

          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v491 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v491, OS_LOG_TYPE_FAULT))
          {
            v497 = objc_msgSend_localizedDescription(v929, v492, v493, v494, v495, v496);
            LODWORD(buf.__r_.__value_.__l.__data_) = v915;
            *(buf.__r_.__value_.__r.__words + 4) = v497;
            _os_log_impl(&dword_18366B000, v491, OS_LOG_TYPE_FAULT, "An error occurred when running math decoder inference: %@", &buf, 0xCu);
          }

          v483 = 0;
        }

        v977[0] = @"new_decoder_state_h";
        __srcc = objc_msgSend_featureValueForName_(v483, v479, @"new_decoder_state_h", v480, v481, v482);
        v503 = objc_msgSend_multiArrayValue(__srcc, v498, v499, v500, v501, v502);
        v938 = sub_183828F68(v503);
        v978[0] = v938;
        v977[1] = @"new_decoder_state_c";
        v947 = objc_msgSend_featureValueForName_(v928, v504, @"new_decoder_state_c", v505, v506, v507);
        v513 = objc_msgSend_multiArrayValue(v947, v508, v509, v510, v511, v512);
        v514 = sub_183828F68(v513);
        v978[1] = v514;
        v977[2] = @"attention_weights";
        v519 = objc_msgSend_featureValueForName_(v928, v515, @"attention_weights", v516, v517, v518);
        v525 = objc_msgSend_multiArrayValue(v519, v520, v521, v522, v523, v524);
        v526 = sub_183828F68(v525);
        v978[2] = v526;
        v977[3] = @"y";
        v531 = objc_msgSend_featureValueForName_(v928, v527, @"y", v528, v529, v530);
        v537 = objc_msgSend_multiArrayValue(v531, v532, v533, v534, v535, v536);
        v538 = sub_183828F68(v537);
        v978[3] = v538;
        v932 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v539, v978, v977, 4, v540);

        v546 = objc_msgSend_activeAlphabet(__s2, v541, v542, v543, v544, v545);
        LOBYTE(v537) = v546 == 0;

        if (v537)
        {
          v630 = 0;
          __srca = 0;
          v631 = v965;
          if (v966 != v965)
          {
            goto LABEL_334;
          }
        }

        else
        {
          v552 = objc_msgSend_objectForKeyedSubscript_(v932, v547, @"y", v549, v550, v551);
          v553 = v552;
          v559 = objc_msgSend_dataPointer(v552, v554, v555, v556, v557, v558);
          v565 = objc_msgSend_shape(v552, v560, v561, v562, v563, v564);
          v570 = objc_msgSend_objectAtIndexedSubscript_(v565, v566, 0, v567, v568, v569);
          v576 = objc_msgSend_intValue(v570, v571, v572, v573, v574, v575);

          v917 = v552;
          if (v576 >= 1)
          {
            v577 = 0;
            __srca = 0;
            v578 = 0;
            v579 = 0;
            v580 = 0;
            v939 = v576;
            v582 = *v961;
            v581 = *(v961 + 8);
            v583 = v581;
            while (1)
            {
              v948 = v577;
              v584 = v583 - v582;
              v585 = 0xAAAAAAAAAAAAAAABLL * (v584 >> 3);
              if (v584)
              {
                v586 = 0;
                v587 = 0.0;
                while (1)
                {
                  v589 = v585 * v580;
                  v590 = v585 * v580 + v586;
                  if (*(4 * v586) != 0.0)
                  {
                    goto LABEL_238;
                  }

                  v591 = *(v559 + 4 * v590);
                  if (v591 <= *(v961 + 760))
                  {
                    goto LABEL_275;
                  }

                  v592 = *(v961 + 568);
                  if (!*&v592)
                  {
                    goto LABEL_275;
                  }

                  v593 = vcnt_s8(v592);
                  v593.i16[0] = vaddlv_u8(v593);
                  if (v593.u32[0] > 1uLL)
                  {
                    v594 = v586;
                    if (*&v592 <= v586)
                    {
                      v594 = v586 % *&v592;
                    }
                  }

                  else
                  {
                    v594 = (*&v592 + 0x7FFFFFFFLL) & v586;
                  }

                  v595 = *(v961 + 560);
                  v596 = *(v595 + 8 * v594);
                  if (!v596 || (v597 = *v596) == 0)
                  {
LABEL_275:
                    v607 = v961;
                    if (v591 > *(v961 + 756))
                    {
                      goto LABEL_276;
                    }

                    goto LABEL_238;
                  }

                  v598 = *&v592 - 1;
                  if (v593.u32[0] < 2uLL)
                  {
                    while (1)
                    {
                      v599 = v597[1];
                      if (v599 == v586)
                      {
                        if (v586 == *(v597 + 4))
                        {
                          goto LABEL_262;
                        }
                      }

                      else if ((v599 & v598) != v594)
                      {
                        goto LABEL_275;
                      }

                      v597 = *v597;
                      if (!v597)
                      {
                        goto LABEL_275;
                      }
                    }
                  }

                  while (1)
                  {
                    v600 = v597[1];
                    if (v600 == v586)
                    {
                      break;
                    }

                    if (v600 >= *&v592)
                    {
                      v600 %= *&v592;
                    }

                    if (v600 != v594)
                    {
                      goto LABEL_275;
                    }

LABEL_256:
                    v597 = *v597;
                    if (!v597)
                    {
                      goto LABEL_275;
                    }
                  }

                  if (v586 != *(v597 + 4))
                  {
                    goto LABEL_256;
                  }

LABEL_262:
                  if (v593.u32[0] > 1uLL)
                  {
                    v601 = v586;
                    if (*&v592 <= v586)
                    {
                      v601 = v586 % v592.i32[0];
                    }
                  }

                  else
                  {
                    v601 = (*&v592 + 0x7FFFFFFFLL) & v586;
                  }

                  v602 = *(v595 + 8 * v601);
                  if (!v602 || (v603 = *v602) == 0)
                  {
LABEL_784:
                    sub_1836868A4("unordered_map::at: key not found");
                  }

                  if (v593.u32[0] < 2uLL)
                  {
                    while (1)
                    {
                      v604 = v603[1];
                      if (v604 == v586)
                      {
                        if (v586 == *(v603 + 4))
                        {
                          goto LABEL_274;
                        }
                      }

                      else if ((v604 & v598) != v601)
                      {
                        goto LABEL_784;
                      }

                      v603 = *v603;
                      if (!v603)
                      {
                        goto LABEL_784;
                      }
                    }
                  }

                  while (2)
                  {
                    v612 = v603[1];
                    if (v612 != v586)
                    {
                      if (v612 >= *&v592)
                      {
                        v612 %= *&v592;
                      }

                      if (v612 != v601)
                      {
                        goto LABEL_784;
                      }

LABEL_283:
                      v603 = *v603;
                      if (!v603)
                      {
                        goto LABEL_784;
                      }

                      continue;
                    }

                    break;
                  }

                  if (v586 != *(v603 + 4))
                  {
                    goto LABEL_283;
                  }

LABEL_274:
                  v605 = v603[3];
                  v606 = v603[4];
                  if (v605 == v606)
                  {
                    goto LABEL_275;
                  }

                  do
                  {
                    v611 = *v605;
                    *(v559 + 4 * (v611 + v589)) = *(v559 + 4 * v590) + *(v559 + 4 * (v611 + v589));
                    if (v586 > v611)
                    {
                      v587 = v587 + *(v559 + 4 * v590);
                    }

                    ++v605;
                  }

                  while (v605 != v606);
                  v591 = *(v559 + 4 * v590);
                  v607 = v961;
                  if (v591 > *(v961 + 756))
                  {
LABEL_276:
                    v608 = v607[76];
                    if (v608)
                    {
                      v609 = vcnt_s8(v608);
                      v609.i16[0] = vaddlv_u8(v609);
                      if (v609.u32[0] > 1uLL)
                      {
                        v610 = v586;
                        if (*&v608 <= v586)
                        {
                          v610 = v586 % *&v608;
                        }
                      }

                      else
                      {
                        v610 = (*&v608 + 0x7FFFFFFFLL) & v586;
                      }

                      v613 = *(*(v961 + 600) + 8 * v610);
                      if (v613)
                      {
                        v614 = *v613;
                        if (v614)
                        {
                          if (v609.u32[0] < 2uLL)
                          {
                            v615 = *&v608 - 1;
                            while (1)
                            {
                              v617 = v614[1];
                              if (v617 == v586)
                              {
                                if (v586 == *(v614 + 4))
                                {
                                  goto LABEL_238;
                                }
                              }

                              else if ((v617 & v615) != v610)
                              {
                                goto LABEL_306;
                              }

                              v614 = *v614;
                              if (!v614)
                              {
                                goto LABEL_306;
                              }
                            }
                          }

                          do
                          {
                            v616 = v614[1];
                            if (v616 == v586)
                            {
                              if (v586 == *(v614 + 4))
                              {
                                goto LABEL_238;
                              }
                            }

                            else
                            {
                              if (v616 >= *&v608)
                              {
                                v616 %= *&v608;
                              }

                              if (v616 != v610)
                              {
                                break;
                              }
                            }

                            v614 = *v614;
                          }

                          while (v614);
                        }
                      }
                    }

LABEL_306:
                    v618 = v579 - __srca;
                    v619 = 0xAAAAAAAAAAAAAAABLL * ((v579 - __srca) >> 2);
                    v620 = v619 + 1;
                    if (v619 + 1 > 0x1555555555555555)
                    {
                      sub_18383B70C();
                    }

                    if (0x5555555555555556 * (-__srca >> 2) > v620)
                    {
                      v620 = 0x5555555555555556 * (-__srca >> 2);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * (-__srca >> 2) >= 0xAAAAAAAAAAAAAAALL)
                    {
                      v621 = 0x1555555555555555;
                    }

                    else
                    {
                      v621 = v620;
                    }

                    if (v621)
                    {
                      if (v621 <= 0x1555555555555555)
                      {
                        operator new();
                      }

                      sub_183688F00();
                    }

                    v622 = 12 * v619;
                    *v622 = v580;
                    *(v622 + 4) = v586;
                    *(v622 + 8) = v591;
                    memcpy((12 * v619 + 12 * (v618 / -12)), __srca, v618);
                    if (__srca)
                    {
                      operator delete(__srca);
                    }

                    __srca = 12 * v619 + 12 * (v618 / -12);
                    v582 = *v961;
                    v581 = *(v961 + 8);
                    v578 = 12 * v619 + 12;
                    v579 = v578;
                  }

LABEL_238:
                  v588 = *(4 * v586) * *(v559 + 4 * v590);
                  *(v559 + 4 * v590) = v588;
                  v587 = v587 + v588;
                  ++v586;
                  v585 = 0xAAAAAAAAAAAAAAABLL * ((v581 - v582) >> 3);
                  v583 = v581;
                  if (v585 <= v586)
                  {
                    goto LABEL_321;
                  }
                }
              }

              v587 = 0.0;
              v583 = v582;
LABEL_321:
              if (v585)
              {
                v623 = 1.0 / v587;
                if (v585 > 7)
                {
                  v624 = v585 & 0xFFFFFFFFFFFFFFF8;
                  v625 = (v559 + 16 + v585 * v948);
                  v626 = v585 & 0xFFFFFFFFFFFFFFF8;
                  do
                  {
                    v627 = vmulq_n_f32(*v625, v623);
                    v625[-1] = vmulq_n_f32(v625[-1], v623);
                    *v625 = v627;
                    v625 += 2;
                    v626 -= 8;
                  }

                  while (v626);
                  if (v585 == v624)
                  {
                    goto LABEL_235;
                  }
                }

                else
                {
                  v624 = 0;
                }

                v628 = v585 - v624;
                v629 = (v559 + v585 * v948 + 4 * v624);
                do
                {
                  *v629 = v623 * *v629;
                  ++v629;
                  --v628;
                }

                while (v628);
              }

LABEL_235:
              ++v580;
              v577 = v948 + 4;
              if (v580 == v939)
              {
                goto LABEL_333;
              }
            }
          }

          __srca = 0;
          v578 = 0;
LABEL_333:

          v630 = v578;
          v631 = v965;
          if (v966 != v965)
          {
LABEL_334:
            v632 = 0;
            v940 = v630;
            do
            {
              v634 = v631 + 248 * v632;
              v949 = v632;
              if (*(v634 + 196) == 1)
              {
                v635 = __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
                {
                  v686 = 0xEF7BDEF7BDEF7BDFLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3) + 1;
                  if (v686 > 0x108421084210842)
                  {
                    sub_18383B70C();
                  }

                  if (0xDEF7BDEF7BDEF7BELL * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3) > v686)
                  {
                    v686 = 0xDEF7BDEF7BDEF7BELL * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xEF7BDEF7BDEF7BDFLL * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3) >= 0x84210842108421)
                  {
                    v687 = 0x108421084210842;
                  }

                  else
                  {
                    v687 = v686;
                  }

                  v992[0] = &__p;
                  if (v687)
                  {
                    if (v687 <= 0x108421084210842)
                    {
                      operator new();
                    }

                    sub_183688F00();
                  }

                  buf.__r_.__value_.__r.__words[0] = 0;
                  buf.__r_.__value_.__l.__size_ = 8 * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
                  buf.__r_.__value_.__r.__words[2] = buf.__r_.__value_.__l.__size_;
                  v991 = 0;
                  sub_18383ACBC(buf.__r_.__value_.__l.__size_, v634);
                  v636 = buf.__r_.__value_.__r.__words[2] + 248;
                  buf.__r_.__value_.__r.__words[2] += 248;
                  v688 = __p.__r_.__value_.__l.__size_;
                  v689 = __p.__r_.__value_.__r.__words[0];
                  v690 = buf.__r_.__value_.__l.__size_ + __p.__r_.__value_.__r.__words[0] - __p.__r_.__value_.__l.__size_;
                  if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
                  {
                    v691 = 0;
                    v692 = __p.__r_.__value_.__r.__words[0];
                    v693 = (buf.__r_.__value_.__l.__size_ + __p.__r_.__value_.__r.__words[0] - __p.__r_.__value_.__l.__size_);
                    do
                    {
                      sub_18383ACBC(v693, v692);
                      v692 += 248;
                      v693 += 31;
                      v691 -= 248;
                    }

                    while (v692 != v688);
                    do
                    {
                      sub_18383AB38(v689);
                      v689 += 248;
                    }

                    while (v689 != v688);
                    v689 = __p.__r_.__value_.__r.__words[0];
                  }

                  __p.__r_.__value_.__r.__words[0] = v690;
                  __p.__r_.__value_.__l.__size_ = v636;
                  __p.__r_.__value_.__r.__words[2] = v991;
                  if (v689)
                  {
                    operator delete(v689);
                  }
                }

                else
                {
                  sub_18383ACBC(__p.__r_.__value_.__l.__size_, v634);
                  v636 = v635 + 248;
                }

                __p.__r_.__value_.__l.__size_ = v636;
                goto LABEL_455;
              }

              v637 = objc_msgSend_eosIndex(__s2, v547, v548, v549, v550, v551);
              sub_183830E68(&v962, v961, v634, v946, v932, v632, v637);
              for (j = __srca; j != v630; j += 3)
              {
                v680 = j[2];
                v681 = v962[31 * *j + 22];
                if (!v681)
                {
LABEL_429:
                  operator new();
                }

                while (1)
                {
                  while (1)
                  {
                    v682 = v681;
                    v683 = v681[7];
                    if (v959 >= v683)
                    {
                      break;
                    }

                    v681 = *v682;
                    if (!*v682)
                    {
                      goto LABEL_429;
                    }
                  }

                  if (v683 >= v959)
                  {
                    break;
                  }

                  v681 = *(v682 + 1);
                  if (!v681)
                  {
                    goto LABEL_429;
                  }
                }

                v682[8] = j[1];
                v682[9] = v680;
              }

              v640 = v962;
              v639 = v963;
              if (v962 == v963)
              {
                if (v962)
                {
                  goto LABEL_433;
                }

                goto LABEL_437;
              }

              do
              {
                sub_1838293B0(&buf, v640, v961);
                v641 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_183688F34(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                }

                else
                {
                  __dst = *&buf.__r_.__value_.__l.__data_;
                  *&v970 = *(&buf.__r_.__value_.__l + 2);
                }

                if ((SBYTE7(v970) & 0x80u) == 0)
                {
                  v642 = &__dst + BYTE7(v970);
                }

                else
                {
                  v642 = (__dst + *(&__dst + 1));
                }

                if ((SBYTE7(v970) & 0x80u) == 0)
                {
                  p_dst = &__dst;
                }

                else
                {
                  p_dst = __dst;
                }

                for (; p_dst != v642; ++p_dst)
                {
                  *p_dst = __tolower(*p_dst);
                }

                if (v641 < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                  v644 = __p.__r_.__value_.__l.__size_;
                  v645 = __p.__r_.__value_.__r.__words[0];
                  if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
                  {
                    goto LABEL_396;
                  }

LABEL_359:
                  v646 = 0;
                  v644 = v645;
                  while (2)
                  {
                    sub_1838293B0(v974, v644 + 248 * v646, v961);
                    v647 = SBYTE7(v975);
                    if (SBYTE7(v975) < 0)
                    {
                      sub_183688F34(&buf, v974[0], v974[1]);
                    }

                    else
                    {
                      *&buf.__r_.__value_.__l.__data_ = *v974;
                      buf.__r_.__value_.__r.__words[2] = v975;
                    }

                    v648 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                    v649 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                    v650 = buf.__r_.__value_.__l.__size_;
                    v651 = buf.__r_.__value_.__r.__words[0];
                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v652 = (&buf + HIBYTE(buf.__r_.__value_.__r.__words[2]));
                    }

                    else
                    {
                      v652 = (buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_);
                    }

                    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v653 = &buf;
                    }

                    else
                    {
                      v653 = buf.__r_.__value_.__r.__words[0];
                    }

                    if (v653 != v652)
                    {
                      do
                      {
                        v653->__r_.__value_.__s.__data_[0] = __tolower(v653->__r_.__value_.__s.__data_[0]);
                        v653 = (v653 + 1);
                      }

                      while (v653 != v652);
                      v648 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                      v650 = buf.__r_.__value_.__l.__size_;
                      v651 = buf.__r_.__value_.__r.__words[0];
                      v649 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                    }

                    if (v649 >= 0)
                    {
                      v654 = &buf;
                    }

                    else
                    {
                      v648 = v650;
                      v654 = v651;
                    }

                    if ((SBYTE7(v970) & 0x80u) == 0)
                    {
                      v655 = BYTE7(v970);
                    }

                    else
                    {
                      v655 = *(&__dst + 1);
                    }

                    if ((SBYTE7(v970) & 0x80u) == 0)
                    {
                      v656 = &__dst;
                    }

                    else
                    {
                      v656 = __dst;
                    }

                    if (v655 >= v648)
                    {
                      v657 = v648;
                    }

                    else
                    {
                      v657 = v655;
                    }

                    v658 = v655 != v648;
                    if (memcmp(v654, v656, v657))
                    {
                      v658 = 1;
                    }

                    if (v649 < 0)
                    {
                      operator delete(v651);
                      if ((v647 & 0x80000000) == 0)
                      {
                        goto LABEL_388;
                      }
                    }

                    else if ((v647 & 0x80000000) == 0)
                    {
LABEL_388:
                      if (!v658)
                      {
                        goto LABEL_406;
                      }

                      goto LABEL_392;
                    }

                    operator delete(v974[0]);
                    if (!v658)
                    {
LABEL_406:
                      v665 = v640[10] - v640[9];
                      if (v665)
                      {
                        v666 = v665 >> 2;
                        v667 = __p.__r_.__value_.__r.__words[0] + 248 * v646;
                        v668 = *(v667 + 96);
                        v669 = v640[12];
                        if (v666 <= 1)
                        {
                          v670 = 1;
                        }

                        else
                        {
                          v670 = v666;
                        }

                        do
                        {
                          if (*v668 != *v669)
                          {
                            v671 = *(v667 + 192) - logf(*v668) * 0.659235;
                            *(v667 + 192) = v671;
                            v672 = v671 + logf(fmaxf(*v668, *v669)) * 0.659235;
                            *(v667 + 192) = v672;
                          }

                          ++v669;
                          ++v668;
                          --v670;
                        }

                        while (v670);
                      }

                      goto LABEL_421;
                    }

LABEL_392:
                    ++v646;
                    v659 = __p.__r_.__value_.__l.__size_;
                    v644 = __p.__r_.__value_.__r.__words[0];
                    if (0xEF7BDEF7BDEF7BDFLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3) <= v646)
                    {
                      v660 = __p.__r_.__value_.__r.__words[2];
                      if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
                      {
                        goto LABEL_397;
                      }

LABEL_394:
                      sub_18383ACBC(v659, v640);
                      __p.__r_.__value_.__l.__size_ = (v659 + 31);
                      goto LABEL_421;
                    }

                    continue;
                  }
                }

                v644 = __p.__r_.__value_.__l.__size_;
                v645 = __p.__r_.__value_.__r.__words[0];
                if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
                {
                  goto LABEL_359;
                }

LABEL_396:
                v659 = v644;
                v660 = __p.__r_.__value_.__r.__words[2];
                if (v644 < __p.__r_.__value_.__r.__words[2])
                {
                  goto LABEL_394;
                }

LABEL_397:
                v661 = 0xEF7BDEF7BDEF7BDFLL * ((v659 - v644) >> 3);
                if (v661 + 1 > 0x108421084210842)
                {
                  sub_18383B70C();
                }

                v662 = 0xEF7BDEF7BDEF7BDFLL * ((v660 - v644) >> 3);
                v663 = 2 * v662;
                if (2 * v662 <= v661 + 1)
                {
                  v663 = v661 + 1;
                }

                if (v662 >= 0x84210842108421)
                {
                  v664 = 0x108421084210842;
                }

                else
                {
                  v664 = v663;
                }

                v992[0] = &__p;
                if (v664)
                {
                  if (v664 <= 0x108421084210842)
                  {
                    operator new();
                  }

                  sub_183688F00();
                }

                buf.__r_.__value_.__r.__words[0] = 0;
                buf.__r_.__value_.__l.__size_ = 248 * v661;
                buf.__r_.__value_.__r.__words[2] = 248 * v661;
                v991 = 0;
                sub_18383ACBC((248 * v661), v640);
                v673 = buf.__r_.__value_.__r.__words[2] + 248;
                buf.__r_.__value_.__r.__words[2] += 248;
                v674 = __p.__r_.__value_.__l.__size_;
                v675 = __p.__r_.__value_.__r.__words[0];
                v676 = buf.__r_.__value_.__l.__size_ + __p.__r_.__value_.__r.__words[0] - __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
                {
                  v677 = 0;
                  v678 = __p.__r_.__value_.__r.__words[0];
                  v679 = (buf.__r_.__value_.__l.__size_ + __p.__r_.__value_.__r.__words[0] - __p.__r_.__value_.__l.__size_);
                  do
                  {
                    sub_18383ACBC(v679, v678);
                    v678 += 248;
                    v679 += 31;
                    v677 -= 248;
                  }

                  while (v678 != v674);
                  do
                  {
                    sub_18383AB38(v675);
                    v675 += 248;
                  }

                  while (v675 != v674);
                  v675 = __p.__r_.__value_.__r.__words[0];
                }

                __p.__r_.__value_.__r.__words[0] = v676;
                __p.__r_.__value_.__l.__size_ = v673;
                __p.__r_.__value_.__r.__words[2] = v991;
                if (v675)
                {
                  operator delete(v675);
                }

                __p.__r_.__value_.__l.__size_ = v673;
LABEL_421:
                if (SBYTE7(v970) < 0)
                {
                  operator delete(__dst);
                }

                v640 += 31;
              }

              while (v640 != v639);
              v640 = v962;
              if (v962)
              {
LABEL_433:
                v684 = v963;
                v685 = v640;
                if (v963 != v640)
                {
                  do
                  {
                    v684 = sub_18383AB38(v684 - 248);
                  }

                  while (v684 != v640);
                  v685 = v962;
                }

                v963 = v640;
                operator delete(v685);
              }

LABEL_437:
              v636 = __p.__r_.__value_.__l.__size_;
LABEL_455:
              v694 = __p.__r_.__value_.__r.__words[0];
              if (0xEF7BDEF7BDEF7BDFLL * ((v636 - __p.__r_.__value_.__r.__words[0]) >> 3) > v946)
              {
                if (v946)
                {
                  if (v946 >= 2)
                  {
                    v695 = v923;
                    v696 = v924 + __p.__r_.__value_.__r.__words[0];
                    do
                    {
                      sub_183843828(v694, v946, v696);
                      v696 -= 248;
                      --v695;
                    }

                    while (v695);
                  }

                  v697 = v935 + v694;
                  if (v935 + v694 == v636)
                  {
LABEL_461:
                    if (v946 < 2)
                    {
                      goto LABEL_495;
                    }

                    v698 = v946;
                    while (2)
                    {
                      if (v698 < 2)
                      {
                        goto LABEL_465;
                      }

                      sub_18383ACBC(&__dst, v694);
                      v700 = 0;
                      v701 = v694;
LABEL_469:
                      v702 = v701 + 248 * v700 + 248;
                      v703 = 2 * v700;
                      v700 = (2 * v700) | 1;
                      v704 = v703 + 2;
                      if (v703 + 2 >= v698)
                      {
                        goto LABEL_474;
                      }

                      v705 = *(v702 + 80) - *(v702 + 72);
                      if (v705)
                      {
                        v706 = *(v702 + 192);
                        v707 = v706 / pow((v705 >> 2), 0.330993);
                        v708 = *(v702 + 328) - *(v702 + 320);
                        if (v708)
                        {
                          goto LABEL_472;
                        }

LABEL_477:
                        if (v707 <= *(v702 + 440))
                        {
                          goto LABEL_474;
                        }
                      }

                      else
                      {
                        v707 = *(v702 + 192);
                        v708 = *(v702 + 328) - *(v702 + 320);
                        if (!v708)
                        {
                          goto LABEL_477;
                        }

LABEL_472:
                        v709 = *(v702 + 440);
                        v710 = v709 / pow((v708 >> 2), 0.330993);
                        if (v707 <= v710)
                        {
LABEL_474:
                          sub_183842EDC(v701, v702);
                          v701 = v702;
                          if (v700 > ((v698 - 2) >> 1))
                          {
                            if (v702 == v697 - 248)
                            {
                              sub_183842EDC(v702, &__dst);
                              goto LABEL_464;
                            }

                            sub_183842EDC(v702, v697 - 248);
                            sub_183842EDC(v697 - 248, &__dst);
                            v711 = v702 - v694 + 248;
                            if (v711 >= 249)
                            {
                              v712 = (0xEF7BDEF7BDEF7BDFLL * (v711 >> 3) - 2) >> 1;
                              v713 = v694 + 248 * v712;
                              v714 = *(v713 + 80) - *(v713 + 72);
                              if (v714)
                              {
                                v715 = *(v713 + 192);
                                v716 = v715 / pow((v714 >> 2), 0.330993);
                                v717 = *(v702 + 80) - *(v702 + 72);
                                if (v717)
                                {
LABEL_483:
                                  v718 = *(v702 + 192);
                                  v719 = v718 / pow((v717 >> 2), 0.330993);
                                  if (v716 <= v719)
                                  {
                                    goto LABEL_464;
                                  }

                                  goto LABEL_487;
                                }
                              }

                              else
                              {
                                v716 = *(v713 + 192);
                                v717 = *(v702 + 80) - *(v702 + 72);
                                if (v717)
                                {
                                  goto LABEL_483;
                                }
                              }

                              if (v716 <= *(v702 + 192))
                              {
                                goto LABEL_464;
                              }

LABEL_487:
                              sub_18383ACBC(&buf, v702);
                              while (1)
                              {
                                v724 = v713;
                                sub_183842EDC(v702, v713);
                                if (!v712)
                                {
LABEL_494:
                                  sub_183842EDC(v724, &buf);
                                  sub_18383AB38(&buf);
                                  break;
                                }

                                v712 = (v712 - 1) >> 1;
                                v713 = v694 + 248 * v712;
                                v725 = *(v713 + 80) - *(v713 + 72);
                                if (v725)
                                {
                                  v726 = *(v713 + 192);
                                  v720 = v726 / pow((v725 >> 2), 0.330993);
                                  v721 = v995 - *(&v994 + 1);
                                  if (v995 != *(&v994 + 1))
                                  {
LABEL_489:
                                    v722 = v1003;
                                    v723 = v722 / pow((v721 >> 2), 0.330993);
                                    v702 = v724;
                                    if (v720 <= v723)
                                    {
                                      goto LABEL_494;
                                    }

                                    continue;
                                  }
                                }

                                else
                                {
                                  v720 = *(v713 + 192);
                                  v721 = v995 - *(&v994 + 1);
                                  if (v995 != *(&v994 + 1))
                                  {
                                    goto LABEL_489;
                                  }
                                }

                                v702 = v724;
                                if (v720 <= v1003)
                                {
                                  goto LABEL_494;
                                }
                              }
                            }

LABEL_464:
                            sub_18383AB38(&__dst);
LABEL_465:
                            v697 -= 248;
                            if (v698-- <= 2)
                            {
LABEL_495:
                              memset(&buf, 0, sizeof(buf));
                              *&__dst = &buf;
                              BYTE8(__dst) = 0;
                              if ((v946 & 0x80000000) == 0)
                              {
                                operator new();
                              }

                              sub_18383B70C();
                            }

                            continue;
                          }

                          goto LABEL_469;
                        }
                      }

                      break;
                    }

                    v702 += 248;
                    v700 = v704;
                    goto LABEL_474;
                  }

                  v729 = v935 + v694;
                  while (2)
                  {
                    v730 = *(v729 + 80) - *(v729 + 72);
                    if (v730)
                    {
                      v731 = *(v729 + 192);
                      v732 = v731 / pow((v730 >> 2), 0.330993);
                      v733 = *(v694 + 80) - *(v694 + 72);
                      if (v733)
                      {
                        goto LABEL_505;
                      }

LABEL_508:
                      if (v732 > *(v694 + 192))
                      {
                        goto LABEL_509;
                      }
                    }

                    else
                    {
                      v732 = *(v729 + 192);
                      v733 = *(v694 + 80) - *(v694 + 72);
                      if (!v733)
                      {
                        goto LABEL_508;
                      }

LABEL_505:
                      v734 = *(v694 + 192);
                      v735 = v734 / pow((v733 >> 2), 0.330993);
                      if (v732 > v735)
                      {
LABEL_509:
                        sub_18383ACBC(&buf, v729);
                        sub_183842EDC(v729, v694);
                        sub_183842EDC(v694, &buf);
                        sub_18383AB38(&buf);
                        sub_183843828(v694, v946, v694);
                      }
                    }

                    v729 += 248;
                    if (v729 == v636)
                    {
                      goto LABEL_461;
                    }

                    continue;
                  }
                }

                v633 = 0;
                memset(&buf, 0, sizeof(buf));
                if (__p.__r_.__value_.__r.__words[0])
                {
                  v727 = __p.__r_.__value_.__l.__size_;
                  v728 = __p.__r_.__value_.__r.__words[0];
                  if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
                  {
                    do
                    {
                      v727 = sub_18383AB38(v727 - 248);
                    }

                    while (v727 != v694);
                    v728 = __p.__r_.__value_.__r.__words[0];
                  }

                  __p.__r_.__value_.__l.__size_ = v694;
                  operator delete(v728);
                  v633 = buf.__r_.__value_.__l.__size_;
                }

                __p.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__r.__words[0];
                __p.__r_.__value_.__l.__size_ = v633;
                __p.__r_.__value_.__r.__words[2] = buf.__r_.__value_.__r.__words[2];
              }

              v632 = v949 + 1;
              v631 = v965;
              v630 = v940;
            }

            while (0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3) > v949 + 1);
          }
        }

        if (__srca)
        {
          operator delete(__srca);
        }

        objc_autoreleasePoolPop(context);
        v742 = __p.__r_.__value_.__l.__size_;
        v741 = __p.__r_.__value_.__r.__words[0];
        v743 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
        v744 = v967;
        v745 = v965;
        if (v967 - v965 < __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0])
        {
          if (v965)
          {
            v746 = v966;
            v747 = v965;
            if (v966 != v965)
            {
              do
              {
                v746 = sub_18383AB38((v746 - 31));
              }

              while (v746 != v745);
              v747 = v965;
            }

            v966 = v745;
            operator delete(v747);
            v744 = 0;
            v965 = 0;
            v966 = 0;
            v967 = 0;
          }

          v748 = 0xEF7BDEF7BDEF7BDFLL * (v743 >> 3);
          if (v748 <= 0x108421084210842)
          {
            v749 = 0xEF7BDEF7BDEF7BDFLL * (v744 >> 3);
            if (2 * v749 > v748)
            {
              v748 = 2 * v749;
            }

            if (v749 >= 0x84210842108421)
            {
              v750 = 0x108421084210842;
            }

            else
            {
              v750 = v748;
            }

            if (v750 <= 0x108421084210842)
            {
              operator new();
            }
          }

          sub_18383B70C();
        }

        v751 = v966;
        v752 = v966 - v965;
        if (v966 - v965 >= v743)
        {
          if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
          {
            do
            {
              sub_183842EDC(v745, v741);
              v741 += 248;
              v745 += 31;
            }

            while (v741 != v742);
            v751 = v966;
          }

          while (v751 != v745)
          {
            v751 -= 31;
            sub_18383AB38(v751);
          }
        }

        else
        {
          if (v966 != v965)
          {
            v753 = v966 - v965;
            v754 = __p.__r_.__value_.__r.__words[0];
            do
            {
              sub_183842EDC(v745, v754);
              v754 += 248;
              v745 += 31;
              v753 -= 248;
            }

            while (v753);
            v751 = v966;
          }

          v755 = v741 + v752;
          v756 = v751;
          if (v741 + v752 != v742)
          {
            v757 = 0;
            do
            {
              sub_18383ACBC(&v751[v757], v755 + v757 * 8);
              v757 += 31;
            }

            while (v755 + v757 * 8 != v742);
            v756 = &v751[v757];
          }

          v745 = v756;
        }

        v966 = v745;
        v758 = v965;
        if (v745 != v965)
        {
          v759 = 0;
          do
          {
            v760 = (v965 + 248 * v759);
            if ((*(v760 + 196) & 1) == 0)
            {
              __srcb = v759;
              v761 = objc_msgSend_UTF8String(@"past_attention_weights", v736, v737, v738, v739, v740);
              v762 = strlen(v761);
              if (v762 <= 0x7FFFFFFFFFFFFFF7)
              {
                v763 = v762;
                if (v762 < 0x17)
                {
                  BYTE7(v970) = v762;
                  if (v762)
                  {
                    memmove(&__dst, v761, v762);
                  }

                  *(&__dst + v763) = 0;
                  v974[0] = &__dst;
                  v764 = sub_18383C538(v760, &__dst, v974);
                  v770 = objc_msgSend_shape(v764[7], v765, v766, v767, v768, v769);
                  v775 = objc_msgSend_objectAtIndexedSubscript_(v770, v771, 1, v772, v773, v774);
                  objc_msgSend_intValue(v775, v776, v777, v778, v779, v780);
                  v781 = v965;
                  v787 = objc_msgSend_UTF8String(@"past_attention_weights", v782, v783, v784, v785, v786);
                  v788 = strlen(v787);
                  if (v788 <= 0x7FFFFFFFFFFFFFF7)
                  {
                    v789 = v788;
                    if (v788 < 0x17)
                    {
                      BYTE7(v975) = v788;
                      if (v788)
                      {
                        memmove(v974, v787, v788);
                      }

                      *(v974 + v789) = 0;
                      v962 = v974;
                      v790 = sub_18383C538(&v781[31 * __srcb], v974, &v962);
                      v796 = objc_msgSend_shape(v790[7], v791, v792, v793, v794, v795);
                      v801 = objc_msgSend_objectAtIndexedSubscript_(v796, v797, 2, v798, v799, v800);
                      objc_msgSend_intValue(v801, v802, v803, v804, v805, v806);
                      memset(&buf, 0, sizeof(buf));
                      operator new();
                    }

                    operator new();
                  }

                  sub_183688FF0();
                }

                operator new();
              }

              sub_183688FF0();
            }

            ++v759;
          }

          while (0xEF7BDEF7BDEF7BDFLL * ((v745 - v965) >> 3) > v759);
        }

        if (v965 == v745)
        {
LABEL_561:
          v807 = 4;
        }

        else
        {
          while ((*(v758 + 196) & 1) != 0)
          {
            v758 += 31;
            if (v758 == v745)
            {
              goto LABEL_561;
            }
          }

          v808 = *(a6 + 24);
          if (v808 && (*(*v808 + 48))(v808))
          {
            *a7 = 0;
            a7[1] = 0;
            v807 = 1;
            a7[2] = 0;
          }

          else
          {
            v807 = 0;
          }
        }

        v809 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
          v810 = __p.__r_.__value_.__l.__size_;
          v811 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
          {
            do
            {
              v810 = sub_18383AB38(v810 - 248);
            }

            while (v810 != v809);
            v811 = __p.__r_.__value_.__r.__words[0];
          }

          __p.__r_.__value_.__l.__size_ = v809;
          operator delete(v811);
        }

        if (v807)
        {
          break;
        }

        __src = v929;
        v282 = v916;
        ++v959;
        v284 = 0x1E695D000;
        if (v959 == v916)
        {
          goto LABEL_575;
        }
      }

      v282 = v916;
      if (v807 != 4)
      {
        v912 = v965;
        if (v965)
        {
          v913 = v966;
          v914 = v965;
          if (v966 != v965)
          {
            do
            {
              v913 = sub_18383AB38((v913 - 31));
            }

            while (v913 != v912);
            v914 = v965;
          }

          v966 = v912;
          operator delete(v914);
        }

LABEL_776:

        goto LABEL_777;
      }
    }

LABEL_575:
    v812 = v965;
    v813 = v966;
    v814 = v965;
    v815 = v961;
    if (v965 == v966)
    {
LABEL_581:
      v966 = v812;
      v813 = v812;
      v812 = v814;
    }

    else
    {
      v816 = v965;
      while (v282 == (v816[10] - v816[9]) >> 2)
      {
        v816 += 31;
        if (v816 == v966)
        {
          do
          {
            v813 -= 31;
            sub_18383AB38(v813);
          }

          while (v813 != v812);
          v814 = v965;
          goto LABEL_581;
        }
      }
    }

    if (v812 == v813)
    {
      *v974 = 0u;
      v975 = 0u;
      v976 = 1065353216;
    }

    else
    {
      do
      {
        sub_183829528(&__dst, v812, v815);
        sub_183874DFC((v815 + 3), &__dst, v812 + 3, &buf.__r_.__value_.__l.__data_);
        v818 = (v812 + 6);
        v819 = v812[6];
        if (v819)
        {
          v820 = v812[7];
          v821 = v812[6];
          if (v820 != v819)
          {
            v822 = v812[7];
            do
            {
              v824 = *(v822 - 3);
              v822 -= 3;
              v823 = v824;
              if (v824)
              {
                *(v820 - 2) = v823;
                operator delete(v823);
              }

              v820 = v822;
            }

            while (v822 != v819);
            v821 = *v818;
            v815 = v961;
          }

          v812[7] = v819;
          operator delete(v821);
          *v818 = 0;
          v812[7] = 0;
          v812[8] = 0;
        }

        *(v812 + 2) = buf;
        memset(&buf, 0, sizeof(buf));
        v825 = __dst;
        if (__dst)
        {
          v826 = *(&__dst + 1);
          v817 = __dst;
          if (*(&__dst + 1) != __dst)
          {
            do
            {
              v827 = *(v826 - 1);
              v826 -= 3;
              if (v827 < 0)
              {
                operator delete(*v826);
              }
            }

            while (v826 != v825);
            v817 = __dst;
          }

          *(&__dst + 1) = v825;
          operator delete(v817);
        }

        v812 += 31;
      }

      while (v812 != v813);
      v812 = v965;
      v813 = v966;
      *v974 = 0u;
      v975 = 0u;
      v976 = 1065353216;
      if (v965 != v966)
      {
        do
        {
          sub_1838293B0(&buf, v812, v815);
          sub_18383CAF4(v974, &buf, &buf);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          v812 += 31;
        }

        while (v812 != v813);
        v812 = v965;
        v813 = v966;
        v828 = 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3);
        v829 = v828;
        if (v828 >= 1)
        {
          goto LABEL_603;
        }

        goto LABEL_729;
      }
    }

    v828 = 0xEF7BDEF7BDEF7BDFLL * (v813 - v812);
    v829 = v828;
    if (v828 >= 1)
    {
LABEL_603:
      v830 = 0;
      v960 = v828 & 0x7FFFFFFF;
      v954 = v828;
      do
      {
        sub_18383ACBC(&buf, v965 + 248 * v830);
        v831 = v965;
        v832 = v965 + 248 * v830;
        v833 = *(v832 + 9);
        if (*(v832 + 10) != v833 && v815[81])
        {
          v834 = 0;
          v835 = 0;
          do
          {
            v837 = *(v961 + 648);
            if (v837)
            {
              v838 = *(v833 + 4 * v834);
              v839 = vcnt_s8(v837);
              v839.i16[0] = vaddlv_u8(v839);
              if (v839.u32[0] > 1uLL)
              {
                v840 = *(v833 + 4 * v834);
                if (*&v837 <= v838)
                {
                  v840 = v838 % *&v837;
                }
              }

              else
              {
                v840 = (*&v837 - 1) & v838;
              }

              v841 = *(v961 + 640);
              v842 = *(v841 + 8 * v840);
              if (v842)
              {
                v843 = *v842;
                if (*v842)
                {
                  v844 = *&v837 - 1;
                  if (v839.u32[0] < 2uLL)
                  {
                    while (1)
                    {
                      v845 = v843[1];
                      if (v845 == v838)
                      {
                        if (*(v843 + 4) == v838)
                        {
                          goto LABEL_635;
                        }
                      }

                      else if ((v845 & v844) != v840)
                      {
                        goto LABEL_613;
                      }

                      v843 = *v843;
                      if (!v843)
                      {
                        goto LABEL_613;
                      }
                    }
                  }

                  do
                  {
                    v846 = v843[1];
                    if (v846 == v838)
                    {
                      if (*(v843 + 4) == v838)
                      {
LABEL_635:
                        if (v839.u32[0] > 1uLL)
                        {
                          v847 = *(v833 + 4 * v834);
                          if (*&v837 <= v838)
                          {
                            v847 = v838 % *&v837;
                          }
                        }

                        else
                        {
                          v847 = v844 & v838;
                        }

                        v848 = *(v841 + 8 * v847);
                        if (!v848 || (v849 = *v848) == 0)
                        {
LABEL_783:
                          sub_1836868A4("unordered_map::at: key not found");
                        }

                        if (v839.u32[0] < 2uLL)
                        {
                          while (1)
                          {
                            v850 = v849[1];
                            if (v850 == v838)
                            {
                              if (*(v849 + 4) == v838)
                              {
                                goto LABEL_647;
                              }
                            }

                            else if ((v850 & v844) != v847)
                            {
                              goto LABEL_783;
                            }

                            v849 = *v849;
                            if (!v849)
                            {
                              goto LABEL_783;
                            }
                          }
                        }

                        while (1)
                        {
                          v856 = v849[1];
                          if (v856 == v838)
                          {
                            if (*(v849 + 4) == v838)
                            {
LABEL_647:
                              v851 = v849[3];
                              v852 = v849[4];
                              if (v851 != v852)
                              {
                                do
                                {
                                  v853 = v851[1];
                                  if (v853 >= 0.5)
                                  {
                                    v854 = *v851;
                                    if (std::string::compare((*v961 + 24 * v838), "z") || *(*(v965 + 31 * v830 + 6) + 24 * v834 + 8) - *(*(v965 + 31 * v830 + 6) + 24 * v834) <= 4uLL)
                                    {
                                      *(*(&v994 + 1) + 4 * v834) = v854;
                                      *(v996 + 4 * v834) = v853 * *(v996 + 4 * v834);
                                      v1003 = logf(v853) + v1003;
                                      v855 = sub_18367D41C((v961 + 56), (*v961 + 24 * SLODWORD(v854)));
                                      *(*(&v997 + 1) + 8 * v834) = v855;
                                      v835 = 1;
                                    }
                                  }

                                  v851 += 2;
                                }

                                while (v851 != v852);
                                v831 = v965;
                              }

                              goto LABEL_613;
                            }
                          }

                          else
                          {
                            if (v856 >= *&v837)
                            {
                              v856 %= *&v837;
                            }

                            if (v856 != v847)
                            {
                              goto LABEL_783;
                            }
                          }

                          v849 = *v849;
                          if (!v849)
                          {
                            goto LABEL_783;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (v846 >= *&v837)
                      {
                        v846 %= *&v837;
                      }

                      if (v846 != v840)
                      {
                        break;
                      }
                    }

                    v843 = *v843;
                  }

                  while (v843);
                }
              }
            }

LABEL_613:
            ++v834;
            v836 = &v831[248 * v830];
            v833 = *(v836 + 9);
          }

          while (v834 < (*(v836 + 10) - v833) >> 2);
          v815 = v961;
          if (v835)
          {
            sub_1838293B0(&__p, &buf, v961);
            if (!sub_18383CEE8(v974, &__p))
            {
              v857 = v966;
              if (v966 >= v967)
              {
                v859 = 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3) + 1;
                if (v859 > 0x108421084210842)
                {
                  sub_18383B70C();
                }

                if (0xDEF7BDEF7BDEF7BELL * ((v967 - v965) >> 3) > v859)
                {
                  v859 = 0xDEF7BDEF7BDEF7BELL * ((v967 - v965) >> 3);
                }

                if (0xEF7BDEF7BDEF7BDFLL * ((v967 - v965) >> 3) >= 0x84210842108421)
                {
                  v860 = 0x108421084210842;
                }

                else
                {
                  v860 = v859;
                }

                *&v971 = &v965;
                if (v860)
                {
                  if (v860 <= 0x108421084210842)
                  {
                    operator new();
                  }

                  sub_183688F00();
                }

                *&__dst = 0;
                *(&__dst + 1) = 8 * ((v966 - v965) >> 3);
                v970 = *(&__dst + 1);
                sub_18383ACBC(*(&__dst + 1), &buf);
                v858 = (v970 + 248);
                *&v970 = v970 + 248;
                v862 = v965;
                v861 = v966;
                v863 = (*(&__dst + 1) + v965 - v966);
                if (v965 != v966)
                {
                  v864 = 0;
                  v865 = v965;
                  __s2a = (*(&__dst + 1) + v965 - v966);
                  do
                  {
                    sub_18383ACBC(v863, v865);
                    v865 += 31;
                    v863 += 31;
                    v864 -= 248;
                  }

                  while (v865 != v861);
                  do
                  {
                    sub_18383AB38(v862);
                    v862 += 31;
                  }

                  while (v862 != v861);
                  v862 = v965;
                  v863 = __s2a;
                }

                v965 = v863;
                v966 = v858;
                v967 = *(&v970 + 1);
                if (v862)
                {
                  operator delete(v862);
                }
              }

              else
              {
                sub_18383ACBC(v966, &buf);
                v858 = v857 + 31;
              }

              v966 = v858;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v867 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v867 = __p.__r_.__value_.__l.__size_;
              }

              v868 = sub_183686440(&__dst, p_p, v867);
              v869 = v868;
              v870 = v974[1];
              if (v974[1])
              {
                v871 = vcnt_s8(v974[1]);
                v871.i16[0] = vaddlv_u8(v871);
                if (v871.u32[0] > 1uLL)
                {
                  v872 = v868;
                  if (v868 >= v974[1])
                  {
                    v872 = v868 % v974[1];
                  }
                }

                else
                {
                  v872 = (v974[1] - 1) & v868;
                }

                v873 = *(v974[0] + v872);
                if (v873)
                {
                  v874 = *v873;
                  if (*v873)
                  {
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v875 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v875 = __p.__r_.__value_.__l.__size_;
                    }

                    v876 = &__p;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v876 = __p.__r_.__value_.__r.__words[0];
                    }

                    __s2b = v876;
                    if (v871.u32[0] < 2uLL)
                    {
                      while (1)
                      {
                        v881 = v874[1];
                        if (v881 == v869)
                        {
                          v882 = *(v874 + 39);
                          v883 = v882;
                          if (v882 < 0)
                          {
                            v882 = v874[3];
                          }

                          if (v882 == v875)
                          {
                            v884 = v883 >= 0 ? (v874 + 2) : v874[2];
                            if (!memcmp(v884, __s2b, v875))
                            {
                              goto LABEL_726;
                            }
                          }
                        }

                        else if ((v881 & (v870 - 1)) != v872)
                        {
                          goto LABEL_725;
                        }

                        v874 = *v874;
                        if (!v874)
                        {
                          goto LABEL_725;
                        }
                      }
                    }

                    do
                    {
                      v877 = v874[1];
                      if (v877 == v869)
                      {
                        v878 = *(v874 + 39);
                        v879 = v878;
                        if (v878 < 0)
                        {
                          v878 = v874[3];
                        }

                        if (v878 == v875)
                        {
                          v880 = v879 >= 0 ? (v874 + 2) : v874[2];
                          if (!memcmp(v880, __s2b, v875))
                          {
                            goto LABEL_726;
                          }
                        }
                      }

                      else
                      {
                        if (v877 >= v870)
                        {
                          v877 %= v870;
                        }

                        if (v877 != v872)
                        {
                          break;
                        }
                      }

                      v874 = *v874;
                    }

                    while (v874);
                  }
                }
              }

LABEL_725:
              operator new();
            }

LABEL_726:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v815 = v961;
          }
        }

        sub_18383AB38(&buf);
        ++v830;
      }

      while (v830 != v960);
      v812 = v965;
      v813 = v966;
      v829 = 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3);
      if (v829 <= v954)
      {
        goto LABEL_736;
      }

      goto LABEL_732;
    }

LABEL_729:
    if (v829 <= v828)
    {
LABEL_736:
      v887 = v975;
      if (v975)
      {
        do
        {
          v893 = *v887;
          if (*(v887 + 39) < 0)
          {
            operator delete(v887[2]);
          }

          operator delete(v887);
          v887 = v893;
        }

        while (v893);
      }

      v888 = v974[0];
      v974[0] = 0;
      if (v888)
      {
        operator delete(v888);
      }

      v889 = v965;
      v890 = v966;
      if (v966 != v965)
      {
        v891 = 0;
        if (0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3) <= 1)
        {
          v892 = 1;
        }

        else
        {
          v892 = 0xEF7BDEF7BDEF7BDFLL * ((v966 - v965) >> 3);
        }

        do
        {
          v894 = &v889[248 * v891];
          v895 = *(v894 + 25);
          if (*(v894 + 26) - v895 >= 9uLL && *v895 == 1 && v895[1] == 9)
          {
            v896 = *(v894 + 9);
            v897 = *(v894 + 10);
            if (v896 == v897)
            {
              v898 = *(v894 + 9);
            }

            else
            {
              v898 = *(v894 + 9);
              while (*v898 != *(v961 + 772))
              {
                v898 += 4;
                if (v898 == v897)
                {
                  v898 = *(v894 + 10);
                  break;
                }
              }
            }

            v899 = v898 - v896;
            v900 = v899 >> 2;
            v901 = v899 << 30;
            v902 = *(v894 + 15);
            if (((*(v894 + 16) - v902) >> 3) - 1 > v900 && v901 != 0)
            {
              v904 = (v902 + (v901 >> 29));
              v905 = v902;
              while (*v905 == 16)
              {
                v905 += 2;
                if (v905 == v904)
                {
                  goto LABEL_746;
                }
              }

              if (v900 >= 1)
              {
                memset_pattern16(v902, &unk_1839D8F30, 8 * (v900 & 0x7FFFFFFF));
              }
            }
          }

LABEL_746:
          ++v891;
        }

        while (v891 != v892);
        v906 = 0;
        do
        {
          v907 = &v889[248 * v906];
          v908 = *(v907 + 10) - *(v907 + 9);
          if (v908)
          {
            v909 = 0;
            v910 = v908 >> 2;
            v911 = *(v907 + 18);
            if (v910 <= 1)
            {
              v910 = 1;
            }

            do
            {
              if ((*(v911 + ((v909 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v909))
              {
                *(*(v907 + 12) + 4 * v909) = *(v961 + 768);
              }

              ++v909;
            }

            while (v910 != v909);
          }

          ++v906;
        }

        while (v906 != v892);
      }

      *a7 = v889;
      a7[1] = v890;
      a7[2] = v967;
      goto LABEL_776;
    }

LABEL_732:
    v885 = 126 - 2 * __clz(v829);
    if (v813 == v812)
    {
      v886 = 0;
    }

    else
    {
      v886 = v885;
    }

    sub_183840EFC(v812, v813, v886, 1);
    goto LABEL_736;
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
LABEL_777:
}

void sub_183839D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, void *a27, uint64_t a28, void *a29, void *a30, void *a31, uint64_t a32, void *a33, void *a34, uint64_t a35, void *a36, void *a37, uint64_t a38, uint64_t a39, void *a40, void *a41, void *a42, void *a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, _Unwind_Exception *exception_objecta, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  sub_1838342E8(&STACK[0x298]);
  sub_1838342E8(&a57);
  if (a49)
  {
    operator delete(a49);
  }

  _Unwind_Resume(a1);
}

void *sub_18383A7B0(void *a1)
{
  *a1 = &unk_1EF1BE880;
  sub_183689978((a1 + 1));
  return a1;
}

void sub_18383A7F4(void *a1)
{
  *a1 = &unk_1EF1BE880;
  sub_183689978((a1 + 1));

  JUMPOUT(0x1865E5EC0);
}

void sub_18383A85C(uint64_t a1)
{
  sub_18383B830(a1);

  JUMPOUT(0x1865E5EC0);
}

void *sub_18383A894(void *a1)
{
  *a1 = &unk_1EF1BE8D0;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 24);
        v3 -= 24;
        v5 = v6;
        if (v6)
        {
          operator delete(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_18383A91C(void *a1)
{
  *a1 = &unk_1EF1BE8D0;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 24);
        v3 -= 24;
        v5 = v6;
        if (v6)
        {
          operator delete(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1865E5EC0);
}

void *sub_18383A9C4(void *a1)
{
  *a1 = &unk_1EF1BE8F8;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
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
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_18383AA54(void *a1)
{
  *a1 = &unk_1EF1BE8F8;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
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
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1865E5EC0);
}

const void **sub_18383AB04(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_18383AB38(uint64_t a1)
{
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  sub_18368D56C(a1 + 168, *(a1 + 176));
  v3 = *(a1 + 144);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    *(a1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    if (v8 != v7)
    {
      v10 = *(a1 + 56);
      do
      {
        v12 = *(v10 - 24);
        v10 -= 24;
        v11 = v12;
        if (v12)
        {
          *(v8 - 16) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 48);
    }

    *(a1 + 56) = v7;
    operator delete(v9);
  }

  sub_18368A374(a1 + 24, *(a1 + 32));
  sub_18383AC30(a1, *(a1 + 8));
  return a1;
}

void sub_18383AC30(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_18383AC30(a1, *a2);
    sub_18383AC30(a1, *(a2 + 1));

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

uint64_t **sub_18383ACBC(uint64_t **a1, uint64_t a2)
{
  v2 = a1;
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  v4 = (a2 + 8);
  v5 = *a2;
  if (*a2 != a2 + 8)
  {
    do
    {
      v18 = v2[1];
      v19 = v3;
      if (*v2 == v3)
      {
        goto LABEL_41;
      }

      v20 = v2[1];
      v21 = v3;
      if (v18)
      {
        do
        {
          v19 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        do
        {
          v19 = v21[2];
          v22 = *v19 == v21;
          v21 = v19;
        }

        while (v22);
      }

      v23 = *(v5 + 55);
      v24 = *(v19 + 55);
      if (v24 >= 0)
      {
        v25 = *(v19 + 55);
      }

      else
      {
        v25 = v19[5];
      }

      if (v24 >= 0)
      {
        v26 = (v19 + 4);
      }

      else
      {
        v26 = v19[4];
      }

      if (v23 >= 0)
      {
        v27 = *(v5 + 55);
      }

      else
      {
        v27 = v5[5];
      }

      if (v23 >= 0)
      {
        v28 = v5 + 4;
      }

      else
      {
        v28 = v5[4];
      }

      if (v27 >= v25)
      {
        v29 = v25;
      }

      else
      {
        v29 = v27;
      }

      v30 = memcmp(v26, v28, v29);
      v31 = v25 < v27;
      if (v30)
      {
        v31 = v30 < 0;
      }

      if (v31)
      {
LABEL_41:
        if (v18)
        {
          v32 = v19 + 1;
        }

        else
        {
          v32 = v3;
        }

        if (!*v32)
        {
LABEL_65:
          operator new();
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_65;
        }

        while (1)
        {
          while (1)
          {
            v33 = v18;
            v34 = *(v18 + 55);
            if (v34 >= 0)
            {
              v35 = *(v18 + 55);
            }

            else
            {
              v35 = v18[5];
            }

            if (v34 >= 0)
            {
              v36 = v18 + 4;
            }

            else
            {
              v36 = v18[4];
            }

            if (v35 >= v27)
            {
              v37 = v27;
            }

            else
            {
              v37 = v35;
            }

            v38 = memcmp(v28, v36, v37);
            v39 = v27 < v35;
            if (v38)
            {
              v39 = v38 < 0;
            }

            if (!v39)
            {
              break;
            }

            v18 = *v33;
            if (!*v33)
            {
              goto LABEL_65;
            }
          }

          v40 = memcmp(v36, v28, v37);
          v41 = v35 < v27;
          if (v40)
          {
            v41 = v40 < 0;
          }

          if (!v41)
          {
            break;
          }

          v18 = v33[1];
          if (!v18)
          {
            goto LABEL_65;
          }
        }
      }

      v42 = v5[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v5[2];
          v22 = *v43 == v5;
          v5 = v43;
        }

        while (!v22);
      }

      v5 = v43;
      v2 = a1;
    }

    while (v43 != v4);
  }

  v2[4] = 0;
  v6 = (v2 + 4);
  v2[3] = (v2 + 4);
  v2[5] = 0;
  v7 = *(a2 + 24);
  if (v7 != (a2 + 32))
  {
    do
    {
      v44 = *(v7 + 8);
      v45 = *v6;
      v46 = v2 + 4;
      if (v2[3] == v6)
      {
        goto LABEL_79;
      }

      v47 = *v6;
      v48 = v2 + 4;
      if (v45)
      {
        do
        {
          v46 = v47;
          v47 = *(v47 + 8);
        }

        while (v47);
      }

      else
      {
        do
        {
          v46 = v48[2];
          v22 = *v46 == v48;
          v48 = v46;
        }

        while (v22);
      }

      if (*(v46 + 8) < v44)
      {
LABEL_79:
        if (v45)
        {
          v49 = v46 + 1;
        }

        else
        {
          v49 = v2 + 4;
        }

        if (!*v49)
        {
LABEL_90:
          sub_18383B618(&v73, (v2 + 3), v7 + 8);
        }
      }

      else
      {
        if (!v45)
        {
          goto LABEL_90;
        }

        while (1)
        {
          while (1)
          {
            v50 = v45;
            v51 = *(v45 + 32);
            if (v51 <= v44)
            {
              break;
            }

            v45 = *v50;
            if (!*v50)
            {
              goto LABEL_90;
            }
          }

          if (v51 >= v44)
          {
            break;
          }

          v45 = v50[1];
          if (!v45)
          {
            goto LABEL_90;
          }
        }
      }

      v52 = v7[1];
      if (v52)
      {
        do
        {
          v53 = v52;
          v52 = *v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v53 = v7[2];
          v22 = *v53 == v7;
          v7 = v53;
        }

        while (!v22);
      }

      v7 = v53;
    }

    while (v53 != (a2 + 32));
  }

  v2[6] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v73 = v2 + 6;
  LOBYTE(v74) = 0;
  if (v9 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v11 = *(a2 + 72);
  v10 = *(a2 + 80);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  v2[12] = 0;
  v2[13] = 0;
  v2[14] = 0;
  v13 = *(a2 + 96);
  v12 = *(a2 + 104);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18369761C();
  }

  v2[15] = 0;
  v2[16] = 0;
  v2[17] = 0;
  v15 = *(a2 + 120);
  v14 = *(a2 + 128);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  sub_18369F384(v2 + 18, a2 + 144);
  v2[22] = 0;
  v16 = (v2 + 22);
  v2[21] = (v2 + 22);
  v2[23] = 0;
  v17 = *(a2 + 168);
  if (v17 != (a2 + 176))
  {
    do
    {
      v54 = *(v17 + 7);
      v55 = *v16;
      v56 = v2 + 22;
      if (v2[21] == v16)
      {
        goto LABEL_104;
      }

      v57 = *v16;
      v58 = v2 + 22;
      if (v55)
      {
        do
        {
          v56 = v57;
          v57 = *(v57 + 8);
        }

        while (v57);
      }

      else
      {
        do
        {
          v56 = v58[2];
          v22 = *v56 == v58;
          v58 = v56;
        }

        while (v22);
      }

      if (*(v56 + 7) < v54)
      {
LABEL_104:
        if (v55)
        {
          v59 = v56 + 1;
        }

        else
        {
          v59 = v2 + 22;
        }

        if (!*v59)
        {
LABEL_115:
          operator new();
        }
      }

      else
      {
        if (!v55)
        {
          goto LABEL_115;
        }

        while (1)
        {
          while (1)
          {
            v60 = v55;
            v61 = *(v55 + 28);
            if (v61 <= v54)
            {
              break;
            }

            v55 = *v60;
            if (!*v60)
            {
              goto LABEL_115;
            }
          }

          if (v61 >= v54)
          {
            break;
          }

          v55 = v60[1];
          if (!v55)
          {
            goto LABEL_115;
          }
        }
      }

      v62 = v17[1];
      if (v62)
      {
        do
        {
          v63 = v62;
          v62 = *v62;
        }

        while (v62);
      }

      else
      {
        do
        {
          v63 = v17[2];
          v22 = *v63 == v17;
          v17 = v63;
        }

        while (!v22);
      }

      v17 = v63;
    }

    while (v63 != (a2 + 176));
  }

  v64 = *(a2 + 192);
  v65 = *(a2 + 196);
  a1[25] = 0;
  *(a1 + 196) = v65;
  *(a1 + 48) = v64;
  a1[26] = 0;
  a1[27] = 0;
  v67 = *(a2 + 200);
  v66 = *(a2 + 208);
  if (v66 != v67)
  {
    if (((v66 - v67) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18383B70C();
  }

  if (*(a2 + 247) < 0)
  {
    v69 = a1;
    sub_183688F34(a1 + 224, *(a2 + 224), *(a2 + 232));
  }

  else
  {
    v68 = *(a2 + 224);
    v69 = a1;
    a1[30] = *(a2 + 240);
    *(a1 + 14) = v68;
  }

  return v69;
}

void sub_18383B494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, char **a11, uint64_t a12, uint64_t a13)
{
  v19 = *v15;
  if (*v15)
  {
    *(a13 + 208) = v19;
    operator delete(v19);
    sub_18368D56C(v14, *v16);
    v20 = *(a13 + 144);
    if (!v20)
    {
LABEL_3:
      v21 = *v17;
      if (!*v17)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_18368D56C(v14, *v16);
    v20 = *(a13 + 144);
    if (!v20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  v21 = *v17;
  if (!*v17)
  {
LABEL_4:
    v22 = *a9;
    if (!*a9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(a13 + 128) = v21;
  operator delete(v21);
  v22 = *a9;
  if (!*a9)
  {
LABEL_6:
    v23 = *a10;
    if (*a10)
    {
      *(a13 + 80) = v23;
      operator delete(v23);
    }

    sub_18369F0F0(a11);
    sub_18368A374(v13, *(a13 + 32));
    sub_18383AC30(a13, *(a13 + 8));
    _Unwind_Resume(a1);
  }

LABEL_5:
  *(a13 + 104) = v22;
  operator delete(v22);
  goto LABEL_6;
}

void sub_18383B6E8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  sub_1836EC858(v1);
  _Unwind_Resume(a1);
}

void *sub_18383B724(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_18368964C();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_18383B808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_18369F28C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_18383B830(uint64_t a1)
{
  *a1 = &unk_1EF1BE8A8;
  sub_18368922C(a1 + 248, *(a1 + 256));
  v2 = *(a1 + 224);
  if (v2)
  {
    v3 = *(a1 + 232);
    v4 = *(a1 + 224);
    if (v3 != v2)
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
      v4 = *(a1 + 224);
    }

    *(a1 + 232) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 200);
  if (v6)
  {
    v7 = *(a1 + 208);
    v8 = *(a1 + 200);
    if (v7 != v6)
    {
      do
      {
        v10 = *(v7 - 8);
        v7 -= 8;
        v9 = v10;
        if (v10)
        {
          CFRelease(v9);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 200);
    }

    *(a1 + 208) = v6;
    operator delete(v8);
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 184);
    v13 = *(a1 + 176);
    if (v12 != v11)
    {
      do
      {
        v15 = *(v12 - 8);
        v12 -= 8;
        v14 = v15;
        if (v15)
        {
          CFRelease(v14);
        }
      }

      while (v12 != v11);
      v13 = *(a1 + 176);
    }

    *(a1 + 184) = v11;
    operator delete(v13);
  }

  v16 = *(a1 + 144);
  if (v16)
  {
    do
    {
      v17 = *v16;
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = *(a1 + 104);
  if (v19)
  {
    do
    {
      v26 = *v19;
      if (*(v19 + 39) < 0)
      {
        operator delete(v19[2]);
      }

      operator delete(v19);
      v19 = v26;
    }

    while (v26);
  }

  v20 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(a1 + 64);
  if (v21)
  {
    do
    {
      v27 = *v21;
      if (*(v21 + 39) < 0)
      {
        operator delete(v21[2]);
      }

      operator delete(v21);
      v21 = v27;
    }

    while (v27);
  }

  v22 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v22)
  {
    operator delete(v22);
  }

  v23 = *(a1 + 24);
  if (v23)
  {
    do
    {
      v28 = *v23;
      if (*(v23 + 39) < 0)
      {
        operator delete(v23[2]);
      }

      operator delete(v23);
      v23 = v28;
    }

    while (v28);
  }

  v24 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v24)
  {
    operator delete(v24);
  }

  return a1;
}

void sub_18383BA44(float *a1, unsigned int a2, _DWORD *a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v8 = v7[1];
      if (v8 == a2)
      {
        if (*(v7 + 4) == a2)
        {
          return;
        }
      }

      else if ((v8 & (v3 - 1)) != v5)
      {
        goto LABEL_22;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= v3)
    {
      v9 %= v3;
    }

    if (v9 != v5)
    {
      goto LABEL_22;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }
}

void sub_18383BEDC(void **a1, void *a2, void *a3)
{
  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = a1 + 1;
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = *(v14 + 7);
      *(v9 + 7) = v15;
      *(v9 + 8) = *(v14 + 8);
      *(v9 + 9) = *(v14 + 9);
      v16 = *v8;
      v17 = a1 + 1;
      v18 = a1 + 1;
      if (*v8)
      {
        break;
      }

LABEL_22:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **a1;
      if (v19)
      {
        goto LABEL_23;
      }

LABEL_24:
      sub_1836894A0(a1[1], v9);
      a1[2] = (a1[2] + 1);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= *(v16 + 7))
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_22;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **a1;
    if (!v19)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a1 = v19;
    goto LABEL_24;
  }

  v12 = v9;
LABEL_13:
  sub_18368D56C(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    sub_18368D56C(a1, v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    operator new();
  }
}

char *sub_18383C228(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_18383B70C();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t *sub_18383C384(uint64_t **a1, const void **a2, __int128 **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_25:
    operator new();
  }

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

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_25;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_25;
    }
  }
}

void sub_18383C524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1836E1D48(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_18383C538(uint64_t **a1, const void **a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_25:
    operator new();
  }

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

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_25;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_25;
    }
  }
}

uint64_t sub_18383C6B4(uint64_t **a1, uint64_t *a2, int *a3, int *a4)
{
  v4 = *sub_18383C7FC(a1, a2, &v7, v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_18383C7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 48) = v6;
    operator delete(v6);
  }

  sub_1836EC858(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_18383C7FC(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 32);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return (a1 + 1);
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 8))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 32);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return (a1 + 1);
      }
    }
  }
}

uint64_t *sub_18383C9AC(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_18368964C();
  }

  return a1;
}

void sub_18383CAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_183689664(va);
  *(v10 + 8) = v11;
  sub_1836896C4(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_18383CAF4(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_183686440(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_18383CED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_183688E98(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_18383CEE8(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_183686440(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_18383D0A0(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_183686440(&v17, v7, v8);
  *(a2 + 8) = v9;
  result = sub_18383D1E8(a1, v9, v4);
  if (!result)
  {
    v11 = a1[1];
    v12 = *(a2 + 8);
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v11)
      {
        v12 %= *&v11;
      }
    }

    else
    {
      v12 &= *&v11 - 1;
    }

    v14 = *a1;
    v15 = *(*a1 + 8 * v12);
    if (v15)
    {
      *a2 = *v15;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v14 + 8 * v12) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_15;
      }

      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }

        v15 = (v14 + 8 * v16);
      }

      else
      {
        v15 = (v14 + 8 * (v16 & (*&v11 - 1)));
      }
    }

    *v15 = a2;
LABEL_15:
    ++a1[3];
    return a2;
  }

  return result;
}