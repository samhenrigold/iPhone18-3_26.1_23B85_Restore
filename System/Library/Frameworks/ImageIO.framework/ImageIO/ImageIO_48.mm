void ImportSingleTIFF(uint64_t a1, int a2, uint64_t a3, char *a4, char *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 2);
  if (v9 <= 5)
  {
    if (*(a1 + 2) <= 2u)
    {
      if (v9 == 1)
      {

        ImportSingleTIFF_Byte(a1, a3, a4, a5);
      }

      else if (v9 == 2)
      {
        v18 = TrimTrailingSpaces(*(a1 + 8), *(a1 + 16));
        *(a1 + 16) = v18;
        if (v18)
        {
          v19 = *(a1 + 8);
          v20 = *(v19 + v18 - 1);
          IsUTF8 = ReconcileUtils::IsUTF8(v19, v18);
          if (v20)
          {
            v22 = 0;
          }

          else
          {
            v22 = IsUTF8;
          }

          if (v22 == 1)
          {
            TXMPMeta<std::string>::SetProperty(a3, a4, a5, v19, 0);
            return;
          }

          memset(__str, 0, sizeof(__str));
          *&v39 = 0;
          if (IsUTF8)
          {
            MEMORY[0x186602530](__str, v19, *(a1 + 16));
          }

          else
          {
            if (ignoreLocalText)
            {
              return;
            }

            ReconcileUtils::LocalToUTF8(v19, *(a1 + 16), __str);
          }

          if ((SBYTE7(v39) & 0x80u) == 0)
          {
            v37 = __str;
          }

          else
          {
            v37 = *__str;
          }

          TXMPMeta<std::string>::SetProperty(a3, a4, a5, v37, 0);
          if (SBYTE7(v39) < 0)
          {
            operator delete(*__str);
          }
        }
      }
    }

    else
    {
      switch(v9)
      {
        case 3u:
          v29 = **(a1 + 8);
          v30 = bswap32(v29) >> 16;
          if (!a2)
          {
            LOWORD(v29) = v30;
          }

          memset(__str, 0, sizeof(__str));
          LODWORD(v39) = 0;
          snprintf(__str, 0x14uLL, "%hu", v29);
          TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
          break;
        case 4u:
          LODWORD(v23) = **(a1 + 8);
          v24 = bswap32(v23);
          if (a2)
          {
            v23 = v23;
          }

          else
          {
            v23 = v24;
          }

          memset(__str, 0, sizeof(__str));
          LODWORD(v39) = 0;
          snprintf(__str, 0x14uLL, "%lu", v23);
          TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
          break;
        case 5u:
          v12 = *(a1 + 8);
          LODWORD(v13) = *v12;
          LODWORD(v12) = *(v12 + 4);
          v14 = bswap32(v13);
          v15 = bswap32(v12);
          if (a2)
          {
            v13 = v13;
          }

          else
          {
            v13 = v14;
          }

          if (a2)
          {
            v12 = v12;
          }

          else
          {
            v12 = v15;
          }

          v40 = 0;
          *__str = 0u;
          v39 = 0u;
          snprintf(__str, 0x28uLL, "%lu/%lu", v13, v12);
          TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
          break;
      }
    }
  }

  else if (*(a1 + 2) > 9u)
  {
    switch(v9)
    {
      case 0xAu:
        v32 = *(a1 + 8);
        v34 = *v32;
        v33 = v32[1];
        v35 = bswap32(v34);
        v36 = bswap32(v33);
        if (!a2)
        {
          v34 = v35;
          v33 = v36;
        }

        v40 = 0;
        *__str = 0u;
        v39 = 0u;
        snprintf(__str, 0x28uLL, "%ld/%ld", v34, v33);
        TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
        break;
      case 0xBu:
        v27 = **(a1 + 8);
        v28 = COERCE_FLOAT(bswap32(LODWORD(v27)));
        if (!a2)
        {
          v27 = v28;
        }

        TXMPMeta<std::string>::SetProperty_Float(a3, a4, a5, 0, v27);
        break;
      case 0xCu:
        v16 = **(a1 + 8);
        v17 = COERCE_DOUBLE(bswap64(*&v16));
        if (!a2)
        {
          v16 = v17;
        }

        TXMPMeta<std::string>::SetProperty_Float(a3, a4, a5, 0, v16);
        break;
    }
  }

  else
  {
    switch(v9)
    {
      case 6u:
        v31 = **(a1 + 8);
        memset(__str, 0, sizeof(__str));
        LODWORD(v39) = 0;
        snprintf(__str, 0x14uLL, "%hd", v31);
        TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
        break;
      case 8u:
        v25 = **(a1 + 8);
        v26 = bswap32(v25) >> 16;
        if (!a2)
        {
          LOWORD(v25) = v26;
        }

        memset(__str, 0, sizeof(__str));
        LODWORD(v39) = 0;
        snprintf(__str, 0x14uLL, "%hd", v25);
        TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
        break;
      case 9u:
        v10 = **(a1 + 8);
        v11 = bswap32(v10);
        if (!a2)
        {
          v10 = v11;
        }

        memset(__str, 0, sizeof(__str));
        LODWORD(v39) = 0;
        snprintf(__str, 0x14uLL, "%ld", v10);
        TXMPMeta<std::string>::SetProperty(a3, a4, a5, __str, 0);
        break;
    }
  }
}

void sub_186143A40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1861438BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_186143A58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1861438BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_186143A70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1861438BCLL);
  }

  _Unwind_Resume(a1);
}

void ImportTIFF_Date(uint64_t result, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v6 = *a2;
  if (v6 == 306)
  {
    v7 = 36880;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == 306)
  {
    v8 = 37520;
  }

  else
  {
    v8 = 0;
  }

  if (v6 == 36867)
  {
    v9 = 36881;
  }

  else
  {
    v9 = v7;
  }

  if (v6 == 36867)
  {
    v10 = 37521;
  }

  else
  {
    v10 = v8;
  }

  if (v6 == 36868)
  {
    v11 = 36882;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == 36868)
  {
    v12 = 37522;
  }

  else
  {
    v12 = v10;
  }

  if (a2[1] != 2 || *(a2 + 1) != 20)
  {
    return;
  }

  v14 = *(a2 + 1);
  if (v14[4] != 58 || v14[7] != 58 || v14[10] != 32 || v14[13] != 58 || v14[16] != 58)
  {
    return;
  }

  v18 = 0;
  v19 = 0;
  *v94 = 0;
  do
  {
    v20 = v18;
    if (v19 == 4)
    {
      break;
    }

    v21 = v14[v19];
    v22 = v21 - 58;
    v18 = v21 + 10 * v20 - 48;
    ++v19;
  }

  while (v22 > 0xFFFFFFF5);
  v23 = 0;
  v24 = 0;
  LODWORD(v91) = v20;
  do
  {
    v25 = v24;
    if (v23 == 2)
    {
      break;
    }

    v26 = v14[v23 + 5];
    v27 = v26 - 58;
    v24 = v26 + 10 * v25 - 48;
    ++v23;
  }

  while (v27 > 0xFFFFFFF5);
  v28 = 0;
  v29 = 0;
  DWORD1(v91) = v25;
  do
  {
    v30 = v29;
    if (v28 == 2)
    {
      break;
    }

    v31 = v14[v28 + 8];
    v32 = v31 - 58;
    v29 = v31 + 10 * v30 - 48;
    ++v28;
  }

  while (v32 > 0xFFFFFFF5);
  DWORD2(v91) = v30;
  if (v25 | v20 | v30)
  {
    v94[0] = 1;
  }

  v33 = 0;
  v34 = 0;
  do
  {
    v35 = v34;
    if (v33 == 2)
    {
      break;
    }

    v36 = v14[v33 + 11];
    v37 = v36 - 58;
    v34 = v36 + 10 * v35 - 48;
    ++v33;
  }

  while (v37 > 0xFFFFFFF5);
  v38 = 0;
  v39 = 0;
  HIDWORD(v91) = v35;
  do
  {
    v40 = v39;
    if (v38 == 2)
    {
      break;
    }

    v41 = v14[v38 + 14];
    v42 = v41 - 58;
    v39 = v41 + 10 * v40 - 48;
    ++v38;
  }

  while (v42 > 0xFFFFFFF5);
  v43 = 0;
  v44 = 0;
  v92 = v40;
  v45 = v14 + 17;
  do
  {
    v46 = v44;
    if (v43 == 2)
    {
      break;
    }

    v47 = v45[v43];
    v48 = v47 - 58;
    v44 = v47 + 10 * v46 - 48;
    ++v43;
  }

  while (v48 > 0xFFFFFFF5);
  v93 = v46;
  v95 = 0;
  if (v40 | v35 | v46)
  {
    v94[1] = 1;
  }

  *&v94[10] = 0;
  *&v94[2] = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v49 = (*(*result + 24))(result, 2, v12, &v88);
  if (WORD1(v88) == 2)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v50 == 1)
  {
    v51 = 0;
    v52 = v89;
    do
    {
      v53 = v51;
      if (v52 >= &v89[v90])
      {
        break;
      }

      v54 = *v52++;
      v51 = v54 + 10 * v51 - 48;
    }

    while ((v54 - 58) > 0xFFFFFFF5);
    if (*v89 - 48 > 9)
    {
      v55 = 0;
    }

    else
    {
      v55 = 0;
      do
      {
        v56 = v89[++v55];
      }

      while ((v56 - 48) < 0xA);
      if (v55 > 8)
      {
LABEL_67:
        v95 = v53;
        if (v53)
        {
          v94[1] = 1;
        }

        goto LABEL_69;
      }
    }

    v57.i64[1] = 0x100000001;
    v57.i64[0] = v53 | 0x100000000;
    v58 = vdupq_n_s64(8 - v55);
    v59 = 4;
    v60.i64[0] = 0xA0000000ALL;
    v60.i64[1] = 0xA0000000ALL;
    do
    {
      v61 = v57;
      v57 = vmulq_s32(v57, v60);
      v59 -= 4;
    }

    while (((12 - v55) & 0xFFFFFFFFFFFFFFFCLL) + v59 != 4);
    v62 = vdupq_n_s64(-v59);
    v63 = vbslq_s8(vuzp1q_s32(vcgtq_u64(vorrq_s8(v62, xmmword_186205EC0), v58), vcgtq_u64(vorrq_s8(v62, xmmword_186205EB0), v58)), v61, v57);
    *v63.i8 = vmul_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
    v53 = v63.i32[0] * v63.i32[1];
    goto LABEL_67;
  }

LABEL_69:
  v85 = 0;
  __s1 = 0;
  v87 = 0;
  v64 = (*(*result + 24))(result, 2, 36864, &v85);
  if (WORD1(v85) == 7)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65 == 1 && HIDWORD(v85) == 4;
  if (v66 && (strncmp(__s1, "0231", 4uLL) & 0x80000000) == 0)
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v67 = (*(*result + 24))(result, 2, v11, &v82);
    v68 = WORD1(v82) == 2 ? v67 : 0;
    if (v68 == 1 && HIDWORD(v82) == 7)
    {
      v70 = *v83;
      if (v70 == 43 || v70 == 45 || v83[3] == 58)
      {
        v71 = 0;
        v72 = 0;
        if (v70 == 45)
        {
          v73 = -1;
        }

        else
        {
          v73 = 1;
        }

        v94[3] = v73;
        do
        {
          v74 = v71;
          if (v72 == 2)
          {
            break;
          }

          v75 = v83[++v72];
          v76 = v75 - 58;
          v71 = v75 + 10 * v74 - 48;
        }

        while (v76 > 0xFFFFFFF5);
        v77 = 0;
        v78 = 0;
        *&v94[4] = v74;
        do
        {
          v79 = v78;
          if (v77 == 2)
          {
            break;
          }

          v80 = v83[v77 + 4];
          v81 = v80 - 58;
          v78 = v80 + 10 * v79 - 48;
          ++v77;
        }

        while (v81 > 0xFFFFFFF5);
        *&v94[8] = v79;
        v94[2] = 1;
      }
    }
  }

  TXMPMeta<std::string>::SetProperty_Date(a3, a4, a5, &v91, 0);
}

void sub_186144020(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186144008);
}

void ImportArrayTIFF_Byte(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  TXMPMeta<std::string>::DeleteProperty(a2, a3, a4);
  if (*(a1 + 4))
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + v9);
      *__str = 0;
      v12 = 0;
      v13 = 0;
      snprintf(__str, 0x14uLL, "%hu", v10);
      TXMPMeta<std::string>::AppendArrayItem(a2, a3, a4, 1024, __str, 0);
      ++v9;
    }

    while (v9 < *(a1 + 4));
  }
}

void sub_186144120(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1861440E8);
  }

  _Unwind_Resume(a1);
}

void ImportTIFF_EncodedString(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5)
{
  memset(&v13, 0, sizeof(v13));
  if (TIFF_Manager::DecodeString(a1, *(a2 + 8), *(a2 + 16), &v13))
  {
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v13;
    }

    else
    {
      v9 = v13.__r_.__value_.__r.__words[0];
    }

    v10 = TrimTrailingSpaces(v9, size);
    if (v10 != size)
    {
      std::string::erase(&v13, v10, 0xFFFFFFFFFFFFFFFFLL);
    }

    v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v13.__r_.__value_.__l.__size_;
    }

    if (v11)
    {
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v13;
      }

      else
      {
        v12 = v13.__r_.__value_.__r.__words[0];
      }

      if (a5)
      {
        TXMPMeta<std::string>::SetLocalizedText(a3, "http://ns.adobe.com/exif/1.0/", a4, "", "x-default", v12, 0);
      }

      else
      {
        TXMPMeta<std::string>::SetProperty(a3, "http://ns.adobe.com/exif/1.0/", a4, v12, 0);
      }
    }
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_186144250(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18614423CLL);
}

void ImportConversionTable(unsigned __int16 *a1, int a2, uint64_t a3, char *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v35 = v4;
  if (v4 != 34856 && v4 != 41484)
  {
    ImportConversionTable();
  }

  TXMPMeta<std::string>::DeleteProperty(a3, "http://ns.adobe.com/exif/1.0/", a4);
  v10 = *(a1 + 1);
  v11 = *(a1 + 4);
  v12 = v10[1];
  v13 = bswap32(*v10) >> 16;
  if (a2)
  {
    LOWORD(v14) = *v10;
  }

  else
  {
    LOWORD(v14) = v13;
  }

  v41 = 0;
  *__str = 0u;
  v40 = 0u;
  snprintf(__str, 0x28uLL, "%d", v14);
  v36 = a4;
  TXMPMeta<std::string>::SetStructField(a3, "http://ns.adobe.com/exif/1.0/", a4, "http://ns.adobe.com/exif/1.0/", "Columns", __str, 0);
  v15 = __rev16(v12);
  if (a2)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  snprintf(__str, 0x28uLL, "%d", v16);
  TXMPMeta<std::string>::SetStructField(a3, "http://ns.adobe.com/exif/1.0/", a4, "http://ns.adobe.com/exif/1.0/", "Rows", __str, 0);
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  TXMPUtils<std::string>::ComposeStructFieldPath("http://ns.adobe.com/exif/1.0/", a4, "http://ns.adobe.com/exif/1.0/", "Names", __p);
  v17 = v10 + v11;
  v18 = (v10 + 2);
  v19 = v14;
  if (v14)
  {
    v34 = "OECF-SFR name overflow";
    v14 = v14;
    while (1)
    {
      v20 = strlen(v18) + 1;
      v21 = &v18[v20];
      if (&v18[v20] > v17)
      {
        goto LABEL_46;
      }

      if (!ReconcileUtils::IsUTF8(v18, v20))
      {
        break;
      }

      if (v38 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      TXMPMeta<std::string>::AppendArrayItem(a3, "http://ns.adobe.com/exif/1.0/", v22, 1024, v18, 0);
      v18 = v21;
      if (!--v14)
      {
        goto LABEL_22;
      }
    }

    v34 = "OECF-SFR name error";
LABEL_46:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 5;
    exception[1] = v34;
    *(exception + 16) = 0;
  }

  v21 = (v10 + 2);
LABEL_22:
  if (v17 - v21 != 8 * v19 * v16)
  {
    v33 = __cxa_allocate_exception(0x18uLL);
    *v33 = 5;
    v33[1] = "OECF-SFR data overflow";
    *(v33 + 16) = 0;
  }

  TXMPUtils<std::string>::ComposeStructFieldPath("http://ns.adobe.com/exif/1.0/", v36, "http://ns.adobe.com/exif/1.0/", "Values", __p);
  v23 = v16 * v19;
  if (v23)
  {
    if (v35 == 34856)
    {
      v24 = "%ld/%ld";
    }

    else
    {
      v24 = "%lu/%lu";
    }

    do
    {
      LODWORD(v25) = *v21;
      LODWORD(v26) = v21[1];
      v27 = bswap32(*v21);
      v28 = bswap32(v26);
      if (a2)
      {
        v25 = v25;
      }

      else
      {
        v25 = v27;
      }

      if (a2)
      {
        v26 = v26;
      }

      else
      {
        v26 = v28;
      }

      if (v26)
      {
        v29 = 1;
      }

      else
      {
        v29 = v25 == 0;
      }

      if (!v29)
      {
        v32 = __cxa_allocate_exception(0x18uLL);
        *v32 = 5;
        v32[1] = "OECF-SFR data overflow";
        *(v32 + 16) = 0;
      }

      snprintf(__str, 0x28uLL, v24, v25, v26);
      if (v38 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      TXMPMeta<std::string>::AppendArrayItem(a3, "http://ns.adobe.com/exif/1.0/", v30, 1024, __str, 0);
      v21 += 2;
      --v23;
    }

    while (v23);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_186144620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    TXMPMeta<std::string>::DeleteProperty(v19, "http://ns.adobe.com/exif/1.0/", a13);
    __cxa_end_catch();
    JUMPOUT(0x186144538);
  }

  _Unwind_Resume(exception_object);
}

void ImportSingleTIFF_Byte(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = **(a1 + 8);
  *__str = 0;
  v9 = 0;
  v10 = 0;
  snprintf(__str, 0x14uLL, "%hu", v7);
  TXMPMeta<std::string>::SetProperty(a2, a3, a4, __str, 0);
}

void sub_186144744(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x186144714);
  }

  _Unwind_Resume(a1);
}

void ImportTIFF_GPSCoordinate(unsigned __int8 *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a2 + 2) == 5 && *(a2 + 4))
  {
    v7 = result[73];
    v8 = *a2 - 1;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v9 = (*(*result + 24))(result, 3, v8, &v33);
    v10 = HIDWORD(v33) ? v9 : 0;
    if (v10)
    {
      v11 = *v34;
      if ((v11 - 69) <= 0x12 && ((1 << (v11 - 69)) & 0x44201) != 0)
      {
        v13 = *(a2 + 8);
        if (v7)
        {
          v14 = 1;
        }

        else
        {
          v14 = 0x1000000;
        }

        v15 = *v13;
        v16 = v13[1];
        v17 = *(a2 + 4);
        if (v17 < 2)
        {
          v19 = 0;
          v20 = 0;
          v18 = v14;
        }

        else
        {
          v19 = v13[2];
          v18 = v13[3];
          if (v17 == 2)
          {
            v20 = 0;
          }

          else
          {
            v20 = v13[4];
            v14 = v13[5];
          }
        }

        v21 = bswap32(v15);
        v22 = bswap32(v16);
        v23 = bswap32(v19);
        v24 = bswap32(v18);
        v25 = bswap32(v20);
        v26 = bswap32(v14);
        if (v7)
        {
          v21 = v15;
          v22 = v16;
          v27 = v19;
        }

        else
        {
          v27 = v23;
        }

        v38 = 0;
        if (v7)
        {
          v28 = v20;
        }

        else
        {
          v18 = v24;
          v28 = v25;
        }

        if ((v7 & 1) == 0)
        {
          v14 = v26;
        }

        *__str = 0uLL;
        v37 = 0uLL;
        if (v22 == 1 && v18 == 1 && v14 == 1)
        {
          snprintf(__str, 0x28uLL, "%lu,%lu,%lu%c");
LABEL_31:
          TXMPMeta<std::string>::SetProperty(a3, "http://ns.adobe.com/exif/1.0/", a4, __str, 0);
          return;
        }

        if ((v22 || !v21) && (v18 || !v27) && (v14 || !v28))
        {
          if (v18 <= v22)
          {
            v29 = v22;
          }

          else
          {
            v29 = v18;
          }

          if (v14 <= v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = v14;
          }

          v31 = 1;
          if (v30 >= 0xB)
          {
            do
            {
              ++v31;
              v32 = v30 > 0x6D;
              v30 /= 0xAu;
            }

            while (v32);
          }

          snprintf(__str, 0x28uLL, "%.0f,%.*f%c");
          goto LABEL_31;
        }
      }
    }
  }
}

void sub_186144A34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18614491CLL);
  }

  _Unwind_Resume(a1);
}

void PhotoDataUtils::Import3WayItems(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v39 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0uLL;
  memset(v33, 0, sizeof(v33));
  v32[0] = &unk_1EF4F1590;
  v32[1] = v33;
  if (!a4)
  {
    PhotoDataUtils::ExportIPTC(a3, v32, 0);
  }

  LocalizedText = TXMPMeta<std::string>::GetLocalizedText(a3, "http://purl.org/dc/elements/1.1/", "rights", "", "x-default", 0, v40, 0);
  NativeInfo = PhotoDataUtils::GetNativeInfo(a2, 116, v9, 0, &v34);
  if (NativeInfo)
  {
    v11 = 1;
  }

  else
  {
    v11 = LocalizedText;
  }

  if (v11)
  {
    if (NativeInfo && (a4 == 0 || !LocalizedText))
    {
      PhotoDataUtils::ImportIPTC_LangAlt(a2, a3, 116, "http://purl.org/dc/elements/1.1/", "rights");
    }
  }

  else
  {
    v12 = PhotoDataUtils::GetNativeInfo(a1, 0, 33432, &v35);
    v13 = v37;
    if (v37 > 1)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v14 == 1)
    {
      v15 = 0;
      do
      {
        if (!*(v36 + v15))
        {
          *(v36 + v15) = 10;
          v13 = v37;
        }

        ++v15;
      }

      while (v15 < (v13 - 1));
    }

    else if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }

    if (PhotoDataUtils::IsValueDifferent(&v35, v40, __p))
    {
      if (v39 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      TXMPMeta<std::string>::SetLocalizedText(a3, "http://purl.org/dc/elements/1.1/", "rights", "", "x-default", v16, 0);
    }
  }

LABEL_25:
  v17 = TXMPMeta<std::string>::GetLocalizedText(a3, "http://purl.org/dc/elements/1.1/", "description", "", "x-default", 0, v40, 0);
  v19 = PhotoDataUtils::GetNativeInfo(a2, 120, v18, 0, &v34);
  if (v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = v17;
  }

  if (v20)
  {
    if (v19 && (a4 == 0 || !v17))
    {
      PhotoDataUtils::ImportIPTC_LangAlt(a2, a3, 120, "http://purl.org/dc/elements/1.1/", "description");
    }
  }

  else if (PhotoDataUtils::GetNativeInfo(a1, 0, 270, &v35) && PhotoDataUtils::IsValueDifferent(&v35, v40, __p))
  {
    if (v39 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    TXMPMeta<std::string>::SetLocalizedText(a3, "http://purl.org/dc/elements/1.1/", "description", "", "x-default", v21, 0);
  }

  DoesPropertyExist = TXMPMeta<std::string>::DoesPropertyExist(a3, "http://purl.org/dc/elements/1.1/", "creator");
  PhotoDataUtils::GetNativeInfo(a1, 0, 315, &v35);
  v24 = PhotoDataUtils::GetNativeInfo(a2, 80, v23, 0, &v34);
  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = DoesPropertyExist;
  }

  if (v25)
  {
    if (v24 && (a4 == 0 || !DoesPropertyExist))
    {
      PhotoDataUtils::ImportIPTC_Array(a2, a3, 80, "http://purl.org/dc/elements/1.1/", "creator");
    }
  }

  else if (PhotoDataUtils::GetNativeInfo(a1, 0, 315, &v35) && PhotoDataUtils::IsValueDifferent(&v35, v40, __p))
  {
    TXMPUtils<std::string>::SeparateArrayItems(a3, "http://purl.org/dc/elements/1.1/", "creator", 0x10000400, __p);
  }

  v51[0] = 0;
  v51[1] = 0;
  v52 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0uLL;
  Property = TXMPMeta<std::string>::GetProperty(a3, "http://ns.adobe.com/xap/1.0/", "CreateDate", v51, 0);
  v28 = PhotoDataUtils::GetNativeInfo(a2, 62, v27, 0, &v47);
  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = Property;
  }

  if (v29)
  {
    if (v28 && (a4 == 0 || !Property))
    {
      PhotoDataUtils::ImportIPTC_Date(62, a2, a3);
    }
  }

  else
  {
    v30 = PhotoDataUtils::GetNativeInfo(a1, 2, 36868, &v48);
    if (WORD1(v48) == 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v31 == 1)
    {
      v46 = 0;
      memset(v45, 0, sizeof(v45));
      TIFF_FileWriter::TIFF_FileWriter(v45);
      v42 = 0;
      __s2 = 0;
      v44 = 0;
      ExportTIFF_Date(a3, "http://ns.adobe.com/xap/1.0/", "CreateDate", v45, 36868);
      if (!TIFF_FileWriter::GetTag(v45, 2, 0x9004u, &v42) || v50 != v44 || strncmp(v49, __s2, v50))
      {
        ImportTIFF_Date(a1, &v48, a3, "http://ns.adobe.com/xap/1.0/", "CreateDate");
      }

      TIFF_FileWriter::~TIFF_FileWriter(v45);
    }
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  IPTC_Writer::~IPTC_Writer(v32);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }
}

void sub_186144FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  TIFF_FileWriter::~TIFF_FileWriter(&a35);
  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  IPTC_Writer::~IPTC_Writer(&a9);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void PhotoDataUtils::ExportExif (uint64_t a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  memset(&__str, 0, sizeof(__str));
  v71 = 0;
  HIBYTE(v70) = 0;
  LODWORD(v70) = 0;
  if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 0, &v70) && (v70 & 0x200) != 0 && TXMPMeta<std::string>::GetArrayItem(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 1, &__str, 0))
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity", p_str, 0);
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "CameraOwnerName") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/aux/", "OwnerName", &__str, 0))
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &__str;
    }

    else
    {
      v5 = __str.__r_.__value_.__r.__words[0];
    }

    TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "CameraOwnerName", v5, 0);
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "BodySerialNumber") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/aux/", "SerialNumber", &__str, 0))
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__str;
    }

    else
    {
      v6 = __str.__r_.__value_.__r.__words[0];
    }

    TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "BodySerialNumber", v6, 0);
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "LensModel") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/aux/", "Lens", &__str, 0))
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__str;
    }

    else
    {
      v7 = __str.__r_.__value_.__r.__words[0];
    }

    TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "LensModel", v7, 0);
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "LensSpecification") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/aux/", "LensInfo", &__str, 0))
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v79 = 0;
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v9 = 0;
      do
      {
        v10 = std::string::find(&__str, 32, v9);
        if (v10 == v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
          if (v10 == -1)
          {
            v11 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              v11 = __str.__r_.__value_.__l.__size_;
            }
          }

          std::string::basic_string(&v77, &__str, v9, v11 - v9, v74);
          if (SBYTE7(v79) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *&v77.__r_.__value_.__l.__data_;
          *&v79 = *(&v77.__r_.__value_.__l + 2);
          if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = v77.__r_.__value_.__r.__words[0];
          }

          TXMPMeta<std::string>::AppendArrayItem(a1, "http://cipa.jp/exif/1.0/", "LensSpecification", 1024, v12, 0);
        }

        v9 = v11 + 1;
        v13 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = __str.__r_.__value_.__l.__size_;
        }
      }

      while (v9 < v13);
      if (SBYTE7(v79) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  ExportTIFF_StandardMappings(0, a2, a1);
  ExportTIFF_StandardMappings(2, a2, a1);
  ExportTIFF_StandardMappings(3, a2, a1);
  v69 = 0;
  if ((*(*a2 + 128))(a2, 3, 6, &v69))
  {
    if (v69 < 0)
    {
      v14 = -HIDWORD(v69);
      v16 = -v69;
      v15 = -v69 < 0;
      LODWORD(v69) = -v69;
      HIDWORD(v69) = -HIDWORD(v69);
      if (!v15)
      {
        goto LABEL_56;
      }
    }

    else if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    TIFF_Manager::SetTag_Byte(a2, 3, 5, 1);
    v14 = HIDWORD(v69);
    v16 = -v69;
    LODWORD(v69) = -v69;
LABEL_56:
    TIFF_Manager::SetTag_Rational(a2, 3, 6, v16, v14);
  }

LABEL_57:
  ExportTIFF_LocTextASCII(a1, "description", a2, 270);
  ExportTIFF_EncodedString(a1, "UserComment", a2, 2, 37510, 1);
  if ((*(*a2 + 24))(a2, 2, 36868, 0))
  {
    ExportTIFF_Date(a1, "http://ns.adobe.com/xap/1.0/", "CreateDate", a2, 36868);
  }

  ExportTIFF_Date(a1, "http://ns.adobe.com/exif/1.0/", "DateTimeOriginal", a2, 36867);
  ExportTIFF_Date(a1, "http://ns.adobe.com/xap/1.0/", "ModifyDate", a2, 306);
  __p[0] = 0;
  __p[1] = 0;
  *&v79 = 0;
  LODWORD(v77.__r_.__value_.__l.__data_) = 0;
  if (TXMPMeta<std::string>::GetProperty(a1, "http://purl.org/dc/elements/1.1/", "creator", 0, &v77))
  {
    if ((v77.__r_.__value_.__s.__data_[1] & 2) != 0)
    {
      TXMPUtils<std::string>::CatenateArrayItems(a1, "http://purl.org/dc/elements/1.1/", "creator", 0, 0, 268436480, __p);
      std::string::push_back(__p, 0);
      v17 = (SBYTE7(v79) & 0x80u) == 0 ? BYTE7(v79) : LODWORD(__p[1]);
      v18 = (SBYTE7(v79) & 0x80u) == 0 ? __p : __p[0];
      (*(*a2 + 32))(a2, 0, 315, 2, v17, v18);
      if (SBYTE7(v79) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    (*(*a2 + 40))(a2, 0, 315);
  }

  ExportTIFF_LocTextASCII(a1, "rights", a2, 33432);
  if (TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "ExifVersion", &__str, 0))
  {
    v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = __str.__r_.__value_.__l.__size_;
    }

    if (v19 == 4 && ((*(*a2 + 24))(a2, 2, 36864, 0) & 1) == 0)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &__str;
      }

      else
      {
        v20 = __str.__r_.__value_.__r.__words[0];
      }

      (*(*a2 + 32))(a2, 2, 36864, 7, 4, v20);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  *&v79 = 0;
  memset(&v77, 0, sizeof(v77));
  *v73 = 0;
  *v74 = 0;
  v21 = (*(*a2 + 24))(a2, 2, 36864, __p);
  if (WORD1(__p[0]) == 7)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 == 1 && HIDWORD(__p[0]) == 4 && (strncmp(__p[1], "0230", 4uLL) & 0x80000000) == 0)
  {
    if (!TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity") && TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 0, v74) && (v74[1] & 2) != 0 && TXMPMeta<std::string>::CountArrayItems(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings") >= 1)
    {
      TXMPMeta<std::string>::GetArrayItem(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 1, &v77, 0);
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v77;
      }

      else
      {
        v24 = v77.__r_.__value_.__r.__words[0];
      }

      TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity", v24, 0);
    }

    TXMPMeta<std::string>::DeleteProperty(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings");
    Property_Int = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity", v73, 0);
    if (*v73 < 0x10000u && Property_Int)
    {
      if (((*(*a2 + 24))(a2, 2, 34855, __p) & 1) == 0)
      {
        TIFF_Manager::SetTag_Short(a2, 2, 34855, v73[0]);
      }
    }

    else if (Property_Int)
    {
      v27 = (*(*a2 + 24))(a2, 2, 34855, 0);
      v28 = (*(*a2 + 24))(a2, 2, 34864, 0);
      v29 = (*(*a2 + 24))(a2, 2, 34867, 0);
      DoesPropertyExist = TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "SensitivityType");
      v31 = TXMPMeta<std::string>::DoesPropertyExist(a1, "http://cipa.jp/exif/1.0/", "ISOSpeed");
      if (((v27 | v28 | v29) & 1) == 0)
      {
        v32 = v31;
        TIFF_Manager::SetTag_Short(a2, 2, 34855, 0xFFFFLL);
        if (!DoesPropertyExist && !v32)
        {
          TXMPMeta<std::string>::SetProperty(a1, "http://cipa.jp/exif/1.0/", "SensitivityType", "3", 0);
          TXMPMeta<std::string>::SetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "ISOSpeed", *v73, 0);
        }
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34864, __p) & 1) == 0)
    {
      v33 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "SensitivityType", v73, 0);
      if (*v73 < 0x10000u && v33)
      {
        TIFF_Manager::SetTag_Short(a2, 2, 34864, v73[0]);
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34865, __p) & 1) == 0)
    {
      v35 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "StandardOutputSensitivity", v73, 0);
      if (*v73 >= 0 && v35)
      {
        TIFF_Manager::SetTag_Long(a2, 2, 34865, *v73);
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34866, __p) & 1) == 0)
    {
      v37 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "RecommendedExposureIndex", v73, 0);
      if (*v73 >= 0 && v37)
      {
        TIFF_Manager::SetTag_Long(a2, 2, 34866, *v73);
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34867, __p) & 1) == 0)
    {
      v39 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "ISOSpeed", v73, 0);
      if (*v73 >= 0 && v39)
      {
        TIFF_Manager::SetTag_Long(a2, 2, 34867, *v73);
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34868, __p) & 1) == 0)
    {
      v41 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "ISOSpeedLatitudeyyy", v73, 0);
      if (*v73 >= 0 && v41)
      {
        TIFF_Manager::SetTag_Long(a2, 2, 34868, *v73);
      }
    }

    if (((*(*a2 + 24))(a2, 2, 34869, __p) & 1) == 0)
    {
      v43 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "ISOSpeedLatitudezzz", v73, 0);
      if (*v73 >= 0 && v43)
      {
        TIFF_Manager::SetTag_Long(a2, 2, 34869, *v73);
      }
    }
  }

  else if ((TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings", 0, v74) && ((v74[1] & 2) == 0 || TXMPMeta<std::string>::CountArrayItems(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings") < 1 || TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings[1]", v73, 0)) || TXMPMeta<std::string>::GetProperty_Int(a1, "http://cipa.jp/exif/1.0/", "PhotographicSensitivity", v73, 0)) && !v73[1])
  {
    TXMPMeta<std::string>::DeleteProperty(a1, "http://ns.adobe.com/exif/1.0/", "ISOSpeedRatings");
    if (((*(*a2 + 24))(a2, 2, 34855, __p) & 1) == 0)
    {
      TIFF_Manager::SetTag_Short(a2, 2, 34855, v73[0]);
    }
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration") && TXMPMeta<std::string>::CountArrayItems(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration") == 4 && ((*(*a2 + 24))(a2, 2, 37121, 0) & 1) == 0)
  {
    LODWORD(__p[0]) = 0;
    TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration[1]", &v71, 0);
    LOBYTE(__p[0]) = v71;
    TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration[2]", &v71, 0);
    BYTE1(__p[0]) = v71;
    TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration[3]", &v71, 0);
    BYTE2(__p[0]) = v71;
    TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "ComponentsConfiguration[4]", &v71, 0);
    BYTE3(__p[0]) = v71;
    (*(*a2 + 32))(a2, 2, 37121, 7, 4, __p);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a1, "http://ns.adobe.com/exif/1.0/", "Flash") && ((*(*a2 + 24))(a2, 2, 37385, 0) & 1) == 0)
  {
    LOBYTE(__p[0]) = 0;
    Property_Bool = TXMPMeta<std::string>::GetProperty_Bool(a1, "http://ns.adobe.com/exif/1.0/", "Flash/exif:Fired", __p, 0);
    v46 = LOBYTE(__p[0]);
    v47 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "Flash/exif:Return", &v71, 0);
    v48 = v71;
    v49 = TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "Flash/exif:Mode", &v71, 0);
    v50 = v71;
    v51 = TXMPMeta<std::string>::GetProperty_Bool(a1, "http://ns.adobe.com/exif/1.0/", "Flash/exif:Function", __p, 0);
    v52 = LOBYTE(__p[0]);
    v53 = TXMPMeta<std::string>::GetProperty_Bool(a1, "http://ns.adobe.com/exif/1.0/", "Flash/exif:RedEyeMode", __p, 0);
    v54 = 2 * (v48 & 3);
    if (!v47)
    {
      v54 = 0;
    }

    v55 = v54 | Property_Bool & v46;
    v56 = 8 * (v50 & 3);
    if (!v49)
    {
      v56 = 0;
    }

    v57 = v55 | v56;
    if ((v51 & v52) != 0)
    {
      v57 |= 0x20u;
    }

    if ((v53 & __p[0]) != 0)
    {
      v57 |= 0x40u;
    }

    TIFF_Manager::SetTag_Short(a2, 2, 37385, v57);
  }

  if (TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "FileSource", &v71, 0) && ((*(*a2 + 24))(a2, 2, 41728, 0) & 1) == 0)
  {
    HIBYTE(v70) = v71;
    (*(*a2 + 32))(a2, 2, 41728, 7, 1, &v70 + 7);
  }

  if (TXMPMeta<std::string>::GetProperty_Int(a1, "http://ns.adobe.com/exif/1.0/", "SceneType", &v71, 0) && ((*(*a2 + 24))(a2, 2, 41729, 0) & 1) == 0)
  {
    HIBYTE(v70) = v71;
    (*(*a2 + 32))(a2, 2, 41729, 7, 1, &v70 + 7);
  }

  if (TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "GPSVersionID", &__str, 0) && ((*(*a2 + 24))(a2, 3, 0, 0) & 1) == 0)
  {
    LODWORD(v77.__r_.__value_.__l.__data_) = 0;
    __p[0] = 0;
    __p[1] = 0;
    v58 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    if (sscanf(v58, "%u.%u.%u.%u", __p, __p + 4, &__p[1], __p | 0xC) == 4)
    {
      v59.i64[0] = 0xFF000000FFLL;
      v59.i64[1] = 0xFF000000FFLL;
      if ((vaddvq_s32(vandq_s8(vcgtq_u32(*__p, v59), xmmword_1862294D0)) & 0xF) == 0)
      {
        v77.__r_.__value_.__s.__data_[0] = __p[0];
        v77.__r_.__value_.__s.__data_[1] = BYTE4(__p[0]);
        v77.__r_.__value_.__s.__data_[2] = __p[1];
        v77.__r_.__value_.__s.__data_[3] = BYTE4(__p[1]);
        (*(*a2 + 32))(a2, 3, 0, 1, 4, &v77);
      }
    }
  }

  ExportTIFF_GPSCoordinate(a1, "GPSLatitude", a2, 2);
  ExportTIFF_GPSCoordinate(a1, "GPSLongitude", a2, 4);
  v80 = 0;
  *__p = 0u;
  v79 = 0u;
  if (TXMPMeta<std::string>::GetProperty_Date(a1, "http://ns.adobe.com/exif/1.0/", "GPSTimeStamp", __p, 0))
  {
    TXMPUtils<std::string>::ConvertToUTCTime(__p);
    memset(&v77, 0, sizeof(v77));
    (*(a2 + 48))(HIDWORD(__p[1]), &v77);
    (*(a2 + 48))(1, &v77.__r_.__value_.__s.__data_[4]);
    (*(a2 + 48))(v79, &v77.__r_.__value_.__l.__size_);
    (*(a2 + 48))(1, &v77.__r_.__value_.__s.__data_[12]);
    v60 = HIDWORD(v80);
    if (HIDWORD(v80))
    {
      v61 = DWORD1(v79);
      *v74 = 0;
      v75 = 0;
      v76 = 0;
      v62 = (*(*a2 + 24))(a2, 3, 7, v74);
      v63 = 1000000;
      if (*&v74[2] == 5)
      {
        v64 = v62;
      }

      else
      {
        v64 = 0;
      }

      if (v64 == 1 && *&v74[4] == 3)
      {
        v65 = (*(a2 + 16))(v75 + 20);
        if (v65 == 1)
        {
          v63 = 1000000;
        }

        else
        {
          v63 = v65;
        }
      }

      for (i = (v60 / 1000000000.0 + v61) * v63 + 0.5; i > 4000000000.0; v63 = v63 / 0xAuLL)
      {
        i = i / 10.0;
      }

      (*(a2 + 48))(i, &v77.__r_.__value_.__r.__words[2]);
      (*(a2 + 48))(v63, &v77.__r_.__value_.__s.__data_[20]);
    }

    else
    {
      (*(a2 + 48))(DWORD1(v79), &v77.__r_.__value_.__r.__words[2]);
      (*(a2 + 48))(1, &v77.__r_.__value_.__s.__data_[20]);
    }

    (*(*a2 + 32))(a2, 3, 7, 5, 3, &v77);
    *v74 = 0;
    v75 = 0;
    snprintf(v74, 0xCuLL, "%04d:%02d:%02d", LODWORD(__p[0]), HIDWORD(__p[0]), LODWORD(__p[1]));
    if (!BYTE2(v75))
    {
      (*(*a2 + 32))(a2, 3, 29, 2, 11, v74);
    }
  }

  else
  {
    (*(*a2 + 40))(a2, 3, 7);
    (*(*a2 + 40))(a2, 3, 29);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a1, "http://ns.adobe.com/exif/1.0/", "GPSDestLatitude") && ((*(*a2 + 24))(a2, 3, 20, 0) & 1) == 0)
  {
    ExportTIFF_GPSCoordinate(a1, "GPSDestLatitude", a2, 20);
  }

  if (TXMPMeta<std::string>::DoesPropertyExist(a1, "http://ns.adobe.com/exif/1.0/", "GPSDestLongitude") && ((*(*a2 + 24))(a2, 3, 22, 0) & 1) == 0)
  {
    ExportTIFF_GPSCoordinate(a1, "GPSDestLongitude", a2, 22);
  }

  if (TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "GPSProcessingMethod", &__str, 0))
  {
    v67 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v67 = __str.__r_.__value_.__l.__size_;
    }

    if (v67 && ((*(*a2 + 24))(a2, 3, 27, 0) & 1) == 0)
    {
      ExportTIFF_EncodedString(a1, "GPSProcessingMethod", a2, 3, 27, 0);
    }
  }

  if (TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", "GPSAreaInformation", &__str, 0))
  {
    v68 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v68 = __str.__r_.__value_.__l.__size_;
    }

    if (v68 && ((*(*a2 + 24))(a2, 3, 28, 0) & 1) == 0)
    {
      ExportTIFF_EncodedString(a1, "GPSAreaInformation", a2, 3, 28, 0);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1861468C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x186145E5CLL);
  }

  _Unwind_Resume(exception_object);
}

void ExportTIFF_StandardMappings(uint64_t a1, TIFF_Manager *a2, uint64_t a3)
{
  v49 = *(a2 + 73);
  memset(v55, 0, sizeof(v55));
  __p = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  if (a1)
  {
    if (a1 == 3)
    {
      v5 = &sGPSInfoIFDMappings;
    }

    else
    {
      if (a1 != 2)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 9;
        exception[1] = "Invalid IFD for standard mappings";
        *(exception + 16) = 0;
      }

      v5 = &sExifIFDMappings;
    }
  }

  else
  {
    v5 = &sPrimaryIFDMappings;
  }

  v6 = *v5;
  if (v6 == 0xFFFF)
  {
    return;
  }

  v7 = 0;
  while (1)
  {
    v8 = &v5[16 * v7];
    v9 = *(v8 + 8);
    if (!*(v8 + 8))
    {
      goto LABEL_15;
    }

    v10 = *(v8 + 3);
    if (!*v10)
    {
      goto LABEL_15;
    }

    v11 = (*(*a2 + 24))(a2, a1, v6, v55);
    v12 = v11;
    v13 = v9 == 3 ? v11 : 0;
    if (v13)
    {
      goto LABEL_15;
    }

    v14 = *(v8 + 2);
    if (!TXMPMeta<std::string>::GetProperty(a3, v14, v10, &__p, &v51))
    {
      v20 = v12 ^ 1;
      if (v9 != 1)
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_15;
      }

LABEL_36:
      (*(*a2 + 40))(a2, a1, v6);
      goto LABEL_15;
    }

    if (WORD1(v55[0]) == 7)
    {
      __assert_rtn("ExportTIFF_StandardMappings", "ReconcileTIFF.cpp", 2701, "tagInfo.type != kTIFF_UndefinedType");
    }

    v15 = *(v8 + 1);
    if (v15 != 1)
    {
      v16 = v8[1];
      if (v16 != 2)
      {
        break;
      }
    }

    if ((v51 & 0x1F00) != 0)
    {
      goto LABEL_15;
    }

    v17 = v8[1];
    if (v15 != 1 && v17 != 2)
    {
      v18 = 2517;
      v30 = "ExportSingleTIFF";
      v31 = "(mapInfo.count == 1) || (mapInfo.type == kTIFF_ASCIIType)";
      goto LABEL_129;
    }

    if (!*v10)
    {
      v18 = 2518;
      v30 = "ExportSingleTIFF";
      goto LABEL_127;
    }

    v63 = 0;
    v18 = 2585;
    if (v17 <= 2)
    {
      if (v17)
      {
        if (v17 == 1)
        {
          *v62 = 0;
          if (v54 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (sscanf(p_p, "%hu%c", v62, &v63) == 1)
          {
            TIFF_Manager::SetTag_Byte(a2, a1, v6, v62[0]);
          }
        }

        else
        {
          if (v54 >= 0)
          {
            v28 = HIBYTE(v54);
          }

          else
          {
            v28 = v53;
          }

          if (v54 >= 0)
          {
            v29 = &__p;
          }

          else
          {
            v29 = __p;
          }

          (*(*a2 + 32))(a2, a1, v6, 2, (v28 + 1), v29);
        }
      }

      else
      {
        *v59 = 0;
        if (v54 >= 0)
        {
          v36 = &__p;
        }

        else
        {
          v36 = __p;
        }

        if (sscanf(v36, "%lu%c", v59, &v63) == 1)
        {
          if (*v59 >> 16)
          {
            TIFF_Manager::SetTag_Long(a2, a1, v6, *v59);
          }

          else
          {
            TIFF_Manager::SetTag_Short(a2, a1, v6, LOWORD(v59[0]));
          }
        }
      }

      goto LABEL_15;
    }

    if (v17 <= 4)
    {
      if (v17 == 3)
      {
        *v61 = 0;
        if (v54 >= 0)
        {
          v37 = &__p;
        }

        else
        {
          v37 = __p;
        }

        if (sscanf(v37, "%lu%c", v61, &v63) == 1)
        {
          TIFF_Manager::SetTag_Short(a2, a1, v6, v61[0]);
        }
      }

      else
      {
        *v60 = 0;
        if (v54 >= 0)
        {
          v19 = &__p;
        }

        else
        {
          v19 = __p;
        }

        if (sscanf(v19, "%lu%c", v60, &v63) == 1)
        {
          TIFF_Manager::SetTag_Long(a2, a1, v6, v60[0]);
        }
      }

      goto LABEL_15;
    }

    if (v17 == 5)
    {
      *v58 = 0;
      if (v54 >= 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      if (DecodeRational(v38, &v58[1], v58))
      {
        TIFF_Manager::SetTag_Rational(a2, a1, v6, v58[1], v58[0]);
      }

      goto LABEL_15;
    }

    v30 = "ExportSingleTIFF";
    v31 = "false";
    if (v17 != 10)
    {
      goto LABEL_129;
    }

    v56 = 0;
    *v57 = 0;
    if (v54 >= 0)
    {
      v32 = &__p;
    }

    else
    {
      v32 = __p;
    }

    v33 = sscanf(v32, "%ld/%ld%c", v57, &v56, &v63);
    if (v33 == 1)
    {
      v34 = 1;
      v56 = 1;
    }

    else
    {
      if (v33 != 2)
      {
        goto LABEL_15;
      }

      v34 = v56;
    }

    TIFF_Manager::SetTag_SRational(a2, a1, v6, v57[0], v34);
LABEL_15:
    ++v7;
    v6 = v5[16 * v7];
    if (v6 == 0xFFFF)
    {
      if (SHIBYTE(v54) < 0)
      {
        operator delete(__p);
      }

      return;
    }
  }

  if ((v51 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  if (!*v10)
  {
    v18 = 2604;
    v30 = "ExportArrayTIFF";
LABEL_127:
    v31 = "mapInfo.name[0] != 0";
LABEL_129:
    __assert_rtn(v30, "ReconcileTIFF.cpp", v18, v31);
  }

  if (v16 != 5 && v16 != 3)
  {
    v18 = 2605;
    v30 = "ExportArrayTIFF";
    v31 = "(mapInfo.type == kTIFF_ShortType) || (mapInfo.type == kTIFF_RationalType)";
    goto LABEL_129;
  }

  if (!TXMPMeta<std::string>::DoesPropertyExist(a3, v14, v10))
  {
    v18 = 2606;
    v30 = "ExportArrayTIFF";
    v31 = "xmp.DoesPropertyExist(xmpNS, xmpArray)";
    goto LABEL_129;
  }

  v21 = TXMPMeta<std::string>::CountArrayItems(a3, v14, v10);
  if (!v21)
  {
    goto LABEL_36;
  }

  v48 = v21;
  if (v16 != 5)
  {
    v46 = v21;
    memset(&v71, 0, sizeof(v71));
    LOWORD(__u) = 0;
    std::vector<unsigned short>::assign(&v71, v21, &__u);
    begin = v71.__begin_;
    if (v71.__end_ != v71.__begin_)
    {
      __u = 0;
      v69 = 0;
      v70 = 0;
      v23 = 1;
      LODWORD(v66[0]) = 0;
      do
      {
        TXMPUtils<std::string>::ComposeArrayItemPath(v14, v10, v23, &__u);
        if (v70 >= 0)
        {
          p_u = &__u;
        }

        else
        {
          p_u = __u;
        }

        TXMPMeta<std::string>::GetProperty_Int(a3, v14, p_u, v66, 0);
        v25 = v66[0];
        v26 = bswap32(LOWORD(v66[0])) >> 16;
        if (!v49)
        {
          v25 = v26;
        }

        *begin = v25;
        begin = (begin + 2);
        ++v23;
      }

      while (v23 <= v48);
      if (v71.__end_ != v71.__begin_)
      {
        (*(*a2 + 32))(a2, a1, v6, 3, v46);
        goto LABEL_54;
      }
    }

    goto LABEL_135;
  }

  v47 = v21;
  memset(&v71, 0, sizeof(v71));
  LODWORD(__u) = 0;
  std::vector<unsigned int>::assign(&v71, 2 * v21, &__u);
  v39 = v71.__begin_;
  if (v71.__end_ == v71.__begin_)
  {
    goto LABEL_135;
  }

  v69 = 0;
  v70 = 0;
  v66[0] = 0;
  v66[1] = 0;
  v67 = 0;
  __u = 0;
  v65 = 0;
  v40 = 1;
  v64 = 0;
  do
  {
    TXMPUtils<std::string>::ComposeArrayItemPath(v14, v10, v40, &__u);
    if (v70 >= 0)
    {
      v41 = &__u;
    }

    else
    {
      v41 = __u;
    }

    if (!TXMPMeta<std::string>::GetProperty(a3, v14, v41, v66, 0) || (v67 >= 0 ? (v42 = v66) : (v42 = v66[0]), !DecodeRational(v42, &v65, &v64)))
    {
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v70) < 0)
      {
        operator delete(__u);
      }

      v27 = v71.__begin_;
      if (v71.__begin_)
      {
        v71.__end_ = v71.__begin_;
LABEL_119:
        operator delete(v27);
      }

      goto LABEL_15;
    }

    v43 = v65;
    v44 = v64;
    if ((v49 & 1) == 0)
    {
      v43 = bswap32(v65);
      v65 = v43;
      v44 = bswap32(v64);
      v64 = v44;
    }

    *v39 = v43;
    v39[1] = v44;
    v39 += 2;
    ++v40;
  }

  while (v40 <= v48);
  if (v71.__end_ != v71.__begin_)
  {
    (*(*a2 + 32))(a2, a1, v6, 5, v47);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66[0]);
    }

LABEL_54:
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__u);
    }

    v27 = v71.__begin_;
    if (v71.__begin_)
    {
      v71.__end_ = v71.__begin_;
      goto LABEL_119;
    }

    goto LABEL_15;
  }

LABEL_135:
  __break(1u);
}

void sub_186147324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ExportTIFF_LocTextASCII(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (TXMPMeta<std::string>::GetLocalizedText(a1, "http://purl.org/dc/elements/1.1/", a2, "", "x-default", 0, &__p, 0))
  {
    if (v10 >= 0)
    {
      v6 = HIBYTE(v10);
    }

    else
    {
      v6 = v9;
    }

    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    (*(*a3 + 32))(a3, 0, a4, 2, (v6 + 1), p_p);
  }

  else
  {
    (*(*a3 + 40))(a3, 0, a4);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

void sub_186147444(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186147434);
}

void ExportTIFF_EncodedString(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *__s = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  if (!TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", a2, __s, &v22))
  {
    (*(*a3 + 40))(a3, a4, a5);
    goto LABEL_29;
  }

  if (a6)
  {
    if ((v22 & 0x1000) == 0 || !TXMPMeta<std::string>::GetLocalizedText(a1, "http://ns.adobe.com/exif/1.0/", a2, "", "x-default", 0, __s, 0))
    {
      goto LABEL_29;
    }
  }

  else if ((v22 & 0x1F00) != 0)
  {
    goto LABEL_29;
  }

  v12 = 0;
  v13 = __s;
  if (v25 < 0)
  {
    v13 = *__s;
  }

  while (1)
  {
    if ((v25 & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v25);
      if (v12 >= HIBYTE(v25))
      {
        v16 = __s;
        v17 = 1;
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v14 = v24;
    if (v12 >= v24)
    {
      break;
    }

LABEL_14:
    if (v14 < v12)
    {
      __break(1u);
      return;
    }

    v15 = v13[v12++];
    if (v15 < 0)
    {
      v17 = 2;
      goto LABEL_18;
    }
  }

  v17 = 1;
LABEL_18:
  if (v25 >= 0)
  {
    v16 = __s;
  }

  else
  {
    v16 = *__s;
  }

LABEL_21:
  v18 = strlen(v16);
  if (v18 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    operator new();
  }

  v21 = v18;
  if (v18)
  {
    memmove(&__dst, v16, v18);
  }

  *(&__dst + v19) = 0;
  (*(*a3 + 176))(a3, a4, a5, &__dst, v17);
  if (v21 < 0)
  {
    operator delete(__dst);
  }

LABEL_29:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(*__s);
  }
}

void sub_1861476B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186147694);
}

void ExportTIFF_Date(uint64_t a1, _BYTE *a2, _BYTE *a3, TIFF_Manager *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a5 == 306)
  {
    v7 = 36880;
  }

  else
  {
    v7 = 0;
  }

  if (a5 == 306)
  {
    v8 = 37520;
  }

  else
  {
    v8 = 0;
  }

  if (a5 == 306)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  if (a5 == 36867)
  {
    v10 = 36881;
  }

  else
  {
    v10 = v7;
  }

  if (a5 == 36867)
  {
    v11 = 37521;
  }

  else
  {
    v11 = v8;
  }

  if (a5 == 36867)
  {
    v9 = 2;
  }

  v30 = 0;
  v31 = 0;
  if (a5 == 36868)
  {
    v12 = 36882;
  }

  else
  {
    v12 = v10;
  }

  if (a5 == 36868)
  {
    v13 = 37522;
  }

  else
  {
    v13 = v11;
  }

  v32 = 0;
  if (a5 == 36868)
  {
    v14 = 2;
  }

  else
  {
    v14 = v9;
  }

  if (TXMPMeta<std::string>::GetProperty(a1, a2, a3, &v30, 0))
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    if (v32 >= 0)
    {
      v15 = &v30;
    }

    else
    {
      v15 = v30;
    }

    TXMPUtils<std::string>::ConvertToDate(v15, &v27);
    *__str = 0;
    v34 = 0;
    v35 = 0;
    snprintf(__str, 0x18uLL, "%04d:%02d:%02d %02d:%02d:%02d", v27, DWORD1(v27), DWORD2(v27), HIDWORD(v27), v28, DWORD1(v28));
    v16 = HIBYTE(v32);
    if (v32 < 0)
    {
      v16 = v31;
    }

    if (v16 <= 0x11)
    {
      *(&v35 + 1) = 8224;
      if (v16 <= 0xE)
      {
        HIWORD(v34) = 8224;
        if (v16 <= 0xB)
        {
          *(&v34 + 3) = 8224;
          if (v16 <= 8)
          {
            LOWORD(v34) = 8224;
            if (v16 <= 5)
            {
              *&__str[5] = 8224;
              if (!v16)
              {
                *__str = 538976288;
              }
            }
          }
        }
      }
    }

    TIFF_Manager::SetTag_ASCII(a4, v14, a5, __str);
    if (HIDWORD(v29))
    {
      snprintf(__str, 0x18uLL, "%09d", HIDWORD(v29));
      v17 = strlen(__str);
      v18 = v17 - 1;
      if (v17 != 1)
      {
        do
        {
          if (__str[v18] != 48)
          {
            break;
          }

          __str[v18--] = 0;
        }

        while (v18);
      }

      TIFF_Manager::SetTag_ASCII(a4, 2, v13, __str);
    }

    else
    {
      (*(*a4 + 40))(a4, 2, v13);
    }

    v24 = 0;
    __s1 = 0;
    v26 = 0;
    v19 = (*(*a4 + 24))(a4, 2, 36864, &v24);
    if (WORD1(v24) == 7)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 == 1 && HIDWORD(v24) == 4;
    if (v21 && (strncmp(__s1, "0231", 4uLL) & 0x80000000) == 0)
    {
      if (BYTE10(v28) && (BYTE11(v28) == 1 || BYTE11(v28) == 255))
      {
        *&__s[3] = 0;
        *__s = 0;
        v22 = 43;
        if (BYTE11(v28) == 255)
        {
          v22 = 45;
        }

        snprintf(__s, 7uLL, "%c%02d:%02d", v22, HIDWORD(v28), v29);
        TIFF_Manager::SetTag_ASCII(a4, 2, v12, __s);
      }

      else
      {
        (*(*a4 + 40))(a4, 2, v12);
      }
    }
  }

  else
  {
    (*(*a4 + 40))(a4, v14, a5);
    (*(*a4 + 40))(a4, 2, v13);
    (*(*a4 + 40))(a4, 2, v12);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v30);
  }
}

void sub_186147AE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (*(v2 - 81) < 0)
    {
      operator delete(*(v2 - 104));
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x186147AB4);
  }

  _Unwind_Resume(exception_object);
}

void ExportTIFF_GPSCoordinate(uint64_t a1, _BYTE *a2, void (**a3)(void, void), uint64_t a4)
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    ExportTIFF_GPSCoordinate();
  }

  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  v33 = 0;
  if (!TXMPMeta<std::string>::GetProperty(a1, "http://ns.adobe.com/exif/1.0/", a2, __p, &v33))
  {
    (*(*a3 + 5))(a3, 3, (a4 - 1));
    (*(*a3 + 5))(a3, 3, a4);
    goto LABEL_41;
  }

  if ((v33 & 0x1F00) != 0)
  {
    goto LABEL_41;
  }

  v6 = HIBYTE(v35);
  v7 = __p[0];
  if (v35 >= 0)
  {
    v7 = __p;
  }

  do
  {
    v7 = (v7 + 1);
    v8 = *(v7 - 1);
  }

  while (v8 == 32 || v8 == 9);
  if ((v8 - 58) < 0xF6u)
  {
LABEL_41:
    if (SHIBYTE(v35) < 0)
    {
      goto LABEL_42;
    }

    return;
  }

  LODWORD(v10) = 0;
  do
  {
    v10 = 10 * v10 + (v8 - 48);
    v11 = *v7;
    v7 = (v7 + 1);
    LOBYTE(v8) = v11;
  }

  while ((v11 - 48) < 0xA);
  while (v8 <= 0x1Fu)
  {
    if (v8 != 9)
    {
      goto LABEL_20;
    }

LABEL_15:
    v12 = *v7;
    v7 = (v7 + 1);
    LOBYTE(v8) = v12;
  }

  if (v8 == 32)
  {
    goto LABEL_15;
  }

  if (v8 != 44 && v8 != 59)
  {
LABEL_20:
    v7 = (v7 - 1);
  }

  while (1)
  {
    v13 = *v7;
    if (v13 != 32 && v13 != 9)
    {
      break;
    }

    v7 = (v7 + 1);
  }

  if ((v13 - 48) > 9)
  {
    v15 = 0;
    goto LABEL_45;
  }

  LODWORD(v15) = 0;
  v7 = (v7 + 1);
  do
  {
    v15 = 10 * v15 + (v13 - 48);
    v16 = *v7;
    v7 = (v7 + 1);
    v13 = v16;
  }

  while ((v16 - 48) < 0xA);
  if (v13 == 46)
  {
    v13 = *v7;
    if ((v13 - 48) <= 9)
    {
      LODWORD(v17) = 1;
      do
      {
        v18 = 10 * v15 + (v13 - 48);
        if (v17 <= 0x186A0)
        {
          v15 = v18;
        }

        else
        {
          v15 = v15;
        }

        if (v17 <= 0x186A0)
        {
          v17 = (10 * v17);
        }

        else
        {
          v17 = v17;
        }

        v19 = *(v7 + 1);
        v7 = (v7 + 1);
        LOBYTE(v13) = v19;
      }

      while ((v19 - 48) < 0xA);
      v20 = 0;
      goto LABEL_47;
    }

LABEL_45:
    v20 = 0;
    goto LABEL_46;
  }

  v7 = (v7 - 1);
  while (2)
  {
    v30 = *v7;
    if (v30 <= 0x1F)
    {
      if (v30 != 9)
      {
        goto LABEL_81;
      }

      goto LABEL_75;
    }

    if (v30 == 32)
    {
LABEL_75:
      v7 = (v7 + 1);
      continue;
    }

    break;
  }

  if (v30 == 44 || v30 == 59)
  {
    goto LABEL_80;
  }

LABEL_81:
  while (1)
  {
    v13 = *v7;
    if (v13 != 9 && v13 != 32)
    {
      break;
    }

LABEL_80:
    v7 = (v7 + 1);
  }

  if ((v13 - 48) > 9)
  {
    goto LABEL_45;
  }

  LODWORD(v20) = 0;
  do
  {
    v20 = 10 * v20 + (v13 - 48);
    v31 = *(v7 + 1);
    v7 = (v7 + 1);
    LOBYTE(v13) = v31;
  }

  while ((v31 - 48) < 0xA);
LABEL_46:
  v17 = 1;
LABEL_47:
  v21 = v7 + 1;
  while (2)
  {
    if (v13 <= 0x1Fu)
    {
      if (v13 != 9)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    if (v13 == 32)
    {
LABEL_52:
      v22 = *v21++;
      LOBYTE(v13) = v22;
      continue;
    }

    break;
  }

  if (v13 != 44 && v13 != 59)
  {
LABEL_55:
    --v21;
  }

  while (1)
  {
    v23 = *v21;
    if (v23 != 32 && v23 != 9)
    {
      break;
    }

    ++v21;
  }

  v32 = 0;
  v25 = *v21;
  LOBYTE(v32) = v25;
  if ((v25 - 97) <= 0x19)
  {
    LOBYTE(v25) = v25 - 32;
    LOBYTE(v32) = v25;
  }

  v26 = v25 - 69;
  v27 = v26 > 0x12;
  v28 = (1 << v26) & 0x44201;
  if (!v27 && v28 != 0)
  {
    (*(*a3 + 4))(a3, 3, (a4 - 1), 2, 2, &v32);
    v36 = 0;
    v37 = 0;
    v38[0] = 0;
    (a3)[6](v10, &v36);
    (a3)[6](1, &v36 + 4);
    (a3)[6](v15, &v37);
    (a3)[6](v17, &v37 + 4);
    (a3)[6](v20, v38);
    (a3)[6](1, v38 + 4);
    (*(*a3 + 4))(a3, 3, a4, 5, 3, &v36);
    v6 = HIBYTE(v35);
  }

  if (v6 < 0)
  {
LABEL_42:
    operator delete(__p[0]);
  }
}

unint64_t TrimTrailingSpaces(char *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = &a1[a2 - 1];
  if ((*v2 | 0x20) != 0x20)
  {
    return a2;
  }

  if (a2 < 1)
  {
    TrimTrailingSpaces();
  }

  v3 = a2;
  while ((*v2 | 0x20) == 0x20)
  {
    --v2;
    if (--v3 < 1)
    {
      v2 = a1 - 1;
      break;
    }
  }

  v4 = v2 + 1;
  result = v4 - a1;
  if (result > a2)
  {
    TrimTrailingSpaces();
  }

  if (result < a2)
  {
    *v4 = 0;
  }

  return result;
}

uint64_t DecodeRational(const char *a1, unsigned int *a2, unsigned int *a3)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v5 = sscanf(a1, "%lu/%lu%c", &v10, &v9, &v8);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = 0;
  if (v5 == 2)
  {
    v5 = v9;
LABEL_4:
    *a2 = v10;
    *a3 = v5;
    return 1;
  }

  return v6;
}

_WORD *std::vector<unsigned short>::assign(uint64_t *a1, unint64_t a2, __int16 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (v5 <= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v5;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<unsigned short>::__vallocate[abi:fe200100](a1, v8);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 1;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 1;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = vdupq_n_s64(v11 - 1);
    v15 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = result + 4;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_186205EC0)));
      if (vuzp1_s8(vuzp1_s16(v18, *v14.i8), *v14.i8).u8[0])
      {
        *(v16 - 4) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v14), *&v14).i8[1])
      {
        *(v16 - 3) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_186205EB0)))), *&v14).i8[2])
      {
        *(v16 - 2) = v13;
        *(v16 - 1) = v13;
      }

      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_186205EA0)));
      if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i32[1])
      {
        *v16 = v13;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i8[5])
      {
        v16[1] = v13;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_186205E90))))).i8[6])
      {
        v16[2] = v13;
        v16[3] = v13;
      }

      v12 += 8;
      v16 += 8;
    }

    while (v15 != v12);
  }

  v20 = a2 - v10;
  if (a2 <= v10)
  {
    a1[1] = &result[a2];
  }

  else
  {
    v21 = 0;
    v22 = v9 + 2 * v20;
    v23 = *a3;
    v24 = (2 * a2 - (v9 - result) - 2) >> 1;
    v25 = vdupq_n_s64(v24);
    v26 = (v24 & 0x7FFFFFFFFFFFFFF8) + 8;
    v27 = (v9 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_186205EC0)));
      if (vuzp1_s8(vuzp1_s16(v29, *v25.i8), *v25.i8).u8[0])
      {
        *(v27 - 4) = v23;
      }

      if (vuzp1_s8(vuzp1_s16(v29, *&v25), *&v25).i8[1])
      {
        *(v27 - 3) = v23;
      }

      if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_186205EB0)))), *&v25).i8[2])
      {
        *(v27 - 2) = v23;
        *(v27 - 1) = v23;
      }

      v30 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_186205EA0)));
      if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i32[1])
      {
        *v27 = v23;
      }

      if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i8[5])
      {
        v27[1] = v23;
      }

      if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_186205E90))))).i8[6])
      {
        v27[2] = v23;
        v27[3] = v23;
      }

      v21 += 8;
      v27 += 8;
    }

    while (v26 != v21);
    a1[1] = v22;
  }

  return result;
}

void std::vector<unsigned int>::assign(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (!(__n >> 62))
    {
      v7 = value >> 1;
      if (value >> 1 <= __n)
      {
        v7 = __n;
      }

      if (value >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<unsigned int>::__vallocate[abi:fe200100](this, v8);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  end = this->__end_;
  v10 = end - begin;
  if (v10 >= __n)
  {
    v11 = __n;
  }

  else
  {
    v11 = end - begin;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *__u;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = begin + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_186205EC0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_186205EB0)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = __n >= v10;
  v20 = __n - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = &end[v20];
    v23 = *__u;
    v24 = (4 * __n - (end - begin) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = end + 2;
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_186205EC0)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_186205EB0)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    this->__end_ = v22;
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

void std::vector<unsigned short>::__vallocate[abi:fe200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<char,char>>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void std::vector<unsigned int>::__vallocate[abi:fe200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void TrimTrailingSpaces()
{
  __assert_rtn("TrimTrailingSpaces", "ReconcileTIFF.cpp", 247, "(lastChar == firstChar-1) || ((lastChar >= firstChar) && (*lastChar != ' ') && (*lastChar != 0))");
}

{
  __assert_rtn("TrimTrailingSpaces", "ReconcileTIFF.cpp", 250, "newLen <= origLen");
}

void *AdobeXMPCore_Int::IArrayNode_I::GetInterfacePointerInternal(void *this, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == 0x634172724E6F6465)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        v8 = a3;
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x634172724E6F6465, v8, exception);
      }

      return (this + *(*this - 808));
    }
  }

  else
  {
    this = AdobeXMPCore_Int::ICompositeNode_I::GetInterfacePointerInternal((this + *(*this - 816)), a2, a3, 0);
    if (this)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4 == 0;
    }

    if (!v6)
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x634172724E6F6465, a2, v7);
    }
  }

  return this;
}

void *virtual thunk toAdobeXMPCore_Int::IArrayNode_I::GetInterfacePointer(AdobeXMPCore_Int::IArrayNode_I *this, uint64_t a2, uint64_t a3)
{
  return AdobeXMPCore_Int::IArrayNode_I::GetInterfacePointerInternal((this + *(*this - 32)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IArrayNode_I::GetInterfacePointerInternal((this + *(*this - 720)), a2, a3, 1);
}

{
  return AdobeXMPCore_Int::IArrayNode_I::GetInterfacePointerInternal((this + *(*this - 600)), a2, a3, 1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IArrayNode_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t virtual thunk toAdobeXMPCore_Int::IArrayNode_I::getInterfacePointer(AdobeXMPCore_Int::IArrayNode_I *this, uint64_t a2, unsigned int a3, const AdobeXMPCommon::IError_v1 **a4)
{
  return AdobeXMPCore_Int::IArrayNode_I::getInterfacePointer((this + *(*this - 40)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IArrayNode_I::getInterfacePointer((this + *(*this - 728)), a2, a3, a4);
}

{
  return AdobeXMPCore_Int::IArrayNode_I::getInterfacePointer((this + *(*this - 656)), a2, a3, a4);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::IArrayNode_v1,unsigned int,AdobeXMPCore::IArrayNode_v1::eArrayForm>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCore::IArrayNode_v1,unsigned int,AdobeXMPCore::INode_v1::eNodeType>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_1861492B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186149294);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void AdobeXMPCore_Int::IArrayNode_I::insertNodeAtIndex(AdobeXMPCore_Int::IArrayNode_I *this, AdobeXMPCore::INode_v1 *a2, uint64_t a3, const AdobeXMPCommon::IError_v1 **a4)
{
  v7 = *(*this - 808);
  AdobeXMPCore::INode_v1::MakeShared(&v8, a2, a2);
  AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IArrayNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,unsigned long long>(a4, this + v7, AdobeXMPCore::IArrayNode_v1::InsertNodeAtIndex, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IArrayNode_I.cpp", 72, &v8, a3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }
}

void sub_1861494E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningVoid<AdobeXMPCore::IArrayNode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,unsigned long long>(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  return v8(v9, a7, a8);
}

uint64_t AdobeXMPCore_Int::IArrayNode_I::replaceNodeAtIndex(AdobeXMPCore_Int::IArrayNode_I *this, AdobeXMPCore::INode_v1 *a2, uint64_t a3, const AdobeXMPCommon::IError_v1 **a4)
{
  v7 = *(*this - 808);
  AdobeXMPCore::INode_v1::MakeShared(&v10, a2, a2);
  v8 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,unsigned long long>(a4, this + v7, AdobeXMPCore::IArrayNode_v1::ReplaceNodeAtIndex, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IArrayNode_I.cpp", 82, &v10, a3);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  return v8;
}

void sub_1861497A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IArrayNode_v1,AdobeXMPCore::INode_v1 *,AdobeXMPCore::INode_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x634E6F6465202020, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_186149930(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186149914);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

BOOL GIF_CheckFormat(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 1195984416)
  {
    GIF_CheckFormat();
  }

  if ((*(*a3 + 24))(a3, a2) < 6)
  {
    return 0;
  }

  v7 = 0;
  v6 = 0;
  (*(*a3 + 16))(a3, 0, 0);
  (**a3)(a3, &v6, 6, 0);
  return v6 == 944130375 && v7 == 24889;
}

void GIF_MetaHandler::~GIF_MetaHandler(void **this)
{
  XMPFileHandler::~XMPFileHandler(this);

  JUMPOUT(0x186602850);
}

uint64_t GIF_MetaHandler::CacheFileData(GIF_MetaHandler *this)
{
  *(this + 21) = 0;
  v2 = *(*(this + 1) + 232);
  result = GIF_MetaHandler::ParseGIFBlocks(this, v2);
  if (result)
  {
    v4 = this + 56;
    v5 = std::string::assign((this + 56), *(this + 26), 32);
    GIF_MetaHandler::SeekFile(v5, v2, *(this + 12), 0);
    if (*(this + 79) < 0)
    {
      v4 = *v4;
    }

    result = (**v2)(v2, v4, *(this + 26), 1);
    *(this + 4) = *(this + 12);
    *(this + 10) = *(this + 26);
    *(this + 21) = 1;
  }

  return result;
}

uint64_t GIF_MetaHandler::ParseGIFBlocks(uint64_t a1, uint64_t (***a2)(void, char *, uint64_t, uint64_t))
{
  v28[2] = *MEMORY[0x1E69E9840];
  ((*a2)[2])(a2, 0, 0);
  v27 = 0;
  v26 = 0;
  v4 = (**a2)(a2, &v26, 6, 0);
  if (v26 != 944130375 || v27 != 24889)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    exception[1] = "XMP_Enforce failed: (memcmp( buffer, \\x47\\x49\\x46\\x38\\x39\\x61, 6) == 0) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPFiles/source/FileHandlers/GIF_Handler.cpp at line 158";
    *(exception + 16) = 0;
  }

  GIF_MetaHandler::ReadLogicalScreenDesc(v4, a2);
  v6 = ((*a2)[2])(a2, 0, 1);
  if (v6 == ((*a2)[3])(a2))
  {
LABEL_33:
    v17 = __cxa_allocate_exception(0x18uLL);
    *v17 = 108;
    v17[1] = "No trailer exists for GIF file";
    *(v17 + 16) = 0;
  }

  v7 = 0;
  while (1)
  {
    v25 = 0;
    v8 = (**a2)(a2, &v25, 1, 0);
    if (v25 == 33)
    {
      v24 = 0;
      v23 = 0;
      (**a2)(a2, &v24, 1, 0);
      v11 = (**a2)(a2, &v23, 1, 0);
      v12 = v23;
      if (v24 == 255 && v23 == 11)
      {
        memset(v28, 0, 11);
        (**a2)(a2, v28, 11, 1);
        if (v28[0] == 0x6174614420504D58 && *(v28 + 3) == 0x504D586174614420)
        {
          *(a1 + 96) = ((*a2)[2])(a2, 0, 1);
          v7 = 1;
        }

        v22 = 0;
        v14 = (**a2)(a2, &v22, 1, 0);
        while (v22)
        {
          GIF_MetaHandler::SeekFile(v14, a2, v22, 1);
          v14 = (**a2)(a2, &v22, 1, 0);
        }

        if (v7)
        {
          v15 = ((*a2)[2])(a2, 0, 1) - *(a1 + 96);
          if (v15 <= 257)
          {
            v20 = __cxa_allocate_exception(0x18uLL);
            *v20 = 108;
            v20[1] = "corrupt GIF File.";
            *(v20 + 16) = 0;
          }

          *(a1 + 104) = v15 - 258;
        }
      }

      else
      {
        for (; v23; v12 = v23)
        {
          GIF_MetaHandler::SeekFile(v11, a2, v12, 1);
          v11 = (**a2)(a2, &v23, 1, 0);
        }
      }

      goto LABEL_32;
    }

    if (v25 != 44)
    {
      break;
    }

    LOBYTE(v28[0]) = 0;
    GIF_MetaHandler::SeekFile(v8, a2, 8, 1);
    v9 = (**a2)(a2, v28, 1, 0);
    if (SLOBYTE(v28[0]) < 0)
    {
      v9 = GIF_MetaHandler::SeekFile(v9, a2, 3 << ((v28[0] & 7) + 1), 1);
    }

    GIF_MetaHandler::SeekFile(v9, a2, 1, 1);
    LOBYTE(v23) = 0;
    v10 = (**a2)(a2, &v23, 1, 0);
    while (v23)
    {
      GIF_MetaHandler::SeekFile(v10, a2, v23, 1);
      v10 = (**a2)(a2, &v23, 1, 0);
    }

LABEL_32:
    v16 = ((*a2)[2])(a2, 0, 1);
    if (v16 == ((*a2)[3])(a2))
    {
      goto LABEL_33;
    }
  }

  if (v25 != 59)
  {
    v19 = __cxa_allocate_exception(0x18uLL);
    *v19 = 116;
    v19[1] = "Invaild GIF Block";
    *(v19 + 16) = 0;
  }

  *(a1 + 112) = ((*a2)[2])(a2, 0, 1) - 1;
  return v7 & 1;
}

uint64_t GIF_MetaHandler::SeekFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*a2 + 24))(a2) < a3 || a4 == 1 && (v7 = (*(*a2 + 16))(a2, 0, 1) + a3, v7 > (*(*a2 + 24))(a2)))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "Out of range seek operation";
    *(exception + 16) = 0;
  }

  v8 = *(*a2 + 16);

  return v8(a2, a3, a4);
}

void GIF_MetaHandler::ProcessXMP(GIF_MetaHandler *this)
{
  *(this + 22) = 1;
  v2 = *(this + 79);
  if (v2 < 0)
  {
    if (!*(this + 8))
    {
      return;
    }
  }

  else if (!*(this + 79))
  {
    return;
  }

  if ((*(this + 21) & 1) == 0)
  {
    GIF_MetaHandler::ProcessXMP();
  }

  if ((v2 & 0x80000000) != 0)
  {
    v3 = *(this + 7);
    v2 = *(this + 8);
  }

  else
  {
    v3 = this + 56;
  }

  TXMPMeta<std::string>::ParseFromBuffer(this + 80, v3, v2, 0);
  *(this + 21) = 1;
}

uint64_t GIF_MetaHandler::ReadLogicalScreenDesc(uint64_t a1, uint64_t (***a2)(void, char *, uint64_t, void))
{
  v5 = 0;
  GIF_MetaHandler::SeekFile(a1, a2, 4, 1);
  v3 = (**a2)(a2, &v5, 1, 0);
  result = GIF_MetaHandler::SeekFile(v3, a2, 2, 1);
  if (v5 < 0)
  {
    return GIF_MetaHandler::SeekFile(result, a2, 3 << ((v5 & 7u) + 1), 1);
  }

  return result;
}

uint64_t GIF_MetaHandler::UpdateFile(uint64_t this, int a2)
{
  if (a2)
  {
    GIF_MetaHandler::UpdateFile();
  }

  v2 = this;
  if (*(this + 23) == 1)
  {
    v3 = *(*(this + 8) + 232);
    v4 = *(this + 79);
    if (v4 < 0)
    {
      v4 = *(this + 64);
    }

    if (*(this + 104) == v4)
    {
      v5 = (this + 56);
      GIF_MetaHandler::SeekFile(this, v3, *(this + 32), 0);
      if (v2[79] < 0)
      {
        v5 = *v5;
      }

      this = (*(*v3 + 8))(v3, v5, v4);
    }

    else
    {
      v6 = (*(*v3 + 40))(v3);
      if (!v6)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 9;
        exception[1] = "Failure creating GIF temp file";
        *(exception + 16) = 0;
      }

      (*(*v2 + 80))(v2, v6);
      this = (*(*v3 + 48))(v3);
    }

    v2[23] = 0;
  }

  return this;
}

void GIF_MetaHandler::WriteTempFile(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 23) & 1) == 0)
  {
    GIF_MetaHandler::WriteTempFile();
  }

  v4 = *(*(a1 + 8) + 232);
  (*(*v4 + 16))(v4, 0, 0);
  (*(*a2 + 32))(a2, 0);
  v7 = *(a1 + 96);
  if (v7)
  {
    XIO::Copy(v4, a2, v7, 0, 0, v5, v6);
    v8 = *(a1 + 79);
    if (v8 < 0)
    {
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
    }

    else
    {
      v9 = a1 + 56;
    }

    (*(*a2 + 8))(a2, v9, v8);
    (*(*v4 + 16))(v4, *(a1 + 104), 1);
    v13 = (*(*v4 + 24))(v4);
    v14 = v13 - (*(*v4 + 16))(v4, 0, 1);

    XIO::Copy(v4, a2, v14, 0, 0, v15, v16);
  }

  else
  {
    v10 = *(a1 + 112);
    if (!v10)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 108;
      exception[1] = "Not able to write XMP packet in GIF file";
      *(exception + 16) = 0;
    }

    XIO::Copy(v4, a2, v10, 0, 0, v5, v6);
    v23 = 33;
    (*(*a2 + 8))(a2, &v23, 1);
    v24 = -1;
    (*(*a2 + 8))(a2, &v24, 1);
    v25 = 11;
    (*(*a2 + 8))(a2, &v25, 1);
    (*(*a2 + 8))(a2, "XMP DataXMP", 11);
    v11 = *(a1 + 79);
    if (v11 < 0)
    {
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
    }

    else
    {
      v12 = a1 + 56;
    }

    (*(*a2 + 8))(a2, v12, v11);
    v22 = 1;
    (*(*a2 + 8))(a2, &v22, 1);
    v22 = -1;
    do
    {
      (*(*a2 + 8))(a2, &v22, 1);
      --v22;
    }

    while (v22);
    (*(*a2 + 8))(a2, &v22, 1);
    (*(*a2 + 8))(a2, &v22, 1);
    v17 = (*(*v4 + 24))(v4);
    v18 = (*(*v4 + 16))(v4, 0, 1);
    XIO::Copy(v4, a2, v17 - v18, 0, 0, v19, v20);
  }
}

void sub_18614AE28(void *a1, int a2)
{
  v4 = v3;
  MEMORY[0x186602850](v4, 0x10B3C403726CC03);
  if (a2 == 3)
  {
    v7 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v7;
    v8 = *(v7 + 1);
    if (!v8)
    {
      v8 = "";
    }

    *v2 = v8;
    *(v2 + 8) = "XMP";
  }

  else
  {
    v9 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v10 = (*(*v9 + 16))(v9);
      v11 = "";
      if (v10)
      {
        v11 = v10;
      }
    }

    else
    {
      *(v2 + 32) = 14;
      v11 = "Caught unknown exception";
    }

    *v2 = v11;
  }

  __cxa_end_catch();
}

void WXMPFiles_DecrementRefCount_1(_DWORD *a1)
{
  if (voidResult(void)::onceToken != -1)
  {
    WXMPFiles_Terminate_1_cold_1();
  }

  v2 = gVoidResult;
  v5 = (a1 + 4);
  XMP_ReadWriteLock::Acquire((a1 + 4), 1);
  *v2 = 0;
  v3 = a1[2];
  if (v3 <= 0)
  {
    __assert_rtn("WXMPFiles_DecrementRefCount_1", "WXMPFiles.cpp", 135, "thiz->clientRefs > 0");
  }

  v4 = v3 - 1;
  a1[2] = v4;
  if (!v4)
  {
    XMP_ReadWriteLock::Release((a1 + 4));
    v5 = 0;
    (*(*a1 + 8))(a1);
  }

  XMP_AutoLock::~XMP_AutoLock(&v5);
}

void sub_18614AFF0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18614AFA8);
}

void sub_18614AFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPFiles_OpenFile_2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a5 = 0;
  *(a5 + 32) = XMPFiles::OpenFile(a1, a2, a3, a4);
  XMP_AutoLock::~XMP_AutoLock(&v10);
}

void WXMPFiles_CloseFile_1(uint64_t a1, char a2, void *a3)
{
  v6 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a3 = 0;
  XMPFiles::CloseFile(a1, a2);
  XMP_AutoLock::~XMP_AutoLock(&v6);
}

void WXMPFiles_PutXMP_1(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, void *a5)
{
  v11 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a5 = 0;
  if (a2)
  {
    TXMPMeta<std::string>::TXMPMeta(v10, a2);
    XMPFiles::PutXMP(a1, v10);
    TXMPMeta<std::string>::~TXMPMeta(v10);
  }

  else
  {
    XMPFiles::PutXMP(a1, a3, a4);
  }

  XMP_AutoLock::~XMP_AutoLock(&v11);
}

void sub_18614B320(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 3)
  {
    v12 = __cxa_begin_catch(a1);
    *(v10 + 32) = *v12;
    v13 = *(v12 + 1);
    if (!v13)
    {
      v13 = "";
    }

    *v10 = v13;
    *(v10 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v10 + 32) = 13;
      v15 = (*(*v14 + 16))(v14);
      v16 = "";
      if (v15)
      {
        v16 = v15;
      }

      *v10 = v16;
      __cxa_end_catch();
    }

    else
    {
      *(v10 + 32) = 14;
      *v10 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x18614B300);
}

void sub_18614B3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPFiles_CanPutXMP_1(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v11 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a5 = 0;
  if (a2)
  {
    TXMPMeta<std::string>::TXMPMeta(v10, a2);
    *(a5 + 32) = XMPFiles::CanPutXMP(a1, v10);
    TXMPMeta<std::string>::~TXMPMeta(v10);
  }

  else
  {
    *(a5 + 32) = XMPFiles::CanPutXMP(a1, a3, a4);
  }

  XMP_AutoLock::~XMP_AutoLock(&v11);
}

void sub_18614B4B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2 == 3)
  {
    v12 = __cxa_begin_catch(a1);
    *(v10 + 32) = *v12;
    v13 = *(v12 + 1);
    if (!v13)
    {
      v13 = "";
    }

    *v10 = v13;
    *(v10 + 8) = "XMP";
    __cxa_end_catch();
  }

  else
  {
    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v10 + 32) = 13;
      v15 = (*(*v14 + 16))(v14);
      v16 = "";
      if (v15)
      {
        v16 = v15;
      }

      *v10 = v16;
      __cxa_end_catch();
    }

    else
    {
      *(v10 + 32) = 14;
      *v10 = "Caught unknown exception";
      __cxa_end_catch();
    }
  }

  JUMPOUT(0x18614B490);
}

void sub_18614B580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  XMP_AutoLock::~XMP_AutoLock(va);
  _Unwind_Resume(a1);
}

void WXMPFiles_Initialize_1_cold_1(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  OUTLINED_FUNCTION_1_23(v1);
  OUTLINED_FUNCTION_0_40("XMP");

  __cxa_end_catch();
}

void AdobeXMPCore_Int::ArrayNodeImpl::ArrayNodeImpl(void *a1, AdobeXMPCore_Int::IUTF8String_I *a2, char *a3, AdobeXMPCore_Int *a4, const char *a5, int a6)
{
  a1[23] = &unk_1EF4F4FF0;
  *a1 = &unk_1EF4F4818;
  a1[5] = off_1EF4F4AC0;
  *(a1 + unk_1EF4F47D0) = &unk_1EF4F4B20;
  *a1 = &unk_1EF4F41C0;
  *(a1 + unk_1EF4F4180) = off_1EF4F44D8;
  *(a1 + *(*a1 - 72)) = &unk_1EF4F4538;
  a1[20] = &unk_1EF4F6B88;
  a1[7] = &unk_1EF4F6388;
  *a1 = &unk_1EF4F67F8;
  a1[5] = off_1EF4F6A18;
  a1[23] = &unk_1EF4F6B00;
  *(a1 + unk_1EF4F6160 + 56) = &unk_1EF4F6A78;
  *(a1 + *(a1[7] - 560) + 56) = &unk_1EF4F6B00;
  a1[6] = &unk_1EF4F5300;
  *a1 = &unk_1EF4F5838;
  a1[5] = off_1EF4F5AE0;
  a1[23] = &unk_1EF4F60B0;
  *(a1 + unk_1EF4F5048 + 48) = &unk_1EF4F5D90;
  *(a1 + *(a1[6] - 704) + 48) = &unk_1EF4F6028;
  *(a1 + *(a1[6] - 712) + 48) = &unk_1EF4F60B0;
  *a1 = &unk_1EF4F2FF8;
  *(a1 + unk_1EF4F2FC0) = &unk_1EF4F2FF8;
  *(a1 + *(*a1 - 64)) = off_1EF4F3320;
  *(a1 + *(*a1 - 72)) = &unk_1EF4F3E58;
  *(a1 + *(*a1 - 816)) = &unk_1EF4F3618;
  *(a1 + *(*a1 - 824)) = &unk_1EF4F3B38;
  *(a1 + *(*a1 - 832)) = &unk_1EF4F3DD0;
  *(a1 + *(*a1 - 840)) = &unk_1EF4F3E58;
  a1[20] = off_1EF4F8918;
  a1[21] = 0;
  *a1 = off_1EF4F8978;
  a1[24] = 0;
  a1[25] = 0;
  a1[22] = 0;
  a1[23] = off_1EF4F8A00;
  AdobeXMPCore_Int::NodeImpl::NodeImpl((a1 + 7), off_1EF4F2C20, a2, a3, a4, a5);
}

void sub_18614BC5C(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl(v1, off_1EF4F2C88);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4F2C70);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::ArrayNodeImpl::GetChildNodeType(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 896) + 8, 0);
  v2 = *(this + 2);
  if (*(this + 3) == v2)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = (*(**v2 + 40))();
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
  return v3;
}

void sub_18614BD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ArrayNodeImpl::GetNodeAtIndex(AdobeXMPCore_Int::ArrayNodeImpl *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2 - 1;
  memset(v8, 0, sizeof(v8));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v8, this + *(*this - 896) + 8, 0);
  v6 = *(this + 2);
  if (v5 < (*(this + 3) - v6) >> 4)
  {
    v7 = *(v6 + 16 * v5);
    (**&v7[*(*v7 - 56)])(&v7[*(*v7 - 56)]);
    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a3, v7, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  *a3 = 0;
  a3[1] = 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v8);
}

void sub_18614BE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ArrayNodeImpl::InsertNodeAtIndex(char *a1, uint64_t **a2, uint64_t a3)
{
  v12 = 0;
  v13 = a3;
  v5 = a3 - 1;
  v10 = 0;
  v11 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v10, &a1[*(*a1 - 896) + 8], 0);
  if (v5 > (*(a1 + 3) - *(a1 + 2)) >> 4)
  {
    v9[0] = 0;
    v9[1] = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v10);
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*a1 + 784))(a1, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  if (v7)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v10, &a1[*(*a1 - 896) + 8], 1);
    v8 = *a2;
    (**(*a2 + *(**a2 - 56)))(*a2 + *(**a2 - 56));
    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(v9, v8, AdobeXMPCommon::ISharedObject::Release, 0);
  }
}

void sub_18614C36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a9);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

std::__shared_weak_count **std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::insert(char **a1, char *a2, __n128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v6 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v28 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1>>>(a1, v15);
    }

    v25 = 0;
    v26 = 16 * v16;
    v27 = (16 * v16);
    std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1>>::emplace_back<std::shared_ptr<AdobeXMPCore::INode_v1>>(&v25, a3);
    v17 = v26;
    memcpy(v27, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v26;
    *&v27 = v27 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::~__split_buffer(&v25);
    return v17;
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a1[1] = v6 + 16;
  }

  else
  {
    std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::__move_range(a1, a2, v6, (a2 + 16));
    v8 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v9 = v4[1];
    *v4 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    }
  }

  return v4;
}

void sub_18614C534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ArrayNodeImpl::RemoveNodeAtIndex(void (***this)(__int128 **)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  (*this)[82](this);
  if (*a3)
  {
    memset(v16, 0, sizeof(v16));
    AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v16, *(*this - 112) + this + 8, 1);
    v6 = this[3];
    v7 = &this[2][2 * a2];
    v8 = v7 - 1;
    if (v6 == v7 - 1)
    {
      __break(1u);
    }

    else
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *>(&v17, v7, v6, (v7 - 1));
      v10 = v9;
      for (i = this[3]; i != v10; --i)
      {
        v12 = *(i - 1);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v12);
        }
      }

      this[3] = v10;
      v13 = *(*(**a3 + 280))(*a3);
      (*(v13 + 504))();
      v14 = this[3];
      while (v8 != v14)
      {
        v15 = (*(**v8 + 280))(*v8);
        (*(*v15 + 544))(v15, a2++);
        ++v8;
      }

      AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v16);
    }
  }
}

void sub_18614C72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a9);
  v11 = *(v9 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::ArrayNodeImpl::ReplaceNodeAtIndex@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[1];
  v13 = *a2;
  v14 = v8;
  v15 = a3;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(*a1 + 784))(a1, &v13))
  {
    (*(*a1 + 656))(&v11, a1, a3);
    v9 = v11 != 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  if (!v9)
  {
    v13 = 0;
    v14 = 0;
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  *a4 = 0;
  a4[1] = 0;
  (*(*a1 + 680))(a1, a3);
  return (*(*a1 + 664))(a1, a2, a3);
}

void sub_18614CAD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::ArrayNodeImpl::AppendNode(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 560))(a1);
  v5 = *(*a1 + 664);

  return v5(a1, a2, v4 + 1);
}

void AdobeXMPCore_Int::ArrayNodeImpl::Iterator(AdobeXMPCore_Int::ArrayNodeImpl *this@<X0>, void *a2@<X8>)
{
  memset(v7, 0, sizeof(v7));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v7, this + *(*this - 896) + 8, 0);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = v4;
  if (v4 != v5)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v7);
}

void sub_18614CCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void *AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::TNodeIteratorImpl(void *result, void *a2, void *a3)
{
  result[4] = &unk_1EF4F9048;
  *result = &unk_1EF4F8DA8;
  result[3] = off_1EF4F8E48;
  *(result + unk_1EF4F8D18) = &unk_1EF4F8EA8;
  result[5] = 0;
  result[6] = 0;
  *result = &unk_1EF4F8B30;
  result[3] = &unk_1EF4F8BD0;
  result[4] = &unk_1EF4F8C38;
  result[1] = *a2;
  result[2] = *a3;
  return result;
}

uint64_t AdobeXMPCore_Int::ArrayNodeImpl::ChildCount(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 896) + 8, 0);
  v2 = (*(this + 3) - *(this + 2)) >> 4;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

BOOL AdobeXMPCore_Int::ArrayNodeImpl::HasContent(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  memset(v4, 0, sizeof(v4));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v4, this + *(*this - 896) + 8, 0);
  v2 = *(this + 3) != *(this + 2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v4);
  return v2;
}

void AdobeXMPCore_Int::ArrayNodeImpl::ClearContents(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  memset(v6, 0, sizeof(v6));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v6, this + *(*this - 896) + 8, 1);
  v3 = *(this + 2);
  v4 = *(this + 3);
  v2 = (this + 16);
  while (v3 != v4)
  {
    v5 = (*(**v3 + 280))(*v3);
    (*(*v5 + 504))(v5, 0);
    v3 += 2;
  }

  std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::clear[abi:fe200100](v2);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v6);
}

void sub_18614D0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ArrayNodeImpl::CloneContents(AdobeXMPCore_Int::ArrayNodeImpl *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!a2 || a4 || (*(this + 3) == *(this + 2) ? (v5 = a3 == 0) : (v5 = 1), v5))
  {
    v6 = *this;
    v7 = *(this + *(*this - 880) + 16);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v6 = *this;
    }

    v8 = *(this + *(v6 - 880) + 32);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    AdobeXMPCore_Int::IArrayNode_I::CreateArrayNode();
  }

  *a5 = 0;
  a5[1] = 0;
}

void sub_18614D358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::ArrayNodeImpl::resetChangesForChildren(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  memset(v5, 0, sizeof(v5));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v5, this + *(*this - 896) + 8, 0);
  v3 = *(this + 2);
  v2 = *(this + 3);
  while (v3 != v2)
  {
    v4 = *v3;
    v3 += 2;
    (*(*v4 + 216))(v4);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v5);
}

uint64_t AdobeXMPCore_Int::ArrayNodeImpl::CheckSuitabilityToBeUsedAsChildNode(uint64_t a1, void *a2)
{
  v4 = AdobeXMPCore_Int::CompositeNodeImpl::CheckSuitabilityToBeUsedAsChildNode(a1 + *(*a1 - 872), a2);
  if (v4)
  {
    v5 = (*(*a1 + 648))(a1);
    if (v5 != -1 && v5 != (*(**a2 + 40))())
    {
      AdobeXMPCore_Int::IError_I::CreateError();
    }
  }

  return v4;
}

void sub_18614D974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  AdobeXMPCore_Int::NodeImpl::~NodeImpl((v2 + 56), off_1EF4F2C20);
  AdobeXMPCore_Int::ThreadSafeImpl::~ThreadSafeImpl((this + 184), off_1EF4F2C88);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 160), off_1EF4F2C70);
}

{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl(AdobeXMPCore_Int::ArrayNodeImpl *this)
{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((this + *(*this - 24)));
}

{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((this + *(*this - 24)));

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((this + *(*this - 56)));
}

{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((this + *(*this - 56)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl(void *a1)
{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((a1 + *(*a1 - 48)));
}

{
  AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl((a1 + *(*a1 - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::ArrayNodeImpl::~ArrayNodeImpl(AdobeXMPCore_Int::ArrayNodeImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 864)) = a2[1];
  *(this + *(*this - 808)) = a2[2];
  *(this + *(*this - 688)) = a2[3];
  *(this + *(*this - 544)) = a2[4];
  *(this + *(*this - 56)) = a2[5];
  *(this + *(*this - 64)) = a2[6];
  *(this + *(*this - 72)) = a2[7];
  *(this + *(*this - 816)) = a2[8];
  *(this + *(*this - 824)) = a2[9];
  *(this + *(*this - 832)) = a2[10];
  *(this + *(*this - 840)) = a2[11];
  *(this + *(*this - 872)) = a2[12];
  *(this + *(*this - 880)) = a2[13];
  *(this + *(*this - 888)) = a2[14];
  *(this + *(*this - 896)) = a2[15];
  v3 = (this + 16);
  std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](&v3);
}

void *std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      *(v9 + 8) = 0;
      v9 += 16;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::INode_v1> *,std::shared_ptr<AdobeXMPCore::INode_v1> *,std::shared_ptr<AdobeXMPCore::INode_v1> *>(&v11, a2, v7, v6);
}

__n128 std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1>>::emplace_back<std::shared_ptr<AdobeXMPCore::INode_v1>>(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 3;
      }

      v9 = a1[4];
      v11[4] = a1[4];
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1>>>(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *,std::shared_ptr<AdobeXMPCore::IPathSegment_v1 const> *>(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    a1[1] -= 16 * v6;
    a1[2] = v7;
  }

  result = *a2;
  *v4 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a1[2] += 16;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:fe200100]<std::shared_ptr<AdobeXMPCore::INode_v1> *,std::shared_ptr<AdobeXMPCore::INode_v1> *,std::shared_ptr<AdobeXMPCore::INode_v1> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

void AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::~TNodeIteratorImpl(uint64_t a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + 32), off_1EF4F8CF0);

  JUMPOUT(0x186602850);
}

uint64_t AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::GetNodeType(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != *(a1 + 16))
  {
    v2 = *v1;
    v3 = (*v1 + *(**v1 - 56));
    (**v3)(v3);
    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(&v5, v2, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  return 0;
}

void sub_18614E7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::GetNode@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if (v3 != result[2])
  {
    v4 = *v3;
    v5 = (*v3 + *(**v3 - 56));
    (**v5)(v5);

    std::shared_ptr<AdobeXMPCore::INode_v1>::shared_ptr[abi:fe200100]<AdobeXMPCore::INode_v1,std::__mem_fn<void (AdobeXMPCommon::ISharedObject::*)(void)const>,0>(a2, v4, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void *AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::Next@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[2];
  v4 = result[1] + 16;
  result[1] = v4;
  if (v4 != v3)
  {
    v5 = result;
    (**(result + *(*result - 176)))(result + *(*result - 176));
    std::shared_ptr<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>>::shared_ptr[abi:fe200100]<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,0>(&v6, v5, AdobeXMPCommon::ISharedObject::Release, 0);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void virtual thunk toAdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>::~TNodeIteratorImpl(void *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 24) + 32), off_1EF4F8CF0);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 24) + 32), off_1EF4F8CF0);

  JUMPOUT(0x186602850);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4F8CF0);
}

{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((a1 + *(*a1 - 48) + 32), off_1EF4F8CF0);

  JUMPOUT(0x186602850);
}

void sub_18614EAE0(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 176) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 176) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>> *,std::__mem_fn<void (AdobeXMPCore_Int::SharedObjectImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::TNodeIteratorImpl<std::__wrap_iter<std::shared_ptr<AdobeXMPCore::INode_v1> *>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void sub_18614ECCC(void *a1)
{
  __cxa_begin_catch(a1);
  v4 = (v3 + *(*v3 - 880) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v4 + v1);
  }

  v1(v4);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AdobeXMPCore_Int::ArrayNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ArrayNodeImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ArrayNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ArrayNodeImpl>>::__on_zero_shared(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = (a1[3] + *(*a1[3] - 880) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3);
}

uint64_t std::__shared_ptr_pointer<AdobeXMPCore_Int::ArrayNodeImpl *,std::__mem_fn<void (AdobeXMPCore_Int::NodeImpl::*)(void)const>,std::allocator<AdobeXMPCore_Int::ArrayNodeImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void AdobeXMPCore_Int::ConfigurableImpl::SetParameter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = (*(*(a1 + *(*a1 - 304)) + 208))(a1 + *(*a1 - 304), a2);
  v57 = v7;
  if (*(a1 + 48) == 1)
  {
    v8 = v7 >> 8;
    v9 = BYTE2(v7);
    v10 = BYTE3(v7);
    v11 = HIDWORD(v7);
    v12 = v7 >> 40;
    v13 = HIWORD(v7);
    v14 = vcgt_u8(0x1A1A1A1A1A1A1A1ALL, vadd_s8(v7, 0xBFBFBFBFBFBFBFBFLL));
    v15 = v7 | 0x20;
    if ((v14.i8[0] & 1) == 0)
    {
      v15 = v7;
    }

    if (v14.i8[1])
    {
      LOBYTE(v8) = BYTE1(v7) | 0x20;
    }

    if (v14.i8[2])
    {
      v9 = BYTE2(v7) | 0x20;
    }

    if (v14.i8[3])
    {
      v10 = BYTE3(v7) | 0x20;
    }

    if (v14.i8[4])
    {
      LOBYTE(v11) = BYTE4(v7) | 0x20;
    }

    if (v14.i8[5])
    {
      LOBYTE(v12) = BYTE5(v7) | 0x20;
    }

    if (v14.i8[6])
    {
      LOBYTE(v13) = BYTE6(v7) | 0x20;
    }

    if (v14.i8[7])
    {
      v16 = HIBYTE(v7) | 0x20u;
    }

    else
    {
      v16 = HIBYTE(v7);
    }

    v57 = (v13 << 48) | (v16 << 56) | (v12 << 40) | (v11 << 32) | (v10 << 24) | (v9 << 16) | (v8 << 8) | v15;
  }

  v17 = (*(*(a1 + *(*a1 - 304)) + 200))(a1 + *(*a1 - 304), &v57);
  v56 = 0;
  if (v17)
  {
    AdobeXMPCore_Int::NotifyError("Key is not valid", &v57, v17, a3, a4, v18, 0, &v56, v19);
  }

  memset(v55, 0, sizeof(v55));
  (*(*(a1 + *(*a1 - 304)) + 256))(&v53, a1 + *(*a1 - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v55, &v53, 1);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v54);
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v25 = *(v22 + 8);
    v23 = v22 + 8;
    v24 = v25;
    if (!v25)
    {
      goto LABEL_33;
    }

    v26 = v23;
    do
    {
      v27 = *(v24 + 32);
      v28 = v27 >= v57;
      v29 = v27 < v57;
      if (v28)
      {
        v26 = v24;
      }

      v24 = *(v24 + 8 * v29);
    }

    while (v24);
    if (v26 == v23 || v57 < *(v26 + 32))
    {
LABEL_33:
      AdobeXMPCore_Int::NotifyError("Key is not supported", &v57, 1, a3, a4, v20, 0, &v56, v21);
    }
  }

  v30 = (*(*a1 + 216))(a1, &v57, a3, a4);
  if (v30)
  {
LABEL_35:
    v35 = *(a1 + 16);
    v34 = a1 + 16;
    v33 = v35;
    if (!v35)
    {
      goto LABEL_43;
    }

    v36 = v34;
    do
    {
      v37 = *(v33 + 32);
      v28 = v37 >= v57;
      v38 = v37 < v57;
      if (v28)
      {
        v36 = v33;
      }

      v33 = *(v33 + 8 * v38);
    }

    while (v33);
    if (v36 != v34 && v57 >= *(v36 + 32))
    {
      v39 = *(v36 + 40);
      v56 = *(v36 + 48);
    }

    else
    {
LABEL_43:
      v39 = 0;
    }

    AdobeXMPCore_Int::NotifyError("Validation failed for the parameter, type and value combination", &v57, v30, a3, a4, v31, v39, &v56, v32);
  }

  v40 = *(a1 + 40);
  if (v40)
  {
    v43 = *(v40 + 8);
    v41 = v40 + 8;
    v42 = v43;
    if (v43)
    {
      v44 = v41;
      do
      {
        v45 = *(v42 + 32);
        v28 = v45 >= v57;
        v46 = v45 < v57;
        if (v28)
        {
          v44 = v42;
        }

        v42 = *(v42 + 8 * v46);
      }

      while (v42);
      if (v44 != v41 && v57 >= *(v44 + 32) && *(v44 + 40) != a3)
      {
        v30 = 2;
        goto LABEL_35;
      }
    }
  }

  if ((*(a1 + 49) & 1) == 0)
  {
    v47 = *(a1 + 16);
    if (v47)
    {
      v48 = a1 + 16;
      do
      {
        v49 = *(v47 + 32);
        v28 = v49 >= v57;
        v50 = v49 < v57;
        if (v28)
        {
          v48 = v47;
        }

        v47 = *(v47 + 8 * v50);
      }

      while (v47);
      if (v48 != a1 + 16 && v57 >= *(v48 + 32) && *(v48 + 40) != a3)
      {
        v30 = 3;
        goto LABEL_35;
      }
    }
  }

  v51 = *a4;
  v53 = &v57;
  v52 = std::__tree<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<AdobeXMPCommon::IConfigurable::eDataType,AdobeXMPCommon::IConfigurable::CombinedDataValue>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 8, &v57, &std::piecewise_construct, &v53);
  *(v52 + 10) = a3;
  v52[6] = v51;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v55);
}

void sub_18614F2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void sub_18614F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  JUMPOUT(0x18614F2D4);
}

void AdobeXMPCore_Int::NotifyError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, __n128 a6, uint64_t a7, _BYTE *a8, __n128 a9)
{
  v13 = 0;
  if (a4 > 7)
  {
    if (a4 == 8)
    {
      LOBYTE(v13) = *a5;
      AdobeXMPCore_Int::NotifyError<char const*>(a1, a2, a3, a4, &v13, a7, a8, a6);
    }

    if (a4 == 16)
    {
      a6.n128_u64[0] = *a5;

      AdobeXMPCore_Int::NotifyError<double>(a1, a2, a3, a4, a7, a8, a6, a9);
    }
  }

  else
  {
    switch(a4)
    {
      case 1:
        v11 = *a5;

        AdobeXMPCore_Int::NotifyError<BOOL>(a1, a2, a3, a4, v11, a7, a8, a6);
      case 2:
        v12 = *a5;

        AdobeXMPCore_Int::NotifyError<unsigned long long>(a1, a2, a3, a4, v12, a7, a8, a6);
      case 4:
        v9 = *a5;

        AdobeXMPCore_Int::NotifyError<long long>(a1, a2, a3, a4, v9, a7, a8, a6);
    }
  }

  v10 = *a5;

  AdobeXMPCore_Int::NotifyError<void *>(a1, a2, a3, a4, v10, a7, a8, a6);
}

uint64_t AdobeXMPCore_Int::ConfigurableImpl::GetParameter(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = (*(*(a1 + *(*a1 - 304)) + 208))(a1 + *(*a1 - 304), a2);
  v8 = v7;
  v30 = v7;
  if (*(a1 + 48) == 1)
  {
    v9 = v7.i32[0] >> 8;
    v10 = v7.u8[2];
    v11 = v7.u8[3];
    v12 = HIDWORD(*&v7);
    v13 = *&v7 >> 40;
    v14 = HIWORD(*&v7);
    v15 = vcgt_u8(0x1A1A1A1A1A1A1A1ALL, vadd_s8(v7, 0xBFBFBFBFBFBFBFBFLL));
    v16 = v7.i8[0] | 0x20;
    if ((v15.i8[0] & 1) == 0)
    {
      v16 = v7.i8[0];
    }

    if (v15.i8[1])
    {
      LOBYTE(v9) = v7.i8[1] | 0x20;
    }

    if (v15.i8[2])
    {
      v10 = v7.i8[2] | 0x20;
    }

    if (v15.i8[3])
    {
      v11 = v7.i8[3] | 0x20;
    }

    if (v15.i8[4])
    {
      LOBYTE(v12) = v7.i8[4] | 0x20;
    }

    if (v15.i8[5])
    {
      LOBYTE(v13) = v7.i8[5] | 0x20;
    }

    if (v15.i8[6])
    {
      LOBYTE(v14) = v7.i8[6] | 0x20;
    }

    if (v15.i8[7])
    {
      v17 = v7.u8[7] | 0x20u;
    }

    else
    {
      v17 = HIBYTE(*&v7);
    }

    v8 = (v14 << 48) | (v17 << 56) | (v13 << 40) | (v12 << 32) | (v11 << 24) | (v10 << 16) | (v9 << 8) | v16;
    v30 = v8;
  }

  memset(v29, 0, sizeof(v29));
  (*(*(a1 + *(*a1 - 304)) + 256))(&v27, a1 + *(*a1 - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v29, &v27, 0);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v28);
  }

  v20 = *(a1 + 16);
  v19 = a1 + 16;
  v18 = v20;
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = v19;
  do
  {
    v22 = *(v18 + 32);
    v23 = v22 >= v8;
    v24 = v22 < v8;
    if (v23)
    {
      v21 = v18;
    }

    v18 = *(v18 + 8 * v24);
  }

  while (v18);
  if (v21 != v19 && v8 >= *(v21 + 32))
  {
    if (*(v21 + 40) != a3)
    {
      v27 = 0;
      v28 = 0;
      AdobeXMPCore_Int::IError_I::CreateError();
    }

    *a4 = *(v21 + 48);
    v25 = 1;
  }

  else
  {
LABEL_30:
    v25 = 0;
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v29);
  return v25;
}

void sub_18614F8B0(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, std::__shared_weak_count *a9, ...)
{
  va_start(va, a9);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a7);
  }

  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a9);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

BOOL AdobeXMPCore_Int::ConfigurableImpl::RemoveParameter(AdobeXMPCore_Int::ConfigurableImpl *this, const unint64_t *a2)
{
  v3 = (*(*(this + *(*this - 304)) + 208))(this + *(*this - 304), a2);
  v18 = v3;
  if (*(this + 48) == 1)
  {
    v4 = v3.i32[0] >> 8;
    v5 = v3.u8[2];
    v6 = v3.u8[3];
    v7 = HIDWORD(*&v3);
    v8 = *&v3 >> 40;
    v9 = HIWORD(*&v3);
    v10 = vcgt_u8(0x1A1A1A1A1A1A1A1ALL, vadd_s8(v3, 0xBFBFBFBFBFBFBFBFLL));
    v11 = v3.i8[0] | 0x20;
    if ((v10.i8[0] & 1) == 0)
    {
      v11 = v3.i8[0];
    }

    if (v10.i8[1])
    {
      LOBYTE(v4) = v3.i8[1] | 0x20;
    }

    if (v10.i8[2])
    {
      v5 = v3.i8[2] | 0x20;
    }

    if (v10.i8[3])
    {
      v6 = v3.i8[3] | 0x20;
    }

    if (v10.i8[4])
    {
      LOBYTE(v7) = v3.i8[4] | 0x20;
    }

    if (v10.i8[5])
    {
      LOBYTE(v8) = v3.i8[5] | 0x20;
    }

    if (v10.i8[6])
    {
      LOBYTE(v9) = v3.i8[6] | 0x20;
    }

    if (v10.i8[7])
    {
      v12 = v3.u8[7] | 0x20u;
    }

    else
    {
      v12 = HIBYTE(*&v3);
    }

    v18 = (v9 << 48) | (v12 << 56) | (v8 << 40) | (v7 << 32) | (v6 << 24) | (v5 << 16) | (v4 << 8) | v11;
  }

  memset(v17, 0, sizeof(v17));
  (*(*(this + *(*this - 304)) + 256))(&v15, this + *(*this - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v17, &v15, 1);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  v13 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__erase_unique<unsigned long>(this + 1, &v18) != 0;
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v17);
  return v13;
}

void sub_18614FB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ConfigurableImpl::GetAllParameters(AdobeXMPCore_Int::ConfigurableImpl *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(v20, 0, sizeof(v20));
  (*(*(this + *(*this - 304)) + 256))(&v18, this + *(*this - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v20, &v18, 0);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  std::vector<unsigned long long>::reserve(a2, *(this + 3));
  v4 = *(this + 1);
  v5 = this + 16;
  if (v4 != this + 16)
  {
    v6 = a2[1];
    do
    {
      v7 = a2[2];
      if (v6 >= v7)
      {
        v8 = *a2;
        v9 = v6 - *a2;
        v10 = v9 >> 3;
        v11 = (v9 >> 3) + 1;
        if (v11 >> 61)
        {
          std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
        }

        v12 = v7 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a2, v13);
        }

        *(8 * v10) = *(v4 + 4);
        v6 = (8 * v10 + 8);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v6;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6 = *(v4 + 4);
        v6 += 8;
      }

      a2[1] = v6;
      v15 = *(v4 + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(v4 + 2);
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      v4 = v16;
    }

    while (v16 != v5);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v20);
}

void sub_18614FD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  v9 = *v7;
  if (*v7)
  {
    *(v7 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void std::vector<unsigned long long>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a1, a2);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }
}

uint64_t AdobeXMPCore_Int::ConfigurableImpl::Size(AdobeXMPCore_Int::ConfigurableImpl *this)
{
  memset(v6, 0, sizeof(v6));
  (*(*(this + *(*this - 304)) + 256))(&v4, this + *(*this - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v6, &v4, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v2 = *(this + 3);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v6);
  return v2;
}

void sub_18614FEE8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::ConfigurableImpl::GetDataType(AdobeXMPCore_Int::ConfigurableImpl *this, const unint64_t *a2)
{
  v3 = (*(*(this + *(*this - 304)) + 208))(this + *(*this - 304), a2);
  v4 = v3;
  if (*(this + 48) == 1)
  {
    v5 = v3.i32[0] >> 8;
    v6 = v3.u8[2];
    v7 = v3.u8[3];
    v8 = HIDWORD(*&v3);
    v9 = *&v3 >> 40;
    v10 = vcgt_u8(0x1A1A1A1A1A1A1A1ALL, vadd_s8(v3, 0xBFBFBFBFBFBFBFBFLL));
    v11 = HIWORD(*&v3);
    if (v10.i8[0])
    {
      v12 = v3.i8[0] | 0x20;
    }

    else
    {
      v12 = v3.i8[0];
    }

    if (v10.i8[1])
    {
      LOBYTE(v5) = v3.i8[1] | 0x20;
    }

    if (v10.i8[2])
    {
      v6 = v3.i8[2] | 0x20;
    }

    if (v10.i8[3])
    {
      v7 = v3.i8[3] | 0x20;
    }

    if (v10.i8[4])
    {
      LOBYTE(v8) = v3.i8[4] | 0x20;
    }

    if (v10.i8[5])
    {
      LOBYTE(v9) = v3.i8[5] | 0x20;
    }

    if (v10.i8[6])
    {
      LOBYTE(v11) = v3.i8[6] | 0x20;
    }

    if (v10.i8[7])
    {
      v13 = v3.u8[7] | 0x20u;
    }

    else
    {
      v13 = HIBYTE(*&v3);
    }

    v4 = (v11 << 48) | (v13 << 56) | (v9 << 40) | (v8 << 32) | (v7 << 24) | (v6 << 16) | (v5 << 8) | v12;
  }

  memset(v25, 0, sizeof(v25));
  (*(*(this + *(*this - 304)) + 256))(&v23, this + *(*this - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v25, &v23, 0);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v24);
  }

  v16 = *(this + 2);
  v15 = this + 16;
  v14 = v16;
  if (!v16)
  {
    goto LABEL_31;
  }

  v17 = v15;
  do
  {
    v18 = *(v14 + 4);
    v19 = v18 >= v4;
    v20 = v18 < v4;
    if (v19)
    {
      v17 = v14;
    }

    v14 = *&v14[8 * v20];
  }

  while (v14);
  if (v17 != v15 && v4 >= *(v17 + 4))
  {
    v21 = *(v17 + 10);
  }

  else
  {
LABEL_31:
    v21 = 0;
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v25);
  return v21;
}

void sub_186150164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::ConfigurableImpl::SetAllowedKeys(AdobeXMPCore_Int::ConfigurableImpl *this, unint64_t *a2, uint64_t a3)
{
  memset(v9, 0, sizeof(v9));
  (*(*(this + *(*this - 304)) + 256))(&v7, this + *(*this - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v9, &v7, 1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  v6 = *(this + 4);
  if (v6)
  {
    std::__tree<unsigned long long>::destroy(*(this + 4), *(v6 + 8));
    MEMORY[0x186602850](v6, 0x1020C4062D53EE8);
    *(this + 4) = 0;
  }

  if (a2 && a3)
  {
    operator new();
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v9);
}

void sub_18615044C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ConfigurableImpl::SetAllowedValueTypesForKeys(void *a1, uint64_t a2, uint64_t a3)
{
  memset(v9, 0, sizeof(v9));
  (*(*(a1 + *(*a1 - 304)) + 256))(&v7, a1 + *(*a1 - 304));
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(v9, &v7, 1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  v6 = a1[5];
  if (v6)
  {
    std::__tree<unsigned long long>::destroy(a1[5], *(v6 + 8));
    MEMORY[0x186602850](v6, 0x1020C4062D53EE8);
    a1[5] = 0;
  }

  if (a2 && a3)
  {
    operator new();
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(v9);
}

void sub_186150744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(va);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl(AdobeXMPCore_Int::ConfigurableImpl *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 304)) = a2[1];
  *(this + *(*this - 216)) = a2[2];
  v4 = *(this + 4);
  if (v4)
  {
    std::__tree<unsigned long long>::destroy(*(this + 4), *(v4 + 8));
    MEMORY[0x186602850](v4, 0x1020C4062D53EE8);
    *(this + 4) = 0;
  }

  v5 = *(this + 5);
  if (v5)
  {
    std::__tree<unsigned long long>::destroy(*(this + 5), *(v5 + 8));
    MEMORY[0x186602850](v5, 0x1020C4062D53EE8);
    *(this + 5) = 0;
  }

  std::__tree<unsigned long long>::destroy(this + 8, *(this + 2));
}

void AdobeXMPCore_Int::NotifyError<BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, __n128 a8)
{
  v13 = 0;
  if (a6 > 7)
  {
    if (a6 == 8)
    {
      LOBYTE(v13) = *a7;
      AdobeXMPCore_Int::NotifyError<BOOL,char const*>(a1, a2, a3, a4, a5, 8u, &v13);
    }

    if (a6 == 16)
    {
      v12 = *a7;

      AdobeXMPCore_Int::NotifyError<BOOL,double>(a1, a2, a3, a4, a5, 0x10u, v12);
    }
  }

  else
  {
    switch(a6)
    {
      case 1:
        v10 = *a7;

        AdobeXMPCore_Int::NotifyError<BOOL,BOOL>(a1, a2, a3, a4, a5, 1u, v10);
      case 2:
        v11 = *a7;

        AdobeXMPCore_Int::NotifyError<BOOL,unsigned long long>(a1, a2, a3, a4, a5, 2u, v11);
      case 4:
        v8 = *a7;

        AdobeXMPCore_Int::NotifyError<BOOL,long long>(a1, a2, a3, a4, a5, 4u, v8);
    }
  }

  v9 = *a7;

  AdobeXMPCore_Int::NotifyError<BOOL,void *>(a1, a2, a3, a4, a5, a6, v9);
}

void AdobeXMPCore_Int::NotifyError<char const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, __n128 a8)
{
  v13 = 0;
  if (a6 > 7)
  {
    if (a6 == 8)
    {
      LOBYTE(v13) = *a7;
      AdobeXMPCore_Int::NotifyError<char const*,char const*>(a1, a2, a3, a4, a5, 8u, &v13);
    }

    if (a6 == 16)
    {
      v12 = *a7;

      AdobeXMPCore_Int::NotifyError<char const*,double>(a1, a2, a3, a4, a5, 0x10u, v12);
    }
  }

  else
  {
    switch(a6)
    {
      case 1:
        v10 = *a7;

        AdobeXMPCore_Int::NotifyError<char const*,BOOL>(a1, a2, a3, a4, a5, 1u, v10);
      case 2:
        v11 = *a7;

        AdobeXMPCore_Int::NotifyError<char const*,unsigned long long>(a1, a2, a3, a4, a5, 2u, v11);
      case 4:
        v8 = *a7;

        AdobeXMPCore_Int::NotifyError<char const*,long long>(a1, a2, a3, a4, a5, 4u, v8);
    }
  }

  v9 = *a7;

  AdobeXMPCore_Int::NotifyError<char const*,void *>(a1, a2, a3, a4, a5, a6, v9);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, __n128 a8)
{
  v13 = 0;
  if (a6 > 7)
  {
    if (a6 == 8)
    {
      LOBYTE(v13) = *a7;
      AdobeXMPCore_Int::NotifyError<unsigned long long,char const*>(a1, a2, a3, a4, a5, 8u, &v13);
    }

    if (a6 == 16)
    {
      v12 = *a7;

      AdobeXMPCore_Int::NotifyError<unsigned long long,double>(a1, a2, a3, a4, a5, 0x10u, v12);
    }
  }

  else
  {
    switch(a6)
    {
      case 1:
        v10 = *a7;

        AdobeXMPCore_Int::NotifyError<unsigned long long,BOOL>(a1, a2, a3, a4, a5, 1u, v10);
      case 2:
        v11 = *a7;

        AdobeXMPCore_Int::NotifyError<unsigned long long,unsigned long long>(a1, a2, a3, a4, a5, 2u, v11);
      case 4:
        v8 = *a7;

        AdobeXMPCore_Int::NotifyError<unsigned long long,long long>(a1, a2, a3, a4, a5, 4u, v8);
    }
  }

  v9 = *a7;

  AdobeXMPCore_Int::NotifyError<unsigned long long,void *>(a1, a2, a3, a4, a5, a6, v9);
}

void AdobeXMPCore_Int::NotifyError<long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, __n128 a8)
{
  v13 = 0;
  if (a6 > 7)
  {
    if (a6 == 8)
    {
      LOBYTE(v13) = *a7;
      AdobeXMPCore_Int::NotifyError<long long,char const*>(a1, a2, a3, a4, a5, 8u, &v13);
    }

    if (a6 == 16)
    {
      v12 = *a7;

      AdobeXMPCore_Int::NotifyError<long long,double>(a1, a2, a3, a4, a5, 0x10u, v12);
    }
  }

  else
  {
    switch(a6)
    {
      case 1:
        v10 = *a7;

        AdobeXMPCore_Int::NotifyError<long long,BOOL>(a1, a2, a3, a4, a5, 1u, v10);
      case 2:
        v11 = *a7;

        AdobeXMPCore_Int::NotifyError<long long,unsigned long long>(a1, a2, a3, a4, a5, 2u, v11);
      case 4:
        v8 = *a7;

        AdobeXMPCore_Int::NotifyError<long long,long long>(a1, a2, a3, a4, a5, 4u, v8);
    }
  }

  v9 = *a7;

  AdobeXMPCore_Int::NotifyError<long long,void *>(a1, a2, a3, a4, a5, a6, v9);
}

void AdobeXMPCore_Int::NotifyError<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, __n128 a7, __n128 a8)
{
  v13 = 0;
  if (a5 > 7)
  {
    if (a5 == 8)
    {
      LOBYTE(v13) = *a6;
      AdobeXMPCore_Int::NotifyError<double,char const*>(a1, a2, a3, a4, 8u, &v13, a7.n128_f64[0]);
    }

    if (a5 == 16)
    {
      v12 = *a6;

      AdobeXMPCore_Int::NotifyError<double,double>(a1, a2, a3, a4, 0x10u, a7.n128_f64[0], v12);
    }
  }

  else
  {
    switch(a5)
    {
      case 1:
        v10 = *a6;

        AdobeXMPCore_Int::NotifyError<double,BOOL>(a1, a2, a3, a4, 1u, v10, a7.n128_f64[0]);
      case 2:
        v11 = *a6;

        AdobeXMPCore_Int::NotifyError<double,unsigned long long>(a1, a2, a3, a4, 2u, v11, a7.n128_f64[0]);
      case 4:
        v8 = *a6;

        AdobeXMPCore_Int::NotifyError<double,long long>(a1, a2, a3, a4, 4u, v8, a7.n128_f64[0]);
    }
  }

  v9 = *a6;

  AdobeXMPCore_Int::NotifyError<double,void *>(a1, a2, a3, a4, a5, v9, a7.n128_f64[0]);
}

void AdobeXMPCore_Int::NotifyError<void *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, __n128 a8)
{
  v13 = 0;
  if (a6 > 7)
  {
    if (a6 == 8)
    {
      LOBYTE(v13) = *a7;
      AdobeXMPCore_Int::NotifyError<void *,char const*>(a1, a2, a3, a4, a5, 8u, &v13);
    }

    if (a6 == 16)
    {
      v12 = *a7;

      AdobeXMPCore_Int::NotifyError<void *,double>(a1, a2, a3, a4, a5, 0x10u, v12);
    }
  }

  else
  {
    switch(a6)
    {
      case 1:
        v10 = *a7;

        AdobeXMPCore_Int::NotifyError<void *,BOOL>(a1, a2, a3, a4, a5, 1u, v10);
      case 2:
        v11 = *a7;

        AdobeXMPCore_Int::NotifyError<void *,unsigned long long>(a1, a2, a3, a4, a5, 2u, v11);
      case 4:
        v8 = *a7;

        AdobeXMPCore_Int::NotifyError<void *,long long>(a1, a2, a3, a4, a5, 4u, v8);
    }
  }

  v9 = *a7;

  AdobeXMPCore_Int::NotifyError<void *,void *>(a1, a2, a3, a4, a5, a6, v9);
}

void AdobeXMPCore_Int::NotifyError<BOOL,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186151220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<BOOL,char const*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615156C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<BOOL,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861518B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<BOOL,long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186151BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<BOOL,double>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, double a7)
{
  v9 = a7;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186151F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<BOOL,void *>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615228C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861525D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,char const*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186152928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186152C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186152FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,double>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, double a7)
{
  v9 = a7;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615330C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<char const*,void *>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186153658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a5;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861539A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,char const*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a5;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186153CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v9 = a7;
  v10 = a5;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615402C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v9 = a7;
  v10 = a5;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615436C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,double>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, double a7)
{
  v10 = a5;
  v9 = a7;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861546B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<unsigned long long,void *>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a5;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861549F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a5;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186154D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,char const*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a5;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615508C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v9 = a7;
  v10 = a5;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861553CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v9 = a7;
  v10 = a5;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615570C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,double>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, double a7)
{
  v10 = a5;
  v9 = a7;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186155A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<long long,void *>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a5;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186155D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, double a7)
{
  v9 = a7;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861560E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,char const*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, double a7)
{
  v9 = a7;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615642C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, double a7)
{
  v10 = a7;
  v8 = 0;
  v9 = a6;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186156770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, double a7)
{
  v10 = a7;
  v8 = 0;
  v9 = a6;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186156AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,double>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, double a6, double a7)
{
  v9 = a7;
  v10 = a6;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186156DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<double,void *>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, double a7)
{
  v9 = a7;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615713C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186157484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,char const*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861577D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186157B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,long long>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v8 = 0;
  v9 = a7;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_186157E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,double>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, double a7)
{
  v9 = a7;
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861581A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::NotifyError<void *,void *>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = 0;
  v8 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_1861584F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AdobeXMPCommon::IConfigurable::eDataType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void AdobeXMPCore_Int::RDFDOMParserImpl::RDFDOMParserImpl(AdobeXMPCore_Int::RDFDOMParserImpl *this)
{
  v2 = (this + 16);
  *this = off_1EF4FA850;
  *(this + 6) = &off_1EF4FA998;
  *(this + 2) = &off_1EF4FA178;
  *(this + 13) = &unk_1EF4FA570;
  *(this + unk_1EF4FA090 + 16) = off_1EF4FA2D0;
  *(this + *(*(this + 2) - 312) + 16) = &off_1EF4FA418;
  *(this + *(*(this + 2) - 320) + 16) = &unk_1EF4FA570;
  AdobeXMPCore_Int::ConfigurableImpl::ConfigurableImpl(this + 48, off_1EF4F9A08);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = off_1EF4FB0E0;
  AdobeXMPCore_Int::DOMParserImpl::DOMParserImpl(v2, off_1EF4F9940);
}

void sub_186158870(_Unwind_Exception *a1)
{
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(v2, off_1EF4F9A20);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl(v1, off_1EF4F9A08);
  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::RDFDOMParserImpl::ParseAsNode()
{
  v4 = 0;
  v5 = 0;
  operator new();
}

void sub_186158AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(exception_object);
    a13 = 0;
    v18 = *(v15 + 8);
    if (v18)
    {
      if (*(v18 + 24))
      {
        *(v18 + 12) = *(a14 + 364);
      }
    }

    XMPUtils::MapXMPErrorToIError(*v17, &a13 + 1, &a13);
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl(AdobeXMPCore_Int::RDFDOMParserImpl *this)
{
  AdobeXMPCore_Int::DOMParserImpl::~DOMParserImpl((this + 16), off_1EF4F9940);
  AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl((this + 104), off_1EF4F9A20);
  AdobeXMPCore_Int::ConfigurableImpl::~ConfigurableImpl((this + 48), off_1EF4F9A08);
}

{
  AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl(this);

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl(void *a1)
{
  AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl((a1 + *(*a1 - 208)));
}

{
  AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl((a1 + *(*a1 - 208)));

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl(AdobeXMPCore_Int::RDFDOMParserImpl *this)
{
  AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl((this + *(*this - 48)));
}

{
  AdobeXMPCore_Int::RDFDOMParserImpl::~RDFDOMParserImpl((this + *(*this - 48)));

  JUMPOUT(0x186602850);
}

void AdobeXMPCore_Int::DOMParserImpl::~DOMParserImpl(AdobeXMPCore_Int::DOMParserImpl *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 368)) = a2[1];
  *(this + *(*this - 304)) = a2[2];
  *(this + *(*this - 216)) = a2[3];
  *(this + *(*this - 224)) = a2[4];
  *(this + *(*this - 232)) = a2[5];
  *(this + *(*this - 312)) = a2[6];
  *(this + *(*this - 320)) = a2[7];
  *(this + *(*this - 376)) = a2[8];
  *(this + *(*this - 384)) = a2[9];
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

void sub_186159218(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<XMPMeta>::shared_ptr[abi:fe200100]<XMPMeta,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<XMPMeta *,std::shared_ptr<XMPMeta>::__shared_ptr_default_delete<XMPMeta,XMPMeta>,std::allocator<XMPMeta>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

uint64_t std::__shared_ptr_pointer<XMPMeta *,std::shared_ptr<XMPMeta>::__shared_ptr_default_delete<XMPMeta,XMPMeta>,std::allocator<XMPMeta>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<XMPMeta *,std::shared_ptr<XMPMeta>::__shared_ptr_default_delete<XMPMeta,XMPMeta>,std::allocator<XMPMeta>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t AdobeXMPCore_Int::IError_I::AppendParameter(void *a1, uint64_t a2)
{
  v3 = a1 + *(*a1 - 304);
  v4 = (*(**a2 + 192))();
  v5 = (*(**a2 + 208))();
  v6 = *(*v3 + 128);

  return v6(v3, v4, v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IError_v1,unsigned int,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IError_v1,unsigned int,AdobeXMPCommon::IError_v1::eErrorDomain>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunction<AdobeXMPCommon::IError_v1,unsigned int,AdobeXMPCommon::IError_v1::eErrorSeverity>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  *a1 = 0;
  v5 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v5 + a4);
  }

  return a4(v5);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_186159AF4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186159AD8);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IUTF8String_v1 const*,AdobeXMPCommon::IUTF8String_v1 const,unsigned long long>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_186159EFC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x186159EE0);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IError_v1*,AdobeXMPCommon::IError_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 56)] + 16))(&v8[*(*v8 - 56)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 64)] + 16))(&v8[*(*v8 - 64)], 0x6E4572726F722020, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18615A278(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615A25CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IError_I::setNextError(AdobeXMPCore_Int::IError_I *this, AdobeXMPCommon::IError_v1 *a2, const AdobeXMPCommon::IError_v1 **a3)
{
  v5 = *(*this - 304);
  AdobeXMPCommon::IError_v1::MakeShared(&v8, a2);
  v6 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IError_v1*,AdobeXMPCommon::IError_v1,std::shared_ptr<AdobeXMPCommon::IError_v1> const&>(a3, this + v5, AdobeXMPCommon::IError_v1::SetNextError, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCommon/source/IError_I.cpp", 60, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18615A4CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCommon::IError_v1,AdobeXMPCommon::IError_v1*,AdobeXMPCommon::IError_v1,std::shared_ptr<AdobeXMPCommon::IError_v1> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 56)] + 16))(&v11[*(*v11 - 56)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 64)] + 16))(&v11[*(*v11 - 64)], 0x6E4572726F722020, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18615A654(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615A638);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IError_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

void *AdobeXMPCore_Int::IError_I::GetInterfacePointerInternal(void *this, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == 0x6E55544638537472)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        v6 = a3;
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x6E55544638537472, v6, exception);
      }

      return (this + *(*this - 304));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x6E4572726F722020, a2, v5);
    }

    return 0;
  }

  return this;
}

void AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(uint64_t a2@<X1>, int a3@<W2>, void *a6@<X8>)
{
  v7 = a2;
  v6 = a3;
  *a6 = 0;
  a6[1] = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a6@<X8>)
{
  v6 = a3;
  v7 = a2;
  *a6 = 0;
  a6[1] = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore_Int::IError_I::CreateClientCodeExceptionError(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void AdobeXMPCore_Int::ReportErrorAndContinueABISafe(AdobeXMPCore_Int *this, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5, const AdobeXMPCommon::IError_v1 **a6)
{
  v6 = 0;
  v7 = 0;
  AdobeXMPCore_Int::IError_I::CreateError();
}

void sub_18615B224(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, std::__shared_weak_count *a12)
{
  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v16 = *exception_ptr;
    v15 = *(exception_ptr + 1);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    *v12 = v16;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v15);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615B1D4);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateClientCodeExceptionError(&a11);
}

void std::vector<unsigned char>::__vallocate[abi:fe200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

unsigned __int16 *TIFF_MemoryReader::SortIFD(unsigned __int16 *result)
{
  v1 = result;
  v2 = *result;
  if (v2 < 2)
  {
    v6 = *result;
  }

  else
  {
    v3 = *(result + 1);
    v4 = *v3;
    v5 = 1;
    v6 = *result;
    do
    {
      v7 = &v3[6 * v5];
      v8 = *v7;
      if (v8 <= v4)
      {
        if (v8 == v4)
        {
          v9 = v7 - 6;
          v10 = 12 * (v2 - v5);
LABEL_8:
          result = memmove(v9, v7, v10);
          --v6;
          --v5;
        }

        else
        {
          v11 = &v3[6 * v5];
          v12 = 12 * v5 - 12 * v5;
          v13 = &v3[6 * v5];
          v14 = 1;
          while (1)
          {
            v15 = v11;
            v16 = v12;
            if (v5 + --v14 < 1)
            {
              break;
            }

            v11 -= 6;
            v12 += 12;
            v17 = v13 - 6;
            v18 = *(v13 - 6);
            v13 -= 6;
            if (v18 <= v8)
            {
              if (v18 == v8)
              {
                v19 = *v7;
                *(v17 + 2) = *(v7 + 2);
                *v17 = v19;
                v10 = 12 * (v2 - (v5 + 1));
                v9 = &v3[6 * v5];
                v7 = &v3[6 * v5 + 6];
                goto LABEL_8;
              }

              break;
            }
          }

          v20 = *v7;
          v21 = *(v7 + 2);
          result = memmove(v15 + 6, v15, v16);
          *v15 = v20;
          *(v15 + 2) = v21;
        }
      }

      else
      {
        v4 = *v7;
      }

      ++v5;
      v2 = v6;
    }

    while (v5 < v6);
  }

  *v1 = v6;
  return result;
}

BOOL TIFF_MemoryReader::GetIFD(uint64_t a1, unsigned int a2, void *a3)
{
  if (a2 >= 5)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "Invalid IFD requested";
    *(exception + 16) = 0;
  }

  v5 = a1 + 16 * a2;
  if (!a3)
  {
    return *(v5 + 112) != 0;
  }

  v6 = a3 + 1;
  std::__tree<unsigned long long>::destroy(a3, a3[1]);
  *a3 = v6;
  a3[2] = 0;
  *v6 = 0;
  v7 = *(v5 + 112);
  if (!*(v5 + 112))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(v5 + 120);
    v11 = v10 + v8;
    if (*(v10 + v8 + 2) - 14 >= 0xFFFFFFF3)
    {
      v20 = 0;
      v19 = 0uLL;
      v12 = *(v11 + 2);
      v13 = *(v11 + 4);
      LOWORD(v19) = *v11;
      v14 = kTIFF_TypeSizes[v12];
      WORD1(v19) = v12;
      LODWORD(v20) = v13;
      DWORD1(v19) = v13 / v14;
      if (*(v11 + 4) > 4u)
      {
        v15 = *(a1 + 96) + *(v10 + v8 + 8);
      }

      else
      {
        v15 = v10 + v8 + 8;
      }

      *(&v19 + 1) = v15;
      v21 = &v19;
      v16 = std::__tree<std::__value_type<unsigned short,TIFF_Manager::TagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_Manager::TagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_Manager::TagInfo>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a3, &v19, &std::piecewise_construct, &v21);
      *(v16 + 5) = v19;
      *(v16 + 14) = v20;
      v7 = *(v5 + 112);
    }

    ++v9;
    v8 += 12;
  }

  while (v9 < v7);
  return 1;
}

unsigned __int16 *TIFF_MemoryReader::FindTagInIFD(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3)
{
  if (a2 >= 5)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "Invalid IFD requested";
    *(exception + 16) = 0;
  }

  v3 = this + 16 * a2;
  v6 = *(v3 + 56);
  v4 = v3 + 112;
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = *(v4 + 1);
  while (v5 >= 2)
  {
    v8 = v5 >> 1;
    v9 = &v7[6 * (v5 >> 1)];
    v10 = *v9;
    v5 -= v5 >> 1;
    if (v10 > a3)
    {
      v5 = v8;
    }

    else
    {
      v7 += 6 * v8;
    }

    if (v10 == a3)
    {
      v7 = v9;
      break;
    }
  }

  if (*v7 == a3)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 *TIFF_MemoryReader::GetValueOffset(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 1) > 4u)
    {
      v6 = *(this + 12);
      v5 = v6 + *(result + 2);
    }

    else
    {
      v5 = result + 8;
      v6 = *(this + 12);
    }

    return (v5 - v6);
  }

  return result;
}

BOOL TIFF_MemoryReader::GetTag(TIFF_MemoryReader *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  TagInIFD = TIFF_MemoryReader::FindTagInIFD(a1, a2, a3);
  if (!TagInIFD)
  {
    return 0;
  }

  v7 = TagInIFD[1];
  v8 = (v7 - 1) < 0xD;
  if (a4 && (v7 - 1) <= 0xC)
  {
    v9 = *(TagInIFD + 1);
    *a4 = *TagInIFD;
    v10 = kTIFF_TypeSizes[v7];
    *(a4 + 2) = v7;
    *(a4 + 4) = v9 / v10;
    *(a4 + 16) = v9;
    if (*(TagInIFD + 1) > 4u)
    {
      v11 = (*(a1 + 12) + *(TagInIFD + 2));
    }

    else
    {
      v11 = TagInIFD + 4;
    }

    *(a4 + 8) = v11;
    return 1;
  }

  return v8;
}

uint64_t TIFF_MemoryReader::GetTag_Integer(uint64_t (**this)(unsigned __int16 *), unsigned int a2, unsigned int a3, unsigned int *a4)
{
  TagInIFD = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (!TagInIFD)
  {
    return 0;
  }

  v7 = TagInIFD[1];
  if (v7 > 0xD)
  {
    return 0;
  }

  v8 = *(TagInIFD + 1);
  if (kTIFF_TypeSizes[TagInIFD[1]] != v8)
  {
    return 0;
  }

  v9 = 0;
  if (TagInIFD[1] > 5u)
  {
    switch(v7)
    {
      case 6u:
        if (v8 > 4)
        {
          v13 = this[12] + *(TagInIFD + 2);
        }

        else
        {
          v13 = (TagInIFD + 4);
        }

        v15 = *v13;
        break;
      case 8u:
        if (v8 > 4)
        {
          v16 = (this[12] + *(TagInIFD + 2));
        }

        else
        {
          v16 = TagInIFD + 4;
        }

        v15 = this[1](v16);
        break;
      case 9u:
        goto LABEL_14;
      default:
        return v9;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 3)
      {
        v11 = this[1];
        goto LABEL_20;
      }

      if (v7 != 4)
      {
        return v9;
      }

LABEL_14:
      v11 = this[2];
LABEL_20:
      if (v8 > 4)
      {
        v14 = (this[12] + *(TagInIFD + 2));
      }

      else
      {
        v14 = TagInIFD + 4;
      }

      v15 = v11(v14);
      goto LABEL_32;
    }

    if (v8 > 4)
    {
      v12 = this[12] + *(TagInIFD + 2);
    }

    else
    {
      v12 = (TagInIFD + 4);
    }

    v15 = *v12;
  }

LABEL_32:
  if (a4)
  {
    *a4 = v15;
  }

  return 1;
}

uint64_t TIFF_MemoryReader::GetTag_Byte(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, unsigned __int8 *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 1 && *(result + 4) == 1)
    {
      if (a4)
      {
        *a4 = *(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_SByte(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, signed __int8 *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 6 && *(result + 4) == 1)
    {
      if (a4)
      {
        *a4 = *(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_Short(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, unsigned __int16 *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 3 && *(result + 4) == 2)
    {
      if (a4)
      {
        *a4 = (*(this + 1))(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_SShort(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, __int16 *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 8 && *(result + 4) == 2)
    {
      if (a4)
      {
        *a4 = (*(this + 1))(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_Long(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 4 && *(result + 4) == 4)
    {
      if (a4)
      {
        *a4 = (*(this + 2))(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_SLong(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, int *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 9 && *(result + 4) == 4)
    {
      if (a4)
      {
        *a4 = (*(this + 2))(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int16 *TIFF_MemoryReader::GetTag_Rational(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(a1, a2, a3);
  if (result)
  {
    if (result[1] == 5 && *(result + 1) == 8)
    {
      if (a4)
      {
        v7 = *(a1 + 96) + *(result + 2);
        *a4 = (*(a1 + 16))(v7);
        a4[1] = (*(a1 + 16))(v7 + 4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int16 *TIFF_MemoryReader::GetTag_SRational(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(a1, a2, a3);
  if (result)
  {
    if (result[1] == 10 && *(result + 1) == 8)
    {
      if (a4)
      {
        v7 = *(a1 + 96) + *(result + 2);
        *a4 = (*(a1 + 16))(v7);
        a4[1] = (*(a1 + 16))(v7 + 4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_Float(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, float *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 11 && *(result + 4) == 4)
    {
      if (a4)
      {
        *a4 = (*(this + 3))(result + 8);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_Double(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, double *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 12 && *(result + 4) == 8)
    {
      if (a4)
      {
        *a4 = (*(this + 4))(*(this + 12) + *(result + 8));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_ASCII(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, const char **a4, unsigned int *a5)
{
  result = TIFF_MemoryReader::FindTagInIFD(this, a2, a3);
  if (result)
  {
    if (*(result + 2) == 2)
    {
      if (a4)
      {
        if (*(result + 4) > 4u)
        {
          v9 = (*(this + 12) + *(result + 8));
        }

        else
        {
          v9 = (result + 8);
        }

        *a4 = v9;
      }

      if (a5)
      {
        *a5 = *(result + 4);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFF_MemoryReader::GetTag_EncodedString(TIFF_MemoryReader *a1, unsigned int a2, unsigned int a3, std::string *a4)
{
  result = TIFF_MemoryReader::FindTagInIFD(a1, a2, a3);
  if (result)
  {
    if (*(result + 2) == 7)
    {
      if (a4)
      {
        v7 = *(result + 4);
        if (v7 > 4)
        {
          v8 = (*(a1 + 12) + *(result + 8));
        }

        else
        {
          v8 = (result + 8);
        }

        return TIFF_Manager::DecodeString(a1, v8, v7, a4);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void TIFF_MemoryReader::ParseMemoryStream(void **this, const void *a2, size_t size, char a4, int a5)
{
  v7 = size;
  if (*(this + 88) == 1)
  {
    free(this[12]);
  }

  v10 = 0;
  *(this + 88) = 0;
  this[12] = 0;
  *(this + 26) = 0;
  do
  {
    v11 = &this[v10];
    *(v11 + 56) = 0;
    v11[15] = 0;
    v10 += 2;
  }

  while (v10 != 10);
  if (!v7)
  {
    return;
  }

  if (a4)
  {
    if (v7 >= 0x6400001)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 206;
      v39 = "Outrageous length for memory-based TIFF";
    }

    else
    {
      v12 = malloc_type_malloc(v7, 0x100004077774924uLL);
      this[12] = v12;
      if (v12)
      {
        memcpy(v12, a2, v7);
        *(this + 88) = 1;
        goto LABEL_11;
      }

      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 15;
      v39 = "Out of memory";
    }

    exception[1] = v39;
    *(exception + 16) = 0;
  }

  this[12] = a2;
LABEL_11:
  *(this + 26) = v7;
  v13 = v7 - 6;
  if (a5)
  {
    *(this + 73) = 1;
    this[1] = GetUns16LE;
    this[2] = GetUns32LE;
    this[3] = GetFloatLE;
    this[4] = GetDoubleLE;
    this[5] = PutUns16LE;
    this[6] = PutUns32LE;
    this[7] = PutFloatLE;
    this[8] = PutDoubleLE;
    v14 = this;
    v15 = 0;
    v16 = 1;
    goto LABEL_15;
  }

  v17 = TIFF_Manager::CheckTIFFHeader(this, this[12], v7);
  if (v17)
  {
    v15 = v17;
    v14 = this;
    v16 = 0;
LABEL_15:
    v18 = TIFF_MemoryReader::ProcessOneIFD(v14, v15, 0, v16);
    v19 = v18;
    if (v18)
    {
      if (IsOffsetValid(v18, 8u, v13))
      {
        TIFF_MemoryReader::ProcessOneIFD(this, v19, 1u, 0);
      }

      else
      {
        v40 = 206;
        v41 = "Bad IFD offset";
        v42 = 0;
        (*(*this + 33))(this, 0, &v40);
      }
    }
  }

  v20 = *(this + 56);
  if (*(this + 56))
  {
    v21 = this[15];
    v22 = *(this + 56);
    while (v22 >= 2)
    {
      v23 = v22 >> 1;
      v24 = &v21[6 * (v22 >> 1)];
      v25 = *v24;
      v22 -= v22 >> 1;
      if (v25 > 0x8769)
      {
        v22 = v23;
      }

      else
      {
        v21 += 6 * v23;
      }

      if (v25 == 34665)
      {
        v21 = v24;
        goto LABEL_28;
      }
    }

    if (*v21 != 34665)
    {
      goto LABEL_31;
    }

LABEL_28:
    if (v21[1] == 4 && *(v21 + 1) == 4)
    {
      v26 = (this[2])(v21 + 4);
      TIFF_MemoryReader::ProcessOneIFD(this, v26, 2u, 0);
      v20 = *(this + 56);
    }

LABEL_31:
    if (v20)
    {
      v27 = this[15];
      while (v20 >= 2)
      {
        v28 = v20 >> 1;
        v29 = &v27[6 * (v20 >> 1)];
        v30 = *v29;
        v20 -= v20 >> 1;
        if (v30 > 0x8825)
        {
          v20 = v28;
        }

        else
        {
          v27 += 6 * v28;
        }

        if (v30 == 34853)
        {
          v27 = v29;
          goto LABEL_40;
        }
      }

      if (*v27 != 34853)
      {
        goto LABEL_45;
      }

LABEL_40:
      if (v27[1] == 4 && *(v27 + 1) == 4)
      {
        v31 = (this[2])(v27 + 4);
        if (IsOffsetValid(v31, 8u, v13))
        {
          TIFF_MemoryReader::ProcessOneIFD(this, v31, 3u, 0);
        }

        else
        {
          v40 = 206;
          v41 = "Bad IFD offset";
          v42 = 0;
          (*(*this + 33))(this, 0, &v40);
        }
      }
    }
  }

LABEL_45:
  v32 = *(this + 72);
  if (*(this + 72))
  {
    v33 = this[19];
    while (v32 >= 2)
    {
      v34 = v32 >> 1;
      v35 = &v33[6 * (v32 >> 1)];
      v36 = *v35;
      v32 -= v32 >> 1;
      if (v36 > 0xA005)
      {
        v32 = v34;
      }

      else
      {
        v33 += 6 * v34;
      }

      if (v36 == 40965)
      {
        v33 = v35;
        goto LABEL_54;
      }
    }

    if (*v33 != 40965)
    {
      return;
    }

LABEL_54:
    if (v33[1] == 4 && *(v33 + 1) == 4)
    {
      v37 = (this[2])(v33 + 4);
      if (IsOffsetValid(v37, 8u, v13))
      {
        TIFF_MemoryReader::ProcessOneIFD(this, v37, 4u, 0);
      }

      else
      {
        v40 = 206;
        v41 = "Bad IFD offset";
        v42 = 0;
        (*(*this + 33))(this, 0, &v40);
      }
    }
  }
}

uint64_t TIFF_MemoryReader::ProcessOneIFD(TIFF_MemoryReader *this, unsigned int a2, unsigned int a3, int a4)
{
  if (a4)
  {
    if (*(this + 26) >= a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    v26 = 206;
    v27 = "Bad IFD offset";
    v28 = 0;
    (*(*this + 264))(this, 2, &v26);
    goto LABEL_7;
  }

  if (a2 < 8 || *(this + 26) - 6 < a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = *(this + 12);
  v8 = v7 + a2;
  v9 = (*(this + 1))(v8);
  v10 = v9;
  if ((v9 & 0x8000) != 0)
  {
    v26 = 206;
    v27 = "Outrageous IFD count";
    v28 = 0;
    (*(*this + 264))(this, 2, &v26);
  }

  v11 = this + 16 * a3;
  if (12 * v9 + 6 > *(this + 26) - a2)
  {
    v26 = 206;
    v27 = "Out of bounds IFD";
    v28 = 0;
    (*(*this + 264))(this, 2, &v26);
  }

  v12 = (4 * ((3 * v9) & 0x3FFFF)) | 2;
  *(v11 + 56) = v10;
  *(v11 + 15) = v8 + 2;
  if (!v10)
  {
    return (*(this + 2))(v8 + v12);
  }

  v13 = 0;
  v14 = v10;
  v15 = *(this + 73);
  v16 = (a2 + v7 + 6);
  v17 = -1;
  do
  {
    v18 = *(v16 - 2);
    if (v15)
    {
      v19 = *(v16 - 1);
    }

    else
    {
      v18 = __rev16(v18);
      *(v16 - 2) = v18;
      v19 = bswap32(*(v16 - 1)) >> 16;
      *(v16 - 1) = v19;
      *v16 = bswap32(*v16);
    }

    v20 = v17 >= v18;
    if ((v19 - 14) >= 0xFFF3u)
    {
      v21 = *v16 * kTIFF_TypeSizes[v19];
      *v16 = v21;
      if (v21 >= 5)
      {
        v22 = v16[1];
        if ((v15 & 1) == 0)
        {
          v22 = bswap32(v22);
          v16[1] = v22;
        }

        if (v22 < 8 || (v23 = *(this + 26), v23 <= v22) || v21 > v23 - v22)
        {
          *v16 = 0;
        }
      }
    }

    v13 |= v20;
    v16 += 3;
    v17 = v18;
    --v14;
  }

  while (v14);
  v24 = (*(this + 2))(v8 + v12);
  if (v13)
  {
    TIFF_MemoryReader::SortIFD(v11 + 56);
  }

  return v24;
}

void TIFF_MemoryReader::SetTag(TIFF_MemoryReader *this, unsigned __int8 a2, unsigned __int16 a3, unsigned __int16 a4, unsigned int a5, const void *a6)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

void TIFF_MemoryReader::DeleteTag(TIFF_MemoryReader *this)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

void TIFF_MemoryReader::SetTag_EncodedString()
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

void TIFF_MemoryReader::ParseFileStream()
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

void TIFF_MemoryReader::IntegrateFromPShop6(TIFF_MemoryReader *this, const void *a2)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

uint64_t TIFF_MemoryReader::UpdateMemoryStream(TIFF_MemoryReader *this, void **a2)
{
  if (a2)
  {
    *a2 = *(this + 12);
  }

  return *(this + 26);
}

void TIFF_MemoryReader::UpdateFileStream()
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = 9;
  exception[1] = "Not appropriate for TIFF_Reader";
  *(exception + 16) = 0;
}

void TIFF_MemoryReader::~TIFF_MemoryReader(void **this)
{
  *this = &unk_1EF4FB250;
  if (*(this + 88) == 1)
  {
    free(this[12]);
  }
}

{
  *this = &unk_1EF4FB250;
  if (*(this + 88) == 1)
  {
    free(this[12]);
  }

  JUMPOUT(0x186602850);
}

uint64_t *std::__tree<std::__value_type<unsigned short,TIFF_Manager::TagInfo>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,TIFF_Manager::TagInfo>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,TIFF_Manager::TagInfo>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *AdobeXMPCore_Int::IDOMSerializer_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63444F4D53726C7ALL)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63444F4D53726C7ALL, a3, exception);
      }

      return (this + *(*this - 288));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63444F4D53726C7ALL, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMSerializer_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMSerializer_v1,AdobeXMPCore::IDOMSerializer_v1*,AdobeXMPCore::IDOMSerializer_v1>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *), uint64_t a4)
{
  *a1 = 0;
  v8 = 0;
  v9 = 0;
  v4 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v4 + a3);
  }

  a3(&v8, v4);
  if (v8)
  {
    v5 = (*(*&v8[*(*v8 - 224)] + 16))(&v8[*(*v8 - 224)]);
    (*(*v5 + 40))(v5);
    v6 = (*(*&v8[*(*v8 - 232)] + 16))(&v8[*(*v8 - 232)], 0x63444F4D53726C7ALL, 1);
  }

  else
  {
    v6 = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  return v6;
}

void sub_18615CFF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615CFDCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::IDOMSerializer_I::serialize(AdobeXMPCore_Int::IDOMSerializer_I *this, AdobeXMPCore::INode_v1 *a2, const AdobeXMPCore::INameSpacePrefixMap_v1 *a3, const AdobeXMPCommon::IError_v1 **a4)
{
  v7 = *(*this - 288);
  AdobeXMPCore::INode_v1::MakeShared(&v12, a2, a2);
  AdobeXMPCore::INameSpacePrefixMap_v1::MakeShared(&v14, a3, v8);
  v11 = v14;
  v9 = AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMSerializer_v1,AdobeXMPCommon::IUTF8String_v1 *,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(a4, this + v7, AdobeXMPCore::IDOMSerializer_v1::Serialize, 0, "/Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/IDOMSerializer_I.cpp", 59, &v12, &v11);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v11 + 1));
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  return v9;
}

void sub_18615D274(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMSerializer_v1,AdobeXMPCommon::IUTF8String_v1 *,AdobeXMPCommon::IUTF8String_v1,std::shared_ptr<AdobeXMPCore::INode_v1> const&,std::shared_ptr<AdobeXMPCore::INameSpacePrefixMap_v1 const> const&>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *a1 = 0;
  v13 = 0;
  v14 = 0;
  v9 = (a2 + (a4 >> 1));
  if (a4)
  {
    v8 = *(*v9 + a3);
  }

  v8(&v13, v9, a7, a8);
  if (v13)
  {
    v10 = (*(*&v13[*(*v13 - 56)] + 16))(&v13[*(*v13 - 56)]);
    (*(*v10 + 40))(v10);
    v11 = (*(*&v13[*(*v13 - 64)] + 16))(&v13[*(*v13 - 64)], 0x6E55544638537472, 1);
  }

  else
  {
    v11 = 0;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  return v11;
}

void sub_18615D418(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615D3FCLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void *AdobeXMPCore_Int::IDOMImplementationRegistry_I::GetInterfacePointerInternal(void *this, uint64_t a2, int a3, int a4)
{
  if (a2 == 0x63444F4D52677374)
  {
    if (a3 != -1)
    {
      if (a3 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        AdobeXMPCore_Int::IError_I::CreateInterfaceVersionNotAvailableError(0x63444F4D52677374, a3, exception);
      }

      return (this + *(*this - 152));
    }
  }

  else
  {
    if (a4)
    {
      v5 = __cxa_allocate_exception(0x10uLL);
      AdobeXMPCore_Int::IError_I::CreateInterfaceNotAvailableError(0x63444F4D52677374, a2, v5);
    }

    return 0;
  }

  return this;
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMImplementationRegistry_I,void *,void *,unsigned long long,unsigned int>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMImplementationRegistry_v1,AdobeXMPCore::IDOMParser_v1 *,AdobeXMPCore::IDOMParser_v1,char const*>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 224)] + 16))(&v11[*(*v11 - 224)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 232)] + 16))(&v11[*(*v11 - 232)], 0x63444F4D50727372, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18615DAB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615DA9CLL);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

uint64_t AdobeXMPCore_Int::CallConstUnSafeFunctionReturningSharedPointer<AdobeXMPCore::IDOMImplementationRegistry_v1,AdobeXMPCore::IDOMSerializer_v1 *,AdobeXMPCore::IDOMSerializer_v1,char const*>(void *a1, uint64_t a2, void (*a3)(char **__return_ptr, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  v11 = 0;
  v12 = 0;
  v7 = (a2 + (a4 >> 1));
  if (a4)
  {
    a3 = *(*v7 + a3);
  }

  a3(&v11, v7, a7);
  if (v11)
  {
    v8 = (*(*&v11[*(*v11 - 224)] + 16))(&v11[*(*v11 - 224)]);
    (*(*v8 + 40))(v8);
    v9 = (*(*&v11[*(*v11 - 232)] + 16))(&v11[*(*v11 - 232)], 0x63444F4D53726C7ALL, 1);
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  return v9;
}

void sub_18615DE34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a2 == 2)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    v15 = *exception_ptr;
    v14 = exception_ptr[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __cxa_begin_catch(a1);
    v16 = (*(*v15 + 200))(v15);
    *v10 = v16;
    v17 = (*(*&v16[*(*v16 - 56)] + 16))(&v16[*(*v16 - 56)]);
    (*(*v17 + 40))(v17);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    }

    __cxa_end_catch();
    JUMPOUT(0x18615DE18);
  }

  __cxa_begin_catch(a1);
  AdobeXMPCore_Int::IError_I::CreateUnknownExceptionCaughtError(&a9);
}

void sub_18615E098(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMImplementationRegistry_I,unsigned int,BOOL,char const*,std::shared_ptr<AdobeXMPCore::IDOMParser_v1 const> const&>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

void sub_18615E2DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  __cxa_call_unexpected(a1);
}

uint64_t AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMImplementationRegistry_I,unsigned int,BOOL,char const*,std::shared_ptr<AdobeXMPCore::IDOMSerializer_v1 const> const&>(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  v9 = (a2 + (a5 >> 1));
  if (a5)
  {
    a4 = *(*v9 + a4);
  }

  return a4(v9, a8, a9);
}

void sub_18615E4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_18615E590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::CallUnSafeFunction<AdobeXMPCore_Int::IDOMImplementationRegistry_I,void *,void *,unsigned long long,unsigned int>(void *a1, void *a2)
{
  exception_ptr = __cxa_get_exception_ptr(a1);
  v6 = *exception_ptr;
  v5 = exception_ptr[1];
  if (v5)
  {
    OUTLINED_FUNCTION_1_20();
  }

  __cxa_begin_catch(a1);
  *a2 = (*(*v6 + 200))(v6);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_0();
  (*(v7 + 16))();
  OUTLINED_FUNCTION_0_0();
  (*(v8 + 40))();
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  __cxa_end_catch();
}

void *virtual thunk toAdobeXMPCore_Int::SharedObjectImpl::Acquire(void *this)
{
  v1 = (this + *(*this - 24));
  if (atomic_load(v1 + 2))
  {
    atomic_fetch_add(v1 + 2, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    atomic_fetch_add(v1 + 1, 1uLL);
  }

  return this;
}

unint64_t *virtual thunk toAdobeXMPCore_Int::SharedObjectImpl::Release(AdobeXMPCore_Int::SharedObjectImpl *this)
{
  result = (this + *(*this - 32));
  v2 = atomic_load(result + 1);
  if (!v2 || atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    return (*(*result + 32))();
  }

  return result;
}

void AdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(AdobeXMPCore_Int::SharedObjectImpl *this)
{
}

{

  JUMPOUT(0x186602850);
}

void virtual thunk toAdobeXMPCore_Int::SharedObjectImpl::~SharedObjectImpl(AdobeXMPCore_Int::SharedObjectImpl *this)
{
}

{

  JUMPOUT(0x186602850);
}

uint64_t AdobeXMPCore_Int::SharedObjectImpl::AcquireInternal(uint64_t this)
{
  atomic_fetch_add((this + 16), 1uLL);
  atomic_fetch_add((this + 8), 1uLL);
  return this;
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::RemovePrefix(uint64_t **this, char *__s, char *a3)
{
  if (AdobeXMPCore_Int::VerifyParameters(1, 0, __s, 0, a3, 0))
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
  }

  return 0;
}

void sub_18615E9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a12);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::RemoveNameSpace(uint64_t **this, const char *a2, size_t a3)
{
  if (AdobeXMPCore_Int::VerifyParameters(0, 1, 0, a2, 0, a3))
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
  }

  return 0;
}

void sub_18615EB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a12);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::IsPrefixPresent(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this, char *__s, char *a3)
{
  if (AdobeXMPCore_Int::VerifyParameters(1, 0, __s, 0, a3, 0))
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
  }

  return 0;
}

void sub_18615ECA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::IsNameSpacePresent(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this, const char *a2, size_t a3)
{
  if (AdobeXMPCore_Int::VerifyParameters(0, 1, 0, a2, 0, a3))
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
  }

  return 0;
}

void sub_18615EDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::NameSpacePrefixMapImpl::GetNameSpace(char *__s@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  if (AdobeXMPCore_Int::VerifyParameters(1, 0, __s, 0, a3, 0))
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String();
  }

  *a4 = 0;
  a4[1] = 0;
}

void sub_18615EEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&a10);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  _Unwind_Resume(a1);
}

void AdobeXMPCore_Int::NameSpacePrefixMapImpl::GetNameSpace(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  v9 = 0;
  if (!AdobeXMPCore_Int::VerifyParameters(1, 0, a2, &v8))
  {
    goto LABEL_7;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(&v8, a1 + *(*a1 - 192) + 8, 1);
  v6 = std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::find<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>((a1 + 4), a2);
  if (a1 + 5 == v6)
  {
    AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v8);
LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v7 = v6[7];
  *a3 = v6[6];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(&v8);
}