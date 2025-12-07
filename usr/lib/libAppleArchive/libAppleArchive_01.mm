uint64_t pcWrite(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a4;
    v8 = 0;
    while (1)
    {
      v9 = a1(a2, a3, v6);
      v10 = v9;
      if (v9 < 0)
      {
        break;
      }

      a3 += v9;
      v8 += v9;
      v6 -= v9;
      if (!v6)
      {
        return v8;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 131, 37, 0, "pcWrite failed");
    return v10;
  }

  else
  {
    v8 = a1(a2, 0, 0);
    if (v8 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed");
    }
  }

  return v8;
}

uint64_t PCompressFilter(unsigned int *a1, void *a2, void *a3)
{
  v84[2] = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  v82 = 0;
  v80 = 0u;
  *v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  DefaultNThreads = a1[2];
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  a1[2] = DefaultNThreads;
  if (a1[1] == 1)
  {
    if (pcRead(*a2, a2[2], &v83, 4) == 4)
    {
      if (a3)
      {
        *a3 += 4;
      }

      v7 = 0;
      while (1)
      {
        DecoderKey = PCompressGetDecoderKey(v7);
        if (DecoderKey != 63)
        {
          LODWORD(v84[0]) = 544891504;
          BYTE3(v84[0]) = DecoderKey;
          if (v83 == LODWORD(v84[0]))
          {
            break;
          }
        }

        if (++v7 == 7)
        {
          if (compression_stream_identify_algorithm() == -1)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", 179, 37, 0, "invalid header in input stream");
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", 178, 37, 0, "compressed stream detected : try compression_tool");
          }

          goto LABEL_89;
        }
      }

      v84[0] = 0;
      if (pcRead(*a2, a2[2], v84, 8) == 8)
      {
        if (a3)
        {
          *a3 += 8;
        }

        if (v84[0])
        {
          *(a1 + 2) = bswap64(v84[0]);
          *a1 = v7;
          if (a1[6] >= 1)
          {
            v13 = MEMORY[0x29EDCA610];
            v14 = *MEMORY[0x29EDCA610];
            DecoderDescription = PCompressGetDecoderDescription(v7);
            fprintf(v14, "Decoder: %s\n", DecoderDescription);
            fprintf(*v13, "Blocksize: %llu\n");
          }

          goto LABEL_28;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processFileHeader", 191, 37, 0, "invalid blockSize in input stream");
      }
    }

LABEL_89:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 507, 37, 0, "processFileHeader");
    goto LABEL_90;
  }

  v9 = *(a1 + 2);
  EncoderDecoder = PCompressGetEncoderDecoder(*a1);
  v11 = PCompressGetDecoderKey(EncoderDecoder);
  if (v11 == 63)
  {
    goto LABEL_89;
  }

  v83 = 544891504;
  HIBYTE(v83) = v11;
  if (pcWrite(a2[3], a2[5], &v83, 4) != 4)
  {
    goto LABEL_89;
  }

  if (a3)
  {
    a3[1] += 4;
  }

  v84[0] = bswap64(v9);
  if (pcWrite(a2[3], a2[5], v84, 8) != 8)
  {
    goto LABEL_89;
  }

  if (a3)
  {
    a3[1] += 8;
  }

  if (a1[6] >= 1)
  {
    v12 = *MEMORY[0x29EDCA610];
    PCompressGetEncoderDescription(*a1);
    fprintf(v12, "Encoder: %s\n");
  }

LABEL_28:
  v16 = *(a1 + 1);
  v75 = *a1;
  v76 = v16;
  v80 = 0u;
  *v81 = 0u;
  v82 = 0;
  v17 = *(a2 + 1);
  v77 = *a2;
  v78 = v17;
  v79 = *(a2 + 2);
  if (a3)
  {
    v80 = *a3;
  }

  v18 = *a1;
  if (a1[1])
  {
    DecoderFilter = PCompressGetDecoderFilter(v18);
  }

  else
  {
    DecoderFilter = PCompressGetEncoderFilter(v18);
  }

  v81[0] = DecoderFilter;
  v20 = calloc(a1[2], 0x48uLL);
  v81[1] = v20;
  if (!v20)
  {
    v26 = 468;
LABEL_86:
    v59 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", v26, 37, *v59, "malloc");
LABEL_87:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 510, 37, 0, "initFilterState");
LABEL_101:
    v65 = 0;
    v66 = 1;
    goto LABEL_102;
  }

  v21 = a1[2];
  if (v21 < 1)
  {
    goto LABEL_43;
  }

  v22 = v20;
  v23 = *(a1 + 2);
  v24 = malloc(v23);
  v22[1] = v24;
  v25 = malloc(v23);
  v22[5] = v25;
  *v22 = &v75;
  v26 = 477;
  if (!v24 || !v25)
  {
    goto LABEL_86;
  }

  v27 = 0;
  v28 = v22 + 9;
  do
  {
    if (v21 - 1 == v27)
    {
      goto LABEL_43;
    }

    v29 = malloc(v23);
    v28[1] = v29;
    v30 = malloc(v23);
    v28[5] = v30;
    *v28 = &v75;
    ++v27;
    if (!v29)
    {
      break;
    }

    v28 += 9;
  }

  while (v30);
  v31 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "initFilterState", 477, 37, *v31, "malloc");
  if (v27 < v21)
  {
    goto LABEL_87;
  }

LABEL_43:
  v32 = v76;
  v33 = SDWORD2(v75);
  v34 = malloc(8 * SDWORD2(v75));
  if (!v34)
  {
    v64 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 372, 37, v64, "malloc");
    goto LABEL_100;
  }

  v35 = v34;
  if (v33 >= 1)
  {
    v36 = v81[1];
    v37 = (v33 + 1) & 0xFFFFFFFE;
    v38 = vdupq_n_s64(v33 - 1);
    v39 = xmmword_296AD1760;
    v40 = v34 + 8;
    v41 = vdupq_n_s64(2uLL);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v38, v39));
      if (v42.i8[0])
      {
        *(v40 - 1) = v36;
      }

      if (v42.i8[4])
      {
        *v40 = v36 + 72;
      }

      v39 = vaddq_s64(v39, v41);
      v40 += 2;
      v36 += 144;
      v37 -= 2;
    }

    while (v37);
  }

  v74 = v32;
  v43 = ThreadPipelineCreate(v33, v34, compressionWorkerProc, &v75, outputStreamProc, 0);
  if (!v43)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 375, 37, 0, "creating pipeline");
    goto LABEL_100;
  }

  v44 = v43;
  v73 = v35;
  v45 = 0;
  v46 = 1;
  while (1)
  {
    if (atomic_load(&v82))
    {
      v46 = 0;
LABEL_115:
      v71 = v46 == 0;
      goto LABEL_117;
    }

    if (!v46)
    {
      break;
    }

    Worker = ThreadPipelineGetWorker(v44);
    if (!Worker)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 387, 37, 0, "getting worker from pipeline");
      v56 = 0;
LABEL_82:
      v46 = 0;
      goto LABEL_83;
    }

    v49 = Worker;
    if (DWORD1(v75) == 1)
    {
      v50 = pcRead(v77, v78, v84, 16);
      if (v50)
      {
        v51 = v50;
        if (v50 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 397, 37, 0, "reading block header");
          v51 = 0;
        }

        else if (v50 == 16)
        {
          v52 = v32;
          v53 = bswap64(v84[0]);
          v54 = bswap64(v84[1]);
          if (v54 > v52 || v53 > v52)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 405, 37, 0, "Invalid block header payload=0x%llx raw=0x%llx block=0x%llx\n", v54, v53, v52);
            v51 = 16;
            v32 = v52;
          }

          else
          {
            v55 = pcRead(v77, v78, v49[1], v54);
            if (v55 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 411, 37, 0, "reading block payload");
              v51 = 16;
            }

            else
            {
              v51 = v55 + 16;
              if (v55 == v54)
              {
                v56 = 0;
                v49[3] = v54;
                v49[4] = v53;
                v49[2] = v45;
                *&v80 = v80 + v51;
                v46 = 1;
                v32 = v74;
                goto LABEL_80;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 415, 37, 0, "Truncated block payload (%lld/%llu bytes read)", v55, v54);
            }

            v32 = v74;
          }
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 399, 37, 0, "Truncated block header (%lld/16 bytes read)", v50);
        }

        v46 = 0;
        *&v80 = v80 + v51;
        v58 = -1;
      }

      else
      {
        v58 = -2;
        v46 = 1;
      }
    }

    else
    {
      v57 = pcRead(v77, v78, *(Worker + 8), v32);
      if (v57 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 428, 37, 0, "reading block");
        v46 = 0;
        v58 = -1;
      }

      else
      {
        if (v57)
        {
          v56 = 0;
          v49[3] = v57;
          v49[4] = 0;
          v49[2] = v45;
          *&v80 = v80 + v57;
          v46 = 1;
          goto LABEL_80;
        }

        v58 = -2;
        v46 = 1;
      }
    }

    v49[2] = v58;
    v56 = v46;
LABEL_80:
    if ((ThreadPipelineRunWorker(v44) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 445, 37, 0, "RunWorker");
      goto LABEL_82;
    }

LABEL_83:
    ++v45;
    if (v56)
    {
      goto LABEL_115;
    }
  }

  atomic_load(&v82);
  v71 = 1;
LABEL_117:
  if ((ThreadPipelineDestroy(v44) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "processStream", 447, 37, 0, "ThreadPipelineDestroy");
    free(v73);
    goto LABEL_100;
  }

  free(v73);
  if (v71)
  {
LABEL_100:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 513, 37, 0, "processStream");
    goto LABEL_101;
  }

  v72 = (a2[3])(a2[5], 0, 0);
  if (v72 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcWrite", 121, 37, 0, "pcWrite EOF failed");
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "PCompressFilter", 520, 37, 0, "writing EOF");
    goto LABEL_101;
  }

  v66 = 0;
  *(&v80 + 1) += v72;
  v65 = 1;
LABEL_102:
  v67 = v81[1];
  if (v81[1])
  {
    if (SDWORD2(v75) >= 1)
    {
      v68 = 0;
      v69 = 0;
      do
      {
        free(*(v81[1] + v68 + 8));
        free(*(v81[1] + v68 + 40));
        ++v69;
        v68 += 72;
      }

      while (v69 < SDWORD2(v75));
      v67 = v81[1];
    }

    free(v67);
    v81[1] = 0;
  }

  v70 = v65 ^ 1;
  if (!a3)
  {
    v70 = 1;
  }

  if ((v70 & 1) == 0)
  {
    v62 = 0;
    *a3 = v80;
    goto LABEL_95;
  }

  if (!v66)
  {
    v62 = 0;
    goto LABEL_95;
  }

LABEL_90:
  v60 = a2[4];
  if (v60)
  {
    v60(a2[5]);
  }

  v61 = a2[1];
  if (v61)
  {
    v61(a2[2]);
  }

  v62 = -1;
LABEL_95:
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v62;
  }

  else
  {
    return result;
  }
}

uint64_t pcRead(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  v8 = 0;
  while (1)
  {
    v9 = a1(a2, a3, v4);
    v10 = v9;
    if (v9 < 0)
    {
      break;
    }

    if (v9)
    {
      a3 += v9;
      v8 += v9;
      v4 -= v9;
      if (v4)
      {
        continue;
      }
    }

    return v8;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "pcRead", 82, 37, 0, "pcRead failed");
  return v10;
}

size_t PCompressCopyEncode(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

size_t PCompressCopyDecode(void *a1, size_t a2, void *__src, size_t __n)
{
  if (a2 < __n)
  {
    return -1;
  }

  v4 = __n;
  memcpy(a1, __src, __n);
  return v4;
}

AEAAuthData AEAAuthDataCreate(void)
{
  v0 = malloc(0x30uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x30uLL, 0, 0x30uLL);
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreate", 19, 95, *v2, "malloc");
  }

  return v1;
}

void AEAAuthDataDestroy(AEAAuthData auth_data)
{
  if (auth_data)
  {
    free(*(auth_data + 2));
    free(*(auth_data + 5));
    memset_s(auth_data + 24, 0x18uLL, 0, 0x18uLL);
    memset_s(auth_data, 0x30uLL, 0, 0x30uLL);

    free(auth_data);
  }
}

AEAAuthData AEAAuthDataCreateWithContext(AEAContext context)
{
  __s = 0;
  v44 = 0;
  __ptr = 0;
  v42 = 0;
  v2 = AEAAuthDataCreate();
  if (!v2)
  {
    return v2;
  }

  if (AEAContextGetFieldBlob(context, 5u, 0, 0, 0, &v42) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreateWithContext", 46, 95, 0, "AEAContextGetFieldBlob", v42, __s, v44);
    goto LABEL_31;
  }

  if (!v42)
  {
    goto LABEL_97;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v3 = v44;
  if (v44 >= v42)
  {
    v6 = __ptr;
  }

  else
  {
    do
    {
      while (!v3)
      {
        v3 = 0x4000;
        if (v42 <= 0x4000)
        {
          v5 = __ptr;
          v3 = 0x4000;
          goto LABEL_18;
        }
      }

      v4 = v3 >> 1;
      if ((v3 & (v3 >> 1)) != 0)
      {
        v4 = v3 & (v3 >> 1);
      }

      v3 += v4;
    }

    while (v3 < v42);
    if (v3 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_29;
    }

    v5 = __ptr;
LABEL_18:
    v6 = realloc(v5, v3);
    if (!v6)
    {
      free(v5);
LABEL_29:
      v44 = 0;
      __ptr = 0;
      __s = 0;
      goto LABEL_30;
    }

    v44 = v3;
    __ptr = v6;
  }

  if (AEAContextGetFieldBlob(context, 5u, 0, v3 - __s, v6 + __s, &v42) < 0)
  {
    goto LABEL_30;
  }

  v7 = __s;
  if (v42)
  {
    v7 = __s + v42;
    if (!__CFADD__(__s, v42) && v7 <= v44)
    {
      __s += v42;
      goto LABEL_25;
    }

LABEL_30:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreateWithContext", 59, 95, 0, "AEAContextGetFieldBlob", v42, __s, v44);
    goto LABEL_31;
  }

LABEL_25:
  v8 = __ptr;
  *v2 = 0;
  *(v2 + 3) = 0;
  v9 = (v2 + 24);
  if (!v7)
  {
    goto LABEL_97;
  }

  if (v7 < 4)
  {
    goto LABEL_27;
  }

  v10 = 0;
  v11 = 1;
  while (2)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *&v8[v13];
      if (v14 < 4)
      {
        goto LABEL_27;
      }

      v15 = __CFADD__(v14, v13);
      v16 = v14 + v13;
      if (v15 || v16 > v7)
      {
        goto LABEL_27;
      }

      if (v10)
      {
        v17 = *(v2 + 2);
        v18 = (*v2)++;
        *(v17 + 8 * v18) = v13;
        if (v16 >= v7)
        {
          goto LABEL_68;
        }

        ++v12;
        goto LABEL_41;
      }

      ++v12;
      if (v16 >= v7)
      {
        break;
      }

LABEL_41:
      v13 = v16;
      if (v16 + 4 > v7)
      {
        goto LABEL_27;
      }
    }

    if (v11)
    {
      if (v12 > 0xFFFFFFFE)
      {
        goto LABEL_27;
      }

      v19 = *(v2 + 1);
      if (v19 >= v12)
      {
        goto LABEL_55;
      }

      v20 = *(v2 + 1);
      do
      {
        if (v20)
        {
          v20 *= 2;
        }

        else
        {
          v20 = 16;
        }
      }

      while (v20 < v12);
      if (v20 <= v19)
      {
        goto LABEL_55;
      }

      *(v2 + 1) = v20;
      if (8 * v20 >= 0x2000000001)
      {
        *__error() = 12;
      }

      else
      {
        v21 = *(v2 + 2);
        v22 = realloc(v21, 8 * v20);
        if (v22)
        {
          *(v2 + 2) = v22;
LABEL_55:
          if ((v7 & 0x8000000000000000) == 0)
          {
            v23 = *(v2 + 4);
            if (v23 >= v7)
            {
              goto LABEL_67;
            }

            do
            {
              while (!v23)
              {
                v23 = 0x4000;
                v25 = 0x4000;
                if (v7 <= 0x4000)
                {
                  goto LABEL_65;
                }
              }

              v24 = v23 >> 1;
              if ((v23 & (v23 >> 1)) != 0)
              {
                v24 = v23 & (v23 >> 1);
              }

              v23 += v24;
            }

            while (v23 < v7);
            v25 = v23;
            if (v23 >= 0x2000000001)
            {
              *__error() = 12;
            }

            else
            {
LABEL_65:
              v26 = *(v2 + 5);
              v27 = realloc(v26, v25);
              if (v27)
              {
                *(v2 + 4) = v25;
                *(v2 + 5) = v27;
LABEL_67:
                v11 = 0;
                v10 = 1;
                continue;
              }

              free(v26);
            }

            *v9 = 0;
            *(v2 + 4) = 0;
            *(v2 + 5) = 0;
          }

LABEL_27:
          *v2 = 0;
          *(v2 + 3) = 0;
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreateWithContext", 62, 95, 0, "invalid auth data blob", v42, __s, v44);
          goto LABEL_31;
        }

        free(v21);
      }

      *(v2 + 2) = 0;
      goto LABEL_27;
    }

    break;
  }

LABEL_68:
  *v9 = 0;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  v28 = *(v2 + 4);
  if (v28 < v7)
  {
    v29 = 0x4000;
    do
    {
      while (!v28)
      {
        v28 = 0x4000;
        if (v7 <= 0x4000)
        {
          goto LABEL_80;
        }
      }

      v30 = v28 >> 1;
      if ((v28 & (v28 >> 1)) != 0)
      {
        v30 = v28 & (v28 >> 1);
      }

      v28 += v30;
    }

    while (v28 < v7);
    v29 = v28;
    if (v28 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_101:
      *(v2 + 4) = 0;
      *(v2 + 5) = 0;
      goto LABEL_27;
    }

LABEL_80:
    v31 = *(v2 + 5);
    v32 = realloc(v31, v29);
    if (!v32)
    {
      free(v31);
      goto LABEL_101;
    }

    *(v2 + 4) = v29;
    *(v2 + 5) = v32;
  }

  v33 = *(v2 + 5);
  if (v8)
  {
    memcpy((v33 + *v9), v8, v7);
  }

  else if (v33)
  {
    memset_s((v33 + *v9), v7, 0, v7);
  }

  *(v2 + 3) += v7;
  v34 = *v2;
  if (!*v2)
  {
LABEL_97:
    free(__ptr);
    memset_s(&__s, 0x18uLL, 0, 0x18uLL);
    return v2;
  }

  v35 = 0;
  while (v34 <= v35)
  {
    v36 = 0;
    v37 = 0xFFFFFFFFLL;
LABEL_92:
    v38 = (v36 + 1);
    v39 = v37 - 4;
    while (*v38++)
    {
      if (!--v39)
      {
        goto LABEL_99;
      }
    }

    if (++v35 == v34)
    {
      goto LABEL_97;
    }
  }

  v36 = (*(v2 + 5) + *(*(v2 + 2) + 8 * v35));
  v37 = *v36;
  if (v37 >= 5)
  {
    goto LABEL_92;
  }

LABEL_99:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataCreateWithContext", 74, 95, 0, "invalid auth_data key", v42, __s, v44);
LABEL_31:
  free(__ptr);
  memset_s(&__s, 0x18uLL, 0, 0x18uLL);
  AEAAuthDataDestroy(v2);
  return 0;
}

int AEAAuthDataGetEntry(AEAAuthData auth_data, uint32_t i, size_t key_capacity, char *key, size_t *key_length, size_t data_capacity, uint8_t *data, size_t *data_size)
{
  if (*auth_data <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataGetEntry", 98, 95, 0, "invalid entry index %u", data, data_size);
    return -1;
  }

  v8 = (*(auth_data + 5) + *(*(auth_data + 2) + 8 * i));
  v9 = v8 + 1;
  v10 = *v8;
  if (v10 < 5)
  {
    goto LABEL_15;
  }

  v14 = 0;
  while (v9[v14])
  {
    if (++v14 + 4 >= v10)
    {
      goto LABEL_15;
    }
  }

  v15 = v10 - 5 - v14;
  if (v15 >= v10)
  {
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataGetEntry", 109, 95, 0, "invalid auth_data blob");
    return -1;
  }

  if (key_length)
  {
    *key_length = v14;
  }

  if (data_size)
  {
    *data_size = v15;
  }

  if (v14 >= key_capacity)
  {
    if (key_capacity)
    {
      return -1;
    }
  }

  else
  {
    memcpy(key, v9, v14);
    key[v14] = 0;
  }

  if (v15 > data_capacity)
  {
    if (!data_capacity)
    {
      return 0;
    }

    return -1;
  }

  memcpy(data, v8 + v10 - v15, v15);
  return 0;
}

int AEAAuthDataAppendEntry(AEAAuthData auth_data, const char *key, const uint8_t *data, size_t data_size)
{
  v8 = strlen(key);
  v9 = v8 + 1;
  v10 = v8 + 5;
  if (v8 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v11 = data_size + v10, __CFADD__(data_size, v10)) || v11 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataAppendEntry", 148, 95, 0, "invalid attribute size");
    return -1;
  }

  if (v11 < 4)
  {
    goto LABEL_48;
  }

  v12 = (auth_data + 24);
  v13 = *(auth_data + 3);
  v14 = v13 + v11;
  if (__CFADD__(v13, v11))
  {
    goto LABEL_48;
  }

  v16 = *auth_data;
  v15 = *(auth_data + 1);
  v17 = *auth_data + 1;
  if (v15 < v17)
  {
    v18 = *(auth_data + 1);
    do
    {
      if (v18)
      {
        v18 *= 2;
      }

      else
      {
        v18 = 16;
      }
    }

    while (v18 < v17);
    if (v18 > v15)
    {
      v20 = (auth_data + 16);
      v19 = *(auth_data + 2);
      *(auth_data + 1) = v18;
      if (8 * v18 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_47:
        *auth_data = 0;
        *v20 = 0;
        *(auth_data + 3) = 0;
        goto LABEL_48;
      }

      v39 = v19;
      v40 = v16;
      v21 = realloc(v19, 8 * v18);
      if (!v21)
      {
        free(v39);
        goto LABEL_47;
      }

      *v20 = v21;
      v16 = v40;
    }
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v22 = *(auth_data + 4);
  if (v22 < v14)
  {
    do
    {
      while (!v22)
      {
        v22 = 0x4000;
        if (v14 <= 0x4000)
        {
          v22 = 0x4000;
          goto LABEL_29;
        }
      }

      v23 = v22 >> 1;
      if ((v22 & (v22 >> 1)) != 0)
      {
        v23 = v22 & (v22 >> 1);
      }

      v22 += v23;
    }

    while (v22 < v14);
    if (v22 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_42;
    }

LABEL_29:
    v41 = v16;
    v24 = *(auth_data + 5);
    v25 = realloc(v24, v22);
    if (v25)
    {
      *(auth_data + 4) = v22;
      *(auth_data + 5) = v25;
      v16 = v41;
      goto LABEL_31;
    }

    free(v24);
LABEL_42:
    *(auth_data + 4) = 0;
    *(auth_data + 5) = 0;
LABEL_43:
    *auth_data = 0;
    *(auth_data + 3) = 0;
    goto LABEL_48;
  }

LABEL_31:
  v26 = *v12;
  v27 = *v12 + v11;
  if (__CFADD__(*v12, v11) || (v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if (v22 < v27)
  {
    do
    {
      while (!v22)
      {
        v22 = 0x4000;
        if (v27 <= 0x4000)
        {
          v42 = v16;
          v29 = (auth_data + 40);
          v22 = 0x4000;
          goto LABEL_53;
        }
      }

      v28 = v22 >> 1;
      if ((v22 & (v22 >> 1)) != 0)
      {
        v28 = v22 & (v22 >> 1);
      }

      v22 += v28;
    }

    while (v22 < v27);
    v29 = (auth_data + 40);
    if (v22 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_61;
    }

    v42 = v16;
LABEL_53:
    v39 = v29;
    v33 = *v29;
    v30 = realloc(v33, v22);
    if (v30)
    {
      *(auth_data + 5) = v30;
      v31 = (auth_data + 40);
      *(auth_data + 4) = v22;
      v26 = *(auth_data + 3);
      goto LABEL_55;
    }

    free(v33);
    v29 = v39;
LABEL_61:
    *v29 = 0;
    *v12 = 0;
    *(auth_data + 4) = 0;
    goto LABEL_48;
  }

  v42 = v16;
  v31 = (auth_data + 40);
  v30 = *(auth_data + 5);
  if (v30)
  {
LABEL_55:
    memset_s(&v30[v26], v11, 0, v11);
    v26 = *v12;
  }

  *(auth_data + 3) = v26 + v11;
  v34 = *(auth_data + 2);
  v35 = (*auth_data)++;
  *(v34 + 8 * v35) = v13;
  if (v13 >= 0xFFFFFFFFFFFFFFFCLL || v13 + 4 > *v12 || (*(*v31 + v13) = v11, v42 < 0))
  {
LABEL_48:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataAppendEntry", 152, 95, 0, "alloc auth_data entry", v39);
    return -1;
  }

  v36 = *(auth_data + 5);
  v37 = *(*(auth_data + 2) + 8 * v42);
  *(v36 + v37) = v11;
  v38 = (v36 + v37 + 4);
  memcpy(v38, key, v9);
  memcpy(&v38[v9], data, data_size);
  return 0;
}

int AEAAuthDataSetEntry(AEAAuthData auth_data, uint32_t i, const char *key, const uint8_t *data, size_t data_size)
{
  if (*auth_data <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataSetEntry", 172, 95, 0, "invalid auth_data index");
    return -1;
  }

  v10 = strlen(key);
  v11 = v10 + 1;
  v12 = v10 + 5;
  if (v10 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v14 = data_size + v12, __CFADD__(data_size, v12)) || v14 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataSetEntry", 180, 95, 0, "invalid attribute size");
    return -1;
  }

  if (v14 < 4)
  {
    goto LABEL_11;
  }

  v15 = i;
  v16 = *(*(auth_data + 2) + 8 * i);
  v17 = *(auth_data + 5);
  v18 = *&v17[v16];
  v19 = v16 + v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_11;
  }

  v20 = *(auth_data + 3);
  v21 = v20 - v19;
  if (v20 < v19)
  {
    goto LABEL_11;
  }

  v22 = v14 - v18;
  if (v14 > v18)
  {
    v23 = v20 + v22;
    if ((v20 + v22) < 0)
    {
LABEL_11:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataSetEntry", 183, 95, 0, "alloc auth_data entry", v42, v43, v44, v45);
      return -1;
    }

    v24 = *(auth_data + 4);
    if (v24 < v23)
    {
      v25 = 0x4000;
      do
      {
        while (!v24)
        {
          v24 = 0x4000;
          if (v23 <= 0x4000)
          {
            goto LABEL_29;
          }
        }

        v26 = v24 >> 1;
        if ((v24 & (v24 >> 1)) != 0)
        {
          v26 = v24 & (v24 >> 1);
        }

        v24 += v26;
      }

      while (v24 < v23);
      v25 = v24;
      if (v24 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_44;
      }

LABEL_29:
      v43 = v22;
      v44 = v20 - v19;
      v45 = v15;
      v42 = v25;
      v32 = realloc(v17, v25);
      if (v32)
      {
        v22 = v43;
        *(auth_data + 4) = v42;
        *(auth_data + 5) = v32;
        v17 = v32;
        v21 = v20 - v19;
        v15 = v45;
        goto LABEL_31;
      }

      free(v17);
LABEL_44:
      *(auth_data + 3) = 0;
      *(auth_data + 4) = 0;
      *(auth_data + 5) = 0;
      goto LABEL_11;
    }

LABEL_31:
    if (v20 != v19)
    {
      v33 = &v17[v19];
      v34 = &v17[v19 + v22];
      v35 = v15;
      v36 = v22;
      memmove(v34, v33, v21);
      v22 = v36;
      v15 = v35;
    }

    v20 = *(auth_data + 3) + v22;
    goto LABEL_34;
  }

  if (v14 < v18)
  {
    v27 = v18 - v14;
    if (v20 != v19)
    {
      v28 = &v17[v19];
      v29 = &v17[v19 - v27];
      v30 = v15;
      v31 = v27;
      memmove(v29, v28, v21);
      v27 = v31;
      v15 = v30;
      v19 = *(auth_data + 3);
    }

    v20 = v19 - v27;
LABEL_34:
    *(auth_data + 3) = v20;
  }

  if (v16 >= 0xFFFFFFFFFFFFFFFCLL || v16 + 4 > v20)
  {
    goto LABEL_11;
  }

  *(*(auth_data + 5) + v16) = v14;
  if (*auth_data > v15)
  {
    v37 = v15;
    while (v16 < 0xFFFFFFFFFFFFFFFCLL && v16 + 4 <= *(auth_data + 3))
    {
      v38 = *(*(auth_data + 5) + v16);
      *(*(auth_data + 2) + 8 * v37) = v16;
      v16 += v38;
      if (++v37 >= *auth_data)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_11;
  }

LABEL_42:
  v39 = *(auth_data + 5);
  v40 = *(*(auth_data + 2) + 8 * v15);
  *(v39 + v40) = v14;
  v41 = (v39 + v40 + 4);
  memcpy(v41, key, v11);
  memcpy(&v41[v11], data, data_size);
  return 0;
}

int AEAAuthDataClear(AEAAuthData auth_data)
{
  *auth_data = 0;
  *(auth_data + 3) = 0;
  return 0;
}

int AEAAuthDataRemoveEntry(AEAAuthData auth_data, uint32_t i)
{
  v2 = *auth_data;
  if (*auth_data <= i || (v4 = i, v5 = *(*(auth_data + 2) + 8 * i), v6 = *(auth_data + 5), v7 = *(v6 + v5), v8 = __CFADD__(v5, v7), v9 = v5 + v7, v8) || (v10 = *(auth_data + 3), v10 < v9))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataRemoveEntry", 205, 95, 0, "invalid auth_data index %u", i);
    return -1;
  }

  else
  {
    if (v7)
    {
      if (v10 != v9)
      {
        memmove((v6 + v9 - v7), (v6 + v9), v10 - v9);
        v9 = *(auth_data + 3);
        v2 = *auth_data;
      }

      *(auth_data + 3) = v9 - v7;
    }

    v12 = v2 - 1;
    *auth_data = v12;
    if (v12 > v4)
    {
      v13 = *(auth_data + 2);
      do
      {
        *(v13 + 8 * v4) = *(v13 + 8 * v4 + 8) - v7;
        ++v4;
      }

      while (v4 < *auth_data);
    }

    return 0;
  }
}

uint64_t apfs_scan_diskimage(const char *a1, uint64_t (*a2)(__int128 *, uint64_t), uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  memset(&v27, 0, sizeof(v27));
  if (snprintf(__str, 0x400uLL, "%s.json", a1) <= 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 110, 144, 0, "snprintf");
    v8 = 0;
    v7 = 0;
    goto LABEL_71;
  }

  if (stat(__str, &v27) || (v27.st_mode & 0xF000) != 0x8000)
  {
    if (getenv("PC_APFS_DISKIMAGE_MAP") && (__strlcpy_chk(), !stat(__str, &v27)) && (v27.st_mode & 0xF000) == 0x8000 || (v14 = getenv("MASTERING_TOOLCHAIN_DIR")) != 0 && (snprintf(__str, 0x400uLL, "%s%s/%s", v14, "/System/Library/Filesystems/apfs.fs/Contents/Resources", "apfs_diskimage_map"), !stat(__str, &v27)) && (v27.st_mode & 0xF000) == 0x8000 || (snprintf(__str, 0x400uLL, "%s/%s", "/System/Library/Filesystems/apfs.fs/Contents/Resources", "apfs_diskimage_map"), !stat(__str, &v27)) && (v27.st_mode & 0xF000) == 0x8000)
    {
      v8 = malloc(0x40000uLL);
      if (v8)
      {
        v7 = AATempStreamOpen(0x800000uLL);
        if (v7)
        {
          snprintf(v36, 0x400uLL, "%s %s", __str, a1);
          v15 = popen(v36, "r");
          if (v15)
          {
            v16 = v15;
            while (!feof(v16))
            {
              v17 = fread(v8, 1uLL, 0x40000uLL, v16);
              if (ferror(v16))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 170, 144, 0, "reading from tool pipe");
LABEL_85:
                AAByteStreamClose(v7);
                pclose(v16);
LABEL_76:
                v22 = 0xFFFFFFFFLL;
                goto LABEL_77;
              }

              if (*(v7 + 3))
              {
                v18 = 0;
                if (v17)
                {
                  v19 = v8;
                  v20 = v17;
                  while (1)
                  {
                    v21 = (*(v7 + 3))(*v7, v19, v20);
                    if (v21 < 1)
                    {
                      break;
                    }

                    v19 += v21;
                    v18 += v21;
                    v20 -= v21;
                    if (!v20)
                    {
                      goto LABEL_68;
                    }
                  }

                  v18 = v21;
                }
              }

              else
              {
                v18 = -1;
              }

LABEL_68:
              if (v18 != v17)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 172, 144, 0, "writing tool output");
                goto LABEL_85;
              }
            }

            pclose(v16);
            AAByteStreamSeek(v7, 0, 0);
            goto LABEL_6;
          }

          v26 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 164, 144, v26, "%s");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 159, 144, 0, "temp stream open");
        }

LABEL_75:
        AAByteStreamClose(v7);
        goto LABEL_76;
      }

      v24 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 156, 144, *v24, "malloc");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 153, 144, 0, "could not locate the apfs diskimage map tool");
      v8 = 0;
    }

    v7 = 0;
    goto LABEL_75;
  }

  v7 = AAFileStreamOpenWithPath(__str, 0, 0);
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 114, 144, 0, "AAFileStreamOpenWithPath");
    v8 = 0;
    goto LABEL_71;
  }

  v8 = 0;
LABEL_6:
  v34 = 0u;
  *v35 = 0u;
  __src = 0;
  v33 = 0;
  v9 = AAJSONInputStreamOpen(v7);
  if (!v9)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 27, 144, 0, "AAJSONInputStreamOpen");
    v25 = 0;
    goto LABEL_91;
  }

  v10 = v9;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  *__s1 = 0u;
  if ((AAJSONInputStreamRead(v9, __s1) & 0x80000000) != 0)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v11 = v31;
    if (!v31)
    {
      AAJSONInputStreamClose(v10);
      v22 = 0;
      goto LABEL_72;
    }

    if (LODWORD(__s1[0]) < 2)
    {
      if (v31 <= 4)
      {
        if (v31 == 2)
        {
          if (strcmp(__s1[1], "volumes"))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 41, 144, 0, "bad map");
            goto LABEL_90;
          }
        }

        else if (v31 == 4 && strcmp(__s1[1], "files"))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 42, 144, 0, "bad map");
          goto LABEL_90;
        }
      }

      else
      {
        switch(v31)
        {
          case 5:
            v34 = 0u;
            *v35 = 0u;
            *&v35[2] = pc_array_init(16);
            break;
          case 6:
            if (strcmp(__s1[1], "extents"))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 43, 144, 0, "bad map");
              goto LABEL_90;
            }

            break;
          case 8:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 44, 144, 0, "bad map");
            goto LABEL_90;
        }
      }

      goto LABEL_44;
    }

    if (LODWORD(__s1[0]) == 2)
    {
      if (v31 == 4)
      {
        v35[1] = *(*&v35[2] - 64);
        if ((a2(&v34, a4) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 58, 144, 0, "add_fork");
          goto LABEL_90;
        }

        pc_array_free(*&v35[2]);
        *&v35[2] = 0;
        v11 = v31;
      }

      if (v11 == 6)
      {
        *&v35[2] = pc_array_append(*&v35[2], &__src);
        if (!*&v35[2])
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 67, 144, 0, "pc_array_append");
          goto LABEL_90;
        }
      }

      goto LABEL_44;
    }

    if (LODWORD(__s1[0]) != 4)
    {
      goto LABEL_44;
    }

    if (v31 != 7)
    {
      break;
    }

    v13 = __s1[1];
    if (!strcmp(__s1[1], "offset"))
    {
      __src = *(&v29 + 1);
    }

    else
    {
      if (strcmp(v13, "length"))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 83, 144, 0, "bad map");
        goto LABEL_90;
      }

      v33 = *(&v29 + 1);
    }

LABEL_44:
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    *__s1 = 0u;
    if ((AAJSONInputStreamRead(v10, __s1) & 0x80000000) != 0)
    {
      goto LABEL_90;
    }
  }

  if (v31 != 5)
  {
    goto LABEL_44;
  }

  v12 = __s1[1];
  if (!strcmp(__s1[1], "compression"))
  {
    v35[0] = BYTE8(v29);
    goto LABEL_44;
  }

  if (!strcmp(v12, "uncompressed_size"))
  {
    *&v34 = *(&v29 + 1);
    goto LABEL_44;
  }

  if (!strcmp(v12, "size"))
  {
    *(&v34 + 1) = *(&v29 + 1);
    goto LABEL_44;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 77, 144, 0, "bad map");
LABEL_90:
  v25 = v10;
LABEL_91:
  AAJSONInputStreamClose(v25);
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 181, 144, 0, "invalid image map JSON");
LABEL_71:
  v22 = 0xFFFFFFFFLL;
LABEL_72:
  AAByteStreamClose(v7);
LABEL_77:
  free(v8);
  return v22;
}

uint64_t reStringAppend(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v8 = (a1 + 8);
  v9 = a3 + *(a1 + 16) + 16;
  if (v9 <= *(a1 + 8))
  {
    goto LABEL_5;
  }

  *(a1 + 8) = v9;
  if (v9 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_30:
    *a1 = 0;
    perror("malloc");
    *v8 = 0;
    v8[1] = 0;
    return 0xFFFFFFFFLL;
  }

  v10 = *a1;
  v11 = realloc(*a1, v9);
  if (!v11)
  {
    free(v10);
    goto LABEL_30;
  }

  *a1 = v11;
LABEL_5:
  v12 = "(^\\Q";
  if ((a4 & 4) == 0)
  {
    v12 = "(^";
  }

  v13 = "(\\Q";
  if ((a4 & 4) == 0)
  {
    v13 = "(";
  }

  if (a4)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = "\\E)";
  if ((a4 & 4) == 0)
  {
    v15 = ")";
  }

  v16 = "\\E/)";
  if ((a4 & 4) == 0)
  {
    v16 = "/)";
  }

  if ((a4 & 8) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if ((a4 & 4) != 0)
  {
    v18 = "\\E$)";
  }

  else
  {
    v18 = "$)";
  }

  v19 = *(a1 + 16);
  v20 = *a1;
  if ((a4 & 2) != 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  if (v19)
  {
    *(a1 + 16) = v19 + 1;
    v20[v19] = 124;
    v20 = *a1;
    v19 = *(a1 + 16);
  }

  strlcpy(&v20[v19], v14, *(a1 + 8) - v19);
  v22 = strlen(v14);
  v23 = *(a1 + 8);
  v24 = *(a1 + 16) + v22;
  *(a1 + 16) = v24;
  strlcpy((*a1 + v24), a2, v23 - v24);
  v25 = *(a1 + 8);
  v26 = *(a1 + 16) + a3;
  *(a1 + 16) = v26;
  strlcpy((*a1 + v26), v21, v25 - v26);
  v27 = strlen(v21);
  result = 0;
  v29 = *(a1 + 16) + v27;
  *(a1 + 16) = v29;
  *(*a1 + v29) = 0;
  return result;
}

void *AAPathFilterCreate()
{
  v0 = malloc(0xA8uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0xA8uLL, 0, 0xA8uLL);
    v1[3] = StringTableCreate();
    v1[12] = StringTableCreate();
    v1[1] = StringTableCreate();
    v2 = StringTableCreate();
    v1[2] = v2;
    if (!v1[3] || !v1[12] || !v1[1] || !v2)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterCreate", 192, 130, 0, "StringTableCreate");
      AAPathFilterDestroy(v1);
      return 0;
    }
  }

  else
  {
    v3 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterCreate", 183, 130, *v3, "malloc");
  }

  return v1;
}

void AAPathFilterDestroy(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 56))
    {
      MEMORY[0x29C25E6A0](a1 + 64);
    }

    if (*(a1 + 128))
    {
      MEMORY[0x29C25E6A0](a1 + 64);
    }

    StringTableDestroy(*(a1 + 24));
    StringTableDestroy(*(a1 + 96));
    StringTableDestroy(*(a1 + 8));
    StringTableDestroy(*(a1 + 16));
    free(*(a1 + 32));
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    free(*(a1 + 104));

    free(a1);
  }
}

uint64_t AAPathFilterAddRule(uint64_t a1, unsigned int a2, unsigned int a3, char *__s, char *a5)
{
  v17[130] = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    if (*(a1 + 56))
    {
      MEMORY[0x29C25E6A0](a1 + 64);
      *(a1 + 56) = 0;
    }

    if (*(a1 + 128))
    {
      MEMORY[0x29C25E6A0](a1 + 64);
      *(a1 + 128) = 0;
    }

    *a1 = 0;
  }

  if (a2 >= 3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 235, 130, 0, "invalid rule type: %u");
  }

  else if (a3 >= 3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 243, 130, 0, "invalid match type: %u");
  }

  else if (a2 == 2 && a3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 246, 130, 0, "expected match type PREFIX for MAPTO rule", v16, v17[0]);
  }

  else if (a2 != 2 || a5)
  {
    if (a2 == 2 || !a5)
    {
      if (!__s)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 252, 130, 0, "match string is required for all rules", v16, v17[0]);
        return 0xFFFFFFFFLL;
      }

      v11 = strlen(__s);
      if (a3 != 1 && !pathIsValid(__s, v11))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 256, 130, 0, "invalid match path: %s");
        return 0xFFFFFFFFLL;
      }

      if (a5)
      {
        v12 = strlen(a5);
        if (!pathIsValid(a5, v12))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 260, 130, 0, "invalid mapto path: %s");
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v12 = 0;
      }

      if (a3 != 2 || v11 && !strchr(__s, 47))
      {
        if (a2 == 2)
        {
          if ((StringTableAppend(*(a1 + 8), __s, v11, 0) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 270, 130, 0, "StringTableAppend", v16, v17[0]);
            return 0xFFFFFFFFLL;
          }

          if ((StringTableAppend(*(a1 + 16), a5, v12, 0) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 271, 130, 0, "StringTableAppend", v16, v17[0]);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          if (a2)
          {
            v13 = 104;
          }

          else
          {
            v13 = 32;
          }

          if (a3)
          {
            if (a3 == 2)
            {
              LOBYTE(v17[0]) = 47;
              __memcpy_chk();
              v14 = v11 + 1;
              *(v17 + v11 + 1) = 0;
              if ((reStringAppend(a1 + v13, v17, v11 + 1, 6) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 299, 130, 0, "error building regex", v16, v17[0]);
                return 0xFFFFFFFFLL;
              }

              *(v17 + v14) = 47;
              *(v17 + v11 + 2) = 0;
              if ((reStringAppend(a1 + v13, v17, v11 + 2, 4) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 303, 130, 0, "error building regex", v16, v17[0]);
                return 0xFFFFFFFFLL;
              }

              __memcpy_chk();
              *(v17 + v11) = 47;
              *(v17 + v14) = 0;
              if ((reStringAppend(a1 + v13, v17, v11 + 1, 5) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 307, 130, 0, "error building regex");
                return 0xFFFFFFFFLL;
              }

              if ((reStringAppend(a1 + v13, __s, v11, 7) & 0x80000000) != 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 310, 130, 0, "error building regex", v16, v17[0]);
                return 0xFFFFFFFFLL;
              }
            }

            else if ((reStringAppend(a1 + v13, __s, v11, 0) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 283, 130, 0, "error building regex", v16, v17[0]);
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            v15 = 96;
            if (!a2)
            {
              v15 = 24;
            }

            if ((StringTableAppend(*(a1 + v15), __s, v11, 0) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 289, 130, 0, "StringTableAppend", v16, v17[0]);
              return 0xFFFFFFFFLL;
            }
          }
        }

        return 0;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 264, 130, 0, "invalid path for name match: %s");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 250, 130, 0, "mapto string is not allowed for non MAPTO rules", v16, v17[0]);
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 248, 130, 0, "mapto string is required for MAPTO rule", v16, v17[0]);
  }

  return 0xFFFFFFFFLL;
}

uint64_t AAPathFilterApply(uint64_t a1, char *__s, size_t a3, char *a4)
{
  if (!*a1)
  {
    if (*(a1 + 48) && !*(a1 + 56))
    {
      v11 = regcomp((a1 + 64), *(a1 + 32), 257);
      if (v11)
      {
        AAPathFilterApply_cold_1(v11, (a1 + 64));
        goto LABEL_33;
      }

      *(a1 + 56) = 1;
    }

    if (*(a1 + 120) && !*(a1 + 128))
    {
      v12 = regcomp((a1 + 136), *(a1 + 104), 257);
      if (v12)
      {
        AAPathFilterApply_cold_2(v12, (a1 + 136));
        goto LABEL_33;
      }

      *(a1 + 128) = 1;
    }

    if ((StringTableSort(*(a1 + 24), 0) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "prepareFilter", 134, 130, 0, "string table sort");
    }

    else
    {
      if ((StringTableSort(*(a1 + 96), 0) & 0x80000000) == 0)
      {
        *a1 = 1;
        goto LABEL_2;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "prepareFilter", 135, 130, 0, "string table sort");
    }

LABEL_33:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterApply", 325, 130, 0, "filter prepare");
    return 0xFFFFFFFFLL;
  }

LABEL_2:
  v8 = strlen(__s);
  if (!pathIsValid(__s, v8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterApply", 327, 130, 0, "invalid input path");
    return 0xFFFFFFFFLL;
  }

  if (!StringTableSize(*(a1 + 24)) && !*(a1 + 56))
  {
    goto LABEL_25;
  }

  if (StringTableSize(*(a1 + 24)))
  {
    v9 = StringTableMatchesPrefixSorted(*(a1 + 24), __s);
    v10 = v9 < 1;
    if (!*(a1 + 56))
    {
      if (v9 < 1)
      {
        return 2;
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (!*(a1 + 56))
    {
      return 2;
    }

    v10 = 1;
  }

  if (regexec((a1 + 64), __s, 0, 0, 0) && v10)
  {
    return 2;
  }

LABEL_25:
  if (!StringTableSize(*(a1 + 96)) && !*(a1 + 128))
  {
    goto LABEL_39;
  }

  if (StringTableSize(*(a1 + 96)))
  {
    v13 = StringTableMatchesPrefixSorted(*(a1 + 96), __s);
    v14 = v13 < 1;
    if (!*(a1 + 128))
    {
      if (v13 <= 0)
      {
        goto LABEL_39;
      }

      return 2;
    }
  }

  else
  {
    if (!*(a1 + 128))
    {
      goto LABEL_39;
    }

    v14 = 1;
  }

  v16 = regexec((a1 + 136), __s, 0, 0, 0);
  result = 2;
  if (v16)
  {
    if (v14)
    {
LABEL_39:
      result = StringTableSize(*(a1 + 8));
      if (!result)
      {
        return result;
      }

      v17 = StringTableSize(*(a1 + 8));
      if (!v17)
      {
        return 2;
      }

      v34 = a3;
      __dst = a4;
      v18 = 0;
      v19 = 0;
      v20 = *(a1 + 8);
      v21 = *(v20 + 32);
      v22 = v17;
      v23 = (*(v20 + 8) + 8);
      v24 = -1;
      do
      {
        v25 = *v23;
        if ((!v25 || v8 >= v25 && !memcmp((v21 + *(v23 - 1)), __s, *v23) && (v8 == v25 || __s[v25] == 47)) && (v24 == -1 || v19 < v25))
        {
          v19 = v25;
          v24 = v18;
        }

        v23 += 4;
        ++v18;
      }

      while (v22 != v18);
      if (v24 == -1)
      {
        return 2;
      }

      if (!__dst)
      {
        return 0;
      }

      v28 = *(a1 + 16);
      v29 = *(v28 + 8);
      v30 = *(v29 + 16 * v24 + 8);
      if (v30 >= v34)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterApply", 373, 130, 0, "insufficient out_capacity", v34);
      }

      else
      {
        v31 = *(*(*(a1 + 8) + 8) + 16 * v24 + 8);
        memcpy(__dst, (*(v28 + 32) + *(v29 + 16 * v24)), v30);
        if (v8 <= v31)
        {
LABEL_62:
          __dst[v30] = 0;
          return 1;
        }

        v32 = v8 - v31 - (v30 == 0);
        v33 = v32 + v30;
        if (v32 + v30 < v34)
        {
          memcpy(&__dst[v30], &__s[v8 - v32], v32);
          v30 = v33;
          goto LABEL_62;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterApply", 379, 130, 0, "insufficient out_capacity", v34);
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

size_t OUTLINED_FUNCTION_0@<X0>(int a1@<W0>, const regex_t *a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, __int128 a6, __int128 a7, __int128 a8, __int128 a9, __int128 a10, __int128 a11, int a12)
{
  *(v12 - 24) = a3;
  a12 = 0;
  a10 = 0u;
  a11 = 0u;
  a8 = 0u;
  a9 = 0u;
  a6 = 0u;
  a7 = 0u;

  return regerror(a1, a2, &a6, 0x64uLL);
}

size_t PCompressLZ4Encode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZ4Decode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t aeaContainerParamsInitWithProfile(uint64_t a1, unsigned int a2)
{
  if (a2 < 6)
  {
    *a1 = a2;
    *(a1 + 12) = 2;
    *(a1 + 48) = 32;
    *(a1 + 56) = 1;
    *(a1 + 16) = 0x10000100000;
    *(a1 + 24) = 2049;
    if (a2)
    {
      v2 = 0;
      if (a2 == 5)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      v2 = 0;
      *(a1 + 56) = 0;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithProfile", 31, 79, 0, "Invalid profile: %u", a2);
    return 0xFFFFFFFFLL;
  }

  return v2;
}

uint64_t aeaChecksumSize(int a1)
{
  if (a1 == 2)
  {
    return 32;
  }

  else
  {
    return 8 * (a1 == 1);
  }
}

uint64_t aeaContainerParamsInitWithMagic(unsigned int *a1, _DWORD *a2)
{
  if (*a2 == 826361153)
  {
    v2 = a2[2];
    if (v2 < 0x4000001)
    {
      v3 = a2[1];
      if ((v3 & 0xFFFFFF) < 6)
      {
        v4 = 0;
        *a1 = v3 & 0xFFFFFF;
        a1[1] = v2;
        a1[2] = HIBYTE(v3);
        return v4;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithMagic", 57, 79, 0, "Invalid profile: %u");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithMagic", 55, 79, 0, "Invalid AEA container (auth_data_size)");
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithMagic", 54, 79, 0, "Invalid magic bytes");
  }

  return 0xFFFFFFFFLL;
}

uint64_t aeaContainerParamsInitWithRootHeader(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 25);
  if (v2 > 2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 74, 79, 0, "Invalid checksum in root header: %u");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 12) = v2;
  if (v2 == 2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 8 * (v2 == 1);
  }

  *(a1 + 48) = v3;
  v4 = *(a2 + 24);
  if (v4 <= 0x64)
  {
    switch(v4)
    {
      case '-':
        v5 = 0;
        break;
      case '4':
        v5 = 256;
        break;
      case 'b':
        v5 = 1794;
        break;
      default:
        goto LABEL_19;
    }
  }

  else if (*(a2 + 24) > 0x77u)
  {
    if (v4 == 120)
    {
      v5 = 774;
    }

    else
    {
      if (v4 != 122)
      {
        goto LABEL_19;
      }

      v5 = 1285;
    }
  }

  else
  {
    if (v4 != 101)
    {
      if (v4 == 102)
      {
        v5 = 2304;
        goto LABEL_23;
      }

LABEL_19:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 81, 79, 0, "Invalid compression algorithm key in root header: %u");
      return 0xFFFFFFFFLL;
    }

    v5 = 2049;
  }

LABEL_23:
  *(a1 + 24) = v5;
  v6 = *(a2 + 16);
  if ((v6 - 268435457) > 0xF0003FFE)
  {
    *(a1 + 16) = v6;
    v7 = *(a2 + 20);
    if ((v7 - 262145) > 0xFFFC001E)
    {
      v8 = 0;
      *(a1 + 20) = v7;
      *(a1 + 32) = *a2;
      return v8;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 89, 79, 0, "Invalid segments per cluster count in root header: %u");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 85, 79, 0, "Invalid segment size in root header: %u");
  }

  return 0xFFFFFFFFLL;
}

uint64_t aeaMagicInit(_DWORD *a1, _DWORD *a2)
{
  *a1 = 826361153;
  v2 = a2[1];
  a1[1] = *a2 & 0xFFFFFF | (a2[2] << 24);
  a1[2] = v2;
  return 0;
}

uint64_t aeaRootHeaderInit(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 <= 1284)
  {
    switch(v4)
    {
      case 0:
        v5 = 45;
        goto LABEL_18;
      case 256:
        v5 = 52;
        goto LABEL_18;
      case 774:
        v5 = 120;
        goto LABEL_18;
    }
  }

  else if (v4 > 2048)
  {
    if (v4 == 2049)
    {
      v5 = 101;
      goto LABEL_18;
    }

    if (v4 == 2304)
    {
      v5 = 102;
      goto LABEL_18;
    }
  }

  else
  {
    if (v4 == 1285)
    {
      v5 = 122;
      goto LABEL_18;
    }

    if (v4 == 1794)
    {
      v5 = 98;
LABEL_18:
      v6 = 0;
      *(a1 + 25) = *(a2 + 12);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v5;
      *a1 = *(a2 + 32);
      return v6;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaRootHeaderInit", 117, 79, 0, "Invalid compression algorithm in context", v2, v3);
  return 0xFFFFFFFFLL;
}

uint64_t aeaContainerOffsetsInit(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a2[5];
  *a1 = xmmword_296AD17B0;
  v4 = a2[1] + 12;
  v5 = a3[12];
  v6 = v4 + a3[11];
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  v7 = v6 + v5;
  v8 = a3[3];
  v9 = v7 + a3[2];
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  v10 = v9 + v8;
  v11 = v9 + v8 + 48;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v11 + v8;
  *(a1 + 72) = 0;
  v12 = (a2[12] + 8) * v3;
  *(a1 + 80) = v12;
  *(a1 + 88) = v12 + v8;
  *(a1 + 96) = v12 + v8 + v8 * v3;
  return 0;
}

uint64_t aeaChecksum(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a4;
    v6 = a3;
    if (a2 == 2)
    {
      memset(&v16, 0, sizeof(v16));
      CC_SHA256_Init(&v16);
      CC_SHA256_Update(&v16, v6, v5);
      CC_SHA256_Final((a1 + 4), &v16);
      *a1 = 32;
      v12 = (a1 + 36);
      v13 = 224;
      v14 = 224;
LABEL_14:
      memset_s(v12, v13, 0, v14);
      return 0;
    }

    if (a2 == 1)
    {
      v7 = (0xC6A4A7935BD1E995 * a4) ^ 0xE2236FDC26A5F6D2;
      v8 = a3 + a4;
      if (a4 >= 16)
      {
        do
        {
          v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v6) ^ ((0xC6A4A7935BD1E995 * *v6) >> 47))) ^ v7)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6[1]) ^ ((0xC6A4A7935BD1E995 * v6[1]) >> 47))));
          v9 = v6 + 2;
          v10 = (v6 + 4);
          v6 += 2;
        }

        while (v10 <= v8);
      }

      else
      {
        v9 = a3;
      }

      if (v9 + 1 <= v8)
      {
        do
        {
          v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v9) ^ ((0xC6A4A7935BD1E995 * *v9) >> 47))) ^ v7);
          v11 = v9 + 2 > v8;
          ++v9;
        }

        while (!v11);
      }

      if ((a4 & 7) != 0)
      {
        *v16.count = 0;
        __memcpy_chk();
        v7 *= 0xC6A4A7935BD1E995;
      }

      *(a1 + 4) = (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
      *a1 = 8;
      v12 = (a1 + 12);
      v13 = 248;
      v14 = 248;
      goto LABEL_14;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaChecksum", 228, 79, 0, "Invalid checksum mode");
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t aeaEffectiveCompressionAlgorithm(uint64_t result)
{
  if (result == 256)
  {
    return 257;
  }

  else
  {
    return result;
  }
}

uint64_t aeaDeriveMainKeyExisting(unsigned int *a1, int *a2, _DWORD *a3, unsigned int *a4, _DWORD *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, _DWORD *a9, _DWORD *a10, uint64_t (*a11)(uint64_t, void, char *, __int128 *, unsigned int *, void), uint64_t a12)
{
  v134 = *MEMORY[0x29EDCA608];
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v16 = *a2;
  v17 = *a2 & 0xFFFFFF | (a2[2] << 24);
  if (*a2 > 2)
  {
    if ((v16 - 3) >= 2)
    {
      if (v16 != 5)
      {
        goto LABEL_68;
      }

      v118 = 0;
      v117 = 0uLL;
      v116 = 0uLL;
      v115 = 0uLL;
      v114 = 0uLL;
      v113 = 0uLL;
      v112 = 0uLL;
      v111 = 0uLL;
      v110 = 0uLL;
      v109 = 0uLL;
      v108 = 0uLL;
      v107 = 0uLL;
      v106 = 0uLL;
      v105 = 0uLL;
      v104 = 0uLL;
      v103 = 0uLL;
      v102 = 0uLL;
      v101 = 0;
      v100 = 0uLL;
      v99 = 0uLL;
      v98 = 0uLL;
      v97 = 0uLL;
      v96 = 0uLL;
      v95 = 0uLL;
      v94 = 0uLL;
      v93 = 0uLL;
      v92 = 0uLL;
      v91 = 0uLL;
      v90 = 0uLL;
      v89 = 0uLL;
      v88 = 0uLL;
      v87 = 0uLL;
      v86 = 0uLL;
      *__n = 0uLL;
      v84 = 0;
      v83 = 0uLL;
      v82 = 0uLL;
      v81 = 0uLL;
      v79 = 0uLL;
      v80 = 0uLL;
      v77 = 0uLL;
      v78 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      *v68 = 0uLL;
      v67 = 0;
      memset(v66, 0, sizeof(v66));
      v65 = 0;
      memset(v64, 0, sizeof(v64));
      if (*(a1 + 10) && *(a1 + 9))
      {
        if (*a5 >= 0x14u)
        {
          if (*a10 == a1[2])
          {
            WORD2(__n[1]) = 21584;
            *(__n + 4) = *"AEA_SCRYPT";
            LODWORD(__n[0]) = 10;
            memset_s((__n | 0xE), 0xF6uLL, 0, 0xF6uLL);
            result = (*(a1 + 9))(&v102, 2 * a1[2], a10, __n, v68);
            if ((result & 0x80000000) != 0)
            {
              v38 = -4;
            }

            else
            {
              v51 = a1[2];
              if (v51 >= 0x101)
              {
                goto LABEL_139;
              }

              __memcpy_chk();
              LODWORD(v66[0]) = v51;
              result = memset_s(v66 + v51 + 4, 256 - v51, 0, 256 - v51);
              v52 = a1[2];
              if (v52 >= 0x101)
              {
                goto LABEL_139;
              }

              __memcpy_chk();
              LODWORD(v64[0]) = v52;
              memset_s(v64 + v52 + 4, 256 - v52, 0, 256 - v52);
              memset_s(&v102, 0x104uLL, 0, 0x104uLL);
              if (((*(a1 + 10))(&v102, a5 + 1, *a5, a1[14], v66) & 0x80000000) != 0)
              {
                v38 = -5;
              }

              else
              {
                memset(v133, 0, sizeof(v133));
                v132 = 0u;
                v131 = 0u;
                v130 = 0u;
                v129 = 0u;
                v128 = 0u;
                v127 = 0u;
                v126 = 0u;
                v125 = 0u;
                v124 = 0u;
                v123 = 0u;
                v122 = 0u;
                v121 = 0u;
                v120 = 0u;
                *&__s[8] = 0u;
                if (v102 == *a1)
                {
                  if (LODWORD(v64[0]) == a1[2])
                  {
                    if (LODWORD(v68[0]) == a1[5])
                    {
                      if (*a7 == a1[8])
                      {
                        *&__s[7] = 1263354207;
                        *__s = 0x5F41454100000007;
                        result = memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
                        v53 = *__s;
                        if (*__s >= 0xFDu)
                        {
                          goto LABEL_139;
                        }

                        *&__s[*__s + 4] = v17;
                        *__s = v53 + 4;
                        result = memset_s(&__s[v53 + 8], 252 - v53, 0, 252 - v53);
                        v54 = *__s + LODWORD(v68[0]);
                        if (v54 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], v68 + 4, LODWORD(v68[0]));
                        *__s = v54;
                        result = memset_s(&__s[v54 + 4], 256 - v54, 0, 256 - v54);
                        v55 = *__s + LODWORD(v68[0]);
                        if (v55 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], v68 + 4, LODWORD(v68[0]));
                        *__s = v55;
                        result = memset_s(&__s[v55 + 4], 256 - v55, 0, 256 - v55);
                        v56 = *a7;
                        v57 = *__s + v56;
                        if (v57 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], a7 + 1, v56);
                        *__s = v57;
                        memset_s(&__s[v57 + 4], 256 - v57, 0, 256 - v57);
                        v58 = *(a1 + 9);
                        v59 = -1;
                        if (v58 && v102)
                        {
                          v59 = v58(a3, *a1, &v102, __s, v64);
                        }

                        if (*a3 == *a1)
                        {
                          v38 = v59;
                        }

                        else
                        {
                          v38 = -1006;
                        }

                        memset_s(__s, 0x104uLL, 0, 0x104uLL);
                        if (v38)
                        {
                          memset_s(a3, 0x104uLL, 0, 0x104uLL);
                        }
                      }

                      else
                      {
                        v38 = -1005;
                      }
                    }

                    else
                    {
                      v38 = -1003;
                    }
                  }

                  else
                  {
                    v38 = -1002;
                  }
                }

                else
                {
                  v38 = -1001;
                }
              }
            }
          }

          else
          {
            v38 = -3;
          }
        }

        else
        {
          v38 = -2;
        }
      }

      else
      {
        v38 = -1;
      }

      memset_s(&v102, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v66, 0x104uLL, 0, 0x104uLL);
      v49 = v64;
    }

    else
    {
      if (a11 && *a8)
      {
        *&v102 = 0;
        v27 = a6 + 1;
        result = a11(a12, a1[6], v62 + 4, &v102, a6 + 1, *a6);
        if ((result & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyExisting", 321, 79, 0, "DH callback", v28, v29);
          goto LABEL_78;
        }

        if (v102 != a1[6])
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyExisting", 322, 79, 0, "DH callback returning invalid shared secret size");
          goto LABEL_78;
        }

        if (v102 >= 0x101)
        {
          goto LABEL_139;
        }

        LODWORD(v62[0]) = v102;
        memset_s(v62 + v102 + 4, 256 - v102, 0, 256 - v102);
        memset(v133, 0, sizeof(v133));
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        v127 = 0u;
        v126 = 0u;
        v125 = 0u;
        v124 = 0u;
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        v120 = 0u;
        *&__s[8] = 0u;
        if (LODWORD(v62[0]) == *a1)
        {
          if (*a10 == a1[2])
          {
            if (*a6 == a1[5])
            {
              if (*a8 != *a6)
              {
                v38 = -1004;
                goto LABEL_75;
              }

              if (*a7 == a1[8])
              {
                *&__s[7] = 1263354207;
                *__s = 0x5F41454100000007;
                result = memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
                v30 = *__s;
                if (*__s < 0xFDu)
                {
                  *&__s[*__s + 4] = v17;
                  *__s = v30 + 4;
                  result = memset_s(&__s[v30 + 8], 252 - v30, 0, 252 - v30);
                  v31 = *a6;
                  v32 = *__s + v31;
                  if (v32 < 0x101)
                  {
                    memcpy(&__s[*__s + 4], v27, v31);
                    *__s = v32;
                    result = memset_s(&__s[v32 + 4], 256 - v32, 0, 256 - v32);
                    v33 = *a8;
                    v34 = *__s + v33;
                    if (v34 < 0x101)
                    {
                      memcpy(&__s[*__s + 4], a8 + 1, v33);
                      *__s = v34;
                      result = memset_s(&__s[v34 + 4], 256 - v34, 0, 256 - v34);
                      v35 = *a7;
                      v36 = *__s + v35;
                      if (v36 < 0x101)
                      {
                        memcpy(&__s[*__s + 4], a7 + 1, v35);
                        *__s = v36;
                        memset_s(&__s[v36 + 4], 256 - v36, 0, 256 - v36);
                        v22 = *(a1 + 9);
                        v37 = -1;
                        if (!v22 || !LODWORD(v62[0]))
                        {
LABEL_118:
                          if (*a3 == *a1)
                          {
                            v38 = v37;
                          }

                          else
                          {
                            v38 = -1006;
                          }

                          memset_s(__s, 0x104uLL, 0, 0x104uLL);
                          if (!v38)
                          {
                            goto LABEL_75;
                          }

                          v49 = a3;
                          goto LABEL_74;
                        }

                        v23 = *a1;
                        v25 = v62;
                        v24 = a3;
LABEL_115:
                        v37 = v22(v24, v23, v25, __s, a10);
                        goto LABEL_118;
                      }
                    }
                  }
                }

                goto LABEL_139;
              }

              goto LABEL_116;
            }

            goto LABEL_36;
          }

          goto LABEL_71;
        }

LABEL_37:
        v38 = -1001;
        goto LABEL_75;
      }

      v118 = 0;
      v117 = 0uLL;
      v116 = 0uLL;
      v115 = 0uLL;
      v114 = 0uLL;
      v113 = 0uLL;
      v112 = 0uLL;
      v111 = 0uLL;
      v110 = 0uLL;
      v109 = 0uLL;
      v108 = 0uLL;
      v107 = 0uLL;
      v106 = 0uLL;
      v105 = 0uLL;
      v104 = 0uLL;
      v103 = 0uLL;
      v102 = 0uLL;
      v101 = 0;
      v100 = 0uLL;
      v99 = 0uLL;
      v98 = 0uLL;
      v97 = 0uLL;
      v96 = 0uLL;
      v95 = 0uLL;
      v94 = 0uLL;
      v93 = 0uLL;
      v92 = 0uLL;
      v91 = 0uLL;
      v90 = 0uLL;
      v89 = 0uLL;
      v88 = 0uLL;
      v87 = 0uLL;
      v86 = 0uLL;
      *__n = 0uLL;
      if (*(a1 + 9) && (v40 = *(a1 + 14)) != 0 && *(a1 + 20))
      {
        if (*a6 == a1[5])
        {
          if (*a9 == a1[4])
          {
            if ((v40(&v102, a6, a9, a4, a5) & 0x80000000) != 0)
            {
              v38 = -4;
            }

            else if (v102 == a1[6])
            {
              if (((*(a1 + 20))(__n, a9) & 0x80000000) != 0)
              {
                v38 = -6;
              }

              else
              {
                memset(v133, 0, sizeof(v133));
                v132 = 0u;
                v131 = 0u;
                v130 = 0u;
                v129 = 0u;
                v128 = 0u;
                v127 = 0u;
                v126 = 0u;
                v125 = 0u;
                v124 = 0u;
                v123 = 0u;
                v122 = 0u;
                v121 = 0u;
                v120 = 0u;
                *&__s[8] = 0u;
                if (v102 == *a1)
                {
                  if (*a10 == a1[2])
                  {
                    if (*a6 == a1[5])
                    {
                      if (LODWORD(__n[0]) == *a6)
                      {
                        if (*a7 == a1[8])
                        {
                          *&__s[7] = 1263354207;
                          *__s = 0x5F41454100000007;
                          result = memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
                          v41 = *__s;
                          if (*__s >= 0xFDu)
                          {
                            goto LABEL_139;
                          }

                          *&__s[*__s + 4] = v17;
                          *__s = v41 + 4;
                          result = memset_s(&__s[v41 + 8], 252 - v41, 0, 252 - v41);
                          v42 = *a6;
                          v43 = *__s + v42;
                          if (v43 >= 0x101)
                          {
                            goto LABEL_139;
                          }

                          memcpy(&__s[*__s + 4], a6 + 1, v42);
                          *__s = v43;
                          result = memset_s(&__s[v43 + 4], 256 - v43, 0, 256 - v43);
                          v44 = *__s + LODWORD(__n[0]);
                          if (v44 >= 0x101)
                          {
                            goto LABEL_139;
                          }

                          memcpy(&__s[*__s + 4], __n + 4, LODWORD(__n[0]));
                          *__s = v44;
                          result = memset_s(&__s[v44 + 4], 256 - v44, 0, 256 - v44);
                          v45 = *a7;
                          v46 = *__s + v45;
                          if (v46 >= 0x101)
                          {
                            goto LABEL_139;
                          }

                          memcpy(&__s[*__s + 4], a7 + 1, v45);
                          *__s = v46;
                          memset_s(&__s[v46 + 4], 256 - v46, 0, 256 - v46);
                          v47 = *(a1 + 9);
                          v48 = -1;
                          if (v47 && v102)
                          {
                            v48 = v47(a3, *a1, &v102, __s, a10);
                          }

                          if (*a3 == *a1)
                          {
                            v38 = v48;
                          }

                          else
                          {
                            v38 = -1006;
                          }

                          memset_s(__s, 0x104uLL, 0, 0x104uLL);
                          if (v38)
                          {
                            memset_s(a3, 0x104uLL, 0, 0x104uLL);
                          }
                        }

                        else
                        {
                          v38 = -1005;
                        }
                      }

                      else
                      {
                        v38 = -1004;
                      }
                    }

                    else
                    {
                      v38 = -1003;
                    }
                  }

                  else
                  {
                    v38 = -1002;
                  }
                }

                else
                {
                  v38 = -1001;
                }
              }
            }

            else
            {
              v38 = -5;
            }
          }

          else
          {
            v38 = -3;
          }
        }

        else
        {
          v38 = -2;
        }
      }

      else
      {
        v38 = -1;
      }

      memset_s(&v102, 0x104uLL, 0, 0x104uLL);
      v49 = __n;
    }

LABEL_74:
    memset_s(v49, 0x104uLL, 0, 0x104uLL);
    goto LABEL_75;
  }

  if ((v16 - 1) < 2)
  {
    memset(v133, 0, sizeof(v133));
    v132 = 0uLL;
    v131 = 0uLL;
    v130 = 0uLL;
    v129 = 0uLL;
    v128 = 0uLL;
    v127 = 0uLL;
    v126 = 0uLL;
    v125 = 0uLL;
    v124 = 0uLL;
    v123 = 0uLL;
    v122 = 0uLL;
    v121 = 0uLL;
    v120 = 0uLL;
    *&__s[8] = 0uLL;
    if (*a4 == *a1)
    {
      if (*a10 == a1[2])
      {
        if (!a1[5])
        {
          if (*a7 == a1[8])
          {
            *&__s[7] = 1263354207;
            *__s = 0x5F41454100000007;
            memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
            *&__s[*__s + 4] = v17;
            *__s = 11;
            memset_s(&__s[15], 0xF5uLL, 0, 0xF5uLL);
            memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
            result = memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
            v20 = *a7;
            v21 = *__s + v20;
            if (v21 < 0x101)
            {
              memcpy(&__s[*__s + 4], a7 + 1, v20);
              *__s = v21;
              memset_s(&__s[v21 + 4], 256 - v21, 0, 256 - v21);
              v22 = *(a1 + 9);
              if (v22 && *a4)
              {
                v23 = *a1;
                v24 = a3;
                v25 = a4;
                goto LABEL_115;
              }

LABEL_117:
              v37 = -1;
              goto LABEL_118;
            }

            goto LABEL_139;
          }

LABEL_116:
          v38 = -1005;
          goto LABEL_75;
        }

        goto LABEL_36;
      }

LABEL_71:
      v38 = -1002;
      goto LABEL_75;
    }

    goto LABEL_37;
  }

  if (v16)
  {
LABEL_68:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyExisting", 351, 79, 0, "Unsupported profile", a7, a8);
    goto LABEL_78;
  }

  memset(v133, 0, sizeof(v133));
  v132 = 0uLL;
  v131 = 0uLL;
  v130 = 0uLL;
  v129 = 0uLL;
  v128 = 0uLL;
  v127 = 0uLL;
  v126 = 0uLL;
  v125 = 0uLL;
  v124 = 0uLL;
  v123 = 0uLL;
  v122 = 0uLL;
  v121 = 0uLL;
  v120 = 0uLL;
  *&__s[8] = 0uLL;
  if (*a6 != *a1)
  {
    goto LABEL_37;
  }

  if (*a10 != a1[2])
  {
    goto LABEL_71;
  }

  if (a1[5])
  {
LABEL_36:
    v38 = -1003;
LABEL_75:
    if ((v38 & 0x80000000) == 0)
    {
      v50 = 0;
LABEL_81:
      memset_s(v62, 0x104uLL, 0, 0x104uLL);
      return v50;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyExisting", 353, 79, 0, "Main key derivation failed (%d)", a7, a8);
LABEL_78:
    if (a3)
    {
      memset_s(a3, 0x104uLL, 0, 0x104uLL);
    }

    v50 = 0xFFFFFFFFLL;
    goto LABEL_81;
  }

  if (*a7 != a1[8])
  {
    goto LABEL_116;
  }

  *&__s[7] = 1263354207;
  *__s = 0x5F41454100000007;
  memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
  *&__s[*__s + 4] = v17;
  *__s = 11;
  memset_s(&__s[15], 0xF5uLL, 0, 0xF5uLL);
  memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
  result = memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
  v60 = *a7;
  v61 = *__s + v60;
  if (v61 < 0x101)
  {
    memcpy(&__s[*__s + 4], a7 + 1, v60);
    *__s = v61;
    memset_s(&__s[v61 + 4], 256 - v61, 0, 256 - v61);
    v22 = *(a1 + 9);
    if (v22 && *a6)
    {
      v23 = *a1;
      v24 = a3;
      v25 = a6;
      goto LABEL_115;
    }

    goto LABEL_117;
  }

LABEL_139:
  __break(1u);
  return result;
}

uint64_t aeaDeriveMainKeyNew(unsigned int *a1, int *a2, _DWORD *a3, unsigned int *a4, char *__s, unsigned int *a6, _DWORD *a7, unsigned int *a8, unsigned int *a9)
{
  v117 = *MEMORY[0x29EDCA608];
  v16 = *a2;
  v17 = a2[2];
  v18 = a1[2];
  if (__s)
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
  }

  if (v18 > 0x100 || (v19 = *(a1 + 8)) == 0 || (v19(__s + 4, v18) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", 380, 79, 0, "generating random salt");
    return 0xFFFFFFFFLL;
  }

  v60 = a3;
  v20 = v16 & 0xFFFFFF | (v17 << 24);
  *__s = v18;
  v21 = *a2;
  if (*a2 > 2)
  {
    if ((v21 - 3) >= 2)
    {
      if (v21 != 5)
      {
        goto LABEL_53;
      }

      v101 = 0;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      v97 = 0u;
      v96 = 0u;
      v95 = 0u;
      v94 = 0u;
      v93 = 0u;
      v92 = 0u;
      v91 = 0u;
      v90 = 0u;
      v89 = 0u;
      v88 = 0u;
      v87 = 0u;
      v86 = 0u;
      __sa = 0u;
      v84 = 0;
      memset(v83, 0, sizeof(v83));
      v82 = 0;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      *__n = 0u;
      v67 = 0u;
      v65 = 0;
      memset(v64, 0, sizeof(v64));
      v63 = 0;
      memset(v62, 0, sizeof(v62));
      if (*(a1 + 10) && *(a1 + 9))
      {
        if (*a7 >= 0x14u)
        {
          if (v18 == a1[2])
          {
            WORD6(v83[0]) = 21584;
            *(v83 + 4) = *"AEA_SCRYPT";
            LODWORD(v83[0]) = 10;
            memset_s((v83 | 0xE), 0xF6uLL, 0, 0xF6uLL);
            result = (*(a1 + 9))(&__sa, 2 * a1[2], __s, v83, __n);
            if ((result & 0x80000000) != 0)
            {
              v22 = -4;
            }

            else
            {
              v44 = a1[2];
              if (v44 >= 0x101)
              {
                goto LABEL_118;
              }

              __memcpy_chk();
              LODWORD(v64[0]) = v44;
              result = memset_s(v64 + v44 + 4, 256 - v44, 0, 256 - v44);
              v45 = a1[2];
              if (v45 >= 0x101)
              {
                goto LABEL_118;
              }

              __memcpy_chk();
              LODWORD(v62[0]) = v45;
              memset_s(v62 + v45 + 4, 256 - v45, 0, 256 - v45);
              memset_s(&__sa, 0x104uLL, 0, 0x104uLL);
              if (((*(a1 + 10))(&__sa, a7 + 1, *a7, a1[14], v64) & 0x80000000) != 0)
              {
                v22 = -5;
              }

              else
              {
                memset(v116, 0, sizeof(v116));
                v115 = 0u;
                v114 = 0u;
                v113 = 0u;
                v112 = 0u;
                v111 = 0u;
                v110 = 0u;
                v109 = 0u;
                v108 = 0u;
                v107 = 0u;
                v106 = 0u;
                v105 = 0u;
                v104 = 0u;
                v103 = 0u;
                *&v102[8] = 0u;
                if (__sa == *a1)
                {
                  if (LODWORD(v62[0]) == a1[2])
                  {
                    if (LODWORD(__n[0]) == a1[5])
                    {
                      if (*a8 == a1[8])
                      {
                        *&v102[7] = 1263354207;
                        *v102 = 0x5F41454100000007;
                        result = memset_s(&v102[11], 0xF9uLL, 0, 0xF9uLL);
                        v46 = *v102;
                        if (*v102 >= 0xFDu)
                        {
                          goto LABEL_118;
                        }

                        *&v102[*v102 + 4] = v20;
                        *v102 = v46 + 4;
                        result = memset_s(&v102[v46 + 8], 252 - v46, 0, 252 - v46);
                        v47 = *v102 + LODWORD(__n[0]);
                        if (v47 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], __n + 4, LODWORD(__n[0]));
                        *v102 = v47;
                        result = memset_s(&v102[v47 + 4], 256 - v47, 0, 256 - v47);
                        v48 = *v102 + LODWORD(__n[0]);
                        if (v48 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], __n + 4, LODWORD(__n[0]));
                        *v102 = v48;
                        result = memset_s(&v102[v48 + 4], 256 - v48, 0, 256 - v48);
                        v49 = *a8;
                        v50 = *v102 + v49;
                        if (v50 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], a8 + 1, v49);
                        *v102 = v50;
                        memset_s(&v102[v50 + 4], 256 - v50, 0, 256 - v50);
                        v51 = *(a1 + 9);
                        v52 = -1;
                        if (v51 && __sa)
                        {
                          v52 = v51(a3, *a1, &__sa, v102, v62);
                        }

                        if (*a3 == *a1)
                        {
                          v22 = v52;
                        }

                        else
                        {
                          v22 = -1006;
                        }

                        memset_s(v102, 0x104uLL, 0, 0x104uLL);
                        if (v22)
                        {
                          memset_s(v60, 0x104uLL, 0, 0x104uLL);
                        }
                      }

                      else
                      {
                        v22 = -1005;
                      }
                    }

                    else
                    {
                      v22 = -1003;
                    }
                  }

                  else
                  {
                    v22 = -1002;
                  }
                }

                else
                {
                  v22 = -1001;
                }
              }
            }
          }

          else
          {
            v22 = -3;
          }
        }

        else
        {
          v22 = -2;
        }
      }

      else
      {
        v22 = -1;
      }

      memset_s(&__sa, 0x104uLL, 0, 0x104uLL);
      memset_s(v83, 0x104uLL, 0, 0x104uLL);
      memset_s(v64, 0x104uLL, 0, 0x104uLL);
      p_sa = v62;
    }

    else
    {
      v101 = 0;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      v97 = 0u;
      v96 = 0u;
      v95 = 0u;
      v94 = 0u;
      v93 = 0u;
      v92 = 0u;
      v91 = 0u;
      v90 = 0u;
      v89 = 0u;
      v88 = 0u;
      v87 = 0u;
      v86 = 0u;
      __sa = 0u;
      if (*(a1 + 9) && (v24 = *(a1 + 13)) != 0)
      {
        if (*a9 == a1[5])
        {
          if ((v24(&__sa, a4, a9) & 0x80000000) != 0)
          {
            v22 = -3;
          }

          else
          {
            v25 = *a4;
            if (*a4 == a1[5])
            {
              if (__sa == a1[6])
              {
                memset(v116, 0, sizeof(v116));
                v115 = 0u;
                v114 = 0u;
                v113 = 0u;
                v112 = 0u;
                v111 = 0u;
                v110 = 0u;
                v109 = 0u;
                v108 = 0u;
                v107 = 0u;
                v106 = 0u;
                v105 = 0u;
                v104 = 0u;
                v103 = 0u;
                *&v102[8] = 0u;
                if (__sa == *a1)
                {
                  if (*__s == a1[2])
                  {
                    if (*a9 == v25)
                    {
                      if (*a8 == a1[8])
                      {
                        *&v102[7] = 1263354207;
                        *v102 = 0x5F41454100000007;
                        result = memset_s(&v102[11], 0xF9uLL, 0, 0xF9uLL);
                        v26 = *v102;
                        if (*v102 >= 0xFDu)
                        {
                          goto LABEL_118;
                        }

                        *&v102[*v102 + 4] = v20;
                        *v102 = v26 + 4;
                        result = memset_s(&v102[v26 + 8], 252 - v26, 0, 252 - v26);
                        v27 = *a4;
                        v28 = *v102 + v27;
                        if (v28 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], a4 + 1, v27);
                        *v102 = v28;
                        result = memset_s(&v102[v28 + 4], 256 - v28, 0, 256 - v28);
                        v29 = *a9;
                        v30 = *v102 + v29;
                        if (v30 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], a9 + 1, v29);
                        *v102 = v30;
                        result = memset_s(&v102[v30 + 4], 256 - v30, 0, 256 - v30);
                        v31 = *a8;
                        v32 = *v102 + v31;
                        if (v32 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], a8 + 1, v31);
                        *v102 = v32;
                        memset_s(&v102[v32 + 4], 256 - v32, 0, 256 - v32);
                        v33 = *(a1 + 9);
                        v34 = -1;
                        if (v33 && __sa)
                        {
                          v34 = v33(a3, *a1, &__sa, v102, __s);
                        }

                        v58 = *a1;
                        v59 = a3;
                        if (*a3 == v58)
                        {
                          v22 = v34;
                        }

                        else
                        {
                          v22 = -1006;
                        }

                        memset_s(v102, 0x104uLL, 0, 0x104uLL);
                        if (v22)
                        {
                          memset_s(v59, 0x104uLL, 0, 0x104uLL);
                        }
                      }

                      else
                      {
                        v22 = -1005;
                      }
                    }

                    else
                    {
                      v22 = -1004;
                    }
                  }

                  else
                  {
                    v22 = -1002;
                  }
                }

                else
                {
                  v22 = -1001;
                }
              }

              else
              {
                v22 = -5;
              }
            }

            else
            {
              v22 = -4;
            }
          }
        }

        else
        {
          v22 = -2;
        }
      }

      else
      {
        v22 = -1;
      }

      p_sa = &__sa;
    }

LABEL_109:
    memset_s(p_sa, 0x104uLL, 0, 0x104uLL);
    goto LABEL_110;
  }

  if ((v21 - 1) < 2)
  {
    memset(v116, 0, sizeof(v116));
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    *&v102[8] = 0u;
    if (*a6 == *a1)
    {
      if (v18 == a1[2])
      {
        if (a1[5])
        {
LABEL_11:
          v22 = -1003;
LABEL_110:
          if ((v22 & 0x80000000) == 0)
          {
            return 0;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", 437, 79, 0, "Main key derivation failed (%d)");
          return 0xFFFFFFFFLL;
        }

        if (*a8 == a1[8])
        {
          qmemcpy(&v102[4], "AEA_AMK", 7);
          memset_s(&v102[11], 0xF9uLL, 0, 0xF9uLL);
          *&v102[11] = v20;
          *v102 = 11;
          memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
          memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
          result = memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
          v53 = *a8;
          v54 = v53 + 11;
          if (v53 + 11 < 0x101)
          {
            memcpy(&v102[*v102 + 4], a8 + 1, v53);
            *v102 = v54;
            memset_s(&v102[v54 + 4], 256 - v54, 0, 256 - v54);
            v39 = *(a1 + 9);
            if (v39)
            {
              if (*a6)
              {
                v40 = *a1;
                v41 = a3;
                v42 = a6;
                goto LABEL_80;
              }

              goto LABEL_89;
            }

            goto LABEL_86;
          }

          goto LABEL_118;
        }

LABEL_83:
        v22 = -1005;
        goto LABEL_110;
      }

LABEL_57:
      v22 = -1002;
      goto LABEL_110;
    }

LABEL_52:
    v22 = -1001;
    goto LABEL_110;
  }

  if (v21)
  {
LABEL_53:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", 435, 79, 0, "Unsupported profile");
    return 0xFFFFFFFFLL;
  }

  v35 = a1[12];
  if (a4)
  {
    memset_s(a4, 0x104uLL, 0, 0x104uLL);
  }

  if (v35 > 0x100 || (v36 = *(a1 + 8)) == 0 || (v36(a4 + 1, v35) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", 390, 79, 0, "generating random encryption key");
    return 0xFFFFFFFFLL;
  }

  *a4 = v35;
  memset(v116, 0, sizeof(v116));
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  *&v102[8] = 0u;
  if (v35 != *a1)
  {
    goto LABEL_52;
  }

  if (*__s != a1[2])
  {
    goto LABEL_57;
  }

  if (a1[5])
  {
    goto LABEL_11;
  }

  if (*a8 != a1[8])
  {
    goto LABEL_83;
  }

  qmemcpy(&v102[4], "AEA_AMK", 7);
  memset_s(&v102[11], 0xF9uLL, 0, 0xF9uLL);
  *&v102[11] = v20;
  *v102 = 11;
  memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
  memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
  result = memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
  v37 = *a8;
  v38 = v37 + 11;
  if (v37 + 11 < 0x101)
  {
    memcpy(&v102[*v102 + 4], a8 + 1, v37);
    *v102 = v38;
    memset_s(&v102[v38 + 4], 256 - v38, 0, 256 - v38);
    v39 = *(a1 + 9);
    if (v39)
    {
      if (*a4)
      {
        v40 = *a1;
        v41 = a3;
        v42 = a4;
LABEL_80:
        v55 = v39(v41, v40, v42, v102, __s);
LABEL_90:
        v56 = *a1;
        v57 = a3;
        if (*a3 == v56)
        {
          v22 = v55;
        }

        else
        {
          v22 = -1006;
        }

        memset_s(v102, 0x104uLL, 0, 0x104uLL);
        if (!v22)
        {
          goto LABEL_110;
        }

        p_sa = v57;
        goto LABEL_109;
      }

LABEL_89:
      v55 = -1;
      goto LABEL_90;
    }

LABEL_86:
    v55 = -1;
    goto LABEL_90;
  }

LABEL_118:
  __break(1u);
  return result;
}

int AEAStreamSign(AAByteStream encrypted_stream, AEAContext context)
{
  v82 = *MEMORY[0x29EDCA608];
  v58 = 0;
  memset(__s, 0, sizeof(__s));
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *v40 = 0u;
  v41 = 0u;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  if (*context <= 5u && ((1 << *context) & 0x2A) != 0)
  {
    v4 = 0;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v25 = 0uLL;
    v24 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
LABEL_15:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v40, 0x104uLL, 0, 0x104uLL);
    memset_s(v38, 0x104uLL, 0, 0x104uLL);
    memset_s(&v18, 0x68uLL, 0, 0x68uLL);
    memset_s(&v25, 0xD0uLL, 0, 0xD0uLL);
    return v4;
  }

  v5 = *(context + 340);
  v6 = *(context + 341);
  v36 = 0uLL;
  v37 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v25 = 0uLL;
  v24 = 0;
  v22 = 0uLL;
  v23 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  if ((aeaCryptoInit(&v25, context) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 467, 79, 0, "initializing crypto params", v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_14;
  }

  v7 = *(context + 5);
  v18 = xmmword_296AD17B0;
  *&v19 = *(context + 1) + 12;
  *(&v19 + 1) = v19 + HIDWORD(v27);
  *&v20 = *(&v19 + 1) + v28;
  *(&v20 + 1) = v20 + DWORD2(v25);
  *&v21 = *(&v20 + 1) + HIDWORD(v25);
  *(&v21 + 1) = v21 + 48;
  v22 = v21 + 48 + HIDWORD(v25);
  v8 = (*(context + 12) + 8) * v7 + HIDWORD(v25);
  *&v23 = (*(context + 12) + 8) * v7;
  *(&v23 + 1) = v8;
  v24 = v8 + HIDWORD(v25) * v7;
  memset_s(&v5[v19], HIDWORD(v27), 0, HIDWORD(v27));
  if (!*(&v32 + 1) || (v9 = (*(&v32 + 1))(v38, v5, v6), LODWORD(v38[0]) != DWORD1(v27)) || v9 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 474, 79, 0, "digesting prologue", v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_14;
  }

  v10 = *(context + 302);
  if (v10)
  {
    *&v80[0] = 0;
    result = v10(*(context + 303), 256, __s + 4, v80, v38 + 4);
    if (result < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 484, 79, 0, "signing prologue digest", v18, v19, v20, v21, v22, v23, v24);
      goto LABEL_14;
    }

    if (*&v80[0] > DWORD2(v27))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 485, 79, 0, "invalid signature size", v18, v19, v20, v21, v22, v23, v24);
LABEL_14:
      v4 = -1;
      goto LABEL_15;
    }

    if (DWORD2(v27) >= 0x101)
    {
      goto LABEL_46;
    }

    LODWORD(__s[0]) = DWORD2(v27);
    result = memset_s(__s + DWORD2(v27) + 4, 256 - DWORD2(v27), 0, 256 - DWORD2(v27));
  }

  else if (!v33 || (result = (v33)(__s, context + 592, v38), LODWORD(__s[0]) != DWORD2(v27)) || result < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 490, 79, 0, "signing prologue", v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_14;
  }

  if (*context)
  {
    if (!v34)
    {
      goto LABEL_36;
    }

    v79 = 0;
    memset(v78, 0, sizeof(v78));
    v77 = 0;
    memset(v76, 0, sizeof(v76));
    v75 = 0;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    *__n = 0u;
    if (LODWORD(__s[0]) != DWORD2(v27))
    {
      goto LABEL_35;
    }

    if (*(context + 408) != v25)
    {
      goto LABEL_35;
    }

    *(v76 + 4) = 0x324B45535F414541;
    LODWORD(v76[0]) = 8;
    memset_s((v76 | 0xC), 0xF8uLL, 0, 0xF8uLL);
    v81 = 0;
    memset(v80, 0, sizeof(v80));
    if (!*(&v29 + 1))
    {
      goto LABEL_35;
    }

    if (!*(context + 408))
    {
      goto LABEL_35;
    }

    result = (*(&v29 + 1))(v78, DWORD1(v25), context + 1632, v76, v80);
    if (result < 0)
    {
      goto LABEL_35;
    }

    v12 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0x101)
    {
      goto LABEL_46;
    }

    __memcpy_chk();
    LODWORD(v40[0]) = v12;
    memset_s(v40 + v12 + 4, 256 - v12, 0, 256 - v12);
    result = (v34)(v40 + 4, LODWORD(__s[0]), __n, v78, 0, 0);
    if (result < 0)
    {
LABEL_35:
      memset_s(v78, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v76, 0x104uLL, 0, 0x104uLL);
      goto LABEL_36;
    }

    v13 = LODWORD(v40[0]) + LODWORD(__n[0]);
    if (v13 < 0x101)
    {
      memcpy(v40 + LODWORD(v40[0]) + 4, __n + 4, LODWORD(__n[0]));
      LODWORD(v40[0]) = v13;
      memset_s(v40 + v13 + 4, 256 - v13, 0, 256 - v13);
      v14 = v40[0];
      v15 = HIDWORD(v27);
      memset_s(v78, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v76, 0x104uLL, 0, 0x104uLL);
      if (v14 == v15)
      {
LABEL_39:
        memcpy(&v5[v19], v40 + 4, LODWORD(v40[0]));
        if (AAByteStreamPWrite(encrypted_stream, v5, v6, 0) == v6)
        {
          if (*(&v37 + 1))
          {
            v17 = (*(&v37 + 1))(context + 1892, v5, v6);
            if (*(context + 473) == DWORD1(v28) && (v17 & 0x80000000) == 0)
            {
              v4 = 0;
              goto LABEL_15;
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 505, 79, 0, "digesting prologue", v18, v19, v20, v21, v22, v23, v24);
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 502, 79, 0, "writing updated prologue", v18, v19, v20, v21, v22, v23, v24);
        }

        goto LABEL_14;
      }

LABEL_36:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 497, 79, 0, "encrypt signature", v18, v19, v20, v21, v22, v23, v24);
      goto LABEL_14;
    }
  }

  else
  {
    v16 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) < 0x101)
    {
      __memcpy_chk();
      LODWORD(v40[0]) = v16;
      memset_s(v40 + v16 + 4, 256 - v16, 0, 256 - v16);
      goto LABEL_39;
    }
  }

LABEL_46:
  __break(1u);
  return result;
}

size_t PCompressLZFSEEncode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZFSE);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZFSEDecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZFSE);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t *AAVerifyDirectoryArchiveOutputStreamOpen(const char *a1, AAFieldKeySet_impl *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  DefaultNThreads = a6;
  if (!a6)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v12 = malloc(0x38uLL);
  v13 = v12;
  if (v12)
  {
    memset_s(v12, 0x38uLL, 0, 0x38uLL);
  }

  memset(&v60, 0, sizeof(v60));
  v14 = malloc(0x4B8uLL);
  v15 = v14;
  if (v14 && (memset_s(v14, 0x4B8uLL, 0, 0x4B8uLL), v13))
  {
    if (realpath_DARWIN_EXTSN(a1, v15))
    {
      if (stat(v15, &v60) || (v60.st_mode & 0xF000) != 0x4000)
      {
        v59 = a1;
        v42 = "Invalid directory: %s";
        v43 = 450;
        goto LABEL_64;
      }

      *(v15 + 1024) = a5;
      *(v15 + 1032) = a3;
      *(v15 + 1040) = a4;
      *(v15 + 1064) = DefaultNThreads;
      *(v15 + 1048) = a5 >> 62;
      *(v15 + 1088) = 0xFFFFFFFFLL;
      if (a2)
      {
        v16.ikey = 4475221;
        if (AAFieldKeySetContainsKey(a2, v16))
        {
          *(v15 + 1088) &= ~1u;
        }

        v17.ikey = 4475207;
        if (AAFieldKeySetContainsKey(a2, v17))
        {
          *(v15 + 1088) &= ~2u;
        }

        v18.ikey = 4672582;
        if (AAFieldKeySetContainsKey(a2, v18))
        {
          *(v15 + 1088) &= ~4u;
        }

        v19.ikey = 4476749;
        if (AAFieldKeySetContainsKey(a2, v19))
        {
          *(v15 + 1088) &= ~8u;
        }

        v20.ikey = 5067842;
        if (AAFieldKeySetContainsKey(a2, v20))
        {
          *(v15 + 1088) &= ~0x10u;
        }

        v21.ikey = 5067843;
        if (AAFieldKeySetContainsKey(a2, v21))
        {
          *(v15 + 1088) &= ~0x20u;
        }

        v22.ikey = 5067853;
        if (AAFieldKeySetContainsKey(a2, v22))
        {
          *(v15 + 1088) &= ~0x40u;
        }

        v23.ikey = 5523009;
        if (AAFieldKeySetContainsKey(a2, v23))
        {
          *(v15 + 1088) &= ~0x80u;
        }

        v24.ikey = 5391937;
        if (AAFieldKeySetContainsKey(a2, v24))
        {
          *(v15 + 1088) &= ~0x100u;
        }

        v25.ikey = 4803654;
        if (AAFieldKeySetContainsKey(a2, v25))
        {
          *(v15 + 1088) &= ~0x200u;
        }

        v26.ikey = 4411984;
        if (AAFieldKeySetContainsKey(a2, v26))
        {
          *(v15 + 1088) &= ~0x400u;
        }

        v27.ikey = 5458755;
        if (AAFieldKeySetContainsKey(a2, v27))
        {
          *(v15 + 1088) &= ~0x800u;
        }

        v28.ikey = 3229779;
        if (AAFieldKeySetContainsKey(a2, v28))
        {
          *(v15 + 1088) &= ~0x1000u;
        }

        v29.ikey = 3295315;
        if (AAFieldKeySetContainsKey(a2, v29))
        {
          *(v15 + 1088) &= ~0x2000u;
        }

        v30.ikey = 3360851;
        if (AAFieldKeySetContainsKey(a2, v30))
        {
          *(v15 + 1088) &= ~0x4000u;
        }

        v31.ikey = 3491923;
        if (AAFieldKeySetContainsKey(a2, v31))
        {
          *(v15 + 1088) &= ~0x8000u;
        }

        v32.ikey = 5521732;
        if (AAFieldKeySetContainsKey(a2, v32))
        {
          *(v15 + 1088) &= ~0x80000u;
        }

        v33.ikey = 4408665;
        if (AAFieldKeySetContainsKey(a2, v33))
        {
          *(v15 + 1088) &= ~0x10000u;
        }

        v34.ikey = 5521752;
        if (AAFieldKeySetContainsKey(a2, v34))
        {
          *(v15 + 1088) &= ~0x20000u;
        }

        v35.ikey = 4997953;
        if (AAFieldKeySetContainsKey(a2, v35))
        {
          *(v15 + 1088) &= ~0x40000u;
        }
      }

      if ((a5 & 0x80000000000000) == 0)
      {
        if (a5 >> 62)
        {
          fprintf(*MEMORY[0x29EDCA610], "Scanning target directory: %s\n", a1);
        }

        v36 = AAPathListCreateWithDirectoryContents(a1, 0, *(v15 + 1032), *(v15 + 1040), 0, DefaultNThreads);
        *(v15 + 1056) = v36;
        if (!v36)
        {
          v59 = a1;
          v42 = "Scanning target directory failed: %s";
          v43 = 488;
          goto LABEL_64;
        }

        v37 = AAPathListNodeFirst(v36);
        if (v37 == -1)
        {
          *(v15 + 1120) = 64;
          v40 = 8;
        }

        else
        {
          v38 = v37;
          v39 = 0;
          do
          {
            ++*(v15 + 1152);
            if (v38 > v39)
            {
              v39 = v38;
            }

            v38 = AAPathListNodeNext(*(v15 + 1056), v38);
          }

          while (v38 != -1);
          *(v15 + 1120) = (v39 + 64) & 0xFFFFFFFFFFFFFFC0;
          v40 = ((v39 + 64) >> 3) & 0x1FFFFFFFFFFFFFF8;
          if (v40 >= 0x2000000001)
          {
            *__error() = 12;
LABEL_87:
            *(v15 + 1128) = 0;
            v41 = *__error();
            v42 = "malloc";
            v43 = 499;
            goto LABEL_65;
          }
        }

        v45 = malloc(v40);
        if (!v45)
        {
          goto LABEL_87;
        }

        v46 = v45;
        memset_s(v45, v40, 0, v40);
        *(v15 + 1128) = v46;
      }

      v47 = calloc(*(v15 + 1064), 8uLL);
      *(v15 + 1072) = v47;
      if (v47)
      {
        if (*(v15 + 1064))
        {
          v48 = 0;
          while (1)
          {
            v49 = malloc(0x5A8uLL);
            v50 = v49;
            if (!v49)
            {
              v52 = __error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerDataAlloc", 80, 119, *v52, "malloc");
              goto LABEL_83;
            }

            memset_s(v49, 0x5A8uLL, 0, 0x5A8uLL);
            *v50 = v15;
            v51 = *(v15 + 1120);
            if (!v51)
            {
              goto LABEL_83;
            }

            if (v51 < 0x10000000008)
            {
              v53 = v51 >> 3;
              v54 = malloc(v51 >> 3);
              if (v54)
              {
                v55 = v54;
                memset_s(v54, v53, 0, v53);
                v50[180] = v55;
                goto LABEL_83;
              }
            }

            else
            {
              *__error() = 12;
            }

            v50[180] = 0;
            v56 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerDataAlloc", 85, 119, *v56, "malloc");
            workerDataFree(v50);
            v50 = 0;
LABEL_83:
            *(*(v15 + 1072) + 8 * v48) = v50;
            v57 = *(v15 + 1072);
            if (!*(v57 + 8 * v48))
            {
              v42 = "allocation";
              v43 = 508;
              goto LABEL_64;
            }

            ++v48;
            v47 = *(v15 + 1064);
            if (v48 >= v47)
            {
              goto LABEL_89;
            }
          }
        }

        v57 = v47;
        LODWORD(v47) = 0;
LABEL_89:
        v58 = ThreadPoolCreate(v47, v57, workerProc_0);
        *(v15 + 1080) = v58;
        if (v58)
        {
          v13[3] = verifyDirectoryStreamWriteHeader;
          v13[4] = verifyDirectoryStreamWriteBlob;
          v13[2] = verifyDirectoryStreamCancel;
          *v13 = v15;
          v13[1] = verifyDirectoryStreamClose;
          return v13;
        }

        v42 = "ThreadPoolCreate";
        v43 = 511;
LABEL_64:
        v41 = 0;
      }

      else
      {
        v41 = *__error();
        v42 = "malloc";
        v43 = 504;
      }
    }

    else
    {
      v41 = *__error();
      v59 = a1;
      v42 = "%s";
      v43 = 449;
    }
  }

  else
  {
    v41 = *__error();
    v42 = "malloc";
    v43 = 448;
  }

LABEL_65:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "AAVerifyDirectoryArchiveOutputStreamOpen", v43, 119, v41, v42, v59);
  free(v13);
  verifyDirectoryStreamClose(v15);
  return 0;
}

uint64_t workerProc_0(void *a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = a1 + 12;
  v2 = *a1;
  memset(&v38, 0, sizeof(v38));
  v36 = 0;
  v37 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  if ((concatPath(v39, 0x800uLL, v2, a1 + 12) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerProc", 153, 119, 0, "invalid path: %s");
    goto LABEL_22;
  }

  v4 = *(v2 + 1056);
  if (v4)
  {
    Node = AAPathListGetNode(v4, v3);
    if (Node != -1)
    {
      if (Node < *(v2 + 1120))
      {
        *(a1[180] + ((Node >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << Node;
        goto LABEL_8;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerProc", 166, 119, 0, "invalid node index");
LABEL_22:
      v10 = 0;
      goto LABEL_23;
    }

LABEL_19:
    v13 = v2;
    v14 = 71;
    goto LABEL_25;
  }

  if (lstat(v39, &v38) < 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v6 = a1[174];
  if (v6)
  {
    LOBYTE(v33) = v33 | 1;
    *(&v33 + 1) = a1[176];
    *&v34 = v6;
  }

  v7 = a1[168];
  if (v7)
  {
    LOBYTE(v33) = v33 | 2;
    *(&v34 + 1) = a1[170];
    *&v35 = v7;
  }

  v8 = a1[171];
  if (v8)
  {
    LOBYTE(v33) = v33 | 4;
    *(&v35 + 1) = a1[173];
    v36 = v8;
  }

  if ((aaCheckAndFixWithPath(a1 + 1040, a1 + 1112, a1 + 1168, &v33, *(v2 + 1088), &v37, v2, v3, *(v2 + 1024)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerProc", 190, 119, 0, "CheckAndFix: %s");
    goto LABEL_22;
  }

  if (!v37)
  {
    v13 = v2;
    v14 = 73;
LABEL_25:
    v10 = 0;
    if ((sendMessage(v13, v14, v3, 0) & 0x80000000) != 0)
    {
LABEL_88:
      v31 = 0;
      atomic_compare_exchange_strong((v2 + 1136), &v31, 1u);
      v15 = 0xFFFFFFFFLL;
      goto LABEL_89;
    }

    goto LABEL_26;
  }

  v9 = AAFieldKeySetCreate();
  v10 = v9;
  if (v9)
  {
    v11 = v37;
    if (v37)
    {
      v16.ikey = 4475221;
      v12 = AAFieldKeySetInsertKey(v9, v16) >= 0;
      v11 = v37;
    }

    else
    {
      v12 = 1;
    }

    if ((v11 & 2) != 0)
    {
      v17.ikey = 4475207;
      if (AAFieldKeySetInsertKey(v10, v17) < 0)
      {
        v12 = 0;
      }

      v11 = v37;
    }

    if ((v11 & 8) != 0)
    {
      v18.ikey = 4476749;
      if (AAFieldKeySetInsertKey(v10, v18) < 0)
      {
        v12 = 0;
      }

      v11 = v37;
    }

    if ((v11 & 4) != 0)
    {
      v19.ikey = 4672582;
      if (AAFieldKeySetInsertKey(v10, v19) < 0)
      {
        v12 = 0;
      }

      v11 = v37;
    }

    if ((v11 & 0x40) != 0)
    {
      v22.ikey = 5067853;
      if (AAFieldKeySetInsertKey(v10, v22) < 0)
      {
        v12 = 0;
      }

      v11 = v37;
      if ((v37 & 0x10) == 0)
      {
LABEL_43:
        if ((v11 & 0x20) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }
    }

    else if ((v11 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    v23.ikey = 5067842;
    if (AAFieldKeySetInsertKey(v10, v23) < 0)
    {
      v12 = 0;
    }

    v11 = v37;
    if ((v37 & 0x20) == 0)
    {
LABEL_47:
      if ((v11 & 0x80) != 0)
      {
        v24.ikey = 5523009;
        if (AAFieldKeySetInsertKey(v10, v24) < 0)
        {
          v12 = 0;
        }

        v11 = v37;
        if ((v37 & 0x100) == 0)
        {
LABEL_49:
          if ((v11 & 0x200) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        }
      }

      else if ((v11 & 0x100) == 0)
      {
        goto LABEL_49;
      }

      v25.ikey = 5391937;
      if (AAFieldKeySetInsertKey(v10, v25) < 0)
      {
        v12 = 0;
      }

      v11 = v37;
      if ((v37 & 0x200) == 0)
      {
LABEL_53:
        if ((v11 & 0x400) != 0)
        {
          v26.ikey = 4411984;
          if (AAFieldKeySetInsertKey(v10, v26) < 0)
          {
            v12 = 0;
          }

          v11 = v37;
          if ((v37 & 0x80000) == 0)
          {
LABEL_55:
            if ((v11 & 0x10000) == 0)
            {
              goto LABEL_56;
            }

            goto LABEL_79;
          }
        }

        else if ((v11 & 0x80000) == 0)
        {
          goto LABEL_55;
        }

        v27.ikey = 5521732;
        if (AAFieldKeySetInsertKey(v10, v27) < 0)
        {
          v12 = 0;
        }

        v11 = v37;
        if ((v37 & 0x10000) == 0)
        {
LABEL_56:
          if ((v11 & 0x20000) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_82;
        }

LABEL_79:
        v28.ikey = 4408665;
        if (AAFieldKeySetInsertKey(v10, v28) < 0)
        {
          v12 = 0;
        }

        v11 = v37;
        if ((v37 & 0x20000) == 0)
        {
LABEL_57:
          if ((v11 & 0x40000) == 0)
          {
            goto LABEL_86;
          }

LABEL_85:
          v30.ikey = 4997953;
          if (AAFieldKeySetInsertKey(v10, v30) < 0)
          {
LABEL_90:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerProc", 216, 119, 0, "AAFieldKeySetInsertKey");
            goto LABEL_23;
          }

LABEL_86:
          if (v12)
          {
            if ((sendMessage(v2, 74, v3, v10) & 0x80000000) != 0)
            {
              goto LABEL_88;
            }

LABEL_26:
            v15 = 0;
            goto LABEL_89;
          }

          goto LABEL_90;
        }

LABEL_82:
        v29.ikey = 5521752;
        if (AAFieldKeySetInsertKey(v10, v29) < 0)
        {
          v12 = 0;
        }

        if ((v37 & 0x40000) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_85;
      }

LABEL_50:
      v21.ikey = 4803654;
      if (AAFieldKeySetInsertKey(v10, v21) < 0)
      {
        v12 = 0;
      }

      v11 = v37;
      goto LABEL_53;
    }

LABEL_44:
    v20.ikey = 5067843;
    if (AAFieldKeySetInsertKey(v10, v20) < 0)
    {
      v12 = 0;
    }

    v11 = v37;
    goto LABEL_47;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerProc", 200, 119, 0, "AAFieldKeySetCreate");
LABEL_23:
  v15 = 0;
  atomic_fetch_add_explicit((v2 + 1160), 1uLL, memory_order_relaxed);
LABEL_89:
  AAFieldKeySetDestroy(v10);
  return v15;
}

uint64_t verifyDirectoryStreamClose(uint64_t result)
{
  v42 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    v2 = *(result + 1096);
    if (v2)
    {
      v3 = *(result + 1080);
      if (v3)
      {
        *(v2 + 8) = 0;
        ThreadPoolRunWorker(v3);
        *(v1 + 1096) = 0;
      }
    }

    ThreadPoolDestroy(*(v1 + 1080));
    v4 = atomic_load((v1 + 1136));
    if (v4 || (v5 = atomic_load((v1 + 1160))) != 0)
    {
LABEL_7:
      v6 = 0;
      v7 = 1;
    }

    else
    {
      v29 = *(v1 + 1072);
      if (v29)
      {
        v30 = *(v1 + 1120);
        if (v30)
        {
          v31 = *(v1 + 1064);
          if (v31)
          {
            for (i = 0; i != v31; ++i)
            {
              v33 = *(v29 + 8 * i);
              if (v33)
              {
                v34 = 0;
                v35 = *(v33 + 1440);
                v36 = *(v1 + 1128);
                do
                {
                  v37 = *v35++;
                  *v36++ |= v37;
                  v34 += 64;
                }

                while (v34 < v30);
              }
            }
          }
        }
      }

      v38 = *(v1 + 1056);
      if (v38)
      {
        v39 = AAPathListNodeFirst(v38);
        if (v39 != -1)
        {
          for (j = v39; j != -1; j = AAPathListNodeNext(*(v1 + 1056), j))
          {
            if (((*(*(v1 + 1128) + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j) & 1) == 0)
            {
              if (AAPathListNodeGetPath(*(v1 + 1056), j, 0x400uLL, path, 0) < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamClose", 385, 119, 0, "path too long");
                goto LABEL_7;
              }

              if ((sendMessage(v1, 72, path, 0) & 0x80000000) != 0)
              {
                goto LABEL_7;
              }
            }
          }
        }
      }

      v7 = 0;
      v6 = 1;
    }

    AAPathListDestroy(*(v1 + 1056));
    v8 = *(v1 + 1072);
    if (v8)
    {
      if (*(v1 + 1064))
      {
        v9 = 0;
        do
        {
          workerDataFree(*(*(v1 + 1072) + 8 * v9++));
        }

        while (v9 < *(v1 + 1064));
        v8 = *(v1 + 1072);
      }

      free(v8);
    }

    if ((v7 & 1) == 0 && *(v1 + 1048))
    {
      v10 = MEMORY[0x29EDCA610];
      v11 = *MEMORY[0x29EDCA610];
      if (*(v1 + 1144) == *(v1 + 1152))
      {
        fprintf(v11, "%12llu entries\n");
      }

      else
      {
        fprintf(v11, "%12llu entries in archive\n", *(v1 + 1144));
        fprintf(*v10, "%12llu entries in directory\n");
      }

      v12 = *v10;
      v13 = atomic_load((v1 + 1176));
      fprintf(v12, "%12llu common, OK\n", v13);
      v14 = *v10;
      v15 = atomic_load((v1 + 1184));
      fprintf(v14, "%12llu common, not matching\n", v15);
      v16 = *v10;
      v17 = atomic_load((v1 + 1192));
      fprintf(v16, "%12llu added\n", v17);
      v18 = *v10;
      v19 = atomic_load((v1 + 1200));
      fprintf(v18, "%12llu removed\n", v19);
      if (atomic_load((v1 + 1168)))
      {
        v21 = *v10;
        v22 = atomic_load((v1 + 1168));
        fprintf(v21, "%12llu differences ignored\n", v22);
      }

      if (atomic_load((v1 + 1160)))
      {
        v24 = *v10;
        v25 = atomic_load((v1 + 1160));
        fprintf(v24, "%12llu errors reported\n", v25);
      }
    }

    v26 = atomic_load((v1 + 1184));
    if (v26 || (v27 = atomic_load((v1 + 1192))) != 0 || (v28 = atomic_load((v1 + 1200))) != 0)
    {
      v6 = 0;
    }

    free(*(v1 + 1128));
    free(v1);
    if (v6)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t verifyDirectoryStreamWriteHeader(uint64_t a1, AAHeader_impl *a2)
{
  v49 = *MEMORY[0x29EDCA608];
  if (atomic_load((a1 + 1136)))
  {
    return 0xFFFFFFFFLL;
  }

  value = 0;
  bzero(v48, 0x400uLL);
  size = 0;
  length = 0;
  offset = 0;
  if (*(a1 + 1096) || *(a1 + 1112))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", 247, 119, 0, "invalid state", __size, offset);
LABEL_5:
    v5 = 0;
    atomic_compare_exchange_strong((a1 + 1136), &v5, 1u);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 1104) = 0;
  ++*(a1 + 1144);
  v7.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(a2, v7);
  if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(a2, KeyIndex, &value), FieldUInt <= 1) ? (v10 = 1) : (v10 = FieldUInt), v10 <= 0))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", 252, 119, "invalid archive");
    goto LABEL_5;
  }

  if (value == 77)
  {
    goto LABEL_13;
  }

  v11.ikey = 5521744;
  v12 = AAHeaderGetKeyIndex(a2, v11);
  if ((v12 & 0x80000000) != 0 || ((FieldString = AAHeaderGetFieldString(a2, v12, 0x400uLL, v48, &length), FieldString <= 1) ? (v14 = 1) : (v14 = FieldString), v14 <= 0))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", 254, 119, "invalid archive");
    goto LABEL_5;
  }

  v15 = *(a1 + 1040);
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = v15(*(a1 + 1032), 70, v48, a2);
  if (v16 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", 260, 119, 0, "user cancelled", __size, offset);
    goto LABEL_5;
  }

  if (v16)
  {
LABEL_13:
    result = 0;
    *(a1 + 1104) = 1;
  }

  else
  {
LABEL_23:
    Worker = ThreadPoolGetWorker(*(a1 + 1080));
    if (!Worker)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", 266, 119, 0, "ThreadPoolGetWorker", __size, offset);
      goto LABEL_5;
    }

    v18 = Worker;
    *(a1 + 1112) = AAHeaderGetPayloadSize(a2);
    *(v18 + 8) = value;
    __strlcpy_chk();
    *(v18 + 1344) = 0;
    *(v18 + 1368) = 0;
    *(v18 + 1392) = 0;
    *(v18 + 1416) = 0;
    *(v18 + 1432) = 0;
    *(v18 + 1424) = 0;
    if ((aaEntryAttributesInitWithHeader((v18 + 1040), (v18 + 1112), (v18 + 1168), a2) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", 277, 119, 0, "invalid header", __size, offset);
      goto LABEL_5;
    }

    v19.ikey = 4997953;
    v20 = AAHeaderGetKeyIndex(a2, v19);
    if ((v20 & 0x80000000) == 0 && AAHeaderGetFieldBlob(a2, v20, &size, &offset) <= 1)
    {
      v21 = size;
      *(v18 + 1424) = size;
      if ((v21 & 0x8000000000000000) != 0)
      {
LABEL_81:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", 284, 119, 0, "ACL blob allocation", __size, offset);
        goto LABEL_5;
      }

      v22 = *(v18 + 1376);
      if (v22 < v21)
      {
        do
        {
          while (!v22)
          {
            v22 = 0x4000;
            if (v21 <= 0x4000)
            {
              v24 = (v18 + 1384);
              __size = 0x4000;
              goto LABEL_42;
            }
          }

          v23 = v22 >> 1;
          if ((v22 & (v22 >> 1)) != 0)
          {
            v23 = v22 & (v22 >> 1);
          }

          v22 += v23;
        }

        while (v22 < v21);
        v24 = (v18 + 1384);
        __size = v22;
        if (v22 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_80;
        }

LABEL_42:
        v25 = *v24;
        v26 = realloc(*v24, __size);
        if (v26)
        {
          *(v18 + 1384) = v26;
          *(v18 + 1376) = __size;
          goto LABEL_44;
        }

        free(v25);
LABEL_80:
        *v24 = 0;
        *(v18 + 1368) = 0;
        *(v18 + 1376) = 0;
        goto LABEL_81;
      }
    }

LABEL_44:
    v27.ikey = 5521752;
    v28 = AAHeaderGetKeyIndex(a2, v27);
    if ((v28 & 0x80000000) == 0 && AAHeaderGetFieldBlob(a2, v28, &size, &offset) <= 1)
    {
      v29 = size;
      *(v18 + 1416) = size;
      if ((v29 & 0x8000000000000000) != 0)
      {
LABEL_84:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", 290, 119, 0, "XAT blob allocation", __size, offset);
        goto LABEL_5;
      }

      v30 = *(v18 + 1352);
      if (v30 < v29)
      {
        do
        {
          while (!v30)
          {
            v30 = 0x4000;
            if (v29 <= 0x4000)
            {
              v32 = (v18 + 1360);
              __size = 0x4000;
              goto LABEL_57;
            }
          }

          v31 = v30 >> 1;
          if ((v30 & (v30 >> 1)) != 0)
          {
            v31 = v30 & (v30 >> 1);
          }

          v30 += v31;
        }

        while (v30 < v29);
        v32 = (v18 + 1360);
        __size = v30;
        if (v30 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_83;
        }

LABEL_57:
        v33 = *v32;
        v34 = realloc(*v32, __size);
        if (v34)
        {
          *(v18 + 1360) = v34;
          *(v18 + 1352) = __size;
          goto LABEL_59;
        }

        free(v33);
LABEL_83:
        *v32 = 0;
        *(v18 + 1344) = 0;
        *(v18 + 1352) = 0;
        goto LABEL_84;
      }
    }

LABEL_59:
    v35.ikey = 4408665;
    v36 = AAHeaderGetKeyIndex(a2, v35);
    if ((v36 & 0x80000000) == 0 && AAHeaderGetFieldBlob(a2, v36, &size, &offset) <= 1)
    {
      v37 = size;
      *(v18 + 1432) = size;
      if ((v37 & 0x8000000000000000) != 0)
      {
LABEL_87:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", 296, 119, 0, "YEC blob allocation", __size, offset);
        goto LABEL_5;
      }

      v38 = *(v18 + 1400);
      if (v38 < v37)
      {
        do
        {
          while (!v38)
          {
            v38 = 0x4000;
            if (v37 <= 0x4000)
            {
              v40 = (v18 + 1408);
              v38 = 0x4000;
              goto LABEL_72;
            }
          }

          v39 = v38 >> 1;
          if ((v38 & (v38 >> 1)) != 0)
          {
            v39 = v38 & (v38 >> 1);
          }

          v38 += v39;
        }

        while (v38 < v37);
        v40 = (v18 + 1408);
        if (v38 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_86;
        }

LABEL_72:
        v41 = *v40;
        v42 = realloc(*v40, v38);
        if (v42)
        {
          *(v18 + 1408) = v42;
          *(v18 + 1400) = v38;
          goto LABEL_74;
        }

        free(v41);
LABEL_86:
        *v40 = 0;
        *(v18 + 1392) = 0;
        *(v18 + 1400) = 0;
        goto LABEL_87;
      }
    }

LABEL_74:
    if (*(a1 + 1112))
    {
      result = 0;
      *(a1 + 1096) = v18;
    }

    else
    {
      if ((ThreadPoolRunWorker(*(a1 + 1080)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", 302, 119, 0, "ThreadPoolRunWorker", __size, offset);
        goto LABEL_5;
      }

      return 0;
    }
  }

  return result;
}

uint64_t verifyDirectoryStreamWriteBlob(uint64_t a1, int a2, void *__src, rsize_t __smax)
{
  if (atomic_load((a1 + 1136)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 1104))
  {
    return 0;
  }

  v7 = *(a1 + 1096);
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteBlob", 318, 119, 0, "invalid state");
LABEL_41:
    v25 = 0;
    atomic_compare_exchange_strong((a1 + 1136), &v25, 1u);
    return 0xFFFFFFFFLL;
  }

  v10 = *&a2 & 0xFFFFFFLL;
  if ((*&a2 & 0xFFFFFFLL) == 0x434559)
  {
    v11 = 1432;
    v12 = 1392;
  }

  else if (v10 == 5521752)
  {
    v11 = 1416;
    v12 = 1344;
  }

  else
  {
    if (v10 != 4997953)
    {
      goto LABEL_34;
    }

    v11 = 1424;
    v12 = 1368;
  }

  v13 = (v7 + v12);
  v14 = *(v7 + v12);
  v15 = __CFADD__(v14, __smax);
  v16 = v14 + __smax;
  if (v15 || (v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v17 = *(v7 + v11);
  v18 = v13[1];
  if (v18 < v16)
  {
    do
    {
      while (!v18)
      {
        v18 = 0x4000;
        if (v16 <= 0x4000)
        {
          v18 = 0x4000;
          goto LABEL_25;
        }
      }

      v19 = v18 >> 1;
      if ((v18 & (v18 >> 1)) != 0)
      {
        v19 = v18 & (v18 >> 1);
      }

      v18 += v19;
    }

    while (v18 < v16);
    if (v18 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_39;
    }

LABEL_25:
    v20 = v13[2];
    v21 = realloc(v20, v18);
    if (v21)
    {
      v13[1] = v18;
      v13[2] = v21;
      goto LABEL_27;
    }

    free(v20);
LABEL_39:
    v13[1] = 0;
    v13[2] = 0;
    *v13 = 0;
    goto LABEL_40;
  }

LABEL_27:
  v22 = v13[2];
  if (__src)
  {
    memcpy((v22 + *v13), __src, __smax);
  }

  else if (v22)
  {
    memset_s((v22 + *v13), __smax, 0, __smax);
  }

  v23 = *v13 + __smax;
  *v13 = v23;
  if ((__smax & 0x8000000000000000) != 0)
  {
LABEL_40:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteBlob", 328, 119, 0, "blob append");
    goto LABEL_41;
  }

  if (v23 > v17)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteBlob", 329, 119, 0, "blob size mismatch");
    goto LABEL_41;
  }

LABEL_34:
  v24 = *(a1 + 1112) - __smax;
  *(a1 + 1112) = v24;
  if (v24)
  {
    return 0;
  }

  if ((ThreadPoolRunWorker(*(a1 + 1080)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteBlob", 337, 119, 0, "ThreadPoolRunWorker");
    goto LABEL_41;
  }

  result = 0;
  *(a1 + 1096) = 0;
  return result;
}

void workerDataFree(void **a1)
{
  if (a1)
  {
    free(a1[170]);
    memset_s(a1 + 168, 0x18uLL, 0, 0x18uLL);
    free(a1[173]);
    memset_s(a1 + 171, 0x18uLL, 0, 0x18uLL);
    free(a1[176]);
    memset_s(a1 + 174, 0x18uLL, 0, 0x18uLL);
    free(a1[180]);

    free(a1);
  }
}

uint64_t sendMessage(uint64_t a1, uint64_t a2, uint64_t a3, AAFieldKeySet key_set)
{
  v20 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 1048);
  if (v8)
  {
    if (a2 > 72)
    {
      if (a2 == 74)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        *s = 0u;
        v13 = 0u;
        if (key_set)
        {
          AAFieldKeySetSerialize(key_set, 0x80uLL, s);
        }

        fprintf(*MEMORY[0x29EDCA610], "DIFFER  %s (%s)\n");
      }

      else if (v8 != 1)
      {
        fprintf(*MEMORY[0x29EDCA610], "OK      %s\n");
      }
    }

    else if (a2 == 71)
    {
      fprintf(*MEMORY[0x29EDCA610], "REMOVED %s\n");
    }

    else
    {
      fprintf(*MEMORY[0x29EDCA610], "ADDED   %s\n");
    }
  }

  v9 = *(a1 + 1040);
  if (v9)
  {
    result = v9(*(a1 + 1032), a2, a3, key_set);
    if ((result & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (a2 == 73)
    {
      v11 = 1176;
LABEL_21:
      atomic_fetch_add_explicit((a1 + v11), 1uLL, memory_order_relaxed);
      return result;
    }

    if (result)
    {
      v11 = 1168;
      goto LABEL_21;
    }

    if (a2 == 74)
    {
      result = 0;
      v11 = 1184;
      goto LABEL_21;
    }

    result = 0;
    if (a2 == 72)
    {
      v11 = 1192;
      goto LABEL_21;
    }

    if (a2 == 71)
    {
      result = 0;
      v11 = 1200;
      goto LABEL_21;
    }
  }

  else
  {
    if ((a2 - 71) < 4)
    {
      result = 0;
      v11 = qword_296AD17C0[(a2 - 71)];
      goto LABEL_21;
    }

    return 0;
  }

  return result;
}

size_t PCompressLZMA6Encode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZMADecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t aeaCryptoInit(char *__s, unsigned int *a2)
{
  if (__s)
  {
    memset_s(__s, 0xD0uLL, 0, 0xD0uLL);
  }

  if (!aeaProfileIsValid(*a2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "aeaCryptoInit", 1400, 94, 0, "Invalid profile");
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = *a2;
  *__s = 32;
  *(__s + 9) = HKDFDerive;
  *(__s + 1) = 0x2000000020;
  *(__s + 8) = RNG;
  *(__s + 13) = 32;
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        if (v5 == 5)
        {
          *(__s + 1) = 80;
          *(__s + 11) = AEADEncrypt_AESCTR_MAC256_KEY640;
          *(__s + 12) = AEADDecrypt_AESCTR_MAC256_KEY640;
          *(__s + 10) = ScryptDerive_KEY256;
          *(__s + 14) = a2[2];
        }

        goto LABEL_21;
      }

      v4 = 1;
    }

    *(__s + 1) = 80;
    *(__s + 11) = AEADEncrypt_AESCTR_MAC256_KEY640;
    *(__s + 12) = AEADDecrypt_AESCTR_MAC256_KEY640;
    *(__s + 12) = 65;
    *(__s + 13) = DHESender_ECDHE_P256;
    *(__s + 14) = DHERecipient_ECDHE_P256;
    *(__s + 2) = 0x4100000061;
    *(__s + 6) = 32;
    v6 = DerivePublicFromPrivate_ECP256;
    v7 = 160;
  }

  else
  {
    if (!v5)
    {
      *(__s + 1) = 32;
      *(__s + 11) = AEADEncrypt_None_MAC256_KEY256;
      *(__s + 12) = AEADDecrypt_None_MAC256_KEY256;
      *(__s + 15) = Digest_SHA256;
      *(__s + 16) = DSASign_ECDSA_P256;
      *(__s + 17) = DSAVerify_ECDSA_P256;
      *(__s + 28) = xmmword_296AD17F0;
      *(__s + 44) = 0x2000000080;
LABEL_20:
      *(__s + 21) = DerivePublicFromPrivate_ECP256;
      goto LABEL_21;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        goto LABEL_21;
      }

      v4 = 1;
    }

    *(__s + 1) = 80;
    *(__s + 11) = AEADEncrypt_AESCTR_MAC256_KEY640;
    v6 = AEADDecrypt_AESCTR_MAC256_KEY640;
    v7 = 96;
  }

  *&__s[v7] = v6;
  if (v4 == 1)
  {
    *(__s + 15) = Digest_SHA256;
    *(__s + 16) = DSASign_ECDSA_P256;
    *(__s + 17) = DSAVerify_ECDSA_P256;
    *(__s + 28) = xmmword_296AD17F0;
    *(__s + 11) = 160;
    *(__s + 18) = AEADEncrypt_AESCTR_MAC256_KEY640;
    *(__s + 19) = AEADDecrypt_AESCTR_MAC256_KEY640;
    goto LABEL_20;
  }

LABEL_21:
  result = 0;
  *(__s + 22) = HMACInit_SHA256;
  *(__s + 23) = HMACUpdate_SHA256;
  *(__s + 24) = HMACFinal_SHA256;
  *(__s + 25) = Digest_SHA256;
  return result;
}

uint64_t HKDFDerive(_DWORD *a1, uint64_t a2, _DWORD *a3, unsigned int *a4, unsigned int *a5)
{
  if ((a2 - 257) < 0xFFFFFFFFFFFFFF00 || *a3 == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HKDFDerive", 518, 94, 0, "Invalid KDF parameters");
    return 0xFFFFFFFFLL;
  }

  if (CCKDFParametersCreateHkdf())
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HKDFDerive", 529, 94, 0, "CCKDFParametersCreateHkdf");
  }

  else
  {
    if (!CCDeriveKey())
    {
      v10 = 0;
      goto LABEL_12;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HKDFDerive", 535, 94, 0, "CCDeriveKey");
  }

  v10 = 1;
LABEL_12:
  *a1 = a2;
  memset_s(a1 + a2 + 4, 256 - a2, 0, 256 - a2);
  if (v10)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  return (v10 << 31 >> 31);
}

uint64_t RNG(void *a1, size_t a2)
{
  result = CCRandomGenerateBytes(a1, a2);
  if (result)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "RNG", 218, 94, 0, "generate random bytes");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t AEADEncrypt_None_MAC256_KEY256(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4, const void *a5, size_t a6)
{
  if (*a4 == 32)
  {
    if ((HMACDerive_SHA256(a3, a4, a1, a2, a5, a6) & 0x80000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_None_MAC256_KEY256", 904, 94, 0, "HMAC derivation");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_None_MAC256_KEY256", 901, 94, 0, "AEAD invalid sizes");
  }

  if (a3)
  {
    memset_s(a3, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t AEADDecrypt_None_MAC256_KEY256(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4, const void *a5, size_t a6)
{
  if (*a4 == 32 && *a3 == 32)
  {
    if ((HMACVerify_SHA256(a3, a4, a1, a2, a5, a6) & 0x80000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_None_MAC256_KEY256", 924, 94, 0, "HMAC verification");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_None_MAC256_KEY256", 921, 94, 0, "AEAD invalid sizes");
  }

  return 0xFFFFFFFFLL;
}

uint64_t AEADEncrypt_AESCTR_MAC256_KEY640(char *a1, size_t a2, _DWORD *a3, uint64_t a4, const void *a5, size_t a6)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(v26, 0, sizeof(v26));
  memset(v23, 0, sizeof(v23));
  memset(v19, 0, sizeof(v19));
  if (*a4 != 80)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 946, 94, 0, "AEAD invalid sizes");
    return 0xFFFFFFFFLL;
  }

  v21 = *(a4 + 4);
  v22 = *(a4 + 20);
  __s = 32;
  memset_s(v23, 0xE0uLL, 0, 0xE0uLL);
  keyLength_4[0] = *(a4 + 36);
  keyLength_4[1] = *(a4 + 52);
  keyLength = 32;
  memset_s(v26, 0xE0uLL, 0, 0xE0uLL);
  v18 = *(a4 + 68);
  v17 = 16;
  memset_s(v19, 0xF0uLL, 0, 0xF0uLL);
  dataOutMoved = 0;
  cryptorRef = 0;
  v12 = CCCryptorCreateWithMode(0, 4u, 0, 0, &v18, keyLength_4, keyLength, 0, 0, 0, 0, &cryptorRef);
  if (!cryptorRef || v12)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 968, 94, 0, "Cryptor creation");
LABEL_17:
    v13 = 1;
    goto LABEL_18;
  }

  if (CCCryptorGetOutputLength(cryptorRef, a2, 1) != a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 971, 94, 0, "AEAD can't operate in-place");
    goto LABEL_17;
  }

  if (CCCryptorUpdate(cryptorRef, a1, a2, a1, a2, &dataOutMoved) || dataOutMoved != a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 975, 94, 0, "Encryption");
    goto LABEL_17;
  }

  if (CCCryptorFinal(cryptorRef, &a1[a2], 0, &dataOutMoved) || dataOutMoved)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 977, 94, 0, "Encryption");
    goto LABEL_17;
  }

  if ((HMACDerive_SHA256(a3, &__s, a1, a2, a5, a6) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 980, 94, 0, "HMAC");
    goto LABEL_17;
  }

  v13 = 0;
LABEL_18:
  CCCryptorRelease(cryptorRef);
  memset_s(&keyLength, 0x104uLL, 0, 0x104uLL);
  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  memset_s(&v17, 0x104uLL, 0, 0x104uLL);
  if (a3)
  {
    if (v13)
    {
      memset_s(a3, 0x104uLL, 0, 0x104uLL);
    }
  }

  return (v13 << 31 >> 31);
}

uint64_t AEADDecrypt_AESCTR_MAC256_KEY640(char *a1, size_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(v26, 0, sizeof(v26));
  memset(v23, 0, sizeof(v23));
  memset(v19, 0, sizeof(v19));
  if (*a4 == 80)
  {
    v21 = *(a4 + 4);
    v22 = *(a4 + 20);
    __s = 32;
    memset_s(v23, 0xE0uLL, 0, 0xE0uLL);
    keyLength_4[0] = *(a4 + 36);
    keyLength_4[1] = *(a4 + 52);
    keyLength = 32;
    memset_s(v26, 0xE0uLL, 0, 0xE0uLL);
    v18 = *(a4 + 68);
    v17 = 16;
    memset_s(v19, 0xF0uLL, 0, 0xF0uLL);
    if ((HMACVerify_SHA256(a3, &__s, a1, a2, a5, a6) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1057, 94, 0, "HMAC");
      v13 = 0xFFFFFFFFLL;
LABEL_19:
      memset_s(&keyLength, 0x104uLL, 0, 0x104uLL);
      memset_s(&__s, 0x104uLL, 0, 0x104uLL);
      memset_s(&v17, 0x104uLL, 0, 0x104uLL);
      return v13;
    }

    dataOutMoved = 0;
    cryptorRef = 0;
    v12 = CCCryptorCreateWithMode(1u, 4u, 0, 0, &v18, keyLength_4, keyLength, 0, 0, 0, 0, &cryptorRef);
    if (!cryptorRef || v12)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1074, 94, 0, "Cryptor creation");
    }

    else if (CCCryptorGetOutputLength(cryptorRef, a2, 1) == a2)
    {
      if (CCCryptorUpdate(cryptorRef, a1, a2, a1, a2, &dataOutMoved) || dataOutMoved != a2)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1081, 94, 0, "Encryption");
      }

      else
      {
        if (!CCCryptorFinal(cryptorRef, &a1[a2], 0, &dataOutMoved) && !dataOutMoved)
        {
          v13 = 0;
LABEL_18:
          CCCryptorRelease(cryptorRef);
          goto LABEL_19;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1083, 94, 0, "Encryption");
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1077, 94, 0, "AEAD can't operate in-place");
    }

    v13 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1049, 94, 0, "AEAD invalid sizes");
  return 0xFFFFFFFFLL;
}

uint64_t ScryptDerive_KEY256(_DWORD *a1, uint64_t a2, unint64_t a3, unsigned int a4, _DWORD *a5)
{
  if (a3 < 0x14 || !*a5)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 823, 94, 0, "Invalid password/salt");
    return 0xFFFFFFFFLL;
  }

  if (a4 >= 4)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 832, 94, 0, "Invalid hardness parameter");
    return 0xFFFFFFFFLL;
  }

  v6 = ccscrypt_storage_size();
  if ((v6 & 0x8000000000000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 842, 94, 0, "Invalid scrypt parameters");
LABEL_15:
    v9 = 0;
LABEL_16:
    free(v9);
    if (a1)
    {
      memset_s(a1, 0x104uLL, 0, 0x104uLL);
    }

    return 0xFFFFFFFFLL;
  }

  if (v6 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_14:
    v10 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 844, 94, v10, "malloc");
    goto LABEL_15;
  }

  v8 = malloc(v6);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  if (ccscrypt())
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 846, 94, 0, "scrypt", 32, a1 + 1);
    goto LABEL_16;
  }

  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  free(v9);
  return 0;
}

uint64_t DHESender_ECDHE_P256(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 != 65)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 581, 94, 0, "ECDHE_P256_Sender invalid sizes");
    return 0xFFFFFFFFLL;
  }

  v5 = MEMORY[0x29C25DE20]();
  v6 = (32 * *v5) | 0x10;
  v7 = 24 * *v5 + 16;
  if (v6 < 0x2000000001)
  {
    v8 = malloc(v6);
  }

  else
  {
    v8 = 0;
    *__error() = 12;
  }

  if (v7 < 0x2000000001)
  {
    v12 = malloc(v7);
    v9 = v12;
    v10 = v8 == 0;
    v11 = v12 == 0;
    if (v8)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      if (ccec_x963_import_pub())
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 602, 94, 0, "importing public key", 32);
      }

      else
      {
        ccrng();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 606, 94, 0, "RNG lookup", 32);
      }

      v11 = 0;
LABEL_21:
      memset_s(v8, v6, 0, v6);
      free(v8);
      if (!v11)
      {
        memset_s(v9, v7, 0, v7);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v9 = 0;
    *__error() = 12;
    v10 = v8 == 0;
    v11 = 1;
  }

  v14 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 599, 94, *v14, "malloc");
  if (!v10)
  {
    goto LABEL_21;
  }

  free(v8);
  if (!v11)
  {
    memset_s(v9, v7, 0, v7);
  }

LABEL_23:
  free(v9);
  if (a1)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  if (a2)
  {
    memset_s(a2, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t DHERecipient_ECDHE_P256(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 != 97 || *a2 != 65)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 704, 94, 0, "ECDHE_P256_Recipient invalid sizes");
    return 0xFFFFFFFFLL;
  }

  v4 = MEMORY[0x29C25DE20]();
  v5 = 24 * *v4 + 16;
  v6 = (32 * *v4) | 0x10;
  if (v5 < 0x2000000001)
  {
    v7 = malloc(v5);
  }

  else
  {
    v7 = 0;
    *__error() = 12;
  }

  if (v6 < 0x2000000001)
  {
    v12 = malloc(v6);
    v9 = v12;
    v10 = v7 == 0;
    v11 = v12 == 0;
    if (v7)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      if (ccec_x963_import_priv())
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 725, 94, 0, "importing full key", 32);
      }

      else if (ccec_x963_import_pub())
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 728, 94, 0, "importing pub key", 32);
      }

      else
      {
        ccrng();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 732, 94, 0, "RNG lookup", 32);
      }

      v11 = 0;
LABEL_25:
      memset_s(v7, v5, 0, v5);
      free(v7);
      if (!v11)
      {
        memset_s(v9, v6, 0, v6);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v9 = 0;
    *__error() = 12;
    v10 = v7 == 0;
    v11 = 1;
  }

  v14 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 722, 94, *v14, "malloc");
  if (!v10)
  {
    goto LABEL_25;
  }

  free(v7);
  if (!v11)
  {
    memset_s(v9, v6, 0, v6);
  }

LABEL_27:
  free(v9);
  if (a1)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t DerivePublicFromPrivate_ECP256(_DWORD *a1, _DWORD *a2)
{
  if (*a2 != 97)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1346, 94, 0, "invalid private key size");
    return 0xFFFFFFFFLL;
  }

  v3 = MEMORY[0x29C25DE20]();
  v4 = (32 * *v3) | 0x10;
  if (v4 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_9;
  }

  v5 = malloc((32 * *v3) | 0x10);
  if (!v5)
  {
LABEL_9:
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1356, 94, *v7, "malloc");
    if (a1)
    {
LABEL_10:
      memset_s(a1, 0x104uLL, 0, 0x104uLL);
    }

    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  if (ccec_x963_import_priv())
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1359, 94, 0, "importing private key");
    memset_s(v6, v4, 0, v4);
    free(v6);
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_10;
  }

  ccec_x963_export();
  *a1 = 65;
  memset_s(a1 + 69, 0xBFuLL, 0, 0xBFuLL);
  memset_s(v6, v4, 0, v4);
  free(v6);
  return 0;
}

uint64_t Digest_SHA256(uint64_t a1, const void *a2, CC_LONG a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  CC_SHA256_Update(&v7, a2, a3);
  CC_SHA256_Final((a1 + 4), &v7);
  *a1 = 32;
  return 0;
}

uint64_t DSASign_ECDSA_P256(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 == 97)
  {
    if (*a3 == 32)
    {
      v4 = (32 * *MEMORY[0x29C25DE20]()) | 0x10;
      if (v4 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_11;
      }

      v6 = malloc(v4);
      if (!v6)
      {
LABEL_11:
        v8 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1167, 94, *v8, "malloc");
        if (!a1)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_17;
      }

      v7 = v6;
      if (ccec_x963_import_priv())
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1170, 94, 0, "importing private key");
      }

      else
      {
        if (a1)
        {
          memset_s(a1, 0x104uLL, 0, 0x104uLL);
        }

        ccrng();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1176, 94, 0, "RNG lookup", 128);
      }

      memset_s(v7, v4, 0, v4);
      free(v7);
      if (a1)
      {
LABEL_17:
        memset_s(a1, 0x104uLL, 0, 0x104uLL);
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1155, 94, 0, "invalid digest size");
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1154, 94, 0, "invalid private key size");
  }

  return 0xFFFFFFFFLL;
}

uint64_t DSAVerify_ECDSA_P256(unsigned int *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a1 == 128)
  {
    if (*a2 == 65)
    {
      if (*a3 == 32)
      {
        v4 = 24 * *MEMORY[0x29C25DE20]() + 16;
        if (v4 < 0x2000000001)
        {
          v6 = malloc(v4);
          if (v6)
          {
            v7 = v6;
            if (ccec_x963_import_pub())
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1267, 94, 0, "importing public key");
            }

            else
            {
              v9 = *a1;
              if (v9 >= 2 && *(a1 + 4) == 48)
              {
                if (*(a1 + 5) + 2 <= v9)
                {
                  ccec_verify();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1275, 94, 0, "Signature verification");
                }

                else
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1272, 94, 0, "Invalid signature");
                }
              }

              else
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1270, 94, 0, "Invalid signature");
              }
            }

            memset_s(v7, v4, 0, v4);
            goto LABEL_20;
          }
        }

        else
        {
          *__error() = 12;
        }

        v8 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1264, 94, *v8, "malloc");
        v7 = 0;
LABEL_20:
        free(v7);
        return 0xFFFFFFFFLL;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1253, 94, 0, "invalid digest size");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1252, 94, 0, "Invalid public key size");
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1251, 94, 0, "Invalid signature size");
  }

  return 0xFFFFFFFFLL;
}

CCHmacContext *HMACInit_SHA256(_DWORD *a1)
{
  if (*a1 != 32)
  {
    return 0;
  }

  v2 = malloc(0x180uLL);
  v3 = v2;
  if (v2)
  {
    CCHmacInit(v2, 2u, a1 + 1, 0x20uLL);
  }

  else
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HMACInit_SHA256", 379, 94, *v4, "malloc");
  }

  return v3;
}

uint64_t HMACUpdate_SHA256(CCHmacContext *a1, const void *a2, size_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  CCHmacUpdate(a1, a2, a3);
  return 0;
}

uint64_t HMACFinal_SHA256(CCHmacContext *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  CCHmacFinal(a1, a2 + 1);
  *a2 = 32;
  memset_s(a2 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(a1, 0x180uLL, 0, 0x180uLL);
  free(a1);
  return 0;
}

uint64_t HMACDerive_SHA256(_DWORD *a1, _DWORD *a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  if (*a2 != 32)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v6;
  v17 = v7;
  memset(&ctx, 0, sizeof(ctx));
  CCHmacInit(&ctx, 2u, a2 + 1, 0x20uLL);
  CCHmacUpdate(&ctx, a5, a6);
  CCHmacUpdate(&ctx, a3, a4);
  data = a6;
  CCHmacUpdate(&ctx, &data, 8uLL);
  CCHmacFinal(&ctx, a1 + 1);
  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(&ctx, 0x180uLL, 0, 0x180uLL);
  return 0;
}

uint64_t HMACVerify_SHA256(uint64_t a1, _DWORD *a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v17 = *MEMORY[0x29EDCA608];
  v7 = *a1 != 32 || *a2 != 32;
  v16 = 0;
  memset(__s, 0, sizeof(__s));
  v8 = HMACDerive_SHA256(__s, a2, a3, a4, a5, a6) < 0;
  v13 = *(&__s[1] + 4);
  v14 = *(__s + 4);
  v11 = *(a1 + 20);
  v12 = *(a1 + 4);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  v9 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v14, v12), vceqq_s64(v13, v11))));
  v9.i16[0] = vmaxv_u16(v9);
  return ((v9.i32[0] | v8 | v7) << 31 >> 31);
}

AAByteStream AEADecryptionInputStreamOpen(AAByteStream encrypted_stream, AEAContext context, AAFlagSet flags, int n_threads)
{
  DefaultNThreads = n_threads;
  if (n_threads <= 0)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (!*(context + 684) || !*(context + 341))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 461, 30, 0, "Invalid context");
    v8 = 0;
    v10 = 0;
    goto LABEL_20;
  }

  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x428uLL);
  v10 = v9;
  if (!v9 || (memset_s(v9, 0x428uLL, 0, 0x428uLL), !v8))
  {
    v12 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 466, 30, v12, "malloc");
    goto LABEL_20;
  }

  *v10 = encrypted_stream;
  *(v10 + 8) = flags;
  if ((aeaContextUnlock(context, v10 + 144, (v10 + 788), 0, 1, 0) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 473, 30, 0, "unlock container");
    goto LABEL_20;
  }

  v11 = (*(v10 + 176) + *(v10 + 160) - 1) / *(v10 + 160);
  if (v11 >= 0xFFFFFFFF)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 477, 30, 0, "Invalid data size");
LABEL_20:
    free(v8);
    aeaInputStreamClose(v10);
    return 0;
  }

  *(v10 + 52) = v11;
  *(v10 + 44) = (v11 + *(v10 + 164) - 1) / *(v10 + 164);
  atomic_store(*(context + 341), (v10 + 32));
  if ((aeaCryptoInit((v10 + 216), (v10 + 144)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 486, 30, 0, "Invalid container");
    goto LABEL_20;
  }

  result = aeaContainerOffsetsInit(v10 + 424, (v10 + 144), (v10 + 216));
  if ((result & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 487, 30, 0, "deriving container offsets");
    goto LABEL_20;
  }

  v14 = *(v10 + 228);
  if (v14 < 0x101)
  {
    __memcpy_chk();
    *(v10 + 528) = v14;
    memset_s((v10 + 532 + v14), 256 - v14, 0, 256 - v14);
    v15 = *(v10 + 520);
    *(v10 + 1056) = v15;
    if (v15 < 0x2000000001)
    {
      v17 = malloc(v15);
    }

    else
    {
      v16 = __error();
      v17 = 0;
      *v16 = 12;
    }

    *(v10 + 1048) = v17;
    if (*(v10 + 176) < 0x10000uLL || DefaultNThreads == 1)
    {
      *(v10 + 96) = 0;
      v28 = *(v10 + 168);
      if (v28)
      {
        v29 = aeaEffectiveCompressionAlgorithm(v28);
        v30 = compression_decode_scratch_buffer_size(v29);
        *(v10 + 96) = v30;
      }

      else
      {
        v30 = 0;
      }

      v31 = *(v10 + 160);
      v32 = malloc(v31);
      *(v10 + 72) = v32;
      *(v10 + 80) = malloc(v31);
      if (v30)
      {
        if (v30 < 0x2000000001)
        {
          v34 = malloc(v30);
        }

        else
        {
          v33 = __error();
          v34 = 0;
          *v33 = 12;
          v32 = *(v10 + 72);
        }

        *(v10 + 88) = v34;
      }

      if (!v32 || !*(v10 + 80) || !*(v10 + 1048) || *(v10 + 96) && !*(v10 + 88))
      {
        v36 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 513, 30, v36, "malloc");
        goto LABEL_20;
      }
    }

    else
    {
      *(v10 + 112) = DefaultNThreads;
      v18 = calloc(DefaultNThreads, 8uLL);
      *(v10 + 120) = v18;
      if (!v18)
      {
        v35 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 520, 30, v35, "malloc");
        goto LABEL_20;
      }

      v19 = *(v10 + 112);
      if (v19)
      {
        v20 = 0;
        v21 = 8 * v19;
        while (1)
        {
          v22 = malloc(0x240uLL);
          if (!v22)
          {
            v41 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 524, 30, v41, "malloc");
            goto LABEL_20;
          }

          v23 = v22;
          *(*(v10 + 120) + v20) = v22;
          *v22 = v10;
          v24 = *(v10 + 160);
          v25 = malloc(v24);
          v23[69] = v25;
          v26 = malloc(v24);
          v23[70] = v26;
          if (!v25 || v26 == 0)
          {
            break;
          }

          v20 += 8;
          if (v21 == v20)
          {
            goto LABEL_51;
          }
        }

        v42 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 529, 30, v42, "malloc");
        goto LABEL_20;
      }

      LODWORD(v24) = *(v10 + 160);
LABEL_51:
      v37 = SharedBufferCreate((2 * v24));
      *(v10 + 104) = v37;
      if (!v37)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 532, 30, 0, "creating shared buffer");
        goto LABEL_20;
      }

      v38 = ThreadPipelineCreate(*(v10 + 112), *(v10 + 120), streamWorkerProc, v10, streamConsumerProc, 0);
      *(v10 + 128) = v38;
      if (!v38)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 534, 30, 0, "creating pipeline");
        goto LABEL_20;
      }

      if ((createThread((v10 + 136), streamThreadProc, v10, 0) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 535, 30, 0, "Stream thread creation");
        goto LABEL_20;
      }
    }

    v39 = *(v10 + 192);
    *(context + 2) = *(v10 + 176);
    *(context + 3) = v39;
    *(context + 8) = *(v10 + 208);
    v40 = *(v10 + 160);
    *context = *(v10 + 144);
    *(context + 1) = v40;
    v8[2] = aeaInputStreamRead;
    v8[7] = aeaInputStreamCancel;
    *v8 = v10;
    v8[1] = aeaInputStreamClose;
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t streamWorkerProc(void *a1)
{
  v1 = *a1;
  if (atomic_load((*a1 + 16)))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 142) && (aeaInputStreamDecryptSegment(*a1, a1 + 2, a1[69], a1[70]) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamWorkerProc", 298, 30, 0, "decrypting segment %u", *(a1 + 2));
    aeaInputStreamCancel(v1);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t streamConsumerProc(uint64_t a1, uint64_t a2)
{
  if (atomic_load((a1 + 16)))
  {
    return 0xFFFFFFFFLL;
  }

  if (atomic_load((a1 + 24)))
  {
    return 0;
  }

  if (*(a2 + 568))
  {
    v6 = 0;
    atomic_compare_exchange_strong((a1 + 24), &v6, 1u);
    if (!v6)
    {
      SharedBufferWrite(*(a1 + 104), 0, 0);
    }

    return 0;
  }

  if (SharedBufferWrite(*(a1 + 104), *(a2 + 560), *(a2 + 12)) == *(a2 + 12))
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamConsumerProc", 321, 30, 0, "SharedBufferWrite");
  aeaInputStreamCancel(a1);
  return 0xFFFFFFFFLL;
}

uint64_t streamThreadProc(uint64_t a1)
{
  if (*(a1 + 52))
  {
    v2 = 0;
    v3 = 1;
    while (1)
    {
      v4 = atomic_load((a1 + 16));
      if (v4 || (v5 = atomic_load((a1 + 20))) != 0)
      {
LABEL_13:
        v8 = v3 == 0;
        if (*(a1 + 48) >= *(a1 + 52))
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      Worker = ThreadPipelineGetWorker(*(a1 + 128));
      if (!Worker)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamThreadProc", 263, 30, 0, "getting worker from pipeline");
        goto LABEL_26;
      }

      v7 = Worker;
      *(Worker + 568) = 0;
      memset_s((Worker + 8), 0x220uLL, 0, 0x220uLL);
      if ((aeaInputStreamLoadSegment(a1, (v7 + 8), *(v7 + 552)) & 0x80000000) != 0)
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_10;
      }

LABEL_11:
      *(a1 + 64) = *(a1 + 68);
      if ((ThreadPipelineRunWorker(*(a1 + 128)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamThreadProc", 269, 30, 0, "running worker");
        goto LABEL_26;
      }

      if (++v2 >= *(a1 + 52))
      {
        goto LABEL_13;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamThreadProc", 266, 30, 0, "loading segment");
LABEL_10:
    memset_s((v7 + 8), 0x220uLL, 0, 0x220uLL);
    v3 = 0;
    goto LABEL_11;
  }

  v8 = 0;
LABEL_16:
  if ((aeaInputStreamAuthenticatePadding(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamThreadProc", 275, 30, 0, "authenticating padding");
  }

  else
  {
LABEL_17:
    v9 = ThreadPipelineGetWorker(*(a1 + 128));
    if (v9)
    {
      *(v9 + 568) = 1;
      memset_s((v9 + 8), 0x220uLL, 0, 0x220uLL);
      if ((ThreadPipelineRunWorker(*(a1 + 128)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamThreadProc", 283, 30, 0, "running worker");
      }

      else if (!v8)
      {
        return a1;
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamThreadProc", 280, 30, 0, "getting worker from pipeline");
    }
  }

LABEL_26:
  aeaInputStreamCancel(a1);
  return a1;
}

uint64_t aeaInputStreamRead(uint64_t a1, char *__dst, unint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (atomic_load((a1 + 16)))
  {
    return -1;
  }

  v6 = a3;
  if (!a3)
  {
    return 0;
  }

  v7 = __dst;
  v9 = *(a1 + 104);
  if (v9)
  {
    v4 = SharedBufferRead(v9, __dst, a3);
    if ((v4 & 0x8000000000000000) == 0)
    {
      return v4;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamRead", 353, 30, 0, "Multi-thread read");
    goto LABEL_8;
  }

  v4 = 0;
  v10 = *(a1 + 64);
  do
  {
    v11 = *(a1 + 68);
    if (v10 >= v11)
    {
      if (*(a1 + 48) >= *(a1 + 52))
      {
        break;
      }

      bzero(__s, 0x220uLL);
      if ((aeaInputStreamLoadSegment(a1, __s, *(a1 + 72)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamRead", 365, 30, 0, "Segment load");
        goto LABEL_8;
      }

      if ((aeaInputStreamDecryptSegment(a1, __s, *(a1 + 72), *(a1 + 80)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamRead", 366, 30, 0, "Segment decrypt");
        goto LABEL_8;
      }

      memset_s(__s, 0x220uLL, 0, 0x220uLL);
      v10 = *(a1 + 64);
      v11 = *(a1 + 68);
    }

    v12 = v11 - v10;
    if (!v12)
    {
      break;
    }

    v13 = v12 >= v6 ? v6 : v12;
    memcpy(v7, (*(a1 + 80) + v10), v13);
    v4 += v13;
    v7 += v13;
    v10 = *(a1 + 64) + v13;
    *(a1 + 64) = v10;
    v6 -= v13;
  }

  while (v6);
  if (v4)
  {
    return v4;
  }

  if (atomic_load((a1 + 28)))
  {
    return 0;
  }

  if ((aeaInputStreamAuthenticatePadding(a1) & 0x80000000) == 0)
  {
    v15 = 0;
    v4 = 0;
    atomic_compare_exchange_strong((a1 + 28), &v15, 1u);
    return v4;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamRead", 385, 30, 0, "Padding authentication");
LABEL_8:
  aeaInputStreamCancel(a1);
  return -1;
}

uint64_t aeaInputStreamCancel(uint64_t result)
{
  v2 = 0;
  atomic_compare_exchange_strong((result + 16), &v2, 1u);
  if (!v2)
  {
    v3 = result;
    AAByteStreamCancel(*result);
    result = *(v3 + 104);
    if (result)
    {

      return SharedBufferAbort(result);
    }
  }

  return result;
}

uint64_t aeaInputStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 136))
    {
      v2 = 0;
      atomic_compare_exchange_strong((result + 20), &v2, 1u);
        ;
      }

      joinThread(*(v1 + 136));
    }

    ThreadPipelineDestroy(*(v1 + 128));
    SharedBufferDestroy(*(v1 + 104));
    v3 = *(v1 + 120);
    if (v3)
    {
      v4 = *(v1 + 112);
      if (v4)
      {
        for (i = 0; i < v4; ++i)
        {
          v6 = *(*(v1 + 120) + 8 * i);
          if (v6)
          {
            free(v6[69]);
            free(v6[70]);
            free(v6);
            v4 = *(v1 + 112);
          }
        }

        v3 = *(v1 + 120);
      }

      free(v3);
    }

    v7 = atomic_load((v1 + 16));
    if (v7)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamClose", 438, 30, 0, "Stream processing cancelled");
    }

    v8 = *(v1 + 1048);
    if (v8)
    {
      memset_s(*(v1 + 1048), *(v1 + 1056), 0, *(v1 + 1056));
    }

    free(v8);
    v9 = *(v1 + 72);
    if (v9)
    {
      memset_s(*(v1 + 72), *(v1 + 160), 0, *(v1 + 160));
    }

    free(v9);
    v10 = *(v1 + 80);
    if (v10)
    {
      memset_s(*(v1 + 80), *(v1 + 160), 0, *(v1 + 160));
    }

    free(v10);
    v11 = *(v1 + 88);
    if (v11)
    {
      memset_s(*(v1 + 88), *(v1 + 96), 0, *(v1 + 96));
    }

    free(v11);
    memset_s(v1, 0x428uLL, 0, 0x428uLL);
    free(v1);
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aeaInputStreamDecryptSegment(uint64_t a1, unsigned int *a2, const uint8_t *a3, uint8_t *a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v7 = a2[2];
  v8 = *a2;
  v9 = *(a1 + 164);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  memset(&__s[8], 0, 252);
  memset(v32, 0, 260);
  *&__s[8] = 19267;
  *__s = 0x5F41454100000006;
  memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
  *&__s[*__s + 4] = v8 / v9;
  *__s = 10;
  memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
  v10 = *(a1 + 288);
  if (v10 && *(a1 + 788))
  {
    v11 = v10(v30, *(a1 + 216));
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    v12 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
  }

  v12 = 1;
LABEL_8:
  memset(v32 + 8, 0, 224);
  memset(&v32[14] + 8, 0, 28);
  WORD4(v32[0]) = 19283;
  *&v32[0] = 0x5F41454100000006;
  memset_s(v32 + 10, 0xFAuLL, 0, 0xFAuLL);
  v13 = LODWORD(v32[0]);
  if (LODWORD(v32[0]) >= 0xFD)
  {
    __break(1u);
  }

  *(v32 + LODWORD(v32[0]) + 4) = v8 % v9;
  LODWORD(v32[0]) = v13 + 4;
  memset_s(v32 + v13 + 8, 252 - v13, 0, 252 - v13);
  memset(__s, 0, sizeof(__s));
  v14 = *(a1 + 288);
  if (!v14 || !LODWORD(v30[0]))
  {
    memset_s(v32, 0x104uLL, 0, 0x104uLL);
    goto LABEL_23;
  }

  v15 = v14(v28, *(a1 + 220), v30, v32, __s);
  memset_s(v32, 0x104uLL, 0, 0x104uLL);
  if (v15 < 0)
  {
LABEL_23:
    memset_s(v30, 0x104uLL, 0, 0x104uLL);
    goto LABEL_24;
  }

  memset_s(v30, 0x104uLL, 0, 0x104uLL);
  if (v12)
  {
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamDecryptSegment", 122, 30, 0, "derivating segment key");
    goto LABEL_25;
  }

  v16 = *(a1 + 312);
  if (v16 && a2[71] == *(a1 + 228) && (v16(a3, v7) & 0x80000000) == 0)
  {
    v17 = *(a1 + 168);
    v18 = a2[1];
    if (v17 && (v19 = a2[2], v18 > v19))
    {
      if (v17 == 774)
      {
        v20 = PCompressLZMADecode(a4, *(a1 + 160), a3, v19);
        if (v20 >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v24 = aeaEffectiveCompressionAlgorithm(v17);
        v21 = compression_decode_buffer(a4, *(a1 + 160), a3, a2[2], *(a1 + 88), v24);
      }
    }

    else
    {
      memcpy(a4, a3, v18);
      v21 = a2[1];
    }

    if (v21 == a2[1])
    {
      if ((aeaChecksum(v26, *(a1 + 156), a4, v21) & 0x80000000) == 0)
      {
        v22 = 0;
        goto LABEL_26;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamDecryptSegment", 151, 30, 0, "computing segment checksum");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamDecryptSegment", 148, 30, 0, "Segment decompression");
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamDecryptSegment", 125, 30, 0, "decrypting segment");
  }

LABEL_25:
  v22 = 0xFFFFFFFFLL;
LABEL_26:
  memset_s(v28, 0x104uLL, 0, 0x104uLL);
  memset_s(v26, 0x104uLL, 0, 0x104uLL);
  return v22;
}

uint64_t aeaInputStreamLoadSegment(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v53 = *MEMORY[0x29EDCA608];
  if (*(result + 64) < *(result + 68))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamLoadSegment", 168, 30, 0, "Truncated segment", v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    return 0xFFFFFFFFLL;
  }

  v3 = result;
  if (*(result + 48) >= *(result + 52))
  {
    return 0;
  }

  v6 = *(result + 60);
  if (*(result + 56) >= v6)
  {
    LODWORD(v48) = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    if (*(result + 40) >= *(result + 44))
    {
LABEL_37:
      if (!v6)
      {
LABEL_39:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamLoadSegment", 177, 30, 0, "Invalid state", v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
        return 0xFFFFFFFFLL;
      }

      goto LABEL_38;
    }

    v7 = *result;
    v8 = *(result + 520);
    if (*(*result + 16))
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = 0;
      v10 = *(result + 1048);
      while (1)
      {
        v11 = (*(v7 + 16))(*v7, v10, v8);
        if (v11 < 0)
        {
          break;
        }

        if (v11)
        {
          v10 += v11;
          v9 += v11;
          v8 -= v11;
          if (v8)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      v9 = v11;
LABEL_17:
      v8 = *(v3 + 520);
    }

    else
    {
      v9 = -1;
    }

    if (v9 != v8)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamUnlockCluster", 86, 30, 0, "loading cluster header", v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
      goto LABEL_56;
    }

LABEL_19:
    atomic_fetch_add((v3 + 32), v8);
    v12 = *(v3 + 40);
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    memset(&__s[8], 0, 252);
    memset(v51, 0, 260);
    *&__s[8] = 19267;
    memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
    *&__s[10] = v12;
    *__s = 0x5F4145410000000ALL;
    memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
    v13 = *(v3 + 288);
    if (v13 && *(v3 + 788))
    {
      v14 = v13(v49, *(v3 + 216));
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v15 = 0;
      if ((v14 & 0x80000000) == 0)
      {
LABEL_26:
        memset(v51 + 12, 0, 248);
        *(v51 + 4) = 0x4B4548435F414541;
        LODWORD(v51[0]) = 8;
        memset_s(v51 + 12, 0xF8uLL, 0, 0xF8uLL);
        memset(__s, 0, sizeof(__s));
        v16 = *(v3 + 288);
        if (v16 && LODWORD(v49[0]))
        {
          v17 = v16(&v32, *(v3 + 220), v49, v51, __s);
          memset_s(v51, 0x104uLL, 0, 0x104uLL);
          if ((v17 & 0x80000000) == 0)
          {
            memset_s(v49, 0x104uLL, 0, 0x104uLL);
            if (!v15)
            {
              v18 = *(v3 + 312);
              if (v18)
              {
                if (*(v3 + 528) == *(v3 + 228))
                {
                  result = v18(*(v3 + 1048), *(v3 + 504), v3 + 528, &v32, *(v3 + 1048) + *(v3 + 504), *(v3 + 520) - *(v3 + 504));
                  if ((result & 0x80000000) == 0)
                  {
                    v19 = *(v3 + 228);
                    if (v19 >= 0x101)
                    {
LABEL_62:
                      __break(1u);
                      return result;
                    }

                    memcpy((v3 + 532), (*(v3 + 1048) + *(v3 + 504)), *(v3 + 228));
                    *(v3 + 528) = v19;
                    memset_s((v3 + 532 + v19), 256 - v19, 0, 256 - v19);
                    ++*(v3 + 40);
                    v20 = *(v3 + 164);
                    if (v20 >= *(v3 + 52) - *(v3 + 48))
                    {
                      v20 = *(v3 + 52) - *(v3 + 48);
                    }

                    *(v3 + 56) = 0;
                    *(v3 + 60) = v20;
                    *(v3 + 64) = 0;
                    result = memset_s(&v32, 0x104uLL, 0, 0x104uLL);
                    v6 = *(v3 + 60);
                    goto LABEL_37;
                  }
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamUnlockCluster", 95, 30, 0, "decrypting cluster", v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
LABEL_56:
              memset_s(&v32, 0x104uLL, 0, 0x104uLL);
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamLoadSegment", 174, 30, 0, "unlocking next cluster", v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
              return 0xFFFFFFFFLL;
            }

LABEL_55:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamUnlockCluster", 90, 30, 0, "derivating cluster key", v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
            goto LABEL_56;
          }
        }

        else
        {
          memset_s(v51, 0x104uLL, 0, 0x104uLL);
        }

        memset_s(v49, 0x104uLL, 0, 0x104uLL);
        goto LABEL_55;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v15 = 1;
    goto LABEL_26;
  }

LABEL_38:
  if (v6 > *(v3 + 164))
  {
    goto LABEL_39;
  }

  v21 = *(v3 + 496) + *(v3 + 56) * (*(v3 + 192) + 8);
  *a2 = *(v3 + 48);
  a2[1] = *(*(v3 + 1048) + v21);
  a2[2] = *(*(v3 + 1048) + v21 + 4);
  v22 = *(v3 + 192);
  if (v22 >= 0x101)
  {
    goto LABEL_62;
  }

  memcpy(a2 + 7, (*(v3 + 1048) + v21 + 8), *(v3 + 192));
  a2[6] = v22;
  result = memset_s(a2 + v22 + 28, 256 - v22, 0, 256 - v22);
  v23 = *(v3 + 228);
  if (v23 >= 0x101)
  {
    goto LABEL_62;
  }

  memcpy(a2 + 72, (*(v3 + 1048) + *(v3 + 512) + (*(v3 + 56) * v23)), *(v3 + 228));
  a2[71] = v23;
  memset_s(a2 + v23 + 288, 256 - v23, 0, 256 - v23);
  v24 = a2[1];
  v25 = *(v3 + 160);
  if (v24 > v25 || (v26 = a2[2], v26 > v24) || v26 > v25)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamLoadSegment", 194, 30, 0, "Invalid segment sizes", v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    return 0xFFFFFFFFLL;
  }

  v27 = *v3;
  if (!*(*v3 + 16))
  {
    goto LABEL_60;
  }

  v28 = 0;
  if (v26)
  {
    v29 = a2[2];
    while (1)
    {
      v30 = (*(v27 + 16))(*v27, a3, v29);
      if (v30 < 0)
      {
        break;
      }

      if (v30)
      {
        a3 += v30;
        v28 += v30;
        v29 -= v30;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    v28 = v30;
  }

LABEL_58:
  if (v28 != v26)
  {
LABEL_60:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamLoadSegment", 198, 30, 0, "reading segment data", v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    return 0xFFFFFFFFLL;
  }

  result = 0;
  atomic_fetch_add((v3 + 32), v26);
  ++*(v3 + 48);
  ++*(v3 + 56);
  v31 = a2[1];
  *(v3 + 64) = 0;
  *(v3 + 68) = v31;
  return result;
}

uint64_t aeaInputStreamAuthenticatePadding(unint64_t *a1)
{
  v44 = *MEMORY[0x29EDCA608];
  if (*(a1 + 12) >= *(a1 + 13))
  {
    v2 = atomic_load(a1 + 4);
    v3 = a1[23];
    if (v2 > v3)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", 221, 30, 0, "Invalid container offset");
      goto LABEL_5;
    }

    v7 = atomic_load(a1 + 4);
    v8 = v3 - v7;
    if (v3 == v7)
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_7;
    }

    v4 = malloc(0x100000uLL);
    if (!v4)
    {
      v19 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", 227, 30, *v19, "malloc");
      goto LABEL_6;
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    __s = 0u;
    v28 = 0u;
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    if (a1[49] && (*(v25 + 7) = 1262571615, *&v25[0] = 0x5F41454100000007, memset_s((v25 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v9 = a1[36]) != 0) && *(a1 + 197) && (v9(&__s, *(a1 + 54)) & 0x80000000) == 0)
    {
      v10 = (a1[49])(&__s);
    }

    else
    {
      v10 = 0;
    }

    memset_s(&__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v25, 0x104uLL, 0, 0x104uLL);
    if (v10)
    {
      v24 = v10;
      v11 = 1;
      do
      {
        if (v8 >= 0x100000)
        {
          v12 = 0x100000;
        }

        else
        {
          v12 = v8;
        }

        v13 = *a1;
        if (!*(*a1 + 16))
        {
          goto LABEL_38;
        }

        v14 = 0;
        v15 = v4;
        v16 = v12;
        while (1)
        {
          v17 = (*(v13 + 16))(*v13, v15, v16);
          if (v17 < 0)
          {
            break;
          }

          if (v17)
          {
            v15 += v17;
            v14 += v17;
            v16 -= v17;
            if (v16)
            {
              continue;
            }
          }

          goto LABEL_29;
        }

        v14 = v17;
LABEL_29:
        if (v14 != v12)
        {
LABEL_38:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", 239, 30, 0, "reading padding");
          v5 = 0xFFFFFFFFLL;
          goto LABEL_39;
        }

        v18 = a1[50];
        if (!v18 || (v18(v24, v4, v12) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", 240, 30, 0, "authenticating padding");
          v11 = 0;
        }

        atomic_fetch_add(a1 + 4, v12);
        v8 -= v12;
      }

      while (v8);
      if (v11)
      {
        v5 = 0;
      }

      else
      {
        v5 = 0xFFFFFFFFLL;
      }

LABEL_39:
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      __s = 0u;
      v28 = 0u;
      v20 = a1[51];
      if (v20)
      {
        if (*(a1 + 132) == *(a1 + 57) && (v20(v24, &__s) & 0x80000000) == 0 && __s == *(a1 + 57))
        {
          if (__s < 8)
          {
            goto LABEL_51;
          }

          v21 = 0;
          v22 = 0;
          do
          {
            v22 |= *(&__s + v21 * 8 + 4) ^ *(&a1[v21 + 66] + 4);
            v23 = v21 * 8 + 16;
            ++v21;
          }

          while (v23 <= __s);
          if (!v22)
          {
LABEL_51:
            memset_s(&__s, 0x104uLL, 0, 0x104uLL);
            goto LABEL_50;
          }
        }
      }

      memset_s(&__s, 0x104uLL, 0, 0x104uLL);
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", 245, 30, 0, "authenticating padding");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", 230, 30, 0, "authenticating padding");
    }

    v5 = 0xFFFFFFFFLL;
LABEL_50:
    memset_s(v4, 0x100000uLL, 0, 0x100000uLL);
    goto LABEL_7;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", 220, 30, 0, "Invalid state");
LABEL_5:
  v4 = 0;
LABEL_6:
  v5 = 0xFFFFFFFFLL;
LABEL_7:
  free(v4);
  return v5;
}

void *aaCacheStreamOpen(AAByteStream_impl *a1, unint64_t a2, unsigned int a3, unsigned int a4, unint64_t a5)
{
  v10 = calloc(1uLL, 0x68uLL);
  v11 = calloc(1uLL, 0x70uLL);
  v12 = v11;
  if (!v10 || !v11)
  {
    v16 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamOpen", 472, 146, v16, "aaCalloc");
LABEL_18:
    free(v10);
    aaCacheStreamClose(v12);
    return 0;
  }

  *v11 = a1;
  v11[26] = a4;
  v11[27] = a5 >> 62;
  v13 = ((1 << a3) - 1);
  v11[23] = 1 << a3;
  v11[24] = v13;
  v11[21] = (v13 | a2) >> a3;
  v11[22] = a3;
  if (a2 - 1073741825 <= 0xFFFFFFFFBFFFFFFFLL)
  {
    v14 = "cache too big";
    v15 = 484;
LABEL_17:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamOpen", v15, 146, 0, v14);
    goto LABEL_18;
  }

  v17 = AAByteStreamSeek(a1, 0, 2);
  *(v12 + 24) = v17;
  *(v12 + 32) = v17;
  if (v17 < 0)
  {
    v14 = "AAByteStreamSeek";
    v15 = 488;
    goto LABEL_17;
  }

  v18 = *(v12 + 84);
  if (v18 >= 0xCCCCCCCD)
  {
    *__error() = 12;
    *(v12 + 72) = 0;
LABEL_16:
    v14 = "aaCalloc";
    v15 = 492;
    goto LABEL_17;
  }

  v19 = calloc(v18, 0x28uLL);
  *(v12 + 72) = v19;
  if (!v19)
  {
    goto LABEL_16;
  }

  if (*(v12 + 84))
  {
    v20 = 0;
    v21 = 0;
    v22 = *(v12 + 92);
    while (1)
    {
      v23 = calloc(1uLL, v22);
      v24 = *(v12 + 72) + v20;
      *(v24 + 16) = v23;
      if (!v23)
      {
        break;
      }

      bzero(v23, *(v12 + 92));
      *v24 = -1;
      v22 = *(v12 + 92);
      *(v24 + 28) = 0;
      *(v24 + 32) = 0;
      *(v24 + 24) = v22;
      ++v21;
      v20 += 40;
      if (v21 >= *(v12 + 84))
      {
        goto LABEL_15;
      }
    }

    v14 = "aaCalloc";
    v15 = 498;
    goto LABEL_17;
  }

LABEL_15:
  AACustomByteStreamSetData(v10, v12);
  AACustomByteStreamSetSeekProc(v10, aaCacheStreamSeek);
  AACustomByteStreamSetPReadProc(v10, aaCacheStreamPRead);
  AACustomByteStreamSetPWriteProc(v10, aaCacheStreamPWrite);
  AACustomByteStreamSetReadProc(v10, aaCacheStreamRead);
  AACustomByteStreamSetWriteProc(v10, aaCacheStreamWrite);
  AACustomByteStreamSetCancelProc(v10, aaCacheStreamCancel);
  AACustomByteStreamSetCloseProc(v10, aaCacheStreamClose);
  v10[8] = aaCacheStreamTruncate;
  return v10;
}

uint64_t aaCacheStreamSeek(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 100))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v5 = 16;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_11;
        }

        v5 = 24;
      }

      a2 += *(a1 + v5);
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      *(a1 + 16) = a2;
      return a2;
    }

LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamSeek", 392, 146, 0, "bad seek", v3, v4);
    return -1;
  }

  return -1;
}

uint64_t aaCacheStreamPRead(uint64_t a1, char *a2, int64_t a3, uint64_t a4)
{
  if (*(a1 + 100))
  {
    return -1;
  }

  v5 = a4;
  v7 = *(a1 + 24);
  v8 = v7 <= a4;
  v9 = v7 - a4;
  if (v8)
  {
    return 0;
  }

  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    v4 = 0;
    while (1)
    {
      v12 = *(a1 + 96);
      if (*(a1 + 92) - (v5 & v12) >= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = *(a1 + 92) - (v5 & v12);
      }

      v14 = cachePageGet(a1, v5 & ~v12);
      if (!v14)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheRead", 224, 146, 0, "cachePageGet");
        goto LABEL_25;
      }

      v15 = v14;
      v16 = v12 & v5;
      if ((v16 < *(v14 + 6) || (v16 + v13) > *(v14 + 7)) && (cachePageReadFromDisk(a1, v14) & 0x80000000) != 0)
      {
        break;
      }

      memcpy(a2, (*(v15 + 2) + v16), v13);
      ++*(a1 + 40);
      v17 = *(a1 + 8) + 1;
      *(a1 + 8) = v17;
      *(v15 + 1) = v17;
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v4 += v13;
      a2 += v13;
      v5 += v13;
      v10 -= v13;
      if (!v10)
      {
        goto LABEL_21;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheRead", 229, 146, 0, "cachePageReadFromDisk");
LABEL_25:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamPRead", 313, 146, 0, "cacheRead");
    return -1;
  }

  v4 = 0;
LABEL_21:
  *(a1 + 16) = v5;
  return v4;
}

uint64_t aaCacheStreamPWrite(uint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  if (*(a1 + 100))
  {
    return -1;
  }

  v5 = a3;
  if (a3)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(a1 + 96);
      if (*(a1 + 92) - (a4 & v9) >= v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = *(a1 + 92) - (a4 & v9);
      }

      v11 = cachePageGet(a1, a4 & ~v9);
      if (!v11)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheWrite", 254, 146, 0, "cachePageGet");
        goto LABEL_27;
      }

      v12 = v11;
      v13 = v9 & a4;
      v14 = v13 + v10;
      v15 = *(v11 + 6);
      v16 = *(v11 + 7);
      if (v15 < v16)
      {
        v17 = v14 < v15 || v13 > v16;
        if (v17 && (cachePageReadFromDisk(a1, v11) & 0x80000000) != 0)
        {
          break;
        }
      }

      memcpy((*(v12 + 2) + v13), a2, v10);
      ++*(a1 + 48);
      if (v13 < *(v12 + 6))
      {
        *(v12 + 6) = v13;
      }

      if (v14 > *(v12 + 7))
      {
        *(v12 + 7) = v14;
      }

      v18 = *(a1 + 8) + 1;
      *(a1 + 8) = v18;
      *(v12 + 1) = v18;
      *(v12 + 8) = 1;
      v19 = a4 + v10;
      if (*(a1 + 24) < v19)
      {
        *(a1 + 24) = v19;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      v8 += v10;
      a2 += v10;
      a4 += v10;
      v5 -= v10;
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheWrite", 262, 146, 0, "cachePageReadFromDisk");
LABEL_27:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamPWrite", 346, 146, 0, "cacheWrite");
    return -1;
  }

  v8 = 0;
LABEL_25:
  *(a1 + 16) = a4;
  return v8;
}

uint64_t aaCacheStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 72))
    {
      if ((cacheFlush(result) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamClose", 440, 146, 0, "cacheFlush");
        v2 = 0;
      }

      else
      {
        v2 = 1;
      }

      if (*(v1 + 84))
      {
        v3 = 0;
        v4 = 16;
        do
        {
          free(*(*(v1 + 72) + v4));
          ++v3;
          v4 += 40;
        }

        while (v3 < *(v1 + 84));
      }

      free(*(v1 + 72));
    }

    else
    {
      v2 = 1;
    }

    if (*(v1 + 104) && AAByteStreamClose(*v1) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamClose", 446, 146, 0, "AAByteStreamClose");
      v2 = 0;
    }

    if (*(v1 + 108) >= 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "CacheStream: read ops %zu/%zu, write ops %zu/%zu\n", *(v1 + 56), *(v1 + 40), *(v1 + 64), *(v1 + 48));
    }

    free(v1);
    if (v2)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t aaCacheStreamTruncate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 100))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v3;
  v10 = v2;
  if ((cacheFlush(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamTruncate", 411, 146, 0, "cacheFlush", v9, v10, v4, v5);
  }

  else
  {
    if ((AAByteStreamTruncate(*a1) & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 24) = a2;
      *(a1 + 32) = a2;
      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamTruncate", 412, 146, 0, "AAByteStreamTruncate", v9, v10, v4, v5);
  }

  return 0xFFFFFFFFLL;
}

__int128 *cachePageGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 84) - 1;
  v4 = v3 & ((0x16069317E428CA9 * a2) >> 32);
  v5 = v2 + 40 * v4;
  if (*v5 != a2)
  {
    v8 = v4 & 0xFFFFFC00;
    v9 = v4 | 0x3FF;
    if (v9 >= v3)
    {
      v9 = *(a1 + 84) - 1;
    }

    if (v8 <= v9)
    {
      v10 = v8;
      while (1)
      {
        v11 = (v2 + 40 * v8);
        if (*v11 == a2)
        {
          break;
        }

        if (v11[1] < *(v2 + 40 * v10 + 8))
        {
          v10 = v8;
        }

        if (++v8 > v9)
        {
          goto LABEL_11;
        }
      }
    }

    v10 = v8;
LABEL_11:
    v12 = *(v5 + 32);
    v14 = *v5;
    v13 = *(v5 + 16);
    v15 = v2 + 40 * v10;
    v16 = *(v15 + 32);
    v17 = *(v15 + 16);
    *v5 = *v15;
    *(v5 + 16) = v17;
    *(v5 + 32) = v16;
    v18 = *(a1 + 72) + 40 * v10;
    *v18 = v14;
    *(v18 + 16) = v13;
    *(v18 + 32) = v12;
    if (*v5 != a2)
    {
      if ((cachePageEvict(a1, v5) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageGet", 162, 146, 0, "cachePageEvict");
        return 0;
      }

      else
      {
        bzero(*(v5 + 16), *(a1 + 92));
        v19 = *(a1 + 92);
        *(v5 + 28) = 0;
        *(v5 + 32) = 0;
        *(v5 + 24) = v19;
        *v5 = a2;
      }
    }
  }

  return v5;
}

uint64_t cachePageReadFromDisk(uint64_t *a1, uint64_t *a2)
{
  v5 = *(a2 + 6);
  v4 = *(a2 + 7);
  if (v4 >= v5)
  {
    v6 = v4 - v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 8);
  if (v4 <= v5 || v7 == 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = malloc(v6);
    v9 = v10;
    if (!v10)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageReadFromDisk", 184, 146, 0, "aaMalloc");
LABEL_33:
      v19 = 0xFFFFFFFFLL;
      goto LABEL_34;
    }

    memcpy(v10, (a2[2] + v5), v6);
  }

  v11 = *a2;
  if (a1[4] - *a2 >= *(a1 + 23))
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = a1[4] - *a2;
  }

  if (v12 < 1)
  {
    goto LABEL_26;
  }

  v13 = *a1;
  if (!*(*a1 + 32))
  {
    goto LABEL_32;
  }

  v22 = v4;
  v23 = v6;
  v14 = 0;
  v15 = a2[2];
  v16 = v12;
  while (1)
  {
    v17 = (*(v13 + 32))(*v13, v15, v16, v11);
    if (v17 < 0)
    {
      break;
    }

    if (v17)
    {
      v15 += v17;
      v14 += v17;
      v11 += v17;
      v16 -= v17;
      if (v16)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  v14 = v17;
LABEL_24:
  v6 = v23;
  v4 = v22;
  if (v12 != v14)
  {
LABEL_32:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageReadFromDisk", 193, 146, 0, "AAByteStreamPRead");
    goto LABEL_33;
  }

  ++a1[7];
  v7 = *(a2 + 8);
LABEL_26:
  if (v4 > v5 && v7 != 0)
  {
    memcpy((a2[2] + *(a2 + 6)), v9, v6);
  }

  v19 = 0;
  v20 = *(a1 + 23);
  *(a2 + 6) = 0;
  *(a2 + 7) = v20;
LABEL_34:
  free(v9);
  return v19;
}

uint64_t cachePageEvict(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 25))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a2 + 32))
  {
    return 0;
  }

  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  if (v14 <= v13)
  {
    return 0;
  }

  v25 = v9;
  v26 = v8;
  v27 = v7;
  v28 = v6;
  v29 = v5;
  v30 = v4;
  v31 = v3;
  v32 = v2;
  v16 = *a2 + v13;
  v17 = v14 - v13;
  if (v17 >= a1[3] - v16)
  {
    v18 = a1[3] - v16;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageEvict", 87, 146, 0, "bad page", v9, v8, v27, v28, v5, v4, v3, v32, v10, v11);
    return 0xFFFFFFFFLL;
  }

  v19 = *a1;
  if (!*(*a1 + 40))
  {
    goto LABEL_20;
  }

  v20 = 0;
  v21 = *(a2 + 16) + v13;
  v22 = *a2 + v13;
  v23 = v18;
  while (1)
  {
    v24 = (*(v19 + 40))(*v19, v21, v23, v22);
    if (v24 < 1)
    {
      break;
    }

    v21 += v24;
    v20 += v24;
    v22 += v24;
    v23 -= v24;
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  v20 = v24;
LABEL_17:
  if (v18 != v20)
  {
LABEL_20:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageEvict", 90, 146, 0, "aaByteStreamPWriteExpected", v25, v26, v27, v28, v29, v30, v31, v32, v10, v11);
    return 0xFFFFFFFFLL;
  }

  ++a1[8];
  result = 0;
  if (a1[4] < v18 + v16)
  {
    a1[4] = v18 + v16;
  }

  return result;
}

uint64_t cacheFlush(uint64_t a1)
{
  if (*(a1 + 100))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 84))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  while ((cachePageEvict(a1, *(a1 + 72) + v3) & 0x80000000) == 0)
  {
    v5 = *(a1 + 72) + v3;
    bzero(*(v5 + 16), *(a1 + 92));
    *v5 = -1;
    v6 = *(a1 + 92);
    *(v5 + 28) = 0;
    *(v5 + 32) = 0;
    *(v5 + 24) = v6;
    ++v4;
    v3 += 40;
    if (v4 >= *(a1 + 84))
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheFlush", 115, 146, 0, "cachePageEvict");
  return 0xFFFFFFFFLL;
}

uint64_t aeaOutputStreamRunThreads(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  if (v4)
  {
    v6 = aeaEffectiveCompressionAlgorithm(v4);
    v7 = compression_encode_scratch_buffer_size(v6);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 64) = 0;
  *(a1 + 68) = v2;
  v8 = calloc(v2, 4uLL);
  *(a1 + 72) = v8;
  if (!v8)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    goto LABEL_10;
  }

  if (pthread_mutex_init((a1 + 80), 0))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
LABEL_10:
    v9 = "SharedArrayInit";
    v10 = 323;
LABEL_11:
    v11 = 0;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamRunThreads", v10, 41, v11, v9);
    return 0xFFFFFFFFLL;
  }

  if (pthread_cond_init((a1 + 144), 0))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
    goto LABEL_10;
  }

  v13 = (v2 + 1);
  *(a1 + 192) = 0;
  *(a1 + 196) = v13;
  v14 = calloc(v13, 4uLL);
  *(a1 + 200) = v14;
  if (!v14)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    goto LABEL_19;
  }

  if (pthread_mutex_init((a1 + 208), 0))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
LABEL_19:
    v9 = "SharedArrayInit";
    v10 = 324;
    goto LABEL_11;
  }

  if (pthread_cond_init((a1 + 272), 0))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
    goto LABEL_19;
  }

  *(a1 + 56) = -1;
  if (v2 >= 0x89AE409)
  {
    *__error() = 12;
    *(a1 + 48) = 0;
LABEL_50:
    v11 = *__error();
    v9 = "malloc";
    v10 = 329;
    goto LABEL_12;
  }

  v15 = calloc(v2, 0x3B8uLL);
  *(a1 + 48) = v15;
  if (!v15)
  {
    goto LABEL_50;
  }

  if (v2)
  {
    v16 = 0;
    v17 = 0;
    v18 = 952 * v2;
    while (1)
    {
      v19 = *(a1 + 48);
      v20 = v19 + v16;
      *(v19 + v16 + 592) = 0;
      if (pthread_mutex_init((v19 + v16 + 600), 0) || pthread_cond_init((v20 + 664), 0) || (*(v19 + v16 + 712) = 0, pthread_mutex_init((v19 + v16 + 720), 0)) || pthread_cond_init((v19 + v16 + 784), 0) || (*(v19 + v16 + 832) = 0, pthread_mutex_init((v19 + v16 + 840), 0)) || pthread_cond_init((v19 + v16 + 904), 0))
      {
        v9 = "SemInit";
        v10 = 333;
        goto LABEL_11;
      }

      v21 = v19 + v16;
      *(v21 + 8) = v17;
      *(v21 + 16) = a1;
      v22 = malloc(v5);
      *(v21 + 32) = v22;
      *(v21 + 40) = malloc(v5);
      if (v7)
      {
        if (v7 < 0x2000000001)
        {
          v24 = malloc(v7);
        }

        else
        {
          v23 = __error();
          v24 = 0;
          *v23 = 12;
          v22 = *(v21 + 32);
        }
      }

      else
      {
        v24 = 0;
      }

      *(v21 + 24) = v24;
      if (!v22 || (v7 ? (v25 = v24 == 0) : (v25 = 0), !v25 ? (v26 = 0) : (v26 = 1), !*(v21 + 40) || v26))
      {
        v11 = *__error();
        v9 = "malloc";
        v10 = 339;
        goto LABEL_12;
      }

      if ((createThread(v20, aeaOutputStreamWorkerThreadProc, v20, 0) & 0x80000000) != 0)
      {
        break;
      }

      ++v17;
      v16 += 952;
      if (v18 == v16)
      {
        goto LABEL_47;
      }
    }

    v9 = "Thread creation";
    v10 = 340;
    goto LABEL_11;
  }

LABEL_47:
  v27 = calloc(1uLL, 0x10uLL);
  *(a1 + 320) = v27;
  if (!v27)
  {
    v11 = *__error();
    v9 = "malloc";
    v10 = 345;
    goto LABEL_12;
  }

  v27[1] = a1;
  if ((createThread(v27, aeaOutputStreamWriterThreadProc, v27, 0) & 0x80000000) != 0)
  {
    v9 = "Thread creation";
    v10 = 347;
    goto LABEL_11;
  }

  return 0;
}

uint64_t aeaOutputStreamWorkerThreadProc(uint64_t a1)
{
  v42 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  v3 = *(v2 + 24);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(a1 + 8);
  v37 = 0;
  v34 = (v3 + 668);
  v35 = 1;
  memset(v36, 0, sizeof(v36));
  while (1)
  {
    if (pthread_mutex_lock((v2 + 80)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n", v30);
LABEL_71:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", 76, 41, 0, "SharedArrayPush", v31);
      goto LABEL_62;
    }

    v7 = *(v2 + 64);
    v8 = *(v2 + 68);
    v9 = v7;
    if (v7 < v8)
    {
      *(*(v2 + 72) + 4 * v7) = v6;
      v9 = *(v2 + 64);
    }

    *(v2 + 64) = v9 + 1;
    if (!v9 && pthread_cond_broadcast((v2 + 144)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n", v30);
      goto LABEL_71;
    }

    if (pthread_mutex_unlock((v2 + 80)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n", v30);
      goto LABEL_71;
    }

    if (v7 >= v8)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n", v30);
      goto LABEL_71;
    }

    if (pthread_mutex_lock((a1 + 600)))
    {
      goto LABEL_61;
    }

    while (1)
    {
      v10 = *(a1 + 592);
      if (v10 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 664), (a1 + 600)))
      {
        goto LABEL_61;
      }
    }

    *(a1 + 592) = v10 - 1;
    if (pthread_mutex_unlock((a1 + 600)))
    {
LABEL_61:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", 77, 41, 0, "SemAcquire", v30);
      goto LABEL_62;
    }

    if (*(a1 + 48) == -1)
    {
      if (!v35)
      {
LABEL_62:
        atomic_fetch_add((v2 + 40), 1u);
      }

      return a1;
    }

    v33 = v6;
    if ((aeaChecksum(a1 + 72, *(v3 + 12), *(a1 + 32), *(a1 + 52)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", 83, 41, 0, "Segment checksum failed", v30);
      goto LABEL_50;
    }

    *(a1 + 56) = 0;
    if (v5 != 774)
    {
      if (!v5)
      {
        v11 = *(a1 + 52);
LABEL_26:
        memcpy(*(a1 + 40), *(a1 + 32), v11);
        v13 = *(a1 + 52);
        *(a1 + 56) = v13;
        goto LABEL_27;
      }

      v14 = aeaEffectiveCompressionAlgorithm(v5);
      LODWORD(v12) = compression_encode_buffer(*(a1 + 40), v4, *(a1 + 32), *(a1 + 52), *(a1 + 24), v14);
LABEL_23:
      v13 = v12;
      *(a1 + 56) = v12;
      goto LABEL_24;
    }

    v12 = PCompressLZMA6Encode(*(a1 + 40), v4, *(a1 + 32), *(a1 + 52));
    if (v12 >= 1)
    {
      goto LABEL_23;
    }

    v13 = *(a1 + 56);
LABEL_24:
    v11 = *(a1 + 52);
    if (!v13 || v13 >= v11)
    {
      goto LABEL_26;
    }

LABEL_27:
    v15 = *(a1 + 32);
    if (v15)
    {
      memset_s(v15, v4, 0, v4);
      v13 = *(a1 + 56);
    }

    if (!v13)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", 107, 41, 0, "Segment compression failed", v30);
      goto LABEL_50;
    }

    v32 = v5;
    v16 = *(a1 + 48);
    v17 = *(v3 + 20);
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    memset(__s + 8, 0, 252);
    memset(v40, 0, 260);
    WORD4(__s[0]) = 19267;
    *&__s[0] = 0x5F41454100000006;
    result = memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
    v19 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0xFD)
    {
      break;
    }

    v30 = v4;
    *(__s + LODWORD(__s[0]) + 4) = v16 / v17;
    LODWORD(__s[0]) = v19 + 4;
    memset_s(__s + v19 + 8, 252 - v19, 0, 252 - v19);
    v20 = *(v3 + 144);
    if (v20 && *v34)
    {
      v21 = v20(v38, *(v3 + 72), v34, __s, v40);
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v22 = 0;
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v22 = 1;
LABEL_37:
    memset(v40 + 8, 0, 224);
    memset(&v40[14] + 8, 0, 28);
    WORD4(v40[0]) = 19283;
    *&v40[0] = 0x5F41454100000006;
    result = memset_s(v40 + 10, 0xFAuLL, 0, 0xFAuLL);
    v23 = LODWORD(v40[0]);
    if (LODWORD(v40[0]) >= 0xFD)
    {
      break;
    }

    *(v40 + LODWORD(v40[0]) + 4) = v16 % v17;
    LODWORD(v40[0]) = v23 + 4;
    memset_s(v40 + v23 + 8, 252 - v23, 0, 252 - v23);
    memset(__s, 0, 260);
    v24 = *(v3 + 144);
    if (!v24 || !LODWORD(v38[0]))
    {
      memset_s(v40, 0x104uLL, 0, 0x104uLL);
      v5 = v32;
LABEL_48:
      memset_s(v38, 0x104uLL, 0, 0x104uLL);
LABEL_49:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", 119, 41, 0, "Segment key derivation failed", v30);
      v4 = v30;
      goto LABEL_50;
    }

    v25 = v24(v36, *(v3 + 76), v38, v40, __s);
    memset_s(v40, 0x104uLL, 0, 0x104uLL);
    v5 = v32;
    if (v25 < 0)
    {
      goto LABEL_48;
    }

    memset_s(v38, 0x104uLL, 0, 0x104uLL);
    if (v22)
    {
      goto LABEL_49;
    }

    v26 = *(v3 + 160);
    v4 = v30;
    if (v26)
    {
      v27 = v26(*(a1 + 40), v13, a1 + 332, v36, 0, 0);
      if (*(a1 + 332) == *(v3 + 84) && (v27 & 0x80000000) == 0)
      {
        goto LABEL_51;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", 120, 41, 0, "Segment encryption failed", v30);
LABEL_50:
    memset_s((a1 + 48), 0x220uLL, 0, 0x220uLL);
    v35 = 0;
    *(a1 + 48) = -1;
LABEL_51:
    memset_s(v36, 0x104uLL, 0, 0x104uLL);
    if (pthread_mutex_lock((a1 + 720)) || (v28 = *(a1 + 712), *(a1 + 712) = v28 + 1, !v28) && pthread_cond_broadcast((a1 + 784)) || pthread_mutex_unlock((a1 + 720)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", 133, 41, 0, "SemRelease", v30);
      goto LABEL_62;
    }

    v6 = v33;
    if (!pthread_mutex_lock((a1 + 840)))
    {
      while (1)
      {
        v29 = *(a1 + 832);
        if (v29 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 904), (a1 + 840)))
        {
          goto LABEL_60;
        }
      }

      *(a1 + 832) = v29 - 1;
      if (!pthread_mutex_unlock((a1 + 840)))
      {
        continue;
      }
    }

LABEL_60:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", 135, 41, 0, "SemAcquire", v30);
    goto LABEL_62;
  }

  __break(1u);
  return result;
}

uint64_t aeaOutputStreamWriterThreadProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*(v2 + 24) + 16);
  v4 = 1;
  while (1)
  {
    if (pthread_mutex_lock((v2 + 208)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
      goto LABEL_23;
    }

    while (1)
    {
      v5 = *(v2 + 192);
      if (v5)
      {
        break;
      }

      if (pthread_cond_wait((v2 + 272), (v2 + 208)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
        goto LABEL_23;
      }
    }

    v6 = v5 - 1;
    *(v2 + 192) = v6;
    v7 = *(*(v2 + 200) + 4 * v6);
    if (pthread_mutex_unlock((v2 + 208)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
LABEL_23:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWriterThreadProc", 151, 41, 0, "SharedArrayDequeue");
LABEL_25:
      atomic_fetch_add((v2 + 40), 1u);
      return a1;
    }

    if (v7 == -1)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWriterThreadProc", 155, 41, 0, "Invalid worker id");
      goto LABEL_25;
    }

    v8 = *(v2 + 48) + 952 * v7;
    if (pthread_mutex_lock((v8 + 720)))
    {
      goto LABEL_24;
    }

    while (1)
    {
      v9 = *(v8 + 712);
      if (v9 > 0)
      {
        break;
      }

      if (pthread_cond_wait((v8 + 784), (v8 + 720)))
      {
        goto LABEL_24;
      }
    }

    *(v8 + 712) = v9 - 1;
    if (pthread_mutex_unlock((v8 + 720)))
    {
LABEL_24:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWriterThreadProc", 159, 41, 0, "SemAcquire");
      goto LABEL_25;
    }

    if ((aeaContainerAppendSegment(*(v2 + 24), *v2, (v8 + 48), *(v8 + 40)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWriterThreadProc", 164, 41, 0, "Segment insertion");
      v4 = 0;
    }

    v10 = *(v8 + 40);
    if (v10)
    {
      memset_s(v10, v3, 0, v3);
    }

    memset_s((v8 + 48), 0x220uLL, 0, 0x220uLL);
    if (pthread_mutex_lock((v8 + 840)) || (v11 = *(v8 + 832), *(v8 + 832) = v11 + 1, !v11) && pthread_cond_broadcast((v8 + 904)) || pthread_mutex_unlock((v8 + 840)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWriterThreadProc", 175, 41, 0, "SemRelease");
      goto LABEL_25;
    }
  }

  if (!v4)
  {
    goto LABEL_25;
  }

  return a1;
}

AAByteStream AEAEncryptionOutputStreamOpen(AAByteStream encrypted_stream, AEAContext context, AAFlagSet flags, int n_threads)
{
  DefaultNThreads = n_threads;
  v52 = *MEMORY[0x29EDCA608];
  if (n_threads <= 0)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (!*(encrypted_stream + 5))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpen", 367, 41, 0, "Invalid encrypted stream");
    v10 = 0;
    v8 = 0;
    goto LABEL_22;
  }

  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x148uLL);
  v10 = v9;
  if (!v9 || (memset_s(v9, 0x148uLL, 0, 0x148uLL), !v8))
  {
    v18 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpen", 372, 41, v18, "malloc", v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *v37);
LABEL_22:
    free(v8);
    aeaOutputStreamCloseAndUpdateContext(v10, 0);
    return 0;
  }

  *v10 = encrypted_stream;
  *(v10 + 8) = flags;
  *(v10 + 16) = DefaultNThreads;
  New = aeaContainerCreateNew(context);
  *(v10 + 24) = New;
  if (!New)
  {
    v19 = "Invalid encryption parameters";
    v20 = 379;
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpen", v20, 41, 0, v19, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *v37);
    goto LABEL_22;
  }

  result = aeaOutputStreamRunThreads(v10);
  if ((result & 0x80000000) != 0)
  {
    v19 = "Running stream threads";
    v20 = 380;
    goto LABEL_21;
  }

  v8[3] = aeaOutputStreamWrite;
  v8[7] = aeaOutputStreamAbort;
  *v8 = v10;
  v8[1] = aeaOutputStreamClose;
  v13 = *(v10 + 24);
  v14 = *(v13 + 668);
  if (v14 < 0x101)
  {
    memcpy(context + 1376, (v13 + 672), *(v13 + 668));
    *(context + 343) = v14;
    memset_s(context + v14 + 1376, 256 - v14, 0, 256 - v14);
    v15 = *(v10 + 24);
    if (*v15 <= 5u && ((1 << *v15) & 0x2B) != 0)
    {
      return v8;
    }

    memset(v51, 0, sizeof(v51));
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    *&v37[12] = 0u;
    *v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *&v37[11] = 1262834527;
    *&v37[4] = 0x5F41454100000007;
    v21 = 0u;
    v22 = 0u;
    memset_s(&v37[15], 0xF9uLL, 0, 0xF9uLL);
    v16 = *(v15 + 144);
    if (v16 && *(v15 + 668))
    {
      v17 = v16(context + 1632, *(v15 + 72));
      memset_s(&v37[4], 0x104uLL, 0, 0x104uLL);
      if ((v17 & 0x80000000) == 0)
      {
        return v8;
      }
    }

    else
    {
      memset_s(&v37[4], 0x104uLL, 0, 0x104uLL);
    }

    v19 = "deriving signature encryption key";
    v20 = 398;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t aeaOutputStreamWrite(uint64_t a1, char *__src, unint64_t a3)
{
  if (*(a1 + 36))
  {
    return -1;
  }

  v3 = a3;
  if (a3)
  {
    v6 = 0;
    v7 = *(*(a1 + 24) + 16);
    while (1)
    {
      v8 = *(a1 + 56);
      if (v8 == -1)
      {
        if (pthread_mutex_lock((a1 + 80)))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_20:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWrite", 282, 41, 0, "SharedArrayPop failed");
          return -1;
        }

        while (1)
        {
          v10 = *(a1 + 64);
          if (v10)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 144), (a1 + 80)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
            goto LABEL_20;
          }
        }

        v11 = v10 - 1;
        *(a1 + 64) = v11;
        *(a1 + 56) = *(*(a1 + 72) + 4 * v11);
        if (pthread_mutex_unlock((a1 + 80)))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
          goto LABEL_20;
        }

        v12 = *(a1 + 56);
        if (v12 >= *(a1 + 16))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWrite", 283, 41, 0, "Invalid worker_id");
          return -1;
        }

        v9 = *(a1 + 48) + 952 * v12;
        memset_s((v9 + 48), 0x220uLL, 0, 0x220uLL);
        v13 = *(a1 + 32);
        *(a1 + 32) = v13 + 1;
        *(v9 + 48) = v13;
      }

      else
      {
        v9 = *(a1 + 48) + 952 * v8;
      }

      v14 = *(v9 + 52);
      if ((v7 - v14) >= v3)
      {
        v15 = v3;
      }

      else
      {
        v15 = (v7 - v14);
      }

      memcpy((*(v9 + 32) + v14), __src, v15);
      v16 = *(v9 + 52) + v15;
      *(v9 + 52) = v16;
      if (v16 == v7 && (aeaOutputStreamRunCurrentWorker(a1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWrite", 305, 41, 0, "Sending task to worker failed");
        return -1;
      }

      __src += v15;
      v6 += v15;
      v3 -= v15;
      if (!v3)
      {
        return v6;
      }
    }
  }

  return 0;
}

void aeaOutputStreamAbort(uint64_t a1)
{
  if (!*(a1 + 36))
  {
    *(a1 + 36) = 1;
    AAByteStreamCancel(*a1);
  }
}

AAByteStream AEAEncryptionOutputStreamOpenExisting(AAByteStream encrypted_stream, AEAContext context, AAFlagSet flags, int n_threads)
{
  DefaultNThreads = n_threads;
  v53 = *MEMORY[0x29EDCA608];
  if (n_threads <= 0)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (!*(encrypted_stream + 5) || !*(encrypted_stream + 4))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 430, 41, 0, "Invalid encrypted stream");
    v10 = 0;
    v8 = 0;
    goto LABEL_38;
  }

  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x148uLL);
  v10 = v9;
  if (!v9 || (memset_s(v9, 0x148uLL, 0, 0x148uLL), !v8))
  {
    v24 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 435, 41, v24, "malloc");
    goto LABEL_38;
  }

  *v10 = encrypted_stream;
  *(v10 + 8) = flags;
  *(v10 + 16) = DefaultNThreads;
  result = aeaContainerCreateExisting(context, encrypted_stream, 0, 1);
  *(v10 + 24) = result;
  if (!result)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 443, 41, 0, "load container");
    goto LABEL_38;
  }

  if ((flags & 0x4000000000000) == 0)
  {
    if ((aeaContainerReencrypt(result, encrypted_stream, context + 18, context + 538, context + 83, context + 213) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 454, 41, 0, "re-encrypting container");
      goto LABEL_38;
    }

    result = *(v10 + 24);
  }

  v12 = *(result + 167);
  if (v12 < 0x101)
  {
    memcpy(context + 1376, result + 672, v12);
    *(context + 343) = v12;
    memset_s(context + v12 + 1376, 256 - v12, 0, 256 - v12);
    v13 = *(v10 + 24);
    if (*v13 <= 5u && ((1 << *v13) & 0x2B) != 0)
    {
      goto LABEL_14;
    }

    memset(v52, 0, sizeof(v52));
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    *&__s[1] = 0u;
    *(__s + 7) = 1262834527;
    __s[0] = 0x5F41454100000007;
    memset_s(&__s[1] + 3, 0xF9uLL, 0, 0xF9uLL);
    v27 = *(v13 + 144);
    if (v27 && *(v13 + 668))
    {
      v28 = v27(context + 1632, *(v13 + 72));
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      if ((v28 & 0x80000000) == 0)
      {
        v13 = *(v10 + 24);
LABEL_14:
        if ((aeaContainerRemovePadding(v13, encrypted_stream) & 0x80000000) == 0)
        {
          v14 = *(v10 + 24);
          v15 = *(v14 + 16);
          v16 = *(v14 + 400);
          if (!v16 || *(*(v14 + 392) + 544 * (v16 - 1) + 4) >= v15)
          {
            v23 = 0;
            v22 = 0;
            v18 = 0;
            v19 = 0;
            v25 = 0;
LABEL_25:
            *(v10 + 32) = v16;
            if ((aeaOutputStreamRunThreads(v10) & 0x80000000) != 0)
            {
              v29 = "Running stream threads";
              v30 = 499;
            }

            else
            {
              *(v8 + 3) = aeaOutputStreamWrite;
              *(v8 + 7) = aeaOutputStreamAbort;
              *v8 = v10;
              *(v8 + 1) = aeaOutputStreamClose;
              if (!v25 || aeaOutputStreamWrite(v10, v19, v25) == v25)
              {
                v26 = 1;
                goto LABEL_57;
              }

              v29 = "writing back last segment data";
              v30 = 511;
            }

            v31 = 0;
LABEL_56:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", v30, 41, v31, v29);
            v26 = 0;
LABEL_57:
            if (!v18)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

          v17 = *(v14 + 24);
          v18 = malloc(*(v14 + 16));
          v19 = malloc(v15);
          if (v17)
          {
            v20 = aeaEffectiveCompressionAlgorithm(v17);
            v21 = compression_decode_scratch_buffer_size(v20);
            v22 = v21;
            if (v21)
            {
              if (v21 < 0x2000000001)
              {
                v23 = malloc(v21);
              }

              else
              {
                v23 = 0;
                *__error() = 12;
              }

              v32 = 1;
LABEL_47:
              if (v23)
              {
                v32 = 0;
              }

              if (!v18 || !v19 || v32)
              {
                v31 = *__error();
                v29 = "malloc";
                v30 = 483;
                goto LABEL_56;
              }

              v37 = v22;
              v33 = *(v10 + 24);
              v34 = *(v33 + 400) - 1;
              v35 = *(v33 + 392);
              Segment = aeaContainerLoadSegment(v33, encrypted_stream, v34, v19, v18, v23);
              if (Segment == *(v35 + 544 * v34 + 4))
              {
                v25 = Segment;
                v22 = v37;
                if ((aeaContainerRemoveLastSegment(*(v10 + 24), encrypted_stream) & 0x80000000) == 0)
                {
                  v16 = *(*(v10 + 24) + 400);
                  goto LABEL_25;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 493, 41, 0, "removing last segment");
                v26 = 0;
              }

              else
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 489, 41, 0, "load and decrypt last segment");
                v26 = 0;
                v22 = v37;
              }

LABEL_58:
              memset_s(v18, v15, 0, v15);
LABEL_59:
              free(v18);
              if (v19)
              {
                memset_s(v19, v15, 0, v15);
              }

              free(v19);
              if (v23)
              {
                memset_s(v23, v22, 0, v22);
              }

              free(v23);
              if (v26)
              {
                return v8;
              }

              goto LABEL_38;
            }

            v32 = 0;
          }

          else
          {
            v32 = 0;
            v22 = 0;
          }

          v23 = 0;
          goto LABEL_47;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 471, 41, 0, "removing padding");
LABEL_38:
        free(v8);
        aeaOutputStreamCloseAndUpdateContext(v10, 0);
        return 0;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 467, 41, 0, "deriving signature encryption key");
    goto LABEL_38;
  }

  __break(1u);
  return result;
}