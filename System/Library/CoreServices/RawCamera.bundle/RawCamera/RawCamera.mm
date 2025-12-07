uint64_t sub_233720638(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (a2 < 0xA)
  {
    return 0;
  }

  v19 = v3;
  v20 = v4;
  v18 = 42;
  result = sub_2338F9020(a1, a2, &v18);
  if (result)
  {
    v9 = *a1;
    v10 = *(a1 + 1);
    if (v9 == 77)
    {
      v10 = bswap32(v10);
      if (a2 - 2 > v10)
      {
        v11 = &a1[v10];
        v12 = &a1[v10 + 1];
        goto LABEL_8;
      }
    }

    else if (a2 - 2 > v10)
    {
      v12 = &a1[v10];
      v11 = &a1[v10 + 1];
LABEL_8:
      v13 = *v12 | (*v11 << 8);
      v14 = &a1[a2];
      if (v13)
      {
        v15 = &a1[v10 + 4] > v14;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = &a1[v10 + 16];
        while (1)
        {
          if (v9 == 77)
          {
            if (*(v16 - 14) == 198)
            {
              v17 = *(v16 - 13);
              goto LABEL_18;
            }
          }

          else if (*(v16 - 13) == 198)
          {
            v17 = *(v16 - 14);
LABEL_18:
            if (v17 == 18)
            {
              return 1;
            }
          }

          if (--v13)
          {
            v15 = v16 > v14;
            v16 += 12;
            if (!v15)
            {
              continue;
            }
          }

          break;
        }
      }

      if (!v13)
      {
        return 0;
      }
    }

    if (sub_23378E728(@"com.adobe.raw-image", a3))
    {
      return 1;
    }

    else
    {
      return sub_23378E728(@"com.dxo.raw-image", a3);
    }
  }

  return result;
}

uint64_t sub_233720794(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (sub_23378E728(@"com.leafamerica.raw-image", a3))
  {
    return 1;
  }

  if (a2 < 0xA)
  {
    return 0;
  }

  v16 = 42;
  result = sub_2338F9020(a1, a2, &v16);
  if (result)
  {
    v6 = *a1;
    v7 = v6 == 77 ? bswap32(*(a1 + 1)) : *(a1 + 1);
    result = 0;
    if ((v7 & 0x80000000) == 0 && a2 - 1 > v7)
    {
      v8 = v6 == 77;
      v9 = &a1[v7];
      if (v8)
      {
        v10 = &a1[v7];
      }

      else
      {
        v10 = v9 + 1;
      }

      v11 = *v10;
      if (v8)
      {
        ++v9;
      }

      LOWORD(v9) = *v9 | (v11 << 8);
      v12 = v7 + 2;
      if (v8)
      {
        v13 = a1 + 1;
      }

      else
      {
        v13 = a1;
      }

      if (v8)
      {
        v14 = a1;
      }

      else
      {
        v14 = a1 + 1;
      }

      do
      {
        LODWORD(v9) = v9 + 0xFFFF;
        if (v12 < a2 - 1)
        {
          result = v9 >> 16;
        }

        else
        {
          result = 0;
        }

        if (result != 1)
        {
          break;
        }

        v15 = v13[v12] | (v14[v12] << 8);
        v12 += 12;
      }

      while (v15 != 34310);
    }
  }

  return result;
}

uint64_t sub_23372089C(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = 42;
  result = sub_2338F9020(a1, a2, &v5);
  if (result)
  {
    return sub_23378E728(@"com.hasselblad.fff-raw-image", a3);
  }

  return result;
}

BOOL sub_2337208E8(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v46 = a2;
  LOWORD(v47) = 42;
  if (!sub_2338F9020(a1, a2, &v47))
  {
    return 0;
  }

  sub_233723B40(&v45, &v46);
  if (v45 >= 10)
  {
    v5 = *(a1 + 1);
    if (v5 == 0x8000000 || v5 == 8)
    {
      v6 = *a1;
      v7 = *(a1 + 4);
      v8 = bswap32(v7) >> 16;
      if (v6 == 77)
      {
        LOWORD(v7) = v8;
      }

      v43 = 10;
      v44 = v7;
      v47 = v45;
      v9 = *sub_233731EB0(&v47, &v43);
      v42 = 12;
      v47 = v9;
      v10 = sub_2337AD050(&v47, &v42);
      if (*v10 < v44)
      {
        v43 = 10;
        v47 = v45;
        v11 = *sub_233731EB0(&v47, &v43);
        v42 = 12;
        v47 = v11;
        v44 = *sub_2337AD050(&v47, &v42);
      }

      v37 = a3;
      v12 = 0;
      v13 = 0;
      v38 = 0;
      v14 = 0;
      v15 = (a1 + 10);
      while (sub_2337AC090(&v44) >= 1)
      {
        v16 = *v15;
        v17 = *v15;
        if (v6 != 77)
        {
          v12 |= v16 == 116242;
          v14 |= v17 == 50721;
          if (v16 != 262474)
          {
            goto LABEL_23;
          }

          v18 = v15[2];
LABEL_16:
          v47 = v18;
          sub_233723AE0(&v43, &v47);
          v42 = 2;
          v47 = v43;
          v19 = sub_233725A80(&v47, &v42);
          if (v45 < *v19)
          {
LABEL_21:
            v16 = *v15;
            if (v6 != 77)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          v20 = v43;
          v21 = *&a1[v43];
          v22 = bswap32(v21) >> 16;
          if (v6 == 77)
          {
            LOWORD(v21) = v22;
          }

          v41 = 2;
          v42 = v21;
          v47 = v43;
          v23 = *sub_233725A80(&v47, &v41);
          v39 = 12;
          v47 = v42;
          v40 = *sub_2337AD0B4(&v47, &v39);
          v47 = v23;
          v24 = sub_233725A80(&v47, &v40);
          if ((v45 < *v24) | v13 & 1)
          {
            v13 |= v45 >= *v24;
            goto LABEL_21;
          }

          v32 = &a1[v20 + 10];
          while (2)
          {
            v33 = sub_2337AC090(&v42);
            v13 = v33 > 0;
            if (v33 < 1)
            {
              goto LABEL_21;
            }

            v34 = *(v32 - 2);
            if (v6 == 77)
            {
              if (v34 == 100729600)
              {
                v35 = bswap32(*v32);
LABEL_39:
                if (v35 == 32803)
                {
                  goto LABEL_21;
                }
              }
            }

            else if (v34 == 196870)
            {
              v35 = *v32;
              goto LABEL_39;
            }

            v32 += 3;
            continue;
          }
        }

        v12 |= v16 == 314966272;
        v14 |= v17 == 8646;
        if (v16 == 1241580544)
        {
          v18 = bswap32(v15[2]);
          goto LABEL_16;
        }

LABEL_22:
        v16 = bswap32(v16);
LABEL_23:
        if (v16 == 131343)
        {
          v25 = v15[1];
          v26 = bswap32(v25);
          if (v6 == 77)
          {
            v25 = v26;
          }

          v47 = v25;
          sub_233723AE0(&v43, &v47);
          v27 = v15[2];
          v28 = bswap32(v27);
          if (v6 == 77)
          {
            v27 = v28;
          }

          v47 = v27;
          sub_233723AE0(&v42, &v47);
          if (v43 >= 5)
          {
            v47 = v42;
            v29 = sub_233725A80(&v47, &v43);
            if (v45 >= *v29)
            {
              v30 = sub_233751844(&v42);
              v31 = sub_233751844(&v43);
              v38 |= strnstr(&a1[v30], "Hasselblad", v31) != 0;
            }
          }
        }

        v15 += 3;
      }

      a3 = v37;
      if (!(v12 & 1 | ((v38 & v14 & 1) == 0)) && ((v13 ^ 1) & 1) == 0)
      {
        return 1;
      }
    }
  }

  return (sub_23378E728(@"com.hasselblad.3fr-raw-image", a3) & 1) != 0;
}

uint64_t sub_233720D74(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = 42;
  result = sub_2338F9020(a1, a2, &v5);
  if (result)
  {
    return sub_23378E728(@"com.pentax.raw-image", a3);
  }

  return result;
}

uint64_t sub_233720DC0(_BYTE *a1, unint64_t a2, void *a3)
{
  if (a2 >= 4 && *a1 == 73 && a1[1] == 73 && a1[2] == 42 && !a1[3])
  {
    return sub_23378E728(@"com.sony.sr2-raw-image", a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_233720E7C(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = 42;
  result = sub_2338F9020(a1, a2, &v5);
  if (result)
  {
    return sub_23378E728(@"com.epson.raw-image", a3);
  }

  return result;
}

uint64_t sub_233720EC8(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = 42;
  result = sub_2338F9020(a1, a2, &v5);
  if (result)
  {
    return sub_23378E728(@"com.kodak.raw-image", a3);
  }

  return result;
}

void **sub_233721600(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 224) = a2;
  *(a1 + 228) = a3;
  v7 = (a1 + 232);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 256);
  if ((a1 + 256) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

uint64_t sub_233721688(_DWORD *a1)
{
  v1 = a1[17];
  if (((a1[70] + 2 * v1) & 0xFLL) != 0)
  {
    return (2 * (a1[15] + 2 * v1) + 31) & 0x3FFFFFFE0;
  }

  else
  {
    return 2 * (a1[70] + 2 * v1);
  }
}

uint64_t sub_2337216C0(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_233721758;
  block[3] = &unk_2789EE800;
  block[4] = a1;
  if (*(a1 + 393512) != -1)
  {
    dispatch_once((a1 + 393512), block);
  }

  return a1 + 288;
}

void sub_233721758(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2 + 393216;
  v4 = *(v2 + 192);
  v5 = *(v2 + 200) - v4;
  if (v5 && (v6 = v5 >> 1, (v5 >> 1) <= 0x10000))
  {
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 >> 1;
    }

    v8 = v7;
    v9 = (v2 + 288);
    do
    {
      v10 = *v4++;
      *v9++ = v10;
      --v8;
    }

    while (v8);
    if (!(v6 >> 16))
    {
      v11 = *(v2 + 288 + 2 * (v7 - 1));
      v12 = (v2 + 2 * v7 + 288);
      v13 = v7 + 1;
      do
      {
        *v12++ = v11;
      }

      while (v13++ != 0x10000);
    }

    *(v3 + 288) = 1;
  }

  else
  {
    v16 = *(v2 + 393528);
    v15 = *(v2 + 393536);
    if (v15 - v16 == 48)
    {
      *(v2 + 393504) = 3;
      if (v16 != v15)
      {
        v17 = v2 + 288;
        do
        {
          v18 = *v16;
          if (*v16 && (v18 = __dynamic_cast(v18, &unk_2849027A8, &unk_284934FF8, 0)) != 0)
          {
            v19 = *(v16 + 8);
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v19 = 0;
          }

          v20 = *(v18 + 7);
          if (v20 > 2)
          {
            v31 = sub_2338C0490(v18, a2);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 67109376;
              *&buf[4] = v20;
              LOWORD(v36) = 2048;
              *(&v36 + 2) = 3;
              _os_log_impl(&dword_23371F000, v31, OS_LOG_TYPE_INFO, "Plane %d will be ignored. Only expected up to %zu planes\n", buf, 0x12u);
            }
          }

          else
          {
            v21 = v18[6];
            v22 = v18[7];
            v23 = (v22 - v21) >> 3;
            *buf = 0;
            v36 = 0uLL;
            sub_2337236E0(buf, v21, v22, v23);
            v24 = 0;
            v25 = v23 - 1;
            v26 = *buf;
            v27 = v20 << 16;
            do
            {
              v28 = 0;
              v29 = 0.0;
              do
              {
                v30 = v26[v28];
                v29 = v29 + v30 * pow((v24 / 65535.0), v28++);
              }

              while (v25 >= v28);
              *(v17 + 2 * (v24 + v27)) = (v29 * 65535.0);
              ++v24;
            }

            while (v24 != 0x10000);
            *&v36 = v26;
            operator delete(v26);
          }

          if (v19)
          {
            sub_2337239E8(v19);
          }

          v16 += 16;
        }

        while (v16 != v15);
      }
    }

    else
    {
      v32 = 0;
      *(v2 + 393504) = 1;
      v33 = xmmword_233903BA0;
      v34.i64[0] = 0x8000800080008;
      v34.i64[1] = 0x8000800080008;
      do
      {
        *(v2 + 288 + v32) = v33;
        v33 = vaddq_s16(v33, v34);
        v32 += 16;
      }

      while (v32 != 0x20000);
    }
  }
}

void *sub_233721A74(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a3;
  v9 = 64;
  v10 = a2;
  v11 = a3;
  v5 = sub_233723BA0(&v11, &v9);
  v6 = malloc_type_malloc(*v5, 0x100004077774924uLL);
  v7 = *(a1 + 24);
  sub_233723AE0(&v11, &v10);
  (*(*v7 + 40))(v7, &v11, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v6, v4);
  return v6;
}

void sub_233721B50(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x233721B38);
}

void sub_233721B8C(os_signpost_id_t a1, char *a2, int *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v77 = *MEMORY[0x277D85DE8];
  v11 = sub_23378E038(a1);
  v12 = v11;
  if (a1 + 1 >= 2 && os_signpost_enabled(v11))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGJPEGXLUnpacker::unpackTile", &unk_233945DBE, buf, 2u);
  }

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_23372253C;
  v65[3] = &unk_2789EE800;
  v65[4] = a1;
  v13 = MEMORY[0x2383AC810](v65);
  JxlDecoderCreate();
  v14 = a3;
  if (!JxlThreadParallelRunnerCreate() || JxlDecoderSetParallelRunner())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  JxlDecoderSubscribeEvents();
  if (JxlDecoderSetInput() || JxlDecoderProcessInput() != 64)
  {
    v46 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v46, "RawCameraException");
    __cxa_throw(v46, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  memset(v76, 0, sizeof(v76));
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  memset(buf, 0, sizeof(buf));
  if (JxlDecoderGetBasicInfo() || JxlDecoderProcessInput() != 256)
  {
    v47 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v47, "RawCameraException");
    __cxa_throw(v47, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!DWORD1(v67) && (JxlDecoderGetColorAsEncodedProfile() || JxlDecoderSetPreferredColorProfile()))
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v52, "RawCameraException");
    __cxa_throw(v52, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a9)
  {
    v15 = 3;
  }

  else
  {
    v15 = 4;
  }

  v64 = v15;
  if (JxlDecoderImageOutBufferSize())
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v48, "RawCameraException");
    __cxa_throw(v48, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = a3[2];
  v16 = a3[3];
  if (!(2 * v64 * v16 * v17) && (v19 = *a3, v18 = a3[1], v18 == a5[1]) && v19 == *a5)
  {
    v20 = 0;
    x = v19;
    y = v18;
    width = v17;
    v24 = a2;
    height = v16;
  }

  else
  {
    v26 = [MEMORY[0x277CBEB28] dataWithLength:0];
    v27 = v26;
    v14 = a3;
    v24 = [v26 mutableBytes];
    v78.origin.x = *a3;
    v78.origin.y = a3[1];
    v78.size.width = a3[2];
    v78.size.height = a3[3];
    v80.origin.x = *a5;
    v80.origin.y = a5[1];
    v80.size.width = a5[2];
    v80.size.height = a5[3];
    v79 = CGRectIntersection(v78, v80);
    x = v79.origin.x;
    y = v79.origin.y;
    width = v79.size.width;
    height = v79.size.height;
    v20 = v26;
  }

  if (JxlDecoderSetImageOutBuffer())
  {
    v49 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v49, "RawCameraException");
    __cxa_throw(v49, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (JxlDecoderSetImageOutBitDepth() || JxlDecoderProcessInput() != 4096)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v50, "RawCameraException");
    __cxa_throw(v50, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a4)
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v51, "RawCameraException");
    __cxa_throw(v51, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v54 = v24;
  v53 = v20;
  v58 = y;
  v57 = (y + height);
  if (y < v57)
  {
    v63 = (x + width);
    v59 = (*(a1 + 393504) != 1) << 17;
    v60 = (*(a1 + 393504) != 1) << 16;
    while (x >= v63)
    {
LABEL_49:
      if (++v58 == v57)
      {
        goto LABEL_50;
      }
    }

    v28 = x;
    v29 = &a2[(v58 - v14[1]) * a4];
    v30 = &v54[2 * (v58 - a5[1]) * v64 * a5[2]];
    while (1)
    {
      v31 = v28 - *v14;
      v32 = &v30[2 * (v28 - *a5) * v64];
      v33 = *v32;
      if (*(a1 + 393520) != 1)
      {
        break;
      }

      v34 = v13;
      v35 = *(v32 + 1);
      v36 = *(v32 + 2);
      v37 = sub_2337AF4A8(a1);
      v38 = __rev16(v35);
      v39 = __rev16(v33);
      v40 = __rev16(v36);
      if (v37 != 2)
      {
        v39 = v33;
        v38 = v35;
      }

      v41 = &v29[2 * v31 * v64];
      *v41 = v39;
      if (v37 == 2)
      {
        v42 = v40;
      }

      else
      {
        v42 = v36;
      }

      *(v41 + 1) = v38;
      *(v41 + 2) = v42;
      v13 = v34;
      v14 = a3;
      if (a9)
      {
        goto LABEL_46;
      }

      if (qword_27DE175F0 != -1)
      {
        goto LABEL_48;
      }

LABEL_45:
      *(v41 + 3) = HIWORD(xmmword_27DE175F8[0x1FFF]);
LABEL_46:
      if (v63 == ++v28)
      {
        goto LABEL_49;
      }
    }

    if (qword_27DE175F0 != -1)
    {
      sub_2338F83CC();
      v14 = a3;
    }

    v41 = &v29[2 * v31 * v64];
    *v41 = *(xmmword_27DE175F8 + *(a8 + 2 * v33));
    v43 = *(v32 + 1);
    if (qword_27DE175F0 != -1)
    {
      sub_2338F83CC();
      v14 = a3;
    }

    *(v41 + 1) = *(xmmword_27DE175F8 + *(a8 + 2 * (v60 | v43)));
    v44 = *(v32 + 2);
    if (qword_27DE175F0 != -1)
    {
      sub_2338F83CC();
      v14 = a3;
    }

    *(v41 + 2) = *(xmmword_27DE175F8 + *(a8 + 2 * (v59 | v44)));
    if (a9)
    {
      goto LABEL_46;
    }

    if (qword_27DE175F0 == -1)
    {
      goto LABEL_45;
    }

LABEL_48:
    sub_2338F83CC();
    v14 = a3;
    goto LABEL_45;
  }

LABEL_50:
  JxlThreadParallelRunnerDestroy();
  JxlDecoderDestroy();

  v13[2](v13);
}

void sub_23372246C(_Unwind_Exception *a1)
{
  v2[2](v2);

  _Unwind_Resume(a1);
}

void sub_23372253C(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGJPEGXLUnpacker::unpackTile", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337225C4(os_signpost_id_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = sub_23378E038(a1);
  v7 = v6;
  if (a1 + 1 >= 2 && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGJPEGXLUnpacker", &unk_233945DBE, buf, 2u);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_233722B00;
  v37[3] = &unk_2789EE800;
  v37[4] = a1;
  v8 = MEMORY[0x2383AC810](v37);
  v10 = *(a1 + 44);
  v9 = *(a1 + 48);
  v11 = *(a1 + 224);
  v12 = *(a1 + 228);
  *buf = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723B40(&v36, buf);
  v14 = *(a1 + 256);
  v13 = *(a1 + 264);
  if (*(a1 + 240) - *(a1 + 232) != v13 - v14 || (v10 - 100000) < 0xFFFE7961 || (v9 - 100000) < 0xFFFE7961 || v11 - 100000 < 0xFFFE7961 || v12 - 100000 < 0xFFFE7961 || (v15 = v36, v36 >= 20000))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((v9 + v12 - 1) / v12 * ((v10 + v11 - 1) / v11) != v36)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v25, "RawCameraException");
    __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      *buf = v16;
      v16 = *sub_233723874(buf, v14++);
    }

    while (v14 != v13);
  }

  v27 = v8;
  v17 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if ((v16 & 0x80000000) == 0 && v16 >= v17)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v26, "RawCameraException");
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  group = dispatch_group_create();
  v30 = dispatch_queue_create("JPEGXL DNG Tile Unpacker Queue", MEMORY[0x277D85CD8]);
  if (v15)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      *buf = v19;
      *&buf[4] = v20;
      *&buf[8] = v11;
      *&buf[12] = v12;
      if (sub_23385F470(buf, a3))
      {
        v21 = sub_233721A74(a1, *(*(a1 + 232) + v18), *(*(a1 + 256) + v18));
        if (v21)
        {
          v22 = *(*(a1 + 256) + v18);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_233722B88;
          block[3] = &unk_2789EE820;
          block[4] = a1;
          block[5] = v21;
          v33 = v22;
          block[6] = a2;
          block[7] = a3;
          block[8] = a4;
          v34 = *buf;
          dispatch_group_async(group, v30, block);
        }
      }

      if ((v19 + v11) >= v10)
      {
        v23 = v12;
      }

      else
      {
        v23 = 0;
      }

      v20 += v23;
      if ((v19 + v11) >= v10)
      {
        v19 = 0;
      }

      else
      {
        v19 += v11;
      }

      v18 += 4;
    }

    while (4 * v15 != v18);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);

  v27[2](v27);
}

void sub_233722B00(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGJPEGXLUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_233722B88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = sub_2337216C0(v2);
  sub_233721B8C(v2, v5, v6, v7, (a1 + 76), v3, v3 + v4, v8, 0);
  v9 = *(a1 + 40);

  free(v9);
}

void sub_233722C1C(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CDNGJPEGXLUnpacker", &unk_233945DBE, buf, 2u);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_23372316C;
  v43[3] = &unk_2789EE800;
  v43[4] = a1;
  v4 = MEMORY[0x2383AC810](v43);
  v5 = *(a1 + 44);
  v31 = *(a1 + 48);
  v6 = *(a1 + 224);
  v7 = *(a1 + 228);
  *buf = (*(a1 + 240) - *(a1 + 232)) >> 2;
  sub_233723C18(&v42, buf);
  v8 = v42;
  v28 = (*(*a1 + 40))(a1);
  v10 = *(a1 + 256);
  v9 = *(a1 + 264);
  if (*(a1 + 240) - *(a1 + 232) != v9 - v10 || v5 - 100000 < 0xFFFE7961 || (v31 - 100000) < 0xFFFE7961 || v6 - 100000 < 0xFFFE7961 || v7 - 100000 < 0xFFFE7961 || v8 >> 5 >= 0x271)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((v31 + v7 - 1) / v7 * ((v5 + v6 - 1) / v6) != v8)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v25, "RawCameraException");
    __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v10 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      *buf = v11;
      v11 = *sub_233723874(buf, v10++);
    }

    while (v10 != v9);
  }

  v12 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if ((v11 & 0x80000000) == 0 && v11 >= v12)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v26, "RawCameraException");
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v27 = v4;
  group = dispatch_group_create();
  v29 = dispatch_queue_create("JPEGXL DNG Tile Unpacker Queue", MEMORY[0x277D85CD8]);
  v13 = sub_2337ADCC4(a1);
  if (v8)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = v8;
    v18 = 0;
    v19 = 4 * v17;
    do
    {
      v20 = sub_233721A74(a1, *(*(a1 + 232) + v15), *(*(a1 + 256) + v15));
      if (v20)
      {
        v21 = *(*(a1 + 256) + v15);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2337231F4;
        block[3] = &unk_2789EE840;
        block[4] = a1;
        block[5] = v20;
        block[6] = v14;
        v33 = v21;
        v34 = v5;
        v35 = v31;
        v36 = v28;
        v37 = v18;
        v38 = v16;
        v39 = v6;
        v40 = v7;
        dispatch_group_async(group, v29, block);
      }

      v15 += 4;
      v22 = v18 + v6;
      if (v18 + v6 >= v5)
      {
        v18 = 0;
      }

      else
      {
        v18 += v6;
      }

      if (v22 >= v5)
      {
        v23 = v7;
      }

      else
      {
        v23 = 0;
      }

      v16 += v23;
    }

    while (v19 != v15);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);

  v27[2](v27);
}

void sub_23372316C(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CDNGJPEGXLUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337231F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 60);
  v7 = *(a1 + 64);
  v15 = 0;
  sub_2337238F0(&v16, v5, v7);
  v8 = 2 * (*(a1 + 68) * *(a1 + 60));
  v9 = *(a1 + 80);
  v10 = *(a1 + 84);
  sub_2337238F0(&v13, *(a1 + 72), *(a1 + 76));
  sub_2337238F0(&v14, v9, v10);
  v11 = *(a1 + 40);
  v12 = sub_2337216C0(v2);
  sub_233721B8C(v2, v4, &v15, v8, &v13, v11, v3 + v6, v12, 1);
  free(*(a1 + 40));
}

void *sub_2337232D0(void *a1)
{
  *a1 = &unk_284902670;
  v6 = (a1 + 49191);
  sub_233723948(&v6);
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  *a1 = &unk_28491FFD8;
  v4 = a1[24];
  if (v4)
  {
    a1[25] = v4;
    operator delete(v4);
  }

  return sub_233723A54(a1);
}

uint64_t sub_23372337C(void *a1)
{
  *a1 = &unk_284902670;
  v7 = (a1 + 49191);
  sub_233723948(&v7);
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  *a1 = &unk_28491FFD8;
  v4 = a1[24];
  if (v4)
  {
    a1[25] = v4;
    operator delete(v4);
  }

  v5 = sub_233723A54(a1);
  return MEMORY[0x2383ABF10](v5, 0x10B1C40F106A1A5);
}

void **sub_233723454(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_233723580(v6, v10);
    }

    sub_2337235BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_233723580(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_2337235D4(a1, a2);
  }

  sub_2337235BC();
}

void sub_2337235D4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_2337236AC();
}

void sub_23372361C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_233723678(exception, a1);
  __cxa_throw(exception, off_2789EE7F0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_233723678(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2337236AC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t *sub_2337236E0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_23372375C(result, a4);
  }

  return result;
}

void sub_233723740(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372375C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_233723798(a1, a2);
  }

  sub_2337235BC();
}

void sub_233723798(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2337236AC();
}

int64x2_t sub_2337237E0()
{
  v0 = 0;
  result = xmmword_233903BC0;
  v2 = xmmword_233903BD0;
  v3 = xmmword_233903BE0;
  v4 = vdupq_n_s32(0x477FFF00u);
  v5 = xmmword_233903BB0;
  v6 = vdupq_n_s64(8uLL);
  do
  {
    xmmword_27DE175F8[v0] = vcvt_hight_f16_f32(vcvt_f16_f32(vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v5)), vcvtq_f64_u64(v3)), v4)), vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v2)), vcvtq_f64_u64(result)), v4));
    v2 = vaddq_s64(v2, v6);
    v3 = vaddq_s64(v3, v6);
    v5 = vaddq_s64(v5, v6);
    result = vaddq_s64(result, v6);
    ++v0;
  }

  while (v0 != 0x2000);
  return result;
}

int *sub_233723874(int *result, unsigned int *a2)
{
  v2 = *result + *a2;
  *result = v2;
  v5 = v2 == (v2 << 31) >> 31;
  v3 = v2 & 0x1FFFFFFFFLL;
  v4 = v2 & 0x1FFFFFFFFLL;
  v5 = v5 && v4 == v3;
  if (!v5)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_2337238F0(_DWORD *a1, int a2, int a3)
{
  v6 = a3;
  v7 = a2;
  sub_233723AE0(&v5, &v7);
  *a1 = v5;
  sub_233723AE0(&v5, &v6);
  a1[1] = v5;
  return a1;
}

void sub_233723948(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_23372399C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_23372399C(uint64_t *result)
{
  v2 = *result;
  for (i = result[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_2337239E8(v4);
    }
  }

  result[1] = v2;
}

void sub_2337239E8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_233723A54(void *a1)
{
  *a1 = &unk_28490A6D8;
  v2 = a1[20];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

int *sub_233723AE0(int *result, int *a2)
{
  *result = 0;
  v2 = *a2;
  *result = *a2;
  if (v2 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233723B40(_DWORD *result, unint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2 >> 31)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_233723BA0(void *result, int *a2)
{
  v2 = *a2;
  v3 = v2 >> 63;
  v4 = __CFADD__(*result, v2);
  v5 = *result + v2;
  if (v4)
  {
    ++v3;
  }

  v6 = v3 << 63 >> 63;
  *result = v5;
  if (v6 != v3 || v6 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233723C18(_DWORD *result, unint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (HIDWORD(v2))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

id sub_233723C8C(void *a1)
{
  v1 = a1;
  v2 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];
  v3 = [v1 objectForKeyedSubscript:@"inputVersion"];
  v4 = [v3 intValue];

  v5 = [MEMORY[0x277CBEB18] array];
  v6 = v5;
  if (v4 <= 6)
  {
    [v5 addObject:@"inputBaselineExposure"];
LABEL_4:
    [v6 addObjectsFromArray:&unk_284954970];
    goto LABEL_5;
  }

  if (v4 == 7)
  {
    goto LABEL_4;
  }

LABEL_5:
  v7 = [v1 mutableCopy];
  [v7 removeObjectsForKeys:v6];
  if (v4 >= 8)
  {
    v8 = [v1 objectForKeyedSubscript:@"inputIsGenericDNG"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      [v7 setObject:&unk_284954EF8 forKeyedSubscript:@"inputVersion"];
    }
  }

  [v2 takeAttributesFromDictionary:v7];
  [v2 setValue:sub_2338F28E4() forKey:@"inputColorSpace"];

  return v2;
}

void sub_233723DF4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_233723E44(void *a1)
{
  v1 = a1;
  v2 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];
  v3 = [v1 objectForKeyedSubscript:@"inputVersion"];
  v4 = [v3 intValue];

  v5 = [MEMORY[0x277CBEB18] array];
  v6 = v5;
  if (v4 <= 7)
  {
    [v5 addObjectsFromArray:&unk_284954988];
  }

  v7 = [v1 mutableCopy];
  [v7 removeObjectsForKeys:v6];
  if (v4 == 9)
  {
    v8 = [MEMORY[0x277CBF788] vectorWithX:1000.0 Y:1000.0 Z:1000.0 W:1000.0];
    [v7 setObject:v8 forKeyedSubscript:@"inputBlacks"];
  }

  [v2 takeAttributesFromDictionary:v7];

  return v2;
}

void sub_233723F78(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_233723FCC(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [v1 objectForKeyedSubscript:@"inputGainMapExecute"];
  if ([v3 BOOLValue])
  {
    v4 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];
    [v4 takeAttributesFromDictionary:v1];
    [v2 addObject:v4];
  }

  v5 = [v1 objectForKeyedSubscript:@"inputVignetteExecute"];
  if ([v5 BOOLValue])
  {
    v6 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];
    [v6 takeAttributesFromDictionary:v1];
    [v2 addObject:v6];
  }

  v7 = [v1 objectForKeyedSubscript:@"inputVignetteTableExecute"];
  if ([v7 BOOLValue])
  {
    v8 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];
    [v8 takeAttributesFromDictionary:v1];
    [v8 setValue:sub_2338F28E4() forKey:@"inputColorSpace"];
    [v2 addObject:v8];
  }

  v9 = [v1 objectForKeyedSubscript:@"inputLDCExecuteFlags"];
  v10 = [v1 objectForKeyedSubscript:@"inputScales"];
  if (v10 && [v9 intValue])
  {
    v11 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];
    [v11 setValue:v9 forKey:@"inputLDCExecuteFlags"];
    [v11 setValue:v10 forKey:@"inputScales"];
    [v11 setValue:sub_2338F28E4() forKey:@"inputColorSpace"];
    [v2 addObject:v11];
  }

  v12 = [v1 objectForKeyedSubscript:@"inputKr"];
  if (v12)
  {
    v13 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];
    v14 = [v1 objectForKeyedSubscript:@"inputCenter"];
    [v13 setValue:v14 forKey:@"inputCenter"];

    [v13 setValue:v12 forKey:@"inputKr"];
    v15 = [v1 objectForKeyedSubscript:@"inputKt"];
    [v13 setValue:v15 forKey:@"inputKt"];

    [v13 setValue:sub_2338F28E4() forKey:@"inputColorSpace"];
    [v2 addObject:v13];
  }

  return v2;
}

id sub_2337243C8(int a1, void *a2, int a3, int a4, uint64_t *a5, void *a6)
{
  v11 = a2;
  v66 = a6;
  v67 = v11;
  sub_233724DCC(v69, a5);
  v12 = [MEMORY[0x277CBEB18] array];
  context = objc_autoreleasePoolPush();
  v13 = [v11 mutableCopy];
  v14 = MEMORY[0x2383AC810](v66);
  [v13 setObject:v14 forKey:@"valueBlock"];

  v15 = [v13 objectForKeyedSubscript:@"inputVersion"];
  v16 = [v15 intValue];

  v17 = [v13 objectForKeyedSubscript:@"inputLinearized"];
  v18 = [v17 intValue];

  v19 = [v13 objectForKeyedSubscript:@"inputIsNoiseReductionEnabled"];
  v20 = [v19 BOOLValue];

  v21 = [v13 objectForKeyedSubscript:@"inputScaleFactor"];
  if (v21)
  {
    v22 = [v13 objectForKeyedSubscript:@"inputScaleFactor"];
    [v22 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = a1 ^ 1;
  if (a4 == 3)
  {
    v26 = a1;
  }

  else
  {
    v26 = a1 ^ 1;
  }

  if (a3 != 3)
  {
    v26 = 0;
  }

  if (a4)
  {
    if (a3 && a4 == 1)
    {
      if (v26)
      {
        goto LABEL_13;
      }

LABEL_20:
      if (!v25)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    if ((a3 & 0xFFFFFFFE) != 2 || (a4 & 0xFFFFFFFE) != 2)
    {
      a1 = 0;
    }

    v25 = a1;
    if (!v26)
    {
      goto LABEL_20;
    }
  }

  else
  {
    a1 ^= 1u;
    if (!v26)
    {
      goto LABEL_20;
    }
  }

LABEL_13:
  v27 = sub_233723E44(v13);
  [v27 setValue:0 forKey:@"inputCropRect"];
  if (v24 >= 1.0)
  {
    v28 = MEMORY[0x277CBEC28];
  }

  else
  {
    v28 = MEMORY[0x277CBEC38];
  }

  [v27 setValue:v28 forKey:@"inputDraftMode"];
  [v12 addObject:v27];

  if (!v25)
  {
LABEL_17:
    if (!a1)
    {
      goto LABEL_66;
    }

    goto LABEL_44;
  }

LABEL_21:
  if (v24 < 1.0)
  {
    v29 = [MEMORY[0x277CBF750] filterWithName:@"CIAffineTransform"];
    memset(&v68, 0, sizeof(v68));
    CGAffineTransformMakeScale(&v68, v24, v24);
    v30 = [MEMORY[0x277CCAE60] valueWithBytes:&v68 objCType:"{CGAffineTransform=dddddd}"];
    [v29 setValue:v30 forKey:@"inputTransform"];

    [v12 addObject:v29];
  }

  v31 = [v13 objectForKeyedSubscript:@"inputXScale"];
  if (v31)
  {
    v32 = [v13 objectForKeyedSubscript:@"inputXScale"];
    [v32 doubleValue];
    v34 = v33;
  }

  else
  {
    v34 = 1.0;
  }

  v36 = [v13 objectForKeyedSubscript:@"inputYScale"];
  if (v36)
  {
    v37 = [v13 objectForKeyedSubscript:@"inputYScale"];
    [v37 doubleValue];
    v39 = v38;
  }

  else
  {
    v39 = 1.0;
  }

  if (fabs(v34 + -1.0) > 0.01 || fabs(v39 + -1.0) > 0.01)
  {
    v40 = MEMORY[0x277CBF750];
    v41 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:v34 / v39];
    v43 = [v40 filterWithName:@"CILanczosScaleTransform" keysAndValues:{@"inputScale", v41, @"inputAspectRatio", v42, 0}];

    if (v43)
    {
      [v12 addObject:v43];
    }
  }

  v44 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];
  [v44 takeAttributesFromDictionary:v13];
  [v12 addObject:v44];

  if (v20)
  {
    v45 = sub_233723C8C(v13);
    [v12 addObject:v45];
  }

  v46 = sub_233723FCC(v13);
  [v12 addObjectsFromArray:v46];

  if (a1)
  {
LABEL_44:
    if (v16 < 7)
    {
      v47 = sub_2338F2BB4();
    }

    else
    {
      v47 = sub_2338F2B1C();
    }

    v48 = v47;
    v49 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];
    v64 = [v13 mutableCopy];
    if (!v18)
    {
      [v64 removeObjectForKey:@"inputBlacks"];
    }

    [v49 takeAttributesFromDictionary:v64];
    if (!v18)
    {
      [v49 setValue:&unk_284954F10 forKey:@"inputRange"];
      [v49 setValue:&unk_284958918 forKey:@"inputFactor"];
    }

    [v12 addObject:v49];
    v50 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];

    [v50 takeAttributesFromDictionary:v13];
    [v12 addObject:v50];
    v51 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];
    [v12 addObject:v51];

    v52 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];

    [v52 takeAttributesFromDictionary:v13];
    [v52 setValue:v48 forKey:@"inputColorSpace"];
    [v12 addObject:v52];
    if (v16 < 9)
    {
      v54 = v52;
    }

    else
    {
      v53 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];

      [v53 setValue:v48 forKey:@"inputColorSpace"];
      v54 = v53;
      [v12 addObject:v53];
    }

    v55 = [v13 allKeys];
    v56 = [v55 containsObject:@"inputMapPointsV"];

    if (v56)
    {
      v57 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];

      [v57 setValue:v48 forKey:@"inputColorSpace"];
      [v57 takeAttributesFromDictionary:v13];
      v54 = v57;
      [v12 addObject:v57];
    }

    v58 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];

    [v58 setDefaults];
    [v58 setValue:v48 forKey:@"inputColorSpace"];
    if (v16 >= 6)
    {
      [v58 takeAttributesFromDictionary:v13 forKeys:&unk_2849549A0];
      if (v16 >= 7)
      {
        [v58 takeAttributesFromDictionary:v13 forKeys:&unk_2849549B8];
      }
    }

    [v12 addObject:v58];
    v59 = [RAWFilter filterWithDefaultsForClass:objc_opt_class()];

    [v59 takeAttributesFromDictionary:v13];
    v60 = getenv("RAWCAMERA_BOOSTSPACE");
    if (v60)
    {
      v61 = v60;
      if ((__tolower(*v60) != 97 || v61[1]) && __tolower(*v61) == 98 && !v61[1])
      {
        v48 = sub_2338F2A18();
      }
    }

    [v59 setValue:v48 forKey:@"inputColorSpace"];
    [v12 addObject:v59];
  }

LABEL_66:

  objc_autoreleasePoolPop(context);
  v62 = [MEMORY[0x277CBEA60] arrayWithArray:v12];

  *&v68.a = &v71;
  sub_233723948(&v68);
  *&v68.a = &v70;
  sub_233723948(&v68);
  *&v68.a = v69;
  sub_233723948(&v68);

  return v62;
}

void sub_233724CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  sub_233725098(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_233724DCC(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_233724E88(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_233724E88(a1 + 3, a2[3], a2[4], (a2[4] - a2[3]) >> 4);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_233724E88(a1 + 6, a2[6], a2[7], (a2[7] - a2[6]) >> 4);
  return a1;
}

void sub_233724E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_233723948(va);
  sub_233723948(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_233724E88(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_233724F10(result, a4);
  }

  return result;
}

void sub_233724EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_233723948(&a9);
  _Unwind_Resume(a1);
}

void sub_233724F10(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_233724F4C(a1, a2);
  }

  sub_2337235BC();
}

void sub_233724F4C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2337236AC();
}

void *sub_233724F94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_23372501C(v7);
  return v4;
}

uint64_t sub_23372501C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_233725054(a1);
  }

  return a1;
}

void sub_233725054(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_2337239E8(v3);
    }

    v1 -= 16;
  }
}

void **sub_233725098(void **a1)
{
  v3 = a1 + 6;
  sub_233723948(&v3);
  v3 = a1 + 3;
  sub_233723948(&v3);
  v3 = a1;
  sub_233723948(&v3);
  return a1;
}

uint64_t sub_2337251D0(uint64_t a1, const void *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849027C8;
  *(a1 + 24) = 2;
  sub_2337268D8((a1 + 32), qword_233903C28);
  *(a1 + 36) = 0;
  *(a1 + 40) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  return a1;
}

void sub_233725244(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23372525C(void *a1)
{
  *a1 = &unk_2849027C8;
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_2337252C0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return MEMORY[0x282122B38]();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2337252E0(uint64_t a1)
{
  v2 = (*(*a1 + 48))(a1);
  v4 = 0;
  v5 = v2;
  (*(*a1 + 40))(a1, &v4, 2);
  v4 = (*(*a1 + 48))(a1);
  sub_233726938(&v6, &v4);
  (*(*a1 + 40))(a1, &v5, 0);
  return v6;
}

void sub_2337253CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  __cxa_begin_catch(a1);
  a10 = 0;
  sub_233726998(&a11, &a10);
  __cxa_end_catch();
  JUMPOUT(0x2337253B8);
}

uint64_t sub_233725430(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  sub_2337269FC(&v11, a1 + 1);
  sub_233726A8C(&v10, a4);
  sub_233725F08(v13, &v11, &v10, 0);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  v8 = (*(*a1 + 32))(a1, a2, a3);
  sub_233725FD4(v13);
  return v8;
}

void sub_2337254E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_233725510(uint64_t a1)
{
  v2 = 0;
  sub_233725540(a1, &v2, 1);
  return v2;
}

uint64_t sub_233725540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 32))(a1, a2);
  if (a3 != result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_2337255C0(uint64_t a1)
{
  v5 = 0;
  sub_233725540(a1, &v5, 2);
  v2 = bswap32(v5) >> 16;
  if (*(a1 + 24) == 2)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_233725614(uint64_t a1)
{
  v4 = 0;
  sub_233725540(a1, &v4, 4);
  v2 = bswap32(v4);
  if (*(a1 + 24) == 2)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_233725660(uint64_t a1)
{
  v4 = 0;
  sub_233725540(a1, &v4, 8);
  v2 = bswap64(v4);
  if (*(a1 + 24) == 2)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2337256AC(uint64_t a1)
{
  v2 = 0;
  sub_233725540(a1, &v2, 1);
  return v2;
}

uint64_t sub_2337256DC(uint64_t a1)
{
  v5 = 0;
  sub_233725540(a1, &v5, 2);
  v2 = bswap32(v5) >> 16;
  if (*(a1 + 24) == 2)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

BOOL sub_2337257E8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  __p[25] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (*a2 > 0xC7)
  {
    if (v6 >= 0x40000)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v18 = 1;
    v20 = v6;
    v11 = sub_233726AE8(&v20, &v18);
    sub_233726154(__p, *v11);
    v12 = (*(*a1 + 32))(a1);
    v8 = v12;
    v19 = v12;
    v13 = *a2;
    v10 = v12 == *a2;
    if (v12 == v13)
    {
      *(__p[0] + v12) = 0;
      sub_23372610C(a3, __p[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v7 = (*(*a1 + 32))(a1, __p);
    v8 = v7;
    v19 = v7;
    v9 = *a2;
    v10 = v7 == *a2;
    if (v7 == v9)
    {
      *(__p + v7) = 0;
      sub_23372610C(a3, __p);
    }
  }

  v14 = *(a3 + 23);
  if (v14 < 0)
  {
    v14 = *(a3 + 8);
  }

  __p[0] = v14;
  sub_233723C18(&v20, __p);
  if (v20 < v8)
  {
    v15 = *(a3 + 23);
    if (v15 < 0)
    {
      v15 = *(a3 + 8);
    }

    __p[0] = v15;
    sub_233723B40(&v20, __p);
    LODWORD(__p[0]) = 1;
    sub_233725A80(&v20, __p);
    sub_233725AE4(&v20, &v19);
    (*(*a1 + 40))(a1, &v20, 1);
  }

  if (!v10)
  {
    return 0;
  }

  v16 = *(a3 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a3 + 8);
  }

  return v16 != 0;
}

void sub_233725A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_233725A80(_DWORD *result, _DWORD *a2)
{
  v2 = __OFADD__(*result, *a2);
  *result += *a2;
  if (v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

int *sub_233725AE4(int *result, unsigned int *a2)
{
  v2 = *result - *a2;
  *result = v2;
  v5 = v2 == (v2 << 31) >> 31;
  v3 = v2 & 0x1FFFFFFFFLL;
  v4 = v2 & 0x1FFFFFFFFLL;
  v5 = v5 && v4 == v3;
  if (!v5)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_233725B60@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = 2;
  v11 = *a2;
  v6 = *sub_233726B58(&v11, &v10);
  if ((*(*a1 + 16))(a1) < v6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_233726218(a3, *a2);
  result = sub_233725540(a1, *a3, a3[1] - *a3);
  if (a1[3] != 1)
  {
    v8 = *a3;
    v9 = a3[1];
    while (v8 != v9)
    {
      *v8 = bswap32(*v8) >> 16;
      ++v8;
    }
  }

  return result;
}

void sub_233725C50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233725C7C@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = 4;
  v11 = *a2;
  v6 = *sub_233726B58(&v11, &v10);
  if ((*(*a1 + 16))(a1) < v6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_23372630C(a3, *a2);
  result = sub_233725540(a1, *a3, a3[1] - *a3);
  if (a1[3] != 1)
  {
    v8 = *a3;
    v9 = a3[1];
    while (v8 != v9)
    {
      *v8 = bswap32(*v8);
      ++v8;
    }
  }

  return result;
}

void sub_233725D68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_233725D94(_DWORD *a1, _DWORD *a2)
{
  if ((*(*a1 + 16))(a1) >= *a2)
  {
    v4 = a1[9];
    LODWORD(v6) = (*(*a1 + 48))(a1);
    v5[0] = v4;
    sub_233725A80(v5, &v6);
    operator new[]();
  }

  __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0]();
  sub_2338F83F4();
}

void sub_233725ED4(void *a1)
{
  __cxa_begin_catch(a1);
  MEMORY[0x2383ABEF0](v3, v2);
  *v1 = 0;
  v1[1] = 0;
  __cxa_end_catch();
  JUMPOUT(0x233725E9CLL);
}

uint64_t *sub_233725F08(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  *a1 = *a2;
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = *a1;
  }

  *(a1 + 4) = 0;
  if (v7)
  {
    *(a1 + 4) = (*(*v7 + 48))(v7);
    (*(**a1 + 40))(*a1, a3, a4);
  }

  return a1;
}

void sub_233725FB8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_233725FD4(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 40))(v2, a1 + 2, 0);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

void sub_233726038(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_233726050(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_23372610C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_233726050(a1, __s, v4);
}

uint64_t *sub_233726154(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2337261C8(a1, a2);
  }

  return a1;
}

void sub_2337261AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337261C8(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2337235BC();
}

uint64_t *sub_233726218(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_233726290(a1, a2);
  }

  return a1;
}

void sub_233726274(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_233726290(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_2337262C8(a1, a2);
  }

  sub_2337235BC();
}

void sub_2337262C8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2337236AC();
}

uint64_t *sub_23372630C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_233723580(a1, a2);
  }

  return a1;
}

void sub_233726368(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233726410(void *a1, const char **a2, const void **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284902868;
  sub_233731BEC((a1 + 3), *a2, *a3);
  return a1;
}

void sub_233726494(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284902868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233726510(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_2337239E8(v5);
      }
    }
  }
}

void *sub_233726634(void *a1, uint64_t *a2, _DWORD *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849028B8;
  sub_233732130((a1 + 3), *a2, a3, *a4);
  return a1;
}

void sub_2337266B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849028B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337267B8(uint64_t a1, const void **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284902908;
  sub_2337251D0(a1 + 24, *a2);
  *(a1 + 24) = &unk_284907AC0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_23372685C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284902908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

_DWORD *sub_2337268D8(_DWORD *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2 != v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233726938(_DWORD *result, unsigned int *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2 != v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233726998(_DWORD *result, unsigned int *a2)
{
  *result = 0;
  v2 = *a2;
  *result = v2;
  if (v2 != v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void *sub_2337269FC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_233726A40();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_233726A40()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

int *sub_233726A8C(int *result, int *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233726AE8(_DWORD *result, int *a2)
{
  v2 = *result + *a2;
  v3 = v2 << 31 >> 31;
  *result = v2;
  if (v3 != v2 || v3 < 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

_DWORD *sub_233726B58(_DWORD *result, void *a2)
{
  v2 = (*result * *a2) >> 64;
  v3 = *result * *a2;
  *result = v3;
  if (v2 || HIDWORD(v3))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

id sub_233726BCC(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_233726C98;
  v6[3] = &unk_2789EE888;
  v7 = v2;
  v3 = v2;
  [a1 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v4;
}

void sub_233726C98(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 makeSerializable];
  [v4 setObject:v6 forKey:v5];
}

id sub_233726D18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_233726E0C;
  v13 = &unk_2789EE8B0;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v7 = v5;
  [a1 enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v7, v10, v11, v12, v13}];

  return v8;
}

void sub_233726E0C(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = [v6 length];
    v9 = @".";
    if (!v8)
    {
      v9 = &stru_284938540;
    }

    v10 = [v6 stringByAppendingFormat:@"%@%@", v9, v20];
    [v7 setObject:v5 forKeyedSubscript:v10];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = [v11 length];
      v14 = @".";
      if (!v13)
      {
        v14 = &stru_284938540;
      }

      v10 = [v11 stringByAppendingFormat:@"%@%@", v14, v20];
      v15 = [v5 keypathValueDictionary:v10];
      [v12 addEntriesFromDictionary:v15];
    }

    else
    {
      v10 = [v5 description];
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18 = [v16 length];
      v19 = @".";
      if (!v18)
      {
        v19 = &stru_284938540;
      }

      v15 = [v16 stringByAppendingFormat:@"%@%@", v19, v20];
      [v17 setObject:v10 forKeyedSubscript:v15];
    }
  }
}

id sub_233726FFC(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2337270AC;
  v5[3] = &unk_2789EE888;
  v3 = v2;
  v6 = v3;
  [a1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

void sub_2337270AC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 makeSerializable];
  [v4 setObject:v6 forKey:v5];
}

uint64_t sub_233727120(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2337271B8;
  block[3] = &unk_2789EE800;
  block[4] = a1;
  if (*(a1 + 131656) != -1)
  {
    dispatch_once((a1 + 131656), block);
  }

  return a1 + 584;
}

void sub_2337271B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 248) & 1) == 0)
  {
    sub_233728FA8();
  }

  __p = 0;
  v36 = 0;
  v37 = 0;
  sub_233728FF4(&__p, *(v1 + 224), *(v1 + 232), (*(v1 + 232) - *(v1 + 224)) >> 1);
  if ((*(v1 + 216) & 1) == 0)
  {
    sub_233728FA8();
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_233729070(&v32, *(v1 + 192), *(v1 + 200), (*(v1 + 200) - *(v1 + 192)) >> 2);
  v2 = v32;
  v3 = v33 - v32;
  v4 = __p;
  if (v33 - v32 != v36 - __p || v33 == v32)
  {
    goto LABEL_25;
  }

  v5 = 0;
  v6 = 0;
  v7 = v3 >> 2;
  v8 = v3 >> 2 != 0;
  v9 = (v3 >> 2) - 1;
  if (v9 == 0 || !v8)
  {
    v7 = 1;
  }

  v10 = __p + 2;
  do
  {
    if (v6)
    {
      if (!*(v10 - 1) && *v10 == 0)
      {
        break;
      }
    }

    v10 += 2;
    v5 |= v9 == v6++;
  }

  while (v7 != v6);
  if (v5)
  {
    if ((*(v1 + 258) & 1) == 0)
    {
      sub_233728FA8();
    }

    v12 = *(v1 + 256);
    if (*(v1 + 256))
    {
      v13 = 0;
      v14 = *(__p + 3);
      v15 = *(__p + 2);
      v16 = *(__p + 1);
      v17 = 1;
      v18 = *__p;
      do
      {
        if (v17 < v9 && v13 >= v15)
        {
          ++v17;
          v19 = &v4[4 * v17];
          v18 = v15;
          v15 = *v19;
          v16 = v14;
          v14 = *(v19 + 1);
        }

        v20 = *&v2[4 * v17 - 4] * (v13 - v18);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        *(v1 + 584 + 2 * v13++) = v16 + ((v20 >> 15) & 1) + WORD1(v20);
      }

      while (v12 != v13);
      v21 = v12;
    }

    else
    {
      v21 = 0;
    }

    v25 = 0;
    v26 = vdupq_n_s64(v21 ^ 0xFFFFuLL);
    v27 = (65543 - v21) & 0x1FFF8;
    v28 = (v1 + 2 * v21 + 598);
    do
    {
      v29 = vdupq_n_s64(v25);
      v30 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_233903BB0)));
      if (vuzp1_s8(vuzp1_s16(v30, *v26.i8), *v26.i8).u8[0])
      {
        *(v28 - 7) = v12;
      }

      if (vuzp1_s8(vuzp1_s16(v30, *&v26), *&v26).i8[1])
      {
        *(v28 - 6) = v12;
      }

      if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_233903BE0)))), *&v26).i8[2])
      {
        *(v28 - 5) = v12;
        *(v28 - 4) = v12;
      }

      v31 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_233903BD0)));
      if (vuzp1_s8(*&v26, vuzp1_s16(v31, *&v26)).i32[1])
      {
        *(v28 - 3) = v12;
      }

      if (vuzp1_s8(*&v26, vuzp1_s16(v31, *&v26)).i8[5])
      {
        *(v28 - 2) = v12;
      }

      if (vuzp1_s8(*&v26, vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_233903BC0))))).i8[6])
      {
        *(v28 - 1) = v12;
        *v28 = v12;
      }

      v25 += 8;
      v28 += 8;
    }

    while (v27 != v25);
  }

  else
  {
LABEL_25:
    v22 = 0;
    v23 = xmmword_233903BA0;
    v24.i64[0] = 0x8000800080008;
    v24.i64[1] = 0x8000800080008;
    do
    {
      *(v1 + 584 + v22) = v23;
      v23 = vaddq_s16(v23, v24);
      v22 += 16;
    }

    while (v22 != 0x20000);
  }

  if (v2)
  {
    v33 = v2;
    operator delete(v2);
    v4 = __p;
  }

  if (v4)
  {
    v36 = v4;
    operator delete(v4);
  }
}

void sub_2337274B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2337274EC(uint64_t a1, int a2, unsigned int a3)
{
  v9 = a2;
  v5 = malloc_type_malloc(a3 + 64, 0x100004077774924uLL);
  v6 = *(a1 + 24);
  sub_233723AE0(&v8, &v9);
  (*(*v6 + 40))(v6, &v8, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5, a3);
  return v5;
}

void sub_2337275BC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x2337275A4);
}

void sub_2337275E0(char *a1, uint64_t a2, int *a3, uint64_t a4, int *a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v31[7] = *MEMORY[0x277D85DE8];
  v10 = sub_23378E038(a1);
  v11 = v10;
  if ((a1 + 1) >= 2 && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPanasonicHuffmanUnpacker::unpackTile", &unk_233945DBE, buf, 2u);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_233727D74;
  v31[3] = &unk_2789EE800;
  v31[4] = a1;
  v12 = MEMORY[0x2383AC810](v31);
  if (qword_27DE37C78 != -1)
  {
    sub_2338F8418();
  }

  if (a1[304] != 1 || (a1[336] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *buf = 0;
  v29 = 0;
  v30 = 0;
  sub_233728FF4(buf, *(a1 + 35), *(a1 + 36), (*(a1 + 36) - *(a1 + 35)) >> 1);
  if ((a1[336] & 1) == 0)
  {
    sub_233728FA8();
  }

  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_233728FF4(&__p, *(a1 + 39), *(a1 + 40), (*(a1 + 40) - *(a1 + 39)) >> 1);
  if (v26 != __p)
  {
    if ((v26 - __p) < 0x3FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    sub_2337235BC();
  }

  v13 = *buf;
  if (v29 != *buf)
  {
    v14 = 0;
    v15 = (v29 - *buf) >> 1;
    v16 = __p;
    v17 = *buf;
    do
    {
      v18 = *v17;
      v17 += 2;
      v19 = (8 * (v14 >> 1));
      *v19 = v18;
      v19[1] = v13[v14 | 1];
      v19[2] = v16[v14 >> 1];
      v19[3] = v14 >> 1;
      v14 += 2;
    }

    while (v15 > v14);
  }

  sub_2337290EC(0, 0, 0, 1);
  v20 = 0;
  v21 = 56;
  v22 = a6;
  do
  {
    v23 = *v22++;
    v20 |= byte_27DE37C80[v23] << v21;
    v21 -= 8;
  }

  while (v21 != -8);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (*buf)
  {
    v29 = *buf;
    operator delete(*buf);
  }

  v12[2](v12);
}

void sub_233727CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  operator delete(v23);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v22[2](v22);

  _Unwind_Resume(a1);
}

void sub_233727D74(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPanasonicHuffmanUnpacker::unpackTile", &unk_233945DBE, v5, 2u);
  }
}

void sub_233727DFC()
{
  for (i = 0; i != 256; ++i)
  {
    v1 = vdupq_n_s32(i);
    *v1.i8 = vshl_u8(vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v1, xmmword_233903D50), vshlq_u32(v1, xmmword_233903D40))), 0x101010101010101), 0x1020304050607);
    byte_27DE37C80[i] = v1.i8[0] | v1.i8[4] | ((v1.i32[0] | v1.i32[1]) >> 16) | ((v1.i16[0] | v1.i16[2] | ((v1.i32[0] | v1.i32[1]) >> 16)) >> 8);
  }
}

void sub_233727E68(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPanasonicHuffmanUnpacker", &unk_233945DBE, buf, 2u);
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_2337284C0;
  v39[3] = &unk_2789EE800;
  v39[4] = a1;
  v4 = MEMORY[0x2383AC810](v39);
  if ((*(a1 + 216) & 1) == 0 || (*(a1 + 248) & 1) == 0 || (*(a1 + 258) & 1) == 0 || (*(a1 + 262) & 1) == 0 || (*(a1 + 266) & 1) == 0 || (*(a1 + 270) & 1) == 0 || (*(a1 + 274) & 1) == 0 || (*(a1 + 346) & 1) == 0 || (*(a1 + 350) & 1) == 0 || (*(a1 + 376) & 1) == 0 || (*(a1 + 408) & 1) == 0 || (*(a1 + 440) & 1) == 0 || (*(a1 + 472) & 1) == 0 || (*(a1 + 504) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a1 + 344);
  v6 = *(a1 + 348);
  v7 = *(a1 + 44);
  v8 = *(a1 + 48);
  v9 = (*(*a1 + 40))(a1);
  if (*(a1 + 536) - *(a1 + 528) != *(a1 + 560) - *(a1 + 552) || (v7 - 100000) < 0xFFFE7961 || (v8 - 100000) < 0xFFFE7961)
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v27, "RawCameraException");
    __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = v9;
  v28 = v4;
  group = dispatch_group_create();
  v29 = dispatch_queue_create("Panasonic Huffman Tile Unpacker Queue", MEMORY[0x277D85CD8]);
  v11 = sub_2337ADCC4(a1);
  v12 = v6 * v5;
  if (v12)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
    do
    {
      if ((*(a1 + 376) & 1) == 0)
      {
        sub_233728FA8();
      }

      if ((*(a1 + 440) & 1) == 0)
      {
        sub_233728FA8();
      }

      v16 = *(*(a1 + 416) + v15);
      v18 = v16 + 7;
      v17 = v16 < -7;
      v19 = v16 + 14;
      if (!v17)
      {
        v19 = v18;
      }

      v20 = v19 >> 3;
      v21 = sub_2337274EC(a1, *(*(a1 + 352) + v15), v19 >> 3);
      if (v21)
      {
        if ((*(a1 + 408) & 1) == 0)
        {
          sub_233728FA8();
        }

        if ((*(a1 + 472) & 1) == 0)
        {
          sub_233728FA8();
        }

        if ((*(a1 + 504) & 1) == 0)
        {
          sub_233728FA8();
        }

        v22 = (*(a1 + 384) + v15);
        v23 = *v22;
        LOWORD(v22) = v22[1];
        v24 = *(*(a1 + 448) + v14);
        v25 = *(*(a1 + 480) + v14);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_233728548;
        block[3] = &unk_2789EE8D0;
        block[4] = a1;
        block[5] = v13;
        v32 = v7;
        v33 = v8;
        v34 = v10;
        v35 = v23;
        v36 = v22;
        v37 = v24;
        v38 = v25;
        block[6] = v21;
        block[7] = &v21[v20];
        dispatch_group_async(group, v29, block);
      }

      v15 += 4;
      v14 += 2;
      --v12;
    }

    while (v12);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);

  v28[2](v28);
}

void sub_2337284C0(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPanasonicHuffmanUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_233728548(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 68);
  v11 = 0;
  sub_2337238F0(&v12, v4, v5);
  v6 = 2 * (*(a1 + 72) * *(a1 + 64));
  v10 = vmovl_u16(*(a1 + 76));
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = sub_233727120(v2);
  sub_2337275E0(v2, v3, &v11, v6, v10.i32, v7, v8, v9);
  free(*(a1 + 48));
}

void **sub_2337285F0(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 516) = a2;
  *(a1 + 520) = a3;
  v7 = (a1 + 528);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 552);
  if ((a1 + 552) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

uint64_t sub_23372866C(_DWORD *a1)
{
  v1 = a1[17];
  if (((a1[144] + 2 * v1) & 0xFLL) != 0)
  {
    return (2 * (a1[15] + 2 * v1) + 31) & 0x3FFFFFFE0;
  }

  else
  {
    return 2 * (a1[144] + 2 * v1);
  }
}

void sub_2337286A4(os_signpost_id_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = sub_23378E038(a1);
  v7 = v6;
  if (a1 + 1 >= 2 && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPanasonicHuffmanUnpacker", &unk_233945DBE, buf, 2u);
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_233728D84;
  v41[3] = &unk_2789EE800;
  v41[4] = a1;
  v8 = MEMORY[0x2383AC810](v41);
  if ((*(a1 + 216) & 1) == 0 || (*(a1 + 248) & 1) == 0 || (*(a1 + 258) & 1) == 0 || (*(a1 + 262) & 1) == 0 || (*(a1 + 266) & 1) == 0 || (*(a1 + 270) & 1) == 0 || (*(a1 + 274) & 1) == 0 || (*(a1 + 346) & 1) == 0 || (*(a1 + 350) & 1) == 0 || (*(a1 + 376) & 1) == 0 || (*(a1 + 408) & 1) == 0 || (*(a1 + 440) & 1) == 0 || (*(a1 + 472) & 1) == 0 || (*(a1 + 504) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = *(a1 + 44);
  if (v9 - 100000 < 0xFFFE7961 || (v10 = *(a1 + 48), v10 - 100000 < 0xFFFE7961))
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v31, "RawCameraException");
    __cxa_throw(v31, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = *(a1 + 348) * *(a1 + 344);
  if (v11 >> 5 >= 0x271)
  {
    v32 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v32, "RawCameraException");
    __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v33 = v8;
  group = dispatch_group_create();
  v36 = dispatch_queue_create("Panasonic Huffman Tile Unpacker Queue", MEMORY[0x277D85CD8]);
  if (v11)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      if ((*(a1 + 376) & 1) == 0)
      {
        sub_233728FA8();
      }

      if ((*(a1 + 440) & 1) == 0)
      {
        sub_233728FA8();
      }

      v14 = *(*(a1 + 416) + 4 * v12);
      v16 = v14 + 7;
      v15 = v14 < -7;
      v17 = v14 + 14;
      if (v15)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if ((*(a1 + 408) & 1) == 0)
      {
        sub_233728FA8();
      }

      if ((*(a1 + 472) & 1) == 0)
      {
        sub_233728FA8();
      }

      if ((*(a1 + 504) & 1) == 0)
      {
        sub_233728FA8();
      }

      v19 = *(a1 + 384);
      v20 = *(v19 + 2 * (v13 - 1));
      v21 = *(*(a1 + 448) + 2 * v12);
      v22 = v9 > v20 && v9 >= v21;
      if (!v22 || ((v23 = *(v19 + 2 * v13), v24 = *(*(a1 + 480) + 2 * v12), v10 > v23) ? (v25 = v10 >= v24) : (v25 = 0), !v25))
      {
        v29 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v29, "RawCameraException");
        __cxa_throw(v29, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v26 = *(*(a1 + 352) + 4 * v12);
      *buf = v20;
      *&buf[4] = v23;
      *&buf[8] = v21;
      *&buf[12] = v24;
      if (sub_23385F470(buf, a3))
      {
        v27 = v18 >> 3;
        v28 = sub_2337274EC(a1, v26, v27);
        if (v28)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_233728E0C;
          block[3] = &unk_2789EE8F0;
          block[4] = a1;
          block[5] = a2;
          block[6] = a3;
          block[7] = a4;
          v39 = *buf;
          block[8] = v28;
          block[9] = &v28[v27];
          dispatch_group_async(group, v36, block);
        }
      }

      ++v12;
      v13 += 2;
    }

    while (v11 != v12);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);

  v33[2](v33);
}

void sub_233728D84(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPanasonicHuffmanUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_233728E0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = sub_233727120(v2);
  sub_2337275E0(v2, v3, v4, v5, (a1 + 80), v6, v7, v8);
  v9 = *(a1 + 64);

  free(v9);
}

void *sub_233728E9C(void *a1)
{
  *a1 = &unk_284902978;
  v2 = a1[69];
  if (v2)
  {
    a1[70] = v2;
    operator delete(v2);
  }

  v3 = a1[66];
  if (v3)
  {
    a1[67] = v3;
    operator delete(v3);
  }

  sub_233729E40((a1 + 24));

  return sub_233723A54(a1);
}

void sub_233728F14(void *a1)
{
  *a1 = &unk_284902978;
  v2 = a1[69];
  if (v2)
  {
    a1[70] = v2;
    operator delete(v2);
  }

  v3 = a1[66];
  if (v3)
  {
    a1[67] = v3;
    operator delete(v3);
  }

  sub_233729E40((a1 + 24));
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233728FA8()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t *sub_233728FF4(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_233726290(result, a4);
  }

  return result;
}

void sub_233729054(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_233729070(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_233723580(result, a4);
  }

  return result;
}

void sub_2337290D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2337290EC(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v72 = *v8;
        if (*(a2 - 1) < *v8)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v72;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v76 = v8 + 1;
      v77 = v8[1];
      v78 = v8 + 2;
      v79 = v8[2];
      v80 = *v8;
      v81 = *v8;
      v82 = v79;
      if (v77 >= v81)
      {
        if (v79 < v77)
        {
          v83 = v8;
          *v76 = v79;
          *v78 = v77;
          v84 = v8 + 1;
          v127 = v79 >= v81;
          v81 = v77;
          v82 = v77;
          if (!v127)
          {
            goto LABEL_181;
          }

LABEL_183:
          v133 = *(a2 - 1);
          if (v82 > v133)
          {
            *v78 = v133;
            *(a2 - 1) = v77;
            v134 = *v78;
            v135 = *v76;
            if (v134 < v135)
            {
              v8[1] = v134;
              v8[2] = v135;
              v136 = *v8;
              if (v134 < *v8)
              {
                *v8 = v134;
                v8[1] = v136;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v79 < v77)
        {
          v83 = v8;
          v84 = v8 + 2;
          v77 = *v8;
          goto LABEL_181;
        }

        *v8 = v77;
        v8[1] = v80;
        v83 = v8 + 1;
        v84 = v8 + 2;
        v77 = v80;
        if (v79 < v81)
        {
LABEL_181:
          *v83 = v79;
          *v84 = v80;
          v82 = v81;
          goto LABEL_183;
        }
      }

      v77 = v79;
      goto LABEL_183;
    }

    if (v9 == 5)
    {

      return sub_233729A10(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v85 = v8 + 1;
      v87 = v8 == a2 || v85 == a2;
      if (a4)
      {
        if (!v87)
        {
          v88 = 0;
          v89 = v8;
          do
          {
            v91 = *v89;
            v90 = v89[1];
            v89 = v85;
            if (v90 < v91)
            {
              v92 = v88;
              while (1)
              {
                *(v8 + v92 + 8) = v91;
                if (!v92)
                {
                  break;
                }

                v91 = *(v8 + v92 - 8);
                v92 -= 8;
                if (v90 >= v91)
                {
                  v93 = (v8 + v92 + 8);
                  goto LABEL_129;
                }
              }

              v93 = v8;
LABEL_129:
              *v93 = v90;
            }

            v85 = v89 + 1;
            v88 += 8;
          }

          while (v89 + 1 != a2);
        }
      }

      else if (!v87)
      {
        do
        {
          v129 = *v7;
          v128 = v7[1];
          v7 = v85;
          if (v128 < v129)
          {
            v130 = v85;
            do
            {
              *v130 = v129;
              v129 = *(v130 - 2);
              --v130;
            }

            while (v128 < v129);
            *v130 = v128;
          }

          ++v85;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v94 = (v9 - 2) >> 1;
        v95 = v94;
        do
        {
          v96 = v95;
          if (v94 >= v95)
          {
            v97 = (2 * v95) | 1;
            v98 = &v8[v97];
            v99 = *v98;
            if (2 * v96 + 2 < v9)
            {
              v100 = *v98;
              if (v100 < v98[1])
              {
                v99 = v98[1];
                ++v98;
                v97 = 2 * v96 + 2;
              }
            }

            result = &v8[v96];
            v101 = *result;
            v102 = *result;
            if (v102 <= v99)
            {
              do
              {
                v103 = v98;
                *result = v99;
                if (v94 < v97)
                {
                  break;
                }

                v104 = (2 * v97) | 1;
                v98 = &v8[v104];
                v105 = 2 * v97 + 2;
                v99 = *v98;
                if (v105 < v9)
                {
                  v106 = *v98;
                  if (v106 < v98[1])
                  {
                    v99 = v98[1];
                    ++v98;
                    v104 = v105;
                  }
                }

                result = v103;
                v97 = v104;
              }

              while (v102 <= v99);
              *v103 = v101;
            }
          }

          v95 = v96 - 1;
        }

        while (v96);
        do
        {
          v107 = 0;
          v108 = *v8;
          v109 = v8;
          do
          {
            v110 = &v109[v107];
            v111 = v110 + 1;
            v112 = v110[1];
            v113 = (2 * v107) | 1;
            v107 = 2 * v107 + 2;
            if (v107 >= v9)
            {
              v107 = v113;
            }

            else
            {
              v116 = v110[2];
              v114 = v110 + 2;
              v115 = v116;
              result = v112;
              if (v112 >= v116)
              {
                v107 = v113;
              }

              else
              {
                v112 = v115;
                v111 = v114;
              }
            }

            *v109 = v112;
            v109 = v111;
          }

          while (v107 <= ((v9 - 2) >> 1));
          if (v111 == --a2)
          {
            *v111 = v108;
          }

          else
          {
            *v111 = *a2;
            *a2 = v108;
            v117 = (v111 - v8 + 8) >> 3;
            v118 = v117 < 2;
            v119 = v117 - 2;
            if (!v118)
            {
              v120 = v119 >> 1;
              v121 = &v8[v120];
              v122 = *v121;
              v123 = *v111;
              v124 = *v111;
              if (v124 > *v121)
              {
                do
                {
                  v125 = v121;
                  *v111 = v122;
                  if (!v120)
                  {
                    break;
                  }

                  v120 = (v120 - 1) >> 1;
                  v121 = &v8[v120];
                  v122 = *v121;
                  v111 = v125;
                }

                while (v124 > *v121);
                *v125 = v123;
              }
            }
          }

          v118 = v9-- <= 2;
        }

        while (!v118);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      v15 = *v10;
      if (v15 >= *v8)
      {
        if (v12 < v15)
        {
          *v10 = v12;
          *(a2 - 1) = v13;
          v19 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v19;
          }
        }
      }

      else
      {
        if (v12 < v15)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        v21 = *v8;
        *v8 = v13;
        *v10 = v14;
        v22 = *(a2 - 1);
        if (v21 > v22)
        {
          *v10 = v22;
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v23 = v10 - 1;
      v24 = *(v10 - 1);
      v25 = v8[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v8[1];
          if (*v23 < v27)
          {
            v8[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v8[1] = v26;
          goto LABEL_39;
        }

        v30 = v8[1];
        v8[1] = v24;
        *v23 = v25;
        v31 = *(a2 - 2);
        if (v30 > v31)
        {
          *v23 = v31;
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v34 = v10[1];
      v32 = v10 + 1;
      v33 = v34;
      v35 = v8[2];
      v36 = v34;
      v37 = *(a2 - 3);
      if (v34 >= v35)
      {
        if (v37 < v36)
        {
          *v32 = v37;
          *(a2 - 3) = v33;
          v38 = v8[2];
          if (*v32 < v38)
          {
            v8[2] = *v32;
            *v32 = v38;
          }
        }
      }

      else
      {
        if (v37 < v36)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v39 = v8[2];
        v8[2] = v33;
        *v32 = v35;
        v40 = *(a2 - 3);
        if (v39 > v40)
        {
          *v32 = v40;
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v41 = *v11;
      v42 = *v23;
      v43 = *v11;
      v44 = *v23;
      v45 = *v32;
      v46 = *v32;
      if (v43 >= v44)
      {
        if (v46 >= v43)
        {
          goto LABEL_56;
        }

        *v11 = v45;
        *v32 = v41;
        v32 = v11;
        v41 = v42;
        if (v46 >= v44)
        {
          v41 = v45;
          goto LABEL_56;
        }
      }

      else if (v46 >= v43)
      {
        *v23 = v41;
        *v11 = v42;
        v23 = v11;
        v41 = v45;
        if (v46 >= v44)
        {
          v41 = v42;
LABEL_56:
          v47 = *v8;
          *v8 = v41;
          *v11 = v47;
          goto LABEL_57;
        }
      }

      *v23 = v45;
      *v32 = v42;
      goto LABEL_56;
    }

    v16 = *v8;
    v17 = *v11;
    v18 = *v8;
    if (v18 >= *v11)
    {
      if (v12 < v18)
      {
        *v8 = v12;
        *(a2 - 1) = v16;
        v20 = *v11;
        if (*v8 < *v11)
        {
          *v11 = *v8;
          *v8 = v20;
        }
      }

      goto LABEL_57;
    }

    if (v12 < v18)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v17;
      goto LABEL_57;
    }

    v28 = *v11;
    *v11 = v16;
    *v8 = v17;
    v29 = *(a2 - 1);
    if (v28 > v29)
    {
      *v8 = v29;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v48 = *v8;
    if (a4)
    {
      v49 = *v8;
LABEL_60:
      v50 = 0;
      do
      {
        v51 = v8[++v50];
      }

      while (v49 > v51);
      v52 = &v8[v50];
      v53 = a2;
      if (v50 == 1)
      {
        v53 = a2;
        do
        {
          if (v52 >= v53)
          {
            break;
          }

          v55 = *(v53-- - 4);
        }

        while (v55 >= v49);
      }

      else
      {
        do
        {
          v54 = *(v53-- - 4);
        }

        while (v54 >= v49);
      }

      if (v52 >= v53)
      {
        v61 = v52 - 1;
      }

      else
      {
        v56 = *v53;
        v57 = &v8[v50];
        v58 = v53;
        do
        {
          *v57 = v56;
          *v58 = v51;
          do
          {
            v59 = v57[1];
            ++v57;
            v51 = v59;
          }

          while (v49 > v59);
          do
          {
            v60 = *--v58;
            v56 = v60;
          }

          while (v49 <= v60);
        }

        while (v57 < v58);
        v61 = v57 - 1;
      }

      if (v61 != v8)
      {
        *v8 = *v61;
      }

      *v61 = v48;
      if (v52 < v53)
      {
        goto LABEL_81;
      }

      v62 = sub_233729B74(v8, v61);
      v8 = v61 + 1;
      result = sub_233729B74(v61 + 1, a2);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_81:
        result = sub_2337290EC(v7, v61, a3, a4 & 1);
        a4 = 0;
        v8 = v61 + 1;
      }
    }

    else
    {
      v49 = *v8;
      if (*(v8 - 4) < v48)
      {
        goto LABEL_60;
      }

      if (v49 >= *(a2 - 4))
      {
        v64 = (v8 + 1);
        do
        {
          v8 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 += 8;
        }

        while (v49 >= *v8);
      }

      else
      {
        do
        {
          v63 = *(v8++ + 4);
        }

        while (v49 >= v63);
      }

      v65 = a2;
      if (v8 < a2)
      {
        v65 = a2;
        do
        {
          v66 = *(v65-- - 4);
        }

        while (v49 < v66);
      }

      if (v8 < v65)
      {
        v67 = *v8;
        v68 = *v65;
        do
        {
          *v8 = v68;
          *v65 = v67;
          do
          {
            v69 = v8[1];
            ++v8;
            v67 = v69;
          }

          while (v49 >= v69);
          do
          {
            v70 = *--v65;
            v68 = v70;
          }

          while (v49 < v70);
        }

        while (v8 < v65);
      }

      v71 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v71;
      }

      a4 = 0;
      *v71 = v48;
    }
  }

  v73 = *v8;
  v74 = v8[1];
  v75 = *(a2 - 1);
  if (v74 >= *v8)
  {
    if (v75 < v74)
    {
      v8[1] = v75;
      *(a2 - 1) = v74;
      v126 = *v8;
      if (v8[1] < *v8)
      {
        *v8 = v8[1];
        v8[1] = v126;
      }
    }
  }

  else
  {
    if (v75 >= v74)
    {
      v131 = *v8;
      *v8 = v74;
      v8[1] = v73;
      v132 = *(a2 - 1);
      if (v131 <= v132)
      {
        return result;
      }

      v8[1] = v132;
    }

    else
    {
      *v8 = v75;
    }

    *(a2 - 1) = v73;
  }

  return result;
}

uint64_t *sub_233729A10(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a2;
  v8 = *a3;
  v9 = *a3;
  if (v7 >= *result)
  {
    if (v9 >= v7)
    {
      v10 = *a3;
      v5 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v5;
      v11 = *result;
      v10 = v7;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
        v10 = *a3;
      }
    }
  }

  else
  {
    v10 = *result;
    if (v9 >= v7)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*a3 >= v10)
      {
        v10 = *a3;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v8;
    }

    *a3 = v6;
    v5 = v6;
  }

LABEL_12:
  if (v10 > *a4)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_233729B74(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *a1;
      v5 = a1[1];
      v6 = *(a2 - 1);
      if (v5 >= *a1)
      {
        if (v6 < v5)
        {
          a1[1] = v6;
          *(a2 - 1) = v5;
          v23 = *a1;
          if (a1[1] < *a1)
          {
            *a1 = a1[1];
            a1[1] = v23;
          }
        }

        return 1;
      }

      if (v6 >= v5)
      {
        v34 = *a1;
        *a1 = v5;
        a1[1] = v4;
        v35 = *(a2 - 1);
        if (v34 <= v35)
        {
          return 1;
        }

        a1[1] = v35;
      }

      else
      {
        *a1 = v6;
      }

      *(a2 - 1) = v4;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_233729A10(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v14 = a1 + 1;
    v15 = a1[1];
    v16 = a1 + 2;
    v17 = a1[2];
    v18 = *a1;
    v19 = *a1;
    v20 = v17;
    if (v15 >= v19)
    {
      if (v17 < v15)
      {
        v21 = a1;
        *v14 = v17;
        *v16 = v15;
        v22 = a1 + 1;
        v33 = v17 >= v19;
        v19 = v15;
        v20 = v15;
        if (v33)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v21 = a1;
        v22 = a1 + 2;
        v15 = *a1;
LABEL_45:
        *v21 = v17;
        *v22 = v18;
        v20 = v19;
LABEL_47:
        v36 = *(a2 - 1);
        if (v20 > v36)
        {
          *v16 = v36;
          *(a2 - 1) = v15;
          v37 = *v16;
          v38 = *v14;
          if (v37 < v38)
          {
            a1[1] = v37;
            a1[2] = v38;
            v39 = *a1;
            if (v37 < *a1)
            {
              *a1 = v37;
              a1[1] = v39;
            }
          }
        }

        return 1;
      }

      *a1 = v15;
      a1[1] = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      v15 = v18;
      if (v17 < v19)
      {
        goto LABEL_45;
      }
    }

    v15 = v17;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *a1;
    if (*(a2 - 1) < *a1)
    {
      *a1 = *(a2 - 1);
      *(a2 - 1) = v3;
    }

    return 1;
  }

LABEL_13:
  v8 = a1 + 2;
  v7 = a1[2];
  v9 = a1[1];
  v10 = *a1;
  v11 = *a1;
  if (v9 >= v11)
  {
    if (v7 >= v9)
    {
      goto LABEL_26;
    }

    a1[1] = v7;
    *v8 = v9;
    v12 = a1;
    v13 = a1 + 1;
LABEL_24:
    if (v7 >= v11)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v12 = a1;
  v13 = a1 + 2;
  if (v7 >= v9)
  {
    *a1 = v9;
    a1[1] = v10;
    v12 = a1 + 1;
    v13 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v12 = v7;
  *v13 = v10;
LABEL_26:
  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  for (i = 24; ; i += 8)
  {
    v27 = *v24;
    v28 = *v8;
    v29 = *v24;
    if (v29 < v28)
    {
      v30 = i;
      while (1)
      {
        *(a1 + v30) = v28;
        v31 = v30 - 8;
        if (v30 == 8)
        {
          break;
        }

        v28 = *(a1 + v30 - 16);
        v30 -= 8;
        if (v29 >= v28)
        {
          v32 = (a1 + v31);
          goto LABEL_34;
        }
      }

      v32 = a1;
LABEL_34:
      *v32 = v27;
      if (++v25 == 8)
      {
        break;
      }
    }

    v8 = v24++;
    if (v24 == a2)
    {
      return 1;
    }
  }

  return v24 + 1 == a2;
}

uint64_t sub_233729E40(uint64_t a1)
{
  if (*(a1 + 312) == 1)
  {
    v2 = *(a1 + 288);
    if (v2)
    {
      *(a1 + 296) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 280) == 1)
  {
    v3 = *(a1 + 256);
    if (v3)
    {
      *(a1 + 264) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 248) == 1)
  {
    v4 = *(a1 + 224);
    if (v4)
    {
      *(a1 + 232) = v4;
      operator delete(v4);
    }
  }

  if (*(a1 + 216) == 1)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      *(a1 + 200) = v5;
      operator delete(v5);
    }
  }

  if (*(a1 + 184) == 1)
  {
    v6 = *(a1 + 160);
    if (v6)
    {
      *(a1 + 168) = v6;
      operator delete(v6);
    }
  }

  if (*(a1 + 144) == 1)
  {
    v7 = *(a1 + 120);
    if (v7)
    {
      *(a1 + 128) = v7;
      operator delete(v7);
    }
  }

  if (*(a1 + 112) == 1)
  {
    v8 = *(a1 + 88);
    if (v8)
    {
      *(a1 + 96) = v8;
      operator delete(v8);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      *(a1 + 40) = v9;
      operator delete(v9);
    }
  }

  if (*(a1 + 24) == 1)
  {
    v10 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v10;
      operator delete(v10);
    }
  }

  return a1;
}

__CFString *sub_233729FBC(uint64_t *a1)
{
  v2 = a1;
  if (*(a1 + 23) < 0 && (v2 = *a1) == 0)
  {
    v3 = &stru_284938540;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  }

  return v3;
}

void *sub_23372A01C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284902A70;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = a1[1];
  a1[1] = v5;

  return a1;
}

uint64_t sub_23372A0C0(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x2383AC810](a2);
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t sub_23372A100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = (*(v1 + 16))(v1, @"methodNumber");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = [v2 shortValue];

  return v3;
}

void sub_23372A208(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE377C8[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_233730514(a2, 4, &v6);
  sub_23372A488(__p, "black0");
  if (a2[1] == *a2)
  {
    sub_2337306B0();
  }

  sub_23372A3F8(a1, __p, *a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "black1");
  if ((a2[1] - *a2) <= 2)
  {
    sub_2337306B0();
  }

  sub_23372A3F8(a1, __p, (*a2 + 2));
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "black2");
  if ((a2[1] - *a2) <= 4)
  {
    sub_2337306B0();
  }

  sub_23372A3F8(a1, __p, (*a2 + 4));
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, "black3");
  if ((a2[1] - *a2) <= 6)
  {
    sub_2337306B0();
  }

  sub_23372A3F8(a1, __p, (*a2 + 6));
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23372A398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372A3F8(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v4 = sub_23372D8DC(a1, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [v4 longLongValue];
    v7 = 0xFFFFLL;
    if (v6 < 0xFFFF)
    {
      v7 = v6;
    }

    *a3 = v7 & ~(v7 >> 63);
  }

  return isKindOfClass & 1;
}

void *sub_23372A488(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
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

uint64_t sub_23372A540(uint64_t a1)
{
  v5 = 4095;
  sub_23372A488(__p, [(__CFString *)off_27DE377D0[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372A5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372A5C8(uint64_t a1)
{
  v5 = 1.0;
  sub_23372A488(__p, [(__CFString *)off_27DE377D8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372A634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372A650(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = sub_23372D8DC(a1, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 doubleValue];
    *a3 = v6;
  }

  return isKindOfClass & 1;
}

void sub_23372A6C8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = 4095;
  sub_23372A488(__p, [(__CFString *)off_27DE377E0[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_233730514(a2, 4, &v8);
  sub_23372A488(__p, [(__CFString *)off_27DE377E8[0] UTF8String]);
  v4 = sub_23372A3F8(a1, __p, *a2);
  v5 = v4;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  sub_23372A488(__p, [(__CFString *)off_27DE377F0[0] UTF8String]);
  sub_23372A3F8(a1, __p, (*a2 + 2));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, [(__CFString *)off_27DE377F8[0] UTF8String]);
  sub_23372A3F8(a1, __p, (*a2 + 4));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23372A488(__p, [(__CFString *)off_27DE37800[0] UTF8String]);
  sub_23372A3F8(a1, __p, (*a2 + 6));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23372A848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372A8A8(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37808[0] UTF8String]);
  sub_23372A92C(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372A910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372A92C(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v4 = sub_23372D8DC(a1, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a3 = [v4 BOOLValue];
  }

  return isKindOfClass & 1;
}

void sub_23372A9A4(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = getenv("RAWCAMERA_M1");
  if (v4)
  {
    v5 = v4;
    sub_233730758(&v9, 9uLL);
    if (sscanf(v5, "{ { %lg , %lg , %lg } , { %lg , %lg , %lg } , { %lg , %lg , %lg } }", v9, v9 + 8, v9 + 16, v9 + 24, v9 + 32, v9 + 40, v9 + 48, v9 + 56, v9 + 64) == 9)
    {
      sub_2337DF9C8(a2, 3u, 3u);
      sub_2337E0E4C(a2, &v9);
      v6 = v9;
      if (!v9)
      {
        return;
      }

      v10 = v9;
      goto LABEL_14;
    }

    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }
  }

  sub_23372A488(__p, [(__CFString *)off_27DE37810[0] UTF8String]);
  sub_23372AB50(a1, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_2337E003C(&v9))
  {
    sub_2337DF874(a2, &v9);
  }

  else
  {
    sub_2337DFC28(3u, a2);
  }

  v6 = v10;
  if (v10)
  {
    v11 = v10;
LABEL_14:
    operator delete(v6);
  }
}

void sub_23372AAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v26 = *(v23 + 8);
  if (v26)
  {
    *(v23 + 16) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 64);
  if (v27)
  {
    *(v24 - 56) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372AB50(uint64_t a1@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  if (sub_23372DB30(a1, a2, &__p))
  {
    v4 = ((v7 - __p) >> 3) / 3uLL;
    sub_233723C18(&v5, &v4);
    sub_2337DF9C8(a3, v5, 3u);
    sub_2337E0E4C(a3, &__p);
  }

  else
  {
    sub_2337DFDF8(a3);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_23372ABF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *(v13 + 8);
  if (v15)
  {
    *(v13 + 16) = v15;
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372AC2C(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = getenv("RAWCAMERA_M2");
  if (v4)
  {
    v5 = v4;
    sub_233730758(&v9, 9uLL);
    if (sscanf(v5, "{ { %lg , %lg , %lg } , { %lg , %lg , %lg } , { %lg , %lg , %lg } }", v9, v9 + 8, v9 + 16, v9 + 24, v9 + 32, v9 + 40, v9 + 48, v9 + 56, v9 + 64) == 9)
    {
      sub_2337DF9C8(a2, 3u, 3u);
      sub_2337E0E4C(a2, &v9);
      v6 = v9;
      if (!v9)
      {
        return;
      }

      v10 = v9;
      goto LABEL_14;
    }

    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }
  }

  sub_23372A488(__p, [(__CFString *)off_27DE37818[0] UTF8String]);
  sub_23372AB50(a1, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_2337E003C(&v9))
  {
    sub_2337DF874(a2, &v9);
  }

  else
  {
    sub_2337DFC28(3u, a2);
  }

  v6 = v10;
  if (v10)
  {
    v11 = v10;
LABEL_14:
    operator delete(v6);
  }
}

void sub_23372AD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v26 = *(v23 + 8);
  if (v26)
  {
    *(v23 + 16) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 64);
  if (v27)
  {
    *(v24 - 56) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372ADD8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_23372A488(__p, [(__CFString *)off_27DE37820[0] UTF8String]);
  sub_23372AB50(a1, __p, v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_2337E003C(v6))
  {
    sub_2337DF874(a2, v6);
  }

  else
  {
    sub_2337DFDF8(a2);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }
}

void sub_23372AE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372AEA0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_23372A488(__p, [(__CFString *)off_27DE37828[0] UTF8String]);
  sub_23372AB50(a1, __p, v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_2337E003C(v6))
  {
    sub_2337DF874(a2, v6);
  }

  else
  {
    sub_2337DFDF8(a2);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }
}

void sub_23372AF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372AF68(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_23372A488(&__p, [(__CFString *)off_27DE37830[0] UTF8String]);
  sub_23372AB50(a1, &__p, &v13);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (sub_2337E003C(&v13) == 3 && sub_2337E0044(&v13) == 3)
  {
    sub_2337DF874(a2, &v13);
    goto LABEL_15;
  }

  v12 = 0.0;
  sub_23372A488(&__p, [(__CFString *)off_27DE37830[0] UTF8String]);
  v4 = sub_23372A650(a1, &__p, &v12);
  v5 = v4;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
    if (v5)
    {
      goto LABEL_8;
    }

LABEL_14:
    sub_2337DFC28(3u, a2);
    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_8:
  sub_2337DFC28(3u, v6);
  sub_2337E0244(v6, &__p, v12);
  sub_2337E004C(&v13, &__p);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  sub_2337DF874(a2, &v13);
LABEL_15:
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_23372B0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  v18 = *(v16 - 56);
  if (v18)
  {
    *(v16 - 48) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B13C(uint64_t a1)
{
  if (sub_23372A100(a1) <= 6)
  {
    v6 = 1;
    sub_23372A488(__p, [(__CFString *)off_27DE37838[0] UTF8String]);
    sub_23372A92C(a1, __p, &v6);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    v2 = v6;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_23372B1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B1DC(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37840[0] UTF8String]);
  sub_23372A92C(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372B244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23372B260(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37848[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5 != 0;
}

void sub_23372B2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B2EC(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37850[0] UTF8String]);
  sub_23372A92C(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372B354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B370(uint64_t a1)
{
  v5 = 1;
  sub_23372A488(__p, [(__CFString *)off_27DE37858[0] UTF8String]);
  sub_23372A92C(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372B3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B3F8(uint64_t a1)
{
  v5 = 1;
  sub_23372A488(__p, [(__CFString *)off_27DE37860[0] UTF8String]);
  sub_23372A92C(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372B464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372B480(uint64_t a1)
{
  v5 = 1;
  sub_23372A488(__p, [(__CFString *)off_27DE37868[0] UTF8String]);
  sub_23372A92C(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372B4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23372B508(uint64_t a1)
{
  v5 = 1;
  sub_23372A488(__p, [(__CFString *)off_27DE37870[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5 != 0;
}

void sub_23372B57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B598(uint64_t a1)
{
  v5 = 0.08;
  sub_23372A488(__p, [(__CFString *)off_27DE37878[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 0.2);
}

void sub_23372B624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B640(uint64_t a1)
{
  v5 = 0.12;
  sub_23372A488(__p, [(__CFString *)off_27DE37880[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 0.3);
}

void sub_23372B6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B6E8(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37888[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372B750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B76C(uint64_t a1)
{
  if (sub_23372A100(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v5 = 0.9;
  sub_23372A488(__p, [(__CFString *)off_27DE37890[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372B80C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B838(uint64_t a1)
{
  if (sub_23372A100(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37898[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372B8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B8F8(uint64_t a1)
{
  v5 = 1.0;
  sub_23372A488(__p, [(__CFString *)off_27DE378A0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372B964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372B980(uint64_t a1)
{
  v8 = 0.0;
  v2 = getenv("RAWCAMERA_HUEMAG_MR");
  if (!v2)
  {
    sub_23372A488(__p, [(__CFString *)off_27DE378A8[0] UTF8String]);
    v3 = sub_23372A650(a1, __p, &v8);
    v4 = v3;
    if (v7 < 0)
    {
      operator delete(__p[0]);
      if (v4)
      {
        return v8;
      }
    }

    else if (v3)
    {
      return v8;
    }

    return 0.0;
  }

  sscanf(v2, "%lf", &v8);
  return v8;
}

void sub_23372BA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BA40(uint64_t a1)
{
  v6 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE378B0[0] UTF8String]);
  v2 = sub_23372A650(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  result = v6;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

void sub_23372BAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BAD4(uint64_t a1)
{
  v6 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE378B8[0] UTF8String]);
  v2 = sub_23372A650(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  result = v6;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

void sub_23372BB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BB68(uint64_t a1)
{
  v6 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE378C0[0] UTF8String]);
  v2 = sub_23372A650(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  result = v6;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

void sub_23372BBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BBFC(uint64_t a1)
{
  v6 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE378C8[0] UTF8String]);
  v2 = sub_23372A650(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  result = v6;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

void sub_23372BC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BC90(uint64_t a1)
{
  v6 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE378D0[0] UTF8String]);
  v2 = sub_23372A650(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  result = v6;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

void sub_23372BD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372BD24(uint64_t a1)
{
  v5 = 1;
  sub_23372A488(__p, [(__CFString *)off_27DE378D8[0] UTF8String]);
  sub_23372A92C(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372BD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372BDAC(uint64_t a1)
{
  v5 = 1;
  sub_23372A488(__p, [(__CFString *)off_27DE378E0[0] UTF8String]);
  sub_23372A92C(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372BE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BE34(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE378E8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, -1.0), 1.0);
}

void sub_23372BEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BEC8(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE378F0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, -1.0), 1.0);
}

void sub_23372BF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372BF5C(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE378F8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, -1.0), 1.0);
}

void sub_23372BFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372BFF0(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37900[0] UTF8String]);
  sub_23372C084(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 >= 0x9C41)
  {
    return 40000;
  }

  else
  {
    return v5;
  }
}

void sub_23372C068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372C084(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v4 = sub_23372D8DC(a1, a2);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v4 longLongValue], !HIDWORD(v5)))
  {
    *a3 = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

double sub_23372C108(uint64_t a1)
{
  v5 = 1.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37908[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372C174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C190(uint64_t a1)
{
  v5 = 1.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37910[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372C1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C218(uint64_t a1)
{
  v5 = 2.67;
  sub_23372A488(__p, [(__CFString *)off_27DE37918[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 5.0);
}

void sub_23372C2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C2BC(uint64_t a1)
{
  v5 = 26.15;
  sub_23372A488(__p, [(__CFString *)off_27DE37920[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.3), 200.0);
}

void sub_23372C348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C364(uint64_t a1)
{
  v5 = 2.2;
  sub_23372A488(__p, [(__CFString *)off_27DE37928[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 1.2), 2.3);
}

void sub_23372C3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C40C(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37930[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372C474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C490(uint64_t a1)
{
  v5 = 400.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37938[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372C4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C518(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37940[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372C580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C59C(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37948[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 5.0);
}

void sub_23372C614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C630(uint64_t a1)
{
  v5 = 1.5;
  sub_23372A488(__p, [(__CFString *)off_27DE37950[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 5.0);
}

void sub_23372C6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C6C8(uint64_t a1)
{
  v5 = 3.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37958[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 10.0);
}

void sub_23372C744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C760(uint64_t a1)
{
  v5 = 4.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37960[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372C7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C7E8(uint64_t a1)
{
  v5 = 0.00145;
  sub_23372A488(__p, [(__CFString *)off_27DE37968[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372C860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C87C(uint64_t a1)
{
  v5 = 0.004;
  sub_23372A488(__p, [(__CFString *)off_27DE37970[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372C8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C910(uint64_t a1)
{
  v5 = 0.0031;
  sub_23372A488(__p, [(__CFString *)off_27DE37978[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372C988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372C9A4(uint64_t a1)
{
  v5 = 0.027;
  sub_23372A488(__p, [(__CFString *)off_27DE37980[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372CA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CA38(uint64_t a1)
{
  v5 = 4.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37988[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372CAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CAC0(uint64_t a1)
{
  v5 = 2.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37990[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 1.0), 10.0);
}

void sub_23372CB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CB58(uint64_t a1)
{
  v5 = 24.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37998[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372CBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CBE0(uint64_t a1)
{
  v5 = 0.27;
  sub_23372A488(__p, [(__CFString *)off_27DE379A0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 0.75);
}

void sub_23372CC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CC84(uint64_t a1)
{
  v5 = 0.27;
  sub_23372A488(__p, [(__CFString *)off_27DE379A8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 0.75);
}

void sub_23372CD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CD28(uint64_t a1)
{
  v5 = 0.0025;
  sub_23372A488(__p, [(__CFString *)off_27DE379B0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 0.02);
}

void sub_23372CDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CDD0(uint64_t a1)
{
  v5 = 0.0025;
  sub_23372A488(__p, [(__CFString *)off_27DE379B8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 0.02);
}

void sub_23372CE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CE78(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE379C0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372CEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CEFC(uint64_t a1)
{
  v5 = 0.15;
  sub_23372A488(__p, [(__CFString *)off_27DE379C8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372CF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372CF88(uint64_t a1)
{
  v5 = 0.43;
  sub_23372A488(__p, [(__CFString *)off_27DE379D0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D01C(uint64_t a1)
{
  v5 = 0.0883;
  sub_23372A488(__p, [(__CFString *)off_27DE379D8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D0B0(uint64_t a1)
{
  v5 = 0.000028;
  sub_23372A488(__p, [(__CFString *)off_27DE379E0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D144(uint64_t a1)
{
  v5 = 0.0000000431;
  sub_23372A488(__p, [(__CFString *)off_27DE379E8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D1D8(uint64_t a1)
{
  v5 = 0.8725;
  sub_23372A488(__p, [(__CFString *)off_27DE379F0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D26C(uint64_t a1)
{
  v5 = 0.00017;
  sub_23372A488(__p, [(__CFString *)off_27DE379F8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D300(uint64_t a1)
{
  v5 = 0.0000069973;
  sub_23372A488(__p, [(__CFString *)off_27DE37A00[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D394(uint64_t a1)
{
  v5 = 400.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A08[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D41C(uint64_t a1)
{
  v5 = 2.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A10[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D4A4(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A18[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372D528(uint64_t a1)
{
  v5 = 3;
  sub_23372A488(__p, [(__CFString *)off_27DE37A20[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 >= 0xAuLL)
  {
    return 3;
  }

  else
  {
    return dword_233903FE4[v5];
  }
}

void sub_23372D5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23372D5CC(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A28[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5 == 1;
}

void sub_23372D63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372D658(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A30[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372D6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372D88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 8);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  _Unwind_Resume(exception_object);
}

id sub_23372D8DC(uint64_t a1, uint64_t *a2)
{
  v14 = sub_23372A100(a1);
  v4 = sub_2337584D4(&v14);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%d", v5, v4];
  v7 = sub_23372FF44(a1);
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = sub_233730154(a1, v8);
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];

    v12 = sub_23372FF44(a1);
    v8 = [v12 objectForKeyedSubscript:v11];

    v9 = sub_233730154(a1, v8);
    v6 = v11;
  }

  return v9;
}

void sub_23372DA58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A40[0] UTF8String]);
  v4 = sub_23372DB30(a1, __p, v8);
  v5 = v4;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    *a2 = *v8;
    *(a2 + 16) = v9;
    return;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_23372DAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23372DB30(uint64_t a1, uint64_t *a2, void **a3)
{
  v4 = sub_23372D8DC(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 count];
    v12 = 0;
    sub_233731694(&__p, v6, &v12);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = [v5 objectAtIndexedSubscript:v8];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        [v9 doubleValue];
        if (v8 >= (v14 - __p) >> 3)
        {
          sub_2337306B0();
        }

        *(__p + v8) = v10;

        v7 = ++v8 >= v6;
        if (v6 == v8)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (&__p != a3)
      {
        sub_23373176C(a3, __p, v14, (v14 - __p) >> 3);
      }

      v7 = 1;
    }

    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_23372DC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23372DCD0(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A48[0] UTF8String]);
  v4 = sub_23372DB30(a1, __p, &v15);
  v5 = v4;
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  else if (!v4)
  {
    goto LABEL_4;
  }

  v7 = v15;
  v6 = v16;
  v8 = v16 - v15;
  if ((((v16 - v15) >> 3) - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_4:
    sub_2337DF868(a2);
    goto LABEL_10;
  }

  v9 = v8 >> 3;
  sub_2337DF9C8(a2, v8 >> 3, v8 >> 3);
  sub_2337DFFC4(a2);
  if (v6 != v7)
  {
    v10 = 0;
    do
    {
      v11 = *(v15 + v10);
      __p[0] = sub_2337DFCEC(a2, v10);
      __p[1] = v12;
      *sub_2337DFD6C(__p, v10++) = v11;
    }

    while (v10 < v9);
  }

LABEL_10:
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_23372DDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  v18 = *(v16 + 8);
  if (v18)
  {
    *(v16 + 16) = v18;
    operator delete(v18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372DE48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A50[0] UTF8String]);
  v4 = sub_23372DB30(a1, __p, v8);
  v5 = v4;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    *a2 = *v8;
    *(a2 + 16) = v9;
    return;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_23372DEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372DF20(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A58[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372DF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372DFA4(uint64_t a1)
{
  v5 = 3.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A60[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372E010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E02C(uint64_t a1)
{
  v5 = 3.1623;
  sub_23372A488(__p, [(__CFString *)off_27DE37A68[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372E0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E0C0(uint64_t a1)
{
  v6 = 0.0;
  v2 = getenv("MS_AMT");
  if (v2)
  {
    sscanf(v2, "%lf", &v6);
  }

  else
  {
    sub_23372A488(__p, [(__CFString *)off_27DE37A70[0] UTF8String]);
    sub_23372A650(a1, __p, &v6);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v6;
}

void sub_23372E150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E16C(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A78[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 1.3);
}

void sub_23372E1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E204(uint64_t a1)
{
  v5 = 0.5;
  sub_23372A488(__p, [(__CFString *)off_27DE37A80[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 1.0);
}

void sub_23372E280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372E29C(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A88[0] UTF8String]);
  sub_23372A92C(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372E304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E320(uint64_t a1)
{
  v5 = 0.5;
  sub_23372A488(__p, [(__CFString *)off_27DE37A90[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 1.0);
}

void sub_23372E39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E3B8(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37A98[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, -2.0), 2.0);
}

void sub_23372E430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E44C(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37AA0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 1.0);
}

void sub_23372E4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E4E0(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37AA8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return fmin(fmax(v5, 0.0), 4.0);
}

void sub_23372E558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372E574(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  sub_23372A488(__p, "isoab");
  v4 = sub_23372DB30(a1, __p, v8);
  v5 = v4;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    *a2 = *v8;
    *(a2 + 16) = v9;
    return;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_23372E610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372E644(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37AB8[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372E6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E6C8(uint64_t a1)
{
  v5 = 0.000734;
  sub_23372A488(__p, [(__CFString *)off_27DE37AC0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372E740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E75C(uint64_t a1)
{
  v5 = 0.01351;
  sub_23372A488(__p, [(__CFString *)off_27DE37AC8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372E7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E7F0(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37AD0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372E858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372E874(uint64_t a1)
{
  v5 = 1;
  sub_23372A488(__p, [(__CFString *)off_27DE37AD8[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372E8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E8FC(uint64_t a1)
{
  v5 = 0.0001128;
  sub_23372A488(__p, [(__CFString *)off_27DE37AE0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372E974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372E990(uint64_t a1)
{
  v5 = -0.06729;
  sub_23372A488(__p, [(__CFString *)off_27DE37AE8[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EA24(uint64_t a1)
{
  v5 = -5.241;
  sub_23372A488(__p, [(__CFString *)off_27DE37AF0[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372EAB8(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37AF8[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372EB3C(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, "hnat");
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EBB8(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, "hbf");
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EC34(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B10[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372ECB8(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B18[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372ED20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372ED3C(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B20[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372EDC0(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B28[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EE44(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B30[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EEC8(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B38[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372EF4C(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B40[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372EFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372EFD0(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B48[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372F038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F054(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B50[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372F0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F0D8(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B58[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372F140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F15C(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B60[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372F1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23372F1E0(uint64_t a1)
{
  v5 = 0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B68[0] UTF8String]);
  sub_23372A3F8(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372F248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F264(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B70[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372F2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F2E8(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [(__CFString *)off_27DE37B78[0] UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372F350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23372F36C(uint64_t a1)
{
  v5 = 0.0;
  sub_23372A488(__p, [off_27DE37B80 UTF8String]);
  sub_23372A650(a1, __p, &v5);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_23372F3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372F3F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_23372A488(&v39, "isoab");
  v4 = sub_23372DB30(a1, &v39, &v41);
  v5 = v4;
  if ((v40 & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v38 = 0;
    sub_23372A488(&v39, [(__CFString *)off_27DE37AB8[0] UTF8String]);
    sub_23372A3F8(a1, &v39, &v38);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v9 = v38;
    v37 = 0.000734;
    sub_23372A488(&v39, [(__CFString *)off_27DE37AC0[0] UTF8String]);
    sub_23372A650(a1, &v39, &v37);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v36 = 0.01351;
    sub_23372A488(&v39, [(__CFString *)off_27DE37AC8[0] UTF8String]);
    sub_23372A650(a1, &v39, &v36);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v35 = 0.0;
    sub_23372A488(&v39, [(__CFString *)off_27DE37AD0[0] UTF8String]);
    sub_23372A650(a1, &v39, &v35);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v38 = 1;
    sub_23372A488(&v39, [(__CFString *)off_27DE37AD8[0] UTF8String]);
    sub_23372A3F8(a1, &v39, &v38);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v10 = v38;
    v34 = 0.0001128;
    sub_23372A488(&v39, [(__CFString *)off_27DE37AE0[0] UTF8String]);
    sub_23372A650(a1, &v39, &v34);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v33 = -0.06729;
    sub_23372A488(&v39, [(__CFString *)off_27DE37AE8[0] UTF8String]);
    sub_23372A650(a1, &v39, &v33);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v32 = -5.241;
    sub_23372A488(&v39, [(__CFString *)off_27DE37AF0[0] UTF8String]);
    sub_23372A650(a1, &v39, &v32);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v31 = 0;
    sub_23372A488(&v39, [(__CFString *)off_27DE37AF8[0] UTF8String]);
    sub_23372A3F8(a1, &v39, &v31);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    sub_23372A488(&v39, "hnat");
    v11 = sub_23372A3F8(a1, &v39, &v38);
    v12 = v11;
    if (v40 < 0)
    {
      operator delete(v39);
      if (v12)
      {
LABEL_30:
        v13 = v38;
        v30 = 0.0;
        sub_23372A488(&v39, "hbf");
        sub_23372A650(a1, &v39, &v30);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v29 = 0.0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B10[0] UTF8String]);
        sub_23372A650(a1, &v39, &v29);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v28 = 0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B18[0] UTF8String]);
        sub_23372A650(a1, &v39, &v28);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v27 = 0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B20[0] UTF8String]);
        sub_23372A650(a1, &v39, &v27);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        sub_23372A488(&v39, [(__CFString *)off_27DE37B28[0] UTF8String]);
        sub_23372A3F8(a1, &v39, &v38);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v14 = v38;
        v26 = 0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B30[0] UTF8String]);
        sub_23372A650(a1, &v39, &v26);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v25 = 0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B38[0] UTF8String]);
        sub_23372A650(a1, &v39, &v25);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v24 = 0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B40[0] UTF8String]);
        sub_23372A650(a1, &v39, &v24);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        sub_23372A488(&v39, [(__CFString *)off_27DE37B48[0] UTF8String]);
        sub_23372A3F8(a1, &v39, &v38);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v15 = v38;
        v23 = 0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B50[0] UTF8String]);
        sub_23372A650(a1, &v39, &v23);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v22 = 0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B58[0] UTF8String]);
        sub_23372A650(a1, &v39, &v22);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v21 = 0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B60[0] UTF8String]);
        sub_23372A650(a1, &v39, &v21);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        sub_23372A488(&v39, [(__CFString *)off_27DE37B68[0] UTF8String]);
        sub_23372A3F8(a1, &v39, &v38);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v16 = v38;
        v20 = 0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B70[0] UTF8String]);
        sub_23372A650(a1, &v39, &v20);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v19 = 0;
        sub_23372A488(&v39, [(__CFString *)off_27DE37B78[0] UTF8String]);
        sub_23372A650(a1, &v39, &v19);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        v18 = 0;
        sub_23372A488(&v39, [off_27DE37B80 UTF8String]);
        sub_23372A650(a1, &v39, &v18);
        if (v40 < 0)
        {
          operator delete(v39);
        }

        sub_23372FE60(v9, v10, v31, v13, v14, v15, v16, v37, v36, v35, v34, v33, v32, v30, v29, v17, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18);
      }
    }

    else if (v11)
    {
      goto LABEL_30;
    }

    operator new();
  }

  operator delete(v39);
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  v6 = v41;
  v7 = (v42 - v41) >> 3;
  if (v7 >= 3 && v7 % 3 == 0)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    v42 = v6;
    operator delete(v6);
  }
}

void sub_23372FD40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 152);
  if (v3)
  {
    *(v1 - 144) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23372FE60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v41 = a1;
  v39 = a9;
  v40 = a8;
  v38 = a10;
  v37 = a2;
  v35 = a12;
  v36 = a11;
  v34 = a13;
  v32 = a4;
  v33 = a3;
  v30 = a15;
  v31 = a14;
  v28 = a6;
  v29 = a5;
  v27 = a7;
  sub_233731058(&v42, &v41, &v40, &v39, &v38, &v37, &v36, &v35, &v34, &v33, &v32, &v31, &v30, &a17, &a18, &v29, &a19, &a20, &a21, &v28, &a22, &a23, &a24, &v27, &a25, &a26, &a27);
}

void *sub_23372FF44(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = v1;
  v4 = [v3 objectForKeyedSubscript:@"otrc_2"];

  if (!v4)
  {
    [v3 setObject:&unk_2849549D0 forKeyedSubscript:@"otrc_2"];
  }

  v5 = [v3 objectForKeyedSubscript:@"otrc_3"];

  if (!v5)
  {
    [v3 setObject:&unk_2849549D0 forKeyedSubscript:@"otrc_3"];
  }

  v6 = [v3 objectForKeyedSubscript:@"otrc_4"];

  if (!v6)
  {
    [v3 setObject:&unk_2849549D0 forKeyedSubscript:@"otrc_4"];
  }

  v7 = [v3 objectForKeyedSubscript:@"otrc_5"];

  if (!v7)
  {
    [v3 setObject:&unk_2849549D0 forKeyedSubscript:@"otrc_5"];
  }

  v8 = [v3 objectForKeyedSubscript:@"otrc_6"];

  if (!v8)
  {
    [v3 setObject:&unk_2849549D0 forKeyedSubscript:@"otrc_6"];
  }

  v9 = [v3 objectForKeyedSubscript:@"otrc_7"];

  if (!v9)
  {
    [v3 setObject:&unk_2849549D0 forKeyedSubscript:@"otrc_7"];
  }

  v10 = [v3 objectForKeyedSubscript:@"otrc_8"];

  if (!v10)
  {
    [v3 setObject:&unk_2849549D0 forKeyedSubscript:@"otrc_8"];
  }

  v11 = *(a1 + 8);
  v12 = v11;

  return v11;
}

id sub_233730154(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_233730380;
    v11[3] = &unk_2789EE910;
    v11[4] = a1;
    v5 = MEMORY[0x2383AC810](v11);
    [v3 UTF8String];
    v6 = sub_2338717E0(v5);

    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v4 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v4 description];
      CFShow(v9);
      v10 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v10, "RawCameraException");
      __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return v4;
}

void sub_233730318(_Unwind_Exception *a1)
{
  __cxa_free_exception(v5);

  _Unwind_Resume(a1);
}

id sub_233730380(uint64_t a1, char *a2)
{
  v2 = *(a1 + 32);
  sub_23372A488(__p, a2);
  v3 = sub_233729FBC(__p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = sub_2338747A8();
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = *(v2 + 16);
    if (v6)
    {
      v5 = (*(v6 + 16))(v6, v3);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void sub_23373045C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x233730454);
}

void sub_2337304A8(uint64_t a1)
{

  JUMPOUT(0x2383ABF10);
}

uint64_t *sub_233730514(uint64_t *a1, uint64_t a2, __int16 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_233726290(a1, a2);
  }

  return a1;
}

void sub_233730694(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337306C8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_233730724(exception, a1);
  __cxa_throw(exception, off_2789EE7F8, MEMORY[0x277D825F8]);
}

std::logic_error *sub_233730724(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t *sub_233730758(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_23372375C(a1, a2);
  }

  return a1;
}

void sub_2337307B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337307F0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284902AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23373086C(void *a1)
{
  *a1 = &unk_284902AF0;
  sub_233730B2C((a1 + 1), a1[2]);
  return a1;
}

void sub_2337308B8(void *a1)
{
  *a1 = &unk_284902AF0;
  sub_233730B2C((a1 + 1), a1[2]);

  JUMPOUT(0x2383ABF10);
}

void sub_23373092C(uint64_t a1, int a2, double a3, double a4)
{
  v11 = a2;
  sub_233730758(&__p, 2uLL);
  v7 = __p;
  *__p = a3;
  v7[1] = a4;
  v12 = &v11;
  v8 = sub_233730B90(a1 + 8, &v11, &unk_233905F1C, &v12) + 5;
  if (v8 != &__p)
  {
    sub_23373176C(v8, __p, v10, (v10 - __p) >> 3);
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_2337309D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337309EC(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 16);
  v2 = a1 + 16;
  v3 = v4;
  v5 = 0.0;
  if (v4)
  {
    v6 = v2;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != v2 && *(v6 + 32) <= a2)
    {
      v10 = *(v6 + 40);
      v11 = *(v6 + 48);
      if (v11 - v10 == 16)
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        sub_2337236E0(&__p, v10, v11, 2uLL);
        v5 = *__p;
        v14 = __p;
        operator delete(__p);
      }
    }
  }

  return v5;
}

double sub_233730A84(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 16);
  v2 = a1 + 16;
  v3 = v4;
  v5 = 0.0;
  if (v4)
  {
    v6 = v2;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != v2 && *(v6 + 32) <= a2)
    {
      v10 = *(v6 + 40);
      v11 = *(v6 + 48);
      if (v11 - v10 == 16)
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        sub_2337236E0(&__p, v10, v11, 2uLL);
        v5 = *(__p + 1);
        v14 = __p;
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_233730B2C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_233730B2C(a1, *a2);
    sub_233730B2C(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_233730B90(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t *sub_233730C68(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_233730CC0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_233730CC0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_233730E7C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284902C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233730EF8(uint64_t result, int a2, int a3, int a4, float64x2_t a5, float64_t a6, double a7, float64x2_t a8, float64_t a9, double a10)
{
  *result = &unk_284902C88;
  *(result + 8) = a2;
  *(result + 32) = a7;
  *(result + 40) = a3;
  *(result + 64) = a10;
  *(result + 72) = a4;
  a5.f64[1] = a6;
  if (a2)
  {
    v10 = vminnmq_f64(vmaxnmq_f64(a5, xmmword_233903E00), xmmword_233903E10);
    *(result + 32) = fmin(fmax(a7, -0.5), 1.5);
  }

  else
  {
    v10 = vminnmq_f64(vmaxnmq_f64(a5, xmmword_233903E20), xmmword_233903E30);
  }

  *(result + 16) = v10;
  a8.f64[1] = a9;
  if (a3)
  {
    v11 = vminnmq_f64(vmaxnmq_f64(a8, xmmword_233903E40), xmmword_233903E50);
    *(result + 64) = fmin(fmax(a10, -1000.0), 1000.0);
  }

  else
  {
    v11 = vminnmq_f64(vmaxnmq_f64(a8, xmmword_233903E60), xmmword_233903E70);
  }

  *(result + 48) = v11;
  return result;
}

double sub_233731008(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 8) == 1)
  {
    return *(a1 + 32);
  }

  return result;
}

double sub_233731038(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 40) == 1)
  {
    return *(a1 + 64);
  }

  return result;
}