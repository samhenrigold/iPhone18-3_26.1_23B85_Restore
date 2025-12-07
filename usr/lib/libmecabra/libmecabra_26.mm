void sub_299330B98(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  v90[16] = *MEMORY[0x29EDCA608];
  if (theString)
  {
    Length = CFStringGetLength(theString);
  }

  else
  {
    Length = 0;
  }

  v7 = *(a1 + 168);
  v8 = *(*(v7 + 88) + 8);
  if (v8)
  {
    v9 = Length - 13 >= 0xFFFFFFFFFFFFFFF5;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return;
  }

  if (Length <= 3)
  {
    if (!sub_299322114(*(*(v7 + 88) + 8), theString))
    {
      v70 = sub_29925A68C();

      sub_29925AA0C(v70, 1, theString, a3);
      return;
    }

    v7 = *(a1 + 168);
  }

  v78 = a3;
  __src = 0;
  v84 = 0;
  v85 = 0;
  v79 = a1;
  v10 = *(a1 + 56);
  v81 = *(*(v7 + 88) + 8);
  *__p = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v10;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, theString, __p, v90, 16, v8);
  if (v14)
  {
    v15 = 0;
    v80 = 0;
    v16 = *v87;
LABEL_14:
    v17 = 0;
    while (1)
    {
      if (*v87 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = objc_msgSend_rawCandidate(*(__p[1] + v17), v11, v12, v13);
      v19 = v18;
      if (!v18)
      {
        break;
      }

      v20 = *v18;
      v21 = __dynamic_cast(v18, &unk_2A1F64300, &unk_2A1F752F0, 0);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v23 = (*(v20 + 32))(v19);
      v24 = v23;
      if (!v23)
      {
        break;
      }

      v25 = CFStringGetLength(v23);
      if ((*(*v22 + 96))(v22) == 76)
      {
        if (v25 > 4)
        {
          break;
        }

        if (v25 >= 2 && v25 > v15 && (sub_299322114(v81, v24) & 1) == 0)
        {
          v15 = v25;
          v80 = v24;
          if (v25 == 4)
          {
            goto LABEL_62;
          }
        }
      }

      v27 = (*(*v22 + 568))(v22);
      if (!v27 || (v29 = *v27, v28 = *(v27 + 8), *v27 == v28))
      {
        v36 = v84;
        if (v84 >= v85)
        {
          v38 = __src;
          v39 = v84 - __src;
          v40 = (v84 - __src) >> 3;
          v41 = v40 + 1;
          if ((v40 + 1) >> 61)
          {
LABEL_95:
            sub_299212A8C();
          }

          v42 = v85 - __src;
          if ((v85 - __src) >> 2 > v41)
          {
            v41 = v42 >> 2;
          }

          v9 = v42 >= 0x7FFFFFFFFFFFFFF8;
          v43 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v9)
          {
            v43 = v41;
          }

          if (v43)
          {
            sub_299236FB8(&__src, v43);
          }

          *(8 * v40) = v25;
          v37 = 8 * v40 + 8;
          memcpy(0, v38, v39);
          v44 = __src;
          __src = 0;
          v84 = v37;
          v85 = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        else
        {
          *v84 = v25;
          v37 = (v36 + 8);
        }

        v84 = v37;
      }

      else
      {
        v30 = v28 - v29;
        v31 = (v28 - v29) >> 3;
        if (v31 >= 1)
        {
          v32 = v84;
          if ((v85 - v84) >= v30)
          {
            do
            {
              v35 = *v29;
              v29 += 8;
              *v32 = v35;
              v32 += 8;
            }

            while (v29 != v28);
            v84 = v32;
          }

          else
          {
            v33 = v31 + ((v84 - __src) >> 3);
            if (v33 >> 61)
            {
              goto LABEL_95;
            }

            if ((v85 - __src) >> 2 > v33)
            {
              v33 = (v85 - __src) >> 2;
            }

            if (v85 - __src >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v33;
            }

            if (v34)
            {
              sub_299236FB8(&__src, v34);
            }

            v45 = 8 * ((v84 - __src) >> 3);
            v46 = (v45 + v30);
            v47 = v45;
            do
            {
              v48 = *v29;
              v29 += 8;
              *v47++ = v48;
              v30 -= 8;
            }

            while (v30);
            memcpy(v46, v32, v84 - v32);
            v49 = &v46[v84 - v32];
            v50 = v32 - __src;
            v51 = (v45 - (v32 - __src));
            memcpy(v51, __src, v50);
            v52 = __src;
            __src = v51;
            v84 = v49;
            v85 = 0;
            if (v52)
            {
              operator delete(v52);
            }
          }
        }
      }

      if (++v17 == v14)
      {
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, __p, v90, 16);
        v14 = v53;
        if (!v53)
        {
          v24 = v80;
          if (!v80)
          {
            goto LABEL_63;
          }

LABEL_62:
          v54 = sub_29925A68C();
          sub_29925AA0C(v54, 1, v24, v78);
          break;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_63:
    v55 = __src;
    if (__src == v84)
    {
      v60 = 0;
      v58 = 0;
      v57 = 0;
      v56 = 0;
    }

    else
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      do
      {
        v62 = *v55++;
        v61 = v62;
        v63 = v62 + v60;
        v64 = v62 + v59;
        v65 = v60 > 1;
        v66 = v60 > v57;
        v67 = !v65 || !v66;
        if (v65 && v66)
        {
          v68 = v60;
        }

        else
        {
          v68 = v57;
        }

        if (v67)
        {
          v69 = v56;
        }

        else
        {
          v69 = v58;
        }

        v59 = v64;
        if (v61 >= 3)
        {
          v60 = 0;
        }

        else
        {
          v60 = v63;
        }

        if (v61 >= 3)
        {
          v58 = v64;
          v57 = v68;
          v56 = v69;
        }
      }

      while (v55 != v84);
    }

    v71 = v60 > 1;
    v72 = v60 > v57;
    if (v71 && v72)
    {
      v73 = v60;
    }

    else
    {
      v73 = v57;
    }

    if (v71 && v72)
    {
      v74 = v58;
    }

    else
    {
      v74 = v56;
    }

    if (v73)
    {
      if (v74 + v73 <= CFStringGetLength(theString))
      {
        v92.location = v74;
        v92.length = v73;
        v75 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], theString, v92);
        v76 = v75;
        if (v75)
        {
          v77 = CFStringGetLength(v75);
          (*(**(*(v79 + 168) + 120) + 16))(*(*(v79 + 168) + 120), v76, 0, v77);
          sub_299276A84(v76);
        }
      }
    }
  }

  if (__src)
  {
    v84 = __src;
    operator delete(__src);
  }
}

void sub_2993319E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *sub_299331ABC()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, @"DynamicPhraseLexicon_zh_Hant_pinyin.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_zh_Hant_pinyin.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_zh_Hant_pinyin.dictionary");
  CFArrayAppendValue(Mutable, @"StructuralPinyinLearning_zh_Hant_pinyin.db");
  CFArrayAppendValue(Mutable, @"StructuralPinyinLearning_zh_Hant_pinyin.dictionary");
  CFArrayAppendValue(Mutable, @"facemark.dat");
  return Mutable;
}

__CFArray *sub_299331B70(uint64_t a1, const __CFURL *a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v4 = sub_2992772AC(a2, @"PhraseLearning_zh_Hant_pinyin.db");
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v5);
  }

  v6 = sub_2992772AC(a2, @"PhraseLearning_zh_Hant_pinyin.dictionary");
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v7);
  }

  v8 = sub_2992772AC(a2, @"StructuralPinyinLearning_zh_Hant_pinyin.dictionary");
  if (v8)
  {
    v9 = v8;
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v9);
  }

  return Mutable;
}

void sub_299331D98(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x81C40B8603338);
  sub_29932EA00(v1);
  _Unwind_Resume(a1);
}

__CFArray *sub_299331DCC()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, @"DynamicPhraseLexicon_zh_Hant_zhuyin.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_zh_Hant_zhuyin.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_zh_Hant_zhuyin.dictionary");
  CFArrayAppendValue(Mutable, @"StructuralZhuyinLearning_zh_Hant_zhuyin.db");
  CFArrayAppendValue(Mutable, @"StructuralZhuyinLearning_zh_Hant_zhuyin.dictionary");
  CFArrayAppendValue(Mutable, @"facemark.dat");
  return Mutable;
}

__CFArray *sub_299331E80(uint64_t a1, const __CFURL *a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v4 = sub_2992772AC(a2, @"PhraseLearning_zh_Hant_zhuyin.db");
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v5);
  }

  v6 = sub_2992772AC(a2, @"PhraseLearning_zh_Hant_zhuyin.dictionary");
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v7);
  }

  v8 = sub_2992772AC(a2, @"StructuralZhuyinLearning_zh_Hant_zhuyin.dictionary");
  if (v8)
  {
    v9 = v8;
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v9);
  }

  return Mutable;
}

void sub_299331FE8(uint64_t a1)
{
  sub_29932EA00(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29933202C(uint64_t a1)
{
  sub_29932EA00(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299332078(uint64_t a1)
{
  sub_29932EA00(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993320BC(uint64_t a1)
{
  sub_29932EA00(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993320FC(void *a1, const void *a2, const void *a3, const void *a4, const void *a5, int a6, uint64_t a7, int a8)
{
  v13 = sub_29933219C(a1, a2, a3, a7);
  *v13 = &unk_2A1F72720;
  v13[4] = a4;
  v13[5] = a5;
  *(v13 + 12) = a6;
  *(v13 + 13) = a8;
  if (a4)
  {
    CFRetain(a4);
    a5 = a1[5];
  }

  if (a5)
  {
    CFRetain(a5);
  }

  return a1;
}

void *sub_29933219C(void *a1, CFTypeRef cf, CFTypeRef a3, uint64_t a4)
{
  *a1 = &unk_2A1F72768;
  a1[1] = cf;
  a1[2] = a3;
  a1[3] = a4;
  if (cf)
  {
    CFRetain(cf);
    a3 = a1[2];
  }

  if (a3)
  {
    CFRetain(a3);
  }

  return a1;
}

void *sub_2993321FC(void *a1)
{
  *a1 = &unk_2A1F72768;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_299332258(void *a1)
{
  sub_2993322CC(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299332294(void *a1)
{
  sub_2993321FC(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993322CC(void *a1)
{
  *a1 = &unk_2A1F72720;
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  return sub_2993321FC(a1);
}

uint64_t *sub_299332338(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_2992C9EDC(result, a4);
  }

  return result;
}

void sub_2993323A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29921EB1C(&a9);
  _Unwind_Resume(a1);
}

char *sub_2993323C0(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_2991A110C(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 6);
      *(v4 + 27) = *(v6 + 27);
      *(v4 + 6) = v9;
      v6 += 2;
      v4 = v8 + 32;
      v14 = v8 + 32;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_2992C9FEC(v11);
  return v4;
}

id sub_299332494(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x29EDB9F50], a2, @"了着还的我是你不在个有和啊他与她没", a4);
  qword_2A1461050 = result;
  return result;
}

uint64_t sub_299332538(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F727A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_29933258C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F72818))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299332648(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F72838;
  a2[1] = v2;
  return result;
}

uint64_t sub_299332680(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F728A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993326CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2993327BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F728C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_299332810(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F72928))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29933285C()
{
  v0 = &byte_2A1461117;
  v1 = -192;
  v2 = &byte_2A1461117;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

int *sub_2993328A4(int *a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  *a1 = a2;
  *(a1 + 6) = 0u;
  v33 = (a1 + 6);
  *(a1 + 2) = 0u;
  *(a1 + 10) = 0u;
  sub_299332E80(a2, 0, a1 + 8);
  if (*(a3 + 23) < 0)
  {
    if (!a3[1])
    {
      return a1;
    }

    a3 = *a3;
  }

  else if (!*(a3 + 23))
  {
    return a1;
  }

  sub_2992BC434(a3, "r", 1, &v37);
  v8 = *&v37.__r_.__value_.__l.__data_;
  *&v37.__r_.__value_.__l.__data_ = 0uLL;
  v9 = *(a1 + 2);
  *(a1 + 2) = v8;
  if (v9)
  {
    sub_2991A893C(v9);
    if (v37.__r_.__value_.__l.__size_)
    {
      sub_2991A893C(v37.__r_.__value_.__l.__size_);
    }
  }

  if (!*(*(a1 + 8) + 8))
  {
    sub_2991BF614(&v37);
    v29 = sub_2991C0E9C(&v37, "Failed to load character map for language ", 42);
    MEMORY[0x29C29BD30](v29, a2);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2992563AC(&v37, v35);
    sub_29933383C(exception, v35);
    __cxa_throw(exception, &unk_2A1F72938, sub_299332FAC);
  }

  if ((*a1 - 1) >= 2 && *a1 != 5)
  {
    sub_2991BF614(&v37);
    v31 = MEMORY[0x29C29BD30](&v37, a2);
    sub_2991C0E9C(v31, " is unsupported language value.", 31);
    v32 = __cxa_allocate_exception(0x20uLL);
    sub_2992563AC(&v37, v34);
    sub_29933383C(v32, v34);
    __cxa_throw(v32, &unk_2A1F72938, sub_299332FAC);
  }

  v10 = 0;
  v11 = **(a1 + 1);
  *(a1 + 6) = v11;
  *(a1 + 7) = v11 + *(v11 + 4);
  do
  {
    sub_2991C6CA8(&v44, off_29EF13060[v10]);
    v12 = v46;
    v13 = v46;
    if ((v46 & 0x80u) != 0)
    {
      v12 = v45;
    }

    if (v12)
    {
      if (*(a4 + 23) >= 0)
      {
        v14 = *(a4 + 23);
      }

      else
      {
        v14 = a4[1];
      }

      sub_2991C1C18(&v37, v14 + 1);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v37;
      }

      else
      {
        v15 = v37.__r_.__value_.__r.__words[0];
      }

      if (v14)
      {
        if (*(a4 + 23) >= 0)
        {
          v16 = a4;
        }

        else
        {
          v16 = *a4;
        }

        memmove(v15, v16, v14);
      }

      *(&v15->__r_.__value_.__l.__data_ + v14) = 47;
      if ((v46 & 0x80u) == 0)
      {
        v17 = &v44;
      }

      else
      {
        v17 = v44;
      }

      if ((v46 & 0x80u) == 0)
      {
        v18 = v46;
      }

      else
      {
        v18 = v45;
      }

      v19 = std::string::append(&v37, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v43 = v19->__r_.__value_.__r.__words[2];
      v42 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v21 = *a1;
      v37.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
      v37.__r_.__value_.__l.__size_ = 0x40000000;
      v37.__r_.__value_.__r.__words[2] = sub_299234CE0;
      v38 = &unk_29EF0DD50;
      v40 = v21;
      v39 = &v42;
      sub_299234450(&v42, &v37, 0, &v41);
      if (v41)
      {
        v22 = *a1;
        if (*a1 == 1 || v22 == 5 || v22 == 2)
        {
          (*(*v41 + 48))();
        }

        sub_2992B4184(v33, &v41);
      }

      else
      {
        if (!(v10 * 8))
        {
          sub_2991BF614(&v37);
          v26 = sub_2991C0E9C(&v37, "Failed to open dictionary ", 26);
          if (v43 >= 0)
          {
            v27 = &v42;
          }

          else
          {
            v27 = v42;
          }

          if (v43 >= 0)
          {
            sub_2991C0E9C(v26, v27, HIBYTE(v43));
          }

          else
          {
            sub_2991C0E9C(v26, v27, *(&v42 + 1));
          }

          v28 = __cxa_allocate_exception(0x20uLL);
          sub_2992563AC(&v37, v36);
          sub_29933383C(v28, v36);
          __cxa_throw(v28, &unk_2A1F72938, sub_299332FAC);
        }

        v23 = sub_29930AF10();
        if (v43 >= 0)
        {
          v24 = &v42;
        }

        else
        {
          v24 = v42;
        }

        sub_29930B600(v23, "Failed to open dictionary : %s", v24);
      }

      if (*(&v41 + 1))
      {
        sub_2991A893C(*(&v41 + 1));
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
      }

      v13 = v46;
    }

    if ((v13 & 0x80) != 0)
    {
      operator delete(v44);
    }

    ++v10;
  }

  while (v10 != 3);
  return a1;
}

void sub_299332D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      sub_2992568C8(&a30);
      v40 = *(v35 + 72);
      if (v40)
      {
        sub_2991A893C(v40);
      }

      *(v38 - 160) = a11;
      sub_299291260((v38 - 160));
      v41 = *(v35 + 16);
      if (v41)
      {
        sub_2991A893C(v41);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v37);
  goto LABEL_6;
}

void sub_299332E80(unsigned int a1@<W0>, int a2@<W1>, unsigned int **a3@<X8>)
{
  v6 = sub_2992774EC(a1);
  v7 = sub_2991C6CA8(&v14, v6);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = sub_299333C98;
  v8[3] = &unk_29EF13040;
  v8[4] = &v10;
  v9 = a1;
  sub_299333948(v7, v8, 0, a3);
  if (a2 && (v11[3] & 1) == 0)
  {
    sub_299333D14(*a3);
  }

  _Block_object_dispose(&v10, 8);
  if (v15 < 0)
  {
    operator delete(v14);
  }
}

void sub_299332F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  v18 = *(v15 + 8);
  if (v18)
  {
    sub_2991A893C(v18);
  }

  _Block_object_dispose(va, 8);
  if (*(v16 - 33) < 0)
  {
    operator delete(*(v16 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_299332FAC(std::exception *this)
{
  this->__vftable = &unk_2A1F72960;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

void sub_29933300C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_29936C2B8();
  v5 = sub_29936C350(v4, a1, off_2A145F738[0], @"sys.dic");
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = v5[23];
  }

  else
  {
    v8 = *(v5 + 1);
  }

  v9 = CFURLCreateFromFileSystemRepresentation(0, v7, v8, 0);
  if (v9)
  {
    v10 = v9;
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v9);
    v12 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
    sub_299278568(v12, a2);
    if (v12)
    {
      CFRelease(v12);
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    CFRelease(v10);
  }

  else
  {

    sub_2991C6CA8(a2, "");
  }
}

void sub_2993330F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

int *sub_299333110(int *a1, uint64_t a2)
{
  v4 = sub_29936C2B8();
  v5 = sub_29936C350(v4, a2, off_2A145F738[0], off_2A145F6C8[0]);
  sub_29933300C(a2, __p);
  sub_2993328A4(a1, a2, v5, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_2993331A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993331BC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_2991A893C(v2);
  }

  v5 = (a1 + 24);
  sub_299291260(&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2991A893C(v3);
  }

  return a1;
}

uint64_t sub_299333210(uint64_t *a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 7)
    {
      v2 = a1;
      if (v1 != 9)
      {
        if (v1 != 14)
        {
          goto LABEL_38;
        }

        if (*a1 != 0x656D656C70707573 || *(a1 + 6) != 0x6369642E746E656DLL)
        {
          goto LABEL_38;
        }

        return 1;
      }

      goto LABEL_25;
    }

    if (*a1 != 779319667 || *(a1 + 3) != 1667851310)
    {
LABEL_38:
      sub_2991BF614(v18);
      v13 = *(a1 + 23);
      if (v13 >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      if (v13 >= 0)
      {
        v15 = sub_2991C0E9C(v18, v14, *(a1 + 23));
      }

      else
      {
        v15 = sub_2991C0E9C(v18, v14, a1[1]);
      }

      sub_2991C0E9C(v15, " is not a recognized source dictionary name.", 44);
      exception = __cxa_allocate_exception(0x20uLL);
      sub_2992563AC(v18, &v17);
      sub_29933383C(exception, &v17);
      __cxa_throw(exception, &unk_2A1F72938, sub_299332FAC);
    }

    return 0;
  }

  v4 = a1[1];
  if (v4 == 7)
  {
    if (**a1 != 779319667 || *(*a1 + 3) != 1667851310)
    {
      goto LABEL_38;
    }

    return 0;
  }

  if (v4 != 9)
  {
    if (v4 == 14 && **a1 == 0x656D656C70707573 && *(*a1 + 6) == 0x6369642E746E656DLL)
    {
      return 1;
    }

    goto LABEL_38;
  }

  v2 = *a1;
LABEL_25:
  v8 = *v2;
  v9 = *(v2 + 8);
  if (v8 != 0x69642E646578696DLL || v9 != 99)
  {
    goto LABEL_38;
  }

  return 2;
}

void sub_29933340C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_2992568C8(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_299333454(char a1, uint64_t a2)
{
  if (a2 >= 0x200000)
  {
    sub_2991BF614(v8);
    v4 = sub_2991C0E9C(v8, "Token offset ", 13);
    v5 = MEMORY[0x29C29BD40](v4, a2);
    sub_2991C0E9C(v5, " is out of range. The max offset value is 0x1FFFFF.", 51);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2992563AC(v8, &v7);
    sub_29933383C(exception, &v7);
    __cxa_throw(exception, &unk_2A1F72938, sub_299332FAC);
  }

  return ((a1 & 3) << 22) | a2;
}

void sub_299333518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_2992568C8(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

BOOL sub_299333560(const char *a1, const void **a2)
{
  __ptr[0] = (a2[1] - *a2) >> 2;
  __ptr[1] = 8;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = fopen(a1, "w+");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (fwrite(__ptr, 8uLL, 1uLL, v3))
  {
    v5 = *a2;
    v6 = a2[1];
    if (v6 == *a2)
    {
      sub_29920D17C(a2, 1uLL);
      v5 = *a2;
      v6 = a2[1];
    }

    v7 = fwrite(v5, 4uLL, (v6 - v5) >> 2, v4) >= (a2[1] - *a2) >> 2;
  }

  else
  {
    v7 = 0;
  }

  fclose(v4);
  return v7;
}

uint64_t sub_299333634(void *a1, unsigned int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = 0;
  do
  {
    v7 = a1[6];
    if (!v7)
    {
      break;
    }

    v9 = *a2++;
    v8 = v9;
    if (*v7 <= v9)
    {
      break;
    }

    v10 = *(a1[7] + 4 * v8);
    v11 = (v10 >> 22) & 3;
    if (!v10 || v11 == 3)
    {
      break;
    }

    sub_2993DFF74(*(a1[3] + 16 * v11), v10 & 0x1FFFFF);
    v6 += v13;
    --v3;
  }

  while (v3);
  return v6;
}

CFStringRef sub_2993336C8(void *a1, unsigned int a2)
{
  v2 = a1[6];
  if (!v2 || *v2 <= a2)
  {
    return 0;
  }

  v4 = *(a1[7] + 4 * a2);
  v5 = (v4 >> 22) & 3;
  if (!v4 || v5 == 3)
  {
    return 0;
  }

  sub_2993DFF74(*(a1[3] + 16 * v5), v4 & 0x1FFFFF);
  if (!v8)
  {
    return 0;
  }

  v9 = *(a1[8] + 8);

  return sub_29922EBB4(v9);
}

CFStringRef sub_299333764(void *a1, unsigned int a2)
{
  v3 = a1[6];
  if (!v3 || *v3 <= a2)
  {
    return 0;
  }

  v4 = *(a1[7] + 4 * a2);
  v5 = (v4 >> 22) & 3;
  if (!v4 || v5 == 3)
  {
    return 0;
  }

  v8 = sub_2993DFF74(*(a1[3] + 16 * v5), v4 & 0x1FFFFF);
  if (!v9)
  {
    return 0;
  }

  return CFStringCreateWithCharacters(0, v8, v9);
}

unint64_t sub_2993337E8(void *a1, unsigned int a2)
{
  v2 = a1[6];
  if (v2 && *v2 > a2 && (v3 = *(a1[7] + 4 * a2), v3) && (v4 = (v3 >> 22) & 3, v4 != 3))
  {
    return *(*(a1[3] + 16 * v4) + 56) + 12 * (v3 & 0x1FFFFF);
  }

  else
  {
    return 0;
  }
}

void *sub_29933383C(void *a1, __int128 *a2)
{
  *a1 = &unk_2A1F72960;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_2991A110C(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void sub_2993338B8(std::exception *this)
{
  this->__vftable = &unk_2A1F72960;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29933392C(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_299333948(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145F588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145F588))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A145F5D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145F5D0))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145F590, &dword_29918C000);
    __cxa_guard_release(&qword_2A145F5D0);
  }

  v21 = 0;
  v22 = 0;
  std::mutex::lock(&stru_2A145F590);
  v8 = sub_29921517C(qword_2A145F580, a1);
  v9 = v8;
  if (!v8 || (v10 = v8[6]) == 0 || (v10->__shared_owners_ != -1 ? (v11 = a3 == 0) : (v11 = 0), !v11))
  {
    v12 = sub_2993652F8(0xDu);
    v13 = os_signpost_id_make_with_pointer(v12, a1);
    v14 = sub_2993652F8(0xDu);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v14))
      {
        if (*(a1 + 23) >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        *buf = 136315138;
        *&buf[4] = v16;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SingletonResourceManagerLoad", "Load resource with key: [%s]", buf, 0xCu);
      }
    }

    v17 = (*(a2 + 16))(a2);
    sub_299333DA0(&v21, v17);
  }

  v18 = std::__shared_weak_count::lock(v10);
  if (v18)
  {
    v19 = v9[5];
  }

  else
  {
    v19 = 0;
  }

  v21 = v19;
  v22 = v18;
  std::mutex::unlock(&stru_2A145F590);
  v20 = v22;
  *a4 = v21;
  a4[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v22)
    {
      sub_2991A893C(v22);
    }
  }
}

void sub_299333DE8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_299333E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299333E7C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_299333E7C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_299333FAC((v2 + 8), 0);
    MEMORY[0x29C29BFB0](v2, 0x1020C40D5A9D86FLL);
  }

  return a1;
}

void sub_299333ED4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299333F14(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F729D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_299333F54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_299333FAC((a2 + 8), 0);

    JUMPOUT(0x29C29BFB0);
  }
}

uint64_t *sub_299333FAC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_29922ED04(v2 + 24, *(v2 + 32));
    sub_29921B8CC(v2, *(v2 + 8));

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2993349F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  MEMORY[0x29C29BFB0](v10, 0x1081C409227ACB4, a3, a4, a5, a6, a7, a8);
  sub_29933D8F0((v9 + 47));
  sub_299273884(v9 + 31);
  v12 = v9[25];
  v9[25] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v9[24];
  v9[24] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  sub_29932C5A0(v9 + 23, 0);
  sub_29932C5A0(v9 + 22, 0);
  sub_29921EB1C(&a9);
  sub_29921EB1C(&a9);
  sub_29932C230(v9);
  _Unwind_Resume(a1);
}

BOOL sub_299334C2C(uint64_t a1)
{
  v12[2] = *MEMORY[0x29EDCA608];
  sub_29932C330(a1);
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_299334D30(a1);
    v3 = 0;
    v12[0] = @"Lexierra_ja_JP-dynamic-text.dat";
    v12[1] = @"LexicalLearning_ja_JP.dat";
    do
    {
      v4 = sub_29927717C(*(a1 + 40), v12[v3]);
      if (v4)
      {
        v5 = v4;
        sub_299279944(v4);
        CFRelease(v5);
      }

      ++v3;
    }

    while (v3 != 2);
    v6 = sub_29927717C(*(a1 + 40), @"Lexierra_ja_JP-dynamic-text.dat");
    if (v6)
    {
      v7 = v6;
      if (sub_299276528(v6))
      {
        sub_2992EED88(v7, v8, v9, v10);
      }

      CFRelease(v7);
    }

    sub_2992F2FA8(1, 1);
  }

  return v2 != 0;
}

uint64_t sub_299334D30(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    v1 = result;
    if (!*(result + 176))
    {
      if (!*(result + 8) && *(result + 40))
      {
        (*(*result + 16))(result);
      }

      v2 = *(v1 + 40);
      if (v2)
      {
        v28 = sub_29927717C(v2, @"DynamicBigramPhraseLexicon_ja_JP.db");
        if (v28)
        {
          operator new();
        }

        v2 = *(v1 + 40);
      }

      v28 = sub_29927717C(v2, @"DynamicPersonNameLexicon_ja_JP.db");
      if (v28)
      {
        operator new();
      }

      sub_29933D95C(v1 + 376, *(v1 + 40));
      sub_2992B8778(*(v1 + 8), &v28, 0, 0, 512);
      memset(v27, 0, sizeof(v27));
      memset(v26, 0, sizeof(v26));
      sub_29928EF5C(v27, (v29 - v28) >> 5);
      sub_29928EF5C(v26, (v29 - v28) >> 5);
      v24 = v1;
      v3 = v28;
      v4 = v29;
      if (v28 != v29)
      {
        v25 = v29;
        do
        {
          v5 = sub_2992B8D0C(v3, off_2A145F3B0[0]);
          v6 = sub_2992B8D0C(v3, off_2A145F3B8);
          v7 = sub_2992B8D0C(v3, off_2A145F398[0]);
          v8 = (v5[1] - *v5) >> 1;
          v9 = v7[1] - *v7;
          if (v8 - 6 >= 0xFFFFFFFFFFFFFFFCLL && v9 != 2 && (v8 < 5 || v9 >= 5))
          {
            v13 = *v6;
            v12 = v6[1];
            if (v12 == *v6)
            {
              goto LABEL_32;
            }

            v14 = 0;
            v15 = v12 - v13;
            v16 = 1;
            v17 = v15;
            do
            {
              v18 = *v13++;
              Code = ublock_getCode(v18);
              if ((Code - 58) > 0x25 || ((1 << (Code - 58)) & 0x3000203003) == 0)
              {
                break;
              }

              v14 = v16++ >= v15;
              --v17;
            }

            while (v17);
            v4 = v25;
            if (v14)
            {
LABEL_32:
              sub_299335284(v27, v5);
              sub_299335284(v26, v6);
            }
          }

          v3 += 32;
        }

        while (v3 != v4);
      }

      v21 = *(v24 + 192);
      if (v21)
      {
        sub_29924DE10(v21);
      }

      sub_2992E9E20((v24 + 192), v27, v26, 200, 200, 0, 10000);
      v30 = v26;
      sub_29920E060(&v30);
      v26[0] = v27;
      sub_29920E060(v26);
      v27[0] = &v28;
      sub_299225D98(v27);
      v22 = *(v24 + 200);
      if (!v22)
      {
        operator new();
      }

      sub_29924DE10(v22);
      v23 = *(v24 + 200);

      return sub_29924C9E4(v23, 200, 0, 7);
    }
  }

  return result;
}

const void **sub_2993351F8(uint64_t a1)
{
  sub_29932C5A0((a1 + 8), 0);
  sub_29921EB70((a1 + 16));
  sub_29932C5A0((a1 + 176), 0);
  sub_29932C5A0((a1 + 184), 0);
  sub_29932C5A0((a1 + 400), 0);
  sub_29932C5A0((a1 + 408), 0);
  sub_29924DE10(*(a1 + 192));
  sub_29924DE10(*(a1 + 200));

  return sub_2992F2FA8(1, 0);
}

uint64_t *sub_299335284(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29933AF54(a1, a2);
  }

  else
  {
    sub_29933AF00(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

__CFArray *sub_2993352D0(uint64_t a1, const __CFURL *a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v4 = sub_2992772AC(a2, @"PhraseLearning_ja_JP.dictionary");
  if (v4)
  {
    CFArrayAppendValue(Mutable, v4);
  }

  v5 = sub_2992772AC(a2, @"PhraseLearning_ja_JP.db");
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFArrayAppendValue(Mutable, v5);
  }

  v6 = sub_2992772AC(a2, @"BigramLearning_ja_JP.dictionary");
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFArrayAppendValue(Mutable, v6);
  }

  v7 = sub_2992772AC(a2, @"BigramLearning_ja_JP.db");
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v7);
  }

  return Mutable;
}

void sub_299335408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

__CFArray *sub_299335420()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, @"LexicalLearning_ja_JP.db");
  CFArrayAppendValue(Mutable, @"Lexierra_ja_JP-dynamic-text.dat");
  CFArrayAppendValue(Mutable, @"LexicalLearning_ja_JP.dat");
  CFArrayAppendValue(Mutable, @"DynamicBigramPhraseLexicon_ja_JP.db");
  CFArrayAppendValue(Mutable, @"BigramLearning_ja_JP.db");
  CFArrayAppendValue(Mutable, @"BigramLearning_ja_JP.dictionary");
  CFArrayAppendValue(Mutable, @"PhraseLearning_ja_JP.db");
  CFArrayAppendValue(Mutable, @"PhraseLearning_ja_JP.dictionary");
  return Mutable;
}

void *sub_2993354D4(void *a1)
{
  sub_29932D4B8(a1);
  v2 = a1[22];
  if (v2)
  {
    sub_2992C8D94(v2);
  }

  v3 = a1[23];
  if (v3)
  {
    sub_2992C8D94(v3);
  }

  sub_299342E20((a1 + 47));
  result = a1[30];
  if (result)
  {

    return sub_2993F5290(result);
  }

  return result;
}

const __CFString *sub_29933553C(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 8))
  {
    return 0;
  }

  result = *(a2 + 16);
  if (!result)
  {
    return result;
  }

  if (!*(a2 + 8))
  {
    return 0;
  }

  Length = CFStringGetLength(result);
  v6 = CFStringGetLength(*(a2 + 8));
  result = 0;
  if ((Length - 33) >= 0xFFFFFFFFFFFFFFE0 && (v6 - 33) >= 0xFFFFFFFFFFFFFFE0)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = CFStringGetLength(*(a2 + 16));
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        while (1)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v7, v10);
          if ((CharacterAtIndex - 48) >= 0xA && (CharacterAtIndex + 240) >= 0xAu)
          {
            break;
          }

          if (v9 == ++v10)
          {
            v13 = *(a2 + 8);
            if (v13)
            {
              v14 = CFStringGetLength(*(a2 + 8));
              if (v14)
              {
                v15 = v14;
                v16 = 0;
                while (1)
                {
                  v17 = CFStringGetCharacterAtIndex(v13, v16);
                  if ((v17 - 48) >= 0xA && (v17 + 240) >= 0xAu)
                  {
                    break;
                  }

                  result = 0;
                  if (v15 == ++v16)
                  {
                    return result;
                  }
                }
              }
            }

            break;
          }
        }
      }
    }

    result = sub_2992835E8(*(a2 + 16), *(a2 + 8));
    if (result)
    {
      v19 = sub_2993652F8(6u);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      if (v20)
      {
        v22 = *(a2 + 8);
        v21 = *(a2 + 16);
        *buf = 138412546;
        v24 = v21;
        v25 = 2112;
        v26 = v22;
        _os_log_debug_impl(&dword_29918C000, v19, OS_LOG_TYPE_DEBUG, "[MJL::registerToLearningDictionary] Learning phrase %@ (%@)", buf, 0x16u);
      }

      sub_29933595C(v20, *(a1 + 8), a2);
    }
  }

  return result;
}

void sub_29933589C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
    MEMORY[0x29C29BF70](a11, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  if (v12)
  {
    MEMORY[0x29C29BF70](v12, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2993358FC(void *a1)
{
  *a1 = &unk_2A1F72B38;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_2993321FC(a1);
}

void sub_29933595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v3 = *(a3 + 8);
  sub_2991C6CA8(&__p, off_2A145F3B0[0]);
  sub_2992B7C70(&v5, v3);
}

void sub_299335B30(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  if (CFArrayGetCount(*(a1 + 56)) >= 2)
  {
    v2 = 0;
    __p = 0;
    v32 = 0;
    v33 = 0;
    while (1)
    {
      Count = CFArrayGetCount(*(a1 + 56));
      if (v2 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v2);
      v8 = sub_2992896C0(ValueAtIndex, v5, v6, v7);
      v9 = v32;
      if (v32 >= v33)
      {
        v11 = (v32 - __p) >> 3;
        if ((v11 + 1) >> 61)
        {
          sub_299212A8C();
        }

        v12 = (v33 - __p) >> 2;
        if (v12 <= v11 + 1)
        {
          v12 = v11 + 1;
        }

        if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          sub_29920B86C(&__p, v13);
        }

        v14 = (8 * v11);
        *v14 = v8;
        v10 = 8 * v11 + 8;
        v15 = v14 - (v32 - __p);
        memcpy(v15, __p, v32 - __p);
        v16 = __p;
        __p = v15;
        v32 = v10;
        v33 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v32 = v8;
        v10 = (v9 + 8);
      }

      v32 = v10;
      ++v2;
    }

    v28 = 0;
    __dst = 0;
    v30 = 0;
    if (v32 != __p)
    {
      sub_299273C64(&v28, (v32 - __p) >> 3);
    }

    v17 = sub_299336024(Count, &v28);
    if (v28)
    {
      __dst = v28;
      operator delete(v28);
    }

    v18 = __p;
    v19 = v32;
    v20 = 0.0;
    while (v18 != v19)
    {
      v20 = v20 + (*(**v18 + 392))(*v18);
      v18 += 8;
    }

    (*(v17->isa + 50))(v17, v20);
    (*(v17->isa + 68))(v17);
    if (v21 < 5)
    {
      v23 = sub_2993652F8(6u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = (*(v17->isa + 3))(v17);
        v25 = (*(v17->isa + 29))(v17);
        *buf = 138412546;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        _os_log_debug_impl(&dword_29918C000, v23, OS_LOG_TYPE_DEBUG, "[MJL::combinePartialCandidatesAndRegister] Registering as a single phrase: %@ (%@)", buf, 0x16u);
      }

      sub_299336A90(a1, v17, 0, 0, 1, 0);
    }

    else
    {
      sub_2993836D4(a1 + 248);
      CFArrayRemoveAllValues(*(a1 + 56));
      v22 = sub_2993652F8(6u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v26 = (*(v17->isa + 3))(v17);
        v27 = (*(v17->isa + 29))(v17);
        *buf = 138412546;
        v35 = v26;
        v36 = 2112;
        v37 = v27;
        _os_log_debug_impl(&dword_29918C000, v22, OS_LOG_TYPE_DEBUG, "[MJL::combinePartialCandidatesAndRegister] Registering as a phrase sequence: %@ (%@)", buf, 0x16u);
      }

      sub_29933664C(a1, v17, 0);
    }

    sub_299337E98(a1, v17, 1);
    (*(v17->isa + 2))(v17);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }
  }
}

void sub_299335F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  (*(*v13 + 16))(v13, a2, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299336024(uint64_t a1, uint64_t **a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (*a2 != v2)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v38 = 0;
    v39 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    __p = 0;
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v4 = *v3;
      if ((*(**v3 + 88))(*v3))
      {
        break;
      }

      v5 = (*(*v4 + 544))(v4);
      v7 = v6;
      v8 = *(v4 + 87);
      if (v8 >= 0)
      {
        v9 = (v4 + 64);
      }

      else
      {
        v9 = *(v4 + 64);
      }

      if (v8 >= 0)
      {
        v10 = *(v4 + 87);
      }

      else
      {
        v10 = *(v4 + 72);
      }

      v11 = (*(*v4 + 552))(v4);
      v13 = v12;
      if (v7)
      {
        v14 = 2 * v7;
        do
        {
          sub_29922E664(&v35, v5++);
          v14 -= 2;
        }

        while (v14);
      }

      if (v10)
      {
        v15 = 2 * v10;
        do
        {
          sub_29922E664(&v41, v9++);
          v15 -= 2;
        }

        while (v15);
      }

      if (v13)
      {
        v16 = 2 * v13;
        do
        {
          sub_29922E664(&v38, v11++);
          v16 -= 2;
        }

        while (v16);
      }

      v17 = (*(*v4 + 304))(v4);
      if (v17[1] != *v17)
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v25 = (*(*v4 + 352))(v4, v19);
          sub_29922E664(&v32, &v25);
          v25 = (*(*v4 + 320))(v4, v19);
          sub_29922E664(&v29, &v25);
          sub_2992DD840(&__p, (*v17 + v18));
          ++v19;
          v18 += 40;
        }

        while (0xCCCCCCCCCCCCCCCDLL * ((v17[1] - *v17) >> 3) > v19);
      }

      v20 = v27;
      if ((*(v27 - 10) - 5) < 0xFFFFFFFE)
      {
        if (v35)
        {
          if (v36 != v35 && *(v36 - 1) == 32)
          {
            v36 -= 2;
            if (*(v27 - 8))
            {
              --*(v27 - 8);
            }
          }
        }

        if (v41)
        {
          if (v42 != v41 && *(v42 - 1) == 32)
          {
            v42 -= 2;
            if (*(v20 - 7))
            {
              --*(v20 - 7);
            }
          }
        }

        if (v38)
        {
          if (v39 != v38 && *(v39 - 1) == 32)
          {
            v39 -= 2;
            if (*(v20 - 6))
            {
              --*(v20 - 6);
            }
          }
        }
      }

      if (++v3 == v2)
      {
        v21 = **a2;
        v22 = *(a2[1] - 1);
        (*(*v21 + 112))(v21);
        (*(*v22 + 408))(v22);
        (*(*v21 + 416))(v21);
        operator new();
      }
    }

    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }

  return 0;
}

void sub_29933654C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  MEMORY[0x29C29BFB0](v26, 0x10F3C4074548AAFLL, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v29 = *(v27 - 136);
  if (v29)
  {
    *(v27 - 128) = v29;
    operator delete(v29);
  }

  v30 = *(v27 - 112);
  if (v30)
  {
    *(v27 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_299336610(uint64_t a1)
{
  sub_2993836D4(a1 + 248);
  v2 = *(a1 + 56);

  CFArrayRemoveAllValues(v2);
}

void sub_29933664C(CFIndex result, __CFString *a2, char a3)
{
  if ((a3 & 1) != 0 || CFArrayGetCount(*(result + 56)) > 0)
  {
    return;
  }

  if ((*sub_299237120() & 1) == 0)
  {
    v6 = sub_299283910(*(result + 224), a2);
    if (v6 < 3)
    {
      v9 = 0;
      v5 = 0;
      if (v6 != 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = sub_299336A90(result, a2, 3uLL, 0, 0, 0);
      v8 = v7 | sub_299336A90(result, a2, 3uLL, 1uLL, 0, 0);
      v9 = v8 | sub_299336A90(result, a2, 3uLL, 2uLL, 0, 0);
    }

    v10 = sub_299336A90(result, a2, 2uLL, 0, 0, 0);
    v5 = v9 | v10 | sub_299336A90(result, a2, 2uLL, 1uLL, 0, 0);
    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:
  if ((*(a2->isa + 59))(a2))
  {
    v11 = (*(a2->isa + 59))(a2);
    if (CFStringGetLength(v11) && ((*(a2->isa + 68))(a2), v12) && (*(a2->isa + 6))(a2))
    {
      v13 = *MEMORY[0x29EDB8ED8];
      v14 = (*(a2->isa + 59))(a2);
      Copy = CFStringCreateCopy(v13, v14);
      v16 = (*(a2->isa + 68))(a2);
      v18 = CFStringCreateWithCharacters(0, v16, v17);
      v20 = *(*(*(a2->isa + 38))(a2) + 30);
      v22 = 0;
      v23 = 0;
      __p = 0;
      sub_2992220D8(&__p, &v20, &__p, 1);
      sub_29933B084(v24, Copy, v18, 0, 0, &__p, 1);
      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }

      v19 = sub_29933553C(result, v24);
      v24[0] = &unk_2A1F72B38;
      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      sub_2993321FC(v24);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = sub_299336A90(result, a2, 1uLL, 0, 1, 1);
  }

  if ((v5 | v19) == 1 && os_variant_has_internal_diagnostics() && (sub_29933993C(result, a2) & 1) == 0)
  {
    sub_29932D5D0(result, a2);
  }

  sub_299337E98(result, a2, 0);
}

uint64_t sub_299336A90(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6)
{
  v166 = *MEMORY[0x29EDCA608];
  if (!a2 || ((*(*a2 + 88))(a2) & 1) != 0 || ((*(*a2 + 200))(a2) & 1) != 0)
  {
    v10 = 0;
    return v10 & 1;
  }

  v131 = a1;
  if (a5)
  {
    v12 = (*(*a2 + 544))(a2);
    (*(*a2 + 544))(a2);
    if (v13)
    {
      v14 = 0;
      v15 = 1;
      v16 = v13;
      do
      {
        v18 = *v12++;
        v17 = v18;
        if ((v18 - 12449) >= 0x5A && v17 != 12540 && v17 != 12316)
        {
          break;
        }

        v14 = v15++ >= v13;
        --v16;
      }

      while (v16);
      if (!v14)
      {
        if ((*(*a2 + 184))(a2))
        {
          goto LABEL_20;
        }

        if ((*(*a2 + 96))(a2) == 79)
        {
          v22 = *(a2 + 119);
          if (v22 < 0)
          {
            v22 = *(a2 + 104);
          }

          if (v22 <= 8u)
          {
            v23 = (*(*a2 + 544))(a2);
            (*(*a2 + 544))(a2);
            if (!v24)
            {
              goto LABEL_20;
            }

            v25 = v24;
            v26 = a3;
            v27 = 0;
            v28 = 1;
            v29 = v24;
            do
            {
              v30 = *v23++;
              Code = ublock_getCode(v30);
              if ((Code - 58) > 0x25 || ((1 << (Code - 58)) & 0x3000203003) == 0)
              {
                break;
              }

              v27 = v28++ >= v25;
              --v29;
            }

            while (v29);
            a3 = v26;
            a1 = v131;
            if (v27)
            {
LABEL_20:
              v21 = (*(*a2 + 24))(a2);
              (*(*a2 + 232))(a2);
              if (*(a1 + 184))
              {
                *&__dst[8] = 0;
                *&__dst[16] = 0;
                *__dst = &__dst[8];
                sub_2991C6CA8(v158, off_2A145F5D8[0]);
                sub_2992B7C70(__dst, v21);
              }
            }
          }
        }
      }
    }

    v33 = (*(*a2 + 96))(a2);
    v34 = (*(*a2 + 408))(a2);
    v35 = (v33 - 65) < 0x15 && ((0x107A01u >> (v33 - 65)) & 1) != 0 || v33 == 80 && v34 == 0;
    v123 = v35;
  }

  else
  {
    v123 = 0;
  }

  v37 = (*(*a2 + 304))(a2);
  v39 = *v37;
  v38 = v37[1];
  v40 = sub_2993652F8(6u);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v108 = (*(*a2 + 24))(a2);
    v109 = (*(*a2 + 56))(a2);
    v110 = (*(*a2 + 232))(a2);
    *__dst = 138414082;
    *&__dst[4] = v108;
    *&__dst[12] = 2112;
    *&__dst[14] = v109;
    *&__dst[22] = 2112;
    v146 = v110;
    v147 = 2048;
    *v148 = a3;
    *&v148[8] = 2048;
    *&v148[10] = a4;
    *&v148[18] = 1024;
    *&v148[20] = a5;
    v149 = 1024;
    v150 = v123;
    v151 = 1024;
    v152 = a6;
    _os_log_debug_impl(&dword_29918C000, v40, OS_LOG_TYPE_DEBUG, "[MJL::registerPhraseSequence] S:%@ AS:%@ DR:%@ phraseSize:%lu skipPhraseCount:%lu NonPhraseLearning:%d lexicalLearning:%d shouldLearnBigram:%d", __dst, 0x46u);
  }

  v41 = (*(*a2 + 544))(a2);
  v45 = (a2 + 96);
  if (*(a2 + 119) < 0)
  {
    v45 = *v45;
  }

  *v158 = v41;
  v159 = 0;
  v161 = 0u;
  v162 = 0u;
  v160 = v45;
  v163 = 0;
  v46 = *(a1 + 112);
  if (v46)
  {
    v47 = *(a1 + 104);
    v48 = objc_msgSend_rawCandidate(*(a1 + 112), v42, v43, v44);
    v49 = (*(*v48 + 88))(v48);
    v53 = v47 ? v49 : 1;
    if ((v53 & 1) == 0)
    {
      v54 = objc_msgSend_rawCandidate(v46, v50, v51, v52);
      if (((*(*v54 + 88))(v54) & 1) == 0)
      {
        v96 = sub_2992896C0(v46, v55, v56, v57);
        v100 = sub_2992896C0(v47, v97, v98, v99);
        MutableCopy = 0;
        if (!v96 || !v100)
        {
          goto LABEL_56;
        }

        v102 = *(a1 + 256);
        v101 = *(a1 + 264);
        if (0xCCCCCCCCCCCCCCCDLL * ((v101 - v102) >> 3) > (*(*v100 + 48))(v100))
        {
          (*(*v96 + 544))(v96);
          if (v103 == 1 && (v104 = *(a1 + 224), v105 = (*(*v96 + 352))(v96, 0), *(v104 + 88) <= v105) && *(v104 + 90) >= v105)
          {
            v112 = *(a1 + 256);
            v111 = *(a1 + 264);
            v113 = (*(*v100 + 48))(v100);
            v114 = *(*(a1 + 328) + 8 * sub_299273C0C((a1 + 248), ~v113 - 0x3333333333333333 * ((v111 - v112) >> 3)));
            v115 = *(a1 + 280);
            v116 = (*(a1 + 288) - v115) >> 1;
            if (v116 <= v114)
            {
              v117 = 0;
            }

            else
            {
              v117 = (v115 + 2 * v114);
            }

            if (v115)
            {
              v118 = v116 - v114;
            }

            else
            {
              v118 = 0;
            }

            if (v116 <= v114)
            {
              v119 = 0;
            }

            else
            {
              v119 = v118;
            }

            (*(*v100 + 544))(v100);
            MutableCopy = 0;
            if (v117 && v119 >= v120)
            {
              MutableCopy = CFStringCreateWithCharacters(0, v117, v119 - v120);
            }
          }

          else
          {
            v106 = (*(*v96 + 24))(v96);
            MutableCopy = CFStringCreateMutableCopy(0, 0, v106);
            if (MutableCopy)
            {
              v107 = MutableCopy;
              CFStringTrimWhitespace(MutableCopy);
              MutableCopy = v107;
            }
          }

          goto LABEL_56;
        }
      }
    }
  }

  MutableCopy = 0;
LABEL_56:
  cf = MutableCopy;
  v142 = MutableCopy;
  v141 = 0;
  v139[0] = 0;
  v139[1] = 0;
  v140 = 0;
  v137[0] = 0;
  v137[1] = 0;
  v138 = 0;
  v59 = (*(*a2 + 48))(a2);
  sub_299383450((a1 + 248), v59, v139, v137, &v141 + 1, &v141);
  if (v38 == v39)
  {
    LOBYTE(v130) = 0;
  }

  else
  {
    v130 = 0;
    v60 = 0;
    v61 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v39) >> 3);
    v121 = a3 - a4;
    v129 = v61 - 1;
    v122 = 0;
    if (v61 <= 1)
    {
      v61 = 1;
    }

    v125 = v61;
    do
    {
      v62 = a3;
      v63 = sub_2992C77D8(a2, v60);
      v65 = v64;
      v135 = sub_2992C71F4(a2, v60);
      v136 = v66;
      if (!v65 || !v66)
      {
        break;
      }

      v67 = (*(*a2 + 352))(a2, v60);
      v132 = v60 + 1;
      v68 = (*(*a2 + 344))(a2);
      if (sub_299342724(v135, v136, v67))
      {
        if (v67 <= 0x64F)
        {
          v124 = word_299409CC8[v67];
        }

        else
        {
          v124 = 0;
        }

        if (v141 <= 0x64FuLL)
        {
          v69 = word_299409CC8[v141];
        }

        else
        {
          v69 = 0;
        }

        if (HIWORD(v141) <= 0x64FuLL)
        {
          v70 = word_299409CC8[HIWORD(v141)];
        }

        else
        {
          v70 = 0;
        }

        if (v68 <= 0x64F)
        {
          v71 = word_299409CC8[v68];
        }

        else
        {
          v71 = 0;
        }

        memset(buf, 0, sizeof(buf));
        v165 = 0;
        if (v60 < v129)
        {
          v143 = sub_2992C71F4(a2, v132);
          v144[0] = v72;
          sub_29923A9CC(&v143, __dst);
          if (SHIBYTE(v165) < 0)
          {
            operator delete(*buf);
          }

          *buf = *__dst;
          v165 = *&__dst[16];
        }

        sub_29933B184(__dst, v137, v139, xmmword_299417CF0, buf, xmmword_299417CF0, v69, v70, v124, v71, 0);
        v74 = *(a2 + 87);
        v75 = *(a2 + 64);
        if (v74 >= 0)
        {
          v75 = (a2 + 64);
        }

        if (v74 < 0)
        {
          v74 = *(a2 + 72);
        }

        v76 = sub_29933F890((v131 + 376), v63, v65, v135, v136, __dst, v123, v73, v75, v74);
        if (v157 < 0)
        {
          operator delete(__p);
        }

        if (v155 < 0)
        {
          operator delete(v154);
        }

        if (v153 < 0)
        {
          operator delete(*&v148[14]);
        }

        if ((v148[13] & 0x80000000) != 0)
        {
          operator delete(v146);
        }

        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        if (SHIBYTE(v165) < 0)
        {
          operator delete(*buf);
        }

        v130 |= v76;
      }

      if (SHIBYTE(v138) < 0)
      {
        operator delete(v137[0]);
      }

      *v137 = *v139;
      v138 = v140;
      HIBYTE(v140) = 0;
      LOWORD(v139[0]) = 0;
      sub_29923A9CC(&v135, __dst);
      if (SHIBYTE(v140) < 0)
      {
        operator delete(v139[0]);
      }

      *v139 = *__dst;
      v140 = *&__dst[16];
      LOWORD(v141) = HIWORD(v141);
      HIWORD(v141) = v67;
      v77 = v136;
      *__dst = (*(*a2 + 352))(a2, v60);
      v78 = v159 + v77;
      if (!*v158)
      {
        v78 = 0;
      }

      v79 = v160 ? v161 + v65 : 0;
      v159 = v78;
      *&v161 = v79;
      if (v78 > 0x20 || v79 > 0x20)
      {
        break;
      }

      DWORD2(v161) |= 1 << (v78 - 1);
      HIDWORD(v161) |= 1 << (v79 - 1);
      sub_29922E664(&v162, __dst);
      a3 = v62;
      if (v62 || v60 != v129)
      {
        if (!v62 || (sub_299255944(*(v131 + 224), v67, v68) & 1) == 0 && v60 != v129)
        {
          continue;
        }

        ++v122;
        if ((v121 + v122) % v62)
        {
          continue;
        }
      }

      v80 = v159;
      if (v159 < 3 || (v81 = *v158, !sub_299281A24(**v158)) && !sub_299281A24(v81[v80 - 1]))
      {
        if (v62 && v122 <= a4)
        {
          if (cf)
          {
            CFRelease(cf);
          }

          v82 = 0;
          v142 = 0;
        }

        else
        {
          v134 = CFStringCreateWithCharacters(0, v160, v161);
          v133 = CFStringCreateWithCharacters(0, *v158, v159);
          sub_29933B084(__dst, v134, v133, SHIDWORD(v161), SDWORD2(v161), &v162, (*(&v162 + 1) - v162) >> 1);
          if (v146 > 0xFF)
          {
            v83 = 0;
          }

          else
          {
            v83 = sub_29933553C(v131, __dst);
          }

          if (*(v131 + 176) && a6 && cf && v83)
          {
            Length = CFStringGetLength(cf);
            cf = v142;
            if (Length != 1)
            {
              goto LABEL_137;
            }

            CharacterAtIndex = CFStringGetCharacterAtIndex(v142, 0);
            v86 = asc_29945D8FC;
            v87 = 14;
            do
            {
              v88 = v87 >> 1;
              v89 = &v86[v87 >> 1];
              v91 = *v89;
              v90 = v89 + 1;
              v87 += ~(v87 >> 1);
              if (v91 < CharacterAtIndex)
              {
                v86 = v90;
              }

              else
              {
                v87 = v88;
              }
            }

            while (v87);
            if (v86 == &unk_29945D918 || *v86 > CharacterAtIndex)
            {
LABEL_137:
              if (cf)
              {
                if (*(v131 + 176))
                {
                  if (*&__dst[16])
                  {
                    if (*&__dst[8])
                    {
                      v92 = CFStringGetLength(cf);
                      v93 = CFStringGetLength(*&__dst[16]);
                      v94 = CFStringGetLength(*&__dst[8]);
                      if ((v93 - 33) >= 0xFFFFFFFFFFFFFFE0 && (v94 - 33) >= 0xFFFFFFFFFFFFFFE0 && v92 && sub_2992835E8(*&__dst[16], *&__dst[8]))
                      {
                        v144[0] = 0;
                        v144[1] = 0;
                        v143 = v144;
                        sub_2991C6CA8(buf, "FirstSurface");
                        sub_2992B7C70(&v143, cf);
                      }
                    }
                  }
                }
              }
            }
          }

          if (v83)
          {
            v82 = v133;
            v133 = 0;
          }

          else
          {
            v82 = 0;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          v142 = v82;
          *__dst = &unk_2A1F72B38;
          if (*&v148[6])
          {
            *&v148[14] = *&v148[6];
            operator delete(*&v148[6]);
          }

          sub_2993321FC(__dst);
          if (v133)
          {
            CFRelease(v133);
          }

          if (v134)
          {
            CFRelease(v134);
          }

          v130 |= v83;
        }

        *v158 += 2 * v159;
        v159 = 0;
        v95 = &v160[v161];
        v161 = 0uLL;
        v160 = v95;
        *(&v162 + 1) = v162;
        cf = v82;
      }

      v60 = v132;
    }

    while (v132 != v125);
  }

  if (SHIBYTE(v138) < 0)
  {
    operator delete(v137[0]);
  }

  v10 = v130;
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v162)
  {
    *(&v162 + 1) = v162;
    operator delete(v162);
  }

  return v10 & 1;
}

void sub_299337E98(void *a1, const __CFString *a2, char a3)
{
  v87 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    return;
  }

  v4 = a2;
  if ((*(a2->isa + 11))(a2))
  {
    return;
  }

  v6 = a1[30];
  if (!v6)
  {
    return;
  }

  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a1[33] - a1[32]) >> 3);
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(v4->isa + 6))(v4);
    v6 = a1[30];
  }

  v9 = (v7 - v8);
  v10 = v7 - v8 - *(v6 + 32);
  if (v10 < 0)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + 1;
  v13 = v9 - v11 - 1;
  v14 = (*(v4->isa + 6))(v4);
  v15 = *MEMORY[0x29EDB8ED8];
  v16 = MEMORY[0x29EDB9000];
  theArray = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], v14 + v13, MEMORY[0x29EDB9000]);
  v78 = theArray;
  v64 = v13;
  Mutable = CFArrayCreateMutable(v15, v14 + v13, v16);
  v77 = Mutable;
  v76 = 1;
  LODWORD(v75[0]) = 32;
  v72 = Mutable;
  alloc = v15;
  if (v9 > v11 + 1)
  {
    str = v9;
    contentsDeallocator = *MEMORY[0x29EDB8EE8];
    v18 = 40 * v11;
    v66 = v4;
    do
    {
      v19 = *(a1[41] + 8 * v12);
      v20 = a1[35];
      if (v19 >= (a1[36] - v20) >> 1)
      {
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v21 = (v20 + 2 * v19);
        if (v20)
        {
          v22 = *(a1[32] + v18 + 64);
        }

        else
        {
          v22 = 0;
        }
      }

      v23 = a1;
      if (v76 >= 0)
      {
        v24 = v76;
      }

      else
      {
        v24 = v75[1];
      }

      v81.__r_.__value_.__r.__words[0] = v21;
      v81.__r_.__value_.__l.__size_ = v22;
      if (v76 >= 0)
      {
        v25 = v75;
      }

      else
      {
        v25 = v75[0];
      }

      v26 = sub_2992FE218(&v81, v25, v24);
      v27 = 0;
      v28 = 0;
      v29 = v22 - v24;
      if (!v21)
      {
        v29 = 0;
      }

      if (v26)
      {
        v22 = v29;
      }

      v30 = *(v23[44] + 8 * v12);
      v31 = v23[38];
      if (v30 < (v23[39] - v31) >> 1)
      {
        v27 = (v31 + 2 * v30);
        if (v31)
        {
          v28 = *(v23[32] + v18 + 68);
        }

        else
        {
          v28 = 0;
        }
      }

      v81.__r_.__value_.__r.__words[0] = v27;
      v81.__r_.__value_.__l.__size_ = v28;
      v32 = sub_2992FE218(&v81, v25, v24);
      v33 = v28 - v24;
      if (!v27)
      {
        v33 = 0;
      }

      if (v32)
      {
        v34 = v33;
      }

      else
      {
        v34 = v28;
      }

      v35 = CFStringCreateWithCharactersNoCopy(alloc, v21, v22, contentsDeallocator);
      v81.__r_.__value_.__r.__words[0] = v35;
      CFArrayAppendValue(theArray, v35);
      a1 = v23;
      v15 = alloc;
      Mutable = v72;
      v4 = v66;
      v36 = CFStringCreateWithCharactersNoCopy(alloc, v27, v34, contentsDeallocator);
      *&__p = v36;
      CFArrayAppendValue(v72, v36);
      if (v36)
      {
        CFRelease(v36);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      ++v12;
      v18 += 40;
    }

    while (v12 < str);
  }

  v37 = (*(v4->isa + 38))(v4);
  v39 = *v37;
  v38 = *(v37 + 1);
  stra = (*(v4->isa + 3))(v4);
  contentsDeallocatora = v37;
  v67 = (*(v4->isa + 29))(v4);
  v63 = a1;
  if (v38 != v39)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v39) >> 3);
    if (v43 <= 1)
    {
      v43 = 1;
    }

    v65 = v43;
    v44 = 24;
    do
    {
      v45 = *(*contentsDeallocatora + v44);
      v46 = (*(v4->isa + 40))(v4, v42);
      v88.location = v40;
      v88.length = v45;
      v47 = CFStringCreateWithSubstring(v15, stra, v88);
      v89.location = v41;
      v89.length = v46;
      v48 = CFStringCreateWithSubstring(v15, v67, v89);
      CFArrayAppendValue(theArray, v47);
      CFArrayAppendValue(Mutable, v48);
      CFRelease(v47);
      CFRelease(v48);
      v40 += v45;
      v41 += v46;
      ++v42;
      v44 += 40;
      v15 = alloc;
    }

    while (v65 != v42);
  }

  v49 = sub_2993652F8(6u);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v59 = (*(v4->isa + 3))(v4);
    v60 = (*(v4->isa + 7))(v4);
    v61 = (*(v4->isa + 29))(v4);
    LODWORD(v81.__r_.__value_.__l.__data_) = 138413314;
    *(v81.__r_.__value_.__r.__words + 4) = v59;
    WORD2(v81.__r_.__value_.__r.__words[1]) = 2112;
    *(&v81.__r_.__value_.__r.__words[1] + 6) = v60;
    HIWORD(v81.__r_.__value_.__r.__words[2]) = 2112;
    v82 = v61;
    v83 = 2112;
    v84 = @"online";
    v85 = 2048;
    v86 = v64;
    _os_log_debug_impl(&dword_29918C000, v49, OS_LOG_TYPE_DEBUG, "[MJL::incrementUsageCount] %@ (%@/%@) type:%@ contextWordCount:%ld", &v81, 0x34u);
  }

  v50 = sub_2993652F8(6u);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    v51 = 0;
    memset(&v81, 0, sizeof(v81));
    while (v51 < CFArrayGetCount(theArray))
    {
      if (v64 == v51)
      {
        std::string::append(&v81, "|| ", 3uLL);
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v51);
      sub_299278568(ValueAtIndex, &__p);
      if ((v80 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v80 & 0x80u) == 0)
      {
        v54 = v80;
      }

      else
      {
        v54 = *(&__p + 1);
      }

      std::string::append(&v81, p_p, v54);
      if (v80 < 0)
      {
        operator delete(__p);
      }

      std::string::push_back(&v81, 47);
      v55 = CFArrayGetValueAtIndex(v72, v51);
      sub_299278568(v55, &__p);
      if ((v80 & 0x80u) == 0)
      {
        v56 = &__p;
      }

      else
      {
        v56 = __p;
      }

      if ((v80 & 0x80u) == 0)
      {
        v57 = v80;
      }

      else
      {
        v57 = *(&__p + 1);
      }

      std::string::append(&v81, v56, v57);
      if (v80 < 0)
      {
        operator delete(__p);
      }

      std::string::push_back(&v81, 32);
      ++v51;
    }

    v58 = sub_2993652F8(6u);
    Mutable = v72;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v62 = &v81;
      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v62 = v81.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v62;
      _os_log_debug_impl(&dword_29918C000, v58, OS_LOG_TYPE_DEBUG, "[MJL::incrementUsageCount] %s", &__p, 0xCu);
    }

    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }
  }

  sub_29933A230(v63, 0, theArray, Mutable, v64, 0);
  if (v76 < 0)
  {
    operator delete(v75[0]);
    if (!Mutable)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (Mutable)
  {
LABEL_77:
    CFRelease(Mutable);
  }

LABEL_78:
  if (theArray)
  {
    CFRelease(theArray);
  }
}

void sub_299338634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, const void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_2992530BC(&a24, 0);
  sub_2992530BC(&a25, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299338718(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_2992878A0(a2, a2, a3, a4);
  if (result)
  {
    v9 = objc_msgSend_rawCandidate(a2, v6, v7, v8);
    if (v9)
    {
      return (*(*v9 + 88))(v9) ^ 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

__CFString *sub_299338780(uint64_t a1, uint64_t a2)
{
  if (((*(*a2 + 416))(a2) & 0x4000000) != 0)
  {
    v5 = off_29EF10540;
  }

  else
  {
    v3 = (*(*a2 + 416))(a2);
    v4 = sub_299322EB0(v3);
    v5 = off_29EF10520;
    if (v4)
    {
      v5 = off_29EF10538;
    }
  }

  return *v5;
}

uint64_t sub_299338830(uint64_t a1, uint64_t *a2)
{
  if (a2 && ((*(*a2 + 88))(a2) & 1) == 0 && (*(*a2 + 72))(a2) != 7)
  {
    v29 = (*(*a2 + 48))(a2);
    memset(__p, 0, sizeof(__p));
    v4 = (*(*a2 + 544))(a2);
    v5 = (*(*a2 + 552))(a2);
    if (v29)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = v4;
      v10 = 0;
      v36 = v9;
      v11 = v5;
      do
      {
        v12 = (*(*a2 + 128))(a2, v6);
        v32 = v7;
        v33 = (*(*a2 + 312))(a2, v6);
        v13 = (*(*a2 + 320))(a2, v6);
        v14 = v12;
        v34 = v8;
        v30 = v10;
        v15 = (*(*(*a2 + 304))(a2) + v10);
        v16 = v15[1];
        v31 = *v15;
        v17 = v15[3];
        v18 = (*(*a2 + 344))(a2, v6);
        v19 = (*(*a2 + 352))(a2, v6);
        v37 = 0;
        if (!v17 || (v17 >> 28 ? (v20 = v17 >> 28 == 5) : (v20 = 1), !v20))
        {
          v21 = *(a1 + 208);
          v22 = **(a1 + 512);
          v23 = (*(*v21 + 232))(v21);
          v24 = sub_299322E10(v22, v23);
          v47[1] = v47;
          v47[2] = 0x2000000000;
          v48 = 0;
          v25 = v13;
          if (!v11)
          {
            v25 = 0;
          }

          v46[1] = v25;
          v47[0] = 0;
          v26 = v14;
          if (!v36)
          {
            v26 = 0;
          }

          v45[0] = v36;
          v45[1] = v26;
          v46[0] = v11;
          *&v39 = MEMORY[0x29EDCA5F8];
          *(&v39 + 1) = 0x40000000;
          v40 = sub_299339188;
          v41 = &unk_29EF13080;
          v44 = v19;
          v42 = v47;
          v43 = &v37;
          sub_2993E4D48(v21, v46, v45, v24, &v39);
        }

        v37 = v16;
        if (!(v18 | v19))
        {
          v27 = (*(*a2 + 24))(a2);
          if (sub_299278154(v27))
          {
            v18 = *(*(a1 + 224) + 50);
            v19 = v18;
          }

          else
          {
            v18 = 0;
            v19 = 0;
          }
        }

        v39 = 0u;
        v40 = 0;
        LOWORD(v41) = v14;
        WORD1(v41) = v33;
        WORD2(v41) = v13;
        HIWORD(v41) = v18;
        v42 = v19;
        DWORD1(v39) = v37;
        v28 = (*(*a2 + 248))(a2, 0, 0);
        BYTE5(v42) = BYTE5(v42) & 0xFE | v28;
        LODWORD(v39) = v31;
        sub_2992DD840(__p, &v39);
        v11 += 2 * v13;
        v36 += 2 * v14;
        v8 = v37 + v34 + (*(**(a1 + 208) + 64))(*(a1 + 208), v32, v18);
        ++v6;
        v10 = v30 + 40;
        v7 = v19;
      }

      while (v29 != v6);
    }

    else
    {
      v19 = 0;
    }

    (*(**(a1 + 208) + 64))(*(a1 + 208), v19, 0);
    (*(*a2 + 376))(a2);
    (*(*a2 + 96))(a2);
    (*(*a2 + 408))(a2);
    (*(*a2 + 416))(a2);
    operator new();
  }

  return 0;
}

void sub_2993390CC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  MEMORY[0x29C29BFB0](v27, 0x10F3C40C8E81E66, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299339188(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 94);
  if (v3 == *(result + 48) && *(a2 + 92) == v3)
  {
    **(result + 40) = *(a2 + 84);
    *a3 = 1;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

MecabraCandidate *sub_2993391C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *&v59 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_rawCandidate(a2, a2, a3, a4);
  if ((*(*v5 + 88))(v5))
  {
    v9 = a2;
    if (a2)
    {
      v10 = objc_msgSend_rawCandidate(a2, a2, v7, v8);
      v11 = (*(*v10 + 88))(v10);
      v9 = a2;
      if (v11)
      {
        Surface = MecabraCandidateGetSurface(a2, a2, v12, v13);
        sub_299276BDC(Surface, &v51);
        AnalysisString = MecabraCandidateGetAnalysisString(a2, v15, v16, v17);
        sub_299276BDC(AnalysisString, &v48);
        __p[0] = 0;
        if ((**(a1 + 512) & 0x20) == 0)
        {
          v22 = MecabraCandidateGetAnalysisString(a2, v19, v20, v21);
          sub_299276A84(v22);
        }

        v42 = MecabraCandidateGetAnalysisString(a2, v19, v20, v21);
        sub_299217634(v42);
      }
    }
  }

  else
  {
    v23 = objc_msgSend_rawCandidate(a2, v6, v7, v8);
    if ((*(*v23 + 72))(v23) == 7)
    {
      v9 = a2;
      if (a2)
      {
        v26 = objc_msgSend_rawCandidate(a2, a2, v24, v25);
        v9 = a2;
        if (v26)
        {
          v29 = objc_msgSend_rawCandidate(a2, a2, v27, v28);
          v30 = (*(*v29 + 72))(v29);
          v9 = a2;
          if (v30 == 7)
          {
            LOWORD(v51) = 9787;
            v49 = 0;
            v50 = 0;
            v48 = 0;
            sub_2992220D8(&v48, &v51, &v51 + 1, 1);
            v34 = MecabraCandidateGetSurface(a2, v31, v32, v33);
            sub_299276BDC(v34, &v46);
            v58 = 131328;
            v57 = 0;
            v52 = 0;
            v51 = 0uLL;
            v53 = (v47 - v46) >> 1;
            v54 = (v49 - v48) >> 1;
            v55 = v54;
            v56 = 105317959;
            memset(__p, 0, sizeof(__p));
            sub_2992DBD58(__p, &v51, &v59, 1uLL);
            operator new();
          }
        }
      }
    }

    else
    {
      v9 = a2;
      if (a2)
      {
        v35 = objc_msgSend_rawCandidate(a2, a2, v24, v25);
        v36 = (*(*v35 + 88))(v35);
        v9 = a2;
        if ((v36 & 1) == 0)
        {
          v39 = sub_2992896C0(a2, a2, v37, v38);
          v40 = sub_299338830(a1, v39);
          v41 = sub_29928A270(v40);
          v9 = a2;
          if (v41)
          {
            return v41;
          }
        }
      }
    }
  }

  return v9;
}

void sub_299339734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993398A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_rawCandidate(a2, a2, a3, a4);
  if ((*(*v6 + 88))(v6))
  {

    sub_2993836D4(a1 + 248);
  }

  else
  {
    v10 = sub_2992896C0(a2, v7, v8, v9);

    sub_299383210(a1 + 248, v10);
  }
}

uint64_t sub_29933993C(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    (*(*a2 + 552))(a2);
    if (!v4)
    {
      goto LABEL_52;
    }

    (*(*a2 + 544))(a2);
    if (!v5 || ((*(*a2 + 176))(a2) & 1) != 0 || (*(*a2 + 96))(a2) == 89 || (*(*a2 + 96))(a2) == 85 || (*(*a2 + 96))(a2) == 76)
    {
      goto LABEL_52;
    }

    for (i = a2[17]; i != a2[18]; i += 10)
    {
      if (*i == 4)
      {
        goto LABEL_52;
      }
    }

    if ((*(*a2 + 96))(a2) == 83 || (*(*a2 + 96))(a2) == 79)
    {
      goto LABEL_52;
    }

    v15 = (*(*a2 + 304))(a2);
    v60 = 0;
    v61 = 0;
    __p = 0;
    sub_29921E8E0(&__p, *v15, *(v15 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v15 + 8) - *v15) >> 3));
    v16 = __p;
    if (v60 == __p)
    {
LABEL_45:
      v38 = 0;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v18 = v16[10 * v17];
        if (v18)
        {
          v19 = v18 == 10;
        }

        else
        {
          v19 = 1;
        }

        v20 = !v19;
        v58 = v20;
        v21 = sub_2992C71F4(a2, v17);
        numChars = v22;
        v23 = v21;
        chars = sub_2992C77D8(a2, v17);
        v25 = v24;
        if (v24)
        {
          v26 = 0;
          v27 = chars;
          v28 = 1;
          v29 = v24;
          do
          {
            v31 = *v27++;
            v30 = v31;
            if ((v31 - 12353) >= 0x56 && v30 != 12540 && v30 != 12316)
            {
              break;
            }

            v26 = v28++ >= v24;
            --v29;
          }

          while (v29);
          v57 = !v26;
        }

        else
        {
          v57 = 0;
        }

        v34 = *v23;
        v56 = v34 != 9787 && (u_charType(v34) - 19) < 0xB;
        v35 = sub_2993652F8(6u);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v36 = CFStringCreateWithCharacters(0, v23, numChars);
          v37 = CFStringCreateWithCharacters(0, chars, v25);
          *buf = 134218754;
          v63 = v17 + 1;
          v64 = 2112;
          v65 = v36;
          v66 = 2112;
          v67 = v37;
          v68 = 1024;
          LODWORD(v69) = v18;
          _os_log_debug_impl(&dword_29918C000, v35, OS_LOG_TYPE_DEBUG, "[MecabraJapanese::isValidLearningCandidate] %zu-th Word validation: (%@/%@), kind: %d", buf, 0x26u);
        }

        if ((v58 | v57 | v56))
        {
          break;
        }

        ++v17;
        v16 = __p;
        if (v17 >= 0xCCCCCCCCCCCCCCCDLL * ((v60 - __p) >> 3))
        {
          goto LABEL_45;
        }
      }

      v39 = sub_2993652F8(6u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v63 = v17 + 1;
        _os_log_debug_impl(&dword_29918C000, v39, OS_LOG_TYPE_DEBUG, "[MecabraJapanese::isValidLearningCandidate] %zu-th Word validation: skipped.", buf, 0xCu);
      }

      v38 = 1;
      v16 = __p;
    }

    if (v16)
    {
      v60 = v16;
      operator delete(v16);
    }

    if (v38)
    {
LABEL_52:
      v40 = sub_2993652F8(6u);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v42 = (*(*a2 + 24))(a2);
        v43 = (*(*a2 + 56))(a2);
        v44 = (*(*a2 + 232))(a2);
        v45 = (*(*a2 + 96))(a2);
        *buf = 138413058;
        v63 = v42;
        v64 = 2112;
        v65 = v43;
        v66 = 2112;
        v67 = v44;
        v68 = 1024;
        LODWORD(v69) = v45;
        _os_log_debug_impl(&dword_29918C000, v40, OS_LOG_TYPE_DEBUG, "[MecabraJapanese::isValidLearningCandidate] Skipped validation: %@ (%@/%@), kind: %c", buf, 0x26u);
      }

      return 1;
    }

    else
    {
      if ((atomic_load_explicit(&qword_2A1461128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461128))
      {
        qword_2A1461130 = &unk_29945D8EA;
        qword_2A1461138 = 8;
        __cxa_guard_release(&qword_2A1461128);
      }

      v46 = (*(*a2 + 552))(a2);
      if (v47 == qword_2A1461138 && !memcmp(v46, qword_2A1461130, 2 * v47))
      {
        v9 = 0;
      }

      else
      {
        v9 = sub_29933AD08(a1, a2);
      }

      v48 = sub_2993652F8(6u);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        if (v9)
        {
          v49 = "true";
        }

        else
        {
          v49 = "false";
        }

        v50 = (*(*a2 + 24))(a2);
        v51 = (*(*a2 + 56))(a2);
        v52 = (*(*a2 + 232))(a2);
        v53 = (*(*a2 + 96))(a2);
        *buf = 136316162;
        v63 = v49;
        v64 = 2112;
        v65 = v50;
        v66 = 2112;
        v67 = v51;
        v68 = 2112;
        v69 = v52;
        v70 = 1024;
        v71 = v53;
        _os_log_debug_impl(&dword_29918C000, v48, OS_LOG_TYPE_DEBUG, "[MecabraJapanese::isValidLearningCandidate] %s: %@ (%@/%@), kind: %c", buf, 0x30u);
      }
    }
  }

  else
  {
    v7 = sub_2993652F8(6u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = v8;
      v11 = v8[3](0);
      v12 = v10[7](0);
      v13 = v10[29](0);
      v14 = v10[12](0);
      *buf = 138413058;
      v63 = v11;
      v64 = 2112;
      v65 = v12;
      v66 = 2112;
      v67 = v13;
      v68 = 1024;
      LODWORD(v69) = v14;
      _os_log_debug_impl(&dword_29918C000, v7, OS_LOG_TYPE_DEBUG, "[MecabraJapanese::isValidLearningCandidate] Failed to convert to Japanese Conversion Candidate: %@ (%@/%@), kind: %c", buf, 0x26u);
    }

    return 0;
  }

  return v9;
}

void sub_29933A1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29933A230(uint64_t a1, uint64_t a2, const __CFArray *a3, const __CFArray *a4, unint64_t a5, double *a6)
{
  if (!*(a1 + 240))
  {
    return 0;
  }

  sub_29933A3E4(a3, a4, v14);
  v11 = v14[0];
  if (v14[0] != v14[1])
  {
    v12 = sub_29933A6E0(a1, a2, a3, v14, a5, a6) > 0;
    if (!v11)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (v14[0])
  {
LABEL_7:
    operator delete(v11);
  }

  return v12;
}

void sub_29933A2DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29933A2F4(uint64_t a1, uint64_t a2, CFArrayRef theArray, unint64_t a4, double *a5)
{
  Count = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], Count, MEMORY[0x29EDB9000]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v14 = sub_299327878(*(a1 + 232), ValueAtIndex);
      CFArrayAppendValue(Mutable, v14);
      CFRelease(v14);
    }
  }

  v15 = sub_29933A230(a1, a2, theArray, Mutable, a4, a5);
  CFRelease(Mutable);
  return v15;
}

void sub_29933A3E4(const __CFArray *a3@<X2>, const __CFArray *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  sub_2992141C0(__p, &dword_299417CE8);
  if (CFArrayGetCount(a3) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
    CFArrayGetValueAtIndex(a4, 0);
    sub_299276A84(ValueAtIndex);
  }

  sub_2992141C0(__p, &dword_299417CEC);
  *a5 = *__p;
  *(a5 + 16) = v10;
}

void sub_29933A660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29933A6E0(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t *a4, unint64_t a5, double *a6)
{
  v36 = *MEMORY[0x29EDCA608];
  v10 = sub_2993652F8(7u);
  v31 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  v11 = *a4;
  v12 = (a4[1] - *a4) >> 2;
  if (v12 > a5)
  {
    v32 = 0;
    while (1)
    {
      if (a2 != 1 || a5 < 1 || a5 >= v12 - 1)
      {
        goto LABEL_8;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a3, a5 - 1);
      if ((sub_299281EBC(ValueAtIndex) & 1) == 0)
      {
        break;
      }

LABEL_37:
      ++a5;
      v11 = *a4;
      v12 = (a4[1] - *a4) >> 2;
      if (a5 >= v12)
      {
        return v32;
      }
    }

    v11 = *a4;
LABEL_8:
    v14 = *(a1 + 240);
    v15 = a5 - *(v14 + 32);
    if (v15 >= -1)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = a5 - v16;
    if (v31)
    {
      v18 = sub_2993F62C8(v14, (v11 + 4 * v16), v17 + 1);
      sub_299384428(*(a1 + 240), a2, *(*a4 + 4 * a5), *a4 + 4 * v16, a5 - v16, a6);
      v19 = sub_2993F62C8(*(a1 + 240), (*a4 + 4 * v16), v17 + 1);
      memset(&v33, 0, sizeof(v33));
      if (a5 >= v16)
      {
        do
        {
          v20 = sub_2993F52EC(*(a1 + 240), *(*a4 + 4 * v16));
          sub_299278568(v20, &__p);
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
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v33, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::string::append(&v33, " (", 2uLL);
          std::to_string(&__p, *(*a4 + 4 * v16));
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &__p;
          }

          else
          {
            v23 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v33, v23, v24);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::string::append(&v33, ") ", 2uLL);
          if (v20)
          {
            CFRelease(v20);
          }
        }

        while (v16++ < a5);
      }

      v26 = sub_2993652F8(7u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = &v33;
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v27 = v33.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__r_.__value_.__r.__words + 4) = v27;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v18;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
        v35 = v19;
        _os_log_debug_impl(&dword_29918C000, v26, OS_LOG_TYPE_DEBUG, "[MJL::incrementUsageCount] Incrementing usage counts for %s (probability: %lf -> %lf)", &__p, 0x20u);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_299384428(v14, a2, *(v11 + 4 * a5), v11 + 4 * v16, a5 - v16, a6);
    }

    ++v32;
    goto LABEL_37;
  }

  return 0;
}

void sub_29933AA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29933AA70(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2A1461120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461120))
  {
    sub_2991C6CA8(qword_2A1461140, off_2A145F3B0[0]);
    dword_2A1461158 = 0;
    word_2A146115C = 1;
    byte_2A146115E = 1;
    sub_2991C6CA8(qword_2A1461160, off_2A145F3B8);
    dword_2A1461178 = 0;
    word_2A146117C = 0;
    byte_2A146117E = 1;
    sub_2991C6CA8(qword_2A1461180, off_2A145F390[0]);
    dword_2A1461198 = 1;
    word_2A146119C = 0;
    byte_2A146119E = 1;
    sub_2991C6CA8(qword_2A14611A0, off_2A145F388[0]);
    dword_2A14611B8 = 1;
    word_2A14611BC = 0;
    byte_2A14611BE = 1;
    sub_2991C6CA8(qword_2A14611C0, off_2A145F398[0]);
    dword_2A14611D8 = 0;
    word_2A14611DC = 0;
    byte_2A14611DE = 1;
    __cxa_atexit(sub_29933B54C, 0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1461120);
  }

  v3 = 0uLL;
  v4 = 0;
  sub_299332338(&v3, qword_2A1461140, &qword_2A14611E0, 5uLL);
  sub_29921EF84(a2);
  *a2 = v3;
  *(a2 + 16) = v4;
  v4 = 0;
  v3 = 0uLL;
  v5 = &v3;
  sub_29921EB1C(&v5);
}

uint64_t sub_29933AC80(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = sub_2992C84D8(v2);
  }

  else
  {
    v3 = 1;
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = sub_2992C84D8(v4);
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2993409F4((a1 + 47));
  v7 = a1[23];
  if (v7)
  {
    v8 = sub_2992C84D8(v7);
  }

  else
  {
    v8 = 1;
  }

  if (v3 && v5)
  {
    return v6 & v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29933AD08(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 48))(a2))
  {
    v12[0] = sub_2992C77D8(a2, 0);
    v12[1] = v4;
    v11[0] = sub_2992C71F4(a2, 0);
    v11[1] = v5;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2000000000;
    v10 = 0;
    v6 = *(a1 + 208);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 0x40000000;
    v8[2] = sub_29933AE8C;
    v8[3] = &unk_29EF130A8;
    v8[4] = v9;
    sub_2993E4D48(v6, v12, v11, 2, v8);
  }

  return 1;
}

void sub_29933AE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29933AE8C(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *a3 = 1;
  *(*(*(result + 32) + 8) + 24) = 1;
  return result;
}

void sub_29933AEA8(uint64_t a1)
{
  sub_29933B398(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t *sub_29933AF00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_299215EC0(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *sub_29933AF54(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_29920DDE0(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_299215EC0((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_29920DE38(&v14);
  return v8;
}

void sub_29933B070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920DE38(va);
  _Unwind_Resume(a1);
}

void *sub_29933B084(void *a1, const void *a2, const void *a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_29933219C(a1, a2, a3, a7);
  *v11 = &unk_2A1F72B38;
  *(v11 + 8) = a4;
  *(v11 + 9) = a5;
  v11[6] = 0;
  v11[7] = 0;
  v11[5] = 0;
  sub_299215EC0(v11 + 5, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 1);
  return a1;
}

void sub_29933B110(void *a1)
{
  *a1 = &unk_2A1F72B38;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  sub_2993321FC(a1);

  JUMPOUT(0x29C29BFB0);
}

char *sub_29933B184(char *__dst, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int16 a7, __int16 a8, __int16 a9, __int16 a10, __int16 a11)
{
  if (*(a3 + 23) < 0)
  {
    sub_29922C89C(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v18 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v18;
  }

  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__dst + 24, *a2, *(a2 + 1));
  }

  else
  {
    v19 = *a2;
    *(__dst + 5) = *(a2 + 2);
    *(__dst + 24) = v19;
  }

  if (*(a4 + 23) < 0)
  {
    sub_29922C89C(__dst + 48, *a4, *(a4 + 1));
  }

  else
  {
    v20 = *a4;
    *(__dst + 8) = *(a4 + 2);
    *(__dst + 3) = v20;
  }

  if (*(a5 + 23) < 0)
  {
    sub_29922C89C(__dst + 72, *a5, *(a5 + 1));
  }

  else
  {
    v21 = *a5;
    *(__dst + 11) = *(a5 + 2);
    *(__dst + 72) = v21;
  }

  if (*(a6 + 23) < 0)
  {
    sub_29922C89C(__dst + 96, *a6, *(a6 + 1));
  }

  else
  {
    v22 = *a6;
    *(__dst + 14) = *(a6 + 2);
    *(__dst + 6) = v22;
  }

  *(__dst + 60) = a9;
  *(__dst + 61) = a8;
  *(__dst + 62) = a7;
  *(__dst + 63) = a10;
  *(__dst + 64) = a11;
  return __dst;
}

void sub_29933B2C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29933B324(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29933B398(uint64_t a1)
{
  sub_29933D8F0(a1 + 376);
  sub_299273884((a1 + 248));
  v2 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_29932C5A0((a1 + 184), 0);
  sub_29932C5A0((a1 + 176), 0);
  v5 = (a1 + 152);
  sub_29921EB1C(&v5);
  v5 = (a1 + 128);
  sub_29921EB1C(&v5);
  return sub_29932C230(a1);
}

uint64_t sub_29933B500(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F72BD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29933B54C()
{
  v0 = &byte_2A14611D7;
  v1 = -160;
  v2 = &byte_2A14611D7;
  do
  {
    v3 = *v2;
    v2 -= 32;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 32;
  }

  while (v1);
}

void sub_29933B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 24))(a1))
  {
    (*(*a1 + 40))(&v29, a1, a2, a3, a6);
    v12 = v29;
    if (v29 != v30)
    {
      v13 = *(a2 + 48);
      if (*(a2 + 56) != v13)
      {
        v14 = 0;
        do
        {
          v15 = -20.0;
          if (v14 < (v30 - v29) >> 3)
          {
            v15 = *(v29 + v14);
          }

          v16 = *(v13 + 8 * v14);
          v17 = *(a4 + 24);
          *buf = v16[24];
          *&__p.__r_.__value_.__l.__data_ = v15;
          if (!v17)
          {
            sub_2991A2240();
          }

          v18 = (*(*v17 + 48))(v17, buf, &__p);
          (*(*v16 + 400))(v16, v15);
          (*(*v16 + 480))(v16, v18);
          v19 = sub_2993652F8(0xCu);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = *(v16 + 55);
            if (v20 >= 0)
            {
              v21 = v16 + 8;
            }

            else
            {
              v21 = *(v16 + 4);
            }

            if (v20 >= 0)
            {
              v22 = *(v16 + 55);
            }

            else
            {
              v22 = *(v16 + 5);
            }

            sub_299277B3C(&__p, v21, v22);
            v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v24 = __p.__r_.__value_.__r.__words[0];
            v25 = v16[24];
            (*(*v16 + 392))(v16);
            ++v14;
            *buf = 134219010;
            p_p = &__p;
            if (v23 < 0)
            {
              p_p = v24;
            }

            *&buf[4] = v14;
            v32 = 2080;
            v33 = p_p;
            v34 = 1024;
            v35 = v18;
            v36 = 2048;
            v37 = v25;
            v38 = 2048;
            v39 = v26;
            _os_log_debug_impl(&dword_29918C000, v19, OS_LOG_TYPE_DEBUG, "%zu: [%s] cost: %d (geometry: %.3f, LM: %.3f)", buf, 0x30u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            ++v14;
          }

          v13 = *(a2 + 48);
        }

        while (v14 < (*(a2 + 56) - v13) >> 3);
      }

      sub_2992AB9D4(a2, a5);
      v12 = v29;
    }

    if (v12)
    {
      v30 = v12;
      operator delete(v12);
    }
  }
}

void sub_29933B8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29933B900(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v54 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 56) - *(a2 + 48)) >> 3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = (*(a2 + 56) - *(a2 + 48)) >> 3;
  }

  v8 = *(a1 + 8);
  if (v8 && ((*(*v8 + 48))(v8) & 1) != 0)
  {
    (*(**(a1 + 8) + 40))(*(a1 + 8), a3);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    sub_29928EF5C(&v46, v7);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        (*(**(a1 + 8) + 16))(__p);
        v12 = v47;
        if (v47 >= v48)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_299212A8C();
          }

          if (0x5555555555555556 * ((v48 - v46) >> 3) > v14)
          {
            v14 = 0x5555555555555556 * ((v48 - v46) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v48 - v46) >> 3) >= 0x555555555555555)
          {
            v15 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v15 = v14;
          }

          *v51 = &v46;
          if (v15)
          {
            sub_29920DDE0(&v46, v15);
          }

          v16 = (8 * ((v47 - v46) >> 3));
          *v16 = 0;
          v16[1] = 0;
          v16[2] = 0;
          *v16 = *__p;
          v16[2] = v45;
          __p[0] = 0;
          __p[1] = 0;
          v45 = 0;
          v17 = 24 * v13 + 24;
          v18 = (24 * v13 - (v47 - v46));
          memcpy(v16 - (v47 - v46), v46, v47 - v46);
          v19 = v46;
          v20 = *&v48;
          v46 = v18;
          v47 = v17;
          v48 = 0;
          *buf = v19;
          *&buf[16] = v19;
          v50 = v20;
          *&buf[8] = v19;
          sub_29920DE38(buf);
          v47 = v17;
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          *v47 = 0;
          *(v12 + 1) = 0;
          *(v12 + 2) = 0;
          *v12 = *__p;
          *(v12 + 2) = v45;
          v47 = v12 + 24;
        }
      }
    }

    (*(**(a1 + 8) + 64))(__p);
    v21 = (*(a2 + 56) - *(a2 + 48)) >> 3;
    *buf = 0;
    sub_2991DEB68(a5, v21, buf);
    v22 = *(a2 + 48);
    if (*(a2 + 56) != v22)
    {
      v23 = 0;
      do
      {
        if (v23 >= v7)
        {
          v30 = 0.0;
          v31 = -20.0;
        }

        else
        {
          v24 = &v46[24 * v23];
          v25 = *v24;
          v26 = *(v24 + 1);
          if (v25 == v26)
          {
            v29 = 0.0;
          }

          else
          {
            v27 = 0;
            do
            {
              if (!*v25++)
              {
                ++v27;
              }
            }

            while (v25 != v26);
            v29 = v27;
          }

          v30 = -v29;
          v31 = *(__p[0] + v23);
        }

        v32 = *(v22 + 8 * v23);
        *(*a5 + 8 * v23) = v31 + v30;
        v33 = sub_2993652F8(0xCu);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG) && v30 != 0.0)
        {
          v34 = sub_2993652F8(0xCu);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v37 = *(v32 + 32);
            v36 = v32 + 32;
            v35 = v37;
            v38 = *(v36 + 23);
            if (v38 >= 0)
            {
              v39 = v36;
            }

            else
            {
              v39 = v35;
            }

            if (v38 >= 0)
            {
              v40 = *(v36 + 23);
            }

            else
            {
              v40 = *(v36 + 8);
            }

            sub_299277B3C(&v43, v39, v40);
            v41 = v43.__r_.__value_.__r.__words[0];
            v42 = *(*a5 + 8 * v23);
            if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &v43;
            }

            *buf = 134219010;
            *&buf[4] = v23 + 1;
            *&buf[12] = 2080;
            *&buf[14] = v41;
            *&buf[22] = 2048;
            v50 = v31;
            *v51 = 2048;
            *&v51[2] = v42;
            v52 = 2048;
            v53 = -v30;
            _os_log_debug_impl(&dword_29918C000, v34, OS_LOG_TYPE_DEBUG, "%zu: [%s] Adjust Static LM Score: %.3f -> %.3f UNK Penalty: %.3f", buf, 0x34u);
            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }
          }
        }

        ++v23;
        v22 = *(a2 + 48);
      }

      while (v23 < (*(a2 + 56) - v22) >> 3);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *buf = &v46;
    sub_29920E060(buf);
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

void sub_29933BD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, char *a16, uint64_t a17, char a18)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a18;
  sub_29920E060(&__p);
  _Unwind_Resume(a1);
}

double sub_29933BE18(void *a1)
{
  if (!(*(*a1 + 24))(a1))
  {
    return 0.0;
  }

  v2 = *(**(*(a1[1] + 8) + 8) + 520);

  v2();
  return result;
}

uint64_t sub_29933BEB8(uint64_t result, uint64_t *a2)
{
  v2 = a2[1];
  *result = v2;
  *(result + *(v2 - 32)) = a2[2];
  *(result + 8) = 0;
  *(result + 16) = 0;
  v3 = *a2;
  *result = *a2;
  *(result + *(v3 - 32)) = a2[3];
  return result;
}

uint64_t *sub_29933BFC4(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  *result = v3;
  *(result + *(v3 - 32)) = a2[2];
  result[1] = *(a3 + 8);
  v4 = *a2;
  *result = *a2;
  *(result + *(v4 - 32)) = a2[3];
  return result;
}

CFIndex sub_29933C0DC(uint64_t a1)
{
  if (!(*(*a1 + 216))(a1))
  {
    return 0;
  }

  v2 = (*(*a1 + 24))(a1);
  result = CFStringGetLength(v2);
  if (result)
  {
    result -= CFStringGetCharacterAtIndex(v2, 0) == 32;
  }

  return result;
}

BOOL sub_29933C17C(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 96))(a1) == 89 && (*(*a2 + 96))(a2) != 89 || (*(*a1 + 96))(a1) != 89 && (*(*a2 + 96))(a2) == 89)
  {
    return 0;
  }

  if ((*(*a1 + 96))(a1) == 89 || (*(*a2 + 96))(a2) == 89)
  {
    v4 = (*(*a1 + 168))(a1);
    v5 = (*(*a2 + 168))(a2);
    if (CFNumberCompare(v4, v5, 0))
    {
      return 0;
    }

    v7 = (*(*a1 + 160))(a1);
    v8 = (*(*a2 + 160))(a2);
    return CFEqual(v7, v8) != 0;
  }

  else
  {

    return sub_29920D5C8(a1, a2);
  }
}

void sub_29933C3C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v41 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_2993652F8(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v18 = a1[1];
      v17 = (*(*a1 + 24))(a1);
      v8 = (*(*a1 + 56))(a1);
      v9 = (*(*a1 + 232))(a1);
      if ((*(*a1 + 96))(a1) < 32)
      {
        v10 = 63;
      }

      else
      {
        v10 = (*(*a1 + 96))(a1);
      }

      if ((*(*a1 + 408))(a1))
      {
        if ((*(*a1 + 408))(a1) == 2)
        {
          v11 = "prefix";
        }

        else
        {
          v11 = "partial";
        }
      }

      else
      {
        v11 = "exact";
      }

      v12 = (*(*a1 + 112))(a1);
      v13 = (*(*a1 + 384))(a1);
      v14 = (*(*a1 + 392))(a1);
      if (v14 >= -100.0)
      {
        v15 = *&v14;
      }

      else
      {
        v15 = 0xC059000000000000;
      }

      v16 = (*(*a1 + 200))(a1);
      *buf = 136317698;
      v20 = a3;
      v21 = 2048;
      v22 = v18;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 1024;
      v30 = v10;
      v31 = 2080;
      v32 = v11;
      v33 = 1024;
      v34 = v12;
      v35 = 1024;
      v36 = v13;
      v37 = 2048;
      v38 = v15;
      v39 = 1024;
      v40 = v16;
      _os_log_debug_impl(&dword_29918C000, v7, OS_LOG_TYPE_DEBUG, "%s (%ld): [%@] (%@/%@), type: %c, length: %s, cost: %d, base-cost: %d, prob: %3.3lf, autocorrected: %d", buf, 0x60u);
    }
  }
}

uint64_t IndexedSearchDictionaryBuild(int a1, void *a2)
{
  v99 = *MEMORY[0x29EDCA608];
  v4 = objc_alloc_init(MEMORY[0x29EDB9F38]);
  NSLog(&cfstr_BuildingDictio.isa, a2[3]);
  if (a1 == 4)
  {
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v5, a2[1], v6);
    v10 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x29EDB8DC0], v8, v7, v9);
    if (v10)
    {
      v13 = v10;
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v11, a2[3], v12);
      isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x29EDB8E70], v15, v14, 0);
      if (isDirectory)
      {
        v17 = isDirectory;
        if (sub_299243C48(isDirectory, v13))
        {
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v18, a2[2], v19);
          v21 = sub_2992432B4(0, v17, 0);
          v24 = objc_msgSend_objectForKeyedSubscript_(v13, v22, @"CFBundleIdentifier", v23);
          hasSuffix = objc_msgSend_hasSuffix_(v24, v25, @"Wubixing", v26);
          v94 = 0;
          v95 = 0;
          v28 = objc_msgSend_stringWithContentsOfFile_usedEncoding_error_(MEMORY[0x29EDBA0F8], v27, v20, &v95, &v94);
          if (v28)
          {
            v31 = v28;
            v32 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v29, 0, v30);
            v35 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v33, 0, v34);
            v39 = objc_msgSend_length(v31, v36, v37, v38);
            if (v39 >= 2)
            {
              v41 = v39;
              v42 = 0;
              v43 = 1;
              do
              {
                v92 = 0;
                v93 = 0;
                v91 = 0;
                objc_msgSend_getLineStart_end_contentsEnd_forRange_(v31, v40, &v93, &v92, &v91, v43, 1);
                v45 = objc_msgSend_substringWithRange_(v31, v44, v93, v91 - v93);
                v48 = objc_msgSend_componentsSeparatedByString_(v45, v46, @"\t", v47);
                if (objc_msgSend_count(v48, v49, v50, v51) < 3)
                {
                  NSLog(&cfstr_BadDictionaryD.isa, v45);
                }

                else
                {
                  v54 = objc_msgSend_objectAtIndex_(v48, v52, 0, v53);
                  objc_msgSend_addObject_(v32, v55, v54, v56);
                  v59 = objc_msgSend_objectAtIndexedSubscript_(v48, v57, 2, v58);
                  v62 = objc_msgSend_dataUsingEncoding_(v59, v60, 4, v61);
                  v65 = objc_msgSend_objectAtIndexedSubscript_(v48, v63, 1, v64);
                  if (hasSuffix)
                  {
                    v69 = objc_msgSend_intValue(v65, v66, v67, v68);
                    if (v69 >= 0x10)
                    {
                      fwrite("Wrong originalFlag. \n", 0x15uLL, 1uLL, *MEMORY[0x29EDCA610]);
                      exit(1);
                    }

                    v96 = v62;
                    v97 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v70, v69 | (16 * v42), v71);
                    v73 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v72, &v96, 2);
                    v75 = objc_msgSend_dictionaryWithObjects_forKeys_(MEMORY[0x29EDB8DC0], v74, v73, &unk_2A1F837A8);
                  }

                  else
                  {
                    v76 = objc_msgSend_rangeOfString_(v65, v66, @"1", v68) != 0x7FFFFFFFFFFFFFFFLL;
                    v96 = v62;
                    v97 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v77, v42, v78);
                    v98 = objc_msgSend_numberWithShort_(MEMORY[0x29EDBA070], v79, v76, v80);
                    v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v81, &v96, 3);
                    v75 = objc_msgSend_dictionaryWithObjects_forKeys_(MEMORY[0x29EDB8DC0], v83, v82, &unk_2A1F837C0);
                  }

                  v84 = sub_299243978(v21, v75);
                  objc_msgSend_addObject_(v35, v85, v84, v86);

                  ++v42;
                }

                v43 = v92;
              }

              while (v92 < v41);
            }

            v87 = sub_299243B9C(v21, v32, v35, 0);
            CFRelease(v21);

            if (v87)
            {
              NSLog(&cfstr_DictionaryWasB.isa);
              return 0;
            }

            goto LABEL_23;
          }

          NSLog(&cfstr_ReadingDiction.isa, v20, v94);
          CFRelease(v21);
        }

LABEL_23:
        NSLog(&cfstr_ErrorBuildingD.isa, v89);
        return 0xFFFFFFFFLL;
      }

      NSLog(&cfstr_CanTCreateUrlF.isa, v14);
    }

    else
    {
      NSLog(&cfstr_CanTReadTempla.isa, v7);
    }
  }

  else
  {
    NSLog(&cfstr_SUsageTemplate.isa, *a2);
  }

  return 0xFFFFFFFFLL;
}

unint64_t sub_29933CB60(unsigned int a1, unint64_t *a2, int a3)
{
  v3 = *a2;
  if (*a2 == -1)
  {
    return 0;
  }

  if (a3)
  {
    v4 = 0x80000000;
  }

  else
  {
    v4 = 1;
  }

  if (v3 <= 0x20)
  {
    v5 = 32;
  }

  else
  {
    v5 = *a2;
  }

  v6 = *a2;
  while (v5 != v6)
  {
    v7 = a1 << v6;
    if (!a3)
    {
      v7 = a1 >> v6;
    }

    ++v6;
    if ((v7 & v4) != 0)
    {
      goto LABEL_16;
    }
  }

  v6 = -1;
LABEL_16:
  *a2 = v6;
  if (v3 || !a3)
  {
    v10 = v6;
    v6 = v3;
  }

  else
  {
    v9 = 32;
    if (v6 > 0x20)
    {
      v9 = v6;
    }

    v10 = v6;
    while (v9 != v10)
    {
      v11 = a1 << v10++;
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_26;
      }
    }

    v10 = -1;
LABEL_26:
    *a2 = v10;
  }

  if (v10 == -1 && a3)
  {
    return 33 - v6;
  }

  v12 = v10 - v6;
  if (v10 == -1)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_29933CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73[20] = *MEMORY[0x29EDCA608];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v19 = a1 + 40;
  v18 = a1 + 64;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0xFF1FFF0130013002;
  sub_2991C6CA8(buf, "Reading");
  v37 = 0;
  v38 = 1;
  v39 = 1;
  sub_2991C6CA8(v40, "Surface");
  v41 = 0;
  v42 = 0;
  v43 = 1;
  sub_2991C6CA8(v44, "LeftSurface1");
  v45 = 0;
  v46 = 0;
  v47 = 1;
  sub_2991C6CA8(v48, "LeftSurface2");
  v49 = 0;
  v50 = 0;
  v51 = 1;
  sub_2991C6CA8(v52, "RightSurface1");
  v53 = 0;
  v54 = 0;
  v55 = 1;
  sub_2991C6CA8(v56, "POS");
  v57 = 1;
  v58 = 0;
  v59 = 1;
  sub_2991C6CA8(v60, "LeftPOS1");
  v61 = 1;
  v62 = 0;
  v63 = 1;
  sub_2991C6CA8(v64, "LeftPOS2");
  v65 = 1;
  v66 = 0;
  v67 = 1;
  sub_2991C6CA8(v68, "RightPOS1");
  v69 = 1;
  v70 = 0;
  v71 = 1;
  __dst[1] = 0;
  v22 = 0;
  __dst[0] = 0;
  sub_299332338(__dst, buf, &v72, 9uLL);
  sub_29921EF84(v19);
  *(a1 + 40) = *__dst;
  *(a1 + 56) = v22;
  __dst[1] = 0;
  v22 = 0;
  __dst[0] = 0;
  v32.__locale_ = __dst;
  sub_29921EB1C(&v32);
  v4 = 36;
  do
  {
    if (SHIBYTE(v33[v4 + 2]) < 0)
    {
      operator delete(v33[v4]);
    }

    v4 -= 4;
  }

  while (v4 * 8);
  sub_2991C6CA8(buf, "Key");
  v37 = 0;
  v38 = 1;
  v39 = 1;
  sub_2991C6CA8(v40, "Feature");
  v41 = 0;
  v42 = 0;
  v43 = 1;
  sub_2991C6CA8(v44, "IntValue");
  v45 = 1;
  v46 = 0;
  v47 = 1;
  sub_2991C6CA8(v48, "StrValue");
  v49 = 0;
  v50 = 0;
  v51 = 1;
  __dst[1] = 0;
  v22 = 0;
  __dst[0] = 0;
  sub_299332338(__dst, buf, v52, 4uLL);
  sub_29921EF84(v18);
  *(a1 + 64) = *__dst;
  *(a1 + 80) = v22;
  __dst[1] = 0;
  v22 = 0;
  __dst[0] = 0;
  v32.__locale_ = __dst;
  sub_29921EB1C(&v32);
  for (i = 0; i != -16; i -= 4)
  {
    if (SHIBYTE(v48[i + 2]) < 0)
    {
      operator delete(v48[i]);
    }
  }

  v6 = sub_29936C2B8();
  v7 = sub_29936C3FC(v6, 0, off_2A145F738[0], off_2A145F728[0], 0);
  v8 = sub_2993652F8(9u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (*(v7 + 23) >= 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = *v7;
    }

    *buf = 138412546;
    *&buf[4] = off_2A145F728[0];
    v35 = 2080;
    v36 = v17;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[JLPL::loadLexicalRules] Loading %@ (%s)", buf, 0x16u);
  }

  if (*(v7 + 23) >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v7;
  }

  sub_2991C70DC(buf, v9, 8);
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v10 = MEMORY[0x29EDC93D0];
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v11 = std::locale::use_facet(&v32, v10);
  v12 = (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v32);
  v13 = sub_2991EAC8C(buf, &v24, v12);
  if ((*(v13 + *(*v13 - 24) + 32) & 5) == 0)
  {
    if (v26 >= 0)
    {
      v14 = &v24;
    }

    else
    {
      v14 = v24;
    }

    if (v26 >= 0)
    {
      v15 = HIBYTE(v26);
    }

    else
    {
      v15 = v25;
    }

    sub_29927806C(v14, 9, v15, &v23);
    sub_299276D80(v23);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v24);
  }

  if (v27 != v28)
  {
    sub_299343B68((a1 + 88), __p, __p, &v27);
  }

  __dst[0] = &v27;
  sub_2993432E8(__dst);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  *buf = *MEMORY[0x29EDC9518];
  *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](&v36 + 2);
  std::istream::~istream();
  MEMORY[0x29C29BF00](v73);
  return a1;
}

void sub_29933D65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, char *a11, char *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
{
  a29 = &a58;
  sub_2993432E8(&a29);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  sub_2991D64B0(&a66, MEMORY[0x29EDC9518]);
  MEMORY[0x29C29BF00](&STACK[0x388]);
  sub_299344150(a13 + 88);
  a29 = a11;
  sub_29921EB1C(&a29);
  a29 = a12;
  sub_29921EB1C(&a29);
  sub_29932C5A0((a13 + 32), 0);
  sub_29932C5A0(a10, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29933D8F0(uint64_t a1)
{
  sub_299344150(a1 + 88);
  v3 = (a1 + 64);
  sub_29921EB1C(&v3);
  v3 = (a1 + 40);
  sub_29921EB1C(&v3);
  sub_29932C5A0((a1 + 32), 0);
  sub_29932C5A0((a1 + 24), 0);
  return a1;
}

uint64_t sub_29933D95C(uint64_t a1, const __CFURL *a2)
{
  if (a2)
  {
    v3 = sub_29927717C(a2, @"LexicalLearning_ja_JP.db");
    v4 = sub_29927717C(a2, @"NonLexicalLearning_ja_JP.db");
    if (v3)
    {
      if (v4)
      {
        operator new();
      }

      CFRelease(v3);
    }

    else if (v4)
    {
      CFRelease(v4);
    }
  }

  return 0;
}

void sub_29933DAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  MEMORY[0x29C29BFB0](v10, 0x10F2C40B10B6BF7, a3, a4, a5, a6, a7, a8);
  sub_29920FE30(&a9, 0);
  sub_29920FE30(&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29933DB28(uint64_t a1, __int16 a2)
{
  v6 = a2;
  v2 = &v6;
  sub_2992B8778(*(a1 + 32), v5, &v6, 1uLL, 0);
  if (v5[1] != v5[0])
  {
    v2 = *sub_2992B8D0C(v5[0], "StrValue");
  }

  v3 = *v2;
  v7 = v5;
  sub_299225D98(&v7);
  return v3;
}

void sub_29933DBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 24) = &a10;
  sub_299225D98((v10 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_29933DBBC(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, __int16 *a5, uint64_t a6)
{
  __p[5] = *MEMORY[0x29EDCA608];
  if (*(a1 + 32))
  {
    v6 = a3 == 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || a6 != 1 || *(a4 + 126))
  {
    return 0;
  }

  v8 = *a2;
  v9 = *a5;
  if (v9 > 0xFF00)
  {
    if (v9 == 65281)
    {
      if (v8 != 65281 && v8 != 33)
      {
        return 0;
      }

      *(a1 + 132) = v8;
    }

    else
    {
      if (v9 != 65311 || v8 != 65311 && v8 != 63)
      {
        return 0;
      }

      *(a1 + 134) = v8;
    }

LABEL_27:
    v12[0] = 0;
    v12[1] = 0;
    v11 = v12;
    sub_2991C6CA8(__p, "Key");
    sub_2992B7B08(&v11, a5, 1);
  }

  if (v9 == 12289)
  {
    if (v8 != 44 && v8 != 65292 && v8 != 12289)
    {
      return 0;
    }

    *(a1 + 130) = v8;
    goto LABEL_27;
  }

  if (v9 == 12290 && (v8 == 46 || v8 == 65294 || v8 == 12290))
  {
    *(a1 + 128) = v8;
    goto LABEL_27;
  }

  return 0;
}

void sub_29933DEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29933DF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74[6] = *MEMORY[0x29EDCA608];
  if (!*(a1 + 32))
  {
    return 0;
  }

  v35 = 0;
  if (!sub_299281F40(a4, a5, &v35, 1) || !v35)
  {
    return 0;
  }

  if (v35 != a5)
  {
    sub_2993439DC(&v32, a6 + 72);
  }

  if ((atomic_load_explicit(&qword_2A14611E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14611E0))
  {
    sub_299217DF0(__dst, L"日");
    sub_299217DF0(__p, L"日");
    sub_299217DF0(v67, "\bg");
    memset(v48, 0, sizeof(v48));
    sub_299273D44(v48, __p, &v68, 2uLL);
    sub_2993433BC(v69, __dst, v48);
    sub_299217DF0(v46, "\bg");
    sub_299217DF0(v64, L"日");
    sub_299217DF0(v65, "\bg");
    memset(v45, 0, sizeof(v45));
    sub_299273D44(v45, v64, __p, 2uLL);
    sub_2993433BC(&v70, v46, v45);
    sub_299217DF0(v43, L"時");
    sub_299217DF0(&v60, L"時");
    sub_299217DF0(v62, byte_29945CB74);
    sub_299217DF0(v63, byte_29945D91A);
    memset(v42, 0, sizeof(v42));
    sub_299273D44(v42, &v60, v64, 3uLL);
    sub_2993433BC(&v72, v43, v42);
    sub_299217DF0(v40, byte_29945CB74);
    sub_299217DF0(v56, L"時");
    sub_299217DF0(v58, byte_29945CB74);
    sub_299217DF0(v59, byte_29945D91A);
    memset(v39, 0, sizeof(v39));
    sub_299273D44(v39, v56, &v60, 3uLL);
    sub_2993433BC(v73, v40, v39);
    sub_299217DF0(v37, byte_29945D91A);
    sub_299217DF0(v52, L"時");
    sub_299217DF0(v54, byte_29945CB74);
    sub_299217DF0(v55, byte_29945D91A);
    memset(v36, 0, sizeof(v36));
    sub_299273D44(v36, v52, v56, 3uLL);
    sub_2993433BC(v74, v37, v36);
    sub_299343454(v69, 5);
    for (i = 24; i != -6; i -= 6)
    {
      sub_29934336C(&v69[i]);
    }

    v51 = v36;
    sub_299212B90(&v51);
    for (j = 0; j != -72; j -= 24)
    {
      if (v55[j + 23] < 0)
      {
        operator delete(*&v55[j]);
      }
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    v52[0] = v39;
    sub_299212B90(v52);
    for (k = 0; k != -72; k -= 24)
    {
      if (v59[k + 23] < 0)
      {
        operator delete(*&v59[k]);
      }
    }

    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    v56[0] = v42;
    sub_299212B90(v56);
    for (m = 0; m != -72; m -= 24)
    {
      if (v63[m + 23] < 0)
      {
        operator delete(*&v63[m]);
      }
    }

    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    *&v60 = v45;
    sub_299212B90(&v60);
    for (n = 0; n != -48; n -= 24)
    {
      if (v65[n + 23] < 0)
      {
        operator delete(*&v64[n + 24]);
      }
    }

    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    *&v60 = v48;
    sub_299212B90(&v60);
    for (ii = 0; ii != -48; ii -= 24)
    {
      if (v67[ii + 23] < 0)
      {
        operator delete(*&v67[ii]);
      }
    }

    if (v50 < 0)
    {
      operator delete(__dst[0]);
    }

    __cxa_atexit(sub_2993433B8, &xmmword_2A14611F8, &dword_29918C000);
    __cxa_guard_release(&qword_2A14611E0);
  }

  v9 = sub_29923AF34(&xmmword_2A14611F8, a6 + 72);
  v10 = *(&xmmword_2A14611F8 + 1);
  if (!*(&xmmword_2A14611F8 + 1))
  {
    goto LABEL_24;
  }

  v11 = v9;
  v12 = vcnt_s8(*(&xmmword_2A14611F8 + 8));
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v9;
    if (v9 >= *(&xmmword_2A14611F8 + 1))
    {
      v14 = v9 % *(&xmmword_2A14611F8 + 1);
    }
  }

  else
  {
    v14 = (*(&xmmword_2A14611F8 + 1) - 1) & v9;
  }

  v15 = *(xmmword_2A14611F8 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_24:
    sub_2993439DC(&v32, a6 + 72);
  }

  while (1)
  {
    v17 = *(v16 + 1);
    if (v11 == v17)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= v10)
      {
        v17 %= v10;
      }
    }

    else
    {
      v17 &= v10 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  if (!sub_29923AF78(&xmmword_2A14611F8, v16 + 8, (a6 + 72)))
  {
    goto LABEL_23;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_299308CE0(&v32, *(v16 + 5), *(v16 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(v16 + 6) - *(v16 + 5)) >> 3));
  if (v33 != v32)
  {
    sub_29933B184(v69, (a6 + 24), a6, &xmmword_299417F70, v32, &xmmword_299417F88, *(a6 + 124), *(a6 + 122), *(a6 + 120), *(a6 + 126), *(a6 + 128));
    v56[0] = 0;
    v56[1] = 0;
    v57 = 0;
    if (a5 == v35)
    {
      HIBYTE(v57) = 0;
      LOWORD(v56[0]) = 0;
      v18 = L"NW:RS1=";
      v19 = &v71;
    }

    else
    {
      sub_29925851C(&v60, (a4 + 2 * v35), a5 - v35);
      *v56 = v60;
      v57 = v61;
      v19 = v56;
      v18 = L"NW:SFX=";
    }

    sub_299343A98(v52, v18, v19);
    *(&v60 + 1) = 0;
    v61 = 0;
    *&v60 = &v60 + 8;
    v20 = v53;
    v21 = v52[0];
    v22 = v52[1];
    sub_2991C6CA8(__p, "Key");
    if ((v20 & 0x80u) == 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    if ((v20 & 0x80u) == 0)
    {
      v24 = v52;
    }

    else
    {
      v24 = v21;
    }

    sub_2992B7B08(&v60, v24, v23);
  }

  v69[0] = &v32;
  sub_299212B90(v69);
  return 0;
}

void sub_29933E8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  v73 = -240;
  v74 = v71;
  do
  {
    v74 = sub_29934336C(v74) - 48;
    v73 += 48;
  }

  while (v73);
  a66 = &a21;
  sub_299212B90(&a66);
  v75 = &a68;
  v76 = -72;
  v77 = &a68;
  while (1)
  {
    v78 = *v77;
    v77 -= 24;
    if (v78 < 0)
    {
      operator delete(*(v75 - 23));
    }

    v75 = v77;
    v76 += 24;
    if (!v76)
    {
      if (a29 < 0)
      {
        operator delete(__p);
      }

      a67 = &a30;
      sub_299212B90(&a67);
      v79 = &a70;
      v80 = -72;
      v81 = &a70;
      while (1)
      {
        v82 = *v81;
        v81 -= 24;
        if (v82 < 0)
        {
          operator delete(*(v79 - 23));
        }

        v79 = v81;
        v80 += 24;
        if (!v80)
        {
          if (a38 < 0)
          {
            operator delete(a33);
          }

          a69 = &a39;
          sub_299212B90(&a69);
          v83 = &STACK[0x22F];
          v84 = -72;
          v85 = &STACK[0x22F];
          while (1)
          {
            v86 = *v85;
            v85 -= 3;
            if (v86 < 0)
            {
              operator delete(*(v83 - 23));
            }

            v83 = v85;
            v84 += 24;
            if (!v84)
            {
              if (a47 < 0)
              {
                operator delete(a42);
              }

              a71 = &a48;
              sub_299212B90(&a71);
              v87 = &STACK[0x25F];
              v88 = -48;
              v89 = &STACK[0x25F];
              while (1)
              {
                v90 = *v89;
                v89 -= 3;
                if (v90 < 0)
                {
                  operator delete(*(v87 - 23));
                }

                v87 = v89;
                v88 += 24;
                if (!v88)
                {
                  if (a56 < 0)
                  {
                    operator delete(a51);
                  }

                  a71 = &a57;
                  sub_299212B90(&a71);
                  v91 = &STACK[0x28F];
                  v92 = -48;
                  v93 = &STACK[0x28F];
                  while (1)
                  {
                    v94 = *v93;
                    v93 -= 3;
                    if (v94 < 0)
                    {
                      operator delete(*(v91 - 23));
                    }

                    v91 = v93;
                    v92 += 24;
                    if (!v92)
                    {
                      if (a65 < 0)
                      {
                        operator delete(a60);
                      }

                      __cxa_guard_abort(&qword_2A14611E0);
                      _Unwind_Resume(a1);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_29933ED18(unsigned __int16 **a1, __int16 *a2, uint64_t a3, __int16 *a4, uint64_t a5, unsigned __int16 *a6)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1[3])
  {
    v11 = 0;
    v12 = 256;
    v13 = 0;
    sub_29933F4F8(*a1, a6, &v11);
    v10[0] = 0;
    v10[1] = 0;
    v9 = v10;
    sub_2991C6CA8(__p, "Reading");
    sub_2992B7B08(&v9, a2, a3);
  }

  return 0;
}

void sub_29933F3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_29933F4F8(unsigned __int16 *result, unsigned __int16 *a2, _BYTE *a3)
{
  v3 = a2[60];
  if (v3 <= 0x24E)
  {
    v4 = word_29940982A[v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = a2[61];
  if (v5 <= 0x24E)
  {
    v6 = word_29940982A[v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = a2[62];
  if (v7 <= 0x24E)
  {
    v8 = word_29940982A[v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = a2[63];
  if (v9 <= 0x24E)
  {
    v10 = word_29940982A[v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v4]);
  v12 = *v11;
  v13 = v11[1];
  if (v13 == 2)
  {
    v16 = 0;
    v15 = 6;
    v17 = v12;
    v18 = L"記号";
    while (1)
    {
      v19 = v16;
      if (*v18 != *v17)
      {
        break;
      }

      ++v17;
      ++v18;
      v16 = 1;
      if (v19)
      {
        goto LABEL_71;
      }
    }
  }

  else if (v13 == 4)
  {
    v14 = 0;
    v15 = 6;
    while (asc_29945B9D8[v14] == v12[v14])
    {
      if (++v14 == 4)
      {
        goto LABEL_71;
      }
    }
  }

  v20 = result[38];
  if (v20 > v4 || result[39] < v4)
  {
    v21 = result[36];
    if (v21 <= v4 && result[37] >= v4)
    {
      if (result[44] <= v10 && result[45] >= v10 || v20 <= v10 && result[39] >= v10)
      {
        a3[8] = 1;
      }

      v27 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v4 + 1]);
      if (v27[1] == 4)
      {
        v28 = 0;
        v29 = *v27;
        while (asc_29945B3B2[v28] == *(v29 + v28 * 2))
        {
          if (++v28 == 4)
          {
            v30 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v6 + 1]);
            if (v30[1] == 3)
            {
              v31 = 0;
              v32 = *v30;
              while (asc_29945AEEE[v31] == *(v32 + v31 * 2))
              {
                if (++v31 == 3)
                {
                  v33 = &off_29EF0DFF0 + 2 * word_299403FCA[7 * v6 + 6];
                  if (v33[1] == 1 && **v33 == 12398)
                  {
                    v15 = 2;
                    v34 = 6;
                    goto LABEL_70;
                  }

                  return result;
                }
              }
            }

            return result;
          }
        }
      }
    }

    else if (v13 == 3)
    {
      v22 = 0;
      while (asc_29945B866[v22] == v12[v22])
      {
        if (++v22 == 3)
        {
          if (v21 <= v6 && result[37] >= v6)
          {
            goto LABEL_64;
          }

          if (result[44] <= v6 && result[45] >= v6 && v21 <= v8 && result[37] >= v8)
          {
            goto LABEL_69;
          }

          return result;
        }
      }
    }

    return result;
  }

  v23 = result[36];
  if (v23 <= v6 && result[37] >= v6)
  {
LABEL_64:
    v15 = 6;
    v34 = 1;
  }

  else
  {
    if (result[44] > v6 || result[45] < v6 || v23 > v8 || result[37] < v8)
    {
      if (result[42] <= v4 && result[43] >= v4)
      {
        v24 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v6 + 1]);
        if (v24[1] == 4)
        {
          v25 = 0;
          v26 = *v24;
          v15 = 6;
          while (asc_29945AE74[v25] == *(v26 + v25 * 2))
          {
            if (++v25 == 4)
            {
              goto LABEL_71;
            }
          }
        }
      }

      return result;
    }

    a3[1] = 1;
LABEL_69:
    a3[6] = 1;
    v15 = 7;
    v34 = 2;
  }

LABEL_70:
  a3[v34] = 1;
LABEL_71:
  a3[v15] = 1;
  return result;
}

uint64_t sub_29933F890(unsigned __int16 **a1, __int16 *a2, uint64_t a3, UniChar *chars, CFIndex numChars, unsigned __int16 *a6, int a7, int a8, __int16 *a9, uint64_t a10)
{
  v17 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], chars, numChars, *MEMORY[0x29EDB8EE8]);
  if (CEMStringIsSingleEmoji())
  {
    v18 = 0;
  }

  else if (sub_29933DBBC(a1, chars, numChars, a6, a9, a10))
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_29933DF7C(a1, v19, v20, chars, numChars, a6);
    if (((v18 | a7 ^ 1) & 1) == 0)
    {
      v18 = sub_29933ED18(a1, a2, a3, chars, numChars, a6);
    }
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v18;
}

void sub_29933F9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_29933F9C0(unsigned __int16 **a1, unsigned __int16 *a2, void **a3, void **a4, void **a5, void **a6, void **a7, int a8, __int16 a9, __int16 a10, __int16 a11, unsigned __int16 a12, char a13)
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = a2;
  v20 = a10;
  v183 = *MEMORY[0x29EDCA608];
  v176 = 0;
  *v177 = 256;
  *&v177[2] = 0;
  if (a13)
  {
    LOBYTE(v176) = *a5 != a5[1];
    BYTE1(v176) = *a4 != a4[1];
    BYTE2(v176) = *a3 != a3[1];
    HIBYTE(v176) = *a6 != a6[1];
    v177[0] = *a7 != a7[1];
    v21.i16[0] = a10;
    v21.i16[1] = a9;
    v21.i16[2] = a8;
    v21.i16[3] = a11;
    v22 = vbic_s8(0x1000100010001, vceqz_s16(v21));
    *&v177[1] = vuzp1_s8(v22, v22).u32[0];
    v177[5] = a12 != 0;
  }

  else
  {
    sub_29933F4F8(*a1, a2, &v176);
    v20 = a10;
  }

  v23 = v19[60];
  if (v23 <= 0x24E)
  {
    v24 = word_29940982A[v23];
  }

  else
  {
    v24 = 0;
  }

  if (v20 <= 0x24E)
  {
    v25 = word_29940982A[v20];
  }

  else
  {
    v25 = 0;
  }

  v26 = &word_299403FCA[7 * v24];
  v27 = (&off_29EF0DFF0 + 2 * *v26);
  v28 = &word_299403FCA[7 * v25];
  v29 = (&off_29EF0DFF0 + 2 * *v28);
  v156 = *v29;
  __src = *v27;
  v158 = v29[1];
  v159 = v27[1];
  v30 = (&off_29EF0DFF0 + 2 * v26[1]);
  v32 = *v30;
  v31 = v30[1];
  v33 = (&off_29EF0DFF0 + 2 * v28[1]);
  v160 = v31;
  v161 = *v33;
  v155 = v33[1];
  v34 = sub_2993652F8(6u);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    sub_2991D7954(v170);
    v154 = v32;
    v153 = v13;
    sub_2991D7954(v164);
    v35 = sub_2991C0E9C(&v171, "[", 1);
    v36 = *(v19 + 71);
    if (v36 >= 0)
    {
      v37 = v19 + 24;
    }

    else
    {
      v37 = *(v19 + 6);
    }

    if (v36 >= 0)
    {
      v38 = *(v19 + 71);
    }

    else
    {
      v38 = *(v19 + 7);
    }

    sub_299277B3C(&v178, v37, v38);
    if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v178;
    }

    else
    {
      v39 = v178.__r_.__value_.__r.__words[0];
    }

    if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = sub_2991C0E9C(v35, v39, HIBYTE(v178.__r_.__value_.__r.__words[2]));
    }

    else
    {
      v40 = sub_2991C0E9C(v35, v39, v178.__r_.__value_.__l.__size_);
    }

    v41 = v40;
    if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v178.__r_.__value_.__l.__data_);
    }

    sub_2991C0E9C(v41, "] ", 2);
    v42 = sub_2991C0E9C(&v165, "[", 1);
    sub_299277B3C(&v178, *v16, (v16[1] - *v16) >> 1);
    if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v178;
    }

    else
    {
      v43 = v178.__r_.__value_.__r.__words[0];
    }

    if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = sub_2991C0E9C(v42, v43, HIBYTE(v178.__r_.__value_.__r.__words[2]));
    }

    else
    {
      v44 = sub_2991C0E9C(v42, v43, v178.__r_.__value_.__l.__size_);
    }

    v45 = v44;
    if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v178.__r_.__value_.__l.__data_);
    }

    sub_2991C0E9C(v45, "] ", 2);
    v152 = v177[1];
    if (v177[1] == 1)
    {
      v46 = sub_2991C0E9C(&v171, "POS:(", 5);
      v47 = MEMORY[0x29C29BD70](v46, v19[60]);
      v48 = sub_2991C0E9C(v47, ")", 1);
      sub_299277B3C(&v178, __src, v159);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v178;
      }

      else
      {
        v49 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = sub_2991C0E9C(v48, v49, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v50 = sub_2991C0E9C(v48, v49, v178.__r_.__value_.__l.__size_);
      }

      v51 = v50;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      v52 = sub_2991C0E9C(v51, ",", 1);
      sub_299277B3C(&v178, v154, v160);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v178;
      }

      else
      {
        v53 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = sub_2991C0E9C(v52, v53, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v54 = sub_2991C0E9C(v52, v53, v178.__r_.__value_.__l.__size_);
      }

      v55 = v54;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v55, " ", 1);
      v56 = sub_2991C0E9C(&v165, "POS:(", 5);
      v57 = MEMORY[0x29C29BD70](v56, a10);
      v58 = sub_2991C0E9C(v57, ")", 1);
      sub_299277B3C(&v178, v156, v158);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v178;
      }

      else
      {
        v59 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = sub_2991C0E9C(v58, v59, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v60 = sub_2991C0E9C(v58, v59, v178.__r_.__value_.__l.__size_);
      }

      v61 = v60;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      v62 = sub_2991C0E9C(v61, ",", 1);
      sub_299277B3C(&v178, v161, v155);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = &v178;
      }

      else
      {
        v63 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = sub_2991C0E9C(v62, v63, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v64 = sub_2991C0E9C(v62, v63, v178.__r_.__value_.__l.__size_);
      }

      v65 = v64;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v65, " ", 1);
    }

    if (v177[2] == 1)
    {
      v66 = sub_2991C0E9C(&v171, "LeftPOS1:", 9);
      v67 = MEMORY[0x29C29BD70](v66, v19[61]);
      sub_2991C0E9C(v67, " ", 1);
      v68 = sub_2991C0E9C(&v165, "LeftPOS1:", 9);
      v69 = MEMORY[0x29C29BD70](v68, a9);
      sub_2991C0E9C(v69, " ", 1);
    }

    if (v177[3] == 1)
    {
      v70 = sub_2991C0E9C(&v171, "LeftPOS2:", 9);
      v71 = MEMORY[0x29C29BD70](v70, v19[62]);
      sub_2991C0E9C(v71, " ", 1);
      v72 = sub_2991C0E9C(&v165, "LeftPOS2:", 9);
      v73 = MEMORY[0x29C29BD70](v72, v153);
      sub_2991C0E9C(v73, " ", 1);
    }

    if (v177[4] == 1)
    {
      v74 = sub_2991C0E9C(&v171, "RightPOS1:", 10);
      v75 = MEMORY[0x29C29BD70](v74, v19[63]);
      sub_2991C0E9C(v75, " ", 1);
      v76 = sub_2991C0E9C(&v165, "RightPOS1:", 10);
      v77 = MEMORY[0x29C29BD70](v76, a11);
      sub_2991C0E9C(v77, " ", 1);
    }

    if (v177[5] == 1)
    {
      v78 = sub_2991C0E9C(&v171, "RightPOS2:", 10);
      v79 = MEMORY[0x29C29BD70](v78, v19[64]);
      sub_2991C0E9C(v79, " ", 1);
      v80 = sub_2991C0E9C(&v165, "RightPOS2:", 10);
      v81 = MEMORY[0x29C29BD70](v80, a12);
      sub_2991C0E9C(v81, " ", 1);
    }

    if (BYTE1(v176) == 1)
    {
      v82 = sub_2991C0E9C(&v171, "LeftSurface1:", 13);
      v83 = *(v19 + 23);
      if (v83 >= 0)
      {
        v84 = v19;
      }

      else
      {
        v84 = *v19;
      }

      if (v83 >= 0)
      {
        v85 = *(v19 + 23);
      }

      else
      {
        v85 = *(v19 + 1);
      }

      sub_299277B3C(&v178, v84, v85);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = &v178;
      }

      else
      {
        v86 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v87 = sub_2991C0E9C(v82, v86, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v87 = sub_2991C0E9C(v82, v86, v178.__r_.__value_.__l.__size_);
      }

      v88 = v87;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v88, " ", 1);
      v89 = sub_2991C0E9C(&v165, "LeftSurface1:", 13);
      sub_299277B3C(&v178, *v17, (v17[1] - *v17) >> 1);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = &v178;
      }

      else
      {
        v90 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = sub_2991C0E9C(v89, v90, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v91 = sub_2991C0E9C(v89, v90, v178.__r_.__value_.__l.__size_);
      }

      v92 = v91;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v92, " ", 1);
    }

    if (BYTE2(v176) == 1)
    {
      v93 = sub_2991C0E9C(&v171, "LeftSurface2:", 13);
      v94 = *(v19 + 47);
      if (v94 >= 0)
      {
        v95 = v19 + 12;
      }

      else
      {
        v95 = *(v19 + 3);
      }

      if (v94 >= 0)
      {
        v96 = *(v19 + 47);
      }

      else
      {
        v96 = *(v19 + 4);
      }

      sub_299277B3C(&v178, v95, v96);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v178;
      }

      else
      {
        v97 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = sub_2991C0E9C(v93, v97, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v98 = sub_2991C0E9C(v93, v97, v178.__r_.__value_.__l.__size_);
      }

      v99 = v98;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v99, " ", 1);
      v100 = sub_2991C0E9C(&v165, "LeftSurface2:", 13);
      sub_299277B3C(&v178, *v18, (v18[1] - *v18) >> 1);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = &v178;
      }

      else
      {
        v101 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v102 = sub_2991C0E9C(v100, v101, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v102 = sub_2991C0E9C(v100, v101, v178.__r_.__value_.__l.__size_);
      }

      v103 = v102;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v103, " ", 1);
    }

    if (HIBYTE(v176) == 1)
    {
      v104 = sub_2991C0E9C(&v171, "RightSurface1:", 14);
      v105 = *(v19 + 95);
      if (v105 >= 0)
      {
        v106 = v19 + 36;
      }

      else
      {
        v106 = *(v19 + 9);
      }

      if (v105 >= 0)
      {
        v107 = *(v19 + 95);
      }

      else
      {
        v107 = *(v19 + 10);
      }

      sub_299277B3C(&v178, v106, v107);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v108 = &v178;
      }

      else
      {
        v108 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v109 = sub_2991C0E9C(v104, v108, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v109 = sub_2991C0E9C(v104, v108, v178.__r_.__value_.__l.__size_);
      }

      v110 = v109;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v110, " ", 1);
      v111 = sub_2991C0E9C(&v165, "RightSurface1:", 14);
      sub_299277B3C(&v178, *v15, (v15[1] - *v15) >> 1);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v112 = &v178;
      }

      else
      {
        v112 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v113 = sub_2991C0E9C(v111, v112, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v113 = sub_2991C0E9C(v111, v112, v178.__r_.__value_.__l.__size_);
      }

      v114 = v113;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v114, " ", 1);
    }

    if (v177[0] == 1)
    {
      v115 = sub_2991C0E9C(&v171, "RightSurface2:", 14);
      v116 = *(v19 + 119);
      if (v116 >= 0)
      {
        v117 = v19 + 48;
      }

      else
      {
        v117 = *(v19 + 12);
      }

      if (v116 >= 0)
      {
        v118 = *(v19 + 119);
      }

      else
      {
        v118 = *(v19 + 13);
      }

      sub_299277B3C(&v178, v117, v118);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v119 = &v178;
      }

      else
      {
        v119 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v120 = sub_2991C0E9C(v115, v119, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v120 = sub_2991C0E9C(v115, v119, v178.__r_.__value_.__l.__size_);
      }

      v121 = v120;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v121, " ", 1);
      v122 = sub_2991C0E9C(&v165, "RightSurface2:", 14);
      sub_299277B3C(&v178, *v14, (v14[1] - *v14) >> 1);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v123 = &v178;
      }

      else
      {
        v123 = v178.__r_.__value_.__r.__words[0];
      }

      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v124 = sub_2991C0E9C(v122, v123, HIBYTE(v178.__r_.__value_.__r.__words[2]));
      }

      else
      {
        v124 = sub_2991C0E9C(v122, v123, v178.__r_.__value_.__l.__size_);
      }

      v125 = v124;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      sub_2991C0E9C(v125, " ", 1);
    }

    v126 = sub_2993652F8(6u);
    v150 = v16;
    v151 = v17;
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
    {
      v142 = v18;
      v143 = v15;
      v144 = v19;
      v145 = v14;
      sub_29927989C(v170, &v178);
      v146 = SHIBYTE(v178.__r_.__value_.__r.__words[2]);
      v147 = v178.__r_.__value_.__r.__words[0];
      sub_29927989C(v164, v162);
      v148 = &v178;
      if (v146 < 0)
      {
        v148 = v147;
      }

      if (v163 >= 0)
      {
        v149 = v162;
      }

      else
      {
        v149 = v162[0];
      }

      *buf = 136315394;
      v180 = v148;
      v181 = 2080;
      v182 = v149;
      _os_log_debug_impl(&dword_29918C000, v126, OS_LOG_TYPE_DEBUG, "[LPL::matchFeature] Comparing(%s) with(%s)", buf, 0x16u);
      if (v163 < 0)
      {
        operator delete(v162[0]);
      }

      v14 = v145;
      v19 = v144;
      v15 = v143;
      v18 = v142;
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }
    }

    v127 = v18;
    v128 = v15;
    v129 = v19;
    v130 = v14;
    v164[0] = *MEMORY[0x29EDC9528];
    v131 = v164[0];
    v132 = *(MEMORY[0x29EDC9528] + 72);
    v133 = *(MEMORY[0x29EDC9528] + 64);
    *(v164 + *(v164[0] - 24)) = v133;
    v134 = v132;
    v165 = v132;
    v166 = MEMORY[0x29EDC9570] + 16;
    if (v168 < 0)
    {
      operator delete(v167[7].__locale_);
    }

    v166 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v167);
    std::iostream::~basic_iostream();
    MEMORY[0x29C29BF00](&v169);
    v170[0] = v131;
    *(v170 + *(v131 - 24)) = v133;
    v171 = v134;
    v172 = MEMORY[0x29EDC9570] + 16;
    if (v174 < 0)
    {
      operator delete(v173[7].__locale_);
    }

    v172 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v173);
    std::iostream::~basic_iostream();
    MEMORY[0x29C29BF00](&v175);
    v14 = v130;
    v19 = v129;
    v15 = v128;
    v18 = v127;
    v16 = v150;
    v17 = v151;
    v13 = v153;
    v32 = v154;
    v135 = v161;
    if (!v152)
    {
      goto LABEL_189;
    }
  }

  else
  {
    v135 = v161;
    if ((v177[1] & 1) == 0)
    {
      goto LABEL_189;
    }
  }

  if (a10 != 407 && v19[60] == 407)
  {
    return 0;
  }

  v136 = v159;
  if (v159 != v158)
  {
    return 0;
  }

  v138 = v156;
  v137 = __src;
  if (v159)
  {
    while (*v138 == *v137)
    {
      ++v137;
      ++v138;
      if (!--v136)
      {
        goto LABEL_185;
      }
    }

    return 0;
  }

LABEL_185:
  if (v160 != v155)
  {
    return 0;
  }

  if (v160)
  {
    while (*v135 == *v32)
    {
      ++v32;
      ++v135;
      if (!--v160)
      {
        goto LABEL_189;
      }
    }

    return 0;
  }

LABEL_189:
  if (v177[2] == 1 && v19[61] != a9)
  {
    return 0;
  }

  v140 = v177[3] != 1 || v19[62] == v13;
  if (!v140 || v177[4] == 1 && v19[63] != a11 || v177[5] == 1 && v19[64] != a12)
  {
    return 0;
  }

  if ((v176 != 1 || (result = sub_299340988(v19 + 6, *v16, v16[1]))) && (BYTE1(v176) != 1 || (result = sub_299340988(v19, *v17, v17[1]))) && (BYTE2(v176) != 1 || (result = sub_299340988(v19 + 3, *v18, v18[1]))) && (HIBYTE(v176) != 1 || (result = sub_299340988(v19 + 9, *v15, v15[1]))))
  {
    if (v177[0] != 1)
    {
      return 1;
    }

    result = sub_299340988(v19 + 12, *v14, v14[1]);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void sub_299340904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  if (*(v62 - 129) < 0)
  {
    operator delete(*(v62 - 152));
  }

  sub_2992510CC(&a28);
  sub_2992510CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_299340988(void *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      v4 = a3 - a2;
      if (v3 != v4 >> 1)
      {
        return 0;
      }

      return memcmp(a1, a2, v4) == 0;
    }

    return a3 == a2;
  }

  v5 = a1[1];
  if (!v5)
  {
    return a3 == a2;
  }

  v4 = a3 - a2;
  if (v5 == v4 >> 1)
  {
    a1 = *a1;
    return memcmp(a1, a2, v4) == 0;
  }

  return 0;
}

uint64_t sub_2993409F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = sub_2992C84D8(v2);
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = sub_2992C84D8(v4);
  }

  else
  {
    v5 = 1;
  }

  return v3 & v5;
}

uint64_t sub_299340A44(uint64_t a1, char *a2, const void **a3, void *a4, int a5, char a6, char a7)
{
  v235 = *MEMORY[0x29EDCA608];
  if (!a2 || ((*(*a2 + 88))(a2) & 1) != 0 || (*(*a2 + 96))(a2) == 80 || (*(*a2 + 96))(a2) == 89)
  {
    return 0;
  }

  v164 = a3;
  v13 = (*(*a2 + 304))(a2);
  v15 = *v13;
  v14 = v13[1];
  v176 = v13;
  v16 = (*(*a2 + 544))(a2);
  v18 = v17;
  __s1 = v16;
  v216[0] = v16;
  v216[1] = v17;
  v19 = a2 + 96;
  v185 = a2;
  if (a2[119] < 0)
  {
    v19 = *v19;
  }

  if (a5 && v17 && *v16 == 32 && sub_299342610(v216))
  {
    return 0;
  }

  v210 = *(a1 + 8);
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v209 = 0;
  memset(&v208, 0, sizeof(v208));
  memset(&v207, 0, sizeof(v207));
  sub_299383450(a4, 0, &v208, &v207, &v209 + 1, &v209);
  if (HIWORD(v209) <= 0x64FuLL)
  {
    v181 = word_299409CC8[HIWORD(v209)];
  }

  else
  {
    v181 = 0;
  }

  if (v209 <= 0x64FuLL)
  {
    v20 = word_299409CC8[v209];
  }

  else
  {
    v20 = 0;
  }

  sub_29925851C(&__dst, __s1, v18);
  if (0xCCCCCCCCCCCCCCCDLL * ((v176[1] - *v176) >> 3) < 2)
  {
    v203 = 0uLL;
    v204 = 0;
  }

  else
  {
    sub_29925851C(&v203, &__s1[2 * *(*v176 + 24)], *(*v176 + 64));
  }

  __p = 0uLL;
  v202 = 0;
  if (v14 == v15)
  {
LABEL_382:
    v11 = 0;
    goto LABEL_383;
  }

  v177 = 0;
  v175 = 0;
  v21 = 0;
  v166 = v14 - v15;
  v22 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v15) >> 3);
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v168 = v22;
  do
  {
    v180 = v181;
    v23 = v185;
    v171 = (*(*v185 + 312))(v185, v21);
    v184 = (*(*v23 + 320))(v23, v21);
    v187 = *(*v176 + 40 * v21 + 24);
    v173 = (*(*v23 + 352))(v23, v21);
    v186 = v21;
    v24 = (*(*v23 + 344))(v23, v21);
    v172 = v24;
    if (v24 <= 0x64F)
    {
      v181 = word_299409CC8[v24];
    }

    else
    {
      v181 = 0;
    }

    v174 = v21 + 1;
    v25 = (*(*v185 + 344))(v185);
    if (v25 <= 0x64F)
    {
      v26 = word_299409CC8[v25];
    }

    else
    {
      v26 = 0;
    }

    v27 = v186 + 2;
    v28 = (*(*v185 + 344))(v185, v186 + 2);
    if (v28 <= 0x64F)
    {
      v29 = word_299409CC8[v28];
    }

    else
    {
      v29 = 0;
    }

    if (v27 >= 0xCCCCCCCCCCCCCCCDLL * ((v176[1] - *v176) >> 3))
    {
      v189[0] = 0;
      v189[1] = 0;
      v190 = 0;
    }

    else
    {
      sub_29925851C(v189, &__s1[2 * *(*v176 + 40 * v186 + 24) + 2 * *(*v176 + 40 * v186 + 64)], *(*v176 + 40 * v27 + 24));
    }

    if (SHIBYTE(v202) < 0)
    {
      operator delete(__p);
    }

    __p = *v189;
    v202 = v190;
    sub_29933B184(v189, &v207, &v208, &__dst, &v203, &__p, v20, v180, v181, v26, v29);
    __src = v19;
    v30 = *(*(*v185 + 560))(v185, v186) - 3;
    if (v30 < 2 || (a6 & 1) != 0)
    {
      goto LABEL_58;
    }

    v167 = v30;
    v31 = *(a1 + 24);
    if (v31)
    {
      if (!v184)
      {
        goto LABEL_48;
      }

      v32 = v19;
      if ((**(a1 + 16) & 0x4000000) == 0 || *v19 == 9787)
      {
        goto LABEL_49;
      }

      if ((u_charType(*v19) - 19) >= 0xB)
      {
        v31 = *(a1 + 24);
LABEL_48:
        v32 = v19;
LABEL_49:
        if (v32)
        {
          v33 = v184;
        }

        else
        {
          v33 = 0;
        }

        v165 = v33;
        sub_2992B8778(v31, &v224, v32, v33, 0);
        size = v224.__r_.__value_.__l.__size_;
        v34 = v224.__r_.__value_.__r.__words[0];
        if (v224.__r_.__value_.__r.__words[0] != v224.__r_.__value_.__l.__size_)
        {
          v35 = 15;
          do
          {
            v178 = sub_2992B8D0C(v34, "Surface");
            v36 = sub_2992B8D0C(v34, "Reading");
            v37 = sub_2992B8D0C(v34, "Surface");
            v38 = sub_2992B8D0C(v34, "LeftSurface1");
            v39 = sub_2992B8D0C(v34, "LeftSurface2");
            v40 = sub_2992B8D0C(v34, "RightSurface1");
            v41 = sub_2992B8DA4(v34, "POS");
            v42 = sub_2992B8DA4(v34, "LeftPOS1");
            v43 = sub_2992B8DA4(v34, "LeftPOS2");
            v44 = sub_2992B8DA4(v34, "RightPOS1");
            if (sub_29933F9C0(a1, v189, v39, v38, v37, v40, qword_299417FA0, v43, v42, v41, v44, 0, 0))
            {
              sub_2992738F8(&v210, *v178, (*(v178 + 8) - *v178) >> 1, v171, *v36, (*(v36 + 8) - *v36) >> 1, v173, v172);
              v56 = __src;
              v64 = sub_2993652F8(6u);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                if (__s1)
                {
                  v103 = v187;
                }

                else
                {
                  v103 = 0;
                }

                sub_299277B3C(&v222, __s1, v103);
                if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v104 = &v222;
                }

                else
                {
                  v104 = v222.__r_.__value_.__r.__words[0];
                }

                sub_299277B3C(&v221, __src, v165);
                v105 = SHIBYTE(v221.__r_.__value_.__r.__words[2]);
                v106 = v221.__r_.__value_.__r.__words[0];
                sub_299277B3C(&v220, *v178, (*(v178 + 8) - *v178) >> 1);
                v107 = &v221;
                if (v105 < 0)
                {
                  v107 = v106;
                }

                v108 = &v220;
                if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v108 = v220.__r_.__value_.__r.__words[0];
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136316674;
                *(buf.__r_.__value_.__r.__words + 4) = v104;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v107;
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v226 = v108;
                v227 = 1024;
                v228 = v173;
                v229 = 1024;
                v230 = v172;
                v231 = 1024;
                v232 = v199;
                v233 = 1024;
                v234 = v200;
                _os_log_debug_impl(&dword_29918C000, v64, OS_LOG_TYPE_DEBUG, "[LPL::applyLexicalPreferences] %s (%s) => %s (lc:%d rc:%d f-lc:%d f-rc:%d)", &buf, 0x38u);
                if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v220.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v221.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v222.__r_.__value_.__l.__data_);
                }
              }

              buf.__r_.__value_.__r.__words[0] = &v224;
              sub_299225D98(&buf);
              goto LABEL_300;
            }

            if (!v35)
            {
              break;
            }

            v34 += 32;
            --v35;
          }

          while (v34 != size);
        }

        buf.__r_.__value_.__r.__words[0] = &v224;
        sub_299225D98(&buf);
        v30 = v167;
LABEL_58:
        if (v30 < 2)
        {
          goto LABEL_81;
        }
      }
    }

    sub_29925851C(&v219, __src, v184);
    v45 = sub_29923AF34(a1 + 88, &v219);
    v46 = *(a1 + 96);
    if (!*&v46)
    {
      goto LABEL_76;
    }

    v47 = v45;
    v48 = vcnt_s8(v46);
    v48.i16[0] = vaddlv_u8(v48);
    v49 = v48.u32[0];
    if (v48.u32[0] > 1uLL)
    {
      v50 = v45;
      if (v45 >= *&v46)
      {
        v50 = v45 % *&v46;
      }
    }

    else
    {
      v50 = (*&v46 - 1) & v45;
    }

    v51 = *(*(a1 + 88) + 8 * v50);
    if (!v51 || (v52 = *v51) == 0)
    {
LABEL_75:
      v46.i8[0] = 0;
      goto LABEL_76;
    }

    while (1)
    {
      v53 = *(v52 + 1);
      if (v47 == v53)
      {
        break;
      }

      if (v49 > 1)
      {
        if (v53 >= *&v46)
        {
          v53 %= *&v46;
        }
      }

      else
      {
        v53 &= *&v46 - 1;
      }

      if (v53 != v50)
      {
        goto LABEL_75;
      }

LABEL_74:
      v52 = *v52;
      if (!v52)
      {
        goto LABEL_75;
      }
    }

    if (!sub_29923AF78(a1 + 88, v52 + 8, &v219))
    {
      goto LABEL_74;
    }

    v69 = *(v52 + 5);
    v68 = *(v52 + 6);
    while (1)
    {
      if (v69 == v68)
      {
        v86 = 0;
        goto LABEL_222;
      }

      v70 = *(v69 + 95);
      if (v70 >= 0)
      {
        v71 = (v69 + 72);
      }

      else
      {
        v71 = *(v69 + 72);
      }

      if (v70 >= 0)
      {
        v72 = *(v69 + 95);
      }

      else
      {
        v72 = *(v69 + 80);
      }

      memset(&buf, 0, sizeof(buf));
      sub_2992A4CD0(&buf, v71, &v71[v72], v72);
      v73 = *(v69 + 47);
      if (v73 >= 0)
      {
        v74 = (v69 + 24);
      }

      else
      {
        v74 = *(v69 + 24);
      }

      if (v73 >= 0)
      {
        v75 = *(v69 + 47);
      }

      else
      {
        v75 = *(v69 + 32);
      }

      memset(&v224, 0, sizeof(v224));
      sub_2992A4CD0(&v224, v74, &v74[v75], v75);
      v76 = *(v69 + 71);
      if (v76 >= 0)
      {
        v77 = (v69 + 48);
      }

      else
      {
        v77 = *(v69 + 48);
      }

      if (v76 >= 0)
      {
        v78 = *(v69 + 71);
      }

      else
      {
        v78 = *(v69 + 56);
      }

      memset(&v222, 0, sizeof(v222));
      sub_2992A4CD0(&v222, v77, &v77[v78], v78);
      v79 = *(v69 + 119);
      if (v79 >= 0)
      {
        v80 = (v69 + 96);
      }

      else
      {
        v80 = *(v69 + 96);
      }

      if (v79 >= 0)
      {
        v81 = *(v69 + 119);
      }

      else
      {
        v81 = *(v69 + 104);
      }

      memset(&v221, 0, sizeof(v221));
      sub_2992A4CD0(&v221, v80, &v80[v81], v81);
      v82 = *(v69 + 143);
      if (v82 >= 0)
      {
        v83 = (v69 + 120);
      }

      else
      {
        v83 = *(v69 + 120);
      }

      if (v82 >= 0)
      {
        v84 = *(v69 + 143);
      }

      else
      {
        v84 = *(v69 + 128);
      }

      memset(&v220, 0, sizeof(v220));
      sub_2992A4CD0(&v220, v83, &v83[v84], v84);
      v85 = sub_29933F9C0(a1, v189, &v222.__r_.__value_.__l.__data_, &v224.__r_.__value_.__l.__data_, &buf.__r_.__value_.__l.__data_, &v221.__r_.__value_.__l.__data_, &v220.__r_.__value_.__l.__data_, *(v69 + 148), *(v69 + 146), *(v69 + 144), *(v69 + 150), *(v69 + 152), 1);
      if (v220.__r_.__value_.__r.__words[0])
      {
        v220.__r_.__value_.__l.__size_ = v220.__r_.__value_.__r.__words[0];
        operator delete(v220.__r_.__value_.__l.__data_);
      }

      if (v221.__r_.__value_.__r.__words[0])
      {
        v221.__r_.__value_.__l.__size_ = v221.__r_.__value_.__r.__words[0];
        operator delete(v221.__r_.__value_.__l.__data_);
      }

      if (v222.__r_.__value_.__r.__words[0])
      {
        v222.__r_.__value_.__l.__size_ = v222.__r_.__value_.__r.__words[0];
        operator delete(v222.__r_.__value_.__l.__data_);
      }

      if (v224.__r_.__value_.__r.__words[0])
      {
        v224.__r_.__value_.__l.__size_ = v224.__r_.__value_.__r.__words[0];
        operator delete(v224.__r_.__value_.__l.__data_);
      }

      if (buf.__r_.__value_.__r.__words[0])
      {
        buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (v85)
      {
        break;
      }

      v69 += 160;
    }

    v97 = *(v69 + 23);
    if (v97 < 0)
    {
      v102 = *v69;
      v98 = *(v69 + 8);
      if (v98 == v187 && !memcmp(__s1, *v69, 2 * v187))
      {
        goto LABEL_229;
      }

      v99 = HIBYTE(v219.__r_.__value_.__r.__words[2]);
      v100 = (v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
      if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = &v219;
      }

      else
      {
        v101 = v219.__r_.__value_.__r.__words[0];
      }

LABEL_217:
      if (v100)
      {
        v109 = v219.__r_.__value_.__l.__size_;
      }

      else
      {
        v109 = v99;
      }

      sub_2992738F8(&v210, v102, v98, v171, v101, v109, v173, v172);
      v110 = sub_2993652F8(6u);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
      {
        if (__s1)
        {
          v140 = v187;
        }

        else
        {
          v140 = 0;
        }

        sub_299277B3C(&v224, __s1, v140);
        if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v141 = &v224;
        }

        else
        {
          v141 = v224.__r_.__value_.__r.__words[0];
        }

        if (__src)
        {
          v142 = v184;
        }

        else
        {
          v142 = 0;
        }

        sub_299277B3C(&v222, __src, v142);
        v143 = SHIBYTE(v222.__r_.__value_.__r.__words[2]);
        v144 = v222.__r_.__value_.__r.__words[0];
        v145 = *(v69 + 23);
        if (v145 >= 0)
        {
          v146 = v69;
        }

        else
        {
          v146 = *v69;
        }

        if (v145 >= 0)
        {
          v147 = *(v69 + 23);
        }

        else
        {
          v147 = *(v69 + 8);
        }

        sub_299277B3C(&v221, v146, v147);
        v148 = &v222;
        if (v143 < 0)
        {
          v148 = v144;
        }

        v149 = &v221;
        if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v149 = v221.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v141;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v148;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v226 = v149;
        _os_log_debug_impl(&dword_29918C000, v110, OS_LOG_TYPE_DEBUG, "[LPL::applyLexicalRules] Rewriting %s (%s) => %s", &buf, 0x20u);
        if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v221.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v224.__r_.__value_.__l.__data_);
        }

        v86 = 1;
        v54 = 1;
      }

      else
      {
        v86 = 1;
        v54 = 1;
      }
    }

    else
    {
      if (v187 != v97 || memcmp(__s1, v69, 2 * (*(v69 + 23) & 0x7F)))
      {
        v98 = v97;
        v99 = HIBYTE(v219.__r_.__value_.__r.__words[2]);
        v100 = (v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
        if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v101 = &v219;
        }

        else
        {
          v101 = v219.__r_.__value_.__r.__words[0];
        }

        v102 = v69;
        goto LABEL_217;
      }

LABEL_229:
      v54 = 0;
      v86 = 1;
    }

LABEL_222:
    v46.i8[0] = v86 & v54;
LABEL_76:
    if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v219.__r_.__value_.__l.__data_);
      if ((v46.i8[0] & 1) == 0)
      {
        goto LABEL_81;
      }

LABEL_80:
      v55 = 1;
      v56 = __src;
      goto LABEL_301;
    }

    if (v46.i8[0])
    {
      goto LABEL_80;
    }

LABEL_81:
    if (a7)
    {
      goto LABEL_272;
    }

    if (!*(a1 + 32))
    {
      goto LABEL_272;
    }

    v223 = 0;
    v57 = sub_299281F40(__s1, v187, &v223, 1);
    if (!v57)
    {
      goto LABEL_272;
    }

    v58 = v223;
    if (!v223)
    {
      goto LABEL_272;
    }

    if ((v196 & 0x80u) == 0)
    {
      v59 = v196;
    }

    else
    {
      v59 = v195[1];
    }

    if ((atomic_load_explicit(&qword_2A14611F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14611F0))
    {
      qword_2A14611E8 = sub_299237120();
      __cxa_guard_release(&qword_2A14611F0);
    }

    if (v58 == v187 && !v59 && (*qword_2A14611E8 & 1) == 0)
    {
      v60 = sub_299281F40(__src, v184, 0, 0);
      if ((v57 - 3) >= 0xFFFFFFFE && v60 == v57)
      {
        goto LABEL_272;
      }
    }

    memset(&v222, 0, sizeof(v222));
    if (v187 == v223)
    {
      *(&v222.__r_.__value_.__s + 23) = 0;
      LOWORD(v222.__r_.__value_.__l.__data_) = 0;
      v61 = L"NW:RS1=";
      v62 = v195;
      v63 = __src;
    }

    else
    {
      sub_29925851C(&buf, &__s1[2 * v223], v187 - v223);
      v63 = __src;
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
      }

      v222 = buf;
      v62 = &v222;
      v61 = L"NW:SFX=";
    }

    sub_299343A98(&v221, v61, &v62->__r_.__value_.__l.__data_);
    if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &v221;
    }

    else
    {
      v65 = v221.__r_.__value_.__r.__words[0];
    }

    if ((v221.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = SHIBYTE(v221.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v66 = v221.__r_.__value_.__l.__size_;
    }

    sub_2992B8778(*(a1 + 32), &v220, v65, v66, 0);
    if (v220.__r_.__value_.__l.__size_ == v220.__r_.__value_.__r.__words[0] || (v67 = sub_2992B8DA4(v220.__r_.__value_.__l.__data_, "IntValue"), v67 == v57))
    {
      buf.__r_.__value_.__r.__words[0] = &v220;
      sub_299225D98(&buf);
      if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v221.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
      }

      goto LABEL_272;
    }

    sub_29925851C(&v219, __s1, v187);
    if (v57 == 2)
    {
      sub_299281268(&v219);
      v218.__r_.__value_.__r.__words[0] = 0;
      goto LABEL_168;
    }

    v218.__r_.__value_.__r.__words[0] = 0;
    if (v57 != 3)
    {
LABEL_168:
      if (sub_299281750(&v219, &v218))
      {
        goto LABEL_169;
      }

LABEL_253:
      v114 = 0;
      goto LABEL_265;
    }

    if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v87 = &v219;
    }

    else
    {
      v87 = v219.__r_.__value_.__r.__words[0];
    }

    if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = HIBYTE(v219.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v88 = v219.__r_.__value_.__l.__size_;
    }

    if ((sub_29928182C(v87, v88, &v218) & 1) == 0)
    {
      goto LABEL_253;
    }

LABEL_169:
    v89 = SHIBYTE(v219.__r_.__value_.__r.__words[2]);
    v90 = v219.__r_.__value_.__r.__words[0];
    if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v90 = &v219;
    }

    v91 = 0;
    if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v89 = v219.__r_.__value_.__l.__size_;
    }

    if (v89)
    {
      while (1)
      {
        v92 = *(&v90->__r_.__value_.__l.__data_ + v91);
        v93 = v92 == 48 || v92 == 65296;
        if (!v93 && v92 != 12295)
        {
          break;
        }

        if (v89 == ++v91)
        {
          v91 = v89;
          break;
        }
      }
    }

    v95 = v218.__r_.__value_.__r.__words[0] == 0;
    sub_299217DF0(&buf, byte_29945C656);
    v96 = v91 - v95;
    switch(v67)
    {
      case 3:
        if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
        {
          *v219.__r_.__value_.__l.__data_ = 0;
          v219.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          LOWORD(v219.__r_.__value_.__l.__data_) = 0;
          *(&v219.__r_.__value_.__s + 23) = 0;
        }

        if (v96)
        {
          v111 = 0;
        }

        else
        {
          v111 = sub_299281198(v218.__r_.__value_.__l.__data_, &v219);
        }

        break;
      case 2:
        if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
        {
          *v219.__r_.__value_.__l.__data_ = 0;
          v219.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          LOWORD(v219.__r_.__value_.__l.__data_) = 0;
          *(&v219.__r_.__value_.__s + 23) = 0;
        }

        if (sub_2992815B4(v218.__r_.__value_.__l.__data_, &v219))
        {
          v111 = sub_299281394(&v219);
        }

        else
        {
          v111 = 0;
        }

        if (v96)
        {
          do
          {
            sub_2992174C4(&buf, 65296);
            --v96;
          }

          while (v96);
LABEL_244:
          sub_2992C3A78(&buf.__r_.__value_.__l.__data_, &v219.__r_.__value_.__l.__data_, &v224);
          if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v219.__r_.__value_.__l.__data_);
          }

          v219 = v224;
        }

        break;
      case 1:
        if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
        {
          *v219.__r_.__value_.__l.__data_ = 0;
          v219.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          LOWORD(v219.__r_.__value_.__l.__data_) = 0;
          *(&v219.__r_.__value_.__s + 23) = 0;
        }

        v111 = sub_2992815B4(v218.__r_.__value_.__l.__data_, &v219);
        if (v96)
        {
          do
          {
            sub_2992174C4(&buf, 48);
            --v96;
          }

          while (v96);
          goto LABEL_244;
        }

        break;
      default:
        v111 = 0;
        if (v96)
        {
          goto LABEL_244;
        }

        break;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if ((v111 & 1) == 0)
    {
      goto LABEL_253;
    }

    v112 = SHIBYTE(v222.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v222.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v112 = v222.__r_.__value_.__l.__size_;
      if (v222.__r_.__value_.__l.__size_)
      {
        v113 = v222.__r_.__value_.__r.__words[0];
LABEL_256:
        sub_29922C614(&v219, v113, v112);
      }
    }

    else if (*(&v222.__r_.__value_.__s + 23))
    {
      v113 = &v222;
      goto LABEL_256;
    }

    if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v115 = &v219;
    }

    else
    {
      v115 = v219.__r_.__value_.__r.__words[0];
    }

    if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = HIBYTE(v219.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v116 = v219.__r_.__value_.__l.__size_;
    }

    sub_2992738F8(&v210, v115, v116, v171, v63, v184, v173, v172);
    v117 = sub_2993652F8(6u);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
    {
      if (__s1)
      {
        v150 = v187;
      }

      else
      {
        v150 = 0;
      }

      sub_299277B3C(&v224, __s1, v150);
      if ((v224.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v151 = &v224;
      }

      else
      {
        v151 = v224.__r_.__value_.__r.__words[0];
      }

      if (v63)
      {
        v152 = v184;
      }

      else
      {
        v152 = 0;
      }

      sub_299277B3C(&v218, v63, v152);
      v153 = SHIBYTE(v218.__r_.__value_.__r.__words[2]);
      v154 = v218.__r_.__value_.__r.__words[0];
      if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v155 = &v219;
      }

      else
      {
        v155 = v219.__r_.__value_.__r.__words[0];
      }

      if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v156 = SHIBYTE(v219.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v156 = v219.__r_.__value_.__l.__size_;
      }

      sub_299277B3C(&v217, v155, v156);
      v157 = &v218;
      if (v153 < 0)
      {
        v157 = v154;
      }

      v158 = &v217;
      if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v158 = v217.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136316674;
      *(buf.__r_.__value_.__r.__words + 4) = v151;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v157;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v226 = v158;
      v227 = 1024;
      v228 = v173;
      v229 = 1024;
      v230 = v172;
      v231 = 1024;
      v232 = v199;
      v233 = 1024;
      v234 = v200;
      _os_log_debug_impl(&dword_29918C000, v117, OS_LOG_TYPE_DEBUG, "[LPL::applyNonLexicalPreferences] %s (%s) => %s (lc:%d rc:%d f-lc:%d f-rc:%d)", &buf, 0x38u);
      if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v217.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v218.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v224.__r_.__value_.__l.__data_);
      }
    }

    v114 = 1;
LABEL_265:
    if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v219.__r_.__value_.__l.__data_);
    }

    buf.__r_.__value_.__r.__words[0] = &v220;
    sub_299225D98(&buf);
    if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v221.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    if (v114)
    {
      goto LABEL_80;
    }

LABEL_272:
    v118 = sub_299322EB0(**(a1 + 16)) ^ 1;
    if (v166 != 40)
    {
      LOBYTE(v118) = 1;
    }

    if (v118)
    {
      goto LABEL_297;
    }

    if (v187)
    {
      v119 = 0;
      v120 = __s1;
      v121 = 1;
      v122 = v187;
      do
      {
        v123 = *v120++;
        v124 = (v123 + 191);
        v125 = v123 + 223;
        v126 = ((v123 & 0xFFDF) - 65) >= 0x1Au && v124 >= 0x1A;
        if (v126 && v125 > 0x19u)
        {
          break;
        }

        v119 = v121++ >= v187;
        --v122;
      }

      while (v122);
      if (!v119)
      {
        goto LABEL_297;
      }
    }

    if (!v184)
    {
      goto LABEL_297;
    }

    v128 = 0;
    for (i = 0; i != v184; v128 = ++i >= v184)
    {
      v130 = *&__src[2 * i];
      v126 = ((v130 & 0xFFDF) - 65) >= 0x1Au;
      v131 = (v130 + 191);
      v132 = v130 + 223;
      if (v126 && v131 >= 0x1A && v132 > 0x19u)
      {
        break;
      }
    }

    if (v128)
    {
LABEL_297:
      sub_2992738F8(&v210, __s1, v187, v171, __src, v184, v173, v172);
      v55 = 0;
      v56 = __src;
      goto LABEL_301;
    }

    sub_299279CA4(__src, v184, &buf);
    v56 = __src;
    sub_2992738F8(&v210, buf.__r_.__value_.__l.__data_, (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 1, v171, __src, v184, v173, v172);
    if (buf.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
      operator delete(buf.__r_.__value_.__l.__data_);
    }

LABEL_300:
    v55 = 1;
LABEL_301:
    if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v207.__r_.__value_.__l.__data_);
    }

    v207 = v208;
    *(&v208.__r_.__value_.__s + 23) = 0;
    LOWORD(v208.__r_.__value_.__l.__data_) = 0;
    v135 = v186;
    if (v186)
    {
      LODWORD(v135) = 0;
      v136 = (v214 + 24);
      v137 = v177;
      do
      {
        v138 = *v136;
        v136 += 20;
        LODWORD(v135) = v135 + v138;
        v137 -= 40;
      }

      while (v137);
      v135 = v135;
    }

    if (v211)
    {
      v139 = *(v214 + 40 * v186 + 24);
    }

    else
    {
      v139 = 0;
    }

    sub_29925851C(&buf, (v211 + 2 * v135), v139);
    if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v208.__r_.__value_.__l.__data_);
    }

    v208 = buf;
    if (SHIBYTE(v206) < 0)
    {
      operator delete(__dst);
    }

    __dst = v203;
    v206 = v204;
    v203 = __p;
    v204 = v202;
    HIBYTE(v202) = 0;
    LOWORD(__p) = 0;
    if (v198 < 0)
    {
      operator delete(v197);
    }

    if (v196 < 0)
    {
      operator delete(v195[0]);
    }

    if (v194 < 0)
    {
      operator delete(v193);
    }

    if (v192 < 0)
    {
      operator delete(v191);
    }

    if (SHIBYTE(v190) < 0)
    {
      operator delete(v189[0]);
    }

    v175 |= v55;
    v19 = &v56[2 * v184];
    v177 += 40;
    v20 = v180;
    __s1 += 2 * v187;
    v21 = v174;
  }

  while (v174 != v168);
  if ((v175 & 1) == 0)
  {
    goto LABEL_382;
  }

  v159 = (*(*v185 + 112))(v185);
  v160 = v185[55];
  v161 = (*(*v185 + 96))(v185);
  v162 = (*(*v185 + 408))(v185);
  v11 = sub_299273A90(&v210, v164, v159, v160, 0, v161, v162);
  if (v11)
  {
    v163 = (*(*v185 + 200))(v185);
    (*(*v11 + 512))(v11, v163);
  }

LABEL_383:
  if (SHIBYTE(v202) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v204) < 0)
  {
    operator delete(v203);
  }

  if (SHIBYTE(v206) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v207.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

  if (*(&v215 + 1))
  {
    CFRelease(*(&v215 + 1));
  }

  *(&v215 + 1) = 0;
  if (v214)
  {
    *(&v214 + 1) = v214;
    operator delete(v214);
  }

  if (*(&v212 + 1))
  {
    *&v213 = *(&v212 + 1);
    operator delete(*(&v212 + 1));
  }

  if (v211)
  {
    *(&v211 + 1) = v211;
    operator delete(v211);
  }

  return v11;
}

void sub_299342344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, void *a62, uint64_t a63)
{
  __cxa_guard_abort(&qword_2A14611F0);
  sub_29933B324(&a38);
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a62);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a70);
  }

  sub_299273B40(&STACK[0x218]);
  _Unwind_Resume(a1);
}

BOOL sub_299342610(void *a1)
{
  if (!a1[1])
  {
    return 0;
  }

  v2 = 0;
  v3 = MEMORY[0x29EDCA600];
  do
  {
    v4 = *(*a1 + 2 * v2);
    if (v4 <= 0x7F)
    {
      v5 = *(v3 + 4 * v4 + 60) & 0x40000;
    }

    else
    {
      v5 = __maskrune(v4, 0x40000uLL);
    }

    result = v5 != 0;
    if (!v5)
    {
      break;
    }

    ++v2;
  }

  while (v2 < a1[1]);
  return result;
}

uint64_t sub_2993426A0(unsigned __int16 **a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = 2 * v1;
    v3 = *a1;
    result = 1;
    do
    {
      v5 = *v3;
      if (v5 > 0xFF00)
      {
        v6 = v5 - 65281;
        v7 = v6 > 0x1E;
        v8 = (1 << v6) & 0x40002801;
        if (!v7 && v8 != 0)
        {
          return result;
        }
      }

      else if (v5 - 12289 < 2 || v5 == 44 || v5 == 46)
      {
        return result;
      }

      ++v3;
      v2 -= 2;
    }

    while (v2);
  }

  return 0;
}

BOOL sub_299342724(unsigned __int16 *a1, unint64_t a2, unsigned int a3)
{
  if ((atomic_load_explicit(&qword_2A1462290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462290))
  {
    sub_299255778(0);
    qword_2A1462288 = &qword_2A1461DC0;
    __cxa_guard_release(&qword_2A1462290);
  }

  if (*(qword_2A1462288 + 88) <= a3 && *(qword_2A1462288 + 90) >= a3)
  {
    return 0;
  }

  if (a3 > 0x64F)
  {
    return 1;
  }

  v6 = word_299409CC8[a3];
  if (v6 != 409 && v6 != 407)
  {
    return 1;
  }

  if (a2 > 5)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 2 * a2;
  do
  {
    v12 = *a1;
    if ((v12 - 12353) < 0x56 || v12 == 12540 || v12 == 12316)
    {
      ++v10;
    }

    else if ((v12 - 12449) < 0x5A || v12 == 12540 || v12 == 12316)
    {
      ++v9;
    }

    else
    {
      Code = ublock_getCode(v12);
      if ((Code - 58) <= 0x25 && ((1 << (Code - 58)) & 0x3000203003) != 0)
      {
        ++v8;
      }
    }

    ++a1;
    v11 -= 2;
  }

  while (v11);
  result = 1;
  if (a2 != v10 && a2 != v9 && (a2 > 3 || a2 != v8))
  {
    return a2 == v8 + v10 && v8 != 0;
  }

  return result;
}

void *sub_299342904(__int16 *a1, int *a2)
{
  v4 = (*(*a2 + 544))(a2);
  v5 = 0;
  v6 = 0;
  v7 = a1 + 64;
  __p = 0;
  v20 = 0;
  v8 = a1 + 65;
  v21 = 0;
  v9 = a1 + 66;
  v17 = a1 + 67;
  while (v5 < (*(*a2 + 48))(a2))
  {
    v10 = (*(*a2 + 568))(a2, v5);
    if (v10 < 2)
    {
      v14 = *v4++;
      v13 = v14;
      v18 = v14;
      if (*v7 != 12290 && ((v15 = v7, v13 == 46) || (v15 = v7, v13 == 12290) || (v15 = v7, v13 == 65294)) || *v8 != 12289 && ((v15 = v8, v13 == 44) || (v15 = v8, v13 == 12289) || (v15 = v8, v13 == 65292)) || *v9 != -255 && (v15 = v9, v13 == 65281) || *v17 != -225 && (v15 = v17, v13 == 65311))
      {
        sub_29922E664(&__p, v15);
        v6 = 1;
      }

      else
      {
        sub_29922E664(&__p, &v18);
      }
    }

    else
    {
      v11 = v10;
      v12 = &v4[v11];
      do
      {
        sub_29922E664(&__p, v4++);
        --v11;
      }

      while (v11 * 2);
      v4 = v12;
    }

    ++v5;
  }

  if (v6)
  {
    operator new();
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_299342DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299342E20(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_2992C8D94(v2);
  }

  result = *(a1 + 32);
  if (result)
  {

    return sub_2992C8D94(result);
  }

  return result;
}

void sub_299342E70(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_299342F08(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_29922C89C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v6;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29922C89C((a1 + 48), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    *(a1 + 64) = *(a3 + 5);
    *(a1 + 48) = v7;
  }

  if (*(a3 + 71) < 0)
  {
    sub_29922C89C((a1 + 72), *(a3 + 6), *(a3 + 7));
  }

  else
  {
    v8 = a3[3];
    *(a1 + 88) = *(a3 + 8);
    *(a1 + 72) = v8;
  }

  if (*(a3 + 95) < 0)
  {
    sub_29922C89C((a1 + 96), *(a3 + 9), *(a3 + 10));
  }

  else
  {
    v9 = *(a3 + 72);
    *(a1 + 112) = *(a3 + 11);
    *(a1 + 96) = v9;
  }

  if (*(a3 + 119) < 0)
  {
    sub_29922C89C((a1 + 120), *(a3 + 12), *(a3 + 13));
  }

  else
  {
    v10 = a3[6];
    *(a1 + 136) = *(a3 + 14);
    *(a1 + 120) = v10;
  }

  v11 = *(a3 + 15);
  *(a1 + 152) = *(a3 + 64);
  *(a1 + 144) = v11;
  return a1;
}

void sub_299343020(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29934309C(unint64_t a1)
{
  if (a1 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_29919600C();
}

char *sub_2993430F4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29922C89C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_29922C89C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_29922C89C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_29922C89C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_29922C89C(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  v10 = *(a2 + 18);
  *(__dst + 76) = *(a2 + 76);
  *(__dst + 18) = v10;
  return __dst;
}

void sub_29934321C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299343298(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    sub_299342E70(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2993432E8(void ***a1)
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
        v4 -= 160;
        sub_299342E70(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29934336C(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_299212B90(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2993433BC(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_299308CE0(__dst + 3, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return __dst;
}

void sub_299343438(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_299343454(_BOOL8 result, uint64_t a2)
{
  xmmword_2A14611F8 = 0u;
  *&qword_2A1461208 = 0u;
  dword_2A1461218 = 1065353216;
  if (a2)
  {
    v2 = result;
    v12 = (result + 48 * a2);
    do
    {
      v3 = sub_29923AF34(&xmmword_2A14611F8, v2);
      v4 = v3;
      v5 = *(&xmmword_2A14611F8 + 1);
      if (!*(&xmmword_2A14611F8 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_2A14611F8 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_2A14611F8 + 1))
        {
          v8 = v3 % *(&xmmword_2A14611F8 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_2A14611F8 + 1) - 1) & v3;
      }

      v9 = *(xmmword_2A14611F8 + 8 * v8);
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

      result = sub_29923AF78(&xmmword_2A14611F8, v10 + 8, v2);
      if (!result)
      {
        goto LABEL_18;
      }

      v2 += 24;
    }

    while (v2 != v12);
  }

  return result;
}

void sub_299343934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299218CD8(va);
  sub_29934397C(&xmmword_2A14611F8);
  _Unwind_Resume(a1);
}

uint64_t sub_29934397C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_29921856C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2993439DC(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}