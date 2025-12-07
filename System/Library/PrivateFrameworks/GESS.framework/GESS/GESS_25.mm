void sub_24BE75D20(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x24C254890](a12, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE75ED0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24BE7612C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a2)
  {

    sub_24BD51EAC(&a18);
    if (a32 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x24BE760E8);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE76628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE76770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE773C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BE77918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BE77E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(a1);
}

void sub_24BE780D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE78A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE78B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE78C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GESSIOLoadObjFile(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_typeValid(v4, v5, v6, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v19 = 3;
    v17 = 257;
    v18 = 1;
    if (objc_msgSend_meshType(v4, v9, v10, v11) == 1)
    {
      sub_24BD51FA4();
    }

    if (objc_msgSend_meshType(v4, v12, v13, v14) == 11)
    {
      sub_24BD2A7F0();
    }

    v15 = 1;
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_24BE794FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    sub_24BC9ED38(&a20);
    if (a16 < 0)
    {
      operator delete(__p);
    }

    if (a18)
    {
      sub_24BC9EC78(a18);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x24BE794B0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GESSIOSaveObjFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_valid(v4, v5, v6, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v37 = 1;
    sub_24BD3A2A0(v39);
    v38 = 257;
    v12 = objc_msgSend_meshImpl(v4, v9, v10, v11);
    sub_24BD3B790(v12, &v37);
    v36[0] = v37 != 0;
    if (objc_msgSend_meshType(v4, v13, v14, v15) == 1)
    {
      v19 = objc_msgSend_path(v3, v16, v17, v18);
      v20 = v19;
      v34 = objc_msgSend_UTF8String(v20, v21, v22, v23);
      sub_24BCCB0F4(&__p, &v34);
      v24 = sub_24BD37048(&__p, v12, v36);
    }

    else
    {
      if (objc_msgSend_meshType(v4, v16, v17, v18) != 11)
      {
        v25 = 1;
LABEL_11:
        sub_24BCC88D8(v40, v40[1]);
        sub_24BCC89B4(v39, v39[1]);
        objc_autoreleasePoolPop(v8);
        goto LABEL_12;
      }

      v19 = objc_msgSend_path(v3, v26, v27, v28);
      v29 = v19;
      v34 = objc_msgSend_UTF8String(v29, v30, v31, v32);
      sub_24BCCB0F4(&__p, &v34);
      v24 = sub_24BD3A488(&__p.__r_.__value_.__l.__data_, v12, v36);
    }

    v25 = v24;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_11;
  }

  v25 = 0;
LABEL_12:

  return v25;
}

void sub_24BE79774(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_24BCBBEE8(&a17);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BE79748);
}

uint64_t GESSIOSaveUSDZFile(void *a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_valid(v4, v5, v6, v7))
  {
    v40[0] = 0;
    v40[1] = 0;
    memset(v38, 0, sizeof(v38));
    v39 = v40;
    if (objc_msgSend_meshType(v4, v8, v9, v10) == 1)
    {
      v14 = objc_msgSend_meshImpl(v4, v11, v12, v13);
      v18 = objc_msgSend_path(v3, v15, v16, v17);
      v19 = v18;
      v36 = objc_msgSend_UTF8String(v18, v20, v21, v22);
      sub_24BCCB0F4(&__p, &v36);
      memset(v46, 0, sizeof(v46));
      memset(v45, 0, sizeof(v45));
      memset(v44, 0, sizeof(v44));
      v23 = sub_24BD2D668(&__p, v14, v38, v44);
      sub_24BC9F10C(v46);
      sub_24BC9F08C(v45);
      sub_24BC9F00C(v44);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (objc_msgSend_meshType(v4, v11, v12, v13) != 11)
      {
        v23 = 0;
        goto LABEL_12;
      }

      v27 = objc_msgSend_meshImpl(v4, v24, v25, v26);
      v18 = objc_msgSend_path(v3, v28, v29, v30);
      v31 = v18;
      v36 = objc_msgSend_UTF8String(v18, v32, v33, v34);
      sub_24BCCB0F4(&__p, &v36);
      memset(v43, 0, sizeof(v43));
      memset(v42, 0, sizeof(v42));
      memset(v41, 0, sizeof(v41));
      v23 = sub_24BD2D778(&__p, v27, v38, v41);
      sub_24BC9F10C(v43);
      sub_24BC9F08C(v42);
      sub_24BC9F00C(v41);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_12:
    sub_24BC900B8(&v39, v40[0]);
    __p.__r_.__value_.__r.__words[0] = &v38[1] + 8;
    sub_24BCCB404(&__p);
    __p.__r_.__value_.__r.__words[0] = v38;
    sub_24BCCB4E0(&__p);
    goto LABEL_13;
  }

  v23 = 0;
LABEL_13:

  return v23;
}

void sub_24BE79A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_24BC9ED38(&a26);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BD51EAC(&a16);
  _Unwind_Resume(a1);
}

uint64_t GESSIOLoadTexturedObjFile(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_typeValid(v4, v5, v6, v7))
  {
    v8 = objc_autoreleasePoolPush();
    operator new();
  }

  return 0;
}

void sub_24BE79DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2)
  {
    sub_24BC9ED38(&a22);
    if (a16 < 0)
    {
      operator delete(__p);
    }

    if (a18)
    {
      sub_24BC9EC78(a18);
    }

    if (a21)
    {
      sub_24BC9EC78(a21);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x24BE79D68);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GESSIOSaveTexturedObjFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_valid(v4, v5, v6, v7) && objc_msgSend_materialImpl(v4, v8, v9, v10))
  {
    v11 = objc_autoreleasePoolPush();
    v15 = objc_msgSend_meshImpl(v4, v12, v13, v14);
    v19 = objc_msgSend_materialImpl(v4, v16, v17, v18);
    v44 = 1;
    sub_24BD3A2A0(v46);
    v43[0] = 1;
    v45 = 257;
    sub_24BD2CD50(v43);
    sub_24BD3B790(v15, &v44);
    if (!v44)
    {
      v43[0] = 0;
    }

    if (objc_msgSend_meshType(v4, v20, v21, v22) == 1)
    {
      v26 = objc_msgSend_path(v3, v23, v24, v25);
      v27 = v26;
      v41 = objc_msgSend_UTF8String(v27, v28, v29, v30);
      sub_24BCCB0F4(&__p, &v41);
      v31 = sub_24BD387BC(&__p, v15, v19, v43);
    }

    else
    {
      if (objc_msgSend_meshType(v4, v23, v24, v25) != 11)
      {
        v32 = 1;
LABEL_14:
        sub_24BCC88D8(v47, v47[1]);
        sub_24BCC89B4(v46, v46[1]);
        objc_autoreleasePoolPop(v11);
        goto LABEL_15;
      }

      v26 = objc_msgSend_path(v3, v33, v34, v35);
      v36 = v26;
      v41 = objc_msgSend_UTF8String(v36, v37, v38, v39);
      sub_24BCCB0F4(&__p, &v41);
      v31 = sub_24BD3B698(&__p, v15, v19, v43);
    }

    v32 = v31;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_14;
  }

  v32 = 0;
LABEL_15:

  return v32;
}

void sub_24BE7A07C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_24BCBBEE8(&a17);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BE7A04CLL);
}

uint64_t GESSIOSaveTexturedUSDZFile(void *a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (!objc_msgSend_valid(v4, v5, v6, v7) || !objc_msgSend_materialImpl(v4, v8, v9, v10))
  {
    goto LABEL_11;
  }

  v14 = objc_msgSend_materialImpl(v4, v11, v12, v13);
  if (objc_msgSend_meshType(v4, v15, v16, v17) != 1)
  {
    if (objc_msgSend_meshType(v4, v18, v19, v20) == 11)
    {
      v34 = objc_msgSend_meshImpl(v4, v31, v32, v33);
      v25 = objc_msgSend_path(v3, v35, v36, v37);
      v38 = v25;
      v43 = objc_msgSend_UTF8String(v38, v39, v40, v41);
      sub_24BCCB0F4(&__p, &v43);
      memset(v47, 0, sizeof(v47));
      memset(v46, 0, sizeof(v46));
      memset(v45, 0, sizeof(v45));
      v30 = sub_24BD2D778(&__p, v34, v14, v45);
      sub_24BC9F10C(v47);
      sub_24BC9F08C(v46);
      sub_24BC9F00C(v45);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_6;
    }

LABEL_11:
    v30 = 0;
    goto LABEL_12;
  }

  v21 = objc_msgSend_meshImpl(v4, v18, v19, v20);
  v25 = objc_msgSend_path(v3, v22, v23, v24);
  v26 = v25;
  v43 = objc_msgSend_UTF8String(v26, v27, v28, v29);
  sub_24BCCB0F4(&__p, &v43);
  memset(v50, 0, sizeof(v50));
  memset(v49, 0, sizeof(v49));
  memset(v48, 0, sizeof(v48));
  v30 = sub_24BD2D668(&__p, v21, v14, v48);
  sub_24BC9F10C(v50);
  sub_24BC9F08C(v49);
  sub_24BC9F00C(v48);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_6:

LABEL_12:
  return v30;
}

void sub_24BE7A984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_24BC9ED38(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BE7ADDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  sub_24BC9ED38(&a23);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_24BE7B8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a16)
  {
    sub_24BC9EC78(a16);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BE7B898);
  }

  sub_24BD3C054(va);

  _Unwind_Resume(a1);
}

uint64_t sub_24BE7C45C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F97808;
  a2[1] = v2;
  return result;
}

void sub_24BE7C488(uint64_t a1, std::error_code *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v3 = MEMORY[0x277CCACA8];
  std::error_code::message(&v15, &v13);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, &v15, v5);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v3, v4, v15.__r_.__value_.__l.__data_, v5);
  }
  v7 = ;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v14 = *MEMORY[0x277CCA450];
  v15.__r_.__value_.__r.__words[0] = v7;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v15, &v14, 1);
  v9 = MEMORY[0x277CCA9B8];
  v10 = sub_24BE7C890();
  v12 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v11, v10, v13.__val_, v8);

  (*(*(**(a1 + 8) + 40) + 16))();
}

void sub_24BE7C9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE7CB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BCE1400(va);
  _Unwind_Resume(a1);
}

uint64_t GESSAlgMeasureTopologyQuality(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_valid(v3, v5, v6, v7))
  {
    v11 = objc_msgSend_meshImpl(v3, v8, v9, v10, 0, 0, 0, 0);
    v14 = sub_24BE24A40(v11, &v16);
    if (v14)
    {
      objc_msgSend_setQualityImpl_(v4, v12, &v16, v13);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_24BE7CD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE7CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BCE1400(va);
  _Unwind_Resume(a1);
}

uint64_t GESSAlgMeasureGeometryQuality(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_valid(v3, v5, v6, v7))
  {
    LODWORD(v18) = 0;
    v11.i64[0] = 0x80000000800000;
    v11.i64[1] = 0x80000000800000;
    v19 = vnegq_f32(v11);
    v20 = v11;
    v12 = objc_msgSend_meshImpl(v3, v8, v9, v10, 0, 0, v18);
    v15 = sub_24BE24B50(v12, &v17);
    if (v15)
    {
      objc_msgSend_setQualityImpl_(v4, v13, &v17, v14);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t GESSAlgConnectedComponentFilter(void *a1, void *a2)
{
  v3 = a1;
  v17 = a2;
  if ((objc_msgSend_valid(v3, v4, v5, v6) & 1) != 0 && objc_msgSend_meshType(v3, v7, v8, v9) == 1)
  {
    v13 = objc_msgSend_meshImpl(v3, v10, v11, v12);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_24BCA1128(v19, (*(v13 + 160) - *(v13 + 152)) >> 2, dword_24BFEE5E0);
    sub_24BE1AAF0(v13, &v20, 0);
    sub_24BDD4E90(&v18, 0xD37A6F4DE9BD37A7 * ((v21 - v20) >> 3));
    if (v20 != v21)
    {
      operator new();
    }

    v14 = objc_autoreleasePoolPush();
    v15 = objc_alloc_init(GESSPolyMesh);
    sub_24BD51FA4();
  }

  return 0;
}

void sub_24BE7D7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 136);
  if (v33)
  {
    *(v31 - 128) = v33;
    operator delete(v33);
  }

  *(v31 - 136) = v31 - 112;
  sub_24BDD5370((v31 - 136));

  _Unwind_Resume(a1);
}

uint64_t GESSAlgSplitMeshByComponents(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(GESSAlgSplitMeshByComponentsOptions);
  objc_msgSend_setMaxSplitCount_(v5, v6, 0, v7);
  v8 = objc_alloc_init(GESSAlgSplitMeshByComponentsExtended);
  objc_msgSend_setOptions_(v8, v9, v5, v10);
  v12 = objc_msgSend_run_output_(v8, v11, v3, v4);

  return v12;
}

void sub_24BE7DFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  a11 = &a13;
  sub_24BCB7FC8(&a11);
  a13 = &a16;
  sub_24BDD5370(&a13);

  _Unwind_Resume(a1);
}

uint64_t sub_24BE7E0B8(uint64_t a1)
{
  v2 = sub_24BF180D8(a1);
  result = (**v2)(v2, a1, 1);
  if (a1)
  {
    if (!result)
    {
      sub_24BCE1268(v8);
      v4 = sub_24BC95264(v8, "[malloc] Unable to allocate ", 28);
      v5 = MEMORY[0x24C2543E0](v4, a1);
      sub_24BC95264(v5, " bytes.", 7);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      MEMORY[0x24C254100](exception, &v7);
      __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_24BE7E1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
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

uint64_t sub_24BE7E1F0(uint64_t a1)
{
  v1 = *(*sub_24BF180D8(a1) + 8);

  return v1();
}

void *sub_24BE7E248(uint64_t a1, uint64_t a2)
{
  result = malloc_type_malloc(a2 + 8, 0x100004000313F17uLL);
  if (result)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_24BE7E290(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE7E2A4(uint64_t a1)
{
  v2 = sub_24BF180D8(a1);
  result = (**v2)(v2, a1, 0);
  if (a1 && !result)
  {
    while (1)
    {
      v4 = sub_24BEF5314();
      if (*v4 < 1)
      {
        break;
      }

      v5 = sub_24BEF5314();
      sub_24BE7E478(v5);
      v7 = sub_24BF180D8(v6);
      result = (**v7)(v7, a1, 0);
      if (result)
      {
        return result;
      }
    }

    v8 = sub_24BF180D8(v4);
    result = (**v8)(v8, a1, 1);
    if (!result)
    {
      sub_24BCE1268(v13);
      v9 = sub_24BC95264(v13, "[malloc_or_wait] Unable to allocate ", 36);
      v10 = MEMORY[0x24C2543E0](v9, a1);
      sub_24BC95264(v10, " bytes.", 7);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      MEMORY[0x24C254100](exception, &v12);
      __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_24BE7E418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
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

void sub_24BE7E478(uint64_t a1)
{
  v3.__m_ = (a1 + 120);
  v3.__owns_ = 1;
  std::mutex::lock((a1 + 120));
  v2 = *a1;
  if (*a1 < 2)
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait((a1 + 72), &v3);
  }

  while (*a1 == v2);
  if (v3.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v3.__m_);
  }
}

void sub_24BE7E4E8(void *a1, void **a2, uint64_t a3)
{
  v5 = 0;
  v6 = a3;
  __p = 0;
  v4 = 0;
  sub_24BCC9FE4();
}

void sub_24BE7E558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    sub_24BC9EC78(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE7E588(int ***a1, float *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3 = sub_24BE7E0B8(*(*a1 + 60) * (*a1)[6]);
  v4[0] = &off_285F93798;
  v4[1] = sub_24BE7E1F0;
  v4[3] = v4;
  sub_24BE7EE1C(a1, v3);
}

void sub_24BE7E888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BE7E914(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, void **a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = *a2;
    if (a5[2])
    {
      sub_24BE80538(a5, 0, v6, v7, a3, a4);
    }

    v8 = -*a5 >> 4;
    if (!((v8 + 1) >> 60))
    {
      v9 = -*a5;
      v10 = v9 >> 3;
      if (v9 >> 3 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        sub_24BCB53E8(a5, v11);
      }

      sub_24BE80538(a5, (16 * v8), v6, v7, a3, a4);
    }

    sub_24BC8E01C();
  }
}

void sub_24BE7EB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BE7EBD0(uint64_t *a1, float *a2, int a3)
{
  v3 = a3;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v3, __p, 1uLL);
  sub_24BE80644();
}

void sub_24BE7EC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_24BC9EC78(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE7EC8C(uint64_t *a1, int *a2, int a3, void *a4)
{
  __p[3] = a4;
  v4 = a3;
  memset(__p, 0, 24);
  sub_24BCC9910(__p, &v4, __p, 1uLL);
  sub_24BCC9FE4();
}

void sub_24BE7ED10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    sub_24BC9EC78(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE7EDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24BCCA2B8(va);
  v9 = *(v7 + 8);
  if (v9)
  {
    sub_24BC9EC78(v9);
  }

  _Unwind_Resume(a1);
}

void sub_24BE7EF28(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 200);
  v4 = *(*a1 + 208);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v7 = *(*v3 + 176);
      v6 = *(*v3 + 184);
      v8 = *v3;
      if (v6 != v7)
      {
        do
        {
          v6 = sub_24BE7F4E0(v6 - 2);
        }

        while (v6 != v7);
        v8 = *v3;
      }

      *(v5 + 184) = v7;
      v10 = *(v8 + 200);
      v9 = *(v8 + 208);
      v11 = v8;
      if (v9 != v10)
      {
        do
        {
          v9 = sub_24BE7F4E0(v9 - 2);
        }

        while (v9 != v10);
        v11 = *v3;
      }

      *(v8 + 208) = v10;
      *(v11 + 224) = 0;
      v12 = *(v11 + 72);
      *(v11 + 64) = 0;
      *(v11 + 72) = 0;
      if (v12)
      {
        sub_24BC9EC78(v12);
      }

      v3 += 2;
    }

    while (v3 != v4);
    v2 = *a1;
  }

  v14 = *(v2 + 176);
  v13 = *(v2 + 184);
  v15 = v2;
  if (v13 != v14)
  {
    do
    {
      v13 = sub_24BE7F4E0(v13 - 2);
    }

    while (v13 != v14);
    v15 = *a1;
  }

  *(v2 + 184) = v14;
  v17 = *(v15 + 200);
  v16 = *(v15 + 208);
  v18 = v15;
  if (v16 != v17)
  {
    do
    {
      v16 = sub_24BE7F4E0(v16 - 2);
    }

    while (v16 != v17);
    v18 = *a1;
  }

  *(v15 + 208) = v17;
  *(v18 + 224) = 0;
  v19 = *(v18 + 72);
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  if (v19)
  {

    sub_24BC9EC78(v19);
  }
}

BOOL sub_24BE7F064(uint64_t a1)
{
  v1 = *(*a1 + 80);
  if (v1 == 3)
  {
    return 1;
  }

  if (v1 == 2)
  {
    result = sub_24BF5979C(*a1 + 88);
    if (!result)
    {
      return result;
    }

    *(*a1 + 80) = 3;
    return 1;
  }

  return 0;
}

uint64_t sub_24BE7F0C0(uint64_t a1)
{
  result = sub_24BE7F064(a1);
  if ((result & 1) == 0)
  {
    result = sub_24BF596CC(*a1 + 88);
    *(*a1 + 80) = 3;
  }

  return result;
}

uint64_t *sub_24BE7F100(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 80))
  {

    return sub_24BE7F0C0(a1);
  }

  else
  {
    v2 = a1[1];
    v5[0] = *a1;
    v5[1] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    memset(v3, 0, sizeof(v3));
    sub_24BCC9984(v3, v5, &v6, 1uLL);
    sub_24BEF7C30(v3);
    v4 = v3;
    sub_24BCC961C(&v4);
    return sub_24BE7F4E0(v5);
  }
}

void sub_24BE7F1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  va_copy(v8, va);
  sub_24BCC961C(va1);
  sub_24BE7F4E0(va2);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BE7F2FC(uint64_t *a1, uint64_t a2, char **a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v14 = *(*a2 + 136);
  v13 = *(*a2 + 144);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(v12 + 144);
  *(v12 + 136) = v14;
  *(v12 + 144) = v13;
  if (v15)
  {
    sub_24BC9EC78(v15);
  }

  v16 = *a1;
  result = (*a1 + 24);
  if (result != a3)
  {
    result = sub_24BD07E64(result, *a3, a3[1], (a3[1] - *a3) >> 3);
    v16 = *a1;
  }

  *(v16 + 168) = a4;
  v18 = *a1;
  *(v18 + 152) = *(*a2 + 152) + *(*a1 + 60) * a6;
  *(v18 + 160) = a5;
  return result;
}

uint64_t *sub_24BE7F3C4(uint64_t *a1, uint64_t *a2, char **a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v13 = *a1;
  v14 = *(*a2 + 136);
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  v15 = *(v13 + 144);
  *(v13 + 136) = v14;
  if (v15)
  {
    sub_24BC9EC78(v15);
  }

  v16 = *a1;
  result = (*a1 + 24);
  if (result != a3)
  {
    result = sub_24BD07E64(result, *a3, a3[1], (a3[1] - *a3) >> 3);
    v16 = *a1;
  }

  *(v16 + 168) = a4;
  v18 = *a1;
  v19 = *(*a1 + 60);
  v20 = *(*a2 + 152);
  *(*a2 + 152) = 0;
  *(v18 + 152) = v20 + v19 * a6;
  *(v18 + 160) = a5;
  return result;
}

uint64_t *sub_24BE7F46C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  sub_24BE7F3C4(a1, v5, (v2 + 24), *(v2 + 168), *(v2 + 160), 0);
  return sub_24BE7F4E0(v5);
}

uint64_t *sub_24BE7F4E0(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 80) != 1)
    {
      v4 = *(v2 + 200);
      v3 = *(v2 + 208);
      if (v3 != v4)
      {
        v5 = (v3 - v4) >> 4;
        v6 = a1[1];
        if (v6)
        {
          v6 = *(v6 + 8) + 1;
        }

        v7 = v6 == v5 + 1;
        v8 = v4;
        while (1)
        {
          v9 = v8[1];
          if (v9)
          {
            v9 = *(v9 + 8) + 1;
          }

          if (!v7 || v9 != v5)
          {
            break;
          }

          v8 += 2;
          v7 = 1;
          if (v8 == v3)
          {
            do
            {
              v10 = *v4;
              v12 = *(*v4 + 200);
              v11 = *(*v4 + 208);
              if (v12 != v11)
              {
                do
                {
                  v13 = v12[1];
                  *v12 = 0;
                  v12[1] = 0;
                  if (v13)
                  {
                    sub_24BC9EC78(v13);
                  }

                  v12 += 2;
                }

                while (v12 != v11);
                v10 = *v4;
                v12 = *(*v4 + 200);
                v11 = *(*v4 + 208);
              }

              while (v11 != v12)
              {
                v11 -= 2;
                sub_24BE7F4E0(v11);
              }

              *(v10 + 208) = v12;
              v4 += 2;
            }

            while (v4 != v3);
            break;
          }
        }
      }
    }
  }

  v14 = a1[1];
  if (v14)
  {
    sub_24BC9EC78(v14);
  }

  return a1;
}

void sub_24BE7F5F0(uint64_t *a1)
{
  sub_24BC92930(a1 + 3, (a1[1] - *a1) >> 2);
  a1[6] = 1;
  v2 = *a1;
  v3 = ((a1[1] - *a1) >> 2) - 1;
  if (v3 >= 0)
  {
    v4 = a1[3];
    v5 = 1;
    do
    {
      *(v4 + 8 * v3) = v5;
      v5 = a1[6] * *(v2 + 4 * v3);
      a1[6] = v5;
      --v3;
    }

    while (v3 != -1);
  }

  v6 = a1[22];
  v7 = a1[23];
  if (v6 != v7)
  {
    v8 = dword_27F07F720;
    v9 = dword_27F07F724;
    v10 = *(a1 + 128);
    do
    {
      v11 = *v6;
      v6 += 2;
      v12 = *(v11 + 128);
      if (v8 <= 0)
      {
        v12 = 0;
      }

      if (v9 > 0)
      {
        v12 = 1;
      }

      v10 |= v12;
      *(a1 + 128) = v10;
    }

    while (v6 != v7);
  }
}

uint64_t sub_24BE7F6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = a3;
  *(a1 + 80) = 3;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  sub_24BE7F5F0(a1);
  return a1;
}

void sub_24BE7F768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v13;
  a10 = (v10 + 200);
  sub_24BCC961C(&a10);
  a10 = v14;
  sub_24BCC961C(&a10);
  v16 = *(v10 + 144);
  if (v16)
  {
    sub_24BC9EC78(v16);
  }

  sub_24BE80A4C(v10, v12, v11);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE7F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = a3;
  *(a1 + 64) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 176) = *a5;
  *(a1 + 192) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_24BE7F5F0(a1);
  return a1;
}

void sub_24BE7F88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v13;
  sub_24BCC961C(&a10);
  a10 = v14;
  sub_24BCC961C(&a10);
  v16 = *(v10 + 144);
  if (v16)
  {
    sub_24BC9EC78(v16);
  }

  sub_24BE80AB4(v10, (v10 + 72), v12, v11);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE7F8D8(uint64_t a1)
{
  v2 = (a1 + 176);
  if (*(a1 + 176) != *(a1 + 184))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = &v17;
    sub_24BE7FA44(&v20, a1);
    while (1)
    {
      v3 = v18;
      if (v17 == v18)
      {
        break;
      }

      v5 = *(v18 - 2);
      v4 = *(v18 - 1);
      *(v18 - 2) = 0;
      *(v3 - 1) = 0;
      v6 = v18;
      v7 = *(v18 - 1);
      if (v7)
      {
        sub_24BC9EC78(v7);
      }

      v18 = v6 - 2;
      sub_24BE7FA44(&v20, v5);
      v9 = *(v5 + 200);
      v8 = *(v5 + 208);
      if (v9 != v8)
      {
        do
        {
          v10 = v9[1];
          *v9 = 0;
          v9[1] = 0;
          if (v10)
          {
            sub_24BC9EC78(v10);
          }

          v9 += 2;
        }

        while (v9 != v8);
        v9 = *(v5 + 200);
        v8 = *(v5 + 208);
      }

      while (v8 != v9)
      {
        v8 -= 2;
        sub_24BE7F4E0(v8);
      }

      *(v5 + 208) = v9;
      if (v4)
      {
        sub_24BC9EC78(v4);
      }
    }

    v20 = &v17;
    sub_24BCB7FC8(&v20);
  }

  v17 = (a1 + 200);
  sub_24BCC961C(&v17);
  v17 = v2;
  sub_24BCC961C(&v17);
  v11 = *(a1 + 144);
  if (v11)
  {
    sub_24BC9EC78(v11);
  }

  v12 = *(a1 + 112);
  if (v12)
  {
    sub_24BC9EC78(v12);
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    sub_24BC9EC78(v13);
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    *(a1 + 32) = v14;
    operator delete(v14);
  }

  v15 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v15;
    operator delete(v15);
  }

  return a1;
}

uint64_t sub_24BE7FA44(uint64_t *a1, uint64_t a2)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 1065353216;
  v5 = *(a2 + 176);
  v4 = *(a2 + 184);
  if (v5 != v4)
  {
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v31 = *v5;
        v32 = v6;
        v7 = v5[1];
        v33 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
        }

        sub_24BE7FF98(&v28, &v31, &v31);
        sub_24BE7F4E0(&v32);
        v8 = *(*v5 + 200);
        v9 = *(*v5 + 208);
        while (v8 != v9)
        {
          v31 = *v8;
          v32 = v31;
          v10 = v8[1];
          v33 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
          }

          sub_24BE7FF98(&v28, &v31, &v31);
          sub_24BE7F4E0(&v32);
          v8 += 2;
        }
      }

      v5 += 2;
    }

    while (v5 != v4);
    v5 = *(a2 + 176);
    v4 = *(a2 + 184);
  }

  while (v4 != v5)
  {
    v4 -= 2;
    sub_24BE7F4E0(v4);
  }

  *(a2 + 184) = v5;
  for (i = v29; i; i = *i)
  {
    v12 = i[4];
    if (v12)
    {
      v13 = *(v12 + 8) + 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = i[3];
    if (v13 <= ((*(v14 + 208) - *(v14 + 200)) >> 4) + 1)
    {
      v15 = *a1;
      v16 = *(*a1 + 8);
      v17 = *(*a1 + 16);
      if (v16 >= v17)
      {
        v19 = (v16 - *v15) >> 4;
        v20 = v19 + 1;
        if ((v19 + 1) >> 60)
        {
          sub_24BC8E01C();
        }

        v21 = v17 - *v15;
        if (v21 >> 3 > v20)
        {
          v20 = v21 >> 3;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        v35 = *a1;
        if (v22)
        {
          sub_24BCB53E8(v15, v22);
        }

        *(16 * v19) = *(i + 3);
        v18 = 16 * v19 + 16;
        i[3] = 0;
        i[4] = 0;
        v23 = *(v15 + 8) - *v15;
        v24 = (16 * v19 - v23);
        memcpy(v24, *v15, v23);
        v25 = *v15;
        *v15 = v24;
        v31 = v25;
        v32 = v25;
        *(v15 + 8) = v18;
        v33 = v25;
        v26 = *(v15 + 16);
        *(v15 + 16) = 0;
        v34 = v26;
        sub_24BCB5430(&v31);
      }

      else
      {
        *v16 = v14;
        v16[1] = v12;
        v18 = (v16 + 2);
        i[3] = 0;
        i[4] = 0;
      }

      *(v15 + 8) = v18;
    }
  }

  return sub_24BE80248(&v28);
}

uint64_t sub_24BE7FCA8(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (*(*a2 + 8) == **a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "Cannot iterate over 0-d array.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  return result;
}

void sub_24BE7FD2C(uint64_t **a1@<X0>, const void ***a2@<X8>)
{
  v4 = (*(**a1 + 8) - ***a1) >> 2;
  LODWORD(v27) = 0;
  sub_24BD0E524(&v30, v4, &v27);
  v5 = **a1;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  sub_24BCC9A1C(&v27, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
  v6 = **a1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  sub_24BCC9A1C(&v24, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
  v7 = v24;
  v8 = v25 - (v24 + 4);
  if (v25 != v24 + 4)
  {
    memmove(v24, v24 + 4, v25 - (v24 + 4));
  }

  v25 = &v7[v8];
  v9 = *(a1 + 2);
  v10 = v30;
  *v30 = v9;
  *v27 = v9 + 1;
  v11 = *a1;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_24BCC9A1C(&v20, v10, v31, (v31 - v10) >> 2);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_24BCC9A1C(&v17, v27, v28, (v28 - v27) >> 2);
  sub_24BEA8020(v11, &v20, &v17, v12, 0, v23);
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_24BCC9A1C(&__p, v24, v25, (v25 - v24) >> 2);
  sub_24BEA4500(v23, &__p, v13, 0, a2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  sub_24BE7F4E0(v23);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_24BE7FEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F4E0(&a18);
  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  v23 = *(v21 - 80);
  if (v23)
  {
    *(v21 - 72) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 56);
  if (v24)
  {
    *(v21 - 48) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void *sub_24BE7FF98(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_24BE801E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE801FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE801FC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24BE7F4E0(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_24BE80248(uint64_t a1)
{
  sub_24BE80284(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BE80284(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24BE7F4E0(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_24BE802C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_24BE803EC(void *a1, __int128 *a2, uint64_t *a3, __int128 *a4, __int128 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F93748;
  sub_24BE80468(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_24BE80468(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, __int128 *a5, __int128 *a6)
{
  v6 = *a3;
  v12 = *(a3 + 2);
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  v7 = *a4;
  v10 = *a5;
  *__p = v6;
  *a5 = 0uLL;
  v8 = *a6;
  v9 = *(a6 + 2);
  *(a6 + 8) = 0uLL;
  *a6 = 0;
  sub_24BE7F7B4(a2, __p, v7, &v10, &v8);
  v13 = &v8;
  sub_24BCC961C(&v13);
  if (*(&v10 + 1))
  {
    sub_24BC9EC78(*(&v10 + 1));
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_24BE80504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p)
{
  *(v15 - 24) = &a9;
  sub_24BCC961C((v15 - 24));
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BE80538(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void **a6)
{
  *__p = *a3;
  v10 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v6 = *a4;
  v7 = a5[1];
  v8[3] = *a5;
  v8[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v8, 0, 24);
  sub_24BCC9548(v8, *a6, a6[1], (a6[1] - *a6) >> 4);
  v11 = v6;
  sub_24BE80360();
}

void sub_24BE80604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16)
{
  *(v17 - 40) = v16;
  sub_24BCC961C((v17 - 40));
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_24BE806B8(void *a1, uint64_t a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F93748;
  sub_24BE8072C(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_24BE8072C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  sub_24BE7F6B4(a2, __p, *a4);
  v4 = __p[0];
  if (__p[0])
  {

    operator delete(v4);
  }
}

void sub_24BE807A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8082C(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F978D0;
  sub_24BE80920(&v5, a1 + 3, a2, a3);
  return a1;
}

void sub_24BE808C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F978D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE80920(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  sub_24BE802C8(v7, a4);
  *a2 = v5;
  sub_24BE802C8((a2 + 1), v7);
  return sub_24BCCA2B8(v7);
}

void sub_24BE8099C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BE809B8(uint64_t *a1)
{
  v2 = a1 + 1;
  sub_24BE809F8((a1 + 1), *a1);
  sub_24BCCA2B8(v2);
  return a1;
}

uint64_t sub_24BE809F8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_24BCA1F3C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_24BE80A4C(uint64_t a1, void **a2, void *a3)
{
  v6 = *(a1 + 112);
  if (v6)
  {
    sub_24BC9EC78(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    sub_24BC9EC78(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    *(a1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *a1;
  if (*a1)
  {
    *a3 = v9;
    operator delete(v9);
  }
}

void sub_24BE80AB4(uint64_t a1, std::__shared_weak_count **a2, void **a3, void *a4)
{
  v8 = *(a1 + 112);
  if (v8)
  {
    sub_24BC9EC78(v8);
  }

  if (*a2)
  {
    sub_24BC9EC78(*a2);
  }

  v9 = *a3;
  if (*a3)
  {
    *(a1 + 32) = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    *a4 = v10;
    operator delete(v10);
  }
}

uint64_t *sub_24BE80B20()
{
  if ((atomic_load_explicit(&qword_27F079238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079238))
  {
    qword_27F079230 = sub_24BD22E84();
    __cxa_guard_release(&qword_27F079238);
  }

  return &qword_27F079230;
}

uint64_t *sub_24BE80BBC(_DWORD *a1)
{
  if ((sub_24BD22E84() & 1) == 0 && *a1 == 1 && a1[1] == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[set_default_device] Cannot set gpu device without gpu backend.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  result = sub_24BE80B20();
  qword_27F079230 = *a1;
  return result;
}

void sub_24BE80D98(uint64_t a1, uint64_t a2, void *a3)
{
  v8[4] = *MEMORY[0x277D85DE8];
  sub_24BE8B8D4(v7, a1 + 24);
  sub_24BE8B9EC(v8, v7);
  sub_24BEF7D04(v8, a2, a3);
}

void sub_24BE80ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_24BCC9B98(va1);
  sub_24BE8B96C(va);
  _Unwind_Resume(a1);
}

void sub_24BE80F20(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v12 >= ((a4[1] - *a4) >> 2) || v11 != *(*a4 + 4 * v12))
      {
        sub_24BEA52D0((v7 + v10), a2, v5);
      }

      sub_24BE811EC(v14, (*a3 + 16 * v12++));
      ++v11;
      v7 = *a2;
      v10 += 16;
    }

    while (v11 < (a2[1] - *a2) >> 4);
  }

  sub_24BE8B8D4(v15, a1 + 24);
  sub_24BE8B9EC(v16, v15);
  sub_24BEF8F18(v16, a2, v14);
}

void sub_24BE81174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  sub_24BCBCDCC(&a11);
  a25 = &a17;
  sub_24BCC961C(&a25);
  _Unwind_Resume(a1);
}

void *sub_24BE811EC(uint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_24BC8E01C();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v15[4] = a1;
    if (v11)
    {
      sub_24BCB53E8(a1, v11);
    }

    v12 = (16 * v8);
    v15[0] = 0;
    v15[1] = v12;
    v15[3] = 0;
    v13 = *a2;
    *v12 = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v15[2] = v12 + 1;
    sub_24BCC9818(a1, v15);
    v7 = a1[1];
    sub_24BCC98C0(v15);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v4 + 2);
    a1[1] = (v4 + 2);
  }

  a1[1] = v7;
  return (v7 - 16);
}

void sub_24BE812F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BCC98C0(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_24BE8130C(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_24BC8E01C();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16 = a1;
    if (v10)
    {
      sub_24BCB53E8(a1, v10);
    }

    v12 = 0;
    v13 = (16 * v7);
    v15 = 0;
    *v13 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v14 = 16 * v7 + 16;
    sub_24BCC9818(a1, &v12);
    v6 = a1[1];
    sub_24BCC98C0(&v12);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
    *a2 = 0;
    *(a2 + 8) = 0;
    a1[1] = v6;
  }

  a1[1] = v6;
  return (v6 - 16);
}

void sub_24BE813F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BCC98C0(va);
  _Unwind_Resume(a1);
}

void sub_24BE81408(uint64_t a1, void x1_0, uint64_t a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  sub_24BE8B8D4(v5, a1 + 24);
  sub_24BE8B9EC(v6, v5);
  memset(__p, 0, sizeof(__p));
  sub_24BEFAF34(v6, a2, __p, v7);
}

void sub_24BE81558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v22 = *(v20 - 72);
  if (v22)
  {
    *(v20 - 64) = v22;
    operator delete(v22);
  }

  *(v20 - 72) = &a13;
  sub_24BCC961C((v20 - 72));
  _Unwind_Resume(a1);
}

void sub_24BE815D4(const void ***a1, uint64_t *a2, uint64_t a3, uint64_t a4, float a6)
{
  v41[29] = *MEMORY[0x277D85DE8];
  v7 = **a1;
  v6 = (*a1)[1];
  v8 = (v6 - v7);
  if (v6 != v7)
  {
    v10 = *a2;
    if (*(*a2 + 8) - **a2 == 4)
    {
      if (*(v10 + 48) == *&v8[v7 - 4])
      {
        v15 = (*a1)[7];
        LODWORD(v40[0]) = v15;
        BYTE4(v40[0]) = BYTE4(v15);
        v16 = *(v10 + 56);
        LODWORD(v39.__r_.__value_.__l.__data_) = v16;
        v39.__r_.__value_.__s.__data_[4] = BYTE4(v16);
        v17 = sub_24BE80C80(v40, &v39);
        v37 = v17;
        v38 = BYTE4(v17);
        if (sub_24BE80D54(&v37, dword_24BFEEC80))
        {
          v35 = sub_24BF02A98(a3, a4);
          v36 = v18;
          *v34 = a6;
          v34[1] = v37;
          LOBYTE(v34[2]) = v38;
          *&v34[3] = v35;
          v34[5] = v18;
          v40[0] = 1;
          if (sub_24BE80C50(&v35 + 1, v40))
          {
            v19 = *a1;
            memset(__p, 0, sizeof(__p));
            sub_24BCC9A1C(__p, *v19, v19[1], (v19[1] - *v19) >> 2);
            operator new();
          }

          v20 = a1[1];
          v40[0] = *a1;
          v40[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
          }

          v21 = a2[1];
          v40[2] = *a2;
          v40[3] = v21;
          if (v21)
          {
            atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
          }

          memset(v32, 0, sizeof(v32));
          sub_24BCC9984(v32, v40, v41, 2uLL);
          sub_24BE81DC0(v34, v32);
        }

        sub_24BCE1268(v40);
        v29 = sub_24BC95264(v40, "[rms_norm] Received unsupported type ", 37);
        v30 = sub_24BF031F4(v29, &v37);
        sub_24BC95264(v30, ".", 1);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v39);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }

      sub_24BCE1268(v40);
      v26 = sub_24BC95264(v40, "[rms_norm] weight must have the same size as the last dimension of x but has ", 77);
      v27 = MEMORY[0x24C2543E0](v26, *(*a2 + 48));
      sub_24BC95264(v27, " elements.", 10);
      v28 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v28, &v39);
      v28->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v28, &unk_285F94708, MEMORY[0x277D82610]);
    }

    sub_24BCE1268(v40);
    v23 = sub_24BC95264(v40, "[rms_norm] weight must have 1 dimension but has ", 48);
    v24 = MEMORY[0x24C2543E0](v23, (*(*a2 + 8) - **a2) >> 2);
    sub_24BC95264(v24, " dimensions.", 12);
    v25 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v25, &v39);
    v25->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v25, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v40);
  sub_24BC95264(v40, "[rms_norm] Input must have at least 1 dimension but got input with 0 dimensions.", 80);
  v22 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v22, &v39);
  v22->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v22, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BE81C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((v39 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a38);
      _Unwind_Resume(a1);
    }
  }

  else if (!v39)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v38);
  goto LABEL_6;
}

void sub_24BE81DC0(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = (*a2)[1];
  v5[0] = **a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v5, 0x40000000ALL, *(a1 + 12), *(a1 + 20) | 0x100000000, &v6);
  sub_24BE7F218(v5);
  sub_24BEB273C(&v6, *(a1 + 12), *(a1 + 20) | 0x100000000);
}

void sub_24BE81FF8(_Unwind_Exception *a1)
{
  sub_24BE7F218(v1 - 64);
  sub_24BE7F218(v1 - 80);
  _Unwind_Resume(a1);
}

void sub_24BE82084(uint64_t a1, void ****a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v12[6] = *(a1 + 8);
  v13 = *(a1 + 16);
  v6 = **a2;
  memset(v17, 0, sizeof(v17));
  sub_24BCC9A1C(v17, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
  v7 = (*a2)[2];
  memset(v18, 0, sizeof(v18));
  sub_24BCC9A1C(v18, *v7, v7[1], (v7[1] - *v7) >> 2);
  memset(v12, 0, 24);
  sub_24BCE220C(v12, v17, &v19, 2uLL);
  v8 = *a2;
  v9 = (**a2)[7];
  LODWORD(v14) = v9;
  BYTE4(v14) = BYTE4(v9);
  v10 = *(v8[2] + 56);
  v15 = v10;
  v16 = BYTE4(v10);
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &v14, v17, 2uLL);
  operator new();
}

void sub_24BE823B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char *__p, char *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_24BCC961C(&a26);
  for (i = 32; i != -16; i -= 16)
  {
    sub_24BE7F218((&a27 + i));
  }

  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a18;
  sub_24BC8EE84(&__p);
  v30 = (v27 - 112);
  v31 = -48;
  while (1)
  {
    v32 = *(v30 - 1);
    if (v32)
    {
      *v30 = v32;
      operator delete(v32);
    }

    v30 -= 3;
    v31 += 24;
    if (!v31)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_24BE824E8(void *a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, float a7)
{
  v62[27] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if (*(*a1 + 8) == **a1)
  {
    sub_24BCE1268(v61);
    sub_24BC95264(v61, "[layer_norm] Input must have at least 1 dimension but got input with 0 dimensions.", 82);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v60);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (*(a2 + 16) == 1)
  {
    v14 = *a2;
    if (*(*a2 + 8) - **a2 != 4)
    {
      sub_24BCE1268(v61);
      v37 = sub_24BC95264(v61, "[layer_norm] weight must have 1 dimension but has ", 50);
      v38 = MEMORY[0x24C2543E0](v37, (*(*a2 + 8) - **a2) >> 2);
      sub_24BC95264(v38, " dimensions.", 12);
      v39 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v39, &v60);
      v39->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v39, &unk_285F94708, MEMORY[0x277D82610]);
    }

    v15 = a3 + 16;
    if ((a3[16] & 1) == 0)
    {
      v23 = *(v7 + 56);
      LODWORD(v61[0]) = v23;
      BYTE4(v61[0]) = BYTE4(v23);
      v24 = *(v14 + 56);
      LODWORD(v60.__r_.__value_.__l.__data_) = v24;
      v60.__r_.__value_.__s.__data_[4] = BYTE4(v24);
      v20 = sub_24BE80C80(v61, &v60);
      goto LABEL_11;
    }

    if (*(*a3 + 8) - **a3 == 4)
    {
      v16 = *(v7 + 56);
      LODWORD(v61[0]) = v16;
      BYTE4(v61[0]) = BYTE4(v16);
      v17 = *(v14 + 56);
      LODWORD(v60.__r_.__value_.__l.__data_) = v17;
      v60.__r_.__value_.__s.__data_[4] = BYTE4(v17);
      v18 = sub_24BE80C80(v61, &v60);
      LODWORD(v61[0]) = v18;
      BYTE4(v61[0]) = BYTE4(v18);
      v19 = *(*a3 + 56);
      LODWORD(v60.__r_.__value_.__l.__data_) = v19;
      v60.__r_.__value_.__s.__data_[4] = BYTE4(v19);
      v20 = sub_24BE80C80(v61, &v60);
LABEL_11:
      LODWORD(v59) = v20;
      v22 = HIDWORD(v20);
LABEL_12:
      BYTE4(v59) = v22;
      if (sub_24BE80D54(&v59, dword_24BFEEC80))
      {
        v57 = sub_24BF02A98(a4, a5);
        v58 = v26;
        v27 = *v15;
        v51[0] = *(a2 + 16);
        v51[1] = v27;
        v52 = a7;
        v53 = v59;
        v54 = BYTE4(v59);
        v55 = v57;
        v56 = v26;
        if (v51[0] == 1)
        {
          v28 = a2[1];
          v48[0] = *a2;
          v48[1] = v28;
          if (v28)
          {
            atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
          }

          sub_24BEA3B14(v48, v59, v25, 0, &v49);
          sub_24BE7F218(v48);
          if (*v15 == 1)
          {
            v30 = *(a3 + 1);
            v45[0] = *a3;
            v45[1] = v30;
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
            }

            sub_24BEA3B14(v45, v59, v29, 0, &v46);
            sub_24BE7F218(v45);
            v61[0] = 1;
            if (sub_24BE80C50(&v57 + 1, v61))
            {
              v31 = *a1;
              memset(__p, 0, sizeof(__p));
              sub_24BCC9A1C(__p, *v31, *(v31 + 8), (*(v31 + 8) - *v31) >> 2);
              operator new();
            }

            v32 = a1[1];
            v61[0] = *a1;
            v61[1] = v32;
            if (v32)
            {
              atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
            }

            v61[2] = v49;
            v61[3] = v50;
            if (v50)
            {
              atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
            }

            v61[4] = v46;
            v61[5] = v47;
            if (v47)
            {
              atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
            }

            memset(v43, 0, sizeof(v43));
            sub_24BCC9984(v43, v61, v62, 3uLL);
            sub_24BE82E6C(v51, v43);
          }

          sub_24BCD0924(v45, 0, v59);
        }

        sub_24BCD0924(v48, 1, v59);
      }

      sub_24BCE1268(v61);
      v34 = sub_24BC95264(v61, "[layer_norm] Received unsupported type ", 39);
      v35 = sub_24BF031F4(v34, &v59);
      sub_24BC95264(v35, ".", 1);
      v36 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v36, &v60);
      v36->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v36, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  else
  {
    v15 = a3 + 16;
    if ((a3[16] & 1) == 0 || *(*a3 + 8) - **a3 == 4)
    {
      v21 = *(v7 + 56);
      LODWORD(v59) = v21;
      v22 = HIDWORD(v21);
      goto LABEL_12;
    }
  }

  sub_24BCE1268(v61);
  v40 = sub_24BC95264(v61, "[layer_norm] bias must have 1 dimension but has ", 48);
  v41 = MEMORY[0x24C2543E0](v40, (*(*a3 + 8) - **a3) >> 2);
  sub_24BC95264(v41, " dimensions.", 12);
  v42 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v42, &v60);
  v42->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v42, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BE82CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if ((v45 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a44);
      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v44);
  goto LABEL_6;
}

void sub_24BE82E6C(uint64_t a1, void **a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = (*a2)[1];
  v5[0] = **a2;
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v5, 0x40000000ALL, *(a1 + 16), *(a1 + 24) | 0x100000000, &v6);
  sub_24BE7F218(v5);
  sub_24BEB21E4(&v6, -1, 1, *(a1 + 16), *(a1 + 24) | 0x100000000);
}

void sub_24BE831B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  sub_24BE7F218(va2);
  sub_24BE7F218(v18 - 112);
  sub_24BE7F218(v18 - 80);
  _Unwind_Resume(a1);
}

void sub_24BE83284(uint64_t a1, void ****a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v14[6] = *(a1 + 8);
  v15 = *(a1 + 16);
  v6 = **a2;
  memset(v21, 0, sizeof(v21));
  sub_24BCC9A1C(v21, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
  v7 = (*a2)[2];
  memset(v22, 0, sizeof(v22));
  sub_24BCC9A1C(v22, *v7, v7[1], (v7[1] - *v7) >> 2);
  v8 = (*a2)[4];
  memset(v23, 0, sizeof(v23));
  sub_24BCC9A1C(v23, *v8, v8[1], (v8[1] - *v8) >> 2);
  memset(v14, 0, 24);
  sub_24BCE220C(v14, v21, &v24, 3uLL);
  v9 = *a2;
  v10 = (**a2)[7];
  LODWORD(v16) = v10;
  BYTE4(v16) = BYTE4(v10);
  v11 = *(v9[2] + 56);
  v17 = v11;
  v18 = BYTE4(v11);
  v12 = *(v9[4] + 56);
  v19 = v12;
  v20 = BYTE4(v12);
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &v16, v21, 3uLL);
  operator new();
}

void sub_24BE83614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char *__p, char *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_24BCC961C(&a26);
  for (i = 48; i != -16; i -= 16)
  {
    sub_24BE7F218((&a27 + i));
  }

  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a18;
  sub_24BC8EE84(&__p);
  v30 = (v27 - 112);
  v31 = -72;
  while (1)
  {
    v32 = *(v30 - 1);
    if (v32)
    {
      *v30 = v32;
      operator delete(v32);
    }

    v30 -= 3;
    v31 += 24;
    if (!v31)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_24BE83758(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a9, float a10)
{
  v36[33] = *MEMORY[0x277D85DE8];
  v10 = *a1;
  if (*(**a1 + 8) - ***a1 > 8uLL)
  {
    v11 = a2;
    if (a1[1] - v10 != 32 || (v13 = **(v10 + 2), *(*(v10 + 2) + 8) - v13 == 4) && *v13 == a2 / 2)
    {
      v27 = a2;
      v28 = a3;
      v29 = a9;
      v30 = a10;
      v31 = a4;
      v32 = a5;
      v33 = a6;
      v34 = a7;
      v35.__r_.__value_.__r.__words[0] = sub_24BF02A98(a6, a7);
      LODWORD(v35.__r_.__value_.__r.__words[1]) = v14;
      v36[0] = 1;
      if (sub_24BE80C50(v35.__r_.__value_.__r.__words + 1, v36))
      {
        v15 = *v10;
        memset(__p, 0, sizeof(__p));
        sub_24BCC9A1C(__p, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 2);
        operator new();
      }

      v24 = *a1;
      v25 = a1[2];
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      sub_24BE83C94(&v27, &v24);
    }

    sub_24BCE1268(v36);
    v19 = sub_24BC95264(v36, "[rope] freqs must be one dimensional with size ", 47);
    v20 = MEMORY[0x24C2543C0](v19, (v11 / 2));
    v21 = sub_24BC95264(v20, " but got shape ", 15);
    v22 = sub_24BF02DB8(v21, *(*a1 + 2));
    sub_24BC95264(v22, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v35);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v36);
  v16 = sub_24BC95264(v36, "[rope] Input must have at least 3 dimensions but got input with ", 64);
  v17 = MEMORY[0x24C2543E0](v16, (*(*v10 + 8) - **v10) >> 2);
  sub_24BC95264(v17, " dimensions.", 12);
  v18 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v18, &v35);
  v18->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v18, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BE83BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a35);
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

void sub_24BE83C94(int *a1, const void ****a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  v6 = *v5;
  v7 = v5[1] - *v5;
  LODWORD(v12) = -1;
  HIDWORD(v12) = *(v6 + (((v7 << 30) - 0x200000000) >> 30));
  v13 = *(v6 + (((v7 << 30) - 0x100000000) >> 30));
  v10 = 0;
  __p = 0;
  v9 = 0;
  sub_24BCC9910(&__p, &v12, &v14, 3uLL);
  sub_24BEA4500(v4, &__p, *(a1 + 3), *(a1 + 4), &v11);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if ((v11[1] - *v11) > 4)
  {
    sub_24BEA3480((v11[7] & 0xFFFFFFFFFFLL), *(a1 + 3), *(a1 + 4), &v12, a1[4], (a1[4] + *(*v11 + 1)));
  }

  sub_24BC923C0();
}

void sub_24BE847AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_24BCC98C0(v67 - 128);
  sub_24BE7F218(&a43);
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  a43 = v67 - 200;
  sub_24BCC961C(&a43);
  sub_24BE7F218(&a54);
  sub_24BE7F218(&a65);
  v69 = *(v67 - 152);
  if (v69)
  {
    *(v67 - 144) = v69;
    operator delete(v69);
  }

  sub_24BE7F218(&a66);
  sub_24BE7F218(&a67);
  sub_24BE7F218(&STACK[0x208]);
  sub_24BE7F218(&STACK[0x218]);
  sub_24BE7F218(&STACK[0x228]);
  sub_24BE7F218(v67 - 240);
  _Unwind_Resume(a1);
}

void sub_24BE84B8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a10)
{
  v35[3] = *MEMORY[0x277D85DE8];
  v18 = a1[1];
  v33 = *a1;
  v34 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v31 = 0uLL;
  v32 = 0;
  sub_24BCC9984(&v31, &v33, v35, 1uLL);
  sub_24BE7F218(&v33);
  if (*(a6 + 16) == 1)
  {
    v19 = *(a6 + 8);
    v29[0] = *a6;
    v29[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BEA3B14(v29, 0x40000000ALL, a7, a8, &v30);
    v20 = *(&v31 + 1);
    if (*(&v31 + 1) >= v32)
    {
      v23 = (*(&v31 + 1) - v31) >> 4;
      if ((v23 + 1) >> 60)
      {
        sub_24BC8E01C();
      }

      v24 = (v32 - v31) >> 3;
      if (v24 <= v23 + 1)
      {
        v24 = v23 + 1;
      }

      if (v32 - v31 >= 0x7FFFFFFFFFFFFFF0)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      v35[2] = &v31;
      if (v25)
      {
        sub_24BCB53E8(&v31, v25);
      }

      v33 = 0;
      v34 = (16 * v23);
      v35[1] = 0;
      *v34 = v30;
      v30 = 0uLL;
      v35[0] = 16 * v23 + 16;
      sub_24BCC9818(&v31, &v33);
      v21 = *(&v31 + 1);
      sub_24BCC98C0(&v33);
    }

    else
    {
      **(&v31 + 1) = v30;
      v21 = v20 + 16;
      v30 = 0uLL;
    }

    *(&v31 + 1) = v21;
    sub_24BE7F218(&v30);
    sub_24BE7F218(v29);
    v22 = 1.0;
    if ((a4 & 0x100000000) == 0)
    {
LABEL_20:
      v27 = v31;
      v28 = v32;
      v32 = 0;
      v31 = 0uLL;
      sub_24BE83758(&v27, a2, a3, a5, 1, a7, a8, v22, a10);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[rope] Only one of base or freqs can have a value.");
  }

  else
  {
    if ((a4 & 0x100000000) != 0)
    {
      v22 = *&a4;
      goto LABEL_20;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[rope] Neither base nor freqs has a value.");
  }

  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BE84E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void **);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  sub_24BCC98C0(va3);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  va_copy(v13, va2);
  sub_24BCC961C(va1);
  _Unwind_Resume(a1);
}

void sub_24BE84ED0(uint64_t a1, void *a2, uint64_t **a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0uLL;
  v9 = 0;
  sub_24BCC9548(&v8, *a3, a3[1], (a3[1] - *a3) >> 4);
  if (a2[1] - *a2 == 32)
  {
    sub_24BE811EC(&v8, (*a2 + 16));
  }

  v6 = **a3;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
  operator new();
}

void sub_24BE85148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25)
{
  a23 = &a19;
  sub_24BCC961C(&a23);
  _Unwind_Resume(a1);
}

void sub_24BE8524C(int ***a1, std::string::size_type *a2, std::string::size_type *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, float a9)
{
  v119 = *MEMORY[0x277D85DE8];
  v105 = a6;
  v106 = a7;
  v15 = a1[1];
  v115.__r_.__value_.__r.__words[0] = *a1;
  v115.__r_.__value_.__l.__size_ = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = a2[1];
  v115.__r_.__value_.__r.__words[2] = *a2;
  v116 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = a3[1];
  v117 = *a3;
  v118 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = 0;
  while (*(v115.__r_.__value_.__r.__words[v18] + 8) - **(&v115.__r_.__value_.__l.__data_ + v18 * 8) == 16)
  {
    v18 += 2;
    if (v18 == 6)
    {
      for (i = 32; i != -16; i -= 16)
      {
        sub_24BE7F218(&v115 + i);
      }

      if ((a4[2] & 1) == 0 || ((*a4)[1] - **a4) < 0x11)
      {
        v20 = **a1;
        if ((*a1)[1] != v20)
        {
          v21 = *v20;
          v22 = a2[1];
          v115.__r_.__value_.__r.__words[0] = *a2;
          v115.__r_.__value_.__l.__size_ = v22;
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          v23 = a3[1];
          v115.__r_.__value_.__r.__words[2] = *a3;
          v116 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
          }

          v24 = 0;
          while (1)
          {
            v25 = **(&v115.__r_.__value_.__l.__data_ + v24 * 8);
            if (*(v115.__r_.__value_.__r.__words[v24] + 8) == v25)
            {
              break;
            }

            if (*v25 != v21)
            {
              sub_24BCE1268(&v107);
              v63 = sub_24BC95264(&v107, "[scaled_dot_product_attention] mismatching batch dimension for input with shape ", 80);
              v64 = sub_24BF02DB8(v63, *(&v115.__r_.__value_.__l.__data_ + v24 * 8));
              sub_24BC95264(v64, ".", 1);
              exception = __cxa_allocate_exception(0x10uLL);
              std::stringbuf::str();
              std::logic_error::logic_error(exception, &v104);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
            }

            v24 += 2;
            if (v24 == 4)
            {
              for (j = 16; j != -16; j -= 16)
              {
                sub_24BE7F218(&v115 + j);
              }

              v28 = **a1;
              v27 = (*a1)[1];
              v29 = v27 - v28;
              if (v27 != v28)
              {
                v30 = *a2;
                v31 = *(*a2 + 8) - **a2;
                if (v31)
                {
                  v32 = v28 + v29;
                  v33 = *(*a2 + 8);
                  if (*(v32 - 4) == *(v33 - 4))
                  {
                    if (v29 > 8)
                    {
                      if (v31 > 8)
                      {
                        if (*(*a3 + 8) - **a3 > 8uLL)
                        {
                          v34 = *(v33 - 12);
                          if (v34 == *(*(*a3 + 8) - 12))
                          {
                            v35 = *(v32 - 12);
                            if (!(v35 % v34))
                            {
                              v36 = (*a1)[7];
                              LODWORD(v107) = v36;
                              BYTE4(v107) = BYTE4(v36);
                              v37 = *(v30 + 56);
                              LODWORD(v115.__r_.__value_.__l.__data_) = v37;
                              v115.__r_.__value_.__s.__data_[4] = BYTE4(v37);
                              v38 = sub_24BE80C80(&v107, &v115);
                              LODWORD(v107) = v38;
                              BYTE4(v107) = BYTE4(v38);
                              v39 = *(*a3 + 56);
                              LODWORD(v115.__r_.__value_.__l.__data_) = v39;
                              v115.__r_.__value_.__s.__data_[4] = BYTE4(v39);
                              v40 = sub_24BE80C80(&v107, &v115);
                              LODWORD(v103) = v40;
                              BYTE4(v103) = BYTE4(v40);
                              if (sub_24BE80D54(&v103, dword_24BFEEC80))
                              {
                                v41 = a1[1];
                                v100[0] = *a1;
                                v100[1] = v41;
                                if (v41)
                                {
                                  atomic_fetch_add_explicit(v41 + 1, 1uLL, memory_order_relaxed);
                                }

                                sub_24BEA3B14(v100, v103, v105, v106, &v101);
                                sub_24BE7F218(v100);
                                v42 = a2[1];
                                v97[0] = *a2;
                                v97[1] = v42;
                                if (v42)
                                {
                                  atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
                                }

                                sub_24BEA3B14(v97, v103, v105, v106, &v98);
                                sub_24BE7F218(v97);
                                v43 = a3[1];
                                v94[0] = *a3;
                                v94[1] = v43;
                                if (v43)
                                {
                                  atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
                                }

                                sub_24BEA3B14(v94, v103, v105, v106, &v95);
                                sub_24BE7F218(v94);
                                if (a5 <= 1)
                                {
                                  v44 = 1;
                                }

                                else
                                {
                                  v44 = a5;
                                }

                                if ((a5 & 0x100000000) != 0)
                                {
                                  v45 = v44;
                                }

                                else
                                {
                                  v45 = 32;
                                }

                                v89[0] = a9;
                                LODWORD(v89[1]) = v103;
                                v90 = BYTE4(v103);
                                v91 = v35;
                                v92 = v34;
                                v93 = &v105;
                                v87 = sub_24BF02A98(v105, v106);
                                v88 = v46;
                                v47 = v95[1];
                                if (v47 != *v95)
                                {
                                  v48 = v101[1];
                                  if (v48 != *v101)
                                  {
                                    if ((v48 - *v101) > 8)
                                    {
                                      v49 = 0;
                                      v50 = *(v48 - 4);
                                      v51 = *(*v101 + 8);
                                      if (v50 != 64 && v50 != 96)
                                      {
                                        v49 = v50 != 128;
                                      }

                                      v52 = 0;
                                      v53 = *(v47 - 4);
                                      v54 = *(a4 + 16);
                                      if (v45 <= v51 && (v54 & 1) == 0)
                                      {
                                        if ((v50 | 0x10) == 0x50)
                                        {
                                          v107 = 1;
                                          v52 = sub_24BE80C50(&v87 + 1, &v107);
                                          v54 = *(a4 + 16);
                                        }

                                        else
                                        {
                                          v54 = 0;
                                          v52 = 0;
                                        }
                                      }

                                      v55 = 0;
                                      if (v51 == 1 && ((v49 | v54) & 1) == 0)
                                      {
                                        v107 = 1;
                                        v55 = sub_24BE80C50(&v87 + 1, &v107);
                                      }

                                      if (v50 == v53 && (v52 || v55))
                                      {
                                        v56 = *v101;
                                        v57 = v101[1] - *v101;
                                        if (v57)
                                        {
                                          LODWORD(v107) = *v56;
                                          if (v57 >= 5)
                                          {
                                            HIDWORD(v107) = v56[1];
                                            if (v57 != 8)
                                            {
                                              LODWORD(v108) = v56[2];
                                              v58 = v95[1];
                                              if (v58 != *v95)
                                              {
                                                HIDWORD(v108) = *(v58 - 4);
                                                memset(&v115, 0, sizeof(v115));
                                                sub_24BCC9910(&v115, &v107, &v109, 4uLL);
                                                memset(&v115, 0, sizeof(v115));
                                                operator new();
                                              }
                                            }
                                          }
                                        }

                                        sub_24BC923C0();
                                      }

                                      if (*(a4 + 16) == 1)
                                      {
                                        v107 = v101;
                                        v108 = v102;
                                        if (v102)
                                        {
                                          atomic_fetch_add_explicit((v102 + 8), 1uLL, memory_order_relaxed);
                                        }

                                        v109 = v98;
                                        v110 = v99;
                                        if (v99)
                                        {
                                          atomic_fetch_add_explicit((v99 + 8), 1uLL, memory_order_relaxed);
                                        }

                                        v111 = v95;
                                        v112 = v96;
                                        if (v96)
                                        {
                                          atomic_fetch_add_explicit((v96 + 8), 1uLL, memory_order_relaxed);
                                        }

                                        if (a4[2])
                                        {
                                          v59 = a4[1];
                                          v113[0] = *a4;
                                          v113[1] = v59;
                                          if (v59)
                                          {
                                            atomic_fetch_add_explicit(v59 + 1, 1uLL, memory_order_relaxed);
                                          }

                                          memset(&v104, 0, sizeof(v104));
                                          sub_24BCC9984(&v104, &v107, v114, 4uLL);
                                          sub_24BE8632C(v89, &v104);
                                        }

                                        sub_24BE8B2A0();
                                      }

                                      v107 = v101;
                                      v108 = v102;
                                      if (v102)
                                      {
                                        atomic_fetch_add_explicit((v102 + 8), 1uLL, memory_order_relaxed);
                                      }

                                      v109 = v98;
                                      v110 = v99;
                                      if (v99)
                                      {
                                        atomic_fetch_add_explicit((v99 + 8), 1uLL, memory_order_relaxed);
                                      }

                                      v111 = v95;
                                      v112 = v96;
                                      if (v96)
                                      {
                                        atomic_fetch_add_explicit((v96 + 8), 1uLL, memory_order_relaxed);
                                      }

                                      memset(&v104, 0, sizeof(v104));
                                      sub_24BCC9984(&v104, &v107, v113, 3uLL);
                                      sub_24BE8632C(v89, &v104);
                                    }

                                    sub_24BC923C0();
                                  }

                                  sub_24BC923C0();
                                }

                                sub_24BC923C0();
                              }

                              sub_24BCE1268(&v107);
                              v81 = sub_24BC95264(&v107, "[scaled_dot_product_attention] Received unsupported type ", 57);
                              v82 = sub_24BF031F4(v81, &v103);
                              sub_24BC95264(v82, ".", 1);
                              v83 = __cxa_allocate_exception(0x10uLL);
                              std::stringbuf::str();
                              std::logic_error::logic_error(v83, &v115);
                              v83->__vftable = (MEMORY[0x277D828F8] + 16);
                              __cxa_throw(v83, &unk_285F94708, MEMORY[0x277D82610]);
                            }

                            sub_24BCE1268(&v107);
                            v76 = sub_24BC95264(&v107, "[scaled_dot_product_attention] n_heads must be a multiple of n_kv_heads, found n_heads ", 87);
                            v77 = MEMORY[0x24C2543C0](v76, v35);
                            v78 = sub_24BC95264(v77, " for n_kv_heads ", 16);
                            v79 = MEMORY[0x24C2543C0](v78, v34);
                            sub_24BC95264(v79, ".", 1);
                            v80 = __cxa_allocate_exception(0x10uLL);
                            std::stringbuf::str();
                            std::logic_error::logic_error(v80, &v115);
                            v80->__vftable = (MEMORY[0x277D828F8] + 16);
                            __cxa_throw(v80, &unk_285F94708, MEMORY[0x277D82610]);
                          }

                          sub_24BCE1268(&v107);
                          v71 = sub_24BC95264(&v107, "[scaled_dot_product_attention] keys, values expected to have matching n_kv_heads; found keys with n_heads ", 106);
                          if (*(*a2 + 8) - **a2 >= 9uLL)
                          {
                            v72 = MEMORY[0x24C2543C0](v71, *(*(*a2 + 8) - 12));
                            v73 = sub_24BC95264(v72, " for values with n_heads ", 25);
                            if (*(*a3 + 8) - **a3 > 8uLL)
                            {
                              v74 = MEMORY[0x24C2543C0](v73, *(*(*a3 + 8) - 12));
                              sub_24BC95264(v74, ".", 1);
                              v75 = __cxa_allocate_exception(0x10uLL);
                              std::stringbuf::str();
                              std::logic_error::logic_error(v75, &v115);
                              v75->__vftable = (MEMORY[0x277D828F8] + 16);
                              __cxa_throw(v75, &unk_285F94708, MEMORY[0x277D82610]);
                            }
                          }

                          sub_24BC923C0();
                        }

                        sub_24BC923C0();
                      }

                      sub_24BC923C0();
                    }

                    sub_24BC923C0();
                  }

                  sub_24BCE1268(&v107);
                  v66 = sub_24BC95264(&v107, "[scaled_dot_product_attention] query, keys expected to have matching last dimension; found query shape ", 103);
                  v67 = sub_24BF02DB8(v66, *a1);
                  v68 = sub_24BC95264(v67, " for keys shape ", 16);
                  v69 = sub_24BF02DB8(v68, *a2);
                  sub_24BC95264(v69, ".", 1);
                  v70 = __cxa_allocate_exception(0x10uLL);
                  std::stringbuf::str();
                  std::logic_error::logic_error(v70, &v115);
                  v70->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v70, &unk_285F94708, MEMORY[0x277D82610]);
                }

                sub_24BC923C0();
              }

              sub_24BC923C0();
            }
          }

          sub_24BC923C0();
        }

        sub_24BC923C0();
      }

      sub_24BCE1268(&v107);
      v84 = sub_24BC95264(&v107, "[scaled_dot_product_attention] the mask with shape ", 51);
      v85 = sub_24BF02DB8(v84, *a4);
      sub_24BC95264(v85, " expected to have at most rank 4", 32);
      v86 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v86, &v115);
      v86->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v86, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  sub_24BCE1268(&v107);
  v60 = sub_24BC95264(&v107, "[scaled_dot_product_attention] input with shape ", 48);
  v61 = sub_24BF02DB8(v60, *(&v115.__r_.__value_.__l.__data_ + v18 * 8));
  sub_24BC95264(v61, " expected to be rank 4", 22);
  v62 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v62, &v104);
  v62->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v62, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BE86058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (*(v49 - 137) < 0)
  {
    operator delete(*(v49 - 160));
    if ((v48 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a47);
      _Unwind_Resume(a1);
    }
  }

  else if (!v48)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v47);
  goto LABEL_6;
}

void sub_24BE86804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(v24 - 96);
  sub_24BE7F218(&a19);
  sub_24BE7F218(&a21);
  sub_24BE7F218(&a23);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BE86F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_24BE7F218(va);
  sub_24BE7F218(&a15);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_24BE7F218(v26 - 128);
  sub_24BE7F218(v26 - 112);
  _Unwind_Resume(a1);
}

void sub_24BE87080(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  sub_24BF02A98(a4, a5);
  if (a2 == 32 || a2 == 64 || a2 == 128)
  {
    if (a3 <= 8 && ((1 << a3) & 0x15C) != 0)
    {
      v9 = *a1;
      if (*(*a1 + 8) - **a1 > 4uLL)
      {
        if (!(*(*(*a1 + 8) - 4) % a2))
        {
          v37[0] = 0;
          v37[1] = 0;
          v38 = 0;
          sub_24BCC9A1C(v37, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 2);
          v10 = *a1;
          v11 = *(*a1 + 8);
          if (v11 != **a1)
          {
            *(v37[1] - 1) = *(v11 - 4) * a3 / 32;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            sub_24BCC9A1C(&v34, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 2);
            v12 = *(*a1 + 8);
            if (v12 != **a1)
            {
              v13 = v35;
              *(v35 - 4) = *(v12 - 4) / a2;
              v44 = *v37;
              v14 = v38;
              v37[0] = 0;
              v37[1] = 0;
              v38 = 0;
              v45 = v14;
              memset(v46, 0, sizeof(v46));
              sub_24BCC9A1C(v46, v34, v13, (v13 - v34) >> 2);
              memset(v47, 0, sizeof(v47));
              sub_24BCC9A1C(v47, v34, v35, (v35 - v34) >> 2);
              memset(v33, 0, sizeof(v33));
              sub_24BCE220C(v33, &v44, &v48, 3uLL);
              BYTE4(v39) = 4;
              LODWORD(v39) = 3;
              v15 = *(*a1 + 56);
              v40 = v15;
              v41 = BYTE4(v15);
              v42 = v15;
              v43 = BYTE4(v15);
              memset(__p, 0, sizeof(__p));
              sub_24BCE2380(__p, &v39, &v44, 3uLL);
              operator new();
            }

            sub_24BC923C0();
          }

          sub_24BC923C0();
        }

        sub_24BCE1268(&v44);
        v20 = sub_24BC95264(&v44, "[quantize] The last dimension of the matrix needs to be divisible by ", 69);
        v21 = sub_24BC95264(v20, "the quantization group size ", 28);
        v22 = MEMORY[0x24C2543C0](v21, a2);
        v23 = sub_24BC95264(v22, ". However the provided ", 23);
        v24 = sub_24BC95264(v23, " matrix has shape ", 18);
        sub_24BF02DB8(v24, *a1);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v49);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }

      sub_24BCE1268(&v44);
      v16 = sub_24BC95264(&v44, "[quantize] The matrix to be quantized must have at least 2 dimension ", 69);
      v17 = sub_24BC95264(v16, "but it has only ", 16);
      v18 = MEMORY[0x24C2543E0](v17, (*(*a1 + 8) - **a1) >> 2);
      sub_24BC95264(v18, ".", 1);
      v19 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v19, &v49);
      v19->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v19, &unk_285F94708, MEMORY[0x277D82610]);
    }

    sub_24BCE1268(&v44);
    v29 = sub_24BC95264(&v44, "[quantize] The requested number of bits ", 40);
    v30 = MEMORY[0x24C2543C0](v29, a3);
    sub_24BC95264(v30, " is not supported. The supported bits are 2, 3, 4, 6 and 8.", 59);
    v31 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v31, &v49);
    v31->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v31, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(&v44);
  v26 = sub_24BC95264(&v44, "[quantize] The requested group size ", 36);
  v27 = MEMORY[0x24C2543C0](v26, a2);
  sub_24BC95264(v27, " is not supported. The supported group sizes are 64 and 128.", 60);
  v28 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v28, &v49);
  v28->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v28, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BE8774C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  if (*(v34 - 97) < 0)
  {
    operator delete(*(v34 - 120));
    if ((v33 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(va);
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

void sub_24BE878D0(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v69[27] = *MEMORY[0x277D85DE8];
  if (a5 > 0)
  {
    if (a4 > 0)
    {
      v11 = *a1;
      if (*(*a1 + 8) - **a1 >= 5uLL && *(*a2 + 8) - **a2 >= 5uLL && *(*a3 + 8) - **a3 > 4uLL)
      {
        memset(&__s1, 0, sizeof(__s1));
        sub_24BCC9A1C(&__s1, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 2);
        v16 = *a2;
        v65 = 0;
        v66 = 0;
        __s2 = 0;
        sub_24BCC9A1C(&__s2, *v16, *(v16 + 8), (*(v16 + 8) - *v16) >> 2);
        v17 = *a3;
        v62 = 0;
        v63 = 0;
        v61 = 0;
        sub_24BCC9A1C(&v61, *v17, *(v17 + 8), (*(v17 + 8) - *v17) >> 2);
        size = __s1.__r_.__value_.__l.__size_;
        *(__s1.__r_.__value_.__l.__size_ - 4) = -1;
        v19 = v65;
        *(v65 - 4) = -1;
        v20 = v62;
        *(v62 - 4) = -1;
        v21 = __s1.__r_.__value_.__r.__words[0];
        v22 = size - __s1.__r_.__value_.__r.__words[0];
        if (size - __s1.__r_.__value_.__r.__words[0] == v19 - __s2 && !memcmp(__s1.__r_.__value_.__l.__data_, __s2, v22) && v22 == v20 - v61 && !memcmp(v21, v61, v22))
        {
          if (*(*a1 + 56) == 3)
          {
            v23 = *(*a1 + 8);
            if (v23 != **a1)
            {
              v24 = *(*a2 + 8);
              if (v24 != **a2)
              {
                v25 = 32 * *(v23 - 4) / a5;
                if (v25 == *(v24 - 4) * a4)
                {
                  v58 = sub_24BF02A98(a6, a7);
                  v59 = v26;
                  v53[0] = &__s1;
                  v53[1] = &__s2;
                  v53[2] = a2;
                  v53[3] = a3;
                  v54 = a4;
                  v55 = a5;
                  v56 = v58;
                  LODWORD(v57) = v26;
                  v68[0] = 1;
                  if (sub_24BE80C50(&v58 + 1, v68))
                  {
                    v27 = *a1;
                    memset(&v60, 0, sizeof(v60));
                    sub_24BCC9A1C(&v60, *v27, *(v27 + 8), (*(v27 + 8) - *v27) >> 2);
                    v51[8] = v60.__r_.__value_.__l.__data_;
                    v28 = *&v60.__r_.__value_.__r.__words[1];
                    *(v60.__r_.__value_.__l.__size_ - 4) = v25;
                    v52 = v28;
                    memset(&v60, 0, sizeof(v60));
                    operator new();
                  }

                  v29 = a1[1];
                  v68[0] = *a1;
                  v68[1] = v29;
                  if (v29)
                  {
                    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
                  }

                  v30 = a2[1];
                  v68[2] = *a2;
                  v68[3] = v30;
                  if (v30)
                  {
                    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
                  }

                  v31 = a3[1];
                  v68[4] = *a3;
                  v68[5] = v31;
                  if (v31)
                  {
                    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
                  }

                  memset(v51, 0, 24);
                  sub_24BCC9984(v51, v68, v69, 3uLL);
                  sub_24BE88350(v53, v51);
                }

                sub_24BCE1268(v68);
                v41 = sub_24BC95264(v68, "[dequantize] Shape of scales and biases does not match the matrix ", 66);
                v42 = sub_24BC95264(v41, "given the quantization parameters. Provided matrix of shape ", 60);
                v43 = sub_24BF02DB8(v42, *a1);
                v44 = sub_24BC95264(v43, " and scales/biases of shape ", 28);
                v45 = sub_24BF02DB8(v44, *a2);
                v46 = sub_24BC95264(v45, " with group_size=", 17);
                v47 = MEMORY[0x24C2543C0](v46, a4);
                v48 = sub_24BC95264(v47, " and bits=", 10);
                v49 = MEMORY[0x24C2543C0](v48, a5);
                sub_24BC95264(v49, ".", 1);
                exception = __cxa_allocate_exception(0x10uLL);
                std::stringbuf::str();
                std::logic_error::logic_error(exception, &v60);
                exception->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
              }
            }

            sub_24BC923C0();
          }

          v32 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v32, "[dequantize] The matrix should be given as a uint32");
        }

        else
        {
          v32 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v32, "[dequantize] Shape of scales and biases does not match the matrix");
        }

        v32->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v32, &unk_285F94708, MEMORY[0x277D82610]);
      }

      sub_24BCE1268(v68);
      v33 = sub_24BC95264(v68, "[quantize] The matrix to be quantized must have at least 2 dimension ", 69);
      v34 = sub_24BC95264(v33, "but it has only ", 16);
      v35 = MEMORY[0x24C2543E0](v34, (*(*a1 + 8) - **a1) >> 2);
      sub_24BC95264(v35, ".", 1);
      v36 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v36, &__s1);
      v36->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v36, &unk_285F94708, MEMORY[0x277D82610]);
    }

    sub_24BCE1268(v68);
    v39 = sub_24BC95264(v68, "[dequantize] Invalid value for group_size: ", 43);
    MEMORY[0x24C2543C0](v39, a4);
    v40 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v40, &__s1);
    v40->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v40, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v68);
  v37 = sub_24BC95264(v68, "[dequantize] Invalid value for bits: ", 37);
  MEMORY[0x24C2543C0](v37, a5);
  v38 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v38, &__s1);
  v38->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v38, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BE8816C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((v51 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a50);
      if (a37)
      {
        operator delete(a37);
      }

      if (a40)
      {
        operator delete(a40);
      }

      if (a43)
      {
        operator delete(a43);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v51)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v50);
  goto LABEL_6;
}

void sub_24BE88350(uint64_t *a1, void **a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*a2)[1];
  *&v10 = **a2;
  *(&v10 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 9);
  if ((v5 ^ (v5 - 1)) > v5 - 1)
  {
    memset(&v9[2], 0, 24);
    sub_24BCD0924(&v8, 32 - v5, 0x400000003);
  }

  sub_24BEA5B3C(&v10, 0xFFFFFFFFLL, a1[5], *(a1 + 12) | 0x100000000, &v11);
  v6 = v11;
  v11 = 0uLL;
  v7 = *(&v10 + 1);
  v10 = v6;
  if (v7)
  {
    sub_24BC9EC78(v7);
  }

  sub_24BE7F218(&v11);
  sub_24BEA3560(0x400000003, a1[5], *(a1 + 12) | 0x100000000, v9, 32.0);
}

void sub_24BE88A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char *a27, uint64_t a28, char a29)
{
  a27 = &a29;
  sub_24BCC961C(&a27);
  sub_24BE7F218(v29 - 160);
  _Unwind_Resume(a1);
}

std::string *sub_24BE88C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, std::string *a9@<X8>, uint64_t *a10, uint64_t *a11, char a12)
{
  *&a9->__r_.__value_.__l.__data_ = 0uLL;
  a9->__r_.__value_.__r.__words[2] = 0;
  v18 = *(a2 + 23);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 8);
  }

  v19 = *(a3 + 23);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a3 + 8);
  }

  std::string::reserve(a9, v18 + v19 + 0x4000);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  std::string::append(a9, v21, v22);
  if (*a8 != a8[1])
  {
    std::string::append(a9, "template <");
    v114 = a4;
    v23 = *a8;
    v24 = a8[1];
    if (*a8 != v24)
    {
      v25 = 0;
      do
      {
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v26 = *(v23 + 32);
        if (v26 < 3)
        {
          MEMORY[0x24C2541D0](&v125, off_27916D1D0[v26]);
        }

        if (v25)
        {
          std::string::append(a9, ", ");
        }

        if (v127 >= 0)
        {
          v27 = &v125;
        }

        else
        {
          v27 = v125;
        }

        if (v127 >= 0)
        {
          v28 = HIBYTE(v127);
        }

        else
        {
          v28 = v126;
        }

        std::string::append(a9, v27, v28);
        std::string::append(a9, " ");
        v29 = *(v23 + 23);
        if (v29 >= 0)
        {
          v30 = v23;
        }

        else
        {
          v30 = *v23;
        }

        if (v29 >= 0)
        {
          v31 = *(v23 + 23);
        }

        else
        {
          v31 = *(v23 + 8);
        }

        std::string::append(a9, v30, v31);
        if (SHIBYTE(v127) < 0)
        {
          operator delete(v125);
        }

        v23 += 40;
        --v25;
      }

      while (v23 != v24);
    }

    std::string::append(a9, ">\n");
    a4 = v114;
  }

  std::string::append(a9, "[[kernel]] void ");
  v32 = *(a1 + 23);
  if (v32 >= 0)
  {
    v33 = a1;
  }

  else
  {
    v33 = *a1;
  }

  if (v32 >= 0)
  {
    v34 = *(a1 + 23);
  }

  else
  {
    v34 = *(a1 + 8);
  }

  std::string::append(a9, v33, v34);
  std::string::append(a9, "(\n");
  v112 = a3;
  v35 = *a5;
  if (a5[1] == *a5)
  {
    v87 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = *a4;
      sub_24BF0BC74(*(*(v35 + v37) + 56) & 0xFFFFFFFFFFLL, &v125);
      if (*(*(v35 + v37) + 48) >= 8uLL)
      {
        v42 = "device";
      }

      else
      {
        v42 = "constant";
      }

      sub_24BC836D4(&v124, v42);
      if (*(*(v35 + v37) + 8) == **(v35 + v37))
      {
        v43 = "&";
      }

      else
      {
        v43 = "*";
      }

      sub_24BC836D4(v122, v43);
      std::string::append(a9, "  const ");
      if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v124;
      }

      else
      {
        v44 = v124.__r_.__value_.__r.__words[0];
      }

      if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v124.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v124.__r_.__value_.__l.__size_;
      }

      std::string::append(a9, v44, size);
      std::string::append(a9, " ");
      if (v127 >= 0)
      {
        v46 = &v125;
      }

      else
      {
        v46 = v125;
      }

      if (v127 >= 0)
      {
        v47 = HIBYTE(v127);
      }

      else
      {
        v47 = v126;
      }

      std::string::append(a9, v46, v47);
      if ((v123 & 0x80u) == 0)
      {
        v48 = v122;
      }

      else
      {
        v48 = v122[0];
      }

      if ((v123 & 0x80u) == 0)
      {
        v49 = v123;
      }

      else
      {
        v49 = v122[1];
      }

      std::string::append(a9, v48, v49);
      std::string::append(a9, " ");
      v50 = *(v41 + v36 + 23);
      if (v50 >= 0)
      {
        v51 = (v41 + v36);
      }

      else
      {
        v51 = *(v41 + v36);
      }

      if (v50 >= 0)
      {
        v52 = *(v41 + v36 + 23);
      }

      else
      {
        v52 = *(v41 + v36 + 8);
      }

      std::string::append(a9, v51, v52);
      std::string::append(a9, " [[buffer(");
      std::to_string(&v121, v40);
      if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v121;
      }

      else
      {
        v53 = v121.__r_.__value_.__r.__words[0];
      }

      if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = v121.__r_.__value_.__l.__size_;
      }

      std::string::append(a9, v53, v54);
      if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v121.__r_.__value_.__l.__data_);
      }

      std::string::append(a9, ")]],\n");
      v55 = v40 + 1;
      if (*(*(v35 + v37) + 8) == **(v35 + v37))
      {
        goto LABEL_153;
      }

      v56 = *a11;
      if (*(*a11 + v38) == 1)
      {
        std::operator+<char>();
        v57 = std::string::append(&v118, "_shape [[buffer(");
        v58 = *&v57->__r_.__value_.__l.__data_;
        v119.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v119.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v117, v40 + 1);
        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = &v117;
        }

        else
        {
          v59 = v117.__r_.__value_.__r.__words[0];
        }

        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v60 = v117.__r_.__value_.__l.__size_;
        }

        v61 = std::string::append(&v119, v59, v60);
        v62 = *&v61->__r_.__value_.__l.__data_;
        v120.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
        *&v120.__r_.__value_.__l.__data_ = v62;
        v61->__r_.__value_.__l.__size_ = 0;
        v61->__r_.__value_.__r.__words[2] = 0;
        v61->__r_.__value_.__r.__words[0] = 0;
        v63 = std::string::append(&v120, ")]],\n");
        v64 = *&v63->__r_.__value_.__l.__data_;
        v121.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
        *&v121.__r_.__value_.__l.__data_ = v64;
        v63->__r_.__value_.__l.__size_ = 0;
        v63->__r_.__value_.__r.__words[2] = 0;
        v63->__r_.__value_.__r.__words[0] = 0;
        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = &v121;
        }

        else
        {
          v65 = v121.__r_.__value_.__r.__words[0];
        }

        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v66 = v121.__r_.__value_.__l.__size_;
        }

        std::string::append(a9, v65, v66);
        if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v121.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v120.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v117.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        v55 = v40 + 2;
        v56 = *a11;
      }

      if (*(v56 + v38 + 1) == 1)
      {
        std::operator+<char>();
        v67 = std::string::append(&v118, "_strides [[buffer(");
        v68 = *&v67->__r_.__value_.__l.__data_;
        v119.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
        *&v119.__r_.__value_.__l.__data_ = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v117, v55);
        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = &v117;
        }

        else
        {
          v69 = v117.__r_.__value_.__r.__words[0];
        }

        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v70 = v117.__r_.__value_.__l.__size_;
        }

        v71 = std::string::append(&v119, v69, v70);
        v72 = *&v71->__r_.__value_.__l.__data_;
        v120.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
        *&v120.__r_.__value_.__l.__data_ = v72;
        v71->__r_.__value_.__l.__size_ = 0;
        v71->__r_.__value_.__r.__words[2] = 0;
        v71->__r_.__value_.__r.__words[0] = 0;
        v73 = std::string::append(&v120, ")]],\n");
        v74 = *&v73->__r_.__value_.__l.__data_;
        v121.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
        *&v121.__r_.__value_.__l.__data_ = v74;
        v73->__r_.__value_.__l.__size_ = 0;
        v73->__r_.__value_.__r.__words[2] = 0;
        v73->__r_.__value_.__r.__words[0] = 0;
        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = &v121;
        }

        else
        {
          v75 = v121.__r_.__value_.__r.__words[0];
        }

        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v76 = v121.__r_.__value_.__l.__size_;
        }

        std::string::append(a9, v75, v76);
        if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v121.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v120.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v117.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        ++v55;
        v56 = *a11;
      }

      if (*(v56 + v38 + 2) != 1)
      {
LABEL_153:
        v40 = v55;
      }

      else
      {
        std::operator+<char>();
        v77 = std::string::append(&v118, "_ndim [[buffer(");
        v78 = *&v77->__r_.__value_.__l.__data_;
        v119.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
        *&v119.__r_.__value_.__l.__data_ = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v117, v55);
        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &v117;
        }

        else
        {
          v79 = v117.__r_.__value_.__r.__words[0];
        }

        if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v80 = v117.__r_.__value_.__l.__size_;
        }

        v81 = std::string::append(&v119, v79, v80);
        v82 = *&v81->__r_.__value_.__l.__data_;
        v120.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
        *&v120.__r_.__value_.__l.__data_ = v82;
        v81->__r_.__value_.__l.__size_ = 0;
        v81->__r_.__value_.__r.__words[2] = 0;
        v81->__r_.__value_.__r.__words[0] = 0;
        v83 = std::string::append(&v120, ")]],\n");
        v84 = *&v83->__r_.__value_.__l.__data_;
        v121.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
        *&v121.__r_.__value_.__l.__data_ = v84;
        v83->__r_.__value_.__l.__size_ = 0;
        v83->__r_.__value_.__r.__words[2] = 0;
        v83->__r_.__value_.__r.__words[0] = 0;
        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = &v121;
        }

        else
        {
          v85 = v121.__r_.__value_.__r.__words[0];
        }

        if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v86 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v86 = v121.__r_.__value_.__l.__size_;
        }

        std::string::append(a9, v85, v86);
        if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v121.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v120.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v117.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        v40 = v55 + 1;
      }

      if (v123 < 0)
      {
        operator delete(v122[0]);
      }

      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v127) < 0)
      {
        operator delete(v125);
      }

      ++v39;
      v35 = *a5;
      v38 += 3;
      v37 += 16;
      v36 += 24;
    }

    while (v39 < (a5[1] - *a5) >> 4);
    v87 = v40;
  }

  v88 = *a6;
  if (a6[1] != *a6)
  {
    v89 = 0;
    v90 = 0;
    do
    {
      v91 = *a7;
      std::string::append(a9, "  device ");
      sub_24BF0BC74(*(v91 + 8 * v90), &v125);
      if (a12)
      {
        std::string::append(a9, "atomic<");
      }

      if (v127 >= 0)
      {
        v92 = &v125;
      }

      else
      {
        v92 = v125;
      }

      if (v127 >= 0)
      {
        v93 = HIBYTE(v127);
      }

      else
      {
        v93 = v126;
      }

      std::string::append(a9, v92, v93);
      if (a12)
      {
        std::string::append(a9, ">");
      }

      std::string::append(a9, "* ");
      v94 = *(v88 + v89 + 23);
      if (v94 >= 0)
      {
        v95 = (v88 + v89);
      }

      else
      {
        v95 = *(v88 + v89);
      }

      if (v94 >= 0)
      {
        v96 = *(v88 + v89 + 23);
      }

      else
      {
        v96 = *(v88 + v89 + 8);
      }

      std::string::append(a9, v95, v96);
      std::string::append(a9, " [[buffer(");
      std::to_string(&v124, v87 + v90);
      if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v124;
      }

      else
      {
        v97 = v124.__r_.__value_.__r.__words[0];
      }

      if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = HIBYTE(v124.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v98 = v124.__r_.__value_.__l.__size_;
      }

      std::string::append(a9, v97, v98);
      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v124.__r_.__value_.__l.__data_);
      }

      std::string::append(a9, ")]]");
      v99 = ") {\n";
      if (a10[1] != *a10)
      {
        v99 = ",\n";
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3) + ((a5[1] - *a5) >> 4) - 1 <= v87 + v90)
      {
        v100 = v99;
      }

      else
      {
        v100 = ",\n";
      }

      std::string::append(a9, v100);
      if (SHIBYTE(v127) < 0)
      {
        operator delete(v125);
      }

      ++v90;
      v88 = *a6;
      v89 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3) > v90);
  }

  v101 = *a10;
  v102 = a10[1];
  if (*a10 != v102)
  {
    v103 = 0;
    do
    {
      v104 = *(v101 + 23);
      if (v104 >= 0)
      {
        v105 = v101;
      }

      else
      {
        v105 = *v101;
      }

      if (v104 >= 0)
      {
        v106 = *(v101 + 23);
      }

      else
      {
        v106 = *(v101 + 8);
      }

      std::string::append(a9, v105, v106);
      if (-1 - 0x5555555555555555 * ((a10[1] - *a10) >> 3) <= v103)
      {
        v107 = ") {\n";
      }

      else
      {
        v107 = ",\n";
      }

      std::string::append(a9, v107);
      ++v103;
      v101 += 24;
    }

    while (v101 != v102);
  }

  v108 = *(v112 + 23);
  if (v108 >= 0)
  {
    v109 = v112;
  }

  else
  {
    v109 = *v112;
  }

  if (v108 >= 0)
  {
    v110 = *(v112 + 23);
  }

  else
  {
    v110 = *(v112 + 8);
  }

  std::string::append(a9, v109, v110);
  return std::string::append(a9, "\n}\n");
}

void sub_24BE89650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 + 23) < 0)
  {
    operator delete(*v46);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE897A0(uint64_t *a1)
{
  sub_24BCE1268(&v12);
  sub_24BC95264(&v12, "<", 1);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        sub_24BC95264(&v12, ", ", 2);
      }

      v6 = *(v3 + 32);
      switch(v6)
      {
        case 2:
          sub_24BF0BC74(*(v3 + 24), __p);
          if ((v11 & 0x80u) == 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          if ((v11 & 0x80u) == 0)
          {
            v8 = v11;
          }

          else
          {
            v8 = __p[1];
          }

          sub_24BC95264(&v12, v7, v8);
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }

          break;
        case 1:
          MEMORY[0x24C254390](&v12, *(v3 + 24));
          break;
        case 0:
          MEMORY[0x24C2543C0](&v12, *(v3 + 24));
          break;
      }

      v3 += 40;
      --v5;
    }

    while (v3 != v4);
  }

  sub_24BC95264(&v12, ">", 1);
  std::stringbuf::str();
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x24C2547D0](&v16);
}

void sub_24BE89A08(__int128 *a1@<X0>, const void ***a2@<X1>, void *a3@<X2>, char **a4@<X3>, __int128 *a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v170[0] = *MEMORY[0x277D85DE8];
  if (*a3 == a3[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[metal_kernel] Must specify at least one output.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v8 = a4;
  __src[0] = 0;
  __src[1] = 0;
  v144 = 0;
  v9 = *a2;
  v124 = a2[1];
  if (*a2 == v124)
  {
LABEL_138:
    sub_24BE8B338(&v146, "dispatch_quadgroups_per_threadgroup", "uint");
    sub_24BE8B338(v151, "dispatch_simdgroups_per_threadgroup", "uint");
    sub_24BE8B38C(v152, "dispatch_threads_per_threadgroup", "uint3");
    sub_24BE8B3E0(v153, "grid_origin", "uint3");
    sub_24BE8B434(v154, "grid_size", "uint3");
    sub_24BE8B488(v155, "quadgroup_index_in_threadgroup", "uint");
    sub_24BE8B4DC(v156, "quadgroups_per_threadgroup", "uint");
    sub_24BE8B488(v157, "simdgroup_index_in_threadgroup", "uint");
    sub_24BE8B4DC(v158, "simdgroups_per_threadgroup", "uint");
    sub_24BE8B530(v159, "thread_execution_width", "uint");
    sub_24BE8B584(v160, "thread_index_in_quadgroup", "uint");
    sub_24BE8B584(v161, "thread_index_in_simdgroup", "uint");
    sub_24BE8B5D8(v162, "thread_index_in_threadgroup", "uint");
    sub_24BE8B62C(v163, "thread_position_in_grid", "uint3");
    sub_24BE8B680(v164, "thread_position_in_threadgroup", "uint3");
    sub_24BE8B6D4(v165, "threadgroup_position_in_grid", "uint3");
    sub_24BE8B728(v166, "threadgroups_per_grid", "uint3");
    sub_24BE8B77C(v167, "threads_per_grid", "uint3");
    sub_24BE8B7D0(v168, "threads_per_simdgroup", "uint");
    sub_24BE8B62C(v169, "threads_per_threadgroup", "uint3");
    v140 = 0;
    v141 = 0;
    v142 = 0;
    sub_24BE8ED10(&v140, &v146, v170, 0x14uLL);
    v72 = 120;
    do
    {
      v73 = &(&v146)[v72];
      if (SHIBYTE((&v146)[v72 - 1]) < 0)
      {
        operator delete(*(v73 - 3));
      }

      if (*(v73 - 25) < 0)
      {
        operator delete(*(v73 - 6));
      }

      v72 -= 6;
    }

    while (v72 * 8);
    v139 = 0;
    v138 = 0u;
    v74 = v140;
    for (i = v141; v74 != i; v74 += 48)
    {
      v76 = *(v8 + 23);
      if (v76 >= 0)
      {
        v77 = v8;
      }

      else
      {
        v77 = *v8;
      }

      if (v76 < 0)
      {
        v76 = v8[1];
      }

      v78 = *(v74 + 23);
      if (v78 >= 0)
      {
        v79 = v74;
      }

      else
      {
        v79 = *v74;
      }

      if (v78 >= 0)
      {
        v80 = *(v74 + 23);
      }

      else
      {
        v80 = *(v74 + 8);
      }

      if (!v80)
      {
        goto LABEL_166;
      }

      if (v76 >= v80)
      {
        v81 = &v76[v77];
        v82 = *v79;
        v83 = v77;
        while (1)
        {
          v84 = &v76[-v80];
          if (v84 == -1)
          {
            goto LABEL_199;
          }

          v85 = memchr(v83, v82, (v84 + 1));
          if (!v85)
          {
            goto LABEL_199;
          }

          v86 = v85;
          if (!memcmp(v85, v79, v80))
          {
            break;
          }

          v83 = v86 + 1;
          v76 = (v81 - (v86 + 1));
          if (v76 < v80)
          {
            goto LABEL_199;
          }
        }

        if (v86 != v81 && v86 - v77 != -1)
        {
LABEL_166:
          std::operator+<char>();
          v87 = std::string::append(&v133, " ");
          v88 = *&v87->__r_.__value_.__l.__data_;
          v134.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
          *&v134.__r_.__value_.__l.__data_ = v88;
          v87->__r_.__value_.__l.__size_ = 0;
          v87->__r_.__value_.__r.__words[2] = 0;
          v87->__r_.__value_.__r.__words[0] = 0;
          v89 = *(v74 + 23);
          if (v89 >= 0)
          {
            v90 = v74;
          }

          else
          {
            v90 = *v74;
          }

          if (v89 >= 0)
          {
            v91 = *(v74 + 23);
          }

          else
          {
            v91 = *(v74 + 8);
          }

          v92 = std::string::append(&v134, v90, v91);
          v93 = *&v92->__r_.__value_.__l.__data_;
          v135.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
          *&v135.__r_.__value_.__l.__data_ = v93;
          v92->__r_.__value_.__l.__size_ = 0;
          v92->__r_.__value_.__r.__words[2] = 0;
          v92->__r_.__value_.__r.__words[0] = 0;
          v94 = std::string::append(&v135, " [[");
          v95 = *&v94->__r_.__value_.__l.__data_;
          v136.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
          *&v136.__r_.__value_.__l.__data_ = v95;
          v94->__r_.__value_.__l.__size_ = 0;
          v94->__r_.__value_.__r.__words[2] = 0;
          v94->__r_.__value_.__r.__words[0] = 0;
          v96 = *(v74 + 23);
          if (v96 >= 0)
          {
            v97 = v74;
          }

          else
          {
            v97 = *v74;
          }

          if (v96 >= 0)
          {
            v98 = *(v74 + 23);
          }

          else
          {
            v98 = *(v74 + 8);
          }

          v99 = std::string::append(&v136, v97, v98);
          v100 = *&v99->__r_.__value_.__l.__data_;
          v137.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
          *&v137.__r_.__value_.__l.__data_ = v100;
          v99->__r_.__value_.__l.__size_ = 0;
          v99->__r_.__value_.__r.__words[2] = 0;
          v99->__r_.__value_.__r.__words[0] = 0;
          v101 = std::string::append(&v137, "]]");
          v102 = v101->__r_.__value_.__r.__words[0];
          v145[0] = v101->__r_.__value_.__l.__size_;
          *(v145 + 7) = *(&v101->__r_.__value_.__r.__words[1] + 7);
          v103 = HIBYTE(v101->__r_.__value_.__r.__words[2]);
          v101->__r_.__value_.__l.__size_ = 0;
          v101->__r_.__value_.__r.__words[2] = 0;
          v101->__r_.__value_.__r.__words[0] = 0;
          v104 = *(&v138 + 1);
          if (*(&v138 + 1) >= v139)
          {
            v107 = 0xAAAAAAAAAAAAAAABLL * ((*(&v138 + 1) - v138) >> 3);
            v108 = v107 + 1;
            if (v107 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_24BC8E01C();
            }

            if (0x5555555555555556 * ((v139 - v138) >> 3) > v108)
            {
              v108 = 0x5555555555555556 * ((v139 - v138) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v139 - v138) >> 3) >= 0x555555555555555)
            {
              v109 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v109 = v108;
            }

            v150 = &v138;
            if (v109)
            {
              sub_24BC8E034(&v138, v109);
            }

            v110 = 8 * ((*(&v138 + 1) - v138) >> 3);
            v111 = v145[0];
            *v110 = v102;
            *(v110 + 8) = v111;
            *(v110 + 15) = *(v145 + 7);
            *(v110 + 23) = v103;
            v145[0] = 0;
            *(v145 + 7) = 0;
            v106 = 24 * v107 + 24;
            v112 = (v110 - (*(&v138 + 1) - v138));
            memcpy(v112, v138, *(&v138 + 1) - v138);
            v113 = v138;
            v114 = v139;
            *&v138 = v112;
            *(&v138 + 1) = v106;
            v139 = 0;
            v148 = v113;
            v149 = v114;
            v146 = v113;
            v147 = v113;
            sub_24BC8E08C(&v146);
          }

          else
          {
            v105 = v145[0];
            **(&v138 + 1) = v102;
            *(v104 + 8) = v105;
            *(v104 + 15) = *(v145 + 7);
            *(v104 + 23) = v103;
            v145[0] = 0;
            *(v145 + 7) = 0;
            v106 = v104 + 24;
          }

          *(&v138 + 1) = v106;
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v136.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v135.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v134.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v133.__r_.__value_.__l.__data_);
          }
        }
      }

LABEL_199:
      ;
    }

    __src[1] = 0;
    v144 = 0;
    __src[0] = 0;
    v139 = 0;
    v138 = 0uLL;
    memset(v126, 0, sizeof(v126));
    sub_24BD2E124(v126, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
    memset(v127, 0, sizeof(v127));
    sub_24BD2E124(v127, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(v128, *a1, *(a1 + 1));
    }

    else
    {
      *v128 = *a1;
      v128[2] = *(a1 + 2);
    }

    if (*(a5 + 23) < 0)
    {
      sub_24BC8DE9C(v129, *a5, *(a5 + 1));
    }

    else
    {
      *v129 = *a5;
      v129[2] = *(a5 + 2);
    }

    if (*(v8 + 23) < 0)
    {
      sub_24BC8DE9C(__p, *v8, v8[1]);
    }

    else
    {
      *__p = *v8;
      __p[2] = v8[2];
    }

    v131 = a7;
    v132 = a6;
    *(a8 + 24) = 0;
    operator new();
  }

  while (1)
  {
    if (*(v9 + 23) >= 0)
    {
      v10 = *(v9 + 23);
    }

    else
    {
      v10 = v9[1];
    }

    sub_24BC8E2D4(&v146, v10 + 6);
    if (SHIBYTE(v148) >= 0)
    {
      v11 = &v146;
    }

    else
    {
      v11 = v146;
    }

    if (v10)
    {
      if (*(v9 + 23) >= 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = *v9;
      }

      memmove(v11, v12, v10);
    }

    strcpy(v11 + v10, "_shape");
    v13 = *(v8 + 23);
    if (v13 >= 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = *v8;
    }

    if (v13 < 0)
    {
      v13 = v8[1];
    }

    v15 = SHIBYTE(v148);
    v16 = v146;
    v17 = SHIBYTE(v148) >= 0 ? &v146 : v146;
    v18 = SHIBYTE(v148) >= 0 ? HIBYTE(v148) : v147;
    if (!v18)
    {
      break;
    }

    v19 = &v13[v14];
    if (v13 >= v18)
    {
      v22 = *v17;
      v23 = v14;
      do
      {
        v24 = &v13[-v18];
        if (v24 == -1)
        {
          break;
        }

        v25 = memchr(v23, v22, (v24 + 1));
        if (!v25)
        {
          break;
        }

        v20 = v25;
        if (!memcmp(v25, v17, v18))
        {
          goto LABEL_36;
        }

        v23 = v20 + 1;
        v13 = (v19 - (v20 + 1));
      }

      while (v13 >= v18);
      v20 = v19;
    }

    else
    {
      v20 = &v13[v14];
    }

LABEL_36:
    v21 = v20 != v19 && v20 - v14 != -1;
    if (v15 < 0)
    {
      goto LABEL_43;
    }

LABEL_44:
    if (*(v9 + 23) >= 0)
    {
      v27 = *(v9 + 23);
    }

    else
    {
      v27 = v9[1];
    }

    sub_24BC8E2D4(&v146, v27 + 8);
    v125 = v21;
    if (SHIBYTE(v148) >= 0)
    {
      v28 = &v146;
    }

    else
    {
      v28 = v146;
    }

    if (v27)
    {
      if (*(v9 + 23) >= 0)
      {
        v29 = v9;
      }

      else
      {
        v29 = *v9;
      }

      memmove(v28, v29, v27);
    }

    strcpy(v28 + v27, "_strides");
    v30 = *(v8 + 23);
    if (v30 >= 0)
    {
      v31 = v8;
    }

    else
    {
      v31 = *v8;
    }

    if (v30 < 0)
    {
      v30 = v8[1];
    }

    v32 = SHIBYTE(v148);
    v33 = v146;
    if (SHIBYTE(v148) >= 0)
    {
      v34 = &v146;
    }

    else
    {
      v34 = v146;
    }

    if (SHIBYTE(v148) >= 0)
    {
      v35 = HIBYTE(v148);
    }

    else
    {
      v35 = v147;
    }

    if (!v35)
    {
      v38 = 1;
      if ((SHIBYTE(v148) & 0x80000000) == 0)
      {
        goto LABEL_85;
      }

LABEL_84:
      operator delete(v33);
      goto LABEL_85;
    }

    v36 = &v30[v31];
    if (v30 >= v35)
    {
      v39 = *v34;
      v40 = v31;
      do
      {
        v41 = &v30[-v35];
        if (v41 == -1)
        {
          break;
        }

        v42 = memchr(v40, v39, (v41 + 1));
        if (!v42)
        {
          break;
        }

        v37 = v42;
        if (!memcmp(v42, v34, v35))
        {
          goto LABEL_77;
        }

        v40 = v37 + 1;
        v30 = (v36 - (v37 + 1));
      }

      while (v30 >= v35);
      v37 = v36;
    }

    else
    {
      v37 = &v30[v31];
    }

LABEL_77:
    v38 = v37 != v36 && v37 - v31 != -1;
    if (v32 < 0)
    {
      goto LABEL_84;
    }

LABEL_85:
    if (*(v9 + 23) >= 0)
    {
      v44 = *(v9 + 23);
    }

    else
    {
      v44 = v9[1];
    }

    sub_24BC8E2D4(&v146, v44 + 5);
    if (SHIBYTE(v148) >= 0)
    {
      v45 = &v146;
    }

    else
    {
      v45 = v146;
    }

    if (v44)
    {
      if (*(v9 + 23) >= 0)
      {
        v46 = v9;
      }

      else
      {
        v46 = *v9;
      }

      memmove(v45, v46, v44);
    }

    strcpy(v45 + v44, "_ndim");
    v47 = *(v8 + 23);
    if (v47 >= 0)
    {
      v48 = v8;
    }

    else
    {
      v48 = *v8;
    }

    if (v47 < 0)
    {
      v47 = v8[1];
    }

    v49 = SHIBYTE(v148);
    v50 = v146;
    if (SHIBYTE(v148) >= 0)
    {
      v51 = &v146;
    }

    else
    {
      v51 = v146;
    }

    if (SHIBYTE(v148) >= 0)
    {
      v52 = HIBYTE(v148);
    }

    else
    {
      v52 = v147;
    }

    if (v52)
    {
      v53 = v38;
      v54 = &v47[v48];
      if (v47 >= v52)
      {
        v58 = *v51;
        v59 = v48;
        do
        {
          v60 = &v47[-v52];
          if (v60 == -1)
          {
            break;
          }

          v61 = memchr(v59, v58, (v60 + 1));
          if (!v61)
          {
            break;
          }

          v55 = v61;
          if (!memcmp(v61, v51, v52))
          {
            goto LABEL_118;
          }

          v59 = v55 + 1;
          v47 = (v54 - (v55 + 1));
        }

        while (v47 >= v52);
        v55 = v54;
      }

      else
      {
        v55 = &v47[v48];
      }

LABEL_118:
      v56 = v55 != v54 && v55 - v48 != -1;
      v57 = v125;
      v38 = v53;
      v8 = a4;
      if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_126;
      }

LABEL_125:
      operator delete(v50);
      goto LABEL_126;
    }

    v56 = 1;
    v57 = v125;
    if (SHIBYTE(v148) < 0)
    {
      goto LABEL_125;
    }

LABEL_126:
    v63 = __src[1];
    if (__src[1] >= v144)
    {
      v65 = __src[0];
      v66 = __src[1] - __src[0];
      v67 = 0xAAAAAAAAAAAAAAABLL * (__src[1] - __src[0]);
      v68 = v67 + 1;
      if (v67 + 1 >= 0x5555555555555556)
      {
        sub_24BC8E01C();
      }

      if (0x5555555555555556 * (v144 - __src[0]) > v68)
      {
        v68 = 0x5555555555555556 * (v144 - __src[0]);
      }

      if (0xAAAAAAAAAAAAAAABLL * (v144 - __src[0]) >= 0x2AAAAAAAAAAAAAAALL)
      {
        v68 = 0x5555555555555555;
      }

      if (v68)
      {
        sub_24BD81DF8(__src, v68);
      }

      v69 = (__src[1] - __src[0]);
      *v69 = v57;
      v69[1] = v38;
      v69[2] = v56;
      v64 = (3 * v67 + 3);
      v70 = &v69[-v66];
      memcpy(&v69[-v66], v65, v66);
      v71 = __src[0];
      __src[0] = v70;
      __src[1] = v64;
      v144 = 0;
      if (v71)
      {
        operator delete(v71);
      }
    }

    else
    {
      *__src[1] = v57;
      v63[1] = v38;
      v64 = v63 + 3;
      v63[2] = v56;
    }

    __src[1] = v64;
    v9 += 3;
    if (v9 == v124)
    {
      goto LABEL_138;
    }
  }

  v21 = 1;
  if ((SHIBYTE(v148) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_43:
  operator delete(v16);
  goto LABEL_44;
}

void sub_24BE8A880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, char **a57, uint64_t a58, uint64_t a59, uint64_t a60, char *a61, uint64_t a62, uint64_t a63)
{
  if (*(v67 + 151) < 0)
  {
    operator delete(*(v67 + 128));
  }

  if (*(v67 + 127) < 0)
  {
    operator delete(*(v67 + 104));
  }

  sub_24BC955F4(&a67);
  sub_24BC955F4(&a67);
  sub_24BC955F4(&a67);
  v69 = *(v67 + 8);
  if (v69)
  {
    *(v67 + 16) = v69;
    operator delete(v69);
  }

  operator delete(v67);
  sub_24BE8AB0C(&a19);
  a57 = &a61;
  sub_24BC955F4(&a57);
  a61 = &a64;
  sub_24BE8F058(&a61);
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BE8AAC8(uint64_t a1)
{
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

uint64_t sub_24BE8AB0C(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v4 = (a1 + 72);
  sub_24BC955F4(&v4);
  v4 = (a1 + 48);
  sub_24BC955F4(&v4);
  v4 = (a1 + 24);
  sub_24BC955F4(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BE8ABB0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "NYI");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BE8AC28(void *a1)
{
  *a1 = &unk_285F97998;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));
  return a1;
}

void sub_24BE8AC90(void *a1)
{
  *a1 = &unk_285F97998;
  sub_24BE8B96C((a1 + 7));
  *a1 = &unk_285F97920;
  sub_24BE8B96C((a1 + 3));

  JUMPOUT(0x24C2548B0);
}

uint64_t *sub_24BE8AD18(uint64_t *a1, void **a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9548(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BCC9A1C(a1 + 3, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  return a1;
}

void sub_24BE8AD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BE8AD98(_BYTE *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (*a1 == 1)
  {
    sub_24BEA3FE8(a2, a4, *(a1 + 4), *(a1 + 12));
  }

  sub_24BEA3FE8(a3, a5, *(a1 + 4), *(a1 + 12));
}

void sub_24BE8B20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_24BCC98C0(va);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  sub_24BCC961C(&a13);
  _Unwind_Resume(a1);
}

void sub_24BE8B2A0()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void *sub_24BE8B2EC(void *result, void *a2, void *a3, void *a4)
{
  v4 = a2[1];
  *result = *a2;
  result[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  result[2] = *a3;
  result[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[4] = *a4;
  result[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_24BE8B338(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B38C(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B3C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B3E0(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B418(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B434(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B46C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B488(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B4C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B4DC(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B514(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B530(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B568(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B584(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B5BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B5D8(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B610(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B62C(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B664(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B680(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B6B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B6D4(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B70C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B728(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B760(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B77C(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B7B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B7D0(void *a1, char *a2, char *a3)
{
  v5 = sub_24BC836D4(a1, a2);
  sub_24BC836D4(v5 + 3, a3);
  return a1;
}

void sub_24BE8B808(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BE8B824(void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__b + 23) = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  *(__b + __len) = 0;
  return __b;
}

uint64_t sub_24BE8B8D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_24BE8B96C(uint64_t a1)
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

uint64_t sub_24BE8B9EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return a1;
}

void *sub_24BE8BA6C(void *a1)
{
  *a1 = &unk_285F97A10;
  sub_24BE8B96C((a1 + 1));
  return a1;
}

void sub_24BE8BAB0(void *a1)
{
  *a1 = &unk_285F97A10;
  sub_24BE8B96C((a1 + 1));

  JUMPOUT(0x24C2548B0);
}

void sub_24BE8BBC0(void *a1)
{
  sub_24BE8B96C(a1 + 8);

  operator delete(a1);
}

void sub_24BE8BBFC(uint64_t a1, void **a2)
{
  memset(v4, 0, sizeof(v4));
  sub_24BCC9548(v4, *a2, a2[1], (a2[1] - *a2) >> 4);
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_24BCA1F3C();
  }

  (*(*v3 + 48))(v3, v4);
  v5 = v4;
  sub_24BCC961C(&v5);
}

void sub_24BE8BC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_24BCC961C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE8BCB0(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F97AA8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE8BCFC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_24BE8BD9C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F97AF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BE8BE94(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97B40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE8BED4(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F97BB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE8BF20(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_24BE8B8D4(v10, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_285F97920;
  *(a1 + 8) = a2;
  sub_24BE8B8D4(a1 + 24, v10);
  sub_24BE8B96C(v10);
  *a1 = &unk_285F9FF18;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  return a1;
}

void sub_24BE8BFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE8B96C(va);
  _Unwind_Resume(a1);
}

void sub_24BE8C034(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F97BD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BE8C124(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97C20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_24BE8C154(uint64_t a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_24BEB273C(v3, *(a1 + 12), *(a1 + 20) | 0x100000000);
}

void sub_24BE8C64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_24BCC98C0(v22 - 80);
  sub_24BE7F218(&a17);
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a9);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  sub_24BE7F218(&a21);
  sub_24BE7F218(va);
  sub_24BE7F218(v22 - 96);
  sub_24BCC961C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE8C794(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F97C80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE8C7E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_24BE8B8D4(v10, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_285F97920;
  *(a1 + 8) = a2;
  sub_24BE8B8D4(a1 + 24, v10);
  sub_24BE8B96C(v10);
  *a1 = &unk_285F9FF90;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  return a1;
}

void sub_24BE8C8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE8B96C(va);
  _Unwind_Resume(a1);
}

void sub_24BE8C8F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F97CA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BE8C9EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97CF0;
  result = *(a1 + 8);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE8CA2C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F97D50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE8CA78(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_24BE8B8D4(v10, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_285F97920;
  *(a1 + 8) = a2;
  sub_24BE8B8D4(a1 + 24, v10);
  sub_24BE8B96C(v10);
  *a1 = &unk_285FA0008;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  return a1;
}

void sub_24BE8CB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE8B96C(va);
  _Unwind_Resume(a1);
}

void sub_24BE8CB8C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F97D70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BE8CC7C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97DC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_24BE8CCAC(uint64_t a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = -1;
  memset(v5, 0, sizeof(v5));
  sub_24BCC9910(v5, &v6, &v7, 1uLL);
  sub_24BEB1E74(v4, v5, 1, *(*v4 + 56) & 0xFFFFFFFFFFLL, *(a1 + 12), *(a1 + 20) | 0x100000000);
}

void sub_24BE8D5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_24BCC98C0(v34 - 88);
  sub_24BE7F218(&a13);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  sub_24BE7F218(&a21);
  sub_24BE7F218(&a23);
  sub_24BE7F218(&a25);
  sub_24BE7F218(&a27);
  sub_24BE7F218(&a29);
  sub_24BE7F218(&a31);
  sub_24BE7F218(&a33);
  sub_24BE7F218(va);
  sub_24BE7F218(v34 - 192);
  sub_24BE7F218(v34 - 176);
  sub_24BE7F218(v34 - 160);
  sub_24BE7F218(v34 - 144);
  sub_24BE7F218(v34 - 104);
  sub_24BCC961C(&__p);
  _Unwind_Resume(a1);
}

void sub_24BE8D7FC()
{
  v1 = *(v0 - 128);
  if (v1)
  {
    *(v0 - 120) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x24BE8D700);
}

uint64_t sub_24BE8D81C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F97E20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE8D868(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_24BE8B8D4(v10, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_285F97920;
  *(a1 + 8) = a2;
  sub_24BE8B8D4(a1 + 24, v10);
  sub_24BE8B96C(v10);
  *a1 = &unk_285FA0080;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  return a1;
}

void sub_24BE8D940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE8B96C(va);
  _Unwind_Resume(a1);
}

void sub_24BE8D97C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F97E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BE8DA7C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97E90;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_24BE8DABC(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  sub_24BE83C94((a1 + 8), &v3);
}

void sub_24BE8DB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_24BCC961C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_24BE8DB30(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F97EF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE8DB7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, char a6, int a7, char a8, float a9, float a10)
{
  v21 = *MEMORY[0x277D85DE8];
  sub_24BE8B8D4(v20, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_285F97920;
  *(a1 + 8) = a2;
  sub_24BE8B8D4(a1 + 24, v20);
  sub_24BE8B96C(v20);
  *a1 = &unk_285FA02B0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  *(a1 + 92) = a6;
  *(a1 + 96) = a9;
  *(a1 + 100) = a10;
  *(a1 + 104) = a7;
  *(a1 + 108) = a8;
  return a1;
}

void sub_24BE8DC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE8B96C(va);
  _Unwind_Resume(a1);
}

__n128 sub_24BE8DD28(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97F10;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_24BE8DD68(uint64_t a1, __int128 *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 2);
  v4 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v8 = v4;
  v9 = v3;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  sub_24BE83758(&v8, *(a1 + 8), *(a1 + 12), *(a1 + 24), (*(a1 + 28) & 1) == 0, *(a1 + 32), *(a1 + 40) | 0x100000000, *(a1 + 16), *(a1 + 20));
}

void sub_24BE8DE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(v13 - 40);
  *(v13 - 48) = &a13;
  sub_24BCC961C((v13 - 48));
  *(v13 - 40) = &a10;
  sub_24BCC961C((v13 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_24BE8DE94(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F97F70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24BE8DF00(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F97F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BE8DFF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F97FE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BE8E038(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F98040))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE8E084(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, float a6)
{
  v13 = *MEMORY[0x277D85DE8];
  sub_24BE8B8D4(v12, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_285F97920;
  *(a1 + 8) = a2;
  sub_24BE8B8D4(a1 + 24, v12);
  sub_24BE8B96C(v12);
  *a1 = &unk_285F97998;
  *(a1 + 80) = 0;
  *(a1 + 88) = a6;
  *(a1 + 92) = a5;
  return a1;
}

void sub_24BE8E164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE8B96C(va);
  _Unwind_Resume(a1);
}

void sub_24BE8E1A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__n128 sub_24BE8E298(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F980B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_24BE8E2D0(uint64_t a1, uint64_t **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = **a2;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_24BCC9A1C(&v6, *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 2);
  *(v7 - 4) = -1;
  sub_24BCD0924(&v5, 0, *(*v3 + 56) & 0xFFFFFFFFFFLL);
}

void sub_24BE8E888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  v38 = -48;
  v39 = v35;
  do
  {
    v39 = sub_24BE7F218(v39) - 16;
    v38 += 16;
  }

  while (v38);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  sub_24BE7F218(&a19);
  sub_24BE7F218(&a21);
  sub_24BE7F218(&a23);
  sub_24BE7F218(&a25);
  sub_24BE7F218(&a28);
  sub_24BE7F218(&a30);
  sub_24BE7F218(&a32);
  sub_24BE7F218(v36 - 208);
  sub_24BE7F218(v36 - 184);
  sub_24BE7F218(v36 - 168);
  sub_24BE7F218(v36 - 152);
  v40 = *(v36 - 136);
  if (v40)
  {
    *(v36 - 128) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BE8EA94(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F98110))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE8EAE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, char a7)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_24BE8B8D4(v14, a4);
  *(a1 + 16) = a3;
  *a1 = &unk_285F97920;
  *(a1 + 8) = a2;
  sub_24BE8B8D4(a1 + 24, v14);
  sub_24BE8B96C(v14);
  *a1 = &unk_285F9EB40;
  *(a1 + 80) = 0;
  *(a1 + 88) = a5;
  *(a1 + 92) = a6;
  *(a1 + 96) = a7;
  return a1;
}

void sub_24BE8EBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE8B96C(va);
  _Unwind_Resume(a1);
}

__n128 sub_24BE8EC70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F98130;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 60) = 0;
  return result;
}

uint64_t sub_24BE8ECC4(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F98190))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_24BE8ED10(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BE8ED98(result, a4);
  }

  return result;
}

void sub_24BE8ED78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_24BE8F058(&a9);
  _Unwind_Resume(a1);
}

void sub_24BE8ED98(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_24BE8EDE4(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BE8EDE4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

char *sub_24BE8EE3C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_24BE8EEE0(v4, v6);
      v6 += 3;
      v4 = v11 + 48;
      v11 += 48;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BE8EF74(v8);
  return v4;
}

char *sub_24BE8EEE0(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_24BC8DE9C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_24BE8EF58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BE8EF74(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BE8EFAC(a1);
  }

  return a1;
}

void sub_24BE8EFAC(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 48;
      sub_24BE8F000(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_24BE8F000(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_24BE8F058(void ***a1)
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
        v4 -= 48;
        sub_24BE8F000(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_24BE8F0E0(uint64_t a1)
{
  *a1 = &unk_285F981B0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v4 = (a1 + 80);
  sub_24BC955F4(&v4);
  v4 = (a1 + 56);
  sub_24BC955F4(&v4);
  v4 = (a1 + 32);
  sub_24BC955F4(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BE8F198(uint64_t a1)
{
  sub_24BE8F0E0(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE8F250(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F981B0;
  result = sub_24BE900C8(a2 + 8, a1 + 8);
  *(a2 + 182) = 0;
  *(a2 + 178) = 0;
  return result;
}

void sub_24BE8F2A4(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 80);
  sub_24BC955F4(&v3);
  v3 = (a1 + 56);
  sub_24BC955F4(&v3);
  v3 = (a1 + 32);
  sub_24BC955F4(&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_24BE8F33C(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 80);
  sub_24BC955F4(&v3);
  v3 = (a1 + 56);
  sub_24BC955F4(&v3);
  v3 = (a1 + 32);
  sub_24BC955F4(&v3);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  operator delete(a1);
}

void sub_24BE8F3DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unsigned __int8 *a10, uint64_t *a11)
{
  v13 = *(a5 + 2);
  v14 = *a6;
  v15 = *(a6 + 2);
  v16 = *a8;
  v17 = *a10;
  v18 = *a11;
  v19 = a11[1];
  v87 = *a5;
  v88 = v13;
  v84 = v16;
  v85 = v14;
  v86 = v15;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3) == (a2[1] - *a2) >> 4)
  {
    v21 = a3[1] - *a3;
    if (v21 == *(a1 + 88) - *(a1 + 80))
    {
      if (0xAAAAAAAAAAAAAAABLL * (v21 >> 3) == (a4[1] - *a4) >> 3)
      {
        v81 = sub_24BF02A98(v18, v19);
        v82 = v24;
        v83 = 1;
        if (!sub_24BE80C68(&v81 + 1, &v83))
        {
          sub_24BCE1268(&v83);
          sub_24BC836D4(__p, &unk_24C0435AF);
          sub_24BC836D4(v77, &unk_24C0435AF);
          if (*a7 != a7[1])
          {
            sub_24BE90364(v76, "\\<|\\>|(,)", 0);
          }

          v25 = sub_24BC95264(&v83, "custom_kernel_", 14);
          v26 = *(a1 + 127);
          if (v26 >= 0)
          {
            v27 = a1 + 104;
          }

          else
          {
            v27 = *(a1 + 104);
          }

          if (v26 >= 0)
          {
            v28 = *(a1 + 127);
          }

          else
          {
            v28 = *(a1 + 112);
          }

          v29 = sub_24BC95264(v25, v27, v28);
          if ((v78 & 0x80u) == 0)
          {
            v30 = v77;
          }

          else
          {
            v30 = v77[0];
          }

          if ((v78 & 0x80u) == 0)
          {
            v31 = v78;
          }

          else
          {
            v31 = v77[1];
          }

          sub_24BC95264(v29, v30, v31);
          std::stringbuf::str();
          if (SHIBYTE(v76[0].__r_.__value_.__r.__words[2]) < 0)
          {
            sub_24BC8DE9C(&__dst, v76[0].__r_.__value_.__l.__data_, v76[0].__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = v76[0];
          }

          sub_24BE88C08(&__dst, a1 + 128, a1 + 152, (a1 + 56), a2, (a1 + 80), a4, a7, &v75, (a1 + 32), (a1 + 8), *(a1 + 176));
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (*a7 != a7[1])
          {
            sub_24BD081E8(&v76[0].__r_.__value_.__l.__data_, __p, v72);
            if (SHIBYTE(v80) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = *&v72[0].__locale_;
            v80 = v73;
            std::string::append(&v75, "\ntemplate [[host_name(");
            if ((v76[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = v76;
            }

            else
            {
              v32 = v76[0].__r_.__value_.__r.__words[0];
            }

            if ((v76[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v76[0].__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v76[0].__r_.__value_.__l.__size_;
            }

            std::string::append(&v75, v32, size);
            std::string::append(&v75, ")]] [[kernel]] decltype(");
            if (v80 >= 0)
            {
              v34 = __p;
            }

            else
            {
              v34 = __p[0];
            }

            if (v80 >= 0)
            {
              v35 = HIBYTE(v80);
            }

            else
            {
              v35 = __p[1];
            }

            std::string::append(&v75, v34, v35);
            std::string::append(&v75, ") ");
            if (v80 >= 0)
            {
              v36 = __p;
            }

            else
            {
              v36 = __p[0];
            }

            if (v80 >= 0)
            {
              v37 = HIBYTE(v80);
            }

            else
            {
              v37 = __p[1];
            }

            std::string::append(&v75, v36, v37);
            std::string::append(&v75, ";\n");
          }

          if (v17)
          {
            v39 = *(a1 + 127);
            if (v39 >= 0)
            {
              v40 = a1 + 104;
            }

            else
            {
              v40 = *(a1 + 104);
            }

            if (v39 >= 0)
            {
              v41 = *(a1 + 127);
            }

            else
            {
              v41 = *(a1 + 112);
            }

            v42 = sub_24BC95264(v38, v40, v41);
            std::ios_base::getloc((v43 + *(*v43 - 24)));
            v44 = std::locale::use_facet(v72, MEMORY[0x277D82680]);
            (v44->__vftable[2].~facet_0)(v44, 10);
            std::locale::~locale(v72);
            std::ostream::put();
            std::ostream::flush();
            std::ios_base::getloc((v45 + *(*v45 - 24)));
            v46 = std::locale::use_facet(v72, MEMORY[0x277D82680]);
            (v46->__vftable[2].~facet_0)(v46, 10);
            std::locale::~locale(v72);
            std::ostream::put();
            std::ostream::flush();
            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v47 = &v75;
            }

            else
            {
              v47 = v75.__r_.__value_.__r.__words[0];
            }

            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v48 = v75.__r_.__value_.__l.__size_;
            }

            v49 = sub_24BC95264(v45, v47, v48);
            std::ios_base::getloc((v49 + *(*v49 - 24)));
            v50 = std::locale::use_facet(v72, MEMORY[0x277D82680]);
            (v50->__vftable[2].~facet_0)(v50, 10);
            std::locale::~locale(v72);
            std::ostream::put();
            std::ostream::flush();
            std::ios_base::getloc((v51 + *(*v51 - 24)));
            v52 = std::locale::use_facet(v72, MEMORY[0x277D82680]);
            (v52->__vftable[2].~facet_0)(v52, 10);
            std::locale::~locale(v72);
            std::ostream::put();
            std::ostream::flush();
          }

          v72[0].__locale_ = 0;
          v72[1].__locale_ = 0;
          v73 = 0;
          sub_24BCE2490(v72, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
          sub_24BE9AAC0(v89, &v81, v76, &v75, &v87, &v85, a1 + 8, a1 + 177, &v84);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BD4D730(exception, "[metal_kernel] Only supports the GPU.");
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }

      sub_24BCE1268(&v83);
      v66 = MEMORY[0x24C2543E0](v65, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 3));
      v67 = sub_24BC95264(v66, " but got size ", 14);
      v68 = MEMORY[0x24C2543E0](v67, (a4[1] - *a4) >> 3);
      v69 = sub_24BC95264(v68, ".", 1);
      sub_24BC8C9F8(v69);
      v70 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v70, v76);
      v70->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v70, &unk_285F94708, MEMORY[0x277D82610]);
    }

    sub_24BCE1268(&v83);
    v60 = MEMORY[0x24C2543E0](v59, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 3));
    v61 = sub_24BC95264(v60, " but got size ", 14);
    v62 = MEMORY[0x24C2543E0](v61, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    v63 = sub_24BC95264(v62, ".", 1);
    sub_24BC8C9F8(v63);
    v64 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v64, v76);
    v64->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v64, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(&v83);
  v54 = MEMORY[0x24C2543E0](v53, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3));
  v55 = sub_24BC95264(v54, " but got size ", 14);
  v56 = MEMORY[0x24C2543E0](v55, (a2[1] - *a2) >> 4);
  v57 = sub_24BC95264(v56, ".", 1);
  sub_24BC8C9F8(v57);
  v58 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v58, v76);
  v58->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v58, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BE8FF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::locale a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((v62 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a61);
      _Unwind_Resume(a1);
    }
  }

  else if (!v62)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v61);
  goto LABEL_6;
}

uint64_t sub_24BE9007C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F98988))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BE900C8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_24BE902A8(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * (*(a2 + 8) - *a2));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_24BD2E124((a1 + 24), *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_24BD2E124((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_24BD2E124((a1 + 72), *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  if (*(a2 + 119) < 0)
  {
    sub_24BC8DE9C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v4 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v4;
  }

  if (*(a2 + 143) < 0)
  {
    sub_24BC8DE9C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v5 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v5;
  }

  if (*(a2 + 167) < 0)
  {
    sub_24BC8DE9C((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v6 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v6;
  }

  *(a1 + 168) = *(a2 + 168);
  return a1;
}

void sub_24BE90220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 143) < 0)
  {
    operator delete(*(v3 + 120));
  }

  if (*(v3 + 119) < 0)
  {
    operator delete(*(v3 + 96));
  }

  sub_24BC955F4(va);
  sub_24BC955F4(va);
  sub_24BC955F4(va);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_24BE902A8(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BD82350(result, a4);
  }

  return result;
}

void sub_24BE90308(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE90324(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_24BC9EC78(locale);
  }

  std::locale::~locale(this);
}

void sub_24BE90364(const std::locale *a1, char *a2, int a3)
{
  v6 = sub_24BE903FC(a1);
  LODWORD(v6[3].__locale_) = a3;
  *(&v6[3].__locale_ + 4) = 0u;
  *(&v6[5].__locale_ + 4) = 0u;
  HIDWORD(v6[7].__locale_) = 0;
  v7 = strlen(a2);
  sub_24BE9045C(a1, a2, &a2[v7]);
}

void sub_24BE903DC(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_24BC9EC78(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

const std::locale *sub_24BE903FC(const std::locale *a1)
{
  v2 = MEMORY[0x24C254700]();
  a1[1].__locale_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  a1[2].__locale_ = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  return a1;
}

void sub_24BE90650()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_24BE906F0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_24BE91148(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *v7 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v7 + 1;
    v11 = v7 + 1;
    do
    {
      v12 = v11;
      v11 = sub_24BE91148(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    sub_24BE91048(a1, v6, v9);
  }

  return v7;
}

unsigned __int8 *sub_24BE90860(_BYTE *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_24BE9194C(a1);
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_24BE97CA0(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_24BE919D0(a1);
      }
    }

    if (v3 != a3)
    {
      sub_24BE97C48();
    }
  }

  return v3;
}

unsigned __int8 *sub_24BE90914(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_24BE98358(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_24BE97C48();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (sub_24BE98358(a1, result + 1, a3) != result + 1)
    {
      sub_24BE91048(a1, v6, v8);
    }

    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *sub_24BE909B4(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_24BE90860(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_24BE90860(a1, v8, v10);
      sub_24BE91048(a1, v6, v11);
    }

    operator new();
  }

  return v8;
}

unsigned __int8 *sub_24BE90B24(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  sub_24BE90914(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  if (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = *(a1 + 56);
    if (v10 != v8)
    {
      sub_24BE90914(a1, v8, v10);
      sub_24BE91048(a1, v6, v11);
    }

    operator new();
  }

  return v8;
}

void sub_24BE90C94()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_24BE90D80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BE9AE40(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BE90D9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE90DD4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_24BE90E04(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F982D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_24BE90E44(void *a1)
{
  *a1 = &unk_285F98378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BE90EB0(void *a1)
{
  *a1 = &unk_285F98378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE90F3C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_24BE90F50(void *a1)
{
  *a1 = &unk_285F98378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BE90FBC(void *a1)
{
  *a1 = &unk_285F98378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C2548B0);
}

unsigned __int8 *sub_24BE91148(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_24BE911F0(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_24BE91400(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = (*(a1 + 28) + 1);

      return sub_24BE91648(a1, v9, a3, v7, (v8 + 1), v10);
    }
  }

  return result;
}

unsigned __int8 *sub_24BE911F0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v6 = *a2;
    if (v6 > 0x5B)
    {
      if (v6 == 92)
      {
        if (a2 + 1 != a3)
        {
          v13 = a2[1];
          if (v13 == 66)
          {
            v14 = 1;
          }

          else
          {
            if (v13 != 98)
            {
              return a2;
            }

            v14 = 0;
          }

          sub_24BE91A54(a1, v14);
        }
      }

      else if (v6 == 94)
      {
        sub_24BE9194C(a1);
      }
    }

    else
    {
      if (v6 == 36)
      {
        sub_24BE919D0(a1);
      }

      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            sub_24BE903FC(v15);
            v16 = 0u;
            v18 = 0;
            v17 = 0u;
            LODWORD(v16) = *(a1 + 24);
            sub_24BE9045C(v15, a2 + 3, a3);
            sub_24BE91AE8(a1, v15, 1, *(a1 + 28));
          }

          if (v11 == 61)
          {
            sub_24BE903FC(v15);
            v16 = 0u;
            v18 = 0;
            v17 = 0u;
            LODWORD(v16) = *(a1 + 24);
            sub_24BE9045C(v15, a2 + 3, a3);
            sub_24BE91AE8(a1, v15, 0, *(a1 + 28));
          }
        }
      }
    }
  }

  return a2;
}

unsigned __int8 *sub_24BE91400(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      sub_24BE937FC();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        v8 = a1 + 36;
        ++*(a1 + 9);
        v9 = sub_24BE906F0(a1, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      sub_24BE936F4(a1);
      v11 = *(a1 + 7);
      v8 = a1 + 36;
      ++*(a1 + 9);
      v12 = sub_24BE906F0(a1, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          sub_24BE9377C(a1, v11);
LABEL_25:
          --*v8;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    sub_24BE91B88();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return sub_24BE935D8(a1, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return sub_24BE93854(a1, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return sub_24BE93530(a1, a2, a3);
}

unsigned __int8 *sub_24BE91648(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v22 = a2 + 1;
      if (v11)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22 == a3;
      }

      if (!v23 && *v22 == 63)
      {
        v14 = 0;
        v19 = 1;
        goto LABEL_33;
      }

      v14 = 0;
      v19 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = sub_24BE977DC(a1, a2 + 1, a3, &v31);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v18 = v16 + 1;
            if (!v11 && v18 != a3 && *v18 == 63)
            {
              v14 = v31;
              LODWORD(a5) = v7;
              LODWORD(a6) = v6;
              a1 = v10;
              v19 = v31;
LABEL_33:
              v24 = a4;
              v25 = 0;
              goto LABEL_46;
            }

            v14 = v31;
            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            v19 = v31;
            goto LABEL_45;
          }

          goto LABEL_56;
        }

        v26 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_56;
        }

        if (*v26 == 125)
        {
          v27 = v16 + 2;
          if (!v11 && v27 != a3 && *v27 == 63)
          {
            v14 = v31;
            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = v31;
          LODWORD(a5) = v7;
          LODWORD(a6) = v6;
          a1 = v10;
LABEL_36:
          v19 = -1;
LABEL_45:
          v24 = a4;
          v25 = 1;
          goto LABEL_46;
        }

        v30 = -1;
        v29 = sub_24BE977DC(v10, v26, a3, &v30);
        if (v29 != v26 && v29 != a3 && *v29 == 125)
        {
          v19 = v30;
          v14 = v31;
          if (v30 >= v31)
          {
            v25 = 1;
            if (!v11 && v29 + 1 != a3)
            {
              v25 = v29[1] != 63;
            }

            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            v24 = a4;
LABEL_46:
            sub_24BE9764C(a1, v14, v19, v24, a5, a6, v25);
          }

          goto LABEL_56;
        }
      }

      sub_24BE978D0();
    }

LABEL_56:
    sub_24BE97878();
  }

  if (v12 == 42)
  {
    v20 = a2 + 1;
    if (v11)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (!v21 && *v20 == 63)
    {
      v14 = 0;
      goto LABEL_26;
    }

    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v14 = 1;
LABEL_26:
      v19 = -1;
      goto LABEL_33;
    }

    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void sub_24BE91B88()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_24BE91BE0(void *a1)
{
  *a1 = &unk_285F98378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BE91C4C(void *a1)
{
  *a1 = &unk_285F98378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE91CD8(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_24BE91D40(void *a1)
{
  *a1 = &unk_285F98378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_24BE91DAC(void *a1)
{
  *a1 = &unk_285F98378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE91E38(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_24BE91E8C(std::locale *a1)
{
  a1->__locale_ = &unk_285F98438;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_24BE91F18(std::locale *a1)
{
  a1->__locale_ = &unk_285F98438;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BE91FC4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t sub_24BE920D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_285F98480;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_24BE92168(std::locale *a1)
{
  a1->__locale_ = &unk_285F98480;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_24BC9EC78(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_24BE92204(std::locale *a1)
{
  a1->__locale_ = &unk_285F98480;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_24BC9EC78(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_285F98378;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x24C2548B0);
}

void sub_24BE922C0(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v19 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v20 = 0;
  *&v21 = v5;
  *(&v21 + 1) = v5;
  v22 = 0;
  sub_24BE9286C(&__p, v4, &v21);
  v23 = v6;
  v24 = v6;
  v25 = 0;
  v26 = v21;
  v27 = v22;
  v29 = v6;
  v28 = 1;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == sub_24BE924BC(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &v9[24 * v14];
    v16 = v12 + 24 * v11;
    *v16 = *v15;
    *(v16 + 16) = v15[16];
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  v19 = v9;
  operator delete(v9);
}

void sub_24BE92428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_24BE92448(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_24BE9286C(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_24BE924BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_24BE92A74(&v42, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_24BE92B50((v13 - 64), *(a1 + 28), &v40);
  sub_24BE92B8C((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_24BE92BBC();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_24BE93378(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_24BE933F8(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_24BE92A74(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_24BE92C14();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v43 - 96;
    sub_24BE92F34(&v42, (v43 - 96));
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_24BE934A8(v36);
  return v24;
}

void sub_24BE92814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_24BE92B0C(&a11);
  a11 = v16 - 112;
  sub_24BE934A8(&a11);
  _Unwind_Resume(a1);
}

char *sub_24BE9286C(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
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

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_24BE929D0(a1, v9);
    }

    sub_24BC8E01C();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_24BE929D0(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_24BE92A1C(a1, a2);
  }

  sub_24BC8E01C();
}

void sub_24BE92A1C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BE92A74(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BE92C6C(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void *sub_24BE92B0C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_24BE92B50(void **result, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_24BE93094(result, v5, a3);
  }

  else if (!v4)
  {
    result[1] = *result + 24 * a2;
  }
}

void sub_24BE92B8C(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_24BE9321C(result, a2 - v2);
  }
}

void sub_24BE92BBC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_24BE92C14()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x24C254160](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t sub_24BE92C6C(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_24BE92DE4(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = a1[1];
  v11 = 96 * v2 + *a1 - v10;
  sub_24BE92E3C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_24BE93018(&v16);
  return v15;
}

void sub_24BE92DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24BE93018(va);
  _Unwind_Resume(a1);
}

void sub_24BE92DE4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BE92E3C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 16);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      v9 = *(v7 + 80);
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_24BE92F34(a1, v5);
      v5 += 12;
    }
  }

  return sub_24BE92F8C(v11);
}

void sub_24BE92F34(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t sub_24BE92F8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BE92FC4(a1);
  }

  return a1;
}

void sub_24BE92FC4(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 12;
      sub_24BE92F34(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_24BE93018(void **a1)
{
  sub_24BE9304C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BE9304C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    sub_24BE92F34(v4, (i - 96));
  }
}

void sub_24BE93094(void **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_24BE92A1C(a1, v10);
    }

    v14 = 24 * a2;
    v15 = 24 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = *a1 + 24 * v7 - v18;
    if (v18 != *a1)
    {
      v20 = *a1 + 24 * v7 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 16) = v17[2];
        *v20 = v21;
        v20 += 24;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = (24 * v7 + 24 * a2);
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_24BE9321C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_24BC8E01C();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_24BE93330(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_24BE93330(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t *sub_24BE93378(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BE929D0(result, a4);
  }

  return result;
}

void sub_24BE933DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}