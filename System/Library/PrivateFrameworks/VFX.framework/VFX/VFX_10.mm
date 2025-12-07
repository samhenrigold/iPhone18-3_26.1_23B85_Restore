void sub_1AF17BF88(void *a1, const char *a2, void *a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v5 = a5;
    if (!a5)
    {
      v5 = objc_msgSend_length(a3, a2, a3);
    }

    if (objc_msgSend_storageMode(a3, a2, a3) == 2)
    {
      v12 = objc_msgSend_device(a3, v10, v11);
      v14 = objc_msgSend_newBufferWithLength_options_(v12, v13, v5, 0);
      (*(a4 + 16))(v20, a4);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v20[3], v15, a3, 0, v14, 0, v5);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1AF17C0D8;
      v19[3] = &unk_1E7A7B118;
      v19[4] = a1;
      v19[5] = v14;
      v19[6] = a2;
      v19[7] = v5;
      objc_msgSend_addCompletedHandler_(v20[2], v16, v19);
    }

    else
    {
      v18 = objc_msgSend_contents(a3, v10, v11);

      objc_msgSend_encodeBytes_length_forKey_(a1, v17, v18, v5, a2);
    }
  }
}

uint64_t sub_1AF17C0D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = objc_msgSend_contents(*(a1 + 40), a2, a3);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);

  return objc_msgSend_encodeBytes_length_forKey_(v4, v5, v6, v7, v8);
}

void *sub_1AF17C11C(void *a1)
{
  *a1 = &unk_1F24E7C58;
  v2 = a1[1];
  if (v2)
  {
    v3 = sub_1AFDCA848(v2);
    MEMORY[0x1B271C6B0](v3, 0x10A0C40D2671FEALL);
  }

  v4 = a1[2];
  if (v4)
  {
    v5 = sub_1AFDB59D4(v4);
    MEMORY[0x1B271C6B0](v5, 0x10F0C403D579C5ELL);
  }

  v6 = a1[4];
  if (v6)
  {
    v7 = sub_1AFDCBF04(v6);
    MEMORY[0x1B271C6B0](v7, 0x1080C40E0210B95);
  }

  v8 = a1[5];
  if (v8)
  {
    v9 = sub_1AFDCBF04(v8);
    MEMORY[0x1B271C6B0](v9, 0x1080C40E0210B95);
  }

  v10 = a1[9];
  if (v10)
  {
    v11 = sub_1AFDBACE4(v10);
    MEMORY[0x1B271C6B0](v11, 0x1080C40ADB4D971);
  }

  v12 = a1[10];
  if (v12)
  {
    v13 = sub_1AFDBACE4(v12);
    MEMORY[0x1B271C6B0](v13, 0x1080C40ADB4D971);
  }

  v14 = a1[12];
  if (v14)
  {
    v15 = sub_1AFDB710C(v14);
    MEMORY[0x1B271C6B0](v15, 0xA0C4074858A82);
  }

  return a1;
}

void *sub_1AF17C22C(void *a1)
{
  v7 = (a1 + 14);
  sub_1AF17C2A8(&v7);
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_1AF17C2A8(void ***a1)
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
        v4 -= 8;
        sub_1AF17C32C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1AF17C32C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;

    operator delete(v3);
  }
}

void sub_1AF17C384(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1AF123244(a1, a2);
  }

  sub_1AF10A1D0();
}

uint64_t *sub_1AF17C3C0(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_1AF17C428(a1, (v2 - *a2) >> 4);
  }

  return a1;
}

void sub_1AF17C428(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1AF10A1E0(a1, a2);
  }

  sub_1AF10A1D0();
}

id sub_1AF17C464()
{
  v0 = sub_1AF28A7E4(@"CFX-OpenSubdiv-Raytracing.metal");
  v1 = sub_1AF28A7E4(@"CFX-OpenSubdiv-Raytracing.h");
  result = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v0, v2, @"#import CFX-OpenSubdiv-Raytracing.h", v1);
  qword_1EB6585D8 = result;
  return result;
}

uint64_t sub_1AF17C4C4(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B271C600](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1AF17C580(a1);
  return a1;
}

void sub_1AF17C558(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1AF17C580(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_1AF17C688(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1B271C4F0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_1AF17C7F0(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1B271C500](v13);
  return a1;
}

uint64_t sub_1AF17C7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AF10A1D0();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1AF17C9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1AF17C9D8(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_1AF17C9E8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_1AF17CA14(uint64_t result, uint64_t a2)
{
  if (qword_1EB64FB80 != -1)
  {
    sub_1AFDD95A8();
  }
}

uint64_t (*sub_1AF17CA40())(void)
{
  sub_1AFDC36D8(sub_1AF17CA88);

  return sub_1AFDC36E4(sub_1AF17CACC);
}

void sub_1AF17CA88(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD95BC();
  }
}

void sub_1AF17CACC(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = a1;
    _os_log_impl(&dword_1AF0CE000, v3, OS_LOG_TYPE_DEFAULT, "Warning (OpenSubdiv): %s", &v4, 0xCu);
  }
}

uint64_t sub_1AF17CB68(int a1, uint64_t a2, unsigned int a3)
{
  if (a1 == 4)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v3 = 0;
  }

  if ((a1 & 0xFE) == 2)
  {
    v3 = 1;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return a2 == 0;
  }
}

uint64_t sub_1AF17CBA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v35 = sub_1AF17CE28;
    v36 = &unk_1E7A7B188;
    v37 = v2;
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    if (v4 != v5)
    {
      v6 = -1;
      do
      {
        if (*(v4 + 12) == 3)
        {
          if (v6 == -1)
          {
            v6 = *(v4 + 8);
          }

          else if (*(v4 + 8) != v6)
          {
            v33 = 1;
            goto LABEL_11;
          }
        }

        v4 += 16;
      }

      while (v4 != v5);
    }

    v33 = 0;
LABEL_11:
    v7 = sub_1AF1A4604(a2, 2, 0, 0);
    v8 = v33 & 0xFFFFFFF9 | (2 * (v35(v34, v7) & 3));
    v9 = sub_1AF1A4604(a2, 3, 0, 0);
    v10 = v8 & 0xFFFFFFE7 | (8 * (v35(v34, v9) & 3));
    v11 = sub_1AF1A4604(a2, 3, 1, 0);
    v12 = v10 & 0xFFFFFF9F | (32 * (v35(v34, v11) & 3));
    v13 = sub_1AF1A4604(a2, 3, 2, 0);
    v14 = v12 & 0xFFFFFE7F | ((v35(v34, v13) & 3) << 7);
    v15 = sub_1AF1A4604(a2, 3, 3, 0);
    v16 = v35(v34, v15);
    v17 = sub_1AF1A4604(a2, 3, 4, 0);
    v18 = v35(v34, v17);
    v19 = sub_1AF1A4604(a2, 3, 5, 0);
    v20 = (v35(v34, v19) & 3) << 13;
    v21 = sub_1AF1A4604(a2, 3, 6, 0);
    v22 = (v35(v34, v21) & 3) << 15;
    v23 = sub_1AF1A4604(a2, 3, 7, 0);
    return v14 & 0xFFFFE1FF | ((v16 & 3) << 9) & 0xE7FF | ((v18 & 3) << 11) | v20 | v22 | ((v35(v34, v23) & 3) << 17);
  }

  else
  {
    v25 = sub_1AF0D5194(a1, a2);
    result = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1AFDD8964(v25, v26, v27, v28, v29, v30, v31, v32);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF17CE28(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  while (v3 != v4)
  {
    if (*v3 == a2)
    {
      return *(v3 + 12);
    }

    v3 += 16;
  }

  v5 = sub_1AF0D5194(a1, a2);
  result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDD962C();
    return 0;
  }

  return result;
}

uint64_t sub_1AF17CEB0(uint64_t a1, uint64_t a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        return (a1 >> 15) & 3;
      }

      if (a2 == 7)
      {
        return (a1 >> 17) & 3;
      }

      goto LABEL_18;
    }

    if (a2 == 4)
    {
      return (a1 >> 11) & 3;
    }

    else
    {
      return (a1 >> 13) & 3;
    }
  }

  else
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        return (a1 >> 3) & 3;
      }

      if (a2 == 1)
      {
        return (a1 >> 5) & 3;
      }

LABEL_18:
      v3 = sub_1AF0D5194(a1, a2);
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1AFDD969C();
        return 0;
      }

      return result;
    }

    if (a2 == 2)
    {
      return (a1 >> 7) & 3;
    }

    else
    {
      return (a1 >> 9) & 3;
    }
  }
}

uint64_t sub_1AF17CF9C(unsigned int a1)
{
  v1 = (a1 & 0x18) == 16;
  if ((a1 & 0x18) == 0x10)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = vdupq_n_s32(a1);
  if ((a1 & 0x60) == 0x40)
  {
    v1 = v2;
  }

  v4 = vandq_s8(vceqq_s32(vandq_s8(v3, xmmword_1AFE217F0), xmmword_1AFE21800), xmmword_1AFE20C60);
  v4.i32[0] = vaddvq_s32(v4) & 0xF;
  v5 = vcnt_s8(*v4.i8);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  if ((a1 & 0x18000) == 0x10000)
  {
    v6 = v5.i32[0] + 1;
  }

  if ((a1 & 0x60000) == 0x40000)
  {
    ++v1;
  }

  return (v6 + v1);
}

uint64_t sub_1AF17D030(unsigned int a1)
{
  v1 = (~a1 & 0x18) == 0;
  if ((~a1 & 0x18) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if ((~a1 & 0x60) == 0)
  {
    v1 = v2;
  }

  v3 = vandq_s8(vceqq_s32(vandq_s8(vdupq_n_s32(a1), xmmword_1AFE217F0), xmmword_1AFE217F0), xmmword_1AFE20C60);
  v3.i32[0] = vaddvq_s32(v3) & 0xF;
  v4 = vcnt_s8(*v3.i8);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.i32[0];
  if ((~a1 & 0x18000) == 0)
  {
    v5 = v4.i32[0] + 1;
  }

  if ((~a1 & 0x60000) == 0)
  {
    ++v1;
  }

  return (v5 + v1);
}

void sub_1AF17D0B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD9710();
  }
}

BOOL sub_1AF17D0F0(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168))
  {
    return 1;
  }

  v3 = sub_1AF1B2C1C(a1, a2);
  v4 = sub_1AF1A4DBC(v3, 0);
  if (v4 == 1)
  {
    v6 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10F004000FC2A7CuLL);
    *(a1 + 168) = v6;
    v7 = sub_1AF1A4604(v3, 0, 0, 0);
    v67 = 0u;
    v68 = 0u;
    sub_1AF1AE1A8(v7, v8, &v67);
    v9 = v68;
    if (sub_1AF1A4BA0(v3, 0))
    {
      v14 = *(a1 + 130);
      if (v14 && !(v15 = sub_1AF1B40A0(a1, v10)))
      {
        if ((byte_1EB6585E8 & 1) == 0)
        {
          byte_1EB6585E8 = 1;
          v26 = sub_1AF0D5194(v15, v16);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDD9788();
          }
        }
      }

      else if (v14)
      {
        *v6 = 2;
        v65 = 0;
        v66 = 0;
        v64 = &v65;
        if (v9)
        {
          v17 = 0;
          do
          {
            *v18.i64 = sub_1AF279750(BYTE4(v68), (v67 + v17 * BYTE6(v68)), v11, v12, v13);
            v69 = v18;
            LODWORD(v70) = v66;
            v19 = sub_1AF1945F4(&v64, &v69, &v69);
            v63 = (v20 & 1) == 0;
            v69.i32[0] = *(v19 + 48);
            sub_1AF121C58(v6 + 1, &v69);
            sub_1AF17D688((v6 + 7), &v63);
            if (v63)
            {
              *v6 = 3;
            }

            else
            {
              v62 = v17;
              sub_1AF121C58(v6 + 4, &v62);
            }

            ++v17;
          }

          while (v9 != v17);
          v21 = v65;
        }

        else
        {
          v21 = 0;
        }

        v25 = (v6[5] - v6[4]) >> 2;
        sub_1AF112128(&v64, v21);
        goto LABEL_30;
      }

      *v6 = 1;
      sub_1AF17A60C(v6 + 1, v9);
      sub_1AF17A60C(v6 + 4, v9);
      if (v9)
      {
        v27 = 0;
        do
        {
          v69.i32[0] = v27;
          sub_1AF121C58(v6 + 1, &v69);
          v69.i32[0] = v27;
          sub_1AF121C58(v6 + 4, &v69);
          ++v27;
        }

        while (v9 != v27);
LABEL_28:
        LODWORD(v25) = v9;
LABEL_30:
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 0x40000000;
        v61[2] = sub_1AF17D730;
        v61[3] = &unk_1E7A7B1A8;
        v61[4] = v6;
        sub_1AF1A2BEC(v3, 0, v61);
        *(v6 + 26) = v25;
        v29 = sub_1AF1A3CCC(v3, v28);
        if (v29 < 1)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0;
          for (i = 0; i != v29; ++i)
          {
            v32 = sub_1AF1A3D1C(v3, i, 0);
            v34 = sub_1AF1A7034(v32, v33);
            if (sub_1AF1A72E0(v34))
            {
              v30 += sub_1AF1A7530(v32);
            }
          }
        }

        *(v6 + 27) = v30;
        v35 = malloc_type_malloc(4 * v30, 0x100004052888210uLL);
        *(v6 + 52) = 0;
        *(v6 + 212) = 1;
        LODWORD(v64) = 0;
        if (v29 < 1)
        {
          v40 = 0;
        }

        else
        {
          v50 = v9;
          for (j = 0; j != v29; ++j)
          {
            v37 = sub_1AF1A3D1C(v3, j, 0);
            v39 = sub_1AF1A7034(v37, v38);
            if (sub_1AF1A72E0(v39))
            {
              v60[0] = MEMORY[0x1E69E9820];
              v60[1] = 0x40000000;
              v60[2] = sub_1AF17D87C;
              v60[3] = &unk_1E7A7B1C8;
              v60[4] = v37;
              v60[5] = v35;
              v60[6] = &v64;
              v60[7] = v6;
              sub_1AF1A756C(v37, v60);
            }
          }

          v40 = 4 * *(v6 + 52);
          LODWORD(v9) = v50;
        }

        v6[14] = v35;
        if ((v9 - 1) >= 0x7FFFFFFF)
        {
          v41 = 0x7FFFFFFFLL;
        }

        else
        {
          v41 = (v9 - 1);
        }

        v42 = malloc_type_malloc(v40, 0x100004052888210uLL);
        v43 = sub_1AF1A4C6C(v3, 0, 0);
        v62 = 0;
        if (v29 >= 1)
        {
          v44 = v43;
          for (k = 0; k != v29; ++k)
          {
            v46 = sub_1AF1A3D1C(v3, k, 0);
            v48 = sub_1AF1A7034(v46, v47);
            if (sub_1AF1A72E0(v48))
            {
              v71 = 0;
              v69 = 0u;
              v70 = 0u;
              sub_1AF1A79D0(v46, v49, &v69);
              v51[0] = MEMORY[0x1E69E9820];
              v51[1] = 0x40000000;
              v52 = v69;
              v51[2] = sub_1AF17D8D8;
              v51[3] = &unk_1E7A7B1E8;
              v53 = v70;
              v54 = v71;
              v51[4] = v46;
              v55 = v44;
              v56 = v41;
              v57 = v6;
              v58 = v42;
              v59 = &v62;
              sub_1AF1A756C(v46, v51);
            }
          }
        }

        v6[15] = v42;
        return 1;
      }
    }

    else
    {
      *v6 = 0;
      sub_1AF17A60C(v6 + 1, v9);
      sub_1AF17A60C(v6 + 4, v9);
      if (v9)
      {
        v24 = 0;
        do
        {
          v69.i32[0] = v24;
          sub_1AF121C58(v6 + 1, &v69);
          v69.i32[0] = v24;
          sub_1AF121C58(v6 + 4, &v69);
          ++v24;
        }

        while (v9 != v24);
        goto LABEL_28;
      }
    }

    LODWORD(v25) = 0;
    goto LABEL_30;
  }

  v22 = sub_1AF0D5194(v4, v5);
  result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDD974C();
    return 0;
  }

  return result;
}

void sub_1AF17D688(uint64_t result, _BYTE *a2)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_1AF10A1D0();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_1AF180624(result, v7);
    v4 = *(result + 8);
  }

  *(result + 8) = v4 + 1;
  v8 = *result;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

void sub_1AF17D730(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  if (a3)
  {
    if ((a3 & 0xFE) != 2)
    {
      return;
    }

    v6 = *(a1 + 32);
    v7 = *v6;
    if (v7 >= 2)
    {
      if (v7 == 2)
      {
        v8 = 2;
        goto LABEL_11;
      }

      if (v7 != 3)
      {
        v8 = 0;
        goto LABEL_11;
      }
    }

    v8 = 3;
  }

  else
  {
    if (a4)
    {
      return;
    }

    v6 = *(a1 + 32);
    v8 = 1;
  }

LABEL_11:
  v9 = v6[11];
  v10 = v6[12];
  if (v9 >= v10)
  {
    v12 = v6[10];
    v13 = (v9 - v12) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      sub_1AF10A1D0();
    }

    v15 = v10 - v12;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_1AF180910((v6 + 10), v16);
    }

    v17 = 16 * v13;
    *v17 = a2;
    *(v17 + 8) = a5;
    *(v17 + 9) = 0;
    *(v17 + 11) = 0;
    *(v17 + 12) = v8;
    v11 = 16 * v13 + 16;
    v18 = v6[10];
    v19 = v6[11] - v18;
    v20 = (16 * v13 - v19);
    memcpy(v20, v18, v19);
    v21 = v6[10];
    v6[10] = v20;
    v6[11] = v11;
    v6[12] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = a2;
    *(v9 + 8) = a5;
    *(v9 + 9) = 0;
    *(v9 + 11) = 0;
    v11 = v9 + 16;
    *(v9 + 12) = v8;
  }

  v6[11] = v11;
}

uint64_t sub_1AF17D87C(void *a1, unsigned int a2)
{
  result = sub_1AF1A7798(a1[4], a2);
  v4 = a1[5];
  v5 = a1[6];
  v6 = *v5;
  *v5 = v6 + 1;
  *(v4 + 4 * v6) = result;
  v7 = a1[7];
  *(v7 + 208) += result;
  if (result != 4)
  {
    *(v7 + 212) = 0;
  }

  return result;
}

uint64_t sub_1AF17D8D8(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = sub_1AF1A7798(*(a1 + 32), a2);
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      v7 = *(a1 + 56);
      v14[0] = *(a1 + 40);
      v14[1] = v7;
      v8 = *(a1 + 80);
      v15 = *(a1 + 72);
      result = sub_1AF1A7BA8(v14, v3, i, v8);
      v9 = *(a1 + 88);
      v10 = *(a1 + 96);
      if (v9 > result)
      {
        LODWORD(v9) = result;
      }

      if (*v10 == 3)
      {
        LODWORD(v9) = *(*(v10 + 8) + 4 * v9);
      }

      v11 = *(a1 + 104);
      v12 = *(a1 + 112);
      v13 = *v12;
      *v12 = v13 + 1;
      *(v11 + 4 * v13) = v9;
    }
  }

  return result;
}

void sub_1AF17D98C(void *result, uint64_t a2)
{
  v3 = result[5];
  if (!v3)
  {
    v4 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(v3 + 128) <= 0 && *(v3 + 152) <= 0)
  {
    v11 = result[2];
    if (v11)
    {
      v12 = result[1];
      if (v12)
      {
        v14 = sub_1AF1A3CCC(a2, a2);
        if (v14 < 1)
        {
          v74 = 0;
        }

        else
        {
          v15 = 0;
          v74 = 1;
          do
          {
            v16 = sub_1AF1A3D1C(a2, v15, 0);
            v18 = sub_1AF1A7034(v16, v17);
            if (sub_1AF1A72E0(v18) && sub_1AF1A73D4(v16) != -1)
            {
              break;
            }

            v74 = ++v15 < v14;
          }

          while (v14 != v15);
        }

        v68 = sub_1AF1AF080(v11, v13);
        v19 = sub_1AF1A7674(v12);
        v72 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
        v70 = malloc_type_malloc(8 * v19, 0x100004052888210uLL);
        v20 = sub_1AF1A7634(v12);
        if (v20 != 1)
        {
          v22 = sub_1AF0D5194(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD97C4(v22, v21, v23, v24, v25, v26, v27, v28);
          }
        }

        v94 = 0;
        v92 = 0u;
        v93 = 0u;
        sub_1AF1A79D0(v12, v21, &v92);
        if (v19 < 1)
        {
          LODWORD(v29) = 0;
        }

        else
        {
          v29 = 0;
          v30 = 0;
          v66 = v19;
          do
          {
            v84 = v92;
            v85 = v93;
            v86.n128_u64[0] = v94;
            v31 = sub_1AF1A7BA8(&v84, v30, 0, 0);
            v84 = v92;
            v85 = v93;
            v86.n128_u64[0] = v94;
            v33 = sub_1AF1A7BA8(&v84, v30, 1, 0);
            if (!v74)
            {
              goto LABEL_27;
            }

            v88 = 0;
            v89 = &v88;
            v90 = 0x2000000000;
            v91 = 0;
            v34 = sub_1AF1A4C6C(a2, 0, 0);
            if (v14 >= 1)
            {
              v35 = v34;
              for (i = 0; i != v14; ++i)
              {
                v37 = sub_1AF1A3D1C(a2, i, 0);
                v39 = sub_1AF1A7034(v37, v38);
                if (sub_1AF1A72E0(v39))
                {
                  v86 = 0u;
                  v87 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  sub_1AF1A767C(v37, v35, &v84);
                  v80 = v84;
                  v81 = v85;
                  v82 = v86;
                  v83 = v87;
                  v77[0] = MEMORY[0x1E69E9820];
                  v77[1] = 0x40000000;
                  v77[2] = sub_1AF17DEA0;
                  v77[3] = &unk_1E7A7B210;
                  v78 = v31;
                  v79 = v33;
                  v77[4] = &v88;
                  sub_1AF1AA060(&v80, v77, v86);
                }
              }
            }

            v40 = *(v89 + 24);
            _Block_object_dispose(&v88, 8);
            v19 = v66;
            if (v40)
            {
LABEL_27:
              if (*v3 == 3)
              {
                v41 = *(v3 + 8);
                v31 = *(v41 + 4 * v31);
                v33 = *(v41 + 4 * v33);
              }

              v42 = &v70[8 * v29];
              *v42 = v31;
              *(v42 + 1) = v33;
              v72[v29++] = *sub_1AF1CAF40(v68, v30, v32);
            }

            ++v30;
          }

          while (v30 != v19);
        }

        *(v3 + 128) = v29;
        *(v3 + 136) = v70;
        *(v3 + 144) = v72;
      }
    }

    v43 = sub_1AF1A4604(a2, 7, 0, 0);
    if (v43)
    {
      v45 = sub_1AF1AF080(v43, v44);
      v46 = *(v3 + 40) - *(v3 + 32);
      v47 = malloc_type_malloc(v46, 0x100004052888210uLL);
      v67 = v46;
      v48 = malloc_type_malloc(v46, 0x100004052888210uLL);
      v49 = sub_1AF1A4C6C(a2, 7, 0);
      v51 = sub_1AF1A3CCC(a2, v50);
      if (v51 >= 1)
      {
        v52 = v51;
        v53 = 0;
        v69 = v51;
        do
        {
          v54 = sub_1AF1A3D1C(a2, v53, 0);
          v56 = sub_1AF1A7034(v54, v55);
          if (sub_1AF1A72E0(v56))
          {
            v71 = v53;
            v86.n128_u64[0] = 0;
            v84 = 0u;
            v85 = 0u;
            sub_1AF1A79D0(v54, v57, &v84);
            v75 = sub_1AF1A7674(v54);
            if (v75 >= 1)
            {
              v58 = 0;
              v73 = v54;
              do
              {
                v59 = sub_1AF1A7798(v54, v58);
                if (v59 >= 1)
                {
                  v60 = v59;
                  for (j = 0; j != v60; ++j)
                  {
                    v80 = v84;
                    v81 = v85;
                    v82.n128_u64[0] = v86.n128_u64[0];
                    v62 = sub_1AF1A7BA8(&v80, v58, j, v49);
                    v64 = v62;
                    v65 = v62;
                    if (*v3 == 3)
                    {
                      v64 = *(*(v3 + 8) + 4 * v62);
                      v65 = v64;
                    }

                    v47[v65] = *sub_1AF1CAF40(v45, v62, v63);
                    v48[v65] = v64;
                  }
                }

                ++v58;
                v54 = v73;
              }

              while (v58 != v75);
            }

            v52 = v69;
            v53 = v71;
          }

          ++v53;
        }

        while (v53 != v52);
      }

      *(v3 + 152) = v67 >> 2;
      *(v3 + 160) = v48;
      *(v3 + 168) = v47;
    }
  }
}

uint64_t sub_1AF17DEA0(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = 0;
    v5 = *(result + 40);
    do
    {
      v6 = *(a3 + 4 * v4);
      if (a4 - 1 == v4)
      {
        v7 = 0;
      }

      else
      {
        v7 = v4 + 1;
      }

      v8 = *(a3 + 4 * v7);
      if (v5 == v6 && *(result + 44) == v8 || v5 == v8 && *(result + 44) == v6)
      {
        *(*(*(result + 32) + 8) + 24) = 1;
      }

      ++v4;
    }

    while (a4 != v4);
  }

  return result;
}

void sub_1AF17DF0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 3);
  if (v12 == 1)
  {
    v13 = 21;
  }

  else
  {
    v13 = 20;
  }

  if (v12 == 2)
  {
    v14 = 22;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(a1 + 4);
  v16 = v14 & 3 | 8;
  v17 = v14 & 3 | 0xC;
  v18 = v14 & 0x13;
  if (v15 != 4)
  {
    v18 = v14;
  }

  if (v15 != 3)
  {
    v17 = v18;
  }

  if (v15 != 2)
  {
    v16 = v17;
  }

  v19 = v14 & 3;
  if (v15 == 1)
  {
    v14 &= 7u;
  }

  if (!*(a1 + 4))
  {
    v14 = v19;
  }

  if (*(a1 + 4) > 1u)
  {
    v14 = v16;
  }

  sub_1AF17DFE4(v3 + 104, (v14 << 32) | 1, 0);
}

void sub_1AF17E078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  *(&v48[2] + 4) = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 40);
  if (!v6)
  {
    v7 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 0x40000000;
  v46[2] = sub_1AF17E354;
  v46[3] = &unk_1E7A7B230;
  v46[4] = a2;
  v46[5] = v5;
  sub_1AF1A2BEC(a3, 0, v46);
  v16 = *(v5 + 56) - *(v5 + 48);
  v34 = (v16 >> 5);
  if ((v16 >> 5))
  {
    if (!*(v6 + 196))
    {
      v17 = malloc_type_malloc((v16 >> 1) & 0xFF0, 0x105004037B82EA9uLL);
      v18 = (v17 + 8);
      v19 = v34;
      do
      {
        v20 = *(v6 + 208);
        *(v18 - 2) = v20;
        *v18 = malloc_type_malloc(4 * v20, 0x100004052888210uLL);
        v18 += 2;
        --v19;
      }

      while (v19);
      *(v6 + 196) = v34;
      *(v6 + 200) = v17;
    }

    v21 = 0;
    v33 = v5;
    do
    {
      v22 = *(v5 + 48) + 32 * v21;
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      v45 = 0;
      v25 = sub_1AF1A3CCC(a3, v15);
      if (v25 >= 1)
      {
        v26 = v25;
        v27 = 0;
        v28 = (v23 - v24) >> 3;
        do
        {
          v29 = sub_1AF1A3D1C(a3, v27, 0);
          v31 = sub_1AF1A7034(v29, v30);
          v25 = sub_1AF1A72E0(v31);
          if (v25)
          {
            v44 = 0;
            v43 = 0u;
            v42 = 0u;
            sub_1AF1A79D0(v29, v15, &v42);
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 0x40000000;
            v35[2] = sub_1AF17E640;
            v35[3] = &unk_1E7A7B250;
            v35[4] = v29;
            v35[5] = v28;
            v36 = v42;
            v37 = v43;
            v38 = v44;
            v35[6] = v22;
            v41 = v21;
            v39 = v6;
            v40 = &v45;
            v25 = sub_1AF1A756C(v29, v35);
          }

          ++v27;
        }

        while (v26 != v27);
      }

      if (v45 != *(v6 + 208))
      {
        v32 = sub_1AF0D5194(v25, v15);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD983C(v47, v48, v32);
        }
      }

      ++v21;
      v5 = v33;
    }

    while (v21 != v34);
  }

  else
  {
    *(v6 + 196) = 0;
    *(v6 + 200) = 0;
  }
}

void sub_1AF17E354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a3;
  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) == 2)
    {
      goto LABEL_5;
    }

    if (a3 != 4)
    {
      return;
    }
  }

  if (a4)
  {
    return;
  }

LABEL_5:
  v33 = 0u;
  v34 = 0u;
  sub_1AF1AE1A8(a2, a2, &v33);
  if (!v34)
  {
    return;
  }

  v11 = sub_1AF28857C(BYTE4(v34), v10);
  if (!v11)
  {
    return;
  }

  if (v7)
  {
    if ((v7 & 0xFFFFFFFE) == 2 || v7 == 4 && !a4)
    {
      goto LABEL_15;
    }
  }

  else if (!a4)
  {
    goto LABEL_24;
  }

  v13 = sub_1AF0D5194(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD9880();
    if (!v7)
    {
      goto LABEL_24;
    }

LABEL_15:
    v14 = *(a1 + 40);
    v16 = *(v14 + 48);
    v17 = *(v14 + 56);
    v15 = (v14 + 48);
    while (v16 != v17)
    {
      if (*v16 == a5)
      {
        v19 = (v16 + 8);
        goto LABEL_25;
      }

      v16 += 32;
    }

    *__p = 0u;
    v32 = 0u;
    sub_1AF180958(v15, __p);
    if (__p[1])
    {
      *&v32 = __p[1];
      operator delete(__p[1]);
    }

    v18 = *(*(a1 + 40) + 56);
    *(v18 - 32) = a5;
    v19 = v18 - 24;
    goto LABEL_25;
  }

  if (v7)
  {
    goto LABEL_15;
  }

LABEL_24:
  v19 = *(a1 + 40);
LABEL_25:
  v21 = *(v19 + 8);
  v20 = *(v19 + 16);
  if (v21 >= v20)
  {
    v23 = (v21 - *v19) >> 3;
    if ((v23 + 1) >> 61)
    {
      sub_1AF10A1D0();
    }

    v24 = v20 - *v19;
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      sub_1AF180C2C(v19, v26);
    }

    v27 = (8 * v23);
    *v27 = a2;
    v22 = 8 * v23 + 8;
    v28 = *(v19 + 8) - *v19;
    v29 = v27 - v28;
    memcpy(v27 - v28, *v19, v28);
    v30 = *v19;
    *v19 = v29;
    *(v19 + 8) = v22;
    *(v19 + 16) = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v21 = a2;
    v22 = (v21 + 1);
  }

  *(v19 + 8) = v22;
}

uint64_t sub_1AF17E530(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a3;
  v8 = a1;
  if (a3)
  {
    if (a3 & 0xFFFFFFFE) == 2 || a3 == 4 && !a4 && (a5)
    {
LABEL_9:
      if (a5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else if (!a4)
  {
    goto LABEL_9;
  }

  v9 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
  if (!a1)
  {
    goto LABEL_9;
  }

  sub_1AFDD9904();
  if (a5)
  {
LABEL_10:
    if (v6)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

LABEL_14:
  v11 = *(v8 + 40);
  if (!v11)
  {
    v12 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD8964(v12, a2, v13, v14, v15, v16, v17, v18);
    }
  }

  for (i = *(v11 + 80); i != *(v11 + 88); i += 16)
  {
    if (*i == a2)
    {
      return *(i + 12);
    }
  }

  v20 = sub_1AF0D5194(a1, a2);
  result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDD962C();
    return 0;
  }

  return result;
}

uint64_t sub_1AF17E640(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = sub_1AF1A7798(*(a1 + 32), a2);
  if (result >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 40);
    do
    {
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v10 = sub_1AF1AE6EC(*(*(*(a1 + 48) + 8) + 8 * i), v5);
          if (v10 >= 0x80000000)
          {
            v11 = 0x80000000;
          }

          else
          {
            v11 = v10;
          }

          v12 = v11 - 1;
          v13 = *(a1 + 72);
          v16[0] = *(a1 + 56);
          v16[1] = v13;
          v17 = *(a1 + 88);
          result = sub_1AF1A7BA8(v16, v3, v7, **(a1 + 48));
          v14 = result;
          if (v12 < result)
          {
            v14 = v12;
          }

          v15 = *(a1 + 104);
          *(*(*(*(a1 + 96) + 200) + 16 * *(a1 + 112) + 8) + 4 * *v15) = v14;
          v8 = *(a1 + 40);
        }
      }

      else
      {
        v15 = *(a1 + 104);
      }

      ++*v15;
      ++v7;
    }

    while (v7 != v6);
  }

  return result;
}

void sub_1AF17E750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  while (v6 != v7)
  {
    v8 = *v6++;
    sub_1AF17E864(a2, a3, v8, 0, a1 + 72, 0);
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  while (v9 != v10)
  {
    v11 = *v9++;
    sub_1AF17E864(a2, a3, v11, 0, a1 + 144, 1);
  }

  v12 = *(a1 + 56) - *(a1 + 48);
  v13 = (v12 >> 5);
  sub_1AF17EA00((a1 + 216), v13);
  if ((v12 & 0x1FE0) != 0)
  {
    v14 = 0;
    do
    {
      v15 = *(a1 + 48) + 32 * v14;
      v16 = *(v15 + 8);
      v17 = *(v15 + 16);
      if (v16 != v17)
      {
        v18 = *(a1 + 216) + 72 * v14;
        do
        {
          v19 = *v16++;
          sub_1AF17E864(a2, a3, v19, v14, v18, 2);
        }

        while (v16 != v17);
      }

      ++v14;
    }

    while (v14 != v13);
  }
}

void sub_1AF17E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v8 = a4;
  v11 = *(a1 + 40);
  if (!v11)
  {
    v12 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v12, a2, v13, v14, v15, v16, v17, v18);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v19 = sub_1AF1AE1A8(a3, a2, &v28);
  if ((BYTE4(v29) & 0xFE) == 0x16)
  {
    v21 = 4;
  }

  else
  {
    v21 = BYTE8(v29);
  }

  switch(v21)
  {
    case 4:
      sub_1AF181224(v23, a3, v11, a2, v8, v6);
      sub_1AF180C74(a5 + 48, v23);
      goto LABEL_13;
    case 3:
      sub_1AF181224(v23, a3, v11, a2, v8, v6);
      sub_1AF180C74(a5 + 24, v23);
      goto LABEL_13;
    case 2:
      sub_1AF180CBC(v23, a3, v11, a2, v8, v6);
      sub_1AF180C74(a5, v23);
LABEL_13:
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      if (v23[0])
      {
        v23[1] = v23[0];
        operator delete(v23[0]);
      }

      return;
  }

  v22 = sub_1AF0D5194(v19, v20);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD9988();
  }
}

void sub_1AF17EA00(char **result, unint64_t a2)
{
  v3 = result[1];
  v4 = 0x8E38E38E38E38E39 * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1AF1813DC(result, v6);
  }

  else if (!v5)
  {
    v7 = &(*result)[72 * a2];
    while (v3 != v7)
    {
      v3 -= 9;
      sub_1AF1816C4(result, v3);
    }

    result[1] = v7;
  }
}

void sub_1AF17EAA4(uint64_t a1, uint64_t a2, uint64_t a3, int **a4, double a5, float32x4_t a6, float32x4_t a7)
{
  sub_1AF17EB3C((a1 + 72), a3, a4, a5, a6, a7);
  sub_1AF17EB3C((a1 + 144), a3, a4, v10, v11, v12);
  v16 = *(a1 + 48);
  if (((*(a1 + 56) - v16) >> 5))
  {
    v17 = 0;
    v18 = 72 * ((*(a1 + 56) - v16) >> 5);
    do
    {
      sub_1AF17EB3C((*(a1 + 216) + v17), a3, a4, v13, v14, v15);
      v17 += 72;
    }

    while (v18 != v17);
  }
}

void sub_1AF17EB3C(void *result, uint64_t a2, int **a3, double a4, float32x4_t a5, float32x4_t a6)
{
  if ((*(a2 + 8) & 0x3C) != 0)
  {
    v9 = 0;
    do
    {
      v10 = result[1] - *result;
      if (v10)
      {
        v11 = 0;
        v12 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 4);
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        do
        {
          sub_1AF181794(*result + v11, (v9 + 1), a3, a2, a4, *a5.i64);
          v11 += 112;
          --v13;
        }

        while (v13);
      }

      v14 = result[4] - result[3];
      if (v14)
      {
        v15 = 0;
        v16 = 0x6DB6DB6DB6DB6DB7 * (v14 >> 4);
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        do
        {
          sub_1AF18193C(result[3] + v15, (v9 + 1), a3, a2, *&a4, *a5.i64, a6);
          v15 += 112;
          --v17;
        }

        while (v17);
      }

      v18 = result[7] - result[6];
      if (v18)
      {
        v19 = 0;
        v20 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 4);
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        do
        {
          sub_1AF181DC8(result[6] + v19, (v9 + 1), a3, a2, a4, a5);
          v19 += 112;
          --v21;
        }

        while (v21);
      }

      ++v9;
    }

    while (v9 < ((*(a2 + 8) >> 2) & 0xF));
  }
}

void sub_1AF17EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 40);
  if (!v6)
  {
    v7 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  *a1 = 0;
  *(a1 + 56) = 0;
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 0x40000000;
  v92[2] = sub_1AF17F284;
  v92[3] = &unk_1E7A7B270;
  v92[4] = a2;
  v92[5] = a1;
  v84 = a3;
  sub_1AF1A2BEC(a3, 0, v92);
  v79 = *(a1 + 8);
  v80 = *(a1 + 16);
  v77 = *(a1 + 64);
  v78 = *(a1 + 72);
  sub_1AF17A60C((a1 + 32), (*(v6 + 208) * *a1));
  sub_1AF17A60C((a1 + 88), (*(v6 + 208) * *(a1 + 56)));
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  while (v16 != v17)
  {
    sub_1AF17A60C((v16 + 40), (*(v6 + 208) * *(v16 + 8)));
    v16 += 64;
  }

  v82 = v6;
  if (*(v6 + 104))
  {
    v18 = 0;
    v19 = (v80 - v79) >> 4;
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v83 = v19;
    if (((v78 - v77) >> 4) <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = (v78 - v77) >> 4;
    }

    do
    {
      v81 = v18;
      v21 = *(*(v6 + 32) + 4 * v18);
      if (v80 != v79)
      {
        for (i = 0; i != v83; ++i)
        {
          v23 = *(a1 + 8) + 16 * i;
          v24 = *(v23 + 4);
          v25 = *(v23 + 8);
          v93 = 0u;
          v94 = 0u;
          v26 = sub_1AF1AE1A8(v25, v15, &v93);
          v31 = v93;
          v32 = BYTE4(v94);
          v33 = BYTE6(v94);
          v34 = BYTE8(v94);
          if (BYTE8(v94) >= 5u)
          {
            v35 = sub_1AF0D5194(v26, v27);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v96 = "srcContent.componentCount <= 4";
              v97 = 1024;
              v98 = v34;
              _os_log_fault_impl(&dword_1AF0CE000, v35, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v36.i64 = sub_1AF279750(v32, (v31 + (v21 * v33)), v28, v29, v30);
          v38 = *&v36.i32[3];
          if (v34 <= 3)
          {
            v38 = 1.0;
          }

          if (v34)
          {
            v37.i32[0] = v36.i32[0];
          }

          else
          {
            *v37.i32 = 0.0;
          }

          if (v24)
          {
            v39 = 0;
            *v36.i8 = vand_s8(vext_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v34), 0x200000001));
            v40 = vextq_s8(vextq_s8(v37, v37, 4uLL), v36, 0xCuLL);
            *&v40.i32[3] = v38;
            v85 = v40;
            do
            {
              v89 = v85;
              *buf = *(&v89 & 0xFFFFFFFFFFFFFFF3 | (4 * (v39 & 3)));
              sub_1AF17A6AC((a1 + 32), buf);
              ++v39;
            }

            while (v24 > v39);
          }
        }
      }

      if (v78 != v77)
      {
        v41 = 0;
        do
        {
          v42 = *(a1 + 64) + 16 * v41;
          v43 = *(v42 + 4);
          v44 = *(v42 + 8);
          v93 = 0u;
          v94 = 0u;
          v45 = sub_1AF1AE1A8(v44, v15, &v93);
          v50 = v93;
          v51 = BYTE4(v94);
          v52 = BYTE6(v94);
          v53 = BYTE8(v94);
          if (BYTE8(v94) >= 5u)
          {
            v54 = sub_1AF0D5194(v45, v46);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v96 = "srcContent.componentCount <= 4";
              v97 = 1024;
              v98 = v53;
              _os_log_fault_impl(&dword_1AF0CE000, v54, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v55.i64 = sub_1AF279750(v51, (v50 + (v21 * v52)), v47, v48, v49);
          v57 = *&v55.i32[3];
          if (v53 <= 3)
          {
            v57 = 1.0;
          }

          if (v53)
          {
            v56.i32[0] = v55.i32[0];
          }

          else
          {
            *v56.i32 = 0.0;
          }

          if (v43)
          {
            v58 = 0;
            *v55.i8 = vand_s8(vext_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v53), 0x200000001));
            v59 = vextq_s8(vextq_s8(v56, v56, 4uLL), v55, 0xCuLL);
            *&v59.i32[3] = v57;
            v86 = v59;
            do
            {
              v88 = v86;
              *buf = *(&v88 & 0xFFFFFFFFFFFFFFF3 | (4 * (v58 & 3)));
              sub_1AF17A6AC((a1 + 88), buf);
              ++v58;
            }

            while (v43 > v58);
          }

          ++v41;
        }

        while (v41 != v20);
      }

      v6 = v82;
      v18 = v81 + 1;
    }

    while (v81 + 1 < *(v82 + 104));
  }

  v60 = *(a1 + 120) - *(a1 + 112);
  v87 = (v60 >> 6);
  if ((v60 >> 6))
  {
    if (!*(v6 + 196))
    {
      v61 = malloc_type_malloc((v60 >> 2) & 0xFF0, 0x105004037B82EA9uLL);
      v62 = (v61 + 8);
      v63 = v87;
      do
      {
        v64 = *(v6 + 208);
        *(v62 - 2) = v64;
        *v62 = malloc_type_malloc(4 * v64, 0x100004052888210uLL);
        v62 += 2;
        --v63;
      }

      while (v63);
      *(v6 + 196) = v87;
      *(v6 + 200) = v61;
    }

    v65 = 0;
    do
    {
      v66 = *(a1 + 112) + (v65 << 6);
      v68 = *(v66 + 16);
      v67 = *(v66 + 24);
      *buf = 0;
      v69 = sub_1AF1A3CCC(v84, v15);
      if (v69 >= 1)
      {
        v70 = v69;
        v71 = 0;
        v72 = (v67 - v68) >> 4;
        do
        {
          v73 = sub_1AF1A3D1C(v84, v71, 0);
          v75 = sub_1AF1A7034(v73, v74);
          v69 = sub_1AF1A72E0(v75);
          if (v69)
          {
            v90[0] = MEMORY[0x1E69E9820];
            v90[1] = 0x40000000;
            v90[2] = sub_1AF17F4BC;
            v90[3] = &unk_1E7A7B290;
            v90[4] = v73;
            v90[5] = v72;
            v90[6] = v66;
            v90[7] = v82;
            v91 = v65;
            v90[8] = buf;
            v69 = sub_1AF1A756C(v73, v90);
          }

          ++v71;
        }

        while (v70 != v71);
      }

      if (*buf != *(v82 + 208))
      {
        v76 = sub_1AF0D5194(v69, v15);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD99F8(&v93, (&v93 + 4), v76);
        }
      }

      ++v65;
    }

    while (v65 != v87);
  }

  else
  {
    *(v6 + 196) = 0;
    *(v6 + 200) = 0;
  }
}

void sub_1AF17F284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) != 2)
    {
      return;
    }
  }

  else if (a4)
  {
    return;
  }

  v38 = 0u;
  v39 = 0u;
  sub_1AF1AE1A8(a2, a2, &v38);
  if (v39)
  {
    v11 = sub_1AF28857C(BYTE4(v39), v10);
    if (v11)
    {
      if (a3)
      {
        if (a3 == 3)
        {
          v13 = 2;
        }

        else if (a3 == 2)
        {
          v13 = 4;
        }

        else
        {
          v14 = sub_1AF0D5194(v11, v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDD9A3C(a3, v14);
          }

          v13 = 0;
        }
      }

      else
      {
        v13 = 3;
      }

      v15 = sub_1AF17E530(*(a1 + 32), a2, a3, a4, 0);
      if (v15 <= 1)
      {
        if (v15 != 1)
        {
          sub_1AFDD9AC8(v37, v16);
        }

        v17 = *(a1 + 40);
      }

      else if (v15 == 2)
      {
        v17 = *(a1 + 40) + 56;
      }

      else
      {
        v18 = *(a1 + 40);
        v20 = *(v18 + 112);
        v21 = *(v18 + 120);
        v19 = (v18 + 112);
        while (1)
        {
          if (v20 == v21)
          {
            memset(v37, 0, sizeof(v37));
            sub_1AF18E9E0(v19, v37);
            sub_1AF18ECDC(v37);
            v22 = *(*(a1 + 40) + 120);
            *(v22 - 56) = 0;
            v17 = v22 - 56;
            *(v17 - 8) = a5;
            goto LABEL_28;
          }

          if (*v20 == a5)
          {
            break;
          }

          v20 += 64;
        }

        v17 = (v20 + 8);
      }

LABEL_28:
      v23 = *v17;
      v24 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v24 >= v25)
      {
        v27 = *(v17 + 8);
        v28 = (v24 - v27) >> 4;
        v29 = v28 + 1;
        if ((v28 + 1) >> 60)
        {
          sub_1AF10A1D0();
        }

        v30 = v25 - v27;
        if (v30 >> 3 > v29)
        {
          v29 = v30 >> 3;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF0)
        {
          v31 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          sub_1AF18ED20(v17 + 8, v31);
        }

        v32 = 16 * v28;
        *v32 = v23;
        *(v32 + 4) = v13;
        *(v32 + 8) = a2;
        v26 = 16 * v28 + 16;
        v33 = *(v17 + 8);
        v34 = *(v17 + 16) - v33;
        v35 = (16 * v28 - v34);
        memcpy(v35, v33, v34);
        v36 = *(v17 + 8);
        *(v17 + 8) = v35;
        *(v17 + 16) = v26;
        *(v17 + 24) = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v24 = v23;
        *(v24 + 4) = v13;
        v26 = v24 + 16;
        *(v24 + 8) = a2;
      }

      *(v17 + 16) = v26;
      *v17 += v13;
    }
  }
}

void sub_1AF17F4BC(uint64_t a1, unsigned int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v32 = sub_1AF1A7798(*(a1 + 32), a2);
  if (v32 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 40);
    do
    {
      if (v5)
      {
        for (i = 0; i < v5; ++i)
        {
          v7 = sub_1AF1AE6EC(*(*(*(a1 + 48) + 16) + 16 * i + 8), v3);
          v8 = 0x80000000;
          if (v7 < 0x80000000)
          {
            v8 = v7;
          }

          v9 = v8 - 1;
          v10 = sub_1AF1A7C24(*(a1 + 32), v33, v4, **(a1 + 48));
          if (v10 >= v9)
          {
            v12 = v9;
          }

          else
          {
            v12 = v10;
          }

          *(*(*(*(a1 + 56) + 200) + 16 * *(a1 + 72) + 8) + 4 * **(a1 + 64)) = **(a1 + 64);
          v13 = *(*(a1 + 48) + 16) + 16 * i;
          v14 = *(v13 + 4);
          v15 = *(v13 + 8);
          v36 = 0u;
          v37 = 0u;
          v16 = sub_1AF1AE1A8(v15, v11, &v36);
          v21 = v36;
          v22 = BYTE4(v37);
          v23 = BYTE6(v37);
          v24 = BYTE8(v37);
          if (BYTE8(v37) >= 5u)
          {
            v25 = sub_1AF0D5194(v16, v17);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v39 = "srcContent.componentCount <= 4";
              v40 = 1024;
              v41 = v24;
              _os_log_fault_impl(&dword_1AF0CE000, v25, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v26.i64 = sub_1AF279750(v22, (v21 + (v12 * v23)), v18, v19, v20);
          v28 = *&v26.i32[3];
          if (v24 <= 3)
          {
            v28 = 1.0;
          }

          if (v24)
          {
            v27.i32[0] = v26.i32[0];
          }

          else
          {
            *v27.i32 = 0.0;
          }

          if (v14)
          {
            v29 = 0;
            *v26.i8 = vand_s8(vext_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v24), 0x200000001));
            v30 = vextq_s8(vextq_s8(v27, v27, 4uLL), v26, 0xCuLL);
            *&v30.i32[3] = v28;
            v34 = v30;
            do
            {
              v31 = *(a1 + 48);
              v35 = v34;
              *buf = *(&v35 & 0xFFFFFFFFFFFFFFF3 | (4 * (v29 & 3)));
              sub_1AF17A6AC((v31 + 40), buf);
              ++v29;
            }

            while (v14 > v29);
          }

          v5 = *(a1 + 40);
        }
      }

      ++**(a1 + 64);
      ++v4;
    }

    while (v4 != v32);
  }
}

void sub_1AF17F738(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(__p, 0, sizeof(__p));
  v3 = sub_1AF1A3CCC(a2, a2);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = sub_1AF1A3D1C(a2, i, 0);
      v7 = sub_1AF1A7034(v5, v6);
      if (sub_1AF1A72E0(v7))
      {
        v8 = sub_1AF1A7530(v5);
        v10 += v8;
        sub_1AF121C58(__p, &v10);
      }
    }
  }

  operator new();
}

uint64_t *sub_1AF17F9A8(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v5 = sub_1AF1A3CCC(a3, a2);
  if ((v5 & 0xFE) == 0)
  {
    goto LABEL_19;
  }

  v6 = 0;
  v7 = v5;
  do
  {
    v8 = sub_1AF1A3D1C(a3, v6, 0);
    v10 = sub_1AF1A7034(v8, v9);
    v11 = sub_1AF1A72E0(v10);
    if (!v11)
    {
      goto LABEL_12;
    }

    if (v10 >= 2)
    {
      if (v10 == 4)
      {
        v14 = sub_1AF1A4C6C(a3, 0, 0);
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        sub_1AF1A767C(v8, v14, &v17);
        v24[0] = v17;
        v24[1] = v18;
        v24[2] = v19;
        v24[3] = v20;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 0x40000000;
        v23[2] = sub_1AF17FD9C;
        v23[3] = &unk_1E7A7B2B8;
        v23[4] = &v28;
        sub_1AF1AA060(v24, v23, v19);
        goto LABEL_11;
      }

      if (v10 != 5)
      {
        v15 = sub_1AF0D5194(v11, v12);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDD9B5C(&buf, v22, v15);
        }

        goto LABEL_11;
      }
    }

    v13 = sub_1AF1A7530(v8);
    *(v29 + 6) += 3 * v13;
LABEL_11:
    sub_1AF121C58(&v25, v29 + 6);
LABEL_12:
    ++v6;
  }

  while (v7 != v6);
  if (((v26 - v25) >> 2) >= 2)
  {
    sub_1AFDB540C(&v17, a2);
    sub_1AF1799D8(v24, ((*(&v17 + 1) - v17) >> 4));
    operator new();
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

LABEL_19:
  _Block_object_dispose(&v28, 8);
  return 0;
}

uint64_t sub_1AF17FD9C(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = a4;
  }

  *(*(*(result + 32) + 8) + 24) += v4;
  return result;
}

void sub_1AF17FDBC(void *a1, uint64_t a2, uint64_t a3, int **a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = (*(a3 + 88) + 24 * ((*(a3 + 8) >> 2) & 0xF));
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_1AF1803A0(a2, a4, v10, a1 + 9, 0, &v25);
  sub_1AF1803A0(a2, a4, v10, a1 + 18, 0, &v25);
  v12 = a1[27];
  v13 = a1[28];
  while (v12 != v13)
  {
    sub_1AF1803A0(a2, a4, v10, v12, 1, &v25);
    v12 += 9;
  }

  v22[2] = v22;
  v14 = (-85 * ((v26 - v25) >> 3));
  MEMORY[0x1EEE9AC00](v11);
  v23 = v22 - v15;
  v24 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(v24, v14, MEMORY[0x1E695E9C0]);
  if (v14)
  {
    v17 = 0;
    v18 = 24 * v14;
    v19 = v23;
    do
    {
      v20 = v25 + v17;
      if (*(v25 + v17))
      {
        v21 = *(v25 + v17 + 1) + 1;
      }

      else
      {
        v21 = 0;
      }

      *v19++ = v21;
      CFArrayAppendValue(Mutable, *(v20 + 16));
      CFRelease(*(v20 + 16));
      v17 += 24;
    }

    while (v18 != v17);
  }

  sub_1AF17F738(a3, a5);
}

void sub_1AF1803A0(uint64_t result, int **a2, unsigned int **a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = a4[1] - *a4;
  if (v12)
  {
    v13 = 0;
    v14 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 4);
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    do
    {
      sub_1AF18EE14(*a4 + v13, a3, a2, a5, result + 2, a6);
      v13 += 112;
      --v15;
    }

    while (v15);
  }

  v16 = a4[4] - a4[3];
  if (v16)
  {
    v17 = 0;
    v18 = 0x6DB6DB6DB6DB6DB7 * (v16 >> 4);
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    do
    {
      sub_1AF18F350(a4[3] + v17, a3, a2, a5, result + 2, a6);
      v17 += 112;
      --v19;
    }

    while (v19);
  }

  v20 = a4[7] - a4[6];
  if (v20)
  {
    v21 = 0;
    v22 = 0x6DB6DB6DB6DB6DB7 * (v20 >> 4);
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    do
    {
      sub_1AF18F90C(a4[6] + v21, a3, a2, a5, result + 2, a6);
      v21 += 112;
      --v23;
    }

    while (v23);
  }
}

void sub_1AF1804E8(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    free(*(v1 + 136));
    free(*(v1 + 144));
    free(*(v1 + 160));
    free(*(v1 + 168));
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
    *(v1 + 168) = 0;
  }
}

void sub_1AF18053C(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    if (*(v1 + 196) >= 1)
    {
      v3 = 0;
      do
      {
        free(*(*(v1 + 200) + 16 * v3++ + 8));
      }

      while (*(v1 + 196) > v3);
    }

    free(*(v1 + 200));
    free(*(v1 + 112));
    free(*(v1 + 120));
    free(*(v1 + 136));
    free(*(v1 + 144));
    free(*(v1 + 160));
    free(*(v1 + 168));
    free(*(v1 + 184));
    v4 = *(v1 + 80);
    if (v4)
    {
      *(v1 + 88) = v4;
      operator delete(v4);
    }

    v5 = *(v1 + 56);
    if (v5)
    {
      operator delete(v5);
    }

    v6 = *(v1 + 32);
    if (v6)
    {
      *(v1 + 40) = v6;
      operator delete(v6);
    }

    v7 = *(v1 + 8);
    if (v7)
    {
      *(v1 + 16) = v7;
      operator delete(v7);
    }

    free(*(a1 + 168));
    *(a1 + 168) = 0;
  }
}

void sub_1AF180624(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_1AF1806C8(&v2, a2);
    }

    sub_1AF10A1D0();
  }
}

void sub_1AF1806C8(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_1AF1233A0(a1, v2);
  }

  sub_1AF10A1D0();
}

void sub_1AF18070C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_1AF1807B0(&v18, &v16, &v14, v13);
}

void sub_1AF1807B0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_1AF180840(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_1AF180840(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void sub_1AF180910(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF180958(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_1AF1809C4(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v4 = v3 + 32;
  }

  a1[1] = v4;
  return v4 - 32;
}

uint64_t sub_1AF1809C4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1AF10A1D0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15[4] = a1;
  if (v7)
  {
    sub_1AF180AC0(a1, v7);
  }

  v8 = 32 * v2;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v9 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  sub_1AF180B08(a1, *a1, v10, v8 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  v13 = a1[2];
  a1[2] = 0;
  v15[2] = v12;
  v15[3] = v13;
  v15[0] = v12;
  v15[1] = v12;
  sub_1AF180B94(v15);
  return v9;
}

void sub_1AF180AC0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF180B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }
}

uint64_t sub_1AF180B94(uint64_t a1)
{
  sub_1AF180BCC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF180BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void sub_1AF180C2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF180C74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1AF180E74(a1, a2);
  }

  else
  {
    result = sub_1AF180F8C(v3, a2) + 112;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AF180CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = a5;
  v9 = (*(a4 + 8) >> 2) & 0xF;
  *(a1 + 76) = v9;
  *(a1 + 80) = a2;
  *(a1 + 88) = a6;
  v10 = *(a4 + 88);
  v11 = &v10[3 * v9];
  if (a6 == 2)
  {
    v29 = 0uLL;
    v30 = 0uLL;
    sub_1AF1AE1A8(a2, a2, &v29);
    v12 = v30;
    v13 = sub_1AFDBA620(*v11, *(a1 + 72));
    v14 = sub_1AFDCA9E4(a4, *(a1 + 72));
    v15 = (v14 - sub_1AFDBA620(*v10, *(a1 + 72))) - v13;
    sub_1AF122E00(a1, v12);
    if (v12)
    {
      v19 = 0;
      do
      {
        *v16.i64 = sub_1AF279750(BYTE4(v30), (v29 + BYTE6(v30) * v19), v16, v17, v18);
        *(*a1 + 8 * v19++) = v16.i64[0];
      }

      while (v12 != v19);
    }
  }

  else
  {
    v21 = *(*v10 + 8);
    v13 = *(*v11 + 8);
    v15 = *(a4 + 20) - v21 - v13;
    sub_1AF122E00(a1, v21);
    v29 = 0u;
    v30 = 0u;
    sub_1AF1AE1A8(a2, v22, &v29);
    if (v21)
    {
      v26 = 0;
      do
      {
        *v23.i64 = sub_1AF279750(BYTE4(v30), (v29 + *(*(a3 + 32) + 4 * v26) * BYTE6(v30)), v23, v24, v25);
        *(*a1 + 8 * v26++) = v23.i64[0];
      }

      while (v21 != v26);
    }
  }

  sub_1AF122E00((a1 + 24), v15);
  sub_1AF122E00((a1 + 48), v13);
  if (*(a1 + 32) == *(a1 + 24))
  {
    v27 = 0;
  }

  else
  {
    v27 = *(a1 + 24);
  }

  *(a1 + 96) = *a1;
  *(a1 + 104) = v27;
  return a1;
}

uint64_t sub_1AF180E74(void **a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1AF10A1D0();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    sub_1AF181060(a1, v6);
  }

  v7 = 112 * v2;
  sub_1AF180F8C(v7, a2);
  v8 = v7 + 112;
  v9 = a1[1];
  v10 = *a1 + v7 - v9;
  sub_1AF1810BC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  sub_1AF1811A8(v14);
  return v8;
}

uint64_t sub_1AF180F8C(uint64_t result, uint64_t a2)
{
  *(result + 64) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *result = *a2;
  *a2 = 0;
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  v5 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  v6 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(result + 48);
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  v8 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  v9 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v9;
  *(result + 72) = *(a2 + 72);
  *(result + 76) = *(a2 + 76);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = *(a2 + 88);
  if (*(result + 32) == *(result + 24))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(result + 24);
  }

  *(result + 96) = *result;
  *(result + 104) = v10;
  return result;
}

void sub_1AF181060(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF1810BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_1AF180F8C(a4, v8);
      v8 += 112;
      a4 += 112;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1AF181140(result, v6);
      v6 += 112;
    }
  }
}

void sub_1AF181140(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    *(a2 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    *(a2 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v5;

    operator delete(v5);
  }
}

void **sub_1AF1811A8(void **a1)
{
  sub_1AF1811DC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF1811DC(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 112;
    sub_1AF181140(v4, i - 112);
  }
}

uint64_t sub_1AF181224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = a5;
  v9 = (*(a4 + 8) >> 2) & 0xF;
  *(a1 + 76) = v9;
  *(a1 + 80) = a2;
  *(a1 + 88) = a6;
  v10 = *(a4 + 88);
  v11 = &v10[3 * v9];
  if (a6 == 2)
  {
    v29 = 0uLL;
    v30 = 0uLL;
    sub_1AF1AE1A8(a2, a2, &v29);
    v12 = v30;
    v13 = sub_1AFDBA620(*v11, *(a1 + 72));
    v14 = sub_1AFDCA9E4(a4, *(a1 + 72));
    v15 = (v14 - sub_1AFDBA620(*v10, *(a1 + 72))) - v13;
    sub_1AF1086DC(a1, v12);
    if (v12)
    {
      v19 = 0;
      do
      {
        *v16.i64 = sub_1AF279750(BYTE4(v30), (v29 + BYTE6(v30) * v19), v16, v17, v18);
        *(*a1 + 16 * v19++) = v16;
      }

      while (v12 != v19);
    }
  }

  else
  {
    v21 = *(*v10 + 8);
    v13 = *(*v11 + 8);
    v15 = *(a4 + 20) - v21 - v13;
    sub_1AF1086DC(a1, v21);
    v29 = 0u;
    v30 = 0u;
    sub_1AF1AE1A8(a2, v22, &v29);
    if (v21)
    {
      v26 = 0;
      do
      {
        *v23.i64 = sub_1AF279750(BYTE4(v30), (v29 + *(*(a3 + 32) + 4 * v26) * BYTE6(v30)), v23, v24, v25);
        *(*a1 + 16 * v26++) = v23;
      }

      while (v21 != v26);
    }
  }

  sub_1AF1086DC((a1 + 24), v15);
  sub_1AF1086DC((a1 + 48), v13);
  if (*(a1 + 32) == *(a1 + 24))
  {
    v27 = 0;
  }

  else
  {
    v27 = *(a1 + 24);
  }

  *(a1 + 96) = *a1;
  *(a1 + 104) = v27;
  return a1;
}

void sub_1AF1813DC(char **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 72 * ((72 * a2 - 72) / 0x48) + 72;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x38E38E38E38E38ELL)
    {
      sub_1AF10A1D0();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x1C71C71C71C71C7)
    {
      v9 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v9 = v8;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_1AF18157C(a1, v9);
    }

    v11 = 72 * v6;
    v12 = 72 * ((72 * a2 - 72) / 0x48) + 72;
    bzero(v11, v12);
    v13 = (v11 + v12);
    v14 = a1[1];
    v15 = (v11 + *a1 - v14);
    sub_1AF1815D8(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1AF181718(v18);
  }
}

void sub_1AF18157C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF1815D8(uint64_t result, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_1AF181660(result, a4, v8);
      v8 += 72;
      a4 += 9;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1AF1816C4(result, v6);
      v6 += 9;
    }
  }
}

__n128 sub_1AF181660(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = *a3;
  a2[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 3) = *(a3 + 24);
  a2[5] = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  result = *(a3 + 48);
  *(a2 + 3) = result;
  a2[8] = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

void sub_1AF1816C4(uint64_t a1, void **a2)
{
  v3 = a2 + 6;
  sub_1AF171480(&v3);
  v3 = a2 + 3;
  sub_1AF171480(&v3);
  v3 = a2;
  sub_1AF171480(&v3);
}

void **sub_1AF181718(void **a1)
{
  sub_1AF18174C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF18174C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_1AF1816C4(v4, (i - 72));
  }
}

void sub_1AF181794(uint64_t result, uint64_t a2, int **a3, uint64_t a4, double a5, double a6)
{
  if (*(result + 76) < a2)
  {
    v10 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD9BE0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(result + 88);
  if (*(result + 76) != a2)
  {
    if (v18 == 2)
    {
      sub_1AF1825C8(a3, a2, (result + 96), (result + 104), *(result + 72), *&a5);
    }

    else if (v18 == 1)
    {
      sub_1AF1822A4(a3, a2, (result + 96), (result + 104), a5, a6);
    }

    else
    {
      if (*(result + 88))
      {
LABEL_20:
        v19 = *(result + 104);
        v20 = v19 + 8 * *(*(*(a4 + 88) + 24 * a2) + 8);
        *(result + 96) = v19;
        *(result + 104) = v20;
        return;
      }

      sub_1AF181F70(a3, a2, (result + 96), (result + 104), *&a5);
    }

    if (*(result + 88) == 2)
    {
      *(result + 96) = *(result + 104);
      *(result + 104) += 8 * sub_1AFDBA620(*(*(a4 + 88) + 24 * a2), *(result + 72));
      return;
    }

    goto LABEL_20;
  }

  if (v18 == 2)
  {
    sub_1AF182434(a3, a2, (result + 96), (result + 48), *(result + 72), *&a5);
  }

  else if (v18 == 1)
  {
    sub_1AF1822A4(a3, a2, (result + 96), (result + 48), a5, a6);
  }

  else if (!*(result + 88))
  {
    sub_1AF181F70(a3, a2, (result + 96), (result + 48), *&a5);
  }

  sub_1AF122E00(result, 0);
  sub_1AF122E00((result + 24), 0);
}

void sub_1AF18193C(uint64_t result, uint64_t a2, int **a3, uint64_t a4, int16x4_t a5, double a6, float32x4_t a7)
{
  if (*(result + 76) < a2)
  {
    v11 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD9BE0(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(result + 88);
  if (*(result + 76) != a2)
  {
    if (v19 == 2)
    {
      sub_1AF1876F0(a3, a2, (result + 96), (result + 104), *(result + 72), a5);
    }

    else if (v19 == 1)
    {
      v38 = *(*(*a3 + 8) + 8 * a2 - 8);
      v39 = *(v38 + 8);
      if (*(v38 + 52) >= 1 && *v39 >= 1)
      {
        v40 = 0;
        do
        {
          v41 = *(*(v38 + 168) + 4 * v40);
          if (v41 != -1)
          {
            v42 = *(v39 + 6);
            v43 = *(*(v39 + 3) + 8 * v40);
            v44 = *(*(v39 + 3) + 8 * v40 + 4);
            *(*(result + 104) + 16 * v41) = 0uLL;
            if (v43 >= 1)
            {
              v45 = (v42 + 4 * v44);
              a7.f32[0] = 1.0 / v43;
              a7 = vdupq_lane_s32(*a7.f32, 0);
              do
              {
                v46 = *v45++;
                *(*(result + 104) + 16 * v41) = vmlaq_f32(*(*(result + 104) + 16 * v41), *(*(result + 96) + 16 * v46), a7);
                --v43;
              }

              while (v43);
            }
          }

          ++v40;
        }

        while (v40 < *v39);
      }

      v47 = v39[1];
      if (v47 >= 1)
      {
        v48 = 0;
        v49 = 0;
        v50.i64[0] = 0x3F0000003F000000;
        v50.i64[1] = 0x3F0000003F000000;
        do
        {
          v51 = *(*(v38 + 216) + 4 * v49);
          if (v51 != -1)
          {
            v52 = (*(v39 + 15) + v48);
            *(*(result + 104) + 16 * v51) = 0uLL;
            *(*(result + 104) + 16 * v51) = vmlaq_f32(*(*(result + 104) + 16 * v51), v50, *(*(result + 96) + 16 * *v52));
            *(*(result + 104) + 16 * v51) = vmlaq_f32(*(*(result + 104) + 16 * v51), v50, *(*(result + 96) + 16 * v52[1]));
            v47 = v39[1];
          }

          ++v49;
          v48 += 8;
        }

        while (v49 < v47);
      }

      v53 = v39[2];
      if (v53 >= 1)
      {
        for (i = 0; i < v53; ++i)
        {
          v55 = *(*(v38 + 240) + 4 * i);
          if (v55 != -1)
          {
            *(*(result + 104) + 16 * v55) = 0uLL;
            *(*(result + 104) + 16 * v55) = vaddq_f32(*(*(result + 96) + 16 * i), *(*(result + 104) + 16 * v55));
            v53 = v39[2];
          }
        }
      }
    }

    else
    {
      if (*(result + 88))
      {
LABEL_56:
        v56 = *(result + 104);
        v57 = v56 + 16 * *(*(*(a4 + 88) + 24 * a2) + 8);
        *(result + 96) = v56;
        *(result + 104) = v57;
        return;
      }

      sub_1AF187228(a3, a2, (result + 96), (result + 104), a5);
    }

    if (*(result + 88) == 2)
    {
      *(result + 96) = *(result + 104);
      *(result + 104) += 16 * sub_1AFDBA620(*(*(a4 + 88) + 24 * a2), *(result + 72));
      return;
    }

    goto LABEL_56;
  }

  if (v19 == 2)
  {
    sub_1AF18755C(a3, a2, (result + 96), (result + 48), *(result + 72), a5);
  }

  else if (v19 == 1)
  {
    v20 = *(*(*a3 + 8) + 8 * a2 - 8);
    v21 = *(v20 + 8);
    if (*(v20 + 52) >= 1 && *v21 >= 1)
    {
      v22 = 0;
      do
      {
        v23 = *(*(v20 + 168) + 4 * v22);
        if (v23 != -1)
        {
          v24 = *(v21 + 6);
          v25 = *(*(v21 + 3) + 8 * v22);
          v26 = *(*(v21 + 3) + 8 * v22 + 4);
          *(*(result + 48) + 16 * v23) = 0uLL;
          if (v25 >= 1)
          {
            v27 = (v24 + 4 * v26);
            a7.f32[0] = 1.0 / v25;
            a7 = vdupq_lane_s32(*a7.f32, 0);
            do
            {
              v28 = *v27++;
              *(*(result + 48) + 16 * v23) = vmlaq_f32(*(*(result + 48) + 16 * v23), *(*(result + 96) + 16 * v28), a7);
              --v25;
            }

            while (v25);
          }
        }

        ++v22;
      }

      while (v22 < *v21);
    }

    v29 = v21[1];
    if (v29 >= 1)
    {
      v30 = 0;
      v31 = 0;
      v32.i64[0] = 0x3F0000003F000000;
      v32.i64[1] = 0x3F0000003F000000;
      do
      {
        v33 = *(*(v20 + 216) + 4 * v31);
        if (v33 != -1)
        {
          v34 = (*(v21 + 15) + v30);
          *(*(result + 48) + 16 * v33) = 0uLL;
          *(*(result + 48) + 16 * v33) = vmlaq_f32(*(*(result + 48) + 16 * v33), v32, *(*(result + 96) + 16 * *v34));
          *(*(result + 48) + 16 * v33) = vmlaq_f32(*(*(result + 48) + 16 * v33), v32, *(*(result + 96) + 16 * v34[1]));
          v29 = v21[1];
        }

        ++v31;
        v30 += 8;
      }

      while (v31 < v29);
    }

    v35 = v21[2];
    if (v35 >= 1)
    {
      for (j = 0; j < v35; ++j)
      {
        v37 = *(*(v20 + 240) + 4 * j);
        if (v37 != -1)
        {
          *(*(result + 48) + 16 * v37) = 0uLL;
          *(*(result + 48) + 16 * v37) = vaddq_f32(*(*(result + 96) + 16 * j), *(*(result + 48) + 16 * v37));
          v35 = v21[2];
        }
      }
    }
  }

  else if (!*(result + 88))
  {
    sub_1AF187228(a3, a2, (result + 96), (result + 48), a5);
  }

  sub_1AF1086DC(result, 0);
  sub_1AF1086DC((result + 24), 0);
}

void sub_1AF181DC8(uint64_t result, uint64_t a2, int **a3, uint64_t a4, double a5, float32x4_t a6)
{
  if (*(result + 76) < a2)
  {
    v10 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD9BE0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(result + 88);
  if (*(result + 76) != a2)
  {
    if (v18 == 2)
    {
      sub_1AF18B38C(a3, a2, (result + 96), (result + 104), *(result + 72), *&a5);
    }

    else if (v18 == 1)
    {
      sub_1AF18B068(a3, a2, (result + 96), (result + 104), a5, a6);
    }

    else
    {
      if (*(result + 88))
      {
LABEL_20:
        v19 = *(result + 104);
        v20 = v19 + 16 * *(*(*(a4 + 88) + 24 * a2) + 8);
        *(result + 96) = v19;
        *(result + 104) = v20;
        return;
      }

      sub_1AF18AD34(a3, a2, (result + 96), (result + 104), *&a5);
    }

    if (*(result + 88) == 2)
    {
      *(result + 96) = *(result + 104);
      *(result + 104) += 16 * sub_1AFDBA620(*(*(a4 + 88) + 24 * a2), *(result + 72));
      return;
    }

    goto LABEL_20;
  }

  if (v18 == 2)
  {
    sub_1AF18B1F8(a3, a2, (result + 96), (result + 48), *(result + 72), *&a5);
  }

  else if (v18 == 1)
  {
    sub_1AF18B068(a3, a2, (result + 96), (result + 48), a5, a6);
  }

  else if (!*(result + 88))
  {
    sub_1AF18AD34(a3, a2, (result + 96), (result + 48), *&a5);
  }

  sub_1AF1086DC(result, 0);
  sub_1AF1086DC((result + 24), 0);
}

void sub_1AF181F70(int **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int16x4_t a5)
{
  v7 = a2;
  v9 = **a1;
  if (v9)
  {
    if (v9 == 2)
    {
      sub_1AF18275C(a1, a2, a3, a4, a5);
      sub_1AF182E94(a1, v7, a3, a4);

      sub_1AF183120(a1, v7, a3, a4, v10);
    }

    else if (v9 == 1)
    {
      sub_1AF18275C(a1, a2, a3, a4, a5);
      sub_1AF182978(a1, v7, a3, a4);

      sub_1AF182C04(a1, v7, a3, a4);
    }
  }

  else
  {
    sub_1AF18275C(a1, a2, a3, a4, a5);
    v11 = 0;
    v12 = *(*(*a1 + 8) + 8 * v7 - 8);
    v13 = *(v12 + 8);
    v14 = *(v13 + 16);
    __p = 0;
    if (v14 >= 9)
    {
      v11 = operator new(4 * v14);
      __p = v11;
    }

    v15 = *(v13 + 4);
    if (v15 >= 1)
    {
      v16 = 0;
      for (i = 0; i < v15; ++i)
      {
        v18 = *(*(v12 + 216) + 4 * i);
        if (v18 != -1)
        {
          v19 = (*(v13 + 120) + v16);
          *(*a4 + 8 * v18) = 0;
          *(*a4 + 8 * v18) = vmla_f32(*(*a4 + 8 * v18), 0x3F0000003F000000, *(*a3 + 8 * *v19));
          *(*a4 + 8 * v18) = vmla_f32(*(*a4 + 8 * v18), 0x3F0000003F000000, *(*a3 + 8 * v19[1]));
          v15 = *(v13 + 4);
        }

        v16 += 8;
      }

      v11 = __p;
    }

    operator delete(v11);
    v20 = 0;
    v21 = *(*(*a1 + 8) + 8 * v7 - 8);
    v22 = *(v21 + 8);
    v27 = 0;
    if ((2 * *(v22 + 20)) >= 0x21)
    {
      v20 = operator new(4 * (2 * *(v22 + 20)));
      v27 = v20;
    }

    v23 = *(v22 + 8);
    if (v23 >= 1)
    {
      for (j = 0; j < v23; ++j)
      {
        v25 = *(*(v21 + 240) + 4 * j);
        if (v25 != -1)
        {
          *(*a4 + 8 * v25) = 0;
          *(*a4 + 8 * v25) = vadd_f32(*(*a3 + 8 * j), *(*a4 + 8 * v25));
          v23 = *(v22 + 8);
        }
      }

      v20 = v27;
    }

    operator delete(v20);
  }
}

uint64_t sub_1AF1822A4(uint64_t result, int a2, void *a3, void *a4, double a5, double a6)
{
  v6 = *(*(*result + 64) + 8 * a2 - 8);
  v7 = *(v6 + 8);
  if (*(v6 + 52) >= 1 && *v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v6 + 168) + 4 * v8);
      if (v9 != -1)
      {
        v10 = *(v7 + 6);
        v11 = *(*(v7 + 3) + 8 * v8);
        v12 = *(*(v7 + 3) + 8 * v8 + 4);
        *(*a4 + 8 * v9) = 0;
        if (v11 >= 1)
        {
          v13 = (v10 + 4 * v12);
          *&a6 = 1.0 / v11;
          a6 = COERCE_DOUBLE(vdup_lane_s32(*&a6, 0));
          do
          {
            v14 = *v13++;
            *(*a4 + 8 * v9) = vmla_f32(*(*a4 + 8 * v9), *(*a3 + 8 * v14), *&a6);
            --v11;
          }

          while (v11);
        }
      }

      ++v8;
    }

    while (v8 < *v7);
  }

  v15 = v7[1];
  if (v15 >= 1)
  {
    v16 = 0;
    for (i = 0; i < v15; ++i)
    {
      v18 = *(*(v6 + 216) + 4 * i);
      if (v18 != -1)
      {
        v19 = (*(v7 + 15) + v16);
        *(*a4 + 8 * v18) = 0;
        *(*a4 + 8 * v18) = vmla_f32(*(*a4 + 8 * v18), 0x3F0000003F000000, *(*a3 + 8 * *v19));
        *(*a4 + 8 * v18) = vmla_f32(*(*a4 + 8 * v18), 0x3F0000003F000000, *(*a3 + 8 * v19[1]));
        v15 = v7[1];
      }

      v16 += 8;
    }
  }

  v20 = v7[2];
  if (v20 >= 1)
  {
    for (j = 0; j < v20; ++j)
    {
      v22 = *(*(v6 + 240) + 4 * j);
      if (v22 != -1)
      {
        *(*a4 + 8 * v22) = 0;
        *(*a4 + 8 * v22) = vadd_f32(*(*a3 + 8 * j), *(*a4 + 8 * v22));
        v20 = v7[2];
      }
    }
  }

  return result;
}

void sub_1AF182434(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int16x4_t a6)
{
  v6 = a5;
  v9 = a2;
  v11 = **result;
  if (v11)
  {
    if (v11 == 2)
    {
      sub_1AF184978(result, a2, a3, a4, a5, a6);
      sub_1AF1854D0(result, v9, a3, a4, v6);

      sub_1AF1858A0(result, v9, a3, a4, v6, v12);
    }

    else if (v11 == 1)
    {
      sub_1AF184978(result, a2, a3, a4, a5, a6);
      sub_1AF184BB8(result, v9, a3, a4, v6);

      sub_1AF184F88(result, v9, a3, a4, v6);
    }
  }

  else
  {
    sub_1AF184978(result, a2, a3, a4, a5, a6);
    sub_1AF185DE8(result, v9, a3, a4, v6);

    sub_1AF186028(result, v9, a3, a4, v6);
  }
}

void sub_1AF1825C8(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int16x4_t a6)
{
  v6 = a5;
  v9 = a2;
  v11 = **result;
  if (v11)
  {
    if (v11 == 2)
    {
      sub_1AF184978(result, a2, a3, a4, a5, a6);
      sub_1AF1854D0(result, v9, a3, a4, v6);

      sub_1AF186928(result, v9, a3, a4, v6, v12);
    }

    else if (v11 == 1)
    {
      sub_1AF184978(result, a2, a3, a4, a5, a6);
      sub_1AF184BB8(result, v9, a3, a4, v6);

      sub_1AF1863E0(result, v9, a3, a4, v6);
    }
  }

  else
  {
    sub_1AF184978(result, a2, a3, a4, a5, a6);
    sub_1AF185DE8(result, v9, a3, a4, v6);

    sub_1AF186E70(result, v9, a3, a4, v6);
  }
}

void sub_1AF18275C(uint64_t a1, int a2, void *a3, void *a4, int16x4_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v5 + 52))
  {
    v8 = 0;
    v9 = *(v5 + 8);
    v10 = v9[5];
    v26 = &v27;
    __p = 0;
    if (v10 >= 0x11)
    {
      v8 = operator new(4 * v10);
      __p = v8;
      v26 = v8;
    }

    if (*v9 >= 1)
    {
      v11 = 0;
      a5.i32[0] = 1.0;
      v12 = vdupq_n_s64(4uLL);
      do
      {
        v13 = *(*(v5 + 168) + 4 * v11);
        if (v13 != -1)
        {
          v14 = (*(v9 + 3) + 8 * v11);
          v15 = *v14;
          if (v15 < 1)
          {
            *(*a4 + 8 * v13) = 0;
          }

          else
          {
            v16 = *(v9 + 6) + 4 * v14[1];
            v17 = 1.0 / v15;
            v18 = (v15 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v15 - 1);
            v20 = (v26 + 1);
            v21 = xmmword_1AFE21110;
            v22 = xmmword_1AFE21100;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, a5).u8[0])
              {
                *(v20 - 2) = v17;
              }

              if (vuzp1_s16(v23, a5).i8[2])
              {
                *(v20 - 1) = v17;
              }

              if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v17;
                v20[1] = v17;
              }

              v22 = vaddq_s64(v22, v12);
              v21 = vaddq_s64(v21, v12);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            *(*a4 + 8 * v13) = 0;
            v24 = 0;
            v25 = 4 * v15;
            do
            {
              *(*a4 + 8 * v13) = vmla_n_f32(*(*a4 + 8 * v13), *(*a3 + 8 * *(v16 + v24)), *(v26 + v24));
              v24 += 4;
            }

            while (v25 != v24);
          }
        }

        ++v11;
      }

      while (v11 < *v9);
      v8 = __p;
    }

    operator delete(v8);
  }
}

void sub_1AF182978(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v44 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = v9[1];
  v33 = v9[2];
  v37 = *(v8 + 4);
  v11 = *(v10 + 16);
  v38 = &v41;
  v39 = v11;
  v40 = 8;
  v35 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v38 = v7;
    v40 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v9[27] + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v34[0] = v43;
        v34[1] = 0;
        v34[2] = v38;
        memset(&v34[3], 0, 13);
        v36 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        sub_1AF1833B0(&v37, &v35, v34, v20, (*(*(v33 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 8 * v14) = 0;
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * *v15), v43[0]);
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * v15[1]), v43[1]);
        if (SLODWORD(v34[4]) >= 1 && v18 >= 1)
        {
          for (j = 0; j != v18; ++j)
          {
            v22 = *(v16 + 4 * v19 + 4 * j);
            if (BYTE4(v34[4]) == 1)
            {
              v23 = (v9[21] + 4 * v22);
              v24 = *a4;
              v25 = *a4;
            }

            else
            {
              v26 = *(v10 + 24);
              v27 = *(v26 + 8 * v22 + 4);
              v28 = (*(v10 + 72) + 4 * v27);
              v29 = *(v26 + 8 * v22);
              v30 = 1;
              do
              {
                v31 = *v28++;
                ++v30;
              }

              while (i != v31);
              v32 = *(v10 + 48) + 4 * v27;
              if (v30 < v29)
              {
                v29 = 0;
              }

              v23 = (v32 + 4 * (v30 - v29));
              v25 = *a4;
              v24 = *a3;
            }

            *(v25 + 8 * v14) = vmla_n_f32(*(v25 + 8 * v14), *(v24 + 8 * *v23), v38[j]);
          }
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF182C04(uint64_t *a1, int a2, void *a3, void *a4)
{
  v7 = 0;
  v49 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v11 = v9[1];
  v10 = v9[2];
  v43 = *(v8 + 4);
  v12 = 2 * *(v11 + 20);
  v44 = &v47;
  v45 = v12;
  v46 = 32;
  v38[0] = v11;
  v38[1] = v10;
  v31 = v10;
  __p = 0;
  if (v12 >= 0x21)
  {
    v7 = operator new(4 * v12);
    __p = v7;
    v44 = v7;
    v46 = v12;
  }

  v13 = *(v11 + 8);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(v9[30] + 4 * i);
      if (v15 != -1)
      {
        v16 = v15;
        v35 = *(v11 + 360);
        v17 = *(v11 + 336);
        v18 = (8 * i) | 4;
        v34 = *(v17 + v18);
        v19 = *(v17 + 8 * i);
        v20 = *(v11 + 264);
        v33 = *(v20 + v18);
        v21 = *(v20 + 8 * i);
        v37 = 0.0;
        v22 = v44;
        v23 = v44 + v19;
        v36[0] = &v37;
        v36[1] = v44;
        v36[2] = v23;
        memset(&v36[3], 0, 13);
        v39 = i;
        v40 = v15;
        v41 = *(*(v38[0] + 336) + 8 * i);
        v42 = *(*(v38[0] + 264) + 8 * i);
        v32 = *(v11 + 288);
        sub_1AF183850(&v43, v38, v36, (*(*(v11 + 432) + 2 * i) >> 7) & 0xF, (*(*(v31 + 432) + 2 * v15) >> 7) & 0xF);
        *(*a4 + 8 * v16) = 0;
        if (SLODWORD(v36[4]) >= 1 && v21 >= 1)
        {
          v24 = (v32 + 4 * v33);
          do
          {
            v25 = *v24++;
            v26 = *(v9[21] + 4 * v25);
            LODWORD(v25) = *v23++;
            *(*a4 + 8 * v16) = vmla_n_f32(*(*a4 + 8 * v16), *(*a4 + 8 * v26), *&v25);
            --v21;
          }

          while (v21);
        }

        if (SHIDWORD(v36[3]) >= 1 && v19 >= 1)
        {
          v28 = (v35 + 4 * v34);
          do
          {
            v29 = *v28++;
            v30 = (*(v11 + 120) + 8 * v29);
            LODWORD(v29) = *v22;
            v22 = (v22 + 4);
            *(*a4 + 8 * v16) = vmla_n_f32(*(*a4 + 8 * v16), *(*a3 + 8 * v30[i == *v30]), *&v29);
            --v19;
          }

          while (v19);
        }

        *(*a4 + 8 * v16) = vmla_n_f32(*(*a4 + 8 * v16), *(*a3 + 8 * i), v37);
        v13 = *(v11 + 8);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF182E94(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v44 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = v9[1];
  v33 = v9[2];
  v37 = *(v8 + 4);
  v11 = *(v10 + 16);
  v38 = &v41;
  v39 = v11;
  v40 = 8;
  v35 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v38 = v7;
    v40 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v9[27] + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v34[0] = v43;
        v34[1] = 0;
        v34[2] = v38;
        memset(&v34[3], 0, 13);
        v36 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        sub_1AF183F2C(&v37, &v35, v34, v20, (*(*(v33 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 8 * v14) = 0;
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * *v15), v43[0]);
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * v15[1]), v43[1]);
        if (SLODWORD(v34[4]) >= 1 && v18 >= 1)
        {
          for (j = 0; j != v18; ++j)
          {
            v22 = *(v16 + 4 * v19 + 4 * j);
            if (BYTE4(v34[4]) == 1)
            {
              v23 = (v9[21] + 4 * v22);
              v24 = *a4;
              v25 = *a4;
            }

            else
            {
              v26 = *(v10 + 24);
              v27 = *(v26 + 8 * v22 + 4);
              v28 = (*(v10 + 72) + 4 * v27);
              v29 = *(v26 + 8 * v22);
              v30 = 1;
              do
              {
                v31 = *v28++;
                ++v30;
              }

              while (i != v31);
              v32 = *(v10 + 48) + 4 * v27;
              if (v30 < v29)
              {
                v29 = 0;
              }

              v23 = (v32 + 4 * (v30 - v29));
              v25 = *a4;
              v24 = *a3;
            }

            *(v25 + 8 * v14) = vmla_n_f32(*(v25 + 8 * v14), *(v24 + 8 * *v23), v38[j]);
          }
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF183120(uint64_t *a1, int a2, void *a3, void *a4, double a5)
{
  v8 = 0;
  v50 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(*(v9 + 64) + 8 * a2 - 8);
  v12 = v10[1];
  v11 = v10[2];
  v44 = *(v9 + 4);
  v13 = 2 * *(v12 + 20);
  v45 = &v48;
  v46 = v13;
  v47 = 32;
  v39[0] = v12;
  v39[1] = v11;
  v32 = v11;
  __p = 0;
  if (v13 >= 0x21)
  {
    v8 = operator new(4 * v13);
    __p = v8;
    v45 = v8;
    v47 = v13;
  }

  v14 = *(v12 + 8);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = *(v10[30] + 4 * i);
      if (v16 != -1)
      {
        v17 = v16;
        v36 = *(v12 + 360);
        v18 = *(v12 + 336);
        v19 = (8 * i) | 4;
        v35 = *(v18 + v19);
        v20 = *(v18 + 8 * i);
        v21 = *(v12 + 264);
        v34 = *(v21 + v19);
        v22 = *(v21 + 8 * i);
        v38 = 0.0;
        v23 = v45;
        v24 = v45 + v20;
        v37[0] = &v38;
        v37[1] = v45;
        v37[2] = v24;
        memset(&v37[3], 0, 13);
        v40 = i;
        v41 = v16;
        v42 = *(*(v39[0] + 336) + 8 * i);
        v43 = *(*(v39[0] + 264) + 8 * i);
        v33 = *(v12 + 288);
        sub_1AF184204(&v44, v39, v37, (*(*(v12 + 432) + 2 * i) >> 7) & 0xF, (*(*(v32 + 432) + 2 * v16) >> 7) & 0xF, a5);
        *(*a4 + 8 * v17) = 0;
        if (SLODWORD(v37[4]) >= 1 && v22 >= 1)
        {
          v25 = (v33 + 4 * v34);
          do
          {
            v26 = *v25++;
            v27 = *(v10[21] + 4 * v26);
            LODWORD(v26) = *v24++;
            *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a4 + 8 * v27), *&v26);
            --v22;
          }

          while (v22);
        }

        if (SHIDWORD(v37[3]) >= 1 && v20 >= 1)
        {
          v29 = (v36 + 4 * v35);
          do
          {
            v30 = *v29++;
            v31 = (*(v12 + 120) + 8 * v30);
            LODWORD(v30) = *v23;
            v23 = (v23 + 4);
            *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a3 + 8 * v31[i == *v31]), *&v30);
            --v20;
          }

          while (v20);
        }

        *&a5 = v38;
        *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a3 + 8 * i), v38);
        v14 = *(v12 + 8);
      }
    }

    v8 = __p;
  }

  operator delete(v8);
}

int *sub_1AF1833B0(int *result, int *a2, uint64_t a3, int a4, int a5)
{
  v5 = a3;
  v49 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v7 = *a2;
    v8 = a2[2];
    if (*(*(*a2 + 216) + 4 * v8) <= 0.0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v9 = *a2;
        LODWORD(v10) = a2[2];
        goto LABEL_8;
      }
    }

    else if (a4 != 4)
    {
      v9 = *a2;
      v10 = a2[2];
      v27 = *(*(*a2 + 216) + 4 * v10);
      if (v27 < 1.0 && ((*result & 0x60) == 0 || (v27 + -1.0) <= 0.0))
      {
LABEL_8:
        v11 = *(*(v9 + 144) + 8 * v10);
        *(a3 + 24) = 2;
        *(a3 + 32) = v11;
        *(a3 + 36) = 1;
        if ((*result & 0x180) == 0x80)
        {
          if (v11 == 2)
          {
            result = sub_1AF183804(a2, &v47);
            if (v47 == 3 || (v12 = 0.25, v13 = 0.25, v48 == 3))
            {
              v14 = 0.47;
              if (v48 == 3)
              {
                v15 = 0.47;
              }

              else
              {
                v15 = 0.25;
              }

              if (v47 != 3)
              {
                v14 = 0.25;
              }

              v13 = (v14 + v15) * 0.5;
              v12 = ((v13 * -2.0) + 1.0) * 0.5;
            }

            v16 = *v5;
            v16->f32[0] = v12;
            v16->f32[1] = v12;
            v9 = *a2;
            LODWORD(v11) = *(v5 + 32);
            goto LABEL_51;
          }

          v16 = *a3;
          __asm { FMOV            V0.2S, #0.25 }

          **a3 = _D0;
        }

        else
        {
          v16 = *a3;
          __asm { FMOV            V0.2S, #0.25 }

          **a3 = _D0;
          if (v11 == 2)
          {
            v13 = 0.25;
            LODWORD(v11) = 2;
LABEL_51:
            v37 = *(v5 + 16);
            *v37 = v13;
            v37[1] = v13;
LABEL_62:
            v45 = *(*(v9 + 216) + 4 * a2[2]);
            *v16 = vmla_n_f32(vmul_n_f32(*v16, 1.0 - v45), 0x3F0000003F000000, v45);
            if (v11 >= 1)
            {
              v46 = *(v5 + 16);
              v11 = v11;
              do
              {
                *v46 = (1.0 - v45) * *v46;
                ++v46;
                --v11;
              }

              while (v11);
            }

            return result;
          }
        }

        if (v11 >= 1)
        {
          *_D0.i32 = 0.5 / v11;
          v38 = (v11 + 3) & 0xFFFFFFFC;
          v39 = vdupq_n_s64(v11 - 1);
          v40 = xmmword_1AFE21100;
          v41 = xmmword_1AFE21110;
          v42 = (*(a3 + 16) + 8);
          v43 = vdupq_n_s64(4uLL);
          do
          {
            v44 = vmovn_s64(vcgeq_u64(v39, v41));
            if (vuzp1_s16(v44, _D0).u8[0])
            {
              *(v42 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v44, _D0).i8[2])
            {
              *(v42 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v39, *&v40))).i32[1])
            {
              *v42 = _D0.i32[0];
              v42[1] = _D0.i32[0];
            }

            v40 = vaddq_s64(v40, v43);
            v41 = vaddq_s64(v41, v43);
            v42 += 4;
            v38 -= 4;
          }

          while (v38);
        }

        goto LABEL_62;
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    _D0.i32[0] = 0.5;
    goto LABEL_37;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v7 = *a2;
  LODWORD(v8) = a2[2];
LABEL_19:
  v17 = *(*(v7 + 144) + 8 * v8);
  *(a3 + 24) = 2;
  *(a3 + 32) = v17;
  *(a3 + 36) = 1;
  if ((*result & 0x180) == 0x80)
  {
    if (v17 == 2)
    {
      result = sub_1AF183804(a2, &v47);
      if (v47 == 3 || (v18 = 0.25, _D0.i32[0] = 0.25, v48 == 3))
      {
        v20 = 0.47;
        if (v48 == 3)
        {
          v21 = 0.47;
        }

        else
        {
          v21 = 0.25;
        }

        if (v47 != 3)
        {
          v20 = 0.25;
        }

        *_D0.i32 = (v20 + v21) * 0.5;
        v18 = ((*_D0.i32 * -2.0) + 1.0) * 0.5;
      }

      v22 = *v5;
      *v22 = v18;
      v22[1] = v18;
      goto LABEL_31;
    }

    __asm { FMOV            V0.2S, #0.25 }

    **a3 = _D0;
  }

  else
  {
    __asm { FMOV            V0.2S, #0.25 }

    **a3 = _D0;
    _D0.i32[0] = 0.25;
    if (v17 == 2)
    {
LABEL_31:
      v5 += 16;
LABEL_37:
      v28 = *v5;
      v28->i32[0] = _D0.i32[0];
      v28->i32[1] = _D0.i32[0];
      return result;
    }
  }

  if (v17 >= 1)
  {
    *_D0.i32 = 0.5 / v17;
    v29 = (v17 + 3) & 0xFFFFFFFC;
    v30 = vdupq_n_s64(v17 - 1);
    v31 = xmmword_1AFE21100;
    v32 = xmmword_1AFE21110;
    v33 = (*(a3 + 16) + 8);
    v34 = vdupq_n_s64(4uLL);
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v30, v32));
      if (vuzp1_s16(v35, _D0).u8[0])
      {
        *(v33 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v35, _D0).i8[2])
      {
        *(v33 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
      {
        *v33 = _D0.i32[0];
        v33[1] = _D0.i32[0];
      }

      v31 = vaddq_s64(v31, v34);
      v32 = vaddq_s64(v32, v34);
      v33 += 4;
      v29 -= 4;
    }

    while (v29);
  }

  return result;
}

int *sub_1AF183804(int *result, _DWORD *a2)
{
  v2 = *result;
  v3 = result[2];
  v4 = *(*result + 144);
  v5 = *(v4 + 8 * v3);
  if (v5 >= 1)
  {
    v6 = (*(v2 + 168) + 4 * *(v4 + 8 * v3 + 4));
    v7 = *(v2 + 24);
    do
    {
      v8 = *v6++;
      *a2++ = *(v7 + 8 * v8);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1AF183850(int *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v81 = *MEMORY[0x1E69E9840];
  v7 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v8 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v8;
    *(a3 + 32) = v8;
    *(a3 + 36) = 1;
    **a3 = (v8 - 2) / v8;
    if (v8 >= 1)
    {
      v9 = 1.0 / (v8 * v8);
      v10 = *(a3 + 8);
      v11 = *(a3 + 16);
      do
      {
        *v10++ = v9;
        *v11++ = v9;
        --v8;
      }

      while (v8);
    }

    return;
  }

  v12 = a4;
  if (a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4 == 0;
  }

  if (v14)
  {
    v15 = a5;
  }

  else
  {
    v15 = a4;
  }

  v16 = *(a2 + 24);
  v17 = 4 * v16;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v79 - ((4 * v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, 4 * v16);
  if ((v12 | 4) != 4 && v15 == v12)
  {
    v18 = 0;
    v22 = 0.0;
LABEL_25:
    if (v12 == 4)
    {
      v79 = v15;
      v32 = 0xFFFFFFFF00000000;
      v33 = v18;
      do
      {
        v34 = *v33++;
        v32 += 0x100000000;
      }

      while (v34 <= 0.0);
      v35 = v16 << 32;
      v36 = &v18[4 * v16 - 4];
      do
      {
        v37 = *v36--;
        v35 -= 0x100000000;
      }

      while (v37 <= 0.0);
      v38 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v38;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v39 = *(a3 + 8);
      if (v38 >= 1)
      {
        bzero(*(a3 + 8), 4 * v38);
      }

      *(v39 + (v32 >> 30)) = 1040187392;
      *(v39 + (v35 >> 30)) = 1040187392;
      v15 = v79;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v15 != v12)
    {
      v80 = *a1;
      MEMORY[0x1EEE9AC00](v19);
      bzero(&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v16);
      v40 = sub_1AF183E28(a2, &v80, (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
      v41 = v40;
      v42 = *(a2 + 20);
      v43 = *(*(a2 + 8) + 408);
      v44 = *(v43 + 4 * v42);
      if (v15 || (v40 = sub_1AFDB78B4(*(v43 + 4 * v42), &v80, v16, v40), v15 = v40, v40 != v12))
      {
        MEMORY[0x1EEE9AC00](v40);
        v46 = (&v79 - v45);
        bzero(&v79 - v45, v47);
        v48 = v46 + 1;
        if ((v15 - 1) > 1)
        {
          if (v15 == 4)
          {
            v55 = 0xFFFFFFFF00000000;
            v56 = v41;
            do
            {
              v57 = *v56++;
              v55 += 0x100000000;
            }

            while (v57 <= 0.0);
            v58 = v16 << 32;
            v59 = &v41[v16 - 1];
            do
            {
              v60 = *v59--;
              v58 -= 0x100000000;
            }

            while (v60 <= 0.0);
            v54 = *(a2 + 24);
            *v46 = 0.75;
            if (v54 >= 1)
            {
              bzero(v46 + 1, 4 * v54);
            }

            LODWORD(v49) = 0;
            *(v48 + (v55 >> 30)) = 1040187392;
            v61 = v58 >> 30;
            v53 = 0;
            *(v48 + v61) = 1040187392;
          }

          else
          {
            v53 = 0;
            LODWORD(v49) = 0;
            LODWORD(v54) = 0;
            *v46 = 1.0;
          }
        }

        else
        {
          v49 = *(a2 + 28);
          *v46 = (v49 - 2) / v49;
          if (v49 >= 1)
          {
            v50 = 1.0 / (v49 * v49);
            v51 = v46 + 1;
            v52 = v49;
            do
            {
              *v51 = v50;
              v51[v16] = v50;
              ++v51;
              --v52;
            }

            while (v52);
          }

          v53 = 1;
          LODWORD(v54) = v49;
        }

        v62 = sub_1AFDB7908(&v80, v16, v18, v41, v22, v44);
        v63 = 1.0 - *&v62;
        **a3 = ((1.0 - *&v62) * *v46) + (*&v62 * **a3);
        if (v54)
        {
          if (*(a3 + 28))
          {
            if (v54 >= 1)
            {
              v64 = *(a3 + 8);
              v65 = v54;
              v66 = v46 + 1;
              do
              {
                v67 = *v66++;
                *v64 = (v63 * v67) + (*&v62 * *v64);
                ++v64;
                --v65;
              }

              while (v65);
            }
          }

          else
          {
            *(a3 + 28) = v54;
            if (v54 >= 1)
            {
              v68 = *(a3 + 8);
              v69 = v54;
              v70 = v46 + 1;
              do
              {
                v71 = *v70++;
                *v68++ = v63 * v71;
                --v69;
              }

              while (v69);
            }
          }
        }

        if (v49)
        {
          v72 = &v48[v16];
          if (*(a3 + 32))
          {
            if (v49 >= 1)
            {
              v73 = *(a3 + 16);
              v74 = v49;
              do
              {
                v75 = *v72++;
                *v73 = (v63 * v75) + (*&v62 * *v73);
                ++v73;
                --v74;
              }

              while (v74);
            }
          }

          else
          {
            *(a3 + 32) = v49;
            *(a3 + 36) = v53;
            if (v49 >= 1)
            {
              v76 = *(a3 + 16);
              v77 = v49;
              do
              {
                v78 = *v72++;
                *v76++ = v63 * v78;
                --v77;
              }

              while (v77);
            }
          }
        }
      }
    }

    return;
  }

  v20 = *a2;
  v21 = *(a2 + 16);
  v22 = *(*(*a2 + 408) + 4 * v21);
  if (v16 >= 1)
  {
    v23 = (v20[45] + 4 * *(v20[42] + 8 * v21 + 4));
    v24 = v20[27];
    v25 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = v16;
    do
    {
      v27 = *v23++;
      *v25++ = *(v24 + 4 * v27);
      --v26;
    }

    while (v26);
  }

  if (!v12)
  {
    v80 = *a1;
    v19 = sub_1AFDB78B4(v22, &v80, v16, (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v12 = v19;
    v7 = v19 - 1;
  }

  if (v7 > 1)
  {
    goto LABEL_25;
  }

  v28 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v28;
  *(a3 + 32) = v28;
  *(a3 + 36) = 1;
  **a3 = (v28 - 2) / v28;
  if (v28 >= 1)
  {
    v29 = 1.0 / (v28 * v28);
    v30 = *(a3 + 8);
    v31 = *(a3 + 16);
    do
    {
      *v30++ = v29;
      *v31++ = v29;
      --v28;
    }

    while (v28);
  }
}

float *sub_1AF183E28(int *a1, _WORD *a2, float *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a1[6];
  v7 = &v14;
  __p = 0;
  if (v6 >= 0x11)
  {
    v7 = operator new(4 * v6);
    __p = v7;
    LODWORD(v6) = a1[6];
  }

  if (v6 >= 1)
  {
    v8 = (*(*a1 + 360) + 4 * *(*(*a1 + 336) + 8 * a1[4] + 4));
    v9 = *(*a1 + 216);
    v10 = v6;
    v11 = v7;
    do
    {
      v12 = *v8++;
      *v11 = *(v9 + 4 * v12);
      v11 = (v11 + 4);
      --v10;
    }

    while (v10);
  }

  sub_1AFDB7AAC(a2, v6, v7, a3);
  operator delete(__p);
  return a3;
}

_DWORD *sub_1AF183F2C(_DWORD *result, int *a2, uint64_t a3, int a4, int a5)
{
  if (!a4)
  {
    v5 = *a2;
    v6 = a2[2];
    if (*(*(*a2 + 216) + 4 * v6) <= 0.0)
    {
      goto LABEL_10;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v7 = *a2;
        LODWORD(v8) = a2[2];
LABEL_8:
        v9 = v8;
        v10 = *(*(v7 + 144) + 8 * v8);
        *(a3 + 24) = 2;
        *(a3 + 32) = v10;
        *(a3 + 36) = 0;
        v11 = *a3;
        __asm { FMOV            V0.2S, #0.375 }

        **a3 = _D0;
        if (v10 == 2)
        {
          **(a3 + 16) = 0x3E0000003E000000;
        }

        else if (v10 >= 1)
        {
          *_D0.i32 = (2.0 / v10) * 0.125;
          v29 = (v10 + 3) & 0xFFFFFFFC;
          v30 = vdupq_n_s64(v10 - 1);
          v31 = xmmword_1AFE21100;
          v32 = xmmword_1AFE21110;
          v33 = (*(a3 + 16) + 8);
          v34 = vdupq_n_s64(4uLL);
          do
          {
            v35 = vmovn_s64(vcgeq_u64(v30, v32));
            if (vuzp1_s16(v35, _D0).u8[0])
            {
              *(v33 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v35, _D0).i8[2])
            {
              *(v33 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
            {
              *v33 = _D0.i32[0];
              v33[1] = _D0.i32[0];
            }

            v31 = vaddq_s64(v31, v34);
            v32 = vaddq_s64(v32, v34);
            v33 += 4;
            v29 -= 4;
          }

          while (v29);
        }

        v36 = *(*(v7 + 216) + 4 * v9);
        *v11 = vmla_n_f32(vmul_n_f32(*v11, 1.0 - v36), 0x3F0000003F000000, v36);
        if (v10 >= 1)
        {
          v37 = *(a3 + 16);
          do
          {
            *v37 = (1.0 - v36) * *v37;
            ++v37;
            --v10;
          }

          while (v10);
        }

        return result;
      }
    }

    else if (a4 != 4)
    {
      v7 = *a2;
      v8 = a2[2];
      v27 = *(*(*a2 + 216) + 4 * v8);
      if (v27 < 1.0 && ((*result & 0x60) == 0 || (v27 + -1.0) <= 0.0))
      {
        goto LABEL_8;
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    v19 = 0.5;
    goto LABEL_27;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v5 = *a2;
  LODWORD(v6) = a2[2];
LABEL_10:
  v17 = *(*(v5 + 144) + 8 * v6);
  *(a3 + 24) = 2;
  *(a3 + 32) = v17;
  *(a3 + 36) = 0;
  __asm { FMOV            V0.2S, #0.375 }

  **a3 = _D0;
  if (v17 == 2)
  {
    a3 += 16;
    v19 = 0.125;
LABEL_27:
    v28 = *a3;
    v28->f32[0] = v19;
    v28->f32[1] = v19;
    return result;
  }

  if (v17 >= 1)
  {
    *_D0.i32 = (2.0 / v17) * 0.125;
    v20 = (v17 + 3) & 0xFFFFFFFC;
    v21 = vdupq_n_s64(v17 - 1);
    v22 = xmmword_1AFE21100;
    v23 = xmmword_1AFE21110;
    v24 = (*(a3 + 16) + 8);
    v25 = vdupq_n_s64(4uLL);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v21, v23));
      if (vuzp1_s16(v26, _D0).u8[0])
      {
        *(v24 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v26, _D0).i8[2])
      {
        *(v24 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v21, *&v22))).i32[1])
      {
        *v24 = _D0.i32[0];
        v24[1] = _D0.i32[0];
      }

      v22 = vaddq_s64(v22, v25);
      v23 = vaddq_s64(v23, v25);
      v24 += 4;
      v20 -= 4;
    }

    while (v20);
  }

  return result;
}

void sub_1AF184204(int *a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6)
{
  v87 = *MEMORY[0x1E69E9840];
  v8 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v9 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v9;
    *(a3 + 36) = 0;
    if (v9 == 6)
    {
      **a3 = 1059061760;
      LODWORD(a6) = 1031798784;
    }

    else
    {
      v28 = 1.0 / v9;
      *&a6 = cosf(v28 * 6.2832);
      *&a6 = v28 * (0.625 - (((*&a6 * 0.25) + 0.375) * ((*&a6 * 0.25) + 0.375)));
      **a3 = 1.0 - (*&a6 * v9);
      if (v9 < 1)
      {
        return;
      }
    }

    v29 = (v9 + 3) & 0xFFFFFFFC;
    v30 = vdupq_n_s64(v9 - 1);
    v31 = xmmword_1AFE21100;
    v32 = xmmword_1AFE21110;
    v33 = (*(a3 + 8) + 8);
    v34 = vdupq_n_s64(4uLL);
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v30, v32));
      if (vuzp1_s16(v35, *&a6).u8[0])
      {
        *(v33 - 2) = LODWORD(a6);
      }

      if (vuzp1_s16(v35, *&a6).i8[2])
      {
        *(v33 - 1) = LODWORD(a6);
      }

      if (vuzp1_s16(*&a6, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
      {
        *v33 = LODWORD(a6);
        v33[1] = LODWORD(a6);
      }

      v31 = vaddq_s64(v31, v34);
      v32 = vaddq_s64(v32, v34);
      v33 += 4;
      v29 -= 4;
    }

    while (v29);
    return;
  }

  v10 = a4;
  if (a5)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4 == 0;
  }

  if (v12)
  {
    v13 = a5;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a2 + 24);
  v15 = 4 * v14;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v85 - ((4 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, 4 * v14);
  if ((v10 | 4) != 4 && v13 == v10)
  {
    v16 = 0;
    v21 = 0.0;
    goto LABEL_31;
  }

  v19 = *a2;
  v20 = *(a2 + 16);
  v21 = *(*(*a2 + 408) + 4 * v20);
  if (v14 >= 1)
  {
    v22 = (v19[45] + 4 * *(v19[42] + 8 * v20 + 4));
    v23 = v19[27];
    v24 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = v14;
    do
    {
      v26 = *v22++;
      *v24++ = *(v23 + 4 * v26);
      --v25;
    }

    while (v25);
  }

  if (!v10)
  {
    v86 = *a1;
    v17 = sub_1AFDB78B4(v21, &v86, v14, (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v10 = v17;
    v8 = v17 - 1;
  }

  if (v8 > 1)
  {
LABEL_31:
    if (v10 == 4)
    {
      v85 = v13;
      v36 = 0xFFFFFFFF00000000;
      v37 = v16;
      do
      {
        v38 = *v37++;
        v36 += 0x100000000;
      }

      while (v38 <= 0.0);
      v39 = v14 << 32;
      v40 = &v16[4 * v14 - 4];
      do
      {
        v41 = *v40--;
        v39 -= 0x100000000;
      }

      while (v41 <= 0.0);
      v42 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v42;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v43 = *(a3 + 8);
      if (v42 >= 1)
      {
        bzero(*(a3 + 8), 4 * v42);
      }

      *(v43 + (v36 >> 30)) = 1040187392;
      *(v43 + (v39 >> 30)) = 1040187392;
      v13 = v85;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v13 == v10)
    {
      return;
    }

    v86 = *a1;
    MEMORY[0x1EEE9AC00](v17);
    bzero(&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v14);
    v44 = sub_1AF183E28(a2, &v86, (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v45 = v44;
    v46 = *(a2 + 20);
    v47 = *(*(a2 + 8) + 408);
    v48 = *(v47 + 4 * v46);
    if (!v13)
    {
      v44 = sub_1AFDB78B4(*(v47 + 4 * v46), &v86, v14, v44);
      v13 = v44;
      if (v44 == v10)
      {
        return;
      }
    }

    MEMORY[0x1EEE9AC00](v44);
    v50 = (&v85 - v49);
    bzero(&v85 - v49, v51);
    v53 = (v50 + 1);
    if ((v13 - 1) > 1)
    {
      if (v13 == 4)
      {
        v63 = 0xFFFFFFFF00000000;
        v64 = v45;
        do
        {
          v65 = *v64++;
          v63 += 0x100000000;
        }

        while (v65 <= 0.0);
        v66 = v14 << 32;
        v67 = &v45[v14 - 1];
        do
        {
          v68 = *v67--;
          v66 -= 0x100000000;
        }

        while (v68 <= 0.0);
        v54 = *(a2 + 24);
        *v50 = 1061158912;
        if (v54 >= 1)
        {
          bzero(v50 + 1, 4 * v54);
        }

        *(v53 + (v63 >> 30)) = 0.125;
        *(v53 + (v66 >> 30)) = 0.125;
      }

      else
      {
        LODWORD(v54) = 0;
        *v50 = 1065353216;
      }

      goto LABEL_75;
    }

    v54 = *(a2 + 28);
    if (v54 == 6)
    {
      *v50 = 1059061760;
      v52.i32[0] = 1031798784;
    }

    else
    {
      v69 = 1.0 / v54;
      *v52.i32 = cosf(v69 * 6.2832);
      *v52.i32 = v69 * (0.625 - (((*v52.i32 * 0.25) + 0.375) * ((*v52.i32 * 0.25) + 0.375)));
      *v50 = 1.0 - (*v52.i32 * v54);
      if (v54 < 1)
      {
LABEL_75:
        v77 = sub_1AFDB7908(&v86, v14, v16, v45, v21, v48);
        v78 = 1.0 - *&v77;
        **a3 = ((1.0 - *&v77) * *v50) + (*&v77 * **a3);
        if (v54)
        {
          if (*(a3 + 28))
          {
            if (v54 >= 1)
            {
              v79 = *(a3 + 8);
              v80 = v54;
              do
              {
                v81 = *v53++;
                *v79 = (v78 * v81) + (*&v77 * *v79);
                ++v79;
                --v80;
              }

              while (v80);
            }
          }

          else
          {
            *(a3 + 28) = v54;
            if (v54 >= 1)
            {
              v82 = *(a3 + 8);
              v83 = v54;
              do
              {
                v84 = *v53++;
                *v82++ = v78 * v84;
                --v83;
              }

              while (v83);
            }
          }
        }

        return;
      }
    }

    v70 = (v54 + 3) & 0xFFFFFFFC;
    v71 = vdupq_n_s64(v54 - 1);
    v72 = xmmword_1AFE21100;
    v73 = xmmword_1AFE21110;
    v74 = v50 + 4;
    v75 = vdupq_n_s64(4uLL);
    do
    {
      v76 = vmovn_s64(vcgeq_u64(v71, v73));
      if (vuzp1_s16(v76, v52).u8[0])
      {
        *(v74 - 3) = v52.i32[0];
      }

      if (vuzp1_s16(v76, v52).i8[2])
      {
        *(v74 - 2) = v52.i32[0];
      }

      if (vuzp1_s16(v52, vmovn_s64(vcgeq_u64(v71, *&v72))).i32[1])
      {
        *(v74 - 1) = v52.i32[0];
        *v74 = v52.i32[0];
      }

      v72 = vaddq_s64(v72, v75);
      v73 = vaddq_s64(v73, v75);
      v74 += 4;
      v70 -= 4;
    }

    while (v70);
    goto LABEL_75;
  }

  v27 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v27;
  *(a3 + 36) = 0;
  if (v27 == 6)
  {
    **a3 = 1059061760;
    v18.i32[0] = 1031798784;
  }

  else
  {
    v55 = 1.0 / v27;
    *v18.i32 = cosf(v55 * 6.2832);
    *v18.i32 = v55 * (0.625 - (((*v18.i32 * 0.25) + 0.375) * ((*v18.i32 * 0.25) + 0.375)));
    **a3 = 1.0 - (*v18.i32 * v27);
    if (v27 < 1)
    {
      return;
    }
  }

  v56 = (v27 + 3) & 0xFFFFFFFC;
  v57 = vdupq_n_s64(v27 - 1);
  v58 = xmmword_1AFE21100;
  v59 = xmmword_1AFE21110;
  v60 = (*(a3 + 8) + 8);
  v61 = vdupq_n_s64(4uLL);
  do
  {
    v62 = vmovn_s64(vcgeq_u64(v57, v59));
    if (vuzp1_s16(v62, v18).u8[0])
    {
      *(v60 - 2) = v18.i32[0];
    }

    if (vuzp1_s16(v62, v18).i8[2])
    {
      *(v60 - 1) = v18.i32[0];
    }

    if (vuzp1_s16(v18, vmovn_s64(vcgeq_u64(v57, *&v58))).i32[1])
    {
      *v60 = v18.i32[0];
      v60[1] = v18.i32[0];
    }

    v58 = vaddq_s64(v58, v61);
    v59 = vaddq_s64(v59, v61);
    v60 += 4;
    v56 -= 4;
  }

  while (v56);
}

void sub_1AF184978(uint64_t a1, int a2, void *a3, void *a4, int a5, int16x4_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v6 + 52))
  {
    v9 = 0;
    v10 = *(v6 + 8);
    v11 = *(*(v10 + 57) + 8 * a5);
    v12 = *(*(*(v6 + 16) + 456) + 8 * a5);
    v13 = v10[5];
    v30 = &v31;
    __p = 0;
    if (v13 >= 0x11)
    {
      v9 = operator new(4 * v13);
      __p = v9;
      v30 = v9;
    }

    if (*v10 >= 1)
    {
      v14 = 0;
      a6.i32[0] = 1.0;
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = *(*(v6 + 168) + 4 * v14);
        if (v16 != -1)
        {
          v17 = *(*(v12 + 96) + 4 * v16);
          v18 = (*(*v11 + 24) + 8 * v14);
          v19 = *v18;
          if (v19 < 1)
          {
            *(*a4 + 8 * v17) = 0;
          }

          else
          {
            v20 = v11[3] + 4 * v18[1];
            v21 = 1.0 / v19;
            v22 = (v19 + 3) & 0xFFFFFFFC;
            v23 = vdupq_n_s64(v19 - 1);
            v24 = (v30 + 1);
            v25 = xmmword_1AFE21110;
            v26 = xmmword_1AFE21100;
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v23, v25));
              if (vuzp1_s16(v27, a6).u8[0])
              {
                *(v24 - 2) = v21;
              }

              if (vuzp1_s16(v27, a6).i8[2])
              {
                *(v24 - 1) = v21;
              }

              if (vuzp1_s16(a6, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
              {
                *v24 = v21;
                v24[1] = v21;
              }

              v26 = vaddq_s64(v26, v15);
              v25 = vaddq_s64(v25, v15);
              v24 += 4;
              v22 -= 4;
            }

            while (v22);
            *(*a4 + 8 * v17) = 0;
            v28 = 0;
            v29 = 4 * v19;
            do
            {
              *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a3 + 8 * *(v20 + v28)), *(v30 + v28));
              v28 += 4;
            }

            while (v29 != v28);
          }
        }

        ++v14;
      }

      while (v14 < *v10);
      v9 = __p;
    }

    operator delete(v9);
  }
}

void sub_1AF184BB8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v46 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v39 = v8[2];
  v12 = *(*(v39 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v52;
  v49 = v52;
  v50 = v13;
  v51 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v49 = v15;
    v51 = v13;
    v14 = v15;
  }

  v45[0] = v54;
  v45[1] = 0;
  v45[2] = v14;
  memset(&v45[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v45[3]) = 2;
    LODWORD(v45[4]) = 0;
    v54[0] = 0x3F0000003F000000;
    v40 = 1;
  }

  else
  {
    v40 = 0;
  }

  v43 = v9;
  if (*(v9 + 4) >= 1)
  {
    v41 = v12;
    v42 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v41[18] + 4 * *(v41[12] + 4 * v17));
        if (*(v41[21] + *v18))
        {
          v35 = v41[9];
          v36 = *(v35 + 2 * v17);
          if (*(v35 + 2 * v17))
          {
            v37 = 0;
            do
            {
              sub_1AFDAFFBC(v11, v16, *(*(v10 + 40) + 2 * (v37 + *(*(*(v10 + 32) + 96) + 4 * v17))), &v47);
              v38 = v18[v37];
              *(*a4 + 8 * v38) = 0;
              *(*a4 + 8 * v38) = vmla_f32(*(*a4 + 8 * v38), 0x3F0000003F000000, *(*a3 + 8 * v47));
              *(*a4 + 8 * v38) = vmla_f32(*(*a4 + 8 * v38), 0x3F0000003F000000, *(*a3 + 8 * v48));
              ++v37;
            }

            while (v36 != v37);
          }
        }

        else
        {
          if ((v40 & 1) == 0)
          {
            v44 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            sub_1AF1833B0(&v46, &v43, v45, v19, (*(*(v39 + 432) + 2 * v17) >> 7) & 0xF);
          }

          sub_1AFDAFFBC(v11, v16, 0, &v47);
          v20 = *v18;
          *(*a4 + 8 * v20) = 0;
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v47), *v54);
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v48), *(v54 + 1));
          if (SLODWORD(v45[4]) >= 1)
          {
            v21 = (*(v9 + 144) + 8 * v16);
            v22 = *v21;
            if (v22 >= 1)
            {
              v23 = 0;
              v24 = *(v9 + 168) + 4 * v21[1];
              do
              {
                v25 = *(v24 + 4 * v23);
                if (BYTE4(v45[4]) == 1)
                {
                  v26 = (v41[12] + 4 * *(v42[21] + 4 * v25));
                  v27 = *a4;
                  v28 = *a4;
                }

                else
                {
                  v29 = (2 * v25) | 1;
                  v30 = *(v9 + 24);
                  v31 = (*(v9 + 72) + 4 * *(v30 + 4 * v29));
                  v32 = *(v30 + 8 * v25);
                  v33 = 1;
                  do
                  {
                    v34 = *v31++;
                    ++v33;
                  }

                  while (v16 != v34);
                  if (v33 < v32)
                  {
                    v32 = 0;
                  }

                  v26 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v29) + 4 * (v33 - v32));
                  v28 = *a4;
                  v27 = *a3;
                }

                *(v28 + 8 * v20) = vmla_n_f32(*(v28 + 8 * v20), *(v27 + 8 * *v26), *&v49[4 * v23++]);
              }

              while (v23 != v22);
            }
          }
        }
      }

      ++v16;
      v8 = v42;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void sub_1AF184F88(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v7 = (*(v58 + 12) & 1) != 0 || *v6 == 0;
  v53 = v7;
  v56 = *(v54[60] + 8 * a5);
  v8 = *(*(v49 + 456) + 8 * a5);
  v9 = *(v57 + 20);
  v72 = &v75;
  v73 = 2 * v9;
  v74 = 32;
  v76 = 0;
  if (2 * v9 >= 0x21)
  {
    v76 = operator new(8 * v9);
    v72 = v76;
    v74 = 2 * v9;
    v9 = *(v57 + 20);
  }

  v10 = 0;
  v67 = &v70;
  v68 = v9;
  v69 = 16;
  v71 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v71 = v10;
    v67 = v10;
    v69 = v9;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v8;
    v11 = 0;
    v13 = v54;
    v12 = a3;
    v14 = v53;
    v15 = v56;
    do
    {
      v16 = *(v13[30] + 4 * v11);
      if (v16 != -1)
      {
        v17 = *(*(v58 + 96) + 4 * v11);
        v18 = (*(v58 + 144) + 4 * v17);
        v19 = *(v50[12] + 4 * v16);
        v20 = (v50[18] + 4 * v19);
        v21 = *v20;
        v22 = v50[21];
        if ((*(v22 + v21) & 1) == 0 && v14)
        {
          *(*a4 + 8 * v21) = 0;
          *(*a4 + 8 * *v20) = vadd_f32(*(*v12 + 8 * *v18), *(*a4 + 8 * *v20));
        }

        else if (*(v22 + v21))
        {
          v35 = v50[9];
          v36 = *(v35 + 2 * v16);
          if (*(v35 + 2 * v16))
          {
            v37 = 0;
            v38 = v22 + v19;
            v51 = v38;
            v52 = *(v58 + 168) + v17;
            do
            {
              v39 = *(v15[5] + 2 * (v37 + *(*(v15[4] + 96) + 4 * v16)));
              v40 = v18[v39];
              v41 = v20[v37];
              *(*a4 + 8 * v41) = 0;
              if (!v14 && (*(v38 + v37) & 8) != 0)
              {
                sub_1AFDAFE18(v58, v11, v39, v66);
                if ((*(v52 + v39) & 0x10) != 0)
                {
                  if ((*(v52 + v39) & 0x20) != 0)
                  {
                    v46 = v39 == 0;
                    v44 = v56;
                    v45 = v11;
                  }

                  else
                  {
                    v44 = v56;
                    v45 = v11;
                    v46 = v39;
                  }

                  v47 = sub_1AFDC4744(v44, v45, v46, v16);
                  v48 = 1.0 - v47;
                  v43 = v47 + ((1.0 - v47) * 0.75);
                  v42 = v48 * 0.125;
                }

                else
                {
                  v42 = 0.125;
                  v43 = 0.75;
                }

                v13 = v54;
                v12 = a3;
                v14 = v53;
                v15 = v56;
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * SLODWORD(v66[0])), v42);
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * SHIDWORD(v66[0])), v42);
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * v40), v43);
                v38 = v51;
              }

              else
              {
                *(*a4 + 8 * v41) = vadd_f32(*(*v12 + 8 * v40), *(*a4 + 8 * v41));
              }

              ++v37;
            }

            while (v36 != v37);
          }
        }

        else
        {
          v24 = *(*(v57 + 336) + 8 * v11);
          v59 = 0.0;
          v25 = v72;
          v26 = v72 + v24;
          v66[0] = &v59;
          v66[1] = v72;
          v66[2] = v26;
          memset(&v66[3], 0, 13);
          v61 = v11;
          v62 = v16;
          v63 = *(*(v60[0] + 336) + 8 * v11);
          v64 = *(*(v60[0] + 264) + 8 * v11);
          sub_1AF183850(&v65, v60, v66, (*(*(v57 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v16) >> 7) & 0xF);
          v13 = v54;
          v27 = *v18;
          v28 = *v20;
          *(*a4 + 8 * v28) = 0;
          if (SLODWORD(v66[4]) >= 1)
          {
            v29 = (*(v57 + 264) + 8 * v11);
            v30 = *v29;
            if (v30 >= 1)
            {
              v31 = (*(v57 + 288) + 4 * v29[1]);
              do
              {
                v32 = *v31++;
                v33 = *(v50[12] + 4 * *(v54[21] + 4 * v32));
                LODWORD(v32) = *v26++;
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a4 + 8 * v33), *&v32);
                --v30;
              }

              while (v30);
            }
          }

          v12 = a3;
          if (SHIDWORD(v66[3]) >= 1)
          {
            sub_1AFDB00B8(v58, v11, v67);
            v13 = v54;
            v12 = a3;
            if (v24 >= 1)
            {
              v34 = 0;
              do
              {
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a3 + 8 * *(v67 + v34)), *(v25 + v34));
                v34 += 4;
              }

              while (4 * v24 != v34);
            }
          }

          *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*v12 + 8 * v27), v59);
          v14 = v53;
          v15 = v56;
        }
      }

      ++v11;
    }

    while (v11 < *(v57 + 8));
    v10 = v71;
  }

  operator delete(v10);
  operator delete(v76);
}

void sub_1AF1854D0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v46 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v39 = v8[2];
  v12 = *(*(v39 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v52;
  v49 = v52;
  v50 = v13;
  v51 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v49 = v15;
    v51 = v13;
    v14 = v15;
  }

  v45[0] = v54;
  v45[1] = 0;
  v45[2] = v14;
  memset(&v45[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v45[3]) = 2;
    LODWORD(v45[4]) = 0;
    v54[0] = 0x3F0000003F000000;
    v40 = 1;
  }

  else
  {
    v40 = 0;
  }

  v43 = v9;
  if (*(v9 + 4) >= 1)
  {
    v41 = v12;
    v42 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v41[18] + 4 * *(v41[12] + 4 * v17));
        if (*(v41[21] + *v18))
        {
          v35 = v41[9];
          v36 = *(v35 + 2 * v17);
          if (*(v35 + 2 * v17))
          {
            v37 = 0;
            do
            {
              sub_1AFDAFFBC(v11, v16, *(*(v10 + 40) + 2 * (v37 + *(*(*(v10 + 32) + 96) + 4 * v17))), &v47);
              v38 = v18[v37];
              *(*a4 + 8 * v38) = 0;
              *(*a4 + 8 * v38) = vmla_f32(*(*a4 + 8 * v38), 0x3F0000003F000000, *(*a3 + 8 * v47));
              *(*a4 + 8 * v38) = vmla_f32(*(*a4 + 8 * v38), 0x3F0000003F000000, *(*a3 + 8 * v48));
              ++v37;
            }

            while (v36 != v37);
          }
        }

        else
        {
          if ((v40 & 1) == 0)
          {
            v44 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            sub_1AF183F2C(&v46, &v43, v45, v19, (*(*(v39 + 432) + 2 * v17) >> 7) & 0xF);
          }

          sub_1AFDAFFBC(v11, v16, 0, &v47);
          v20 = *v18;
          *(*a4 + 8 * v20) = 0;
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v47), *v54);
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v48), *(v54 + 1));
          if (SLODWORD(v45[4]) >= 1)
          {
            v21 = (*(v9 + 144) + 8 * v16);
            v22 = *v21;
            if (v22 >= 1)
            {
              v23 = 0;
              v24 = *(v9 + 168) + 4 * v21[1];
              do
              {
                v25 = *(v24 + 4 * v23);
                if (BYTE4(v45[4]) == 1)
                {
                  v26 = (v41[12] + 4 * *(v42[21] + 4 * v25));
                  v27 = *a4;
                  v28 = *a4;
                }

                else
                {
                  v29 = (2 * v25) | 1;
                  v30 = *(v9 + 24);
                  v31 = (*(v9 + 72) + 4 * *(v30 + 4 * v29));
                  v32 = *(v30 + 8 * v25);
                  v33 = 1;
                  do
                  {
                    v34 = *v31++;
                    ++v33;
                  }

                  while (v16 != v34);
                  if (v33 < v32)
                  {
                    v32 = 0;
                  }

                  v26 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v29) + 4 * (v33 - v32));
                  v28 = *a4;
                  v27 = *a3;
                }

                *(v28 + 8 * v20) = vmla_n_f32(*(v28 + 8 * v20), *(v27 + 8 * *v26), *&v49[4 * v23++]);
              }

              while (v23 != v22);
            }
          }
        }
      }

      ++v16;
      v8 = v42;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void sub_1AF1858A0(uint64_t a1, int a2, void *a3, void *a4, int a5, double a6)
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v8 = (*(v58 + 12) & 1) != 0 || *v7 == 0;
  v53 = v8;
  v56 = *(v54[60] + 8 * a5);
  v9 = *(*(v49 + 456) + 8 * a5);
  v10 = *(v57 + 20);
  v72 = &v75;
  v73 = 2 * v10;
  v74 = 32;
  v76 = 0;
  if (2 * v10 >= 0x21)
  {
    v76 = operator new(8 * v10);
    v72 = v76;
    v74 = 2 * v10;
    v10 = *(v57 + 20);
  }

  v11 = 0;
  v67 = &v70;
  v68 = v10;
  v69 = 16;
  v71 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v71 = v11;
    v67 = v11;
    v69 = v10;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v9;
    v12 = 0;
    v14 = v54;
    v13 = a3;
    v15 = v53;
    v16 = v56;
    do
    {
      v17 = *(v14[30] + 4 * v12);
      if (v17 != -1)
      {
        v18 = *(*(v58 + 96) + 4 * v12);
        v19 = (*(v58 + 144) + 4 * v18);
        v20 = *(v50[12] + 4 * v17);
        v21 = (v50[18] + 4 * v20);
        v22 = *v21;
        v23 = v50[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = *v21;
          a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * *v19), *(*a4 + 8 * v25)));
          *(*a4 + 8 * v25) = a6;
        }

        else if (*(v23 + v22))
        {
          v37 = v50[9];
          v38 = *(v37 + 2 * v17);
          if (*(v37 + 2 * v17))
          {
            v39 = 0;
            v40 = v23 + v20;
            v51 = v40;
            v52 = *(v58 + 168) + v18;
            do
            {
              v41 = *(v16[5] + 2 * (v39 + *(*(v16[4] + 96) + 4 * v17)));
              v42 = v19[v41];
              v43 = v21[v39];
              *(*a4 + 8 * v43) = 0;
              if (!v15 && (*(v40 + v39) & 8) != 0)
              {
                sub_1AFDAFE18(v58, v12, v41, v66);
                if ((*(v52 + v41) & 0x10) != 0)
                {
                  if ((*(v52 + v41) & 0x20) != 0)
                  {
                    v47 = v41 == 0;
                    v45 = v56;
                    v46 = v12;
                  }

                  else
                  {
                    v45 = v56;
                    v46 = v12;
                    v47 = v41;
                  }

                  *&a6 = sub_1AFDC4744(v45, v46, v47, v17);
                  v48 = 1.0 - *&a6;
                  *&a6 = *&a6 + ((1.0 - *&a6) * 0.75);
                  v44 = v48 * 0.125;
                }

                else
                {
                  v44 = 0.125;
                  LODWORD(a6) = 0.75;
                }

                v14 = v54;
                v13 = a3;
                v15 = v53;
                v16 = v56;
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * SLODWORD(v66[0])), v44);
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * SHIDWORD(v66[0])), v44);
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * v42), *&a6);
                v40 = v51;
              }

              else
              {
                a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * v42), *(*a4 + 8 * v43)));
                *(*a4 + 8 * v43) = a6;
              }

              ++v39;
            }

            while (v38 != v39);
          }
        }

        else
        {
          v26 = *(*(v57 + 336) + 8 * v12);
          v59 = 0.0;
          v27 = v72;
          v28 = v72 + v26;
          v66[0] = &v59;
          v66[1] = v72;
          v66[2] = v28;
          memset(&v66[3], 0, 13);
          v61 = v12;
          v62 = v17;
          v63 = *(*(v60[0] + 336) + 8 * v12);
          v64 = *(*(v60[0] + 264) + 8 * v12);
          sub_1AF184204(&v65, v60, v66, (*(*(v57 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v17) >> 7) & 0xF, a6);
          v14 = v54;
          v29 = *v19;
          v30 = *v21;
          *(*a4 + 8 * v30) = 0;
          if (SLODWORD(v66[4]) >= 1)
          {
            v31 = (*(v57 + 264) + 8 * v12);
            v32 = *v31;
            if (v32 >= 1)
            {
              v33 = (*(v57 + 288) + 4 * v31[1]);
              do
              {
                v34 = *v33++;
                v35 = *(v50[12] + 4 * *(v54[21] + 4 * v34));
                LODWORD(v34) = *v28++;
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a4 + 8 * v35), *&v34);
                --v32;
              }

              while (v32);
            }
          }

          v13 = a3;
          if (SHIDWORD(v66[3]) >= 1)
          {
            sub_1AFDB00B8(v58, v12, v67);
            v14 = v54;
            v13 = a3;
            if (v26 >= 1)
            {
              v36 = 0;
              do
              {
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a3 + 8 * *(v67 + v36)), *(v27 + v36));
                v36 += 4;
              }

              while (4 * v26 != v36);
            }
          }

          a6 = *(*v13 + 8 * v29);
          *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *&a6, v59);
          v15 = v53;
          v16 = v56;
        }
      }

      ++v12;
    }

    while (v12 < *(v57 + 8));
    v11 = v71;
  }

  operator delete(v11);
  operator delete(v76);
}

void sub_1AF185DE8(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v8 = 0;
  v30 = *MEMORY[0x1E69E9840];
  v21 = *(*(*a1 + 64) + 8 * a2 - 8);
  v22 = v21[1];
  v9 = *(v21[60] + 8 * a5);
  v10 = *(*(v22 + 456) + 8 * a5);
  v11 = *(*(v21[2] + 456) + 8 * a5);
  v12 = *(v22 + 16);
  v25 = &v28;
  v26 = v12;
  v27 = 8;
  __p = 0;
  if (v12 >= 9)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v25 = v8;
    v27 = v12;
  }

  if (*(v22 + 4) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(v21[27] + 4 * v13);
      if (v14 != -1)
      {
        v15 = (v11[18] + 4 * *(v11[12] + 4 * v14));
        if (*(v11[21] + *v15))
        {
          v17 = v11[9];
          v18 = *(v17 + 2 * v14);
          if (*(v17 + 2 * v14))
          {
            v19 = 0;
            do
            {
              sub_1AFDAFFBC(v10, v13, *(*(v9 + 40) + 2 * (v19 + *(*(*(v9 + 32) + 96) + 4 * v14))), &v23);
              v20 = v15[v19];
              *(*a4 + 8 * v20) = 0;
              *(*a4 + 8 * v20) = vmla_f32(*(*a4 + 8 * v20), 0x3F0000003F000000, *(*a3 + 8 * v23));
              *(*a4 + 8 * v20) = vmla_f32(*(*a4 + 8 * v20), 0x3F0000003F000000, *(*a3 + 8 * v24));
              ++v19;
            }

            while (v18 != v19);
          }
        }

        else
        {
          sub_1AFDAFFBC(v10, v13, 0, &v23);
          v16 = *v15;
          *(*a4 + 8 * v16) = 0;
          *(*a4 + 8 * v16) = vmla_f32(*(*a4 + 8 * v16), 0x3F0000003F000000, *(*a3 + 8 * v23));
          *(*a4 + 8 * v16) = vmla_f32(*(*a4 + 8 * v16), 0x3F0000003F000000, *(*a3 + 8 * v24));
        }
      }

      ++v13;
    }

    while (v13 < *(v22 + 4));
    v8 = __p;
  }

  operator delete(v8);
}

void sub_1AF186028(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v47 = v6;
  v48 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v49 = *(*(v48 + 456) + 8 * a5);
  v10 = (*(v49 + 12) & 1) != 0 || **a1 == 0;
  v42 = v10;
  v11 = *(v8 + 8 * a5);
  v41 = *(v9 + 8 * a5);
  v12 = *(v48 + 20);
  v56 = &v59;
  v57 = 2 * v12;
  v58 = 32;
  v60 = 0;
  if (2 * v12 >= 0x21)
  {
    v60 = operator new(8 * v12);
    v56 = v60;
    v58 = 2 * v12;
    v12 = *(v48 + 20);
  }

  v13 = 0;
  v51 = &v54;
  v52 = v12;
  v53 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v51 = v13;
    v53 = v12;
  }

  if (*(v48 + 8) >= 1)
  {
    v14 = 0;
    v15 = a3;
    v16 = v42;
    while (1)
    {
      v17 = *(v47[30] + 4 * v14);
      if (v17 != -1)
      {
        v18 = *(*(v49 + 96) + 4 * v14);
        v19 = (*(v49 + 144) + 4 * v18);
        v20 = *(v41[12] + 4 * v17);
        v21 = (v41[18] + 4 * v20);
        v22 = *v21;
        v23 = v41[21];
        if ((*(v23 + v22) & 1) == 0 && v16)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * *v21);
          v26 = *v19;
        }

        else
        {
          if (*(v23 + v22))
          {
            v27 = v41[9];
            v28 = *(v27 + 2 * v17);
            if (*(v27 + 2 * v17))
            {
              v29 = 0;
              v45 = *(v49 + 168) + v18;
              v46 = *(v27 + 2 * v17);
              v30 = v23 + v20;
              v44 = v23 + v20;
              do
              {
                v31 = *(v11[5] + 2 * (v29 + *(*(v11[4] + 96) + 4 * v17)));
                v32 = v19[v31];
                v33 = v21[v29];
                *(*a4 + 8 * v33) = 0;
                if (!v16 && (*(v30 + v29) & 8) != 0)
                {
                  sub_1AFDAFE18(v49, v14, v31, v50);
                  if ((*(v45 + v31) & 0x10) != 0)
                  {
                    if ((*(v45 + v31) & 0x20) != 0)
                    {
                      v38 = v31 == 0;
                      v36 = v11;
                      v37 = v14;
                    }

                    else
                    {
                      v36 = v11;
                      v37 = v14;
                      v38 = v31;
                    }

                    v39 = sub_1AFDC4744(v36, v37, v38, v17);
                    v40 = 1.0 - v39;
                    v35 = v39 + ((1.0 - v39) * 0.75);
                    v34 = v40 * 0.125;
                  }

                  else
                  {
                    v34 = 0.125;
                    v35 = 0.75;
                  }

                  v15 = a3;
                  v16 = v42;
                  v28 = v46;
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[0]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[1]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v32), v35);
                  v30 = v44;
                }

                else
                {
                  *(*a4 + 8 * v33) = vadd_f32(*(*v15 + 8 * v32), *(*a4 + 8 * v33));
                }

                ++v29;
              }

              while (v28 != v29);
            }

            goto LABEL_19;
          }

          v26 = *v19;
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * v22);
        }

        *v25 = vadd_f32(*(*v15 + 8 * v26), *v25);
      }

LABEL_19:
      if (++v14 >= *(v48 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v60);
}

void sub_1AF1863E0(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v7 = (*(v58 + 12) & 1) != 0 || *v6 == 0;
  v53 = v7;
  v56 = *(v54[60] + 8 * a5);
  v8 = *(*(v49 + 456) + 8 * a5);
  v9 = *(v57 + 20);
  v72 = &v75;
  v73 = 2 * v9;
  v74 = 32;
  v76 = 0;
  if (2 * v9 >= 0x21)
  {
    v76 = operator new(8 * v9);
    v72 = v76;
    v74 = 2 * v9;
    v9 = *(v57 + 20);
  }

  v10 = 0;
  v67 = &v70;
  v68 = v9;
  v69 = 16;
  v71 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v71 = v10;
    v67 = v10;
    v69 = v9;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v8;
    v11 = 0;
    v13 = v54;
    v12 = a3;
    v14 = v53;
    v15 = v56;
    do
    {
      v16 = *(v13[30] + 4 * v11);
      if (v16 != -1)
      {
        v17 = *(*(v58 + 96) + 4 * v11);
        v18 = (*(v58 + 144) + 4 * v17);
        v19 = *(v50[12] + 4 * v16);
        v20 = (v50[18] + 4 * v19);
        v21 = *v20;
        v22 = v50[21];
        if ((*(v22 + v21) & 1) == 0 && v14)
        {
          *(*a4 + 8 * v21) = 0;
          *(*a4 + 8 * *v20) = vadd_f32(*(*v12 + 8 * *v18), *(*a4 + 8 * *v20));
        }

        else if (*(v22 + v21))
        {
          v35 = v50[9];
          v36 = *(v35 + 2 * v16);
          if (*(v35 + 2 * v16))
          {
            v37 = 0;
            v38 = v22 + v19;
            v51 = v38;
            v52 = *(v58 + 168) + v17;
            do
            {
              v39 = *(v15[5] + 2 * (v37 + *(*(v15[4] + 96) + 4 * v16)));
              v40 = v18[v39];
              v41 = v20[v37];
              *(*a4 + 8 * v41) = 0;
              if (!v14 && (*(v38 + v37) & 8) != 0)
              {
                sub_1AFDAFE18(v58, v11, v39, v66);
                if ((*(v52 + v39) & 0x10) != 0)
                {
                  if ((*(v52 + v39) & 0x20) != 0)
                  {
                    v46 = v39 == 0;
                    v44 = v56;
                    v45 = v11;
                  }

                  else
                  {
                    v44 = v56;
                    v45 = v11;
                    v46 = v39;
                  }

                  v47 = sub_1AFDC4744(v44, v45, v46, v16);
                  v48 = 1.0 - v47;
                  v43 = v47 + ((1.0 - v47) * 0.75);
                  v42 = v48 * 0.125;
                }

                else
                {
                  v42 = 0.125;
                  v43 = 0.75;
                }

                v13 = v54;
                v12 = a3;
                v14 = v53;
                v15 = v56;
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * SLODWORD(v66[0])), v42);
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * SHIDWORD(v66[0])), v42);
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * v40), v43);
                v38 = v51;
              }

              else
              {
                *(*a4 + 8 * v41) = vadd_f32(*(*v12 + 8 * v40), *(*a4 + 8 * v41));
              }

              ++v37;
            }

            while (v36 != v37);
          }
        }

        else
        {
          v24 = *(*(v57 + 336) + 8 * v11);
          v59 = 0.0;
          v25 = v72;
          v26 = v72 + v24;
          v66[0] = &v59;
          v66[1] = v72;
          v66[2] = v26;
          memset(&v66[3], 0, 13);
          v61 = v11;
          v62 = v16;
          v63 = *(*(v60[0] + 336) + 8 * v11);
          v64 = *(*(v60[0] + 264) + 8 * v11);
          sub_1AF183850(&v65, v60, v66, (*(*(v57 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v16) >> 7) & 0xF);
          v13 = v54;
          v27 = *v18;
          v28 = *v20;
          *(*a4 + 8 * v28) = 0;
          if (SLODWORD(v66[4]) >= 1)
          {
            v29 = (*(v57 + 264) + 8 * v11);
            v30 = *v29;
            if (v30 >= 1)
            {
              v31 = (*(v57 + 288) + 4 * v29[1]);
              do
              {
                v32 = *v31++;
                v33 = *(v50[12] + 4 * *(v54[21] + 4 * v32));
                LODWORD(v32) = *v26++;
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a4 + 8 * v33), *&v32);
                --v30;
              }

              while (v30);
            }
          }

          v12 = a3;
          if (SHIDWORD(v66[3]) >= 1)
          {
            sub_1AFDB00B8(v58, v11, v67);
            v13 = v54;
            v12 = a3;
            if (v24 >= 1)
            {
              v34 = 0;
              do
              {
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a3 + 8 * *(v67 + v34)), *(v25 + v34));
                v34 += 4;
              }

              while (4 * v24 != v34);
            }
          }

          *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*v12 + 8 * v27), v59);
          v14 = v53;
          v15 = v56;
        }
      }

      ++v11;
    }

    while (v11 < *(v57 + 8));
    v10 = v71;
  }

  operator delete(v10);
  operator delete(v76);
}

void sub_1AF186928(uint64_t a1, int a2, void *a3, void *a4, int a5, double a6)
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v8 = (*(v58 + 12) & 1) != 0 || *v7 == 0;
  v53 = v8;
  v56 = *(v54[60] + 8 * a5);
  v9 = *(*(v49 + 456) + 8 * a5);
  v10 = *(v57 + 20);
  v72 = &v75;
  v73 = 2 * v10;
  v74 = 32;
  v76 = 0;
  if (2 * v10 >= 0x21)
  {
    v76 = operator new(8 * v10);
    v72 = v76;
    v74 = 2 * v10;
    v10 = *(v57 + 20);
  }

  v11 = 0;
  v67 = &v70;
  v68 = v10;
  v69 = 16;
  v71 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v71 = v11;
    v67 = v11;
    v69 = v10;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v9;
    v12 = 0;
    v14 = v54;
    v13 = a3;
    v15 = v53;
    v16 = v56;
    do
    {
      v17 = *(v14[30] + 4 * v12);
      if (v17 != -1)
      {
        v18 = *(*(v58 + 96) + 4 * v12);
        v19 = (*(v58 + 144) + 4 * v18);
        v20 = *(v50[12] + 4 * v17);
        v21 = (v50[18] + 4 * v20);
        v22 = *v21;
        v23 = v50[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = *v21;
          a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * *v19), *(*a4 + 8 * v25)));
          *(*a4 + 8 * v25) = a6;
        }

        else if (*(v23 + v22))
        {
          v37 = v50[9];
          v38 = *(v37 + 2 * v17);
          if (*(v37 + 2 * v17))
          {
            v39 = 0;
            v40 = v23 + v20;
            v51 = v40;
            v52 = *(v58 + 168) + v18;
            do
            {
              v41 = *(v16[5] + 2 * (v39 + *(*(v16[4] + 96) + 4 * v17)));
              v42 = v19[v41];
              v43 = v21[v39];
              *(*a4 + 8 * v43) = 0;
              if (!v15 && (*(v40 + v39) & 8) != 0)
              {
                sub_1AFDAFE18(v58, v12, v41, v66);
                if ((*(v52 + v41) & 0x10) != 0)
                {
                  if ((*(v52 + v41) & 0x20) != 0)
                  {
                    v47 = v41 == 0;
                    v45 = v56;
                    v46 = v12;
                  }

                  else
                  {
                    v45 = v56;
                    v46 = v12;
                    v47 = v41;
                  }

                  *&a6 = sub_1AFDC4744(v45, v46, v47, v17);
                  v48 = 1.0 - *&a6;
                  *&a6 = *&a6 + ((1.0 - *&a6) * 0.75);
                  v44 = v48 * 0.125;
                }

                else
                {
                  v44 = 0.125;
                  LODWORD(a6) = 0.75;
                }

                v14 = v54;
                v13 = a3;
                v15 = v53;
                v16 = v56;
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * SLODWORD(v66[0])), v44);
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * SHIDWORD(v66[0])), v44);
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * v42), *&a6);
                v40 = v51;
              }

              else
              {
                a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * v42), *(*a4 + 8 * v43)));
                *(*a4 + 8 * v43) = a6;
              }

              ++v39;
            }

            while (v38 != v39);
          }
        }

        else
        {
          v26 = *(*(v57 + 336) + 8 * v12);
          v59 = 0.0;
          v27 = v72;
          v28 = v72 + v26;
          v66[0] = &v59;
          v66[1] = v72;
          v66[2] = v28;
          memset(&v66[3], 0, 13);
          v61 = v12;
          v62 = v17;
          v63 = *(*(v60[0] + 336) + 8 * v12);
          v64 = *(*(v60[0] + 264) + 8 * v12);
          sub_1AF184204(&v65, v60, v66, (*(*(v57 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v17) >> 7) & 0xF, a6);
          v14 = v54;
          v29 = *v19;
          v30 = *v21;
          *(*a4 + 8 * v30) = 0;
          if (SLODWORD(v66[4]) >= 1)
          {
            v31 = (*(v57 + 264) + 8 * v12);
            v32 = *v31;
            if (v32 >= 1)
            {
              v33 = (*(v57 + 288) + 4 * v31[1]);
              do
              {
                v34 = *v33++;
                v35 = *(v50[12] + 4 * *(v54[21] + 4 * v34));
                LODWORD(v34) = *v28++;
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a4 + 8 * v35), *&v34);
                --v32;
              }

              while (v32);
            }
          }

          v13 = a3;
          if (SHIDWORD(v66[3]) >= 1)
          {
            sub_1AFDB00B8(v58, v12, v67);
            v14 = v54;
            v13 = a3;
            if (v26 >= 1)
            {
              v36 = 0;
              do
              {
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a3 + 8 * *(v67 + v36)), *(v27 + v36));
                v36 += 4;
              }

              while (4 * v26 != v36);
            }
          }

          a6 = *(*v13 + 8 * v29);
          *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *&a6, v59);
          v15 = v53;
          v16 = v56;
        }
      }

      ++v12;
    }

    while (v12 < *(v57 + 8));
    v11 = v71;
  }

  operator delete(v11);
  operator delete(v76);
}

void sub_1AF186E70(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v47 = v6;
  v48 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v49 = *(*(v48 + 456) + 8 * a5);
  v10 = (*(v49 + 12) & 1) != 0 || **a1 == 0;
  v42 = v10;
  v11 = *(v8 + 8 * a5);
  v41 = *(v9 + 8 * a5);
  v12 = *(v48 + 20);
  v56 = &v59;
  v57 = 2 * v12;
  v58 = 32;
  v60 = 0;
  if (2 * v12 >= 0x21)
  {
    v60 = operator new(8 * v12);
    v56 = v60;
    v58 = 2 * v12;
    v12 = *(v48 + 20);
  }

  v13 = 0;
  v51 = &v54;
  v52 = v12;
  v53 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v51 = v13;
    v53 = v12;
  }

  if (*(v48 + 8) >= 1)
  {
    v14 = 0;
    v15 = a3;
    v16 = v42;
    while (1)
    {
      v17 = *(v47[30] + 4 * v14);
      if (v17 != -1)
      {
        v18 = *(*(v49 + 96) + 4 * v14);
        v19 = (*(v49 + 144) + 4 * v18);
        v20 = *(v41[12] + 4 * v17);
        v21 = (v41[18] + 4 * v20);
        v22 = *v21;
        v23 = v41[21];
        if ((*(v23 + v22) & 1) == 0 && v16)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * *v21);
          v26 = *v19;
        }

        else
        {
          if (*(v23 + v22))
          {
            v27 = v41[9];
            v28 = *(v27 + 2 * v17);
            if (*(v27 + 2 * v17))
            {
              v29 = 0;
              v45 = *(v49 + 168) + v18;
              v46 = *(v27 + 2 * v17);
              v30 = v23 + v20;
              v44 = v23 + v20;
              do
              {
                v31 = *(v11[5] + 2 * (v29 + *(*(v11[4] + 96) + 4 * v17)));
                v32 = v19[v31];
                v33 = v21[v29];
                *(*a4 + 8 * v33) = 0;
                if (!v16 && (*(v30 + v29) & 8) != 0)
                {
                  sub_1AFDAFE18(v49, v14, v31, v50);
                  if ((*(v45 + v31) & 0x10) != 0)
                  {
                    if ((*(v45 + v31) & 0x20) != 0)
                    {
                      v38 = v31 == 0;
                      v36 = v11;
                      v37 = v14;
                    }

                    else
                    {
                      v36 = v11;
                      v37 = v14;
                      v38 = v31;
                    }

                    v39 = sub_1AFDC4744(v36, v37, v38, v17);
                    v40 = 1.0 - v39;
                    v35 = v39 + ((1.0 - v39) * 0.75);
                    v34 = v40 * 0.125;
                  }

                  else
                  {
                    v34 = 0.125;
                    v35 = 0.75;
                  }

                  v15 = a3;
                  v16 = v42;
                  v28 = v46;
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[0]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[1]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v32), v35);
                  v30 = v44;
                }

                else
                {
                  *(*a4 + 8 * v33) = vadd_f32(*(*v15 + 8 * v32), *(*a4 + 8 * v33));
                }

                ++v29;
              }

              while (v28 != v29);
            }

            goto LABEL_19;
          }

          v26 = *v19;
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * v22);
        }

        *v25 = vadd_f32(*(*v15 + 8 * v26), *v25);
      }

LABEL_19:
      if (++v14 >= *(v48 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v60);
}

void sub_1AF187228(int **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int16x4_t a5)
{
  v7 = a2;
  v9 = **a1;
  if (v9)
  {
    if (v9 == 2)
    {
      sub_1AF187884(a1, a2, a3, a4, a5);
      sub_1AF187FAC(a1, v7, a3, a4);

      sub_1AF188234(a1, v7, a3, a4, v10);
    }

    else if (v9 == 1)
    {
      sub_1AF187884(a1, a2, a3, a4, a5);
      sub_1AF187A9C(a1, v7, a3, a4);

      sub_1AF187D24(a1, v7, a3, a4);
    }
  }

  else
  {
    sub_1AF187884(a1, a2, a3, a4, a5);
    v11 = 0;
    v12 = *(*(*a1 + 8) + 8 * v7 - 8);
    v13 = *(v12 + 8);
    v14 = *(v13 + 16);
    __p = 0;
    if (v14 >= 9)
    {
      v11 = operator new(4 * v14);
      __p = v11;
    }

    v15 = *(v13 + 4);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18.i64[0] = 0x3F0000003F000000;
      v18.i64[1] = 0x3F0000003F000000;
      do
      {
        v19 = *(*(v12 + 216) + 4 * v17);
        if (v19 != -1)
        {
          v20 = (*(v13 + 120) + v16);
          *(*a4 + 16 * v19) = 0uLL;
          *(*a4 + 16 * v19) = vmlaq_f32(*(*a4 + 16 * v19), v18, *(*a3 + 16 * *v20));
          *(*a4 + 16 * v19) = vmlaq_f32(*(*a4 + 16 * v19), v18, *(*a3 + 16 * v20[1]));
          v15 = *(v13 + 4);
        }

        ++v17;
        v16 += 8;
      }

      while (v17 < v15);
      v11 = __p;
    }

    operator delete(v11);
    v21 = 0;
    v22 = *(*(*a1 + 8) + 8 * v7 - 8);
    v23 = *(v22 + 8);
    v28 = 0;
    if ((2 * *(v23 + 20)) >= 0x21)
    {
      v21 = operator new(4 * (2 * *(v23 + 20)));
      v28 = v21;
    }

    v24 = *(v23 + 8);
    if (v24 >= 1)
    {
      for (i = 0; i < v24; ++i)
      {
        v26 = *(*(v22 + 240) + 4 * i);
        if (v26 != -1)
        {
          *(*a4 + 16 * v26) = 0uLL;
          *(*a4 + 16 * v26) = vaddq_f32(*(*a3 + 16 * i), *(*a4 + 16 * v26));
          v24 = *(v23 + 8);
        }
      }

      v21 = v28;
    }

    operator delete(v21);
  }
}

void sub_1AF18755C(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int16x4_t a6)
{
  v6 = a5;
  v9 = a2;
  v11 = **result;
  if (v11)
  {
    if (v11 == 2)
    {
      sub_1AF1884BC(result, a2, a3, a4, a5, a6);
      sub_1AF189000(result, v9, a3, a4, v6);

      sub_1AF1893BC(result, v9, a3, a4, v6, v12);
    }

    else if (v11 == 1)
    {
      sub_1AF1884BC(result, a2, a3, a4, a5, a6);
      sub_1AF1886F8(result, v9, a3, a4, v6);

      sub_1AF188AB4(result, v9, a3, a4, v6);
    }
  }

  else
  {
    sub_1AF1884BC(result, a2, a3, a4, a5, a6);
    sub_1AF189908(result, v9, a3, a4, v6);

    sub_1AF189B3C(result, v9, a3, a4, v6);
  }
}

void sub_1AF1876F0(int **result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int16x4_t a6)
{
  v6 = a5;
  v9 = a2;
  v11 = **result;
  if (v11)
  {
    if (v11 == 2)
    {
      sub_1AF1884BC(result, a2, a3, a4, a5, a6);
      sub_1AF189000(result, v9, a3, a4, v6);

      sub_1AF18A438(result, v9, a3, a4, v6, v12);
    }

    else if (v11 == 1)
    {
      sub_1AF1884BC(result, a2, a3, a4, a5, a6);
      sub_1AF1886F8(result, v9, a3, a4, v6);

      sub_1AF189EEC(result, v9, a3, a4, v6);
    }
  }

  else
  {
    sub_1AF1884BC(result, a2, a3, a4, a5, a6);
    sub_1AF189908(result, v9, a3, a4, v6);

    sub_1AF18A984(result, v9, a3, a4, v6);
  }
}

void sub_1AF187884(uint64_t a1, int a2, void *a3, void *a4, int16x4_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v5 + 52))
  {
    v8 = 0;
    v9 = *(v5 + 8);
    v10 = v9[5];
    v26 = &v27;
    __p = 0;
    if (v10 >= 0x11)
    {
      v8 = operator new(4 * v10);
      __p = v8;
      v26 = v8;
    }

    if (*v9 >= 1)
    {
      v11 = 0;
      a5.i32[0] = 1.0;
      v12 = vdupq_n_s64(4uLL);
      do
      {
        v13 = *(*(v5 + 168) + 4 * v11);
        if (v13 != -1)
        {
          v14 = (*(v9 + 3) + 8 * v11);
          v15 = *v14;
          if (v15 < 1)
          {
            *(*a4 + 16 * v13) = 0uLL;
          }

          else
          {
            v16 = *(v9 + 6) + 4 * v14[1];
            v17 = 1.0 / v15;
            v18 = (v15 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v15 - 1);
            v20 = (v26 + 1);
            v21 = xmmword_1AFE21110;
            v22 = xmmword_1AFE21100;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, a5).u8[0])
              {
                *(v20 - 2) = v17;
              }

              if (vuzp1_s16(v23, a5).i8[2])
              {
                *(v20 - 1) = v17;
              }

              if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v17;
                v20[1] = v17;
              }

              v22 = vaddq_s64(v22, v12);
              v21 = vaddq_s64(v21, v12);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            *(*a4 + 16 * v13) = 0uLL;
            v24 = 0;
            v25 = 4 * v15;
            do
            {
              *(*a4 + 16 * v13) = vmlaq_n_f32(*(*a4 + 16 * v13), *(*a3 + 16 * *(v16 + v24)), *(v26 + v24));
              v24 += 4;
            }

            while (v25 != v24);
          }
        }

        ++v11;
      }

      while (v11 < *v9);
      v8 = __p;
    }

    operator delete(v8);
  }
}

void sub_1AF187A9C(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = v9[1];
  v34 = v9[2];
  v38 = *(v8 + 4);
  v11 = *(v10 + 16);
  v39 = &v42;
  v40 = v11;
  v41 = 8;
  v36 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v39 = v7;
    v41 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v9[27] + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v35[0] = v44;
        v35[1] = 0;
        v35[2] = v39;
        memset(&v35[3], 0, 13);
        v37 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        sub_1AF1833B0(&v38, &v36, v35, v20, (*(*(v34 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 16 * v14) = 0u;
        v21 = v44[0];
        *(*a4 + 16 * v14) = vmlaq_n_f32(*(*a4 + 16 * v14), *(*a3 + 16 * *v15), *v44);
        *(*a4 + 16 * v14) = vmlaq_lane_f32(*(*a4 + 16 * v14), *(*a3 + 16 * v15[1]), v21, 1);
        if (SLODWORD(v35[4]) >= 1 && v18 >= 1)
        {
          for (j = 0; j != v18; ++j)
          {
            v23 = *(v16 + 4 * v19 + 4 * j);
            if (BYTE4(v35[4]) == 1)
            {
              v24 = (v9[21] + 4 * v23);
              v25 = *a4;
              v26 = *a4;
            }

            else
            {
              v27 = *(v10 + 24);
              v28 = *(v27 + 8 * v23 + 4);
              v29 = (*(v10 + 72) + 4 * v28);
              v30 = *(v27 + 8 * v23);
              v31 = 1;
              do
              {
                v32 = *v29++;
                ++v31;
              }

              while (i != v32);
              v33 = *(v10 + 48) + 4 * v28;
              if (v31 < v30)
              {
                v30 = 0;
              }

              v24 = (v33 + 4 * (v31 - v30));
              v26 = *a4;
              v25 = *a3;
            }

            *(v26 + 16 * v14) = vmlaq_n_f32(*(v26 + 16 * v14), *(v25 + 16 * *v24), v39[j]);
          }
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF187D24(uint64_t *a1, int a2, void *a3, void *a4)
{
  v7 = 0;
  v48 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v11 = v9[1];
  v10 = v9[2];
  v42 = *(v8 + 4);
  v12 = 2 * *(v11 + 20);
  v43 = &v46;
  v44 = v12;
  v45 = 32;
  v37[0] = v11;
  v37[1] = v10;
  v30 = v10;
  __p = 0;
  if (v12 >= 0x21)
  {
    v7 = operator new(4 * v12);
    __p = v7;
    v43 = v7;
    v45 = v12;
  }

  v13 = *(v11 + 8);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(v9[30] + 4 * i);
      if (v15 != -1)
      {
        v16 = *(v11 + 336);
        v17 = (8 * i) | 4;
        v33 = *(v16 + v17);
        v34 = *(v11 + 360);
        v18 = *(v16 + 8 * i);
        v19 = *(v11 + 264);
        v32 = *(v19 + v17);
        v20 = *(v19 + 8 * i);
        v36 = 0.0;
        v21 = v43;
        v22 = v43 + v18;
        v35[0] = &v36;
        v35[1] = v43;
        v35[2] = v22;
        memset(&v35[3], 0, 13);
        v38 = i;
        v39 = v15;
        v40 = *(*(v37[0] + 336) + 8 * i);
        v41 = *(*(v37[0] + 264) + 8 * i);
        v31 = *(v11 + 288);
        sub_1AF183850(&v42, v37, v35, (*(*(v11 + 432) + 2 * i) >> 7) & 0xF, (*(*(v30 + 432) + 2 * v15) >> 7) & 0xF);
        *(*a4 + 16 * v15) = 0u;
        if (SLODWORD(v35[4]) >= 1 && v20 >= 1)
        {
          v23 = (v31 + 4 * v32);
          do
          {
            v24 = *v23++;
            v25 = *(v9[21] + 4 * v24);
            LODWORD(v24) = *v22++;
            *(*a4 + 16 * v15) = vmlaq_n_f32(*(*a4 + 16 * v15), *(*a4 + 16 * v25), *&v24);
            --v20;
          }

          while (v20);
        }

        if (SHIDWORD(v35[3]) >= 1 && v18 >= 1)
        {
          v27 = (v34 + 4 * v33);
          do
          {
            v28 = *v27++;
            v29 = (*(v11 + 120) + 8 * v28);
            LODWORD(v28) = *v21;
            v21 = (v21 + 4);
            *(*a4 + 16 * v15) = vmlaq_n_f32(*(*a4 + 16 * v15), *(*a3 + 16 * v29[i == *v29]), *&v28);
            --v18;
          }

          while (v18);
        }

        *(*a4 + 16 * v15) = vmlaq_n_f32(*(*a4 + 16 * v15), *(*a3 + 16 * i), v36);
        v13 = *(v11 + 8);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF187FAC(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = v9[1];
  v34 = v9[2];
  v38 = *(v8 + 4);
  v11 = *(v10 + 16);
  v39 = &v42;
  v40 = v11;
  v41 = 8;
  v36 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v39 = v7;
    v41 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v9[27] + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v35[0] = v44;
        v35[1] = 0;
        v35[2] = v39;
        memset(&v35[3], 0, 13);
        v37 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        sub_1AF183F2C(&v38, &v36, v35, v20, (*(*(v34 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 16 * v14) = 0u;
        v21 = v44[0];
        *(*a4 + 16 * v14) = vmlaq_n_f32(*(*a4 + 16 * v14), *(*a3 + 16 * *v15), *v44);
        *(*a4 + 16 * v14) = vmlaq_lane_f32(*(*a4 + 16 * v14), *(*a3 + 16 * v15[1]), v21, 1);
        if (SLODWORD(v35[4]) >= 1 && v18 >= 1)
        {
          for (j = 0; j != v18; ++j)
          {
            v23 = *(v16 + 4 * v19 + 4 * j);
            if (BYTE4(v35[4]) == 1)
            {
              v24 = (v9[21] + 4 * v23);
              v25 = *a4;
              v26 = *a4;
            }

            else
            {
              v27 = *(v10 + 24);
              v28 = *(v27 + 8 * v23 + 4);
              v29 = (*(v10 + 72) + 4 * v28);
              v30 = *(v27 + 8 * v23);
              v31 = 1;
              do
              {
                v32 = *v29++;
                ++v31;
              }

              while (i != v32);
              v33 = *(v10 + 48) + 4 * v28;
              if (v31 < v30)
              {
                v30 = 0;
              }

              v24 = (v33 + 4 * (v31 - v30));
              v26 = *a4;
              v25 = *a3;
            }

            *(v26 + 16 * v14) = vmlaq_n_f32(*(v26 + 16 * v14), *(v25 + 16 * *v24), v39[j]);
          }
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF188234(uint64_t *a1, int a2, void *a3, void *a4, double a5)
{
  v8 = 0;
  v49 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(*(v9 + 64) + 8 * a2 - 8);
  v12 = v10[1];
  v11 = v10[2];
  v43 = *(v9 + 4);
  v13 = 2 * *(v12 + 20);
  v44 = &v47;
  v45 = v13;
  v46 = 32;
  v38[0] = v12;
  v38[1] = v11;
  v31 = v11;
  __p = 0;
  if (v13 >= 0x21)
  {
    v8 = operator new(4 * v13);
    __p = v8;
    v44 = v8;
    v46 = v13;
  }

  v14 = *(v12 + 8);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = *(v10[30] + 4 * i);
      if (v16 != -1)
      {
        v17 = *(v12 + 336);
        v18 = (8 * i) | 4;
        v34 = *(v17 + v18);
        v35 = *(v12 + 360);
        v19 = *(v17 + 8 * i);
        v20 = *(v12 + 264);
        v33 = *(v20 + v18);
        v21 = *(v20 + 8 * i);
        v37 = 0.0;
        v22 = v44;
        v23 = v44 + v19;
        v36[0] = &v37;
        v36[1] = v44;
        v36[2] = v23;
        memset(&v36[3], 0, 13);
        v39 = i;
        v40 = v16;
        v41 = *(*(v38[0] + 336) + 8 * i);
        v42 = *(*(v38[0] + 264) + 8 * i);
        v32 = *(v12 + 288);
        sub_1AF184204(&v43, v38, v36, (*(*(v12 + 432) + 2 * i) >> 7) & 0xF, (*(*(v31 + 432) + 2 * v16) >> 7) & 0xF, a5);
        HIDWORD(a5) = 0;
        *(*a4 + 16 * v16) = 0u;
        if (SLODWORD(v36[4]) >= 1 && v21 >= 1)
        {
          v24 = (v32 + 4 * v33);
          do
          {
            v25 = *v24++;
            v26 = *(v10[21] + 4 * v25);
            LODWORD(v25) = *v23++;
            *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a4 + 16 * v26), *&v25);
            --v21;
          }

          while (v21);
        }

        if (SHIDWORD(v36[3]) >= 1 && v19 >= 1)
        {
          v28 = (v35 + 4 * v34);
          do
          {
            v29 = *v28++;
            v30 = (*(v12 + 120) + 8 * v29);
            LODWORD(v29) = *v22;
            v22 = (v22 + 4);
            *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a3 + 16 * v30[i == *v30]), *&v29);
            --v19;
          }

          while (v19);
        }

        *&a5 = v37;
        *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a3 + 16 * i), v37);
        v14 = *(v12 + 8);
      }
    }

    v8 = __p;
  }

  operator delete(v8);
}

void sub_1AF1884BC(uint64_t a1, int a2, void *a3, void *a4, int a5, int16x4_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v6 + 52))
  {
    v9 = 0;
    v10 = *(v6 + 8);
    v11 = *(*(v10 + 57) + 8 * a5);
    v12 = *(*(*(v6 + 16) + 456) + 8 * a5);
    v13 = v10[5];
    v30 = &v31;
    __p = 0;
    if (v13 >= 0x11)
    {
      v9 = operator new(4 * v13);
      __p = v9;
      v30 = v9;
    }

    if (*v10 >= 1)
    {
      v14 = 0;
      a6.i32[0] = 1.0;
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = *(*(v6 + 168) + 4 * v14);
        if (v16 != -1)
        {
          v17 = *(*(v12 + 96) + 4 * v16);
          v18 = (*(*v11 + 24) + 8 * v14);
          v19 = *v18;
          if (v19 < 1)
          {
            *(*a4 + 16 * v17) = 0uLL;
          }

          else
          {
            v20 = v11[3] + 4 * v18[1];
            v21 = 1.0 / v19;
            v22 = (v19 + 3) & 0xFFFFFFFC;
            v23 = vdupq_n_s64(v19 - 1);
            v24 = (v30 + 1);
            v25 = xmmword_1AFE21110;
            v26 = xmmword_1AFE21100;
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v23, v25));
              if (vuzp1_s16(v27, a6).u8[0])
              {
                *(v24 - 2) = v21;
              }

              if (vuzp1_s16(v27, a6).i8[2])
              {
                *(v24 - 1) = v21;
              }

              if (vuzp1_s16(a6, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
              {
                *v24 = v21;
                v24[1] = v21;
              }

              v26 = vaddq_s64(v26, v15);
              v25 = vaddq_s64(v25, v15);
              v24 += 4;
              v22 -= 4;
            }

            while (v22);
            *(*a4 + 16 * v17) = 0uLL;
            v28 = 0;
            v29 = 4 * v19;
            do
            {
              *(*a4 + 16 * v17) = vmlaq_n_f32(*(*a4 + 16 * v17), *(*a3 + 16 * *(v20 + v28)), *(v30 + v28));
              v28 += 4;
            }

            while (v29 != v28);
          }
        }

        ++v14;
      }

      while (v14 < *v10);
      v9 = __p;
    }

    operator delete(v9);
  }
}

void sub_1AF1886F8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v50 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v43 = v8[2];
  v12 = *(*(v43 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v56;
  v53 = v56;
  v54 = v13;
  v55 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v53 = v15;
    v55 = v13;
    v14 = v15;
  }

  v49[0] = v58;
  v49[1] = 0;
  v49[2] = v14;
  memset(&v49[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v49[3]) = 2;
    LODWORD(v49[4]) = 0;
    v58[0] = 0x3F0000003F000000;
    v44 = 1;
  }

  else
  {
    v44 = 0;
  }

  v47 = v9;
  if (*(v9 + 4) >= 1)
  {
    v45 = v12;
    v46 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v45[18] + 4 * *(v45[12] + 4 * v17));
        if (*(v45[21] + *v18))
        {
          v37 = v45[9];
          v38 = *(v37 + 2 * v17);
          if (*(v37 + 2 * v17))
          {
            v39 = 0;
            do
            {
              sub_1AFDAFFBC(v11, v16, *(*(v10 + 40) + 2 * (v39 + *(*(*(v10 + 32) + 96) + 4 * v17))), &v51);
              v40.i64[0] = 0x3F0000003F000000;
              v40.i64[1] = 0x3F0000003F000000;
              v41 = v18[v39];
              *(*a4 + 16 * v41) = 0u;
              v42 = v52;
              *(*a4 + 16 * v41) = vmlaq_f32(*(*a4 + 16 * v41), v40, *(*a3 + 16 * v51));
              *(*a4 + 16 * v41) = vmlaq_f32(*(*a4 + 16 * v41), v40, *(*a3 + 16 * v42));
              ++v39;
            }

            while (v38 != v39);
          }
        }

        else
        {
          if ((v44 & 1) == 0)
          {
            v48 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            sub_1AF1833B0(&v50, &v47, v49, v19, (*(*(v43 + 432) + 2 * v17) >> 7) & 0xF);
          }

          sub_1AFDAFFBC(v11, v16, 0, &v51);
          v20 = *v18;
          *(*a4 + 16 * v20) = 0u;
          v21 = v52;
          v22 = v58[0];
          *(*a4 + 16 * v20) = vmlaq_n_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v51), *v58);
          *(*a4 + 16 * v20) = vmlaq_lane_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v21), v22, 1);
          if (SLODWORD(v49[4]) >= 1)
          {
            v23 = (*(v9 + 144) + 8 * v16);
            v24 = *v23;
            if (v24 >= 1)
            {
              v25 = 0;
              v26 = *(v9 + 168) + 4 * v23[1];
              do
              {
                v27 = *(v26 + 4 * v25);
                if (BYTE4(v49[4]) == 1)
                {
                  v28 = (v45[12] + 4 * *(v46[21] + 4 * v27));
                  v29 = *a4;
                  v30 = *a4;
                }

                else
                {
                  v31 = (2 * v27) | 1;
                  v32 = *(v9 + 24);
                  v33 = (*(v9 + 72) + 4 * *(v32 + 4 * v31));
                  v34 = *(v32 + 8 * v27);
                  v35 = 1;
                  do
                  {
                    v36 = *v33++;
                    ++v35;
                  }

                  while (v16 != v36);
                  if (v35 < v34)
                  {
                    v34 = 0;
                  }

                  v28 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v31) + 4 * (v35 - v34));
                  v30 = *a4;
                  v29 = *a3;
                }

                *(v30 + 16 * v20) = vmlaq_n_f32(*(v30 + 16 * v20), *(v29 + 16 * *v28), *&v53[4 * v25++]);
              }

              while (v25 != v24);
            }
          }
        }
      }

      ++v16;
      v8 = v46;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void sub_1AF188AB4(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v7 = (*(v59 + 12) & 1) != 0 || *v6 == 0;
  v54 = v7;
  v57 = *(v55[60] + 8 * a5);
  v8 = *(*(v50 + 456) + 8 * a5);
  v9 = *(v58 + 20);
  v73 = &v76;
  v74 = 2 * v9;
  v75 = 32;
  v77 = 0;
  if (2 * v9 >= 0x21)
  {
    v77 = operator new(8 * v9);
    v73 = v77;
    v75 = 2 * v9;
    v9 = *(v58 + 20);
  }

  v10 = 0;
  v68 = &v71;
  v69 = v9;
  v70 = 16;
  v72 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v72 = v10;
    v68 = v10;
    v70 = v9;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v8;
    v11 = 0;
    v12 = 0uLL;
    v14 = v55;
    v13 = a3;
    v15 = v54;
    v16 = v57;
    do
    {
      v17 = *(v14[30] + 4 * v11);
      if (v17 != -1)
      {
        v18 = *(*(v59 + 96) + 4 * v11);
        v19 = (*(v59 + 144) + 4 * v18);
        v20 = *(v51[12] + 4 * v17);
        v21 = (v51[18] + 4 * v20);
        v22 = *v21;
        v23 = v51[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 16 * v22) = v12;
          *(*a4 + 16 * *v21) = vaddq_f32(*(*v13 + 16 * *v19), *(*a4 + 16 * *v21));
        }

        else if (*(v23 + v22))
        {
          v36 = v51[9];
          v37 = *(v36 + 2 * v17);
          if (*(v36 + 2 * v17))
          {
            v38 = 0;
            v39 = v23 + v20;
            v52 = v39;
            v53 = *(v59 + 168) + v18;
            do
            {
              v40 = *(v16[5] + 2 * (v38 + *(*(v16[4] + 96) + 4 * v17)));
              v41 = v19[v40];
              v42 = v21[v38];
              *(*a4 + 16 * v42) = v12;
              if (!v15 && (*(v39 + v38) & 8) != 0)
              {
                sub_1AFDAFE18(v59, v11, v40, v67);
                if ((*(v53 + v40) & 0x10) != 0)
                {
                  if ((*(v53 + v40) & 0x20) != 0)
                  {
                    v47 = v40 == 0;
                    v45 = v57;
                    v46 = v11;
                  }

                  else
                  {
                    v45 = v57;
                    v46 = v11;
                    v47 = v40;
                  }

                  v48 = sub_1AFDC4744(v45, v46, v47, v17);
                  v49 = 1.0 - v48;
                  v44 = v48 + ((1.0 - v48) * 0.75);
                  v43 = v49 * 0.125;
                }

                else
                {
                  v43 = 0.125;
                  v44 = 0.75;
                }

                v14 = v55;
                v13 = a3;
                v15 = v54;
                v16 = v57;
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * SLODWORD(v67[0])), v43);
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * SHIDWORD(v67[0])), v43);
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * v41), v44);
                v12 = 0uLL;
                v39 = v52;
              }

              else
              {
                *(*a4 + 16 * v42) = vaddq_f32(*(*v13 + 16 * v41), *(*a4 + 16 * v42));
              }

              ++v38;
            }

            while (v37 != v38);
          }
        }

        else
        {
          v25 = *(*(v58 + 336) + 8 * v11);
          v60 = 0.0;
          v26 = v73;
          v27 = v73 + v25;
          v67[0] = &v60;
          v67[1] = v73;
          v67[2] = v27;
          memset(&v67[3], 0, 13);
          v62 = v11;
          v63 = v17;
          v64 = *(*(v61[0] + 336) + 8 * v11);
          v65 = *(*(v61[0] + 264) + 8 * v11);
          sub_1AF183850(&v66, v61, v67, (*(*(v58 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v17) >> 7) & 0xF);
          v12 = 0uLL;
          v14 = v55;
          v28 = *v19;
          v29 = *v21;
          *(*a4 + 16 * v29) = 0u;
          if (SLODWORD(v67[4]) >= 1)
          {
            v30 = (*(v58 + 264) + 8 * v11);
            v31 = *v30;
            if (v31 >= 1)
            {
              v32 = (*(v58 + 288) + 4 * v30[1]);
              do
              {
                v33 = *v32++;
                v34 = *(v51[12] + 4 * *(v55[21] + 4 * v33));
                LODWORD(v33) = *v27++;
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a4 + 16 * v34), *&v33);
                --v31;
              }

              while (v31);
            }
          }

          v13 = a3;
          if (SHIDWORD(v67[3]) >= 1)
          {
            sub_1AFDB00B8(v59, v11, v68);
            v12 = 0uLL;
            v14 = v55;
            v13 = a3;
            if (v25 >= 1)
            {
              v35 = 0;
              do
              {
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a3 + 16 * *(v68 + v35)), *(v26 + v35));
                v35 += 4;
              }

              while (4 * v25 != v35);
            }
          }

          *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*v13 + 16 * v28), v60);
          v15 = v54;
          v16 = v57;
        }
      }

      ++v11;
    }

    while (v11 < *(v58 + 8));
    v10 = v72;
  }

  operator delete(v10);
  operator delete(v77);
}

void sub_1AF189000(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v50 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v43 = v8[2];
  v12 = *(*(v43 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v56;
  v53 = v56;
  v54 = v13;
  v55 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v53 = v15;
    v55 = v13;
    v14 = v15;
  }

  v49[0] = v58;
  v49[1] = 0;
  v49[2] = v14;
  memset(&v49[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v49[3]) = 2;
    LODWORD(v49[4]) = 0;
    v58[0] = 0x3F0000003F000000;
    v44 = 1;
  }

  else
  {
    v44 = 0;
  }

  v47 = v9;
  if (*(v9 + 4) >= 1)
  {
    v45 = v12;
    v46 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v45[18] + 4 * *(v45[12] + 4 * v17));
        if (*(v45[21] + *v18))
        {
          v37 = v45[9];
          v38 = *(v37 + 2 * v17);
          if (*(v37 + 2 * v17))
          {
            v39 = 0;
            do
            {
              sub_1AFDAFFBC(v11, v16, *(*(v10 + 40) + 2 * (v39 + *(*(*(v10 + 32) + 96) + 4 * v17))), &v51);
              v40.i64[0] = 0x3F0000003F000000;
              v40.i64[1] = 0x3F0000003F000000;
              v41 = v18[v39];
              *(*a4 + 16 * v41) = 0u;
              v42 = v52;
              *(*a4 + 16 * v41) = vmlaq_f32(*(*a4 + 16 * v41), v40, *(*a3 + 16 * v51));
              *(*a4 + 16 * v41) = vmlaq_f32(*(*a4 + 16 * v41), v40, *(*a3 + 16 * v42));
              ++v39;
            }

            while (v38 != v39);
          }
        }

        else
        {
          if ((v44 & 1) == 0)
          {
            v48 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            sub_1AF183F2C(&v50, &v47, v49, v19, (*(*(v43 + 432) + 2 * v17) >> 7) & 0xF);
          }

          sub_1AFDAFFBC(v11, v16, 0, &v51);
          v20 = *v18;
          *(*a4 + 16 * v20) = 0u;
          v21 = v52;
          v22 = v58[0];
          *(*a4 + 16 * v20) = vmlaq_n_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v51), *v58);
          *(*a4 + 16 * v20) = vmlaq_lane_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v21), v22, 1);
          if (SLODWORD(v49[4]) >= 1)
          {
            v23 = (*(v9 + 144) + 8 * v16);
            v24 = *v23;
            if (v24 >= 1)
            {
              v25 = 0;
              v26 = *(v9 + 168) + 4 * v23[1];
              do
              {
                v27 = *(v26 + 4 * v25);
                if (BYTE4(v49[4]) == 1)
                {
                  v28 = (v45[12] + 4 * *(v46[21] + 4 * v27));
                  v29 = *a4;
                  v30 = *a4;
                }

                else
                {
                  v31 = (2 * v27) | 1;
                  v32 = *(v9 + 24);
                  v33 = (*(v9 + 72) + 4 * *(v32 + 4 * v31));
                  v34 = *(v32 + 8 * v27);
                  v35 = 1;
                  do
                  {
                    v36 = *v33++;
                    ++v35;
                  }

                  while (v16 != v36);
                  if (v35 < v34)
                  {
                    v34 = 0;
                  }

                  v28 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v31) + 4 * (v35 - v34));
                  v30 = *a4;
                  v29 = *a3;
                }

                *(v30 + 16 * v20) = vmlaq_n_f32(*(v30 + 16 * v20), *(v29 + 16 * *v28), *&v53[4 * v25++]);
              }

              while (v25 != v24);
            }
          }
        }
      }

      ++v16;
      v8 = v46;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void sub_1AF1893BC(uint64_t a1, int a2, void *a3, void *a4, int a5, float32x4_t a6)
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v8 = (*(v59 + 12) & 1) != 0 || *v7 == 0;
  v54 = v8;
  v57 = *(v55[60] + 8 * a5);
  v9 = *(*(v50 + 456) + 8 * a5);
  v10 = *(v58 + 20);
  v73 = &v76;
  v74 = 2 * v10;
  v75 = 32;
  v77 = 0;
  if (2 * v10 >= 0x21)
  {
    v77 = operator new(8 * v10);
    v73 = v77;
    v75 = 2 * v10;
    v10 = *(v58 + 20);
  }

  v11 = 0;
  v68 = &v71;
  v69 = v10;
  v70 = 16;
  v72 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v72 = v11;
    v68 = v11;
    v70 = v10;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v9;
    v12 = 0;
    v13 = 0uLL;
    v15 = v55;
    v14 = a3;
    v16 = v54;
    v17 = v57;
    do
    {
      v18 = *(v15[30] + 4 * v12);
      if (v18 != -1)
      {
        v19 = *(*(v59 + 96) + 4 * v12);
        v20 = (*(v59 + 144) + 4 * v19);
        v21 = *(v51[12] + 4 * v18);
        v22 = (v51[18] + 4 * v21);
        v23 = *v22;
        v24 = v51[21];
        if ((*(v24 + v23) & 1) == 0 && v16)
        {
          *(*a4 + 16 * v23) = v13;
          v26 = *v22;
          a6 = vaddq_f32(*(*v14 + 16 * *v20), *(*a4 + 16 * v26));
          *(*a4 + 16 * v26) = a6;
        }

        else if (*(v24 + v23))
        {
          v38 = v51[9];
          v39 = *(v38 + 2 * v18);
          if (*(v38 + 2 * v18))
          {
            v40 = 0;
            v41 = v24 + v21;
            v52 = v41;
            v53 = *(v59 + 168) + v19;
            do
            {
              v42 = *(v17[5] + 2 * (v40 + *(*(v17[4] + 96) + 4 * v18)));
              v43 = v20[v42];
              v44 = v22[v40];
              *(*a4 + 16 * v44) = v13;
              if (!v16 && (*(v41 + v40) & 8) != 0)
              {
                sub_1AFDAFE18(v59, v12, v42, v67);
                if ((*(v53 + v42) & 0x10) != 0)
                {
                  if ((*(v53 + v42) & 0x20) != 0)
                  {
                    v48 = v42 == 0;
                    v46 = v57;
                    v47 = v12;
                  }

                  else
                  {
                    v46 = v57;
                    v47 = v12;
                    v48 = v42;
                  }

                  a6.f32[0] = sub_1AFDC4744(v46, v47, v48, v18);
                  v49 = 1.0 - a6.f32[0];
                  a6.f32[0] = a6.f32[0] + ((1.0 - a6.f32[0]) * 0.75);
                  v45 = v49 * 0.125;
                }

                else
                {
                  v45 = 0.125;
                  a6.i32[0] = 0.75;
                }

                v15 = v55;
                v14 = a3;
                v16 = v54;
                v17 = v57;
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * SLODWORD(v67[0])), v45);
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * SHIDWORD(v67[0])), v45);
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * v43), a6.f32[0]);
                v13 = 0uLL;
                v41 = v52;
              }

              else
              {
                a6 = vaddq_f32(*(*v14 + 16 * v43), *(*a4 + 16 * v44));
                *(*a4 + 16 * v44) = a6;
              }

              ++v40;
            }

            while (v39 != v40);
          }
        }

        else
        {
          v27 = *(*(v58 + 336) + 8 * v12);
          v60 = 0.0;
          v28 = v73;
          v29 = v73 + v27;
          v67[0] = &v60;
          v67[1] = v73;
          v67[2] = v29;
          memset(&v67[3], 0, 13);
          v62 = v12;
          v63 = v18;
          v64 = *(*(v61[0] + 336) + 8 * v12);
          v65 = *(*(v61[0] + 264) + 8 * v12);
          sub_1AF184204(&v66, v61, v67, (*(*(v58 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v18) >> 7) & 0xF, *a6.i64);
          v13 = 0uLL;
          v15 = v55;
          v30 = *v20;
          v31 = *v22;
          *(*a4 + 16 * v31) = 0u;
          if (SLODWORD(v67[4]) >= 1)
          {
            v32 = (*(v58 + 264) + 8 * v12);
            v33 = *v32;
            if (v33 >= 1)
            {
              v34 = (*(v58 + 288) + 4 * v32[1]);
              do
              {
                v35 = *v34++;
                v36 = *(v51[12] + 4 * *(v55[21] + 4 * v35));
                LODWORD(v35) = *v29++;
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a4 + 16 * v36), *&v35);
                --v33;
              }

              while (v33);
            }
          }

          v14 = a3;
          if (SHIDWORD(v67[3]) >= 1)
          {
            sub_1AFDB00B8(v59, v12, v68);
            v13 = 0uLL;
            v15 = v55;
            v14 = a3;
            if (v27 >= 1)
            {
              v37 = 0;
              do
              {
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a3 + 16 * *(v68 + v37)), *(v28 + v37));
                v37 += 4;
              }

              while (4 * v27 != v37);
            }
          }

          a6 = *(*v14 + 16 * v30);
          *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), a6, v60);
          v16 = v54;
          v17 = v57;
        }
      }

      ++v12;
    }

    while (v12 < *(v58 + 8));
    v11 = v72;
  }

  operator delete(v11);
  operator delete(v77);
}

void sub_1AF189908(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v8 = 0;
  v34 = *MEMORY[0x1E69E9840];
  v25 = *(*(*a1 + 64) + 8 * a2 - 8);
  v26 = v25[1];
  v9 = *(v25[60] + 8 * a5);
  v10 = *(*(v26 + 456) + 8 * a5);
  v11 = *(*(v25[2] + 456) + 8 * a5);
  v12 = *(v26 + 16);
  v29 = &v32;
  v30 = v12;
  v31 = 8;
  __p = 0;
  if (v12 >= 9)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v29 = v8;
    v31 = v12;
  }

  if (*(v26 + 4) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(v25[27] + 4 * v13);
      if (v14 != -1)
      {
        v15 = (v11[18] + 4 * *(v11[12] + 4 * v14));
        if (*(v11[21] + *v15))
        {
          v19 = v11[9];
          v20 = *(v19 + 2 * v14);
          if (*(v19 + 2 * v14))
          {
            v21 = 0;
            do
            {
              sub_1AFDAFFBC(v10, v13, *(*(v9 + 40) + 2 * (v21 + *(*(*(v9 + 32) + 96) + 4 * v14))), &v27);
              v22.i64[0] = 0x3F0000003F000000;
              v22.i64[1] = 0x3F0000003F000000;
              v23 = v15[v21];
              *(*a4 + 16 * v23) = 0u;
              v24 = v28;
              *(*a4 + 16 * v23) = vmlaq_f32(*(*a4 + 16 * v23), v22, *(*a3 + 16 * v27));
              *(*a4 + 16 * v23) = vmlaq_f32(*(*a4 + 16 * v23), v22, *(*a3 + 16 * v24));
              ++v21;
            }

            while (v20 != v21);
          }
        }

        else
        {
          sub_1AFDAFFBC(v10, v13, 0, &v27);
          v16.i64[0] = 0x3F0000003F000000;
          v16.i64[1] = 0x3F0000003F000000;
          v17 = *v15;
          *(*a4 + 16 * v17) = 0u;
          v18 = v28;
          *(*a4 + 16 * v17) = vmlaq_f32(*(*a4 + 16 * v17), v16, *(*a3 + 16 * v27));
          *(*a4 + 16 * v17) = vmlaq_f32(*(*a4 + 16 * v17), v16, *(*a3 + 16 * v18));
        }
      }

      ++v13;
    }

    while (v13 < *(v26 + 4));
    v8 = __p;
  }

  operator delete(v8);
}

void sub_1AF189B3C(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v49 = v6;
  v50 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v51 = *(*(v50 + 456) + 8 * a5);
  v10 = (*(v51 + 12) & 1) != 0 || **a1 == 0;
  v44 = v10;
  v11 = *(v8 + 8 * a5);
  v43 = *(v9 + 8 * a5);
  v12 = *(v50 + 20);
  v58 = &v61;
  v59 = 2 * v12;
  v60 = 32;
  v62 = 0;
  if (2 * v12 >= 0x21)
  {
    v62 = operator new(8 * v12);
    v58 = v62;
    v60 = 2 * v12;
    v12 = *(v50 + 20);
  }

  v13 = 0;
  v53 = &v56;
  v54 = v12;
  v55 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v53 = v13;
    v55 = v12;
  }

  if (*(v50 + 8) >= 1)
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = a3;
    v17 = v44;
    while (1)
    {
      v18 = *(v49[30] + 4 * v14);
      if (v18 != -1)
      {
        v19 = *(*(v51 + 96) + 4 * v14);
        v20 = (*(v51 + 144) + 4 * v19);
        v21 = *(v43[12] + 4 * v18);
        v22 = (v43[18] + 4 * v21);
        v23 = *v22;
        v24 = v43[21];
        if ((*(v24 + v23) & 1) == 0 && v17)
        {
          *(*a4 + 16 * v23) = v15;
          v26 = (*a4 + 16 * *v22);
          v27 = *v20;
        }

        else
        {
          if (*(v24 + v23))
          {
            v28 = v43[9];
            v29 = *(v28 + 2 * v18);
            if (*(v28 + 2 * v18))
            {
              v30 = 0;
              v47 = *(v51 + 168) + v19;
              v48 = *(v28 + 2 * v18);
              v31 = v24 + v21;
              v46 = v31;
              do
              {
                v32 = *(v11[5] + 2 * (v30 + *(*(v11[4] + 96) + 4 * v18)));
                v33 = v20[v32];
                v34 = v22[v30];
                *(*a4 + 16 * v34) = v15;
                if (!v17 && (*(v31 + v30) & 8) != 0)
                {
                  sub_1AFDAFE18(v51, v14, v32, v52);
                  if ((*(v47 + v32) & 0x10) != 0)
                  {
                    if ((*(v47 + v32) & 0x20) != 0)
                    {
                      v39 = v32 == 0;
                      v37 = v11;
                      v38 = v14;
                    }

                    else
                    {
                      v37 = v11;
                      v38 = v14;
                      v39 = v32;
                    }

                    v40 = sub_1AFDC4744(v37, v38, v39, v18);
                    v41 = 1.0 - v40;
                    v36 = v40 + ((1.0 - v40) * 0.75);
                    v35 = v41 * 0.125;
                  }

                  else
                  {
                    v35 = 0.125;
                    v36 = 0.75;
                  }

                  v16 = a3;
                  v17 = v44;
                  v29 = v48;
                  v42 = v52[1];
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v52[0]), v35);
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v42), v35);
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v33), v36);
                  v15 = 0uLL;
                  v31 = v46;
                }

                else
                {
                  *(*a4 + 16 * v34) = vaddq_f32(*(*v16 + 16 * v33), *(*a4 + 16 * v34));
                }

                ++v30;
              }

              while (v29 != v30);
            }

            goto LABEL_19;
          }

          v27 = *v20;
          *(*a4 + 16 * v23) = v15;
          v26 = (*a4 + 16 * v23);
        }

        *v26 = vaddq_f32(*(*v16 + 16 * v27), *v26);
      }

LABEL_19:
      if (++v14 >= *(v50 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v62);
}

void sub_1AF189EEC(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v7 = (*(v59 + 12) & 1) != 0 || *v6 == 0;
  v54 = v7;
  v57 = *(v55[60] + 8 * a5);
  v8 = *(*(v50 + 456) + 8 * a5);
  v9 = *(v58 + 20);
  v73 = &v76;
  v74 = 2 * v9;
  v75 = 32;
  v77 = 0;
  if (2 * v9 >= 0x21)
  {
    v77 = operator new(8 * v9);
    v73 = v77;
    v75 = 2 * v9;
    v9 = *(v58 + 20);
  }

  v10 = 0;
  v68 = &v71;
  v69 = v9;
  v70 = 16;
  v72 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v72 = v10;
    v68 = v10;
    v70 = v9;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v8;
    v11 = 0;
    v12 = 0uLL;
    v14 = v55;
    v13 = a3;
    v15 = v54;
    v16 = v57;
    do
    {
      v17 = *(v14[30] + 4 * v11);
      if (v17 != -1)
      {
        v18 = *(*(v59 + 96) + 4 * v11);
        v19 = (*(v59 + 144) + 4 * v18);
        v20 = *(v51[12] + 4 * v17);
        v21 = (v51[18] + 4 * v20);
        v22 = *v21;
        v23 = v51[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 16 * v22) = v12;
          *(*a4 + 16 * *v21) = vaddq_f32(*(*v13 + 16 * *v19), *(*a4 + 16 * *v21));
        }

        else if (*(v23 + v22))
        {
          v36 = v51[9];
          v37 = *(v36 + 2 * v17);
          if (*(v36 + 2 * v17))
          {
            v38 = 0;
            v39 = v23 + v20;
            v52 = v39;
            v53 = *(v59 + 168) + v18;
            do
            {
              v40 = *(v16[5] + 2 * (v38 + *(*(v16[4] + 96) + 4 * v17)));
              v41 = v19[v40];
              v42 = v21[v38];
              *(*a4 + 16 * v42) = v12;
              if (!v15 && (*(v39 + v38) & 8) != 0)
              {
                sub_1AFDAFE18(v59, v11, v40, v67);
                if ((*(v53 + v40) & 0x10) != 0)
                {
                  if ((*(v53 + v40) & 0x20) != 0)
                  {
                    v47 = v40 == 0;
                    v45 = v57;
                    v46 = v11;
                  }

                  else
                  {
                    v45 = v57;
                    v46 = v11;
                    v47 = v40;
                  }

                  v48 = sub_1AFDC4744(v45, v46, v47, v17);
                  v49 = 1.0 - v48;
                  v44 = v48 + ((1.0 - v48) * 0.75);
                  v43 = v49 * 0.125;
                }

                else
                {
                  v43 = 0.125;
                  v44 = 0.75;
                }

                v14 = v55;
                v13 = a3;
                v15 = v54;
                v16 = v57;
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * SLODWORD(v67[0])), v43);
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * SHIDWORD(v67[0])), v43);
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * v41), v44);
                v12 = 0uLL;
                v39 = v52;
              }

              else
              {
                *(*a4 + 16 * v42) = vaddq_f32(*(*v13 + 16 * v41), *(*a4 + 16 * v42));
              }

              ++v38;
            }

            while (v37 != v38);
          }
        }

        else
        {
          v25 = *(*(v58 + 336) + 8 * v11);
          v60 = 0.0;
          v26 = v73;
          v27 = v73 + v25;
          v67[0] = &v60;
          v67[1] = v73;
          v67[2] = v27;
          memset(&v67[3], 0, 13);
          v62 = v11;
          v63 = v17;
          v64 = *(*(v61[0] + 336) + 8 * v11);
          v65 = *(*(v61[0] + 264) + 8 * v11);
          sub_1AF183850(&v66, v61, v67, (*(*(v58 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v17) >> 7) & 0xF);
          v12 = 0uLL;
          v14 = v55;
          v28 = *v19;
          v29 = *v21;
          *(*a4 + 16 * v29) = 0u;
          if (SLODWORD(v67[4]) >= 1)
          {
            v30 = (*(v58 + 264) + 8 * v11);
            v31 = *v30;
            if (v31 >= 1)
            {
              v32 = (*(v58 + 288) + 4 * v30[1]);
              do
              {
                v33 = *v32++;
                v34 = *(v51[12] + 4 * *(v55[21] + 4 * v33));
                LODWORD(v33) = *v27++;
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a4 + 16 * v34), *&v33);
                --v31;
              }

              while (v31);
            }
          }

          v13 = a3;
          if (SHIDWORD(v67[3]) >= 1)
          {
            sub_1AFDB00B8(v59, v11, v68);
            v12 = 0uLL;
            v14 = v55;
            v13 = a3;
            if (v25 >= 1)
            {
              v35 = 0;
              do
              {
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a3 + 16 * *(v68 + v35)), *(v26 + v35));
                v35 += 4;
              }

              while (4 * v25 != v35);
            }
          }

          *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*v13 + 16 * v28), v60);
          v15 = v54;
          v16 = v57;
        }
      }

      ++v11;
    }

    while (v11 < *(v58 + 8));
    v10 = v72;
  }

  operator delete(v10);
  operator delete(v77);
}