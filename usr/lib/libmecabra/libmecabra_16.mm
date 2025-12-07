uint64_t sub_29927B7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL *a6)
{
  v11 = LMLanguageModelCopyTokenAttributes();
  v12 = sub_29927B6FC(a1, v11);
  if (v12)
  {
    Value = CFDictionaryGetValue(v11, off_2A145F3A8);
    v14 = &off_2A145F350;
    if (!*(a1 + 16))
    {
      v14 = &off_2A145F360;
    }

    v15 = CFDictionaryGetValue(v11, *v14);
    v16 = &off_2A145F358;
    if (!*(a1 + 16))
    {
      v16 = &off_2A145F368;
    }

    v17 = CFDictionaryGetValue(v11, *v16);
    *a6 = CEMStringContainsEmoji() != 0;
    sub_299276BDC(Value, &v22);
    v18 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v18;
      operator delete(v18);
    }

    *a3 = v22;
    *(a3 + 16) = v23;
    sub_299276BDC(v15, &v22);
    v19 = *a4;
    if (*a4)
    {
      *(a4 + 8) = v19;
      operator delete(v19);
    }

    *a4 = v22;
    *(a4 + 16) = v23;
    sub_299276BDC(v17, &v22);
    v20 = *a5;
    if (*a5)
    {
      *(a5 + 8) = v20;
      operator delete(v20);
    }

    *a5 = v22;
    *(a5 + 16) = v23;
    CFRelease(v11);
  }

  return v12;
}

void sub_29927BA6C(uint64_t a1)
{
  v2 = LMLanguageModelCopyTokenAttributes();
  (*(*(a1 + 32) + 16))();

  CFRelease(v2);
}

void sub_29927BAFC(uint64_t a1, const __CFArray *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  v4 = (a1 + 8);
  sub_29927DB54(a1 + 8);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    v6 = Count;
    if (Count < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v19 = Count;
      do
      {
        v9 = *(CFArrayGetValueAtIndex(a2, v8) + 3);
        if (*(a1 + 1) != 1 || *v9 - 123 >= 0xFFFFFFE6)
        {
          ++v7;
          if (v8)
          {
            v20 = v7;
            for (i = 0; i != v8; ++i)
            {
              v11 = *(CFArrayGetValueAtIndex(a2, i) + 3);
              v12 = *v11;
              if (*(a1 + 1) != 1 || (v12 - 123) >= 0xFFFFFFE6)
              {
                v14 = hypotf((v11[1] + (v11[3] * 0.5)) - (v9[1] + (v9[3] * 0.5)), (v11[2] + (v11[4] * 0.5)) - (v9[2] + (v9[4] * 0.5)));
                v22 = v12;
                *buf = &v22;
                v15 = sub_29927DBF4(v4, &v22, &unk_299400092, buf);
                v21 = *v9;
                *buf = &v21;
                *(sub_29927DEB8(v15 + 3, &v21, &unk_299400092, buf) + 3) = v14;
                v22 = *v9;
                *buf = &v22;
                v16 = sub_29927DBF4(v4, &v22, &unk_299400092, buf);
                v21 = *v11;
                *buf = &v21;
                *(sub_29927DEB8(v16 + 3, &v21, &unk_299400092, buf) + 3) = v14;
              }
            }

            v6 = v19;
            v7 = v20;
          }
        }

        ++v8;
      }

      while (v8 != v6);
    }

    v17 = sub_2993652F8(4u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = v6;
      v24 = 2048;
      v25 = v7;
      _os_log_debug_impl(&dword_29918C000, v17, OS_LOG_TYPE_DEBUG, "Input layout key count: %ld, valid layout key count: %ld", buf, 0x16u);
      if (!v7)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }

    v18 = CFRetain(a2);
    sub_299229F00((a1 + 48), v18);
    *a1 = 1;
  }
}

double sub_29927BDA0(uint64_t a1, int a2, int a3)
{
  v8 = a2;
  v7 = a3;
  v3 = 0.0;
  if (a2 != a3)
  {
    v4 = sub_299223864((a1 + 8), &v8);
    v3 = 150.0;
    if (v4)
    {
      v5 = sub_299223864(v4 + 3, &v7);
      if (v5)
      {
        return *(v5 + 3);
      }
    }
  }

  return v3;
}

unint64_t sub_29927BE08(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  v5 = *(a1 + 48);
  if (!v5 || *a1 != 1)
  {
    return 0;
  }

  Count = CFArrayGetCount(v5);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  __src = 0;
  v41 = 0;
  v42 = 0;
  if (Count < 1)
  {
    v32 = 0;
    v31 = 0;
  }

  else
  {
    v13 = Count;
    for (i = 0; i != v13; ++i)
    {
      v15 = *(CFArrayGetValueAtIndex(*(a1 + 48), i) + 3);
      v16 = *v15;
      if ((v16 - 123) >= 0xFFFFFFE6)
      {
        v10.n128_f64[0] = (v15[1] + (v15[3] * 0.5)) - v11;
        v17 = (v15[2] + (v15[4] * 0.5)) - v12;
        v18 = v17 * v17 + v10.n128_f64[0] * v10.n128_f64[0];
        v19 = v41;
        if (v41 >= v42)
        {
          v21 = __src;
          v22 = v41 - __src;
          v23 = (v41 - __src) >> 4;
          v24 = v23 + 1;
          if ((v23 + 1) >> 60)
          {
            sub_299212A8C();
          }

          v25 = v42 - __src;
          if ((v42 - __src) >> 3 > v24)
          {
            v24 = v25 >> 3;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF0)
          {
            v26 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            sub_29927C08C(&__src, v26);
          }

          v27 = (v41 - __src) >> 4;
          v28 = 16 * v23;
          *v28 = v16;
          *(v28 + 8) = v18;
          v20 = 16 * v23 + 16;
          v29 = (v28 - 16 * v27);
          memcpy(v29, v21, v22);
          v30 = __src;
          __src = v29;
          v41 = v20;
          v42 = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v41 = v16;
          *(v19 + 1) = v18;
          v20 = (v19 + 16);
        }

        v41 = v20;
      }
    }

    v31 = __src;
    v32 = v41;
  }

  v33 = 126 - 2 * __clz((v32 - v31) >> 4);
  v43 = &unk_2A1F690B8;
  if (v32 == v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  sub_29927C0D4(v31, v32, &v43, v34, 1, v10);
  v35 = __src;
  if ((v41 - __src) >> 4 < a4)
  {
    a4 = (v41 - __src) >> 4;
  }

  if (a4)
  {
    v36 = __src;
    v37 = a4;
    do
    {
      v38 = *v36;
      v36 += 16;
      *a3++ = v38;
      --v37;
    }

    while (v37);
    goto LABEL_33;
  }

  if (__src)
  {
LABEL_33:
    v41 = v35;
    operator delete(v35);
  }

  return a4;
}

void sub_29927C050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29927C08C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

double sub_29927C0D4(__int16 *a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v10 = (a2 - 1);
  v99 = a2 - 1;
  v100 = a2 - 3;
  v101 = a2 - 2;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 4;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return a6.n128_f64[0];
      }

      if (v14 == 2)
      {
        if ((*(*a3 + 16))())
        {
          v93 = *v11;
          *v11 = *(a2 - 8);
          *(a2 - 8) = v93;
          a6.n128_u64[0] = *(v11 + 1);
          *(v11 + 1) = *(a2 - 1);
          *(a2 - 1) = a6.n128_u64[0];
        }

        return a6.n128_f64[0];
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      v80 = (*(*a3 + 16))();
      v81 = (*(*a3 + 16))();
      if (v80)
      {
        v83 = (v11 + 4);
        v82 = *v11;
        if (v81)
        {
          *v11 = *(a2 - 8);
        }

        else
        {
          *v11 = v11[8];
          v11[8] = v82;
          v83 = (v11 + 12);
          v97 = *(v11 + 1);
          *(v11 + 1) = *(v11 + 3);
          *(v11 + 3) = v97;
          if (!(*(*a3 + 16))())
          {
            return a6.n128_f64[0];
          }

          v82 = v11[8];
          v11[8] = *(a2 - 8);
        }

        *(a2 - 8) = v82;
      }

      else
      {
        if (!v81)
        {
          return a6.n128_f64[0];
        }

        v94 = v11[8];
        v11[8] = *(a2 - 8);
        *(a2 - 8) = v94;
        v95 = *(v11 + 3);
        v99 = (v11 + 12);
        *(v11 + 3) = *(a2 - 1);
        *(a2 - 1) = v95;
        if (!(*(*a3 + 16))())
        {
          return a6.n128_f64[0];
        }

        v96 = *v11;
        *v11 = v11[8];
        v11[8] = v96;
        v83 = (v11 + 4);
      }

      a6.n128_u64[0] = *v83;
      *v83 = *v99;
      *v99 = a6.n128_u64[0];
      return a6.n128_f64[0];
    }

    if (v14 == 4)
    {
      break;
    }

    if (v14 == 5)
    {
      v84 = sub_29927CB50(v11, v11 + 8, v11 + 16, v11 + 24, a3);
      if ((*(*a3 + 16))(v84))
      {
        v85 = v11[24];
        v11[24] = *(a2 - 8);
        *(a2 - 8) = v85;
        v86 = *(v11 + 7);
        *(v11 + 7) = *(a2 - 1);
        *(a2 - 1) = v86;
        if ((*(*a3 + 16))())
        {
          v87 = v11[16];
          v11[16] = v11[24];
          v11[24] = v87;
          v88 = *(v11 + 5);
          *(v11 + 5) = *(v11 + 7);
          *(v11 + 7) = v88;
          if ((*(*a3 + 16))())
          {
            v89 = v11[8];
            v11[8] = v11[16];
            v11[16] = v89;
            v90 = *(v11 + 3);
            *(v11 + 3) = *(v11 + 5);
            *(v11 + 5) = v90;
            if ((*(*a3 + 16))())
            {
              v91 = *v11;
              *v11 = v11[8];
              v11[8] = v91;
              a6.n128_u64[0] = *(v11 + 1);
              *(v11 + 1) = *(v11 + 3);
              *(v11 + 3) = a6.n128_u64[0];
            }
          }
        }
      }

      return a6.n128_f64[0];
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        sub_29927CD54(v11, a2, a3);
      }

      else
      {

        sub_29927CE48(v11, a2, a3);
      }

      return a6.n128_f64[0];
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        sub_29927D6E4(v11, a2, a2, a3, a6);
      }

      return a6.n128_f64[0];
    }

    v15 = &v11[8 * (v14 >> 1)];
    v16 = *(*a3 + 16);
    if (v14 >= 0x81)
    {
      v17 = v16();
      v18 = (*(*a3 + 16))();
      if (v17)
      {
        v20 = (a1 + 4);
        v19 = *a1;
        if (v18)
        {
          *a1 = *v10;
          goto LABEL_27;
        }

        *a1 = *v15;
        *v15 = v19;
        v20 = (v15 + 4);
        v33 = *(a1 + 1);
        *(a1 + 1) = *(v15 + 1);
        *(v15 + 1) = v33;
        if ((*(*a3 + 16))())
        {
          v19 = *v15;
          *v15 = *v10;
LABEL_27:
          *v10 = v19;
          v26 = a2 - 1;
LABEL_28:
          v34 = *v20;
          *v20 = *v26;
          *v26 = v34;
        }
      }

      else if (v18)
      {
        v25 = *v15;
        *v15 = *(a2 - 8);
        *(a2 - 8) = v25;
        v26 = (v15 + 4);
        v27 = *(v15 + 1);
        *(v15 + 1) = *(a2 - 1);
        *(a2 - 1) = v27;
        if ((*(*a3 + 16))())
        {
          v28 = *a1;
          *a1 = *v15;
          v20 = (a1 + 4);
          *v15 = v28;
          goto LABEL_28;
        }
      }

      v35 = v15 - 8;
      v36 = (*(*a3 + 16))();
      v37 = (*(*a3 + 16))();
      if (v36)
      {
        v38 = a1[8];
        v39 = a1 + 12;
        if (v37)
        {
          a1[8] = *v101;
          *v101 = v38;
          goto LABEL_40;
        }

        a1[8] = *v35;
        *v35 = v38;
        v45 = *v39;
        *v39 = *(v15 - 1);
        *(v15 - 1) = v45;
        if ((*(*a3 + 16))())
        {
          v46 = *v35;
          *v35 = *v101;
          *v101 = v46;
          v39 = v15 - 4;
LABEL_40:
          v41 = a2 - 12;
LABEL_41:
          v47 = *v39;
          *v39 = *v41;
          *v41 = v47;
        }
      }

      else if (v37)
      {
        v40 = *v35;
        *v35 = *(a2 - 16);
        *(a2 - 16) = v40;
        v41 = v15 - 4;
        v42 = *(v15 - 1);
        *(v15 - 1) = *(a2 - 3);
        *(a2 - 3) = v42;
        if ((*(*a3 + 16))())
        {
          v43 = a1[8];
          a1[8] = *v35;
          *v35 = v43;
          v39 = a1 + 12;
          goto LABEL_41;
        }
      }

      v48 = v15 + 8;
      v49 = (*(*a3 + 16))();
      v50 = (*(*a3 + 16))();
      if (v49)
      {
        v51 = a1[16];
        v52 = (a1 + 20);
        if (v50)
        {
          a1[16] = *v100;
          *v100 = v51;
          goto LABEL_50;
        }

        a1[16] = *v48;
        *v48 = v51;
        v57 = *v52;
        *v52 = *(v15 + 3);
        *(v15 + 3) = v57;
        if ((*(*a3 + 16))())
        {
          v58 = *v48;
          *v48 = *v100;
          *v100 = v58;
          v52 = (v15 + 12);
LABEL_50:
          v54 = a2 - 5;
LABEL_51:
          v59 = *v52;
          *v52 = *v54;
          *v54 = v59;
        }
      }

      else if (v50)
      {
        v53 = *v48;
        *v48 = *(a2 - 24);
        *(a2 - 24) = v53;
        v54 = (v15 + 12);
        v55 = *(v15 + 3);
        *(v15 + 3) = *(a2 - 5);
        *(a2 - 5) = v55;
        if ((*(*a3 + 16))())
        {
          v56 = a1[16];
          a1[16] = *v48;
          *v48 = v56;
          v52 = (a1 + 20);
          goto LABEL_51;
        }
      }

      v60 = (*(*a3 + 16))();
      v61 = (*(*a3 + 16))();
      if (v60)
      {
        v62 = *v35;
        if (v61)
        {
          *v35 = *v48;
          *v48 = v62;
          v63 = v15 + 12;
          v64 = *v15;
          v65 = v15 - 4;
          goto LABEL_60;
        }

        *v35 = *v15;
        *v15 = v62;
        v70 = *(v15 - 1);
        *(v15 - 1) = *(v15 + 1);
        *(v15 + 1) = v70;
        v71 = (*(*a3 + 16))();
        v64 = *v15;
        if (v71)
        {
          v72 = *v48;
          *v15 = *v48;
          *v48 = v64;
          v63 = v15 + 12;
          v64 = v72;
          v65 = v15 + 4;
LABEL_60:
          v66 = v63;
LABEL_61:
          v73 = *v65;
          *v65 = *v66;
          *v66 = v73;
        }
      }

      else
      {
        v64 = *v15;
        if (v61)
        {
          *v15 = *v48;
          *v48 = v64;
          v66 = v15 + 4;
          v67 = *(v15 + 1);
          *(v15 + 1) = *(v15 + 3);
          *(v15 + 3) = v67;
          v68 = (*(*a3 + 16))();
          v64 = *v15;
          if (v68)
          {
            v69 = *v35;
            *v35 = v64;
            v65 = v15 - 4;
            *v15 = v69;
            v64 = v69;
            goto LABEL_61;
          }
        }
      }

      v74 = *a1;
      *a1 = v64;
      v24 = (a1 + 4);
      *v15 = v74;
      v32 = (v15 + 4);
LABEL_63:
      v75 = *v24;
      *v24 = *v32;
      *v32 = v75;
      goto LABEL_64;
    }

    v21 = v16();
    v22 = (*(*a3 + 16))();
    if (v21)
    {
      v24 = (v15 + 4);
      v23 = *v15;
      if (v22)
      {
        *v15 = *v10;
LABEL_37:
        *v10 = v23;
        v32 = a2 - 1;
        goto LABEL_63;
      }

      *v15 = *v11;
      *v11 = v23;
      v24 = (v11 + 4);
      v44 = *(v15 + 1);
      *(v15 + 1) = *(v11 + 1);
      *(v11 + 1) = v44;
      if ((*(*a3 + 16))())
      {
        v23 = *v11;
        *v11 = *v10;
        goto LABEL_37;
      }
    }

    else if (v22)
    {
      v29 = *v11;
      *v11 = *(a2 - 8);
      *(a2 - 8) = v29;
      v30 = *(v11 + 1);
      *(v11 + 1) = *(a2 - 1);
      *(a2 - 1) = v30;
      if ((*(*a3 + 16))())
      {
        v31 = *v15;
        *v15 = *v11;
        *v11 = v31;
        v24 = (v15 + 4);
        v32 = (v11 + 4);
        goto LABEL_63;
      }
    }

LABEL_64:
    if ((a5 & 1) == 0 && ((*(*a3 + 16))() & 1) == 0)
    {
      v11 = sub_29927CF20(a1, a2, a3);
      goto LABEL_71;
    }

    sub_29927D098(a1, a2, a3);
    v77 = v76;
    if ((v78 & 1) == 0)
    {
      goto LABEL_69;
    }

    v79 = sub_29927D208(a1, v76, a3);
    v11 = (v77 + 1);
    if (sub_29927D208((v77 + 1), a2, a3))
    {
      a4 = -v13;
      a2 = v77;
      if (v79)
      {
        return a6.n128_f64[0];
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v79)
    {
LABEL_69:
      a6.n128_f64[0] = sub_29927C0D4(a1, v77, a3, -v13, a5 & 1);
      v11 = (v77 + 1);
LABEL_71:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  a6.n128_f64[0] = sub_29927CB50(v11, v11 + 8, v11 + 16, a2 - 8, a3);
  return a6.n128_f64[0];
}

double sub_29927CB50(__int16 *a1, __int16 *a2, __int16 *a3, __int16 *a4, uint64_t a5)
{
  v10 = (*(*a5 + 16))();
  v11 = (*(*a5 + 16))();
  if (v10)
  {
    v13 = a1 + 4;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v15 = a3 + 4;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = a2 + 4;
    v18 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v18;
    if ((*(*a5 + 16))())
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v15 = a2 + 4;
    v16 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v16;
    if ((*(*a5 + 16))())
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = a1 + 4;
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v15;
      *v15 = v19;
    }
  }

  if ((*(*a5 + 16))())
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 1);
    *(a4 + 1) = v22;
    if ((*(*a5 + 16))())
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v24;
      if ((*(*a5 + 16))())
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        result = *(a1 + 1);
        *(a1 + 1) = *(a2 + 1);
        *(a2 + 1) = result;
      }
    }
  }

  return result;
}

uint64_t sub_29927CD54(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      do
      {
        v8 = v5;
        result = (*(*a3 + 16))();
        if (result)
        {
          v12 = *v8;
          v9 = v7;
          while (1)
          {
            v10 = v4 + v9;
            *(v10 + 16) = *(v4 + v9);
            *(v10 + 24) = *(v4 + v9 + 8);
            if (!v9)
            {
              break;
            }

            v9 -= 16;
            result = (*(*a3 + 16))();
            if ((result & 1) == 0)
            {
              v11 = v4 + v9 + 16;
              goto LABEL_10;
            }
          }

          v11 = v4;
LABEL_10:
          *v11 = v12;
          *(v11 + 8) = *(&v12 + 1);
        }

        v5 = v8 + 1;
        v7 += 16;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_29927CE48(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (result + 16);
    if ((result + 16) != a2)
    {
      v6 = result - 16;
      do
      {
        v7 = v4;
        result = (*(*a3 + 16))();
        if (result)
        {
          v9 = *v7;
          v8 = v6;
          do
          {
            *(v8 + 32) = *(v8 + 16);
            *(v8 + 40) = *(v8 + 24);
            result = (*(*a3 + 16))();
            v8 -= 16;
          }

          while ((result & 1) != 0);
          *(v8 + 32) = v9;
          *(v8 + 40) = *(&v9 + 1);
        }

        v4 = v7 + 1;
        v6 += 16;
      }

      while (v7 + 1 != a2);
    }
  }

  return result;
}

__int16 *sub_29927CF20(__int16 *a1, unint64_t a2, uint64_t a3)
{
  v12 = *a1;
  if ((*(*a3 + 16))())
  {
    v6 = a1;
    do
    {
      v6 += 8;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    v7 = a1 + 8;
    do
    {
      v6 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = (*(*a3 + 16))();
      v7 = v6 + 8;
    }

    while (!v8);
  }

  if (v6 < a2)
  {
    do
    {
      a2 -= 16;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  while (v6 < a2)
  {
    v9 = *v6;
    *v6 = *a2;
    *a2 = v9;
    v10 = *(v6 + 1);
    *(v6 + 1) = *(a2 + 8);
    *(a2 + 8) = v10;
    do
    {
      v6 += 8;
    }

    while (!(*(*a3 + 16))());
    do
    {
      a2 -= 16;
    }

    while (((*(*a3 + 16))() & 1) != 0);
  }

  if (v6 - 8 != a1)
  {
    *a1 = *(v6 - 8);
    *(a1 + 1) = *(v6 - 1);
  }

  *(v6 - 8) = v12;
  *(v6 - 1) = *(&v12 + 1);
  return v6;
}

double sub_29927D098(__int16 *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v13 = *a1;
  do
  {
    v6 += 8;
  }

  while (((*(*a3 + 16))() & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 8)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 16;
    }

    while (((*(*a3 + 16))() & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 16;
    }

    while (!(*(*a3 + 16))());
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *v9 = v10;
      v11 = *(v8 + 1);
      *(v8 + 1) = *(v9 + 8);
      *(v9 + 8) = v11;
      do
      {
        v8 += 8;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      do
      {
        v9 -= 16;
      }

      while (!(*(*a3 + 16))());
    }

    while (v8 < v9);
  }

  if (v8 - 8 != a1)
  {
    *a1 = *(v8 - 8);
    *(a1 + 1) = *(v8 - 1);
  }

  *(v8 - 8) = v13;
  result = *(&v13 + 1);
  *(v8 - 1) = *(&v13 + 1);
  return result;
}

BOOL sub_29927D208(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v18 = (*(*a3 + 16))();
      v19 = (*(*a3 + 16))();
      if (v18)
      {
        v21 = (a1 + 8);
        v20 = *a1;
        if (v19)
        {
          *a1 = *(a2 - 8);
        }

        else
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v20;
          v21 = (a1 + 24);
          v34 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v34;
          if (!(*(*a3 + 16))())
          {
            return 1;
          }

          v20 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
        }

        *(a2 - 8) = v20;
        v27 = a2 - 1;
      }

      else
      {
        if (!v19)
        {
          return 1;
        }

        v26 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 8);
        *(a2 - 8) = v26;
        v27 = (a1 + 24);
        v28 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v28;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v29 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v29;
        v21 = (a1 + 8);
      }

      v35 = *v21;
      *v21 = *v27;
      *v27 = v35;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v9 = sub_29927CB50(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if ((*(*a3 + 16))(v9))
        {
          v10 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 8);
          *(a2 - 8) = v10;
          v11 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 1);
          *(a2 - 1) = v11;
          if ((*(*a3 + 16))())
          {
            v12 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 48);
            *(a1 + 48) = v12;
            v13 = *(a1 + 40);
            *(a1 + 40) = *(a1 + 56);
            *(a1 + 56) = v13;
            if ((*(*a3 + 16))())
            {
              v14 = *(a1 + 16);
              *(a1 + 16) = *(a1 + 32);
              *(a1 + 32) = v14;
              v15 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 40);
              *(a1 + 40) = v15;
              if ((*(*a3 + 16))())
              {
                v16 = *a1;
                *a1 = *(a1 + 16);
                *(a1 + 16) = v16;
                v17 = *(a1 + 8);
                *(a1 + 8) = *(a1 + 24);
                *(a1 + 24) = v17;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_29927CB50(a1, (a1 + 16), (a1 + 32), a2 - 8, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*(*a3 + 16))())
    {
      v7 = *a1;
      *a1 = *(a2 - 8);
      *(a2 - 8) = v7;
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v22 = (*(*a3 + 16))();
  v23 = (*(*a3 + 16))();
  if (v22)
  {
    v25 = (a1 + 8);
    v24 = *a1;
    if (v23)
    {
      *a1 = *(a1 + 32);
    }

    else
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v24;
      v25 = (a1 + 24);
      v36 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v36;
      if (!(*(*a3 + 16))())
      {
        goto LABEL_35;
      }

      v24 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
    }

    *(a1 + 32) = v24;
    v31 = (a1 + 40);
    goto LABEL_34;
  }

  if (v23)
  {
    v30 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 32) = v30;
    v31 = (a1 + 24);
    v32 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 40) = v32;
    if ((*(*a3 + 16))())
    {
      v33 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 16) = v33;
      v25 = (a1 + 8);
LABEL_34:
      v37 = *v25;
      *v25 = *v31;
      *v31 = v37;
    }
  }

LABEL_35:
  v38 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v45 = *v38;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 48) = *(a1 + v41 + 32);
        *(v42 + 56) = *(a1 + v41 + 40);
        if (v41 == -32)
        {
          break;
        }

        v41 -= 16;
        if (((*(*a3 + 16))() & 1) == 0)
        {
          v43 = a1 + v41 + 48;
          goto LABEL_43;
        }
      }

      v43 = a1;
LABEL_43:
      *v43 = v45;
      *(v43 + 8) = *(&v45 + 1);
      if (++v40 == 8)
      {
        return v38 + 1 == a2;
      }
    }

    v39 += 16;
    if (++v38 == a2)
    {
      return 1;
    }
  }
}

char *sub_29927D6E4(char *a1, char *a2, char *a3, uint64_t a4, __n128 a5)
{
  if (a1 != a2)
  {
    v9 = (a2 - a1) >> 4;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[16 * v10];
      do
      {
        a5.n128_f64[0] = sub_29927D864(a1, a4, v9, v12--);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if ((*(*a4 + 16))(a5))
        {
          v14 = *v13;
          *v13 = *a1;
          *a1 = v14;
          v15 = *(v13 + 1);
          *(v13 + 1) = *(a1 + 1);
          *(a1 + 1) = v15;
          a5.n128_f64[0] = sub_29927D864(a1, a4, v9, a1);
        }

        v13 += 16;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      v16 = a2 - 16;
      do
      {
        v17 = *a1;
        v18 = *(a1 + 1);
        v19 = sub_29927D9CC(a1, a4, v9);
        if (v16 == v19)
        {
          *v19 = v17;
          *(v19 + 8) = v18;
        }

        else
        {
          *v19 = *v16;
          *(v19 + 8) = *(v16 + 1);
          *v16 = v17;
          *(v16 + 1) = v18;
          sub_29927DA88(a1, v19 + 16, a4, (v19 + 16 - a1) >> 4);
        }

        v16 -= 16;
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

double sub_29927D864(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v10 = (a4 - a1) >> 3;
      v11 = v10 + 1;
      v12 = a1 + 16 * (v10 + 1);
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*(*a2 + 16))())
      {
        v12 += 16;
        v11 = v13;
      }

      if (((*(*a2 + 16))() & 1) == 0)
      {
        v18 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          *(v5 + 1) = *(v12 + 8);
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = a1 + 16 * v16;
          v17 = 2 * v11 + 2;
          if (v17 < a3)
          {
            if ((*(*a2 + 16))())
            {
              v12 += 16;
              v16 = v17;
            }
          }

          v5 = v15;
          v11 = v16;
        }

        while (!(*(*a2 + 16))());
        *v15 = v18;
        result = *(&v18 + 1);
        *(v15 + 8) = *(&v18 + 1);
      }
    }
  }

  return result;
}

uint64_t sub_29927D9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 16 * v6;
    v9 = v8 + 16;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 32;
      if ((*(*a2 + 16))())
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    *(a1 + 8) = *(v9 + 8);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_29927DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    if ((*(*a3 + 16))())
    {
      v12 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        *(v9 + 1) = *(v8 + 1);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
        v9 = v11;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      *v11 = v12;
      result = *(&v12 + 1);
      *(v11 + 1) = *(&v12 + 1);
    }
  }

  return result;
}

void sub_29927DB54(uint64_t result)
{
  if (*(result + 24))
  {
    sub_29927DBB0(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_29927DBB0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29921ED28((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **sub_29927DBF4(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_29927DE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29927DE6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29927DE6C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29921ED28(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_29927DEB8(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_29927E0F4(unsigned int *a1, const __CFString *a2, int a3, unsigned int a4, unsigned int a5)
{
  *a1 = a4;
  a1[1] = a5;
  sub_299276E1C(a2);
}

void sub_29927E348(_Unwind_Exception *a1)
{
  sub_29921ED28(v6 - 96);
  sub_29921ED28(v2);
  if (v1[79] < 0)
  {
    operator delete(*v5);
  }

  if (v1[55] < 0)
  {
    operator delete(*v4);
  }

  if (v1[31] < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void sub_29927E3A0(uint64_t a1, uint64_t *a2)
{
  sub_299273BA0(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_29927E444(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  if (theString)
  {
    CFStringGetLength(theString);
    operator new[]();
  }

  operator new();
}

uint64_t sub_29927E580(uint64_t a1, uint64_t *a2, __int128 *a3, const __CFString *a4, const __CFString *a5, int a6, char a7)
{
  v14 = sub_29933BEB8(a1, a2 + 1);
  v15 = *a2;
  *v14 = *a2;
  *(a1 + *(v15 - 32)) = a2[5];
  v16 = *a3;
  *(a1 + 36) = *(a3 + 4);
  *(a1 + 20) = v16;
  *(a1 + 40) = 0;
  v17 = MEMORY[0x29EDB8ED8];
  if (a4)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a4);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 48) = Copy;
  if (a5)
  {
    v19 = CFStringCreateCopy(*v17, a5);
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 56) = v19;
  *(a1 + 64) = 0;
  *(a1 + 72) = a6;
  *(a1 + 76) = a6;
  *(a1 + 80) = 0xFFEFFFFFFFFFFFFFLL;
  *(a1 + 88) = 0;
  *(a1 + 89) = a7;
  *(a1 + 90) = 1;
  sub_29927EC68((a1 + 96), 1uLL);
  v20 = *(a1 + 96);
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = *(a1 + 96);
  *(v21 + 38) = 1;
  if (a4)
  {
    Length = CFStringGetLength(a4);
    v21 = *(a1 + 96);
  }

  else
  {
    Length = 0;
  }

  *(v21 + 24) = Length;
  if (a5)
  {
    v23 = CFStringGetLength(a5);
    v21 = *(a1 + 96);
  }

  else
  {
    v23 = 0;
  }

  *(v21 + 26) = v23;
  *(v21 + 37) |= 1u;
  *v21 = 0;
  return a1;
}

void sub_29927E73C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    *(v1 + 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29927E758(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_29933BFC4(a1, a2 + 1, a3);
  v7 = *a2;
  *v6 = *a2;
  *(a1 + *(v7 - 32)) = a2[5];
  v8 = *(a3 + 20);
  *(a1 + 36) = *(a3 + 36);
  *(a1 + 20) = v8;
  v9 = *(a3 + 40);
  v10 = MEMORY[0x29EDB8ED8];
  if (v9)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], v9);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 40) = Copy;
  v12 = *(a3 + 48);
  if (v12)
  {
    v13 = CFStringCreateCopy(*v10, v12);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 48) = v13;
  v14 = *(a3 + 56);
  if (v14)
  {
    v15 = CFStringCreateCopy(*v10, v14);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 56) = v15;
  v16 = *(a3 + 64);
  if (v16)
  {
    v17 = CFStringCreateCopy(*v10, v16);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 64) = v17;
  v18 = *(a3 + 80);
  *(a1 + 72) = *(a3 + 72);
  *(a1 + 80) = v18;
  *(a1 + 88) = *(a3 + 88);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  sub_29921E8E0((a1 + 96), *(a3 + 96), *(a3 + 104), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 104) - *(a3 + 96)) >> 3));
  return a1;
}

uint64_t *sub_29927E8D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 32)) = a2[5];
  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[12];
  a1[13] = v8;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

CFStringRef sub_29927E9CC(void *a1, const __CFString *a2)
{
  result = (*(*a1 + 544))(a1);
  if (a2 && result)
  {
    v5 = a1[5];
    if (v5)
    {
      CFRelease(v5);
    }

    result = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
    a1[5] = result;
  }

  return result;
}

CFMutableStringRef sub_29927EA48(uint64_t a1)
{
  Mutable = *(a1 + 64);
  if (!Mutable)
  {
    Mutable = CFStringCreateMutable(0, 0);
    v4 = *(a1 + 96);
    v3 = *(a1 + 104);
    v5 = (*(*a1 + 416))(a1);
    if ((v5 & 0x4000) != 0 && v3 == v4)
    {
      *(a1 + 64) = Mutable;
    }

    else
    {
      if ((v5 & 0x4000) != 0)
      {
        Copy = &stru_2A1F7E6E8;
      }

      else
      {
        Copy = CFStringCreateCopy(0, *(a1 + 56));
      }

      *(a1 + 64) = Copy;
      CFRelease(Mutable);
      return *(a1 + 64);
    }
  }

  return Mutable;
}

uint64_t sub_29927EB00(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 96);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 104) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 24);
  }
}

uint64_t sub_29927EB3C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 96);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 104) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 26);
  }
}

const __CFString *sub_29927EB78(void *a1)
{
  v1 = a1[12];
  if (v1 == a1[13])
  {
    return 0;
  }

  result = a1[6];
  if (result)
  {
    if (*v1 == 7)
    {
      return 1;
    }

    else
    {
      return sub_299236410(result);
    }
  }

  return result;
}

BOOL sub_29927EBAC(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 104) - v1;
  if (!v2)
  {
    return 1;
  }

  v3 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 3);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!*(v1 + 12))
  {
    return 0;
  }

  v5 = (v1 + 52);
  v6 = 1;
  do
  {
    v7 = v6;
    if (v4 == v6)
    {
      break;
    }

    v8 = *v5;
    v5 += 10;
    ++v6;
  }

  while (v8);
  return v3 <= v7;
}

uint64_t *sub_29927EC68(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29921E95C(a1, a2);
  }

  return a1;
}

void sub_29927ECE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *sub_29927ED04(void *a1, const __CFArray *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v71 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  v4 = (*(*v71 + 576))();
  if (v4)
  {
    v5 = v4;
    if (*v4 != v4[1])
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
      v6 = (*(*v71 + 560))(v71);
      v7 = *v6;
      v73 = v6;
      v8 = v6[1] - *v6;
      if (v8)
      {
        v70 = v5;
        v75 = 0;
        v9 = 0;
        v10 = v8 >> 2;
        v11 = Mutable;
        while (*(v7 + 4 * v9) != 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
          CFArrayAppendValue(v11, ValueAtIndex);
          v17 = v9;
LABEL_89:
          v9 = v17 + 1;
          v7 = *v73;
          v10 = (v73[1] - *v73) >> 2;
          if (v17 + 1 >= v10)
          {
            return v11;
          }
        }

        v12 = v9 + 1;
        while (1)
        {
          v13 = v12;
          if (v12 >= v10)
          {
            break;
          }

          v14 = *(v7 + 4 * v12++);
          if (v14 != 1)
          {
            v15 = v13 - 1;
            goto LABEL_13;
          }
        }

        v15 = v10 - 1;
LABEL_13:
        v18 = (*v70 + 16 * v75);
        v19 = v18[1];
        v20 = v15;
        if (v15 == v9)
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = v18[1];
          v82 = 0;
          v83 = 0;
          valuePtr = 0;
          sub_2992220D8(&valuePtr, &__p, &__p.__r_.__value_.__s.__data_[2], 1);
          v21 = sub_299279BF8(&valuePtr);
          v17 = v20;
          if (valuePtr)
          {
            v82 = valuePtr;
            operator delete(valuePtr);
          }

LABEL_86:
          v89.length = CFArrayGetCount(v21);
          v89.location = 0;
          CFArrayAppendArray(Mutable, v21, v89);
          if (v21)
          {
            CFRelease(v21);
          }

          v11 = Mutable;
          ++v75;
          goto LABEL_89;
        }

        v22 = *v18;
        v23 = (*(*v71 + 56))(v71);
        v86.location = v22;
        v86.length = v19;
        theString1 = CFStringCreateWithSubstring(0, v23, v86);
        (*(*v71 + 432))(&valuePtr, v71, 0);
        v24 = sub_299279BF8(&valuePtr);
        if (valuePtr)
        {
          v82 = valuePtr;
          operator delete(valuePtr);
        }

        v25 = (*(*v71 + 232))(v71);
        if (v9 < 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          for (i = 0; i != v9; ++i)
          {
            v28 = CFArrayGetValueAtIndex(v24, i);
            LOWORD(valuePtr) = 0;
            CFNumberGetValue(v28, kCFNumberShortType, &valuePtr);
            v26 += valuePtr;
          }
        }

        v29 = 0;
        if (v20 >= v9)
        {
          if (v10 >= v13)
          {
            v10 = v13;
          }

          v30 = v9;
          do
          {
            v31 = CFArrayGetValueAtIndex(v24, v30);
            LOWORD(valuePtr) = 0;
            CFNumberGetValue(v31, kCFNumberShortType, &valuePtr);
            v29 += valuePtr;
            ++v30;
          }

          while (v10 != v30);
        }

        v87.location = v26;
        v87.length = v29;
        v32 = CFStringCreateWithSubstring(0, v25, v87);
        v33 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
        v88.length = v20 - v9 + 1;
        v88.location = v9;
        CFArrayAppendArray(v33, v24, v88);
        v17 = v20;
        if (CFStringCompare(theString1, v32, 0))
        {
          MutableCopy = CFStringCreateMutableCopy(0, 0, v32);
          cf = v32;
          v35 = 0;
          v36 = 0;
          v83 = 0;
          v84 = MutableCopy;
          valuePtr = 0;
          v82 = 0;
          while (v35 < CFArrayGetCount(v33))
          {
            v37 = CFArrayGetValueAtIndex(v33, v35);
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            CFNumberGetValue(v37, kCFNumberShortType, &__p);
            v38 = v36 + LOWORD(__p.__r_.__value_.__l.__data_);
            CFStringInsert(MutableCopy, v38, @"  ");
            v39 = CFStringGetLength(@"  ") + v38;
            v40 = v39 - v36;
            v41 = v82;
            if (v82 >= v83)
            {
              v43 = valuePtr;
              v44 = v82 - valuePtr;
              v45 = (v82 - valuePtr) >> 4;
              v46 = v45 + 1;
              if ((v45 + 1) >> 60)
              {
                sub_299212A8C();
              }

              v47 = v83 - valuePtr;
              if ((v83 - valuePtr) >> 3 > v46)
              {
                v46 = v47 >> 3;
              }

              v48 = v47 >= 0x7FFFFFFFFFFFFFF0;
              v49 = 0xFFFFFFFFFFFFFFFLL;
              if (!v48)
              {
                v49 = v46;
              }

              if (v49)
              {
                sub_29927F5A0(&valuePtr, v49);
              }

              v50 = (16 * v45);
              *v50 = v36;
              v50[1] = v40;
              v42 = 16 * v45 + 16;
              memcpy(0, v43, v44);
              v51 = valuePtr;
              valuePtr = 0;
              v82 = v42;
              v83 = 0;
              if (v51)
              {
                operator delete(v51);
              }
            }

            else
            {
              *v82 = v36;
              *(v41 + 1) = v40;
              v42 = (v41 + 8);
            }

            v82 = v42;
            ++v35;
            v36 = v39;
            v17 = v20;
          }

          while (1)
          {
            Length = CFStringGetLength(MutableCopy);
            if (Length > CFStringGetLength(theString1))
            {
              break;
            }

            CFStringAppend(MutableCopy, @"  ");
          }

          sub_299236624(MutableCopy, theString1, &__p);
          __src = 0;
          v78 = 0;
          v79 = 0;
          sub_299218E20(&__src, (v82 - valuePtr) >> 4);
          v53 = valuePtr;
          v54 = v82;
          while (v53 != v54)
          {
            v55 = *(v53 + 1);
            if (v55 < 1)
            {
              v56 = 0;
            }

            else
            {
              v56 = 0;
              v57 = *v53;
              v58 = v55 + *v53;
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              do
              {
                if ((p_p->__r_.__value_.__s.__data_[v57] - 97) < 0x1A)
                {
                  ++v56;
                }

                ++v57;
              }

              while (v57 < v58);
            }

            v60 = v78;
            if (v78 >= v79)
            {
              v62 = __src;
              v63 = v78 - __src;
              v64 = (v78 - __src) >> 1;
              if (v64 <= -2)
              {
                sub_299212A8C();
              }

              if (v79 - __src <= v64 + 1)
              {
                v65 = v64 + 1;
              }

              else
              {
                v65 = v79 - __src;
              }

              v66 = 0x7FFFFFFFFFFFFFFFLL;
              if (v79 - __src < 0x7FFFFFFFFFFFFFFELL)
              {
                v66 = v65;
              }

              if (v66)
              {
                sub_299212A48(&__src, v66);
              }

              *(2 * v64) = v56;
              v61 = 2 * v64 + 2;
              memcpy(0, v62, v63);
              v67 = __src;
              __src = 0;
              v78 = v61;
              v79 = 0;
              if (v67)
              {
                operator delete(v67);
              }
            }

            else
            {
              *v78 = v56;
              v61 = (v60 + 2);
            }

            v17 = v20;
            v78 = v61;
            v53 += 8;
          }

          v21 = sub_299279BF8(&__src);
          v32 = cf;
          if (__src)
          {
            v78 = __src;
            operator delete(__src);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (valuePtr)
          {
            v82 = valuePtr;
            operator delete(valuePtr);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (v33)
          {
            CFRelease(v33);
          }

          if (!cf)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v21 = v33;
          if (!v32)
          {
LABEL_82:
            if (v24)
            {
              CFRelease(v24);
            }

            if (theString1)
            {
              CFRelease(theString1);
            }

            goto LABEL_86;
          }
        }

        CFRelease(v32);
        goto LABEL_82;
      }

      return Mutable;
    }
  }

  return CFRetain(a2);
}

void sub_29927F488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, const void *a19, const void *a20, const void *a21, const void *a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = *(v31 - 120);
  if (v33)
  {
    *(v31 - 112) = v33;
    operator delete(v33);
  }

  sub_29924A4BC((v31 - 96), 0);
  sub_2992530BC(&a19, 0);
  sub_299219AB4(&a20, 0);
  sub_299229F00(&a21, 0);
  sub_299219AB4(&a22, 0);
  _Unwind_Resume(a1);
}

void sub_29927F5A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_29927F5E8(uint64_t *a1, unsigned int **a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFString *a6, char a7, _BYTE *a8, double a9, uint64_t **a10)
{
  v104[0] = a7;
  v17 = *a1;
  v18 = *(*a1 + 8);
  if (*(v18 + 5) != 1 || (v19 = *(v18 + 40)) == 0)
  {
    v19 = *(v18 + 32);
  }

  v20 = *(v17 + 24);
  if (v20)
  {
    sub_299210C88(*(v17 + 24));
    v21 = atomic_load((v20 + 40));
    if (v21 == 2)
    {
      v22 = *v20;
      v23 = !v22 || v19 == 0;
      if (!v23)
      {
        if (v104[0] == 1)
        {
          if (!sub_299377274(a2, v19))
          {
            return;
          }
        }

        else
        {
          v19 = v22;
          if (!sub_299377348(a2, v22))
          {
            return;
          }
        }

        theString = a6;
        if (a6)
        {
          v24 = CFStringGetLength(a6) == 0;
        }

        else
        {
          v24 = 1;
        }

        v83 = a5;
        v25 = -7.0;
        if (v104[0])
        {
          v25 = (*(*v19 + 40))(v19, 2);
        }

        LMLanguageModelCreatePredictionEnumerator();
        __src = 0;
        v26 = 0;
        alloc = *MEMORY[0x29EDB8ED8];
        v90 = (a10 + 1);
        v27 = 7.0;
        v28 = 0.0;
        v88 = 1;
        while (1)
        {
          if (!LMPredictionEnumeratorAdvance())
          {
LABEL_169:
            LMPredictionEnumeratorRelease();
            return;
          }

          v103 = 0;
          v101 = 0;
          v102 = 0.0;
          LMPredictionEnumeratorGetPrediction();
          v29 = v104[0];
          if ((v104[0] & 1) == 0)
          {
            v101 = a2[1] - *a2;
          }

          if (v103 == 2)
          {
            v30 = !v24;
            if (v26)
            {
              v30 = 1;
            }

            if ((v30 & 1) == 0)
            {
              *a8 = 1;
            }

            if (!v29)
            {
              v25 = v102;
            }

            goto LABEL_30;
          }

          if (v24)
          {
            if (v103 < 0x258)
            {
              goto LABEL_30;
            }
          }

          else if (v103 < 0x258 || v103 == 1000 || v103 == 1003)
          {
            goto LABEL_30;
          }

          if ((v104[0] & 1) != 0 || *(a2[1] - 1) != v103)
          {
            v31 = *(*a1 + 8);
            if (*(v31 + 5) != 1 || (v32 = *(v31 + 40)) == 0)
            {
              v32 = *(v31 + 32);
            }

            v33 = v102;
            if (!sub_299384558(v32, v103))
            {
              v34 = v25 <= -0.3;
              if (!v24)
              {
                v34 = v25 <= -0.5;
              }

              if (!v34 || v25 + -2.0 > v33)
              {
                goto LABEL_169;
              }
            }

            v35 = v103;
            if (v103 >= 0x258)
            {
              v36 = *(*a1 + 8);
              if (*(v36 + 5) != 1 || (v37 = *(v36 + 40)) == 0)
              {
                v37 = *(v36 + 32);
              }

              v38 = *(*(*a1 + 136) + 8);
              if (sub_299384558(v37, v103))
              {
                v39 = *(*a1 + 8);
                if (*(v39 + 5) != 1 || (v40 = *(v39 + 40)) == 0)
                {
                  v40 = *(v39 + 32);
                }

                v41 = (*(*v40 + 32))(v40, v35);
              }

              else
              {
                v42 = sub_2993337E8(v38, v35);
                if (!v42 || (*(v42 + 4) & 0x800) != 0)
                {
                  goto LABEL_30;
                }

                v41 = sub_2993336C8(v38, v35);
              }

              v43 = v41;
              v100 = v41;
              if (v41)
              {
                break;
              }
            }
          }

LABEL_30:
          if (++v26 == a4)
          {
            goto LABEL_169;
          }
        }

        Length = CFStringGetLength(v41);
        if (!Length)
        {
          v45 = 4;
          goto LABEL_161;
        }

        if (*(a3 + 8) == 1)
        {
          if (v88 & 1 | (__src != v101))
          {
            if (v101 > 1)
            {
              if (*(a3 + 9))
              {
                v28 = 1.1;
              }

              else
              {
                v28 = 4.1;
              }

              if (*(a3 + 9))
              {
                v27 = 10.0;
              }

              else
              {
                v27 = 10.5;
              }
            }

            else
            {
              if (*(a3 + 9))
              {
                v28 = 1.1;
              }

              else
              {
                v28 = 3.1;
              }

              if (*(a3 + 9))
              {
                v27 = 10.0;
              }

              else
              {
                v27 = 11.0;
              }
            }
          }

          if (v102 <= -v27)
          {
            v45 = 2;
            goto LABEL_161;
          }

          if (v88)
          {
            v27 = -(v102 * v28);
          }
        }

        cf = 0;
        sub_299280940(v98, 1uLL, &v103);
        LOWORD(v94) = Length;
        sub_29927A740(&__p, 1, &v94);
        if (v24)
        {
          v46 = v102 + a9;
          v89 = 0;
          v47 = v46 + log2(Length) * 0.25;
          if (!v29)
          {
LABEL_111:
            v94 = v47;
            __src = v101;
            v62 = a10[2];
            v63 = *a10;
            if (!v62)
            {
              goto LABEL_125;
            }

            v64 = 1;
            if (*(v63 + 56))
            {
              v64 = 0;
            }

            if (v47 < *&v63[v64 + 4] + -3.0)
            {
              goto LABEL_115;
            }

            if (v62 != v83)
            {
              goto LABEL_125;
            }

            v65 = a10 + 1;
            v66 = *v90;
            if (*v90)
            {
              do
              {
                v67 = v66;
                v66 = *(v66 + 8);
              }

              while (v66);
            }

            else
            {
              do
              {
                v67 = v65[2];
                v23 = *v67 == v65;
                v65 = v67;
              }

              while (v23);
            }

            v68 = 8;
            if (*(v67 + 56))
            {
              v68 = 0;
            }

            v69 = *(v67 + v68 + 32);
            if (v47 < v69 + -0.5)
            {
LABEL_115:
              v45 = 2;
              goto LABEL_154;
            }

            if (v47 < v69)
            {
              v45 = 4;
            }

            else
            {
LABEL_125:
              if (v89)
              {
                v43 = v89;
              }

              v93 = v43;
              if (v63 != v90)
              {
                while (1)
                {
                  v70 = v63[8];
                  if (v70)
                  {
                    if (CFStringCompare(v70, v43, 0) == kCFCompareEqualTo)
                    {
                      break;
                    }
                  }

                  v71 = v63[1];
                  if (v71)
                  {
                    do
                    {
                      v72 = v71;
                      v71 = *v71;
                    }

                    while (v71);
                  }

                  else
                  {
                    do
                    {
                      v72 = v63[2];
                      v23 = *v72 == v63;
                      v63 = v72;
                    }

                    while (!v23);
                  }

                  v63 = v72;
                  if (v72 == v90)
                  {
                    goto LABEL_143;
                  }
                }
              }

              if (v63 == v90)
              {
LABEL_143:
                if (a10[2] == v83)
                {
                  v75 = (a10 + 1);
                  v76 = *v90;
                  if (*v90)
                  {
                    do
                    {
                      v77 = v76;
                      v76 = v76[1];
                    }

                    while (v76);
                  }

                  else
                  {
                    do
                    {
                      v77 = v75[2];
                      v23 = *v77 == v75;
                      v75 = v77;
                    }

                    while (v23);
                  }

                  v78 = a10;
                  sub_299280C44(a10, v77);
                  sub_299280B18((v77 + 4));
                  operator delete(v77);
                  if ((v104[0] & 1) == 0)
                  {
LABEL_149:
                    LODWORD(v92) = 0;
                    sub_299280E68(v78, &v93, &v92, &v94, v98, &__p, v104);
                  }
                }

                else
                {
                  v78 = a10;
                  if (!v29)
                  {
                    goto LABEL_149;
                  }
                }

                LODWORD(v92) = 0;
                sub_299280CB8(v78, &v93, &v94, &v92, v98, &__p, v104);
              }

              v73 = v63 + 4;
              v74 = 1;
              if (*(v63 + 56))
              {
                v74 = 0;
              }

              if (v47 > *&v73[v74])
              {
                v92 = v73[v74];
                sub_299280C44(a10, v63);
                sub_299280B18((v63 + 4));
                operator delete(v63);
                if (v104[0] == 1)
                {
                  sub_299280F5C(a10, &v93, &v94, &v92, v98, &__p, v104);
                }

                sub_29928104C(a10, &v93, &v92, &v94, v98, &__p, v104);
              }

              v45 = 0;
            }

LABEL_154:
            if (__p)
            {
              v96 = __p;
              operator delete(__p);
            }

            if (v98[0])
            {
              v98[1] = v98[0];
              operator delete(v98[0]);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            v88 = 0;
            v43 = v100;
            if (!v100)
            {
LABEL_162:
              if ((v45 | 4) != 4)
              {
                goto LABEL_169;
              }

              goto LABEL_30;
            }

LABEL_161:
            CFRelease(v43);
            goto LABEL_162;
          }
        }

        else
        {
          MutableCopy = CFStringCreateMutableCopy(alloc, 0, theString);
          cf = MutableCopy;
          CFStringAppend(MutableCopy, v43);
          sub_29920D3D8(v98, v98[0], a2[1] - 4);
          __srca = __p;
          v81 = CFStringGetLength(theString);
          v49 = v96;
          v89 = MutableCopy;
          if (v96 >= v97)
          {
            v52 = (v96 - __p) >> 1;
            if (v52 <= -2)
            {
              sub_299212A8C();
            }

            if (v97 - __p <= v52 + 1)
            {
              v53 = v52 + 1;
            }

            else
            {
              v53 = v97 - __p;
            }

            if (v97 - __p >= 0x7FFFFFFFFFFFFFFELL)
            {
              v54 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v54 = v53;
            }

            if (v54)
            {
              sub_299212A48(&__p, v54);
            }

            v55 = __srca - __p;
            v56 = (__srca - __p) >> 1;
            v57 = (2 * v56);
            if (!v56)
            {
              if (v55 < 1)
              {
                if (__p == __srca)
                {
                  v79 = 1;
                }

                else
                {
                  v79 = __srca - __p;
                }

                sub_299212A48(&__p, v79);
              }

              v57 = (v57 - (((v55 >> 1) + 1) & 0x7FFFFFFFFFFFFFFELL));
            }

            v58 = __srca;
            v80 = v57;
            *v57 = v81;
            v59 = v57 + 1;
            memcpy(v57 + 1, __srca, v96 - __srca);
            __srcb = v59 + v96 - __srca;
            v96 = v58;
            v60 = &v80[-(v58 - __p)];
            memcpy(v60, __p, v58 - __p);
            v61 = __p;
            __p = v60;
            v96 = __srcb;
            v97 = 0;
            if (v61)
            {
              operator delete(v61);
            }
          }

          else
          {
            v50 = __srca;
            if (__srca == v96)
            {
              *v96 = v81;
              v96 = v49 + 2;
            }

            else
            {
              if (v96 < 2)
              {
                v51 = v96;
              }

              else
              {
                *v96 = *(v96 - 1);
                v51 = v49 + 2;
              }

              v96 = v51;
              if (v49 != __srca + 2)
              {
                memmove(__srca + 2, __srca, v49 - (__srca + 2));
                v50 = __srca;
              }

              *v50 = v81;
            }
          }

          v47 = v102 + a9;
          if ((v104[0] & 1) == 0)
          {
            v29 = 0;
            goto LABEL_111;
          }
        }

        v47 = v47 + -0.2;
        v29 = 1;
        goto LABEL_111;
      }
    }
  }
}

void sub_29927FFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, const void *a31, const void *a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  sub_29924A4BC(&a31, 0);
  sub_299219AB4(&a32, 0);
  _Unwind_Resume(a1);
}

void sub_29928005C(uint64_t *a1@<X0>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  *a4 = 0;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = a5 + 1;
  v5 = *(*a1 + 24);
  if (v5)
  {
    sub_299210C88(*(*a1 + 24));
    v6 = atomic_load((v5 + 40));
    if (v6 == 2)
    {
      if (*v5)
      {
        operator new();
      }
    }
  }
}

void sub_299280830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char *a20, char a21)
{
  a20 = &a14;
  sub_299280BC0(&a20);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  (*(*v22 + 16))(v22);
  sub_29928113C(v21, *(v21 + 8));
  _Unwind_Resume(a1);
}

uint64_t *sub_299280940(uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2992F8674(a1, a2);
  }

  return a1;
}

void sub_299280A38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299280A54(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, char a5, double a6, double a7)
{
  *a1 = a6;
  *(a1 + 8) = a7;
  *(a1 + 16) = 0;
  *(a1 + 24) = a5;
  if (cf)
  {
    v10 = CFRetain(cf);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_29920DED0((a1 + 40), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_299215EC0((a1 + 64), *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 1);
  return a1;
}

void sub_299280AE8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_299219AB4((v1 + 32), 0);
  _Unwind_Resume(a1);
}

void sub_299280B18(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  sub_299219AB4((a1 + 32), 0);
}

uint64_t sub_299280B70(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    sub_299280B18(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_299280BC0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 88;
        sub_299280B18(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_299280C44(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_2991FA400(v6, a2);
  return v3;
}

void sub_299280D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299280E1C(va);
  _Unwind_Resume(a1);
}

void *sub_299280DAC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    if (*(a3 + 24))
    {
      v6 = 0;
    }

    else
    {
      v6 = 8;
    }

    v7 = *(a3 + v6);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 56) ? 0 : 8;
        v10 = *(v8 + v9 + 32);
        if (v7 < v10)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_16;
        }
      }

      if (v10 < v7)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_16:
  *a2 = v8;
  return result;
}

uint64_t sub_299280E1C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_299280B18(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_299280F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299280E1C(va);
  _Unwind_Resume(a1);
}

void sub_299281034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299280E1C(va);
  _Unwind_Resume(a1);
}

void sub_299281124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299280E1C(va);
  _Unwind_Resume(a1);
}

void sub_29928113C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29928113C(a1, *a2);
    sub_29928113C(a1, a2[1]);
    sub_299280B18((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_299281198(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A1460628, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460628))
  {
    sub_29927B508(&qword_2A1460620, 5, "ja");
    __cxa_atexit(sub_29927B588, &qword_2A1460620, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460628);
  }

  return sub_29927B610(&qword_2A1460620, a1, a2, 1);
}

BOOL sub_299281268(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2A1460630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460630))
  {
    sub_299217DF0(qword_2A14606F0, "F");
    __cxa_atexit(sub_299217384, qword_2A14606F0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460630);
  }

  if ((atomic_load_explicit(&qword_2A1460640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460640))
  {
    sub_29927B28C(&qword_2A1460638, qword_2A14606F0, 0);
    __cxa_atexit(sub_29927B320, &qword_2A1460638, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460640);
  }

  return sub_29927B354(&qword_2A1460638, a1);
}

BOOL sub_299281394(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2A1460648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460648))
  {
    sub_299217DF0(qword_2A1460708, "H");
    __cxa_atexit(sub_299217384, qword_2A1460708, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460648);
  }

  if ((atomic_load_explicit(&qword_2A1460658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460658))
  {
    sub_29927B28C(&qword_2A1460650, qword_2A1460708, 0);
    __cxa_atexit(sub_29927B320, &qword_2A1460650, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460658);
  }

  return sub_29927B354(&qword_2A1460650, a1);
}

CFStringRef sub_2992814C0(const __CFString *a1)
{
  if (a1)
  {
    v2 = 0;
    sub_299276A84(a1);
  }

  return 0;
}

void sub_299281574(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    MEMORY[0x29C29BF70](v15, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992815B4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A1460668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460668))
  {
    sub_29927B508(&qword_2A1460660, 1, 0);
    __cxa_atexit(sub_29927B588, &qword_2A1460660, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460668);
  }

  return sub_29927B610(&qword_2A1460660, a1, a2, 0);
}

uint64_t sub_299281680(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A1460678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460678))
  {
    sub_29927B508(&qword_2A1460670, 1, "en");
    __cxa_atexit(sub_29927B588, &qword_2A1460670, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460678);
  }

  return sub_29927B610(&qword_2A1460670, a1, a2, 0);
}

uint64_t sub_299281750(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_2A1460688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460688))
  {
    sub_29927B508(&qword_2A1460680, 1, 0);
    __cxa_atexit(sub_29927B588, &qword_2A1460680, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460688);
  }

  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  return sub_29927B5BC(&qword_2A1460680, v5, v6, a2);
}

uint64_t sub_29928182C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((atomic_load_explicit(&qword_2A1460698, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460698))
  {
    sub_29927B508(&qword_2A1460690, 5, "ja");
    __cxa_atexit(sub_29927B588, &qword_2A1460690, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460698);
  }

  return sub_29927B5BC(&qword_2A1460690, a1, a2, a3);
}

BOOL sub_299281900(uint64_t a1, unint64_t a2, void *a3)
{
  *a3 = 0;
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = 0;
      v3 *= 10;
      v7 = &word_29940BFF0;
      while (*v7 != *(a1 + 2 * v5))
      {
        v6 -= 2;
        ++v7;
        if (v6 == -20)
        {
          goto LABEL_10;
        }
      }

      if (-v6 == -2)
      {
        break;
      }

      v3 += -v6 >> 1;
      v4 = ++v5 >= a2;
      if (v5 == a2)
      {
        v4 = 1;
        break;
      }
    }

LABEL_10:
    *a3 = v3;
  }

  else
  {
    return 1;
  }

  return v4;
}

uint64_t sub_29928199C(uint64_t a1)
{
  v1 = a1;
  v5 = 1;
  LODWORD(__p[0]) = a1;
  if (sub_299281268(__p))
  {
    v2 = __p[0];
    if (v5 >= 0)
    {
      v2 = __p;
    }

    v1 = *v2;
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v1;
}

void sub_299281A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_299281A24(__int16 a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14606A0, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    v3 = __cxa_guard_acquire(&qword_2A14606A0);
    a1 = v2;
    if (v3)
    {
      v4[2] = *&asc_29940C008[16];
      v4[3] = unk_29940C038;
      v5[0] = xmmword_29940C048;
      *(v5 + 12) = *(&xmmword_29940C048 + 12);
      v4[0] = *asc_29940C008;
      v4[1] = *&asc_29940C008[8];
      sub_29923BCCC(qword_2A1460750, v4, 46);
      __cxa_atexit(sub_29923BCC8, qword_2A1460750, &dword_29918C000);
      __cxa_guard_release(&qword_2A14606A0);
      a1 = v2;
    }
  }

  LOWORD(v4[0]) = a1;
  return sub_299223864(qword_2A1460750, v4) != 0;
}

BOOL sub_299281B44(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, Length - 1);

  return sub_299281A24(CharacterAtIndex);
}

BOOL sub_299281B98(unsigned __int16 a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14606A8, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    v3 = __cxa_guard_acquire(&qword_2A14606A8);
    a1 = v2;
    if (v3)
    {
      *v4 = xmmword_29940C064;
      *&v4[7] = 0x53414E5D516B4E03;
      sub_29923BCCC(qword_2A1460778, v4, 11);
      __cxa_atexit(sub_29923BCC8, qword_2A1460778, &dword_29918C000);
      __cxa_guard_release(&qword_2A14606A8);
      a1 = v2;
    }
  }

  v4[0] = a1;
  return sub_299223864(qword_2A1460778, v4) != 0;
}

BOOL sub_299281CA8(__int16 a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14606B0, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    v3 = __cxa_guard_acquire(&qword_2A14606B0);
    a1 = v2;
    if (v3)
    {
      v5 = 20140;
      v4[0] = xmmword_29940C07A;
      v4[1] = unk_29940C08A;
      sub_29923BCCC(qword_2A14607A0, v4, 17);
      __cxa_atexit(sub_29923BCC8, qword_2A14607A0, &dword_29918C000);
      __cxa_guard_release(&qword_2A14606B0);
      a1 = v2;
    }
  }

  LOWORD(v4[0]) = a1;
  return sub_299223864(qword_2A14607A0, v4) != 0;
}

BOOL sub_299281DB8(unsigned __int16 *a1, uint64_t a2)
{
  if ((a2 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v3 = *a1;
  if (a2 == 1)
  {
    return v3 == 19975 || v3 == 20740 || v3 == 21315;
  }

  if (v3 != 21315)
  {
    return 0;
  }

  v6 = a1[1];
  return v6 == 19975 || v6 == 20740;
}

const __CFString *sub_299281E24(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringGetLength(result) == 1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v1, 0);
      v3 = 20;
      v4 = &word_29940C09C;
      while (*v4 != CharacterAtIndex)
      {
        ++v4;
        v3 -= 2;
        if (!v3)
        {
          v4 = &unk_29940C0B0;
          break;
        }
      }

      v5 = v4 != &unk_29940C0B0;
      if (v4 == &unk_29940C0B0)
      {
        v4 = 0;
      }

      if (v4 - &word_29940C09C == -2)
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFString *sub_299281EBC(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    if (Length < 1)
    {
      return 0;
    }

    else
    {
      v3 = Length;
      v4 = 0;
      while (1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v1, v4);
        if (CharacterAtIndex != 9787 && (u_charType(CharacterAtIndex) - 19) < 0xB)
        {
          break;
        }

        if (v3 == ++v4)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_299281F40(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  result = 0;
  if (a1 && a2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(a1 + 2 * v9);
      if ((v11 + 240) < 0xAu)
      {
        break;
      }

      if ((v11 - 48) < 0xA)
      {
        result = 1;
        goto LABEL_13;
      }

      if (a4)
      {
        if (sub_299281CA8(v11))
        {
          goto LABEL_12;
        }
      }

      else if (sub_299281B98(v11))
      {
LABEL_12:
        result = 3;
        goto LABEL_13;
      }

      v12 = 0;
      result = 0;
      if (!v9)
      {
        return result;
      }

LABEL_14:
      if (!v12 && v10 != result)
      {
        if (a3)
        {
          return v10;
        }

        else
        {
          return 0;
        }
      }

      ++v9;
      if (a3)
      {
        *a3 = v9;
      }

      v10 = result;
      if (a2 == v9)
      {
        return result;
      }
    }

    result = 2;
LABEL_13:
    v12 = v9 == 0;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_299282028(const __CFString *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (!Length)
  {
    return 0;
  }

  v11 = Length;
  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
  v12 = 1;
  *a2 = 0;
  if (Length >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, i);
      v15 = CharacterAtIndex;
      v16 = (CharacterAtIndex + 240);
      if ((CharacterAtIndex - 48) < 0xA || v16 <= 9)
      {
        *a3 = 1;
        if (v16 <= 9)
        {
          *a2 = 1;
        }
      }

      if (sub_299281CA8(CharacterAtIndex))
      {
        *a4 = 1;
      }

      if (v15 == 65292 || v15 == 44)
      {
        *a5 = 1;
      }
    }

    return 1;
  }

  return v12;
}

uint64_t sub_299282124(uint64_t a1, unint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A14606C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14606C0))
  {
    qword_2A14606B8 = CFCharacterSetCreateWithCharactersInString(0, @"0123456789(.");
    __cxa_guard_release(&qword_2A14606C0);
  }

  if (a2 >= 2)
  {
    v5 = a1 + 2 * a2;
    v8 = *(v5 - 2);
    v7 = (v5 - 2);
    v6 = v8;
    v9 = 1;
    while (1)
    {
      v10 = *v7--;
      if (v10 != v6 || !CFCharacterSetIsCharacterMember(qword_2A14606B8, v6))
      {
        break;
      }

      if (++v9 > a2)
      {
        v12 = 1;
        goto LABEL_10;
      }
    }

    v12 = 0;
    v11 = v9 > 2;
LABEL_10:
    v4 = v12 | v11;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_29928221C(unsigned __int16 *a1, uint64_t a2, int a3)
{
  v29 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    if ((atomic_load_explicit(&qword_2A14606E8, memory_order_acquire) & 1) == 0)
    {
      v21 = a1;
      v22 = a2;
      v23 = __cxa_guard_acquire(&qword_2A14606E8);
      a2 = v22;
      v24 = v23;
      a1 = v21;
      if (v24)
      {
        v27 = xmmword_29940C11A;
        v28[0] = unk_29940C12A;
        *(v28 + 12) = unk_29940C136;
        v25 = xmmword_29940C0FA;
        v26 = unk_29940C10A;
        sub_29921B60C(&qword_2A1460738, &v25, 38);
        __cxa_atexit(sub_29921B5E0, &qword_2A1460738, &dword_29918C000);
        __cxa_guard_release(&qword_2A14606E8);
        a1 = v21;
        a2 = v22;
      }
    }

    if (a2)
    {
      if (qword_2A1460740)
      {
        v10 = &a1[a2];
        while (1)
        {
          v11 = *a1;
          v12 = &qword_2A1460740;
          v13 = qword_2A1460740;
          do
          {
            v14 = *(v13 + 26);
            v8 = v14 >= v11;
            v15 = v14 < v11;
            if (v8)
            {
              v12 = v13;
            }

            v13 = *(v13 + 8 * v15);
          }

          while (v13);
          if (v12 == &qword_2A1460740 || v11 < *(v12 + 13))
          {
            break;
          }

          if (++a1 == v10)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    return 1;
  }

  if ((atomic_load_explicit(&qword_2A14606E0, memory_order_acquire) & 1) == 0)
  {
    v17 = a1;
    v18 = a2;
    v19 = __cxa_guard_acquire(&qword_2A14606E0);
    a2 = v18;
    v20 = v19;
    a1 = v17;
    if (v20)
    {
      v25 = xmmword_29940C0E2;
      *&v26 = 0x2E002800390038;
      sub_29921B60C(&qword_2A1460720, &v25, 12);
      __cxa_atexit(sub_29921B5E0, &qword_2A1460720, &dword_29918C000);
      __cxa_guard_release(&qword_2A14606E0);
      a1 = v17;
      a2 = v18;
    }
  }

  if (!a2)
  {
    return 1;
  }

  if (qword_2A1460728)
  {
    v3 = &a1[a2];
    while (1)
    {
      v4 = *a1;
      v5 = &qword_2A1460728;
      v6 = qword_2A1460728;
      do
      {
        v7 = *(v6 + 26);
        v8 = v7 >= v4;
        v9 = v7 < v4;
        if (v8)
        {
          v5 = v6;
        }

        v6 = *(v6 + 8 * v9);
      }

      while (v6);
      if (v5 == &qword_2A1460728 || v4 < *(v5 + 13))
      {
        break;
      }

      if (++a1 == v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_2992824B0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = a1;
  v130 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14606C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14606C8))
  {
    *__p = xmmword_29940C0B2;
    v37 = unk_29940C0C2;
    v38 = xmmword_29940C0D2;
    sub_299283B5C(__p, 12);
    __cxa_atexit(sub_299282F78, &xmmword_2A14607C8, &dword_29918C000);
    __cxa_guard_release(&qword_2A14606C8);
    v5 = a1;
  }

  if ((atomic_load_explicit(&qword_2A14606D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14606D0))
  {
    sub_299217DF0(__p, "1");
    WORD4(v37) = 49;
    sub_299217DF0(&v38, "1");
    v39 = 9734;
    sub_299217DF0(v40, L"111");
    v41 = 9834;
    sub_299217DF0(v42, L"1111");
    v43 = 8594;
    sub_299217DF0(v44, "2");
    v45 = 50;
    sub_299217DF0(v46, L"22");
    v47 = 165;
    sub_299217DF0(v48, "2");
    v49 = 36;
    sub_299217DF0(v50, "2");
    v51 = 8364;
    sub_299217DF0(v52, L"3");
    v53 = 51;
    sub_299217DF0(v54, L"33");
    v55 = 37;
    sub_299217DF0(v56, "3");
    v57 = 176;
    sub_299217DF0(v58, "3");
    v59 = 35;
    sub_299217DF0(v60, L"4");
    v61 = 52;
    sub_299217DF0(v62, L"44");
    v63 = 9675;
    sub_299217DF0(v64, "4");
    v65 = -246;
    sub_299217DF0(v66, "4");
    v67 = 12539;
    sub_299217DF0(v68, L"5");
    v69 = 53;
    sub_299217DF0(v70, L"55");
    v71 = 43;
    sub_299217DF0(v72, "5");
    v73 = 215;
    sub_299217DF0(v74, "5");
    v75 = 247;
    sub_299217DF0(v76, "6");
    v77 = 54;
    sub_299217DF0(v78, L"66");
    v79 = 60;
    sub_299217DF0(v80, "6");
    v81 = 61;
    sub_299217DF0(v82, "6");
    v83 = 62;
    sub_299217DF0(v84, L"7");
    v85 = 55;
    sub_299217DF0(v86, L"77");
    v87 = 12300;
    sub_299217DF0(v88, "7");
    v89 = 12301;
    sub_299217DF0(v90, "7");
    v91 = -230;
    sub_299217DF0(v92, "8");
    v93 = 56;
    sub_299217DF0(v94, L"88");
    v95 = 12306;
    sub_299217DF0(v96, "8");
    v97 = 12293;
    sub_299217DF0(v98, "8");
    v99 = 12294;
    sub_299217DF0(v100, "9");
    v101 = 57;
    sub_299217DF0(v102, L"99");
    v103 = 94;
    sub_299217DF0(v104, "9");
    v105 = 124;
    sub_299217DF0(v106, "9");
    v107 = 92;
    sub_299217DF0(v108, L"0");
    v109 = 48;
    sub_299217DF0(v110, L"00");
    v111 = 12316;
    sub_299217DF0(v112, "0");
    v113 = 8230;
    sub_299217DF0(v114, "(");
    v115 = 40;
    sub_299217DF0(v116, "(");
    v117 = 41;
    sub_299217DF0(v118, L"(((");
    v119 = 91;
    sub_299217DF0(v120, L"((((");
    v121 = 93;
    sub_299217DF0(v122, ".");
    v123 = 46;
    sub_299217DF0(v124, ".");
    v125 = 44;
    sub_299217DF0(v126, L"...");
    v127 = 45;
    sub_299217DF0(v128, L"....");
    v129 = 47;
    sub_299283FD4(__p, 47);
    v32 = 188;
    do
    {
      if (*(&__p[v32 - 1] - 1) < 0)
      {
        operator delete(__p[v32 - 4]);
      }

      v32 -= 4;
    }

    while (v32 * 8);
    __cxa_atexit(sub_299282F7C, &xmmword_2A14607F0, &dword_29918C000);
    __cxa_guard_release(&qword_2A14606D0);
    v5 = a1;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (!a2)
  {
    return;
  }

  v7 = 0;
  v8 = v5 + 2;
  v9 = &qword_2A1460000;
  v33 = a4;
  do
  {
    v10 = (v5 + 2 * v7);
    v11 = *v10;
    if (!*(&xmmword_2A14607C8 + 1))
    {
      goto LABEL_21;
    }

    v12 = vcnt_s8(*(&xmmword_2A14607C8 + 8));
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = *v10;
      if (*(&xmmword_2A14607C8 + 1) <= v11)
      {
        v13 = v11 % WORD4(xmmword_2A14607C8);
      }
    }

    else
    {
      v13 = (DWORD2(xmmword_2A14607C8) - 1) & v11;
    }

    v14 = *(v9[249] + 8 * v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_21:
      sub_2992174C4(a4, *v10);
      v17 = v7 + 1;
      goto LABEL_22;
    }

    while (1)
    {
      v16 = v15[1];
      if (v16 == v11)
      {
        break;
      }

      if (v12.u32[0] > 1uLL)
      {
        if (v16 >= *(&xmmword_2A14607C8 + 1))
        {
          v16 %= *(&xmmword_2A14607C8 + 1);
        }
      }

      else
      {
        v16 &= *(&xmmword_2A14607C8 + 1) - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_21;
      }

LABEL_20:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    if (*(v15 + 8) != v11)
    {
      goto LABEL_20;
    }

    v18 = v7 + *(v15 + 18);
    if (a2 < v18)
    {
      v18 = a2;
    }

    if (v18 <= v7 + 1)
    {
      v19 = v7 + 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = v7;
    while (1)
    {
      v17 = v20 + 1;
      if (v20 + 1 >= v18)
      {
        break;
      }

      v21 = *(v8 + 2 * v20++);
      if (v11 != v21)
      {
        goto LABEL_34;
      }
    }

    v17 = v19;
LABEL_34:
    if (v5)
    {
      v22 = v17 - v7;
    }

    else
    {
      v22 = 0;
    }

    sub_29925851C(__p, v10, v22);
    v23 = sub_29923AF34(&xmmword_2A14607F0, __p);
    v24 = *(&xmmword_2A14607F0 + 1);
    if (*(&xmmword_2A14607F0 + 1))
    {
      v25 = v23;
      v26 = vcnt_s8(*(&xmmword_2A14607F0 + 8));
      v26.i16[0] = vaddlv_u8(v26);
      v27 = v26.u32[0];
      if (v26.u32[0] > 1uLL)
      {
        v28 = v23;
        if (v23 >= *(&xmmword_2A14607F0 + 1))
        {
          v28 = v23 % *(&xmmword_2A14607F0 + 1);
        }
      }

      else
      {
        v28 = (*(&xmmword_2A14607F0 + 1) - 1) & v23;
      }

      v30 = *(xmmword_2A14607F0 + 8 * v28);
      if (v30)
      {
        for (i = *v30; i; i = *i)
        {
          v31 = i[1];
          if (v25 == v31)
          {
            if (sub_29923AF78(&xmmword_2A14607F0, i + 8, __p))
            {
              break;
            }
          }

          else
          {
            if (v27 > 1)
            {
              if (v31 >= v24)
              {
                v31 %= v24;
              }
            }

            else
            {
              v31 &= v24 - 1;
            }

            if (v31 != v28)
            {
              goto LABEL_55;
            }
          }
        }
      }

      else
      {
LABEL_55:
        i = 0;
      }

      a4 = v33;
      v9 = &qword_2A1460000;
    }

    else
    {
      i = 0;
    }

    if (SBYTE7(v37) < 0)
    {
      operator delete(__p[0]);
      if (!i)
      {
        goto LABEL_62;
      }

LABEL_61:
      sub_2992174C4(a4, *(i + 20));
      ++*a3;
      goto LABEL_62;
    }

    if (i)
    {
      goto LABEL_61;
    }

LABEL_62:
    v5 = a1;
LABEL_22:
    v7 = v17;
  }

  while (v17 < a2);
}

void sub_299282E24(_Unwind_Exception *a1)
{
  v3 = (v1 + 1495);
  v4 = -1504;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A14606D0);
      _Unwind_Resume(a1);
    }
  }
}

void sub_299282F80(uint64_t a1, uint64_t a2, void *a3)
{
  v62 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14606D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14606D8))
  {
    v6[0] = 12316;
    sub_299217DF0(v7, L"00");
    v8 = 8230;
    sub_299217DF0(v9, "0");
    v10 = 9734;
    sub_299217DF0(v11, "1");
    v12 = 9834;
    sub_299217DF0(v13, L"111");
    v14 = 8594;
    sub_299217DF0(v15, L"1111");
    v16 = 165;
    sub_299217DF0(v17, L"22");
    v18 = 36;
    sub_299217DF0(v19, "2");
    v20 = 8364;
    sub_299217DF0(v21, "2");
    v22 = 37;
    sub_299217DF0(v23, L"33");
    v24 = 176;
    sub_299217DF0(v25, "3");
    v26 = 9675;
    sub_299217DF0(v27, L"44");
    v28 = -246;
    sub_299217DF0(v29, "4");
    v30 = 12539;
    sub_299217DF0(v31, "4");
    v32 = 43;
    sub_299217DF0(v33, L"55");
    v34 = 215;
    sub_299217DF0(v35, "5");
    v36 = 247;
    sub_299217DF0(v37, "5");
    v38 = 60;
    sub_299217DF0(v39, L"66");
    v40 = 61;
    sub_299217DF0(v41, "6");
    v42 = 62;
    sub_299217DF0(v43, "6");
    v44 = 12300;
    sub_299217DF0(v45, L"77");
    v46 = 12301;
    sub_299217DF0(v47, "7");
    v48 = -230;
    sub_299217DF0(v49, "7");
    v50 = 12306;
    sub_299217DF0(v51, L"88");
    v52 = 12293;
    sub_299217DF0(v53, "8");
    v54 = 12294;
    sub_299217DF0(v55, "8");
    v56 = 94;
    sub_299217DF0(v57, L"99");
    v58 = 124;
    sub_299217DF0(v59, "9");
    v60 = 92;
    sub_299217DF0(v61, "9");
    sub_2992844AC(v6, 28);
    v5 = 448;
    do
    {
      if (SHIBYTE(v6[v5 - 1]) < 0)
      {
        operator delete(*&v6[v5 - 12]);
      }

      v5 -= 16;
    }

    while (v5 * 2);
    __cxa_atexit(sub_2992835E4, &xmmword_2A1460818, &dword_29918C000);
    __cxa_guard_release(&qword_2A14606D8);
  }

  *a3 = 0;
  operator new[]();
}

void sub_299283508(_Unwind_Exception *a1)
{
  v3 = v1 + 872;
  v4 = -896;
  while (1)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    v3 -= 32;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A14606D8);
      _Unwind_Resume(a1);
    }
  }
}

BOOL sub_2992835E8(CFStringRef theString, const __CFString *a2)
{
  result = 0;
  v27 = *MEMORY[0x29EDCA608];
  if (theString && a2)
  {
    Length = CFStringGetLength(theString);
    v6 = CFStringGetLength(a2);
    v21[1] = v21;
    v21[0] = v6 + 1;
    MEMORY[0x2A1C7C4A8](v6);
    v22 = v21 - v7;
    v24 = Length;
    if ((Length & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v25 = v22;
      v26 = &v22[-8 * v6 - 8];
      v23 = 8 * v6 + 8;
      while (v6 < 0)
      {
LABEL_44:
        v26 += v23;
        v25 = (v25 + v23);
        v17 = v8++ == v24;
        if (v17)
        {
          return *&v22[8 * v21[0] * v24 + 8 * v6] == 0;
        }
      }

      v9 = -1;
      v11 = v25;
      v10 = v26;
      while (1)
      {
        if (v8)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v8 - 1);
          if (v9 == -1)
          {
            v13 = 0;
            v16 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = CFStringGetCharacterAtIndex(a2, v9);
            if (CharacterAtIndex != v13 && ((CharacterAtIndex - 12353) < 0x56 || CharacterAtIndex == 12540 || CharacterAtIndex == 12316))
            {
              v17 = CharacterAtIndex == 12316 && v13 == 12540;
              v14 = !v17;
            }

            else
            {
              v14 = 0;
            }

            v16 = v14 + *(v10 - 1);
          }

          v18 = CharacterAtIndex != v13 && ((CharacterAtIndex - 12353) < 0x56 || CharacterAtIndex == 12540 || CharacterAtIndex == 12316) && (CharacterAtIndex != 12316 || v13 != 12540);
          v15 = v18 + *v10;
          if (v9 == -1)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v9 == -1)
          {
            v16 = 0;
            v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_38:
            v20 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_39;
          }

          CFStringGetCharacterAtIndex(a2, v9);
          v15 = 0x7FFFFFFFFFFFFFFFLL;
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v20 = *(v11 - 1);
LABEL_39:
        if (v15 < v16)
        {
          v16 = v15;
        }

        if (v20 < v16)
        {
          v16 = v20;
        }

        *v11++ = v16;
        ++v9;
        ++v10;
        if (v6 == v9)
        {
          goto LABEL_44;
        }
      }
    }

    return *&v22[8 * v21[0] * v24 + 8 * v6] == 0;
  }

  return result;
}

BOOL sub_299283884(_WORD *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (a2 < 1)
    {
      return 1;
    }

    else
    {
      v3 = *a1 & 0xFC00;
      if (v3 == 56320)
      {
        return 0;
      }

      else
      {
        v4 = 1;
        do
        {
          v5 = v3;
          v6 = v4;
          if (a2 == v4)
          {
            break;
          }

          v3 = a1[v4++] & 0xFC00;
        }

        while ((v5 == 55296) != (v3 != 56320));
        return v6 >= a2 && v5 != 55296;
      }
    }
  }

  return v2;
}

uint64_t sub_299283910(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 304))(a2);
  v6 = *v4;
  v5 = v4[1];
  v7 = (*(*a2 + 24))(a2);
  Length = CFStringGetLength(v7);
  v9 = v5 - v6;
  if (v5 == v6)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
  v13 = Length - 1;
  v14 = v12 - 1;
  if (v12 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12;
  }

  v16 = v12 - 2;
  do
  {
    if (v10 || (*(*a2 + 128))(a2, 0) != 1 || (v17 = CFStringGetCharacterAtIndex(v7, 0), v17 == 9787) || (u_charType(v17) - 19) >= 0xB)
    {
      if (v16 != v10 || (*(*a2 + 128))(a2, v14) != 1 || (CharacterAtIndex = CFStringGetCharacterAtIndex(v7, v13), CharacterAtIndex == 9787) || (u_charType(CharacterAtIndex) - 19) >= 0xB)
      {
        if (v14 == v10 || (v19 = (*(*a2 + 352))(a2, v10), v20 = (*(*a2 + 344))(a2, v10 + 1), sub_299255970(a1, v19, v20)))
        {
          ++v11;
        }
      }
    }

    ++v10;
  }

  while (v15 != v10);
  return v11;
}

void sub_299283B5C(_DWORD *a1, uint64_t a2)
{
  xmmword_2A14607C8 = 0u;
  *&qword_2A14607D8 = 0u;
  dword_2A14607E8 = 1065353216;
  if (a2)
  {
    for (i = a1; i != &a1[a2]; ++i)
    {
      v3 = *i;
      if (!*(&xmmword_2A14607C8 + 1))
      {
        goto LABEL_19;
      }

      v4 = vcnt_s8(*(&xmmword_2A14607C8 + 8));
      v4.i16[0] = vaddlv_u8(v4);
      if (v4.u32[0] > 1uLL)
      {
        v5 = *i;
        if (*(&xmmword_2A14607C8 + 1) <= v3)
        {
          v5 = v3 % WORD4(xmmword_2A14607C8);
        }
      }

      else
      {
        v5 = (DWORD2(xmmword_2A14607C8) - 1) & v3;
      }

      v6 = *(xmmword_2A14607C8 + 8 * v5);
      if (!v6 || (v7 = *v6) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v8 = v7[1];
        if (v8 == v3)
        {
          break;
        }

        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *(&xmmword_2A14607C8 + 1))
          {
            v8 %= *(&xmmword_2A14607C8 + 1);
          }
        }

        else
        {
          v8 &= *(&xmmword_2A14607C8 + 1) - 1;
        }

        if (v8 != v5)
        {
          goto LABEL_19;
        }

LABEL_18:
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_19;
        }
      }

      if (*(v7 + 8) != v3)
      {
        goto LABEL_18;
      }
    }
  }
}

void sub_299283FA8(_Unwind_Exception *a1)
{
  operator delete(v1);
  sub_29921ED28(&xmmword_2A14607C8);
  _Unwind_Resume(a1);
}

void sub_299283FD4(unsigned __int16 *a1, uint64_t a2)
{
  xmmword_2A14607F0 = 0u;
  *&qword_2A1460800 = 0u;
  dword_2A1460810 = 1065353216;
  if (a2)
  {
    v2 = a1;
    v12 = &a1[16 * a2];
    do
    {
      v3 = sub_29923AF34(&xmmword_2A14607F0, v2);
      v4 = v3;
      v5 = *(&xmmword_2A14607F0 + 1);
      if (!*(&xmmword_2A14607F0 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_2A14607F0 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_2A14607F0 + 1))
        {
          v8 = v3 % *(&xmmword_2A14607F0 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_2A14607F0 + 1) - 1) & v3;
      }

      v9 = *(xmmword_2A14607F0 + 8 * v8);
      if (!v9 || (v10 = *v9) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v11 = *(v10 + 1);
        if (v11 == v4)
        {
          break;
        }

        if (v7 > 1)
        {
          if (v11 >= v5)
          {
            v11 %= v5;
          }
        }

        else
        {
          v11 &= v5 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_19;
        }

LABEL_18:
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      if (!sub_29923AF78(&xmmword_2A14607F0, v10 + 8, v2))
      {
        goto LABEL_18;
      }

      v2 += 16;
    }

    while (v2 != v12);
  }
}

void sub_29928446C(_Unwind_Exception *a1)
{
  sub_29923AFFC(1, v1);
  sub_29923B058(&xmmword_2A14607F0);
  _Unwind_Resume(a1);
}

void sub_2992844AC(unsigned __int16 *a1, uint64_t a2)
{
  xmmword_2A1460818 = 0u;
  *&qword_2A1460828 = 0u;
  dword_2A1460838 = 1065353216;
  if (a2)
  {
    for (i = a1; i != &a1[16 * a2]; i += 16)
    {
      v3 = *i;
      if (!*(&xmmword_2A1460818 + 1))
      {
        goto LABEL_19;
      }

      v4 = vcnt_s8(*(&xmmword_2A1460818 + 8));
      v4.i16[0] = vaddlv_u8(v4);
      if (v4.u32[0] > 1uLL)
      {
        v5 = *i;
        if (*(&xmmword_2A1460818 + 1) <= v3)
        {
          v5 = v3 % WORD4(xmmword_2A1460818);
        }
      }

      else
      {
        v5 = (DWORD2(xmmword_2A1460818) - 1) & v3;
      }

      v6 = *(xmmword_2A1460818 + 8 * v5);
      if (!v6 || (v7 = *v6) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v8 = v7[1];
        if (v8 == v3)
        {
          break;
        }

        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *(&xmmword_2A1460818 + 1))
          {
            v8 %= *(&xmmword_2A1460818 + 1);
          }
        }

        else
        {
          v8 &= *(&xmmword_2A1460818 + 1) - 1;
        }

        if (v8 != v5)
        {
          goto LABEL_19;
        }

LABEL_18:
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_19;
        }
      }

      if (*(v7 + 8) != v3)
      {
        goto LABEL_18;
      }
    }
  }
}

void sub_299284920(_Unwind_Exception *a1)
{
  sub_29922F58C(1, v1);
  sub_29922F5E8(&xmmword_2A1460818);
  _Unwind_Resume(a1);
}

uint64_t *MecabraCreateWithAdditionalDictionariesAndOptions(unsigned int a1, const void *a2, const void *a3, char a4)
{
  v8 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  valuePtr = a1;
  v10 = CFNumberCreate(v8, kCFNumberCFIndexType, &valuePtr);
  CFDictionarySetValue(Mutable, kMecabraCreationInputMethodTypeKey[0], v10);
  CFRelease(v10);
  if (a2)
  {
    CFDictionarySetValue(Mutable, kMecabraCreationCustomLearningDictionaryDirectoryKey[0], a2);
  }

  if (a3)
  {
    CFDictionarySetValue(Mutable, kMecabraCreationCustomAdditionalDictionaryDirectoriesKey[0], a3);
  }

  v11 = MEMORY[0x29EDB8F00];
  if ((a4 & 1) == 0)
  {
    if ((a4 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    CFDictionarySetValue(Mutable, kMecabraCreationSyncLearningDataKey[0], *MEMORY[0x29EDB8EF8]);
    if ((a4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  CFDictionarySetValue(Mutable, kMecabraCreationUseSpecialSymbolKey[0], *MEMORY[0x29EDB8F00]);
  if ((a4 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((a4 & 4) != 0)
  {
LABEL_8:
    CFDictionarySetValue(Mutable, kMecabraCreationLiteModeKey[0], *v11);
  }

LABEL_9:
  v12 = MecabraCreate(Mutable);
  CFRelease(Mutable);
  return v12;
}

uint64_t *MecabraCreate(const __CFDictionary *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v4) = 0;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraCreate]", &v4, 2u);
    if (a1)
    {
LABEL_3:
      operator new();
    }
  }

  else if (a1)
  {
    goto LABEL_3;
  }

  return 0;
}

void sub_299285A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2992530BC(v12, 0);
  sub_29929054C(v11, 0);
  sub_2992926B8(v10, 0);
  v15 = *v13;
  *v13 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  MEMORY[0x29C29BFB0](v9, 0x10E1C405DA12072);
  sub_29928F72C(&a9);
  _Unwind_Resume(a1);
}

uint64_t MecabraAnalyzeString(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(2u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218242;
    v11 = a1;
    v12 = 2112;
    v13 = a2;
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MecabraAnalyzeString] mecabra:%p string:%@", &v10, 0x16u);
    if (!a1)
    {
      return 0;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = (*(**a1 + 32))(*a1, a2, a3, 0, 0, 0, 0);
  objc_autoreleasePoolPop(v7);
  return v8;
}

uint64_t MecabraAnalyzeStringWithContext(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = *MEMORY[0x29EDCA608];
  ptr = a3;
  if (!a1 || !*a1)
  {
    return 0;
  }

  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = 0;
  }

  v9 = sub_2993652F8(2u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_2992860E0(__p, v7);
    v10 = sub_2993652F8(2u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v20 = __p;
      if (v22 < 0)
      {
        v20 = __p[0];
      }

      *buf = 134218754;
      v25 = a1;
      v26 = 2112;
      v27 = a2;
      v28 = 2048;
      v29 = a3;
      v30 = 2080;
      v31 = v20;
      _os_log_debug_impl(&dword_29918C000, v10, OS_LOG_TYPE_DEBUG, "[MecabraAnalyzeStringWithContext] mecabra:%p string:%@ options:0x%lx context:%s", buf, 0x2Au);
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = objc_autoreleasePoolPush();
  v12 = sub_2993652F8(0xDu);
  v13 = os_signpost_id_make_with_pointer(v12, &ptr);
  if ((*(**a1 + 16))() == 1 || (*(**a1 + 16))() == 17)
  {
    v14 = 1;
  }

  else
  {
    v15 = sub_2993652F8(0xDu);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MecabraAnalyzeStringWithContext", &unk_29945DB9F, buf, 2u);
      }
    }

    v14 = 0;
  }

  v8 = (*(**a1 + 40))(*a1, a2, ptr, v7);
  if ((v14 & 1) == 0)
  {
    v17 = sub_2993652F8(0xDu);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v18, OS_SIGNPOST_INTERVAL_END, v13, "MecabraAnalyzeStringWithContext", &unk_29945DB9F, buf, 2u);
      }
    }
  }

  objc_autoreleasePoolPop(v11);
  return v8;
}

void sub_2992860BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992860E0(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_2991D7954(v95);
    for (i = 0; ; ++i)
    {
      Count = *(a2 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      v6 = sub_299324228(a2, i);
      Surface = MecabraCandidateGetSurface(v6, v7, v8, v9);
      sub_299277A90(Surface, __s);
      v11 = __s[0];
      v12 = strlen(__s[0]);
      sub_2991C0E9C(&v96, __s[0], v12);
      if (v11)
      {
        MEMORY[0x29C29BF70](v11, 0x1000C8077774924);
      }

      v13 = *(a2 + 16);
      if (v13)
      {
        v13 = CFArrayGetCount(v13);
      }

      if (i < v13 - 1)
      {
        LOBYTE(__s[0]) = 124;
        sub_2991C0E9C(&v96, __s, 1);
      }
    }

    sub_2991D7954(__s);
    for (j = 0; j < CFArrayGetCount(*(a2 + 32)); ++j)
    {
      v15 = sub_299324314(a2, j);
      v19 = MecabraCandidateGetSurface(v15, v16, v17, v18);
      sub_299277A90(v19, v75);
      v20 = v75[0];
      v21 = strlen(v75[0]);
      sub_2991C0E9C(&v86, v75[0], v21);
      if (v20)
      {
        MEMORY[0x29C29BF70](v20, 0x1000C8077774924);
      }

      if (j < CFArrayGetCount(*(a2 + 32)) - 1)
      {
        LOBYTE(v75[0]) = 124;
        sub_2991C0E9C(&v86, v75, 1);
      }
    }

    sub_2991D7954(v75);
    v22 = *(a2 + 88);
    if (v22)
    {
      sub_299277A90(v22, v62);
      v23 = v62[0];
      v24 = strlen(v62[0]);
      sub_2991C0E9C(&v76, v62[0], v24);
      if (v23)
      {
        MEMORY[0x29C29BF70](v23, 0x1000C8077774924);
      }
    }

    v25 = *(a2 + 72);
    if (v25)
    {
      sub_299277A90(v25, &v72);
      v26 = v72;
    }

    else
    {
      v26 = "N/A";
    }

    sub_2991C6CA8(v73, v26);
    if (v25 && v26)
    {
      MEMORY[0x29C29BF70](v26, 0x1000C8077774924);
    }

    sub_2991D7954(v62);
    v28 = sub_2991C0E9C(&v63, "(left[", 6);
    if ((v103 & 0x10) != 0)
    {
      v30 = v102;
      if (v102 < v99)
      {
        v102 = v99;
        v30 = v99;
      }

      locale = v98[4].__locale_;
    }

    else
    {
      if ((v103 & 8) == 0)
      {
        v29 = 0;
        v61 = 0;
        goto LABEL_45;
      }

      locale = v98[1].__locale_;
      v30 = v98[3].__locale_;
    }

    v29 = v30 - locale;
    if ((v30 - locale) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_2991A11B0();
    }

    if (v29 >= 0x17)
    {
      operator new();
    }

    v61 = v30 - locale;
    if (v29)
    {
      memmove(__dst, locale, v29);
    }

LABEL_45:
    *(__dst + v29) = 0;
    if ((v61 & 0x80u) == 0)
    {
      v32 = __dst;
    }

    else
    {
      v32 = __dst[0];
    }

    if ((v61 & 0x80u) == 0)
    {
      v33 = sub_2991C0E9C(v28, v32, v61);
    }

    else
    {
      v33 = sub_2991C0E9C(v28, v32, __dst[1]);
    }

    v34 = sub_2991C0E9C(v33, "] inline[", 9);
    if ((v93 & 0x10) != 0)
    {
      v36 = v92;
      if (v92 < v89)
      {
        v92 = v89;
        v36 = v89;
      }

      v37 = v88[4].__locale_;
    }

    else
    {
      if ((v93 & 8) == 0)
      {
        v35 = 0;
        v59 = 0;
        goto LABEL_64;
      }

      v37 = v88[1].__locale_;
      v36 = v88[3].__locale_;
    }

    v35 = v36 - v37;
    if ((v36 - v37) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_2991A11B0();
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    v59 = v36 - v37;
    if (v35)
    {
      memmove(v58, v37, v35);
    }

LABEL_64:
    *(v58 + v35) = 0;
    if ((v59 & 0x80u) == 0)
    {
      v38 = v58;
    }

    else
    {
      v38 = v58[0];
    }

    if ((v59 & 0x80u) == 0)
    {
      v39 = sub_2991C0E9C(v34, v38, v59);
    }

    else
    {
      v39 = sub_2991C0E9C(v34, v38, v58[1]);
    }

    v40 = sub_2991C0E9C(v39, "] right[", 8);
    if ((v83 & 0x10) != 0)
    {
      v42 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v42 = v79;
      }

      v43 = v78[4].__locale_;
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v41 = 0;
        v57 = 0;
        goto LABEL_83;
      }

      v43 = v78[1].__locale_;
      v42 = v78[3].__locale_;
    }

    v41 = v42 - v43;
    if ((v42 - v43) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_2991A11B0();
    }

    if (v41 >= 0x17)
    {
      operator new();
    }

    v57 = v42 - v43;
    if (v41)
    {
      memmove(__p, v43, v41);
    }

LABEL_83:
    *(__p + v41) = 0;
    if ((v57 & 0x80u) == 0)
    {
      v44 = __p;
    }

    else
    {
      v44 = __p[0];
    }

    if ((v57 & 0x80u) == 0)
    {
      v45 = sub_2991C0E9C(v40, v44, v57);
    }

    else
    {
      v45 = sub_2991C0E9C(v40, v44, __p[1]);
    }

    v46 = sub_2991C0E9C(v45, "] App[", 6);
    if ((v74 & 0x80u) == 0)
    {
      v47 = v73;
    }

    else
    {
      v47 = v73[0];
    }

    if ((v74 & 0x80u) == 0)
    {
      v48 = sub_2991C0E9C(v46, v47, v74);
    }

    else
    {
      v48 = sub_2991C0E9C(v46, v47, v73[1]);
    }

    sub_2991C0E9C(v48, "])", 2);
    if (v57 < 0)
    {
      operator delete(__p[0]);
    }

    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    if (v61 < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v70 & 0x10) != 0)
    {
      v50 = v69;
      if (v69 < v66)
      {
        v69 = v66;
        v50 = v66;
      }

      v51 = v65[4].__locale_;
    }

    else
    {
      if ((v70 & 8) == 0)
      {
        v49 = 0;
        *(a1 + 23) = 0;
LABEL_113:
        *(a1 + v49) = 0;
        v62[0] = *MEMORY[0x29EDC9528];
        v52 = v62[0];
        v53 = *(MEMORY[0x29EDC9528] + 72);
        v54 = *(MEMORY[0x29EDC9528] + 64);
        *(v62 + *(v62[0] - 3)) = v54;
        v55 = v53;
        v63 = v53;
        v64 = MEMORY[0x29EDC9570] + 16;
        if (v68 < 0)
        {
          operator delete(v67);
        }

        v64 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v65);
        std::iostream::~basic_iostream();
        MEMORY[0x29C29BF00](&v71);
        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        v75[0] = v52;
        *(v75 + *(v52 - 3)) = v54;
        v76 = v55;
        v77 = MEMORY[0x29EDC9570] + 16;
        if (v81 < 0)
        {
          operator delete(v80);
        }

        v77 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v78);
        std::iostream::~basic_iostream();
        MEMORY[0x29C29BF00](&v84);
        __s[0] = v52;
        *(__s + *(v52 - 3)) = v54;
        v86 = v55;
        v87 = MEMORY[0x29EDC9570] + 16;
        if (v91 < 0)
        {
          operator delete(v90);
        }

        v87 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v88);
        std::iostream::~basic_iostream();
        MEMORY[0x29C29BF00](&v94);
        v95[0] = v52;
        *(v95 + *(v52 - 3)) = v54;
        v96 = v55;
        v97 = MEMORY[0x29EDC9570] + 16;
        if (v101 < 0)
        {
          operator delete(v100);
        }

        v97 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v98);
        std::iostream::~basic_iostream();
        return MEMORY[0x29C29BF00](&v104);
      }

      v51 = v65[1].__locale_;
      v50 = v65[3].__locale_;
    }

    v49 = v50 - v51;
    if ((v50 - v51) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_2991A11B0();
    }

    if (v49 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v49;
    if (v49)
    {
      memmove(a1, v51, v49);
    }

    goto LABEL_113;
  }

  return sub_2991C6CA8(a1, "");
}

void sub_299286B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, uint64_t a58, char a59)
{
  sub_2992510CC(&a59);
  sub_2992510CC(&STACK[0x2A8]);
  sub_2992510CC(&STACK[0x3C0]);
  _Unwind_Resume(a1);
}

uint64_t MecabraAnalyzeGesturesWithContext(void *a1, const __CFArray *a2, uint64_t a3, uint64_t *a4)
{
  v32 = *MEMORY[0x29EDCA608];
  ptr = a3;
  if (!a1 || !*a1)
  {
    return 0;
  }

  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = 0;
  }

  v9 = sub_2993652F8(2u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_2992860E0(__p, v7);
    v10 = sub_2993652F8(2u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      Count = CFArrayGetCount(a2);
      v20 = __p;
      if (v22 < 0)
      {
        v20 = __p[0];
      }

      *buf = 134218754;
      v25 = a1;
      v26 = 2048;
      v27 = Count;
      v28 = 2048;
      v29 = a3;
      v30 = 2080;
      v31 = v20;
      _os_log_debug_impl(&dword_29918C000, v10, OS_LOG_TYPE_DEBUG, "[MecabraAnalyzeGesturesWithContext] mecabra:%p gestures:%ld options:0x%lx context:%s", buf, 0x2Au);
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = objc_autoreleasePoolPush();
  v12 = sub_2993652F8(0xDu);
  v13 = os_signpost_id_make_with_pointer(v12, &ptr);
  v14 = sub_2993652F8(0xDu);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MecabraAnalyzeGesturesWithContext", &unk_29945DB9F, buf, 2u);
    }
  }

  v8 = (*(**a1 + 48))(*a1, a2, ptr, v7);
  v16 = sub_2993652F8(0xDu);
  if (v13 - 1 < 0xFFFFFFFFFFFFFFFELL)
  {
    v17 = v16;
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v17, OS_SIGNPOST_INTERVAL_END, v13, "MecabraAnalyzeGesturesWithContext", &unk_29945DB9F, buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v11);
  return v8;
}

void sub_299286EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MecabraCreateRemainingGestures(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = (*(**a1 + 56))(*a1, a2, a3, v7);
  objc_autoreleasePoolPop(v9);
  return v10;
}

uint64_t MecabraGetNextCandidate(uint64_t a1)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = (*(**a1 + 64))();
  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t MecabraDeclareEndOfSentence(void *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134218240;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraDeclareEndOfSentence] mecabra:%p context:%p", &v7, 0x16u);
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  result = 0;
  if (a2 && *a1)
  {
    v6 = *a2;
    if (v6)
    {
      (*(**a1 + 80))(*a1, v6);
      sub_299324500(v6);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t MecabraAcceptInlineCandidates(uint64_t result, uint64_t *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (*v3)
      {
        v4 = *a2;
        if (*a2)
        {
          v5 = sub_2993652F8(2u);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            sub_2991D7954(v19);
            for (i = 0; i < CFArrayGetCount(*(v4 + 32)); ++i)
            {
              v7 = sub_299324314(v4, i);
              Surface = MecabraCandidateGetSurface(v7, v8, v9, v10);
              sub_299277A90(Surface, buf);
              v12 = *buf;
              v13 = strlen(*buf);
              sub_2991C0E9C(&v20, *buf, v13);
              if (v12)
              {
                MEMORY[0x29C29BF70](v12, 0x1000C8077774924);
              }

              if (i < CFArrayGetCount(*(v4 + 32)) - 1)
              {
                buf[0] = 124;
                sub_2991C0E9C(&v20, buf, 1);
              }
            }

            v14 = sub_2993652F8(2u);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              sub_29928F808(&v21, v17);
              v16 = v18 >= 0 ? v17 : v17[0];
              *buf = 134218498;
              *&buf[4] = v3;
              v26 = 2048;
              v27 = a2;
              v28 = 2080;
              v29 = v16;
              _os_log_debug_impl(&dword_29918C000, v14, OS_LOG_TYPE_DEBUG, "[MecabraAcceptInlineCandidates] mecabra:%p context:%p candidates:%s", buf, 0x20u);
              if (v18 < 0)
              {
                operator delete(v17[0]);
              }
            }

            v19[0] = *MEMORY[0x29EDC9528];
            v15 = *(MEMORY[0x29EDC9528] + 72);
            *(v19 + *(v19[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
            v20 = v15;
            v21 = MEMORY[0x29EDC9570] + 16;
            if (v23 < 0)
            {
              operator delete(v22[7].__locale_);
            }

            v21 = MEMORY[0x29EDC9568] + 16;
            std::locale::~locale(v22);
            std::iostream::~basic_iostream();
            MEMORY[0x29C29BF00](&v24);
          }

          (*(**v3 + 88))(*v3, v4);
          sub_299324458(v4);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_299287460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2992510CC(va);
  _Unwind_Resume(a1);
}

void *MecabraCandidateGetSurface(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v5 = result;
    v6 = (*(*result + 40))(result);
    v7 = *v5;
    if (v6)
    {
      v8 = *(v7 + 40);
      v9 = v5;
    }

    else
    {
      v8 = *(v7 + 24);
      v9 = v5;
    }

    return v8(v9);
  }

  return result;
}

uint64_t MecabraRevertLearningForCandidate(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(2u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    v12 = a1;
    v13 = 2048;
    v14 = a2;
    v15 = 2112;
    Surface = MecabraCandidateGetSurface(a3, v7, v8, v9);
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MecabraRevertLearningForCandidate] mecabra:%p context:%p candidate:%@", &v11, 0x20u);
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  result = 0;
  if (a3 && a2 && *a1)
  {
    if (*a2)
    {
      return (*(**a1 + 96))(*a1, *a2, a3);
    }

    return 0;
  }

  return result;
}

void MecabraCancelAnalysis(void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraCancelAnalysis] mecabra:%p", &v3, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    (*(**a1 + 72))(*a1);
  }
}

void *MecabraAcceptCandidate(void **a1, void *a2, int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(2u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    v12 = a1;
    v13 = 2112;
    Surface = MecabraCandidateGetSurface(a2, v7, v8, v9);
    v15 = 1024;
    v16 = a3;
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MecabraAcceptCandidate] mecabra:%p candidate.surface:%@ isPartial%d", &v11, 0x1Cu);
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  result = *a1;
  if (!*a1)
  {
    return result;
  }

  if (a2)
  {
    result = sub_2992878A0(a2, v7, v8, v9);
    if (!result)
    {
      return result;
    }

    result = *a1;
  }

  return (*(*result + 104))(result, a2, a3 != 0);
}

void *sub_2992878A0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v5 = result;
    result = (*(*result + 72))(result);
    if (result != 1)
    {
      return ((*(*v5 + 72))(v5) == 7);
    }
  }

  return result;
}

uint64_t MecabraCancelLastAcceptedCandidate(uint64_t *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = 134217984;
  v5 = a1;
  _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraCancelLastAcceptedCandidate] mecabra:%p", &v4, 0xCu);
  if (!a1)
  {
    return 0;
  }

LABEL_3:
  result = *a1;
  if (*a1)
  {
    return (*(*result + 112))(result);
  }

  return result;
}

uint64_t MecabraSetAdditionalConversionDictionaries(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134217984;
    v9 = a1;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraSetAdditionalConversionDictionaries] mecabra:%p", &v8, 0xCu);
    if (!a1)
    {
      return 0;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = (*(**a1 + 248))(*a1, a2);
  objc_autoreleasePoolPop(v5);
  return v6;
}

uint64_t MecabraSetAssetDataItemsForType(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(2u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218498;
    v11 = a1;
    v12 = 2048;
    v13 = a2;
    v14 = 2112;
    v15 = a3;
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MecabraSetAssetDataItemsForType] mecabra:%p type:%ld dataItems:%@", &v10, 0x20u);
    if (!a1)
    {
      return 0;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = (*(**a1 + 256))(*a1, a2, a3);
  objc_autoreleasePoolPop(v7);
  return v8;
}

__CFArray *MecabraCopyLearningDictionaryNames(char *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v3 = sub_29927773C(a1);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v4 = sub_299331ABC();
    }

    else
    {
      if (v3 != 5)
      {
        return Mutable;
      }

      v4 = sub_299331DCC();
    }
  }

  else if (v3 == 1)
  {
    v4 = sub_299335420();
  }

  else
  {
    if (v3 != 2)
    {
      return Mutable;
    }

    v4 = sub_2993309D0();
  }

  v5 = v4;
  if (v4)
  {
    v7.length = CFArrayGetCount(v4);
    v7.location = 0;
    CFArrayAppendArray(Mutable, v5, v7);
    CFRelease(v5);
  }

  return Mutable;
}

void MecabraSaveLearningDictionaries(void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraSaveLearningDictionaries] mecabra:%p", &v3, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    (*(**a1 + 120))(*a1);
  }
}

void MecabraClearLearningDictionaries(void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraClearLearningDictionaries] mecabra:%p", &v3, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    (*(**a1 + 128))(*a1);
  }
}

const void **MecabraResetLearningDictionaries(uint64_t a1, const __CFURL *a2, uint64_t a3)
{
  v4 = a1;
  v10 = *MEMORY[0x29EDCA608];
  v5 = sub_2993652F8(2u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v7 = CFURLGetString(a2);
    }

    else
    {
      v7 = 0;
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[MecabraResetLearningDictionaries] learningDictionaryDirectory:%@", &v8, 0xCu);
  }

  sub_29932D500(a2);
  return sub_2992F3048(v4);
}

void MecabraWaitForAsyncDataLoading(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (v1)
    {
      v2 = (*(*v1 + 16))(v1);
      v3 = sub_299277300(v2);

      MecabraWaitForLanguageSpecificAsyncDataLoading(v3);
    }
  }
}

void MecabraWaitForLanguageSpecificAsyncDataLoading(uint64_t a1)
{
  v1 = a1;
  v11 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v1;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraWaitForLanguageSpecificAsyncDataLoading] language: %u", buf, 8u);
  }

  sub_2993EA664(buf);
  sub_299299E1C(*buf, 0xFFFFFFFFFFFFFFFFLL, 0);
  sub_2993EA8D4(&v7);
  sub_299299E1C(v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  sub_29920E10C(&v5);
  sub_29920FAF8(v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  if (v1 - 1 <= 1)
  {
    sub_29920E2A4(v1, 0, 0, &v3);
    sub_29920FAF8(v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (v4)
    {
      sub_2991A893C(v4);
    }

    if (v1 == 1)
    {
      sub_2992D7E44(1, 0, &v3);
      sub_29929A2D8(v3, 0xFFFFFFFFFFFFFFFFLL, 0);
      if (v4)
      {
        sub_2991A893C(v4);
      }
    }

    sub_2992D891C(v1, 0, &v3);
    sub_29929A2D8(v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (v4)
    {
      sub_2991A893C(v4);
    }
  }

  if (v6)
  {
    sub_2991A893C(v6);
  }

  if (v8)
  {
    sub_2991A893C(v8);
  }

  if (v10)
  {
    sub_2991A893C(v10);
  }
}

void sub_29928818C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  if (a12)
  {
    sub_2991A893C(a12);
  }

  if (a14)
  {
    sub_2991A893C(a14);
  }

  if (a16)
  {
    sub_2991A893C(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MecabraCreateSyllableSequences(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 >= 1)
  {
    return (*(**a1 + 400))();
  }

  else
  {
    return 0;
  }
}

void MecabraSetIsTypeToSiriMode(void *a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  ptr = a2;
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v13 = a1;
    v14 = 1024;
    v15 = a2;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraSetIsTypeToSiriMode] mecabra:%p isTypeToSiriMode:%d", buf, 0x12u);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    v5 = sub_2993652F8(0xDu);
    v6 = os_signpost_id_make_with_pointer(v5, &ptr);
    v7 = sub_2993652F8(0xDu);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v7))
      {
        *buf = 67109120;
        LODWORD(v13) = ptr;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SetIsTypeToSiriMode", "isTypeToSiriMode:%d", buf, 8u);
      }
    }

    (*(**a1 + 176))(*a1, ptr != 0);
    v9 = sub_2993652F8(0xDu);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v10, OS_SIGNPOST_INTERVAL_END, v6, "SetIsTypeToSiriMode", &unk_29945DB9F, buf, 2u);
      }
    }
  }
}

void MecabraSetAddressBookNamePhoneticPairs(void *a1, CFArrayRef theArray)
{
  v17 = *MEMORY[0x29EDCA608];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  ptr = Count;
  v5 = sub_2993652F8(2u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v14 = a1;
    v15 = 2048;
    v16 = Count;
    _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[MecabraSetAddressBookNamePhoneticPairs] mecabra:%p size:%ld", buf, 0x16u);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    v6 = sub_2993652F8(0xDu);
    v7 = os_signpost_id_make_with_pointer(v6, &ptr);
    v8 = sub_2993652F8(0xDu);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v8))
      {
        *buf = 134217984;
        v14 = ptr;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SetAddressBook", "Address book reset (%ld items).", buf, 0xCu);
      }
    }

    (*(**a1 + 144))(*a1, theArray);
    v10 = sub_2993652F8(0xDu);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v11, OS_SIGNPOST_INTERVAL_END, v7, "SetAddressBook", &unk_29945DB9F, buf, 2u);
      }
    }
  }
}

void MecabraSetUserWordKeyPairs(void *a1, CFArrayRef theArray)
{
  v17 = *MEMORY[0x29EDCA608];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  ptr = Count;
  v5 = sub_2993652F8(2u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v14 = a1;
    v15 = 2048;
    v16 = Count;
    _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[MecabraSetUserWordKeyPairs] mecabra:%p size:%ld", buf, 0x16u);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    v6 = sub_2993652F8(0xDu);
    v7 = os_signpost_id_make_with_pointer(v6, &ptr);
    v8 = sub_2993652F8(0xDu);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v8))
      {
        *buf = 134217984;
        v14 = ptr;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SetUserWord", "User word reset (%ld items).", buf, 0xCu);
      }
    }

    (*(**a1 + 152))(*a1, theArray);
    v10 = sub_2993652F8(0xDu);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v11, OS_SIGNPOST_INTERVAL_END, v7, "SetUserWord", &unk_29945DB9F, buf, 2u);
      }
    }
  }
}

void MecabraSetSupplementalLexiconEntries(void *a1, CFArrayRef theArray)
{
  v10 = *MEMORY[0x29EDCA608];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v5 = sub_2993652F8(2u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218240;
    v7 = a1;
    v8 = 2048;
    v9 = Count;
    _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[MecabraSetSupplementalLexiconEntries] mecabra:%p size:%ld", &v6, 0x16u);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    (*(**a1 + 408))(*a1, theArray);
  }
}

void *MecabraFindSupplementalLexiconCandidatesWithinContext(void *result, uint64_t *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      if (*v2)
      {
        v3 = *a2;
        v4 = sub_2993652F8(2u);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          sub_2992860E0(__p, v3);
          v5 = sub_2993652F8(2u);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            v6 = __p;
            if (v8 < 0)
            {
              v6 = __p[0];
            }

            *buf = 134218242;
            v10 = v2;
            v11 = 2080;
            v12 = v6;
            _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[MecabraFindSupplementalLexiconCandidatesWithinContext] mecabra:%p context:%s", buf, 0x16u);
          }

          if (v8 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return (*(**v2 + 416))(*v2, v3);
      }
    }
  }

  return result;
}

void sub_299288A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MecabraPreheatResources(void *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = a1;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraPreheatResources] mecabra:%p", &v9, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    v3 = sub_2993652F8(0xDu);
    v4 = os_signpost_id_make_with_pointer(v3, a1);
    v5 = sub_2993652F8(0xDu);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v5))
      {
        LOWORD(v9) = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MecabraPreheatResources", &unk_29945DB9F, &v9, 2u);
      }
    }

    (*(**a1 + 320))(*a1);
    v7 = sub_2993652F8(0xDu);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v7))
      {
        LOWORD(v9) = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v8, OS_SIGNPOST_INTERVAL_END, v4, "MecabraPreheatResources", &unk_29945DB9F, &v9, 2u);
      }
    }
  }
}

void MecabraHandleMemoryPressure(void *a1, unsigned int a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  ptr = a2;
  v6 = sub_2993652F8(2u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *v15 = a1;
    *&v15[8] = 1024;
    *&v15[10] = a2;
    v16 = 2048;
    v17 = a3;
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MecabraHandleMemoryPressure] mecabra:%p level:%uld, excessMemoryInBytes:%ld", buf, 0x1Cu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    v7 = sub_2993652F8(0xDu);
    v8 = os_signpost_id_make_with_pointer(v7, &ptr);
    v9 = sub_2993652F8(0xDu);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v9))
      {
        *buf = 67109376;
        *v15 = ptr;
        *&v15[4] = 2048;
        *&v15[6] = a3;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MecabraHandleMemoryPressure", "level: %d, excessMemoryInBytes: %ld", buf, 0x12u);
      }
    }

    (*(**a1 + 328))(*a1, ptr, a3);
    v11 = sub_2993652F8(0xDu);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v12, OS_SIGNPOST_INTERVAL_END, v8, "MecabraHandleMemoryPressure", &unk_29945DB9F, buf, 2u);
      }
    }
  }
}

void MecabraRelease(void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraRelease] mecabra:%p", &v3, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    (*(**a1 + 160))(*a1);
    if (*a1)
    {
      (*(**a1 + 8))(*a1);
    }
  }

  MEMORY[0x29C29BFB0](a1, 0x20C4093837F09);
}

uint64_t MecabraPredictionAnalyze(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = (*(**a1 + 360))(*a1, a2, a3, a4, a5);
  objc_autoreleasePoolPop(v10);
  return v11;
}

uint64_t MecabraPredictionAnalyzeWithContext(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  ptr = a4;
  v8 = sub_2993652F8(2u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v21 = a1;
    v22 = 2048;
    v23 = a4;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[MecabraPredictionAnalyzeWithContext] mecabra:%p options:0x%lx", buf, 0x16u);
    if (!a1)
    {
      return 0;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v9 = objc_autoreleasePoolPush();
  if (a2)
  {
    v10 = *a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_2993652F8(0xDu);
  v12 = os_signpost_id_make_with_pointer(v11, &ptr);
  v13 = sub_2993652F8(0xDu);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, buf, 2u);
    }
  }

  v15 = (*(**a1 + 368))(*a1, v10, a3, ptr);
  v16 = sub_2993652F8(0xDu);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v17, OS_SIGNPOST_INTERVAL_END, v12, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v9);
  return v15;
}

uint64_t MecabraPredictionAcceptCandidate(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 376))();
    }
  }

  return result;
}

uint64_t MecabraPredictionGetNextCandidate(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return (*(*v1 + 384))();
  }

  else
  {
    return 0;
  }
}

uint64_t MecabraCreateCandidateFromContextString(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(2u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134218498;
    v9 = a1;
    v10 = 2112;
    v11 = a2;
    v12 = 1024;
    v13 = a3;
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MecabraCreateCandidateFromContextString] mecabra:%p string:[%@] isRightContext:%d", &v8, 0x1Cu);
  }

  result = 0;
  if (a1 && a2)
  {
    if (*a1)
    {
      return (*(**a1 + 344))(*a1, a2, a3);
    }
  }

  return result;
}

uint64_t MecabraGetLengthForContextString(uint64_t result, const __CFString *a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v4 = result;
    result = 0;
    if (a2)
    {
      if (*v4)
      {
        v6 = sub_2993652F8(2u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v9 = 134218498;
          v10 = v4;
          v11 = 2112;
          v12 = a2;
          v13 = 1024;
          v14 = a3;
          _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MecabraGetLengthForContextString] mecabra:%p string:[%@] isRightContext:%d", &v9, 0x1Cu);
        }

        v7 = (*(**v4 + 16))();
        v8 = sub_299277300(v7);
        return sub_299319940(v8, a2, a3 != 0);
      }
    }
  }

  return result;
}

void *MecabraCandidateCopy(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    return objc_msgSend_copy(result, a2, a3, a4);
  }

  return result;
}

void *MecabraCandidateGetType(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = *(*objc_msgSend_rawCandidate(result, a2, a3, a4) + 72);

    return v4();
  }

  return result;
}

uint64_t MecabraCandidateSetDisplayString(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 6)
  {
    return 0;
  }

  return sub_2993C38AC(v6, a2);
}

void *MecabraCandidateGetAttributes(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v5 = *(*result + 136);

    return v5();
  }

  return result;
}

uint64_t MecabraCandidateGetAnalysisString(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    if ((*(*v6 + 72))(v6) == 6)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v6 = sub_2992896C0(a1, v7, v8, v9);
LABEL_5:
  v10 = *(*v6 + 56);

  return v10(v6);
}

void *sub_2992896C0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {

    return __dynamic_cast(result, &unk_2A1F64300, &unk_2A1F72C30, 0);
  }

  return result;
}

uint64_t MecabraCandidateGetConvertedAnalysisString(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) == 1 || (*(*v6 + 72))(v6) == 7)
  {
    v10 = *(*sub_2992896C0(a1, v7, v8, v9) + 224);

    return v10();
  }

  if ((*(*v6 + 72))(v6) != 6)
  {
    return 0;
  }

  v12 = *(*v6 + 176);

  return v12(v6);
}

uint64_t MecabraCandidateGetDictionaryReading(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) == 1 || (*(*v6 + 72))(v6) == 7)
  {
    v10 = *(*sub_2992896C0(a1, v7, v8, v9) + 232);

    return v10();
  }

  if ((*(*v6 + 72))(v6) != 6)
  {
    return 0;
  }

  v12 = *(*v6 + 184);

  return v12(v6);
}

void *MecabraCandidateIsPersonName(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = sub_2992878A0(result, a2, a3, a4);
    if (result)
    {
      v8 = sub_2992896C0(v4, v5, v6, v7);
      return (*(*v8 + 184))(v8);
    }
  }

  return result;
}

void *MecabraCandidateIsExtensionCandidate(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    return (*(*result + 80))(result);
  }

  return result;
}

void *MecabraCandidateIsExtensionForCandidateBar(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = sub_2992896C0(a1, a2, a3, a4);
  if (result)
  {
    v5 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v5 + 72))(v5) == 7)
    {
      return ((*(*v5 + 96))(v5) == 68);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *MecabraCandidateIsEmojiCandidate(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v6 + 72))(v6) == 7)
    {
      v10 = sub_2992896C0(a1, v7, v8, v9);
      return (*(*v10 + 176))(v10);
    }

    else
    {
      return ((*(*v6 + 104))(v6) & 0x40);
    }
  }

  return result;
}

void *MecabraCandidateIsLearningDictionaryCandidate(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v6 + 72))(v6) == 7)
    {
      v10 = sub_2992896C0(a1, v7, v8, v9);
      return ((*(*v10 + 96))(v10) == 76);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *MecabraCandidateIsUserWordCandidate(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v6 + 72))(v6) == 7)
    {
      v10 = sub_2992896C0(a1, v7, v8, v9);
      return ((*(*v10 + 96))(v10) == 85);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *MecabraCandidateIsPredictionCandidate(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    return (((*(*result + 104))(result) >> 9) & 1);
  }

  return result;
}

void *MecabraCandidateIsFuzzyMatchCandidate(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = sub_2992878A0(result, a2, a3, a4);
    if (result)
    {
      v8 = sub_2992896C0(v4, v5, v6, v7);
      return (*(*v8 + 192))(v8);
    }
  }

  return result;
}

void *MecabraCandidateIsAutocorrectionCandidate(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = sub_2992878A0(result, a2, a3, a4);
    if (result)
    {
      v8 = sub_2992896C0(v4, v5, v6, v7);
      return (*(*v8 + 200))(v8);
    }
  }

  return result;
}

uint64_t MecabraCandidateIsOTAWordlistCandidate(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = sub_2992878A0(result, a2, a3, a4);
    if (result)
    {
      v8 = objc_msgSend_rawCandidate(v4, v5, v6, v7);
      if (((*(*v8 + 104))(v8) & 0x2000) != 0)
      {
        return 1;
      }

      else
      {
        v12 = sub_2992896C0(v4, v9, v10, v11);
        return (*(*v12 + 264))(v12);
      }
    }
  }

  return result;
}

void *MecabraCandidateIsRegionalCandidate(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = sub_2992878A0(result, a2, a3, a4);
    if (result)
    {
      v8 = objc_msgSend_rawCandidate(v4, v5, v6, v7);
      return (((*(*v8 + 104))(v8) >> 14) & 1);
    }
  }

  return result;
}

unint64_t MecabraCandidateIsBilingualCandidate(unint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = objc_msgSend_rawCandidate(result, a2, a3, a4);
    return ((*(*v4 + 104))(v4) & 0x80) != 0 || (*(*v4 + 96))(v4) == 71;
  }

  return result;
}

void *MecabraCandidateIsPartialCandidate(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    return (MecabraCandidateGetMatchedLengthType(result, a2, a3, a4) == 1);
  }

  return result;
}

uint64_t MecabraCandidateGetMatchedLengthType(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v6 + 72))(v6) == 7)
    {
      v10 = sub_2992896C0(a1, v7, v8, v9);
      LOWORD(result) = (*(*v10 + 408))(v10);
    }

    else
    {
      LOWORD(result) = 0;
    }
  }

  return result;
}

void *MecabraCandidateIsMLTapTypingCandidate(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = sub_2992878A0(result, a2, a3, a4);
    if (result)
    {
      v8 = sub_2992896C0(v4, v5, v6, v7);
      return (*(*v8 + 280))(v8);
    }
  }

  return result;
}

uint64_t sub_29928A14C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !sub_2992878A0(a1, a2, a3, a4))
  {
    return 0;
  }

  v8 = *(*sub_2992896C0(a1, v5, v6, v7) + 208);

  return v8();
}

MecabraCandidate *sub_29928A270(uint64_t a1)
{
  v2 = [MecabraCandidate alloc];

  return objc_msgSend_initWithCandidate_(v2, v3, a1, v4);
}

uint64_t MecabraCandidateGetNextPhraseBoundary(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    return -1;
  }

  v10 = *(*sub_2992896C0(a1, v7, v8, v9) + 368);

  return v10();
}

void *MecabraCandidateGetWordCount(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result = objc_msgSend_rawCandidate(result, a2, a3, a4);
    if (result)
    {
      return (*(*result + 48))(result);
    }
  }

  return result;
}

uint64_t MecabraCandidateGetWordLengthAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = (*(*v6 + 120))(v6, a2);
  if (v8)
  {
    (*(*v8 + 24))(v8);
    return v9;
  }

  if ((*(*v7 + 72))(v7) != 1 && (*(*v7 + 72))(v7) != 7)
  {
    return 0;
  }

  v13 = *(*sub_2992896C0(a1, v10, v11, v12) + 128);

  return v13();
}

uint64_t MecabraCandidateGetWordReadingLengthAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = (*(*v6 + 120))(v6, a2);
  if (v8)
  {
    v9 = *(*v8 + 16);

    return v9();
  }

  if ((*(*v7 + 72))(v7) != 1 && (*(*v7 + 72))(v7) != 7)
  {
    return 0;
  }

  v14 = *(*sub_2992896C0(a1, v11, v12, v13) + 312);

  return v14();
}

uint64_t MecabraCandidateGetWordDictionaryReadingLengthAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = (*(*v6 + 120))(v6, a2);
  if (v8)
  {
    v9 = *(*v8 + 16);

    return v9();
  }

  if ((*(*v7 + 72))(v7) != 1 && (*(*v7 + 72))(v7) != 7)
  {
    return 0;
  }

  v14 = *(*sub_2992896C0(a1, v11, v12, v13) + 320);

  return v14();
}

uint64_t MecabraCandidateCreateWordLocaleAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    return 0;
  }

  v10 = *(*sub_2992896C0(a1, v7, v8, v9) + 328);

  return v10();
}

uint64_t MecabraCandidateWordAtIndexIsFromSystemDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = (*(*v6 + 120))(v6, a2);
  if (v8)
  {
    v9 = *(*v8 + 32);

    return v9();
  }

  if ((*(*v7 + 72))(v7) != 1 && (*(*v7 + 72))(v7) != 7)
  {
    return 0;
  }

  v14 = *(*sub_2992896C0(a1, v11, v12, v13) + 336);

  return v14();
}

BOOL MecabraCandidateHasAlternativeSurfaceFormForWordAtIndex(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_2A1460848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460848))
  {
    sub_299255778(0);
    qword_2A1460840 = &qword_2A1461DC0;
    __cxa_guard_release(&qword_2A1460848);
  }

  v6 = sub_2992896C0(a1, a2, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = __dynamic_cast(v6, &unk_2A1F72C30, &unk_2A1F6D008, 0);
  v8 = 0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    return v8;
  }

  v9 = v7;
  if (!v7)
  {
    return v8;
  }

  if ((*(*v7 + 48))(v7) <= a2)
  {
    return 0;
  }

  v10 = sub_2992C71F4(v9, a2);
  v12 = v11;
  v13 = *((*(*v9 + 560))(v9, a2) + 30);
  v14 = *(qword_2A1460840 + 72) <= v13 && *(qword_2A1460840 + 74) >= v13;
  v15 = *(qword_2A1460840 + 76) <= v13 && *(qword_2A1460840 + 78) >= v13;
  if (!v14 && !v15)
  {
    return 0;
  }

  if (v12)
  {
    v8 = 0;
    v16 = 1;
    v17 = v12;
    do
    {
      v19 = *v10++;
      v18 = v19;
      if ((v19 - 12353) >= 0x56 && v18 != 12540 && v18 != 12316)
      {
        break;
      }

      v8 = v16++ >= v12;
      --v17;
    }

    while (v17);
  }

  else
  {
    return 1;
  }

  return v8;
}

__CFArray *MecabraCandidateCopySyllableLengthArrayForWordAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    return 0;
  }

  v10 = sub_2992896C0(a1, v7, v8, v9);
  (*(*v10 + 424))(__p);
  v11 = sub_299279BF8(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11;
}

void sub_29928AE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MecabraCandidateGetLcAttrAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    return 0;
  }

  v10 = *(*sub_2992896C0(a1, v7, v8, v9) + 344);

  return v10();
}

uint64_t MecabraCandidateGetRcAttrAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    return 0;
  }

  v10 = *(*sub_2992896C0(a1, v7, v8, v9) + 352);

  return v10();
}

uint64_t MecabraCandidateGetTrieValueAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    return 0;
  }

  v10 = *(*sub_2992896C0(a1, v7, v8, v9) + 360);

  return v10();
}

uint64_t MecabraCandidateGetKindAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (v5 && ((v6 = v5, (*(*v5 + 72))(v5) == 1) || (*(*v6 + 72))(v6) == 7) && (v7 = __dynamic_cast(v6, &unk_2A1F64300, &unk_2A1F6D008, 0)) != 0)
  {
    return *(*(*v7 + 560))(v7, a2);
  }

  else
  {
    LOWORD(v8) = 0;
  }

  return v8;
}

void *MecabraCandidateGetCostAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v6 + 72))(v6) == 7)
    {
      result = __dynamic_cast(v6, &unk_2A1F64300, &unk_2A1F6D008, 0);
      if (result)
      {
        return *((*(*result + 560))(result, a2) + 4);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *MecabraCandidateGetLastPrefixValue(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v6 + 72))(v6) == 7)
    {
      v10 = sub_2992896C0(a1, v7, v8, v9);
      return (*(*v10 + 376))(v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *MecabraCandidateGetWeight(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v5 = *(*result + 112);

    return v5();
  }

  return result;
}

uint64_t MecabraCandidateGetKind(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v6 + 72))(v6) == 7)
    {
      v10 = sub_2992896C0(a1, v7, v8, v9);
      LOWORD(result) = (*(*v10 + 96))(v10);
    }

    else
    {
      LOWORD(result) = 0;
    }
  }

  return result;
}

uint64_t MecabraCandidateGetMatchType(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v6 + 72))(v6) == 7)
    {
      v10 = sub_2992896C0(a1, v7, v8, v9);
      LOWORD(result) = (*(*v10 + 416))(v10);
    }

    else
    {
      LOWORD(result) = 0;
    }
  }

  return result;
}

double MecabraCandidateGetLMProbability(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0.0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    return 0.0;
  }

  v10 = *(*sub_2992896C0(a1, v7, v8, v9) + 392);

  v10();
  return result;
}

void *MecabraCandidateGetBaseCost(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v5 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v5 + 72))(v5) == 7)
    {
      result = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F6D008, 0);
      if (result)
      {
        return (*(*result + 384))(result);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int *MecabraCandidateGetMatchPenalty(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (result)
  {
    v5 = result;
    if ((*(*result + 72))(result) == 1 || (*(*v5 + 72))(v5) == 7)
    {
      result = __dynamic_cast(v5, &unk_2A1F64300, &unk_2A1F6D008, 0);
      if (result)
      {
        return result[55];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFArray *MecabraCandidateCopySyllableLengthArrayInAnalysisString(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    return 0;
  }

  v10 = sub_2992896C0(a1, v7, v8, v9);
  (*(*v10 + 432))(__p);
  v14 = sub_299279BF8(__p);
  __p[3] = v14;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v15 = sub_2992896C0(a1, v11, v12, v13);
  if (!(*(*v15 + 456))(v15))
  {
    return v14;
  }

  v18 = sub_29927ED04(a1, v14, v16, v17);
  if (v14)
  {
    CFRelease(v14);
  }

  return v18;
}

void sub_29928B9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *MecabraCandidateCopySyllableLengthArrayInConvertedAnalysisString(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    return 0;
  }

  v10 = sub_2992896C0(a1, v7, v8, v9);
  (*(*v10 + 432))(__p);
  v11 = sub_299279BF8(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11;
}

void sub_29928BAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *MecabraCandidateCopySyllableLengthArrayInDictionaryReading(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((*(*v5 + 72))(v5) != 1 && (*(*v6 + 72))(v6) != 7)
  {
    return 0;
  }

  v10 = sub_2992896C0(a1, v7, v8, v9);
  (*(*v10 + 432))(__p);
  v11 = sub_299279BF8(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11;
}

void sub_29928BC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *MecabraCandidateIsSupplementalLexiconCandidate(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = objc_msgSend_rawCandidate(result, a2, a3, a4);
    return ((*(*v4 + 96))(v4) == 89);
  }

  return result;
}

void *MecabraCandidateGetSupplementalLexiconIdentifiers(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = *(*objc_msgSend_rawCandidate(result, a2, a3, a4) + 160);

    return v4();
  }

  return result;
}

void *MecabraCandidateGetSupplementalLexiconItemPrefix(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = *(*objc_msgSend_rawCandidate(result, a2, a3, a4) + 168);

    return v4();
  }

  return result;
}

void *MecabraCandidateExactlyCoversInputString(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = sub_2992878A0(result, a2, a3, a4);
    if (result)
    {
      v8 = objc_msgSend_rawCandidate(v4, v5, v6, v7);
      if ((*(*v8 + 96))(v8) == 89)
      {
        v12 = sub_2992896C0(v4, v9, v10, v11);
        return (*(*v12 + 296))(v12);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFStringRef sub_29928BDA8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (v5 && ((v9 = v5, (*(*v5 + 72))(v5) == 1) || (*(*v9 + 72))(v9) == 7))
  {
    LMProbability = MecabraCandidateGetLMProbability(a1, v6, v7, v8);
    Surface = MecabraCandidateGetSurface(a1, v11, v12, v13);
    AnalysisString = MecabraCandidateGetAnalysisString(a1, v15, v16, v17);
    ConvertedAnalysisString = MecabraCandidateGetConvertedAnalysisString(a1, v19, v20, v21);
    DictionaryReading = MecabraCandidateGetDictionaryReading(a1, v23, v24, v25);
    v30 = objc_msgSend_rawCandidate(a1, v27, v28, v29);
    if (v30)
    {
      v30 = (*(*v30 + 112))(v30);
    }

    v31 = -1000.0;
    if (LMProbability != -1.79769313e308)
    {
      v31 = LMProbability;
    }

    return CFStringCreateWithFormat(0, 0, @"%@ (AS:%@ CAS:%@ DR:%@), %d, %f", Surface, AnalysisString, ConvertedAnalysisString, DictionaryReading, v30, *&v31);
  }

  else
  {
    v33 = MecabraCandidateGetSurface(a1, v6, v7, v8);
    v37 = MecabraCandidateGetAnalysisString(a1, v34, v35, v36);
    v41 = MecabraCandidateGetConvertedAnalysisString(a1, v38, v39, v40);
    v45 = MecabraCandidateGetDictionaryReading(a1, v42, v43, v44);
    v49 = objc_msgSend_rawCandidate(a1, v46, v47, v48);
    if (v49)
    {
      v49 = (*(*v49 + 112))(v49);
    }

    return CFStringCreateWithFormat(0, 0, @"%@ (AS:%@ CAS:%@ DR:%@), %d", v33, v37, v41, v45, v49);
  }
}

uint64_t MecabraSetCandidateOrderAdjustment(uint64_t result, int a2)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 168))(result, a2 != 0);
    }
  }

  return result;
}

uint64_t MecabraWorkingSetAddStringWithContext(uint64_t result, uint64_t *a2, const char *a3)
{
  if (result)
  {
    v3 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 16))(result);
      if (result <= 0xE && ((1 << result) & 0x5800) != 0)
      {
        v7 = (*(**v3 + 424))(*v3);
        if (a2)
        {
          v9 = *a2;
        }

        else
        {
          v9 = 0;
        }

        return sub_29932DEE0(v7, v9, a3, v8);
      }
    }
  }

  return result;
}

void *MecabraWorkingSetContainsStringWithContext(void *result, const char **a2, const __CFString *a3)
{
  if (result)
  {
    v3 = result;
    result = *result;
    if (result)
    {
      v6 = (*(*result + 16))(result);
      if (v6 > 0xE || ((1 << v6) & 0x5800) == 0)
      {
        return 0;
      }

      else
      {
        v8 = (*(**v3 + 424))(*v3);
        if (a2)
        {
          v10 = *a2;
        }

        else
        {
          v10 = 0;
        }

        return sub_29932DF58(v8, v10, a3, v9);
      }
    }
  }

  return result;
}

uint64_t MecabraDeleteEntryFromLearningDictionary(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 184))(result);
    }
  }

  return result;
}

uint64_t *MecabraDeleteCandidateFromLearningDictionary(uint64_t *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      v3 = *v2;
      if (v3)
      {
        return (*(*v3 + 192))(v3);
      }
    }
  }

  return result;
}

CFMutableArrayRef MecabraCreatePinyinSyllableArray(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return (*(*v1 + 232))();
  }

  else
  {
    return CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, 0);
  }
}

uint64_t MecabraSetFuzzyPinyinPairs(void *a1, CFArrayRef theArray)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!a1 || !*a1)
  {
    return 0;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  ptr = Count;
  v6 = sub_2993652F8(0xDu);
  v7 = os_signpost_id_make_with_pointer(v6, &ptr);
  v8 = sub_2993652F8(0xDu);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v8))
    {
      *buf = 134217984;
      v15 = ptr;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MecabraSetFuzzyPinyinPairs", "Reset (%ld) fuzzy pairs.", buf, 0xCu);
    }
  }

  v5 = (*(**a1 + 240))(*a1, theArray);
  v10 = sub_2993652F8(0xDu);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v11, OS_SIGNPOST_INTERVAL_END, v7, "MecabraSetFuzzyPinyinPairs", &unk_29945DB9F, buf, 2u);
    }
  }

  return v5;
}

uint64_t MecabraGetMaximalCharacterInputCodeLength(uint64_t a1, uint64_t a2)
{
  if ((a1 - 3) < 0xFFFFFFFE || a2 != 0)
  {
    return 0;
  }

  result = sub_2993F6B00();
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t MecabraGetInputCodeForCharacters(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v8 = result;
    result = 0;
    if ((a4 - 3) >= 0xFFFFFFFE && !a5)
    {
      result = sub_2993F6B00();
      if (result)
      {
        if (a4 == 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        return sub_2993F6C24(result, v8, a2, a3, v13, a6, a7);
      }
    }
  }

  return result;
}

uint64_t MecabraSetBuildDynamicDictionariesAsynchronously(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 272))();
    }
  }

  return result;
}

uint64_t MecabraCangjieCodeIsValid(_BYTE *a1, unint64_t a2)
{
  if (atomic_load_explicit(&qword_2A1460858, memory_order_acquire) != -1)
  {
    v7 = &v5;
    v6 = &v7;
    std::__call_once(&qword_2A1460858, &v6, sub_29929A6D8);
  }

  return sub_299322C64(qword_2A1460850, a1, a2);
}

void *MecabraSetWubixingStandard(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = *result;
    if (result)
    {
      v3 = a2;
      result = (*(*result + 16))(result);
      if (result == 10)
      {
        v4 = (*(**v2 + 424))(*v2);

        return sub_29930A92C(v4, v3);
      }
    }
  }

  return result;
}

void *MecabraGetWubixingStandard(void *result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      if ((*(*result + 16))(result) == 10)
      {
        return *((*(**v1 + 424))(*v1) + 360);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t MecabraCreateWubixingCodesFromSurface(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *a1;
  if (!v3 || (*(*v3 + 16))(v3) != 10)
  {
    return 0;
  }

  v5 = (*(**a1 + 424))(*a1);

  return sub_29930A8C8(v5, a2);
}

void *MecabraCandidateGetWubixingType(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result = objc_msgSend_rawCandidate(result, a2, a3, a4);
    if (result)
    {
      v4 = result;
      if ((*(*result + 72))(result) == 1 || (*(*v4 + 72))(v4) == 7)
      {
        v5 = ((*(*v4 + 104))(v4) & 0x8080) == 0;
        return (((*(*v4 + 104))(v4) >> 14) & 4 | (2 * v5));
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t MecabraSetDebuggingLogEnabled(uint64_t result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 288))();
    }
  }

  return result;
}

uint64_t MecabraGetDebuggingLog(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return (*(*v1 + 280))();
  }

  else
  {
    return 0;
  }
}

uint64_t MecabraCreateCustomDebugInfo(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0)
  {
    return (*(*v1 + 296))();
  }

  else
  {
    return 0;
  }
}

void *MecabraFlushDynamicData(void *result, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v2 = result;
    if (*result)
    {
      v4 = sub_2993652F8(2u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = 134217984;
        v6 = v2;
        _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraFlushDynamicData] mecabra:%p", &v5, 0xCu);
      }

      return (*(**v2 + 304))(*v2, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MecabraPerformMaintenance(void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraPerformMaintenance] mecabra:%p", &v3, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    (*(**a1 + 312))(*a1);
  }
}

uint64_t MecabraCandidateGetRangeOfWordAtIndex(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_rawCandidate(a1, a2, a3, a4);
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  v7 = (*(*v5 + 120))(v5, a2);
  if (!v7)
  {
    if ((*(*v6 + 48))(v6) > a2)
    {
      if (a2)
      {
        v10 = 0;
        LODWORD(v11) = 0;
        do
        {
          v11 = v11 + (*(*v6 + 128))(v6, v10++);
        }

        while (a2 != v10);
      }

      else
      {
        v11 = 0;
      }

      (*(*v6 + 128))(v6, a2);
      return v11;
    }

    return -1;
  }

  v8 = *(*v7 + 24);

  return v8();
}

uint64_t MecabraCreateAlternateWordArrayForWordAtIndex(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v5 = *a1;
  if (!v5)
  {
    return 0;
  }

  if (a2)
  {
    if (sub_2992878A0(a2, a2, a3, a4))
    {
      v5 = *a1;
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  v6 = *(*v5 + 336);

  return v6();
}

uint64_t MecabraSpecialtyDictionaryCreateWithEntries(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v8 = sub_2993652F8(2u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = a2;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[MecabraSpecialtyDictionaryCreateWithEntries] entries:%p", &v10, 0xCu);
  }

  result = 0;
  if (!a1)
  {
    if (a2)
    {
      return sub_2993CA1FC(a2, a3, a4);
    }
  }

  return result;
}

CFDataRef MecabraSpecialtyDictionaryGetData(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(2u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraSpecialtyDictionaryGetData] dictionary:%p", &v4, 0xCu);
    if (a1)
    {
      return sub_2993CA910(a1);
    }
  }

  else if (a1)
  {
    return sub_2993CA910(a1);
  }

  return 0;
}

uint64_t MecabraSpecialtyDictionaryCreateWithData(int a1, uint64_t a2, unint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(2u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134217984;
    v9 = a2;
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MecabraSpecialtyDictionaryCreateWithData] dictionaryData:%p", &v8, 0xCu);
  }

  result = 0;
  if (!a1)
  {
    if (a2)
    {
      sub_2993CA290(a2, a3);
    }
  }

  return result;
}

void *MecabraAddSpecialtyDictionary(void *result, void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (*v3)
      {
        if ((*(**v3 + 16))(*v3) == 1)
        {
          v4 = sub_2993652F8(2u);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
          {
            v6 = 134218240;
            v7 = v3;
            v8 = 2048;
            v9 = a2;
            _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraAddSpecialtyDictionary] mecabra:%p dictionary:%p", &v6, 0x16u);
          }

          v5 = (*(**v3 + 424))(*v3);
          return ((*(**(v5 + 192) + 168))(*(v5 + 192), *a2) != 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void *MecabraRemoveSpecialtyDictionary(void *result, void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (*v3)
      {
        if ((*(**v3 + 16))(*v3) == 1)
        {
          v4 = sub_2993652F8(2u);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
          {
            v6 = 134218240;
            v7 = v3;
            v8 = 2048;
            v9 = a2;
            _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraRemoveSpecialtyDictionary] mecabra:%p dictionary:%p", &v6, 0x16u);
          }

          v5 = (*(**v3 + 424))(*v3);
          return ((*(**(v5 + 192) + 176))(*(v5 + 192), *a2) != 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void MecabraSpecialtyDictionaryEnumerateEntries(uint64_t *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = sub_2993652F8(2u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_debug_impl(&dword_29918C000, v3, OS_LOG_TYPE_DEBUG, "[MecabraSpecialtyDictionaryEnumerateEntries] dictionary:%p", &v4, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  sub_2993CA970(a1);
}

uint64_t **MecabraSpecialtyDictionaryRelease(uint64_t **result)
{
  v6 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    v2 = sub_2993652F8(2u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = 134217984;
      v5 = v1;
      _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MecabraSpecialtyDictionaryRelease] dictionary:%p", &v4, 0xCu);
    }

    v3 = sub_2993CA808(v1);
    return MEMORY[0x29C29BFB0](v3, 0x60C40149E097CLL);
  }

  return result;
}

MecabraWordProperties *MecabraWordPropertiesCreate(uint64_t a1, uint64_t a2)
{
  v4 = [MecabraWordProperties alloc];

  return objc_msgSend_initWithString_language_(v4, v5, a1, a2);
}

void MecabraAdaptToTokenizedText(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(2u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = a1;
    _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[MecabraAdaptToTokenizedText] mecabra:%p", &v7, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (a3)
  {
    if (*a1)
    {
      (*(**a1 + 200))(*a1, a2, a3);
    }
  }
}

void MecabraAdaptToTokenizedTextWithEffectiveTime(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = sub_2993652F8(2u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = a1;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[MecabraAdaptToTokenizedTextWithEffectiveTime] mecabra:%p", &v9, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (a3)
  {
    if (*a1)
    {
      (*(**a1 + 208))(*a1, a2, a3, a4);
    }
  }
}

void MecabraAdaptToUntokenizedText(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = sub_2993652F8(2u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = a1;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[MecabraAdaptToUntokenizedText] mecabra:%p", &v9, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (a3)
  {
    if (*a1)
    {
      (*(**a1 + 216))(*a1, a2, a3, a4);
    }
  }
}

double MecabraGetLastOfflineAdaptationTime(uint64_t *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = *a1;
  if (!v1)
  {
    return 0.0;
  }

  (*(*v1 + 224))();
  return result;
}

id MecabraCreateFacemarkCandidatesWithContext(void *a1, uint64_t *a2)
{
  v77 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return 0;
  }

  v3 = *a1;
  if (!v3)
  {
    return 0;
  }

  v5 = (*(*v3 + 16))(v3);
  v6 = sub_299277300(v5);
  if (v6 > 5 || ((1 << v6) & 0x27) == 0)
  {
    return 0;
  }

  v8 = v6;
  v9 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v13 = objc_msgSend_set(MEMORY[0x29EDB8E20], v10, v11, v12);
  if (a2)
  {
    v14 = *a2;
  }

  else
  {
    v14 = 0;
  }

  if ((*(**a1 + 40))(*a1, kMecabraAnalysisStringForFacemark[0], 16386, v14))
  {
    v19 = (*(**a1 + 64))();
    if (v19)
    {
      v20 = v19;
      do
      {
        Surface = MecabraCandidateGetSurface(v20, v16, v17, v18);
        if ((objc_msgSend_containsObject_(v13, v22, Surface, v23) & 1) == 0)
        {
          v27 = MecabraCandidateGetSurface(v20, v24, v25, v26);
          objc_msgSend_addObject_(v13, v28, v27, v29);
          if (!v8)
          {
            v33 = MecabraCandidateGetSurface(v20, v30, v31, v32);
            sub_29928DBA4(v33, kFacemarkCategoryRecentlyUsed[0]);
          }

          objc_msgSend_addObject_(v9, v30, v20, v32);
        }

        v20 = (*(**a1 + 64))();
      }

      while (v20);
    }
  }

  if (v8 || *sub_299237120() == 1)
  {
    objc_msgSend_removeAllObjects(v13, v16, v17, v18);
  }

  if (v8 - 1 < 2 || v8 == 5)
  {
    v35 = 3;
  }

  else
  {
    v35 = v8;
  }

  v36 = sub_29936C2B8();
  v37 = sub_29936C350(v36, v35, off_2A145F738[0], off_2A145F698[0]);
  v39 = MEMORY[0x29EDB8D80];
  if (*(v37 + 23) >= 0)
  {
    v40 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v38, v37, 4);
  }

  else
  {
    v40 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v38, *v37, 4);
  }

  v43 = objc_msgSend_arrayWithContentsOfFile_(v39, v41, v40, v42);
  if (v43)
  {
    v44 = v43;
    v45 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    memset(v74, 0, sizeof(v74));
    if (objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, v74, v76, 16))
    {
      v49 = **(&v74[0] + 1);
      v50 = objc_msgSend_objectForKey_(**(&v74[0] + 1), v47, @"string", v48);
      v53 = objc_msgSend_objectForKey_(v49, v51, @"category", v52);
      sub_29928DBA4(v50, v53);
    }

    if (v45)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v70, v75, 16);
      if (v54)
      {
        v58 = v54;
        v59 = *v71;
        do
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v71 != v59)
            {
              objc_enumerationMutation(v45);
            }

            v61 = *(*(&v70 + 1) + 8 * i);
            v62 = MecabraCandidateGetSurface(v61, v55, v56, v57);
            if ((objc_msgSend_containsObject_(v13, v63, v62, v64) & 1) == 0)
            {
              v65 = MecabraCandidateGetSurface(v61, v55, v56, v57);
              objc_msgSend_addObject_(v13, v66, v65, v67);
              objc_msgSend_addObject_(v9, v68, v61, v69);
            }
          }

          v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v55, &v70, v75, 16);
        }

        while (v58);
      }
    }
  }

  return v9;
}

void MecabraSetDynamicLanguageModelAppContext(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412546;
    v6 = a2;
    v7 = 2048;
    v8 = a1;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraSetDynamicLanguageModelAppContext] %@ (mecabra:%p)", &v5, 0x16u);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    (*(**a1 + 136))(*a1, a2);
  }
}

uint64_t MecabraEnumerateSyllabifiedStringLengths(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      return (*(*result + 392))(result, a3, a4, a5);
    }
  }

  return result;
}

void MecabraGestureAddKeyAndLoglikelihoodPair(uint64_t result, float a2, __int16 a3)
{
  if (result)
  {
    sub_2992FE264(*(result + 24), a3, a2);
  }
}

void MecabraSetKeyboardLayout(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = a1;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MecabraSetKeyboardLayout] mecabra:%p", &v5, 0xCu);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (*a1)
  {
    (*(**a1 + 264))(*a1, a2);
  }
}

uint64_t MecabraCreateSegments(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *a1) != 0)
  {
    return (*(*v2 + 352))();
  }

  else
  {
    return 0;
  }
}

CFStringRef *MecabraConvertedKanaCreateFromRomajiString(const __CFString *a1, int a2)
{
  if (a1)
  {
    v3 = 0u;
    *capacity = 0u;
    v5 = 1065353216;
    sub_299216C84(a1, 0, &v3, a2 != 0);
  }

  return 0;
}

void sub_29928E2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29921ED28(va);
  _Unwind_Resume(a1);
}

uint64_t MecabraConvertedKanaGetKana(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t MecabraConvertedKanaGetAlignment(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

CFTypeRef *MecabraConvertedKanaRelease(CFTypeRef *result)
{
  if (result)
  {
    v1 = result;
    CFRelease(*result);
    CFRelease(v1[1]);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

CFStringRef MecabraReverseConvertedRomajiCreateFromKanaString(const __CFString *a1)
{
  if (a1)
  {
    v2 = 0;
    sub_299276A84(a1);
  }

  return 0;
}

void sub_29928E43C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    MEMORY[0x29C29BF70](v15, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void MecabraJapaneseLMCreate(int a1, const __CFURL *cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  else
  {
    v2 = sub_29936D41C("ja");
    v3 = CFURLCreateCopyAppendingPathComponent(0, v2, off_2A145E380, 1u);
    if (v2)
    {
      CFRelease(v2);
    }

    CFURLCreateCopyAppendingPathComponent(0, v3, off_2A145E3A0, 0);
  }

  operator new();
}