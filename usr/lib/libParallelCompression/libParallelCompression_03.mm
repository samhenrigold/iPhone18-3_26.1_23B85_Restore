uint64_t BXPatch5WithFlagsBufferStreamPRead(void *a1, void *__dst, size_t __n, uint64_t a4)
{
  if (!__n)
  {
    return 0;
  }

  result = -1;
  if (!__CFADD__(a4, __n) && a4 + __n <= a1[1])
  {
    memcpy(__dst, (*a1 + a4), __n);
    return __n;
  }

  return result;
}

uint64_t BXPatch5FileWithFlags(const char *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t), uint64_t a5, uint64_t a6)
{
  st_size = 0;
  memset(&v18, 0, sizeof(v18));
  v12 = open(a1, 0);
  v19 = v12;
  if ((v12 & 0x80000000) != 0)
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5FileWithFlags", 235, 42, *v16, "open: %s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
    if (fstat(v12, &v18))
    {
      v14 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5FileWithFlags", 236, 42, *v14, "fstat: %s", a1);
      v15 = 0xFFFFFFFFLL;
LABEL_6:
      close(v13);
      return v15;
    }

    st_size = v18.st_size;
    v15 = BXPatch5StreamWithFlags(BXPatch5WithFlagsFileStreamPRead, &v19, v18.st_size, a2, a3, a4, a5, a6);
    v13 = v19;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  return v15;
}

ssize_t BXPatch5WithFlagsFileStreamPRead(uint64_t a1, void *a2, size_t a3, off_t a4)
{
  if (!a3)
  {
    return 0;
  }

  result = -1;
  if (!__CFADD__(a4, a3) && a4 + a3 <= *(a1 + 8))
  {
    return pread(*a1, a2, a3, a4);
  }

  return result;
}

uint64_t copyStream(uint64_t (*a1)(uint64_t, void *, uint64_t, unint64_t), uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t), uint64_t a5)
{
  v10 = malloc(0x40000uLL);
  if (!v10)
  {
    v16 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "copyStream", 188, 42, v16, "malloc");
LABEL_16:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v11 = 0;
  if (a3)
  {
    while (1)
    {
      if (v11 + 0x40000 <= a3)
      {
        v12 = 0x40000;
      }

      else
      {
        v12 = a3 - v11;
      }

      v13 = a1(a2, v10, v12, v11);
      if (v13 <= 0)
      {
        v17 = "inProc read";
        v18 = 196;
        goto LABEL_15;
      }

      v14 = a4(a5, v10, v13);
      if (v14 <= 0)
      {
        break;
      }

      v11 += v14;
      if (v11 >= a3)
      {
        goto LABEL_9;
      }
    }

    v17 = "outProc write";
    v18 = 198;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "copyStream", v18, 42, 0, v17);
    goto LABEL_16;
  }

LABEL_9:
  if (v11 == a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

LABEL_17:
  free(v10);
  return v15;
}

uint64_t BXPatch5InPlace(const char *a1, uint64_t a2, unint64_t a3, int a4)
{
  v98 = *MEMORY[0x29EDCA608];
  if (a3 <= 0x3B)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 441, 42, 0, "Invalid patch size");
    return 0xFFFFFFFFLL;
  }

  if (*a2 != 0x3035464649445842)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 442, 42, 0, "Invalid patch header");
    return 0xFFFFFFFFLL;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 445, 42, 0, "Patch can't be applied in-place");
    return 0xFFFFFFFFLL;
  }

  if (a4 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "Input variants in patch: %u\n", *(a2 + 8));
  }

  v95 = 0;
  v96 = 0;
  v97 = 0;
  if (getFileSHA1Digest(a1, &v95))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 450, 42, 0, "computing file digest");
    return 0xFFFFFFFFLL;
  }

  if (v95 != *(a2 + 40) || v96 != *(a2 + 48) || v97 != *(a2 + 56))
  {
    v10 = *(a2 + 8);
    if (!v10)
    {
LABEL_28:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 467, 42, 0, "Input doesn't match any of the expected patch inputs (in-place)");
      return 0xFFFFFFFFLL;
    }

    v11 = 0;
    v12 = (a2 + 60);
    v13 = *(a2 + 8);
    v14 = a2 + 68;
    while (1)
    {
      v15 = v95 == *v14 && v96 == *(v14 + 8);
      if (v15 && v97 == *(v14 + 16))
      {
        break;
      }

      ++v11;
      v14 += 28;
      if (v10 == v11)
      {
        goto LABEL_28;
      }
    }

    if (a4 >= 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "In-place patch matching entry %u\n", v11);
      v13 = *(a2 + 8);
      LODWORD(v10) = *(a2 + 8);
    }

    v93 = *(a2 + 24);
    v89 = v12 + 28 * v13;
    v18 = v89 + v93;
    v19 = 0;
    if (v10)
    {
      v20 = v11;
      do
      {
        if (!v20)
        {
          v19 = v18;
        }

        v21 = *v12;
        v12 = (v12 + 28);
        v18 += v21;
        --v20;
        --v13;
      }

      while (v13);
    }

    v22 = *(v14 - 8);
    v75 = *(a2 + 32);
    if (v18 + v75 - a2 != a3)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 489, 42, "Warning: extra bytes in patch (ignored)\n");
      LODWORD(v10) = *(a2 + 8);
    }

    enterThreadErrorContext();
    v81 = malloc(0x1000uLL);
    if (v81)
    {
      v23 = malloc(0x1000uLL);
      if (v23)
      {
        v77 = v23;
        v82 = (v10 + 2);
        v83 = 8 * v82;
        v80 = malloc(8 * v82);
        v24 = ILowMemoryDecoderStreamCreateWithBuffer(v89, v93, 0x1000uLL);
        if (v24)
        {
          v73 = v22;
          v85 = v24;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = v80;
          v30 = 8 * (v10 + 2);
          while (1)
          {
            v90 = v25;
            v94 = v27;
            if (v27 == v26)
            {
              v31 = v26 + (v26 >> 1);
              if (v26 >> 5 <= 0xC34)
              {
                v31 = 2 * v26;
              }

              if (!v26)
              {
                v31 = 2000;
              }

              v86 = v31;
              v32 = reallocf(v28, v30 * v31);
              v30 = 8 * (v10 + 2);
              v29 = v80;
              v28 = v32;
              if (!v32)
              {
                v61 = v80;
                v62 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 527, 42, v62, "malloc");
                goto LABEL_91;
              }
            }

            else
            {
              v86 = v26;
            }

            v33 = ILowMemoryDecoderStreamRead(v85, v29, v30);
            if (!v33)
            {
              break;
            }

            v34 = v29;
            v35 = v90;
            v36 = (v10 + 2);
            if (v33 != v30)
            {
              v61 = v29;
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 533, 42, 0, "reading from control stream S=%lld");
LABEL_91:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v42 = v77;
LABEL_93:
              v46 = v85;
              goto LABEL_94;
            }

            do
            {
              v38 = *v34++;
              v37 = v38;
              v39 = 0x8000000000000000 - v38;
              if (v38 < 0)
              {
                v37 = v39;
              }

              *&v28[v35] = v37;
              v35 += 8;
              --v36;
            }

            while (v36);
            v27 = v94 + 1;
            v25 = v90 + v30;
            v26 = v86;
          }

          if (a4 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "%zu controls in patch (%zu B allocated)\n", v94, v83 * v86);
          }

          v47 = PagedFileCreate(a1, *(a2 + 16), 0x2800000uLL, a4);
          if (!v47)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v42 = v77;
            v61 = v80;
            goto LABEL_93;
          }

          v48 = v47;
          if (v94)
          {
            v49 = 0;
            v50 = v28;
            v51 = v94;
            do
            {
              v78 = *v50;
              v87 = v49;
              v91 = v50[(v11 + 2)];
              PagedFileRetainIn(v48, v49, *v50);
              v49 = v87 + v78 + v91;
              v50 = (v50 + v83);
              --v51;
            }

            while (v51);
          }

          PagedFileReleaseAllIn(v48);
          v43 = v48;
          if (a4 > 1)
          {
            PagedFileDump(v48, "Input retained");
          }

          v46 = v85;
          v84 = ILowMemoryDecoderStreamCreateWithBuffer(v19, v73, 0x1000uLL);
          if (v84)
          {
            v88 = v43;
            if (v94)
            {
              v52 = 0;
              v92 = 0;
              v53 = 0;
              v54 = v11 + 2;
              v55 = v77;
              v74 = v11 + 2;
              while (1)
              {
                v56 = &v28[8 * v52 * v82];
                v57 = *v56;
                v58 = v56[1];
                v79 = v56[v54];
                if (a4 >= 3)
                {
                  fprintf(*MEMORY[0x29EDCA610], "DIFF STREAM: I=%zu OPOS=%llu IPOS=%llu NDIFF=%llu NARCHIVE=%llu IDELTA=%lld\n", v52, v53, v92, v57, v58, v79);
                  PagedFileDump(v88, "Before applying control");
                  v55 = v77;
                }

                v76 = v58;
                if (v57)
                {
                  break;
                }

LABEL_88:
                v92 += v79;
                v53 += v76;
                ++v52;
                v54 = v74;
                if (v52 == v94)
                {
                  goto LABEL_104;
                }
              }

              while (1)
              {
                if (v57 >= 0x1000)
                {
                  v59 = 4096;
                }

                else
                {
                  v59 = v57;
                }

                if (ILowMemoryDecoderStreamRead(v84, v55, v59) != v59)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 584, 42, 0, "reading from diff stream");
                  goto LABEL_129;
                }

                if (PagedFileReadAndReleaseIn(v88, v92, v59, v81))
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 587, 42, 0, "reading from input stream");
                  goto LABEL_129;
                }

                for (i = 0; i != v59; ++i)
                {
                  v77[i] += v81[i];
                }

                if (PagedFileRetainAndWriteOut(v88, v53, v59, v77))
                {
                  break;
                }

                v92 += v59;
                v53 += v59;
                v57 -= v59;
                v55 = v77;
                if (!v57)
                {
                  goto LABEL_88;
                }
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 593, 42, 0, "writing output");
LABEL_129:
              v44 = 0;
            }

            else
            {
              v92 = 0;
LABEL_104:
              v43 = v88;
              if (a4 >= 2)
              {
                PagedFileDump(v88, "Diff stream applied");
              }

              if (!PagedFileHasNoIn(v88))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 608, 42, 0, "some input bytes are still mapped after diff expansion");
                v44 = 0;
                v42 = v77;
                v61 = v80;
                v46 = v85;
LABEL_137:
                v45 = v84;
                goto LABEL_94;
              }

              v44 = ILowMemoryDecoderStreamCreateWithBuffer(v18, v75, 0x1000uLL);
              if (v44)
              {
                if (v94)
                {
                  v65 = 0;
                  v66 = 0;
                  while (1)
                  {
                    v67 = &v28[8 * v65 * v82];
                    v69 = *v67;
                    v68 = *(v67 + 1);
                    if (a4 >= 3)
                    {
                      fprintf(*MEMORY[0x29EDCA610], "ARCHIVE STREAM: OPOS=%llu IPOS=%llu NDIFF=%llu NARCHIVE=%llu\n", v66, v92, *v67, v68);
                    }

                    v66 += v69;
                    if (v68)
                    {
                      break;
                    }

LABEL_120:
                    if (++v65 == v94)
                    {
                      goto LABEL_121;
                    }
                  }

                  v42 = v77;
                  while (1)
                  {
                    if (v68 >= 0x1000)
                    {
                      v70 = 4096;
                    }

                    else
                    {
                      v70 = v68;
                    }

                    if (ILowMemoryDecoderStreamRead(v44, v42, v70) != v70)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 630, 42, 0, "reading from archive stream");
                      goto LABEL_136;
                    }

                    if (PagedFileRetainAndWriteOut(v88, v66, v70, v42))
                    {
                      break;
                    }

                    v66 += v70;
                    v68 -= v70;
                    v42 = v77;
                    if (!v68)
                    {
                      goto LABEL_120;
                    }
                  }

                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 633, 42, 0, "writing output");
                }

                else
                {
LABEL_121:
                  if (a4 >= 2)
                  {
                    PagedFileDump(v88, "Archive stream applied");
                  }

                  if (PagedFileHasAllOut(v88))
                  {
                    PagedFileDestroy(v88);
                    free(v28);
                    free(v80);
                    free(v81);
                    free(v77);
                    ILowMemoryDecoderStreamDestroy(v85);
                    ILowMemoryDecoderStreamDestroy(v84);
                    ILowMemoryDecoderStreamDestroy(v44);
                    if (getFileSHA1Digest(a1, &v95))
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 658, 42, 0, "computing file digest");
                      v63 = 0;
                    }

                    else
                    {
                      v63 = 1;
                    }

                    if (v95 == *(a2 + 40) && v96 == *(a2 + 48) && v97 == *(a2 + 56))
                    {
                      goto LABEL_96;
                    }

                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 659, 42, 0, "Invalid output digest");
LABEL_95:
                    v63 = 0;
LABEL_96:
                    LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
                    if (v63)
                    {
                      v64 = 0;
                    }

                    else
                    {
                      v64 = -1;
                    }

                    if (result >= 0)
                    {
                      return v64;
                    }

                    else
                    {
                      return result;
                    }
                  }

                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 643, 42, 0, "some output bytes are missing or referenced more than once after archive expansion");
                }
              }

              else
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 611, 42, 0, "Archive stream init");
              }
            }

            v42 = v77;
LABEL_136:
            v61 = v80;
            v46 = v85;
            v43 = v88;
            goto LABEL_137;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 563, 42, 0, "Diff stream init");
          v44 = 0;
          v45 = 0;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 517, 42, 0, "Control stream init");
          v28 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
        }

        v42 = v77;
        v61 = v80;
LABEL_94:
        PagedFileDestroy(v43);
        free(v28);
        free(v61);
        free(v81);
        free(v42);
        ILowMemoryDecoderStreamDestroy(v46);
        ILowMemoryDecoderStreamDestroy(v45);
        ILowMemoryDecoderStreamDestroy(v44);
        goto LABEL_95;
      }

      v41 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 513, 42, v41, "malloc");
    }

    else
    {
      v40 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 511, 42, v40, "malloc");
    }

    v28 = 0;
    v61 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    goto LABEL_94;
  }

  if (a4 >= 1)
  {
    fwrite("No-op patch matching, do nothing\n", 0x21uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  return 0;
}

uint64_t CC_CKSUM_Init(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return 1;
}

uint64_t CC_CKSUM_Update(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a1;
  if (a3)
  {
    v4 = a3;
    v5 = a3;
    do
    {
      v6 = *a2++;
      v3 = CKSUMTable[v6 ^ HIBYTE(v3)] ^ (v3 << 8);
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v3;
  *(a1 + 8) += v4;
  return 1;
}

uint64_t CC_CKSUM_Final(unsigned int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v2 = CKSUMTable[v3 ^ HIBYTE(v2)] ^ (v2 << 8);
      v4 = v3 > 0xFF;
      v3 >>= 8;
    }

    while (v4);
  }

  *a1 = ~v2;
  return 1;
}

unsigned int *ThreadPipelineCreate(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
{
  v12 = calloc(1uLL, 0x1A8uLL);
  v13 = v12;
  if (v12)
  {
    *v12 = a1;
    v14 = calloc(a1, 0x198uLL);
    *(v13 + 1) = v14;
    if (v14)
    {
      v15 = calloc(1uLL, 0x20uLL);
      *(v13 + 2) = v15;
      if (v15)
      {
        v16 = *v13;
        v13[10] = 0;
        v13[11] = v16;
        v17 = calloc(v16, 4uLL);
        *(v13 + 6) = v17;
        if (v17)
        {
          if (pthread_mutex_init((v13 + 14), 0))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
          }

          else
          {
            if (!pthread_cond_init((v13 + 30), 0))
            {
              v22 = *v13 + 1;
              v13[42] = 0;
              v13[43] = v22;
              v23 = calloc(v22, 4uLL);
              *(v13 + 22) = v23;
              if (v23)
              {
                if (pthread_mutex_init((v13 + 46), 0))
                {
                  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
                }

                else
                {
                  if (!pthread_cond_init((v13 + 62), 0))
                  {
                    v13[6] = -1;
                    v13[74] = 0;
                    if (pthread_mutex_init((v13 + 76), 0) || pthread_cond_init((v13 + 92), 0))
                    {
                      v19 = "SemInit";
                      v20 = 184;
                    }

                    else if (*v13)
                    {
                      v24 = 0;
                      v25 = 352;
                      while (1)
                      {
                        v26 = *(v13 + 1);
                        v27 = v26 + v25;
                        *(v26 + v25 - 336) = v13;
                        *(v26 + v25 - 344) = v24;
                        v30 = v24;
                        *(v26 + v25 - 328) = *(a2 + 8 * v24);
                        *(v26 + v25 - 320) = a3;
                        *(v26 + v25 - 312) = 0;
                        if (pthread_mutex_init((v26 + v25 - 304), 0) || pthread_cond_init((v27 - 240), 0))
                        {
                          v19 = "SemInit";
                          v20 = 194;
                          goto LABEL_14;
                        }

                        *(v26 + v25 - 192) = 0;
                        if (pthread_mutex_init((v26 + v25 - 184), 0) || pthread_cond_init((v26 + v25 - 120), 0))
                        {
                          v19 = "SemInit";
                          v20 = 195;
                          goto LABEL_14;
                        }

                        v28 = (v26 + v25);
                        *&v28[-2].__opaque[16] = 0;
                        if (pthread_mutex_init(&v28[-2].__opaque[24], 0) || pthread_cond_init(v28, 0))
                        {
                          v19 = "SemInit";
                          v20 = 196;
                          goto LABEL_14;
                        }

                        if ((createThread((v27 - 352), threadPipelineWorkerThreadProc, v27 - 352, a6) & 0x80000000) != 0)
                        {
                          break;
                        }

                        v24 = v30 + 1;
                        v25 += 408;
                        if (v30 + 1 >= *v13)
                        {
                          goto LABEL_37;
                        }
                      }

                      v19 = "Thread creation";
                      v20 = 197;
                    }

                    else
                    {
LABEL_37:
                      v29 = *(v13 + 2);
                      *(v29 + 8) = v13;
                      *(v29 + 16) = a4;
                      *(v29 + 24) = a5;
                      if ((createThread(v29, threadPipelineConsumerThreadProc, v29, 0) & 0x80000000) == 0)
                      {
                        return v13;
                      }

                      v19 = "Thread creation";
                      v20 = 206;
                    }

                    goto LABEL_14;
                  }

                  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
                }
              }

              else
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
              }

              v19 = "SharedArrayInit";
              v20 = 182;
LABEL_14:
              v18 = 0;
              goto LABEL_15;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
          }
        }

        else
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
        }

        v19 = "SharedArrayInit";
        v20 = 180;
        goto LABEL_14;
      }

      v18 = *__error();
      v19 = "malloc";
      v20 = 179;
    }

    else
    {
      v18 = *__error();
      v19 = "malloc";
      v20 = 177;
    }
  }

  else
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 172;
  }

LABEL_15:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineCreate", v20, 87, v18, v19);
  ThreadPipelineDestroy(v13);
  return 0;
}

uint64_t threadPipelineWorkerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (1)
  {
    v3 = *(a1 + 8);
    if (pthread_mutex_lock((v2 + 56)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
      goto LABEL_35;
    }

    v4 = *(v2 + 40);
    v5 = *(v2 + 44);
    v6 = v4;
    if (v4 < v5)
    {
      *(*(v2 + 48) + 4 * v4) = v3;
      v6 = *(v2 + 40);
    }

    *(v2 + 40) = v6 + 1;
    if (!v6)
    {
      if (pthread_cond_broadcast((v2 + 120)))
      {
        break;
      }
    }

    if (pthread_mutex_unlock((v2 + 56)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      goto LABEL_35;
    }

    if (v4 >= v5)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
      goto LABEL_35;
    }

    if (pthread_mutex_lock((a1 + 48)))
    {
      goto LABEL_27;
    }

    while (1)
    {
      v7 = *(a1 + 40);
      if (v7 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 112), (a1 + 48)))
      {
        goto LABEL_27;
      }
    }

    *(a1 + 40) = v7 - 1;
    if (pthread_mutex_unlock((a1 + 48)))
    {
LABEL_27:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 72, 87, 0, "SemAcquire");
      goto LABEL_28;
    }

    if ((*(a1 + 400) & 0x8000000000000000) != 0)
    {
      return a1;
    }

    if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 82, 87, 0, "worker proc reported an error");
      atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
    }

    if (pthread_mutex_lock((a1 + 168)) || (v8 = *(a1 + 160), *(a1 + 160) = v8 + 1, !v8) && pthread_cond_broadcast((a1 + 232)) || pthread_mutex_unlock((a1 + 168)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 85, 87, 0, "SemRelease");
      goto LABEL_28;
    }

    if (!pthread_mutex_lock((a1 + 288)))
    {
      while (1)
      {
        v9 = *(a1 + 280);
        if (v9 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 352), (a1 + 288)))
        {
          goto LABEL_26;
        }
      }

      *(a1 + 280) = v9 - 1;
      if (!pthread_mutex_unlock((a1 + 288)))
      {
        continue;
      }
    }

LABEL_26:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 88, 87, 0, "SemAcquire");
    goto LABEL_28;
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
LABEL_35:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineWorkerThreadProc", 69, 87, 0, "SharedArrayPush");
LABEL_28:
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t threadPipelineConsumerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (!pthread_mutex_lock((v2 + 184)))
  {
    while (1)
    {
      v3 = *(v2 + 168);
      if (v3)
      {
        break;
      }

      if (pthread_cond_wait((v2 + 248), (v2 + 184)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
        goto LABEL_3;
      }
    }

    v4 = v3 - 1;
    *(v2 + 168) = v4;
    v5 = *(*(v2 + 176) + 4 * v4);
    if (pthread_mutex_unlock((v2 + 184)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
      goto LABEL_3;
    }

    if (v5 == -2)
    {
      if (!pthread_mutex_lock((v2 + 304)))
      {
        v8 = *(v2 + 296);
        *(v2 + 296) = v8 + 1;
        if (v8 || !pthread_cond_broadcast((v2 + 368)))
        {
          pthread_mutex_unlock((v2 + 304));
        }
      }
    }

    else
    {
      if (v5 == -1)
      {
        return a1;
      }

      v6 = *(v2 + 8) + 408 * v5;
      if (pthread_mutex_lock((v6 + 168)))
      {
        goto LABEL_28;
      }

      while (1)
      {
        v7 = *(v6 + 160);
        if (v7 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v6 + 232), (v6 + 168)))
        {
          goto LABEL_28;
        }
      }

      *(v6 + 160) = v7 - 1;
      if (pthread_mutex_unlock((v6 + 168)))
      {
LABEL_28:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 134, 87, 0, "SemAcquire");
        goto LABEL_29;
      }

      if (((*(a1 + 24))(*(a1 + 16), *(v6 + 24)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 141, 87, 0, "consumer proc reported an error");
        atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
      }

      if (pthread_mutex_lock((v6 + 288)) || (v9 = *(v6 + 280), *(v6 + 280) = v9 + 1, !v9) && pthread_cond_broadcast((v6 + 352)) || pthread_mutex_unlock((v6 + 288)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 144, 87, 0, "SemRelease");
        goto LABEL_29;
      }
    }
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_3:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "threadPipelineConsumerThreadProc", 114, 87, 0, "SharedArrayDequeue");
LABEL_29:
  atomic_fetch_add_explicit((v2 + 416), 1u, memory_order_relaxed);
  return a1;
}

uint64_t ThreadPipelineDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *result;
      if (!v3)
      {
        v6 = 1;
        goto LABEL_41;
      }

      v4 = 0;
      do
      {
        if (*v2)
        {
          ++v4;
        }

        v2 += 51;
        --v3;
      }

      while (v3);
      if (v4)
      {
        v5 = 0;
        v6 = 1;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 14)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_15:
            v8 = -1;
          }

          else
          {
            while (1)
            {
              v7 = v1[10];
              if (v7)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 30), (v1 + 14)))
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
                goto LABEL_15;
              }
            }

            v11 = v7 - 1;
            v1[10] = v11;
            v8 = *(*(v1 + 6) + 4 * v11);
            if (!pthread_mutex_unlock((v1 + 14)))
            {
              goto LABEL_17;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 237, 87, 0, "SharedArrayPop");
          v6 = 0;
LABEL_17:
          v9 = *(v1 + 1) + 408 * v8;
          *(v9 + 400) = -1;
          if (pthread_mutex_lock((v9 + 48)) || (v10 = *(v9 + 40), *(v9 + 40) = v10 + 1, !v10) && pthread_cond_broadcast((v9 + 112)) || pthread_mutex_unlock((v9 + 48)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 245, 87, 0, "SemRelease");
            v6 = 0;
          }

          if ((joinThread(*v9) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 246, 87, 0, "joinThread");
            v6 = 0;
          }

          *v9 = 0;
          if (++v5 == v4)
          {
            if (!*v1)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }
        }
      }

      v6 = 1;
LABEL_33:
      v12 = 0;
      v13 = 352;
      do
      {
        v14 = *(v1 + 1);
        v15 = v14 + v13;
        if (!pthread_mutex_destroy((v14 + v13 - 304)))
        {
          pthread_cond_destroy((v15 - 240));
        }

        if (!pthread_mutex_destroy((v15 - 184)))
        {
          pthread_cond_destroy((v14 + v13 - 120));
        }

        v16 = (v14 + v13);
        if (!pthread_mutex_destroy(&v16[-2].__opaque[24]))
        {
          pthread_cond_destroy(v16);
        }

        ++v12;
        v13 += 408;
      }

      while (v12 < *v1);
LABEL_41:
      free(*(v1 + 1));
      *(v1 + 1) = 0;
    }

    else
    {
      v6 = 1;
    }

    v17 = *(v1 + 2);
    if (v17)
    {
      if (*v17)
      {
        if ((SharedArrayEnqueue(v1 + 42, -1) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 272, 87, 0, "SharedArrayEnqueue");
          v6 = 0;
        }

        if ((joinThread(*v17) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 273, 87, 0, "joinThread");
          v6 = 0;
        }

        *v17 = 0;
        v17 = *(v1 + 2);
      }

      free(v17);
      *(v1 + 2) = 0;
    }

    if (!pthread_mutex_destroy((v1 + 14)) && !pthread_cond_destroy((v1 + 30)))
    {
      free(*(v1 + 6));
    }

    if (!pthread_mutex_destroy((v1 + 46)) && !pthread_cond_destroy((v1 + 62)))
    {
      free(*(v1 + 22));
    }

    if (!pthread_mutex_destroy((v1 + 76)))
    {
      pthread_cond_destroy((v1 + 92));
    }

    v18 = atomic_load(v1 + 104);
    if (v18 >= 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineDestroy", 285, 87, 0, "Threads reported errors");
      v6 = 0;
    }

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

uint64_t ThreadPipelineGetWorker(uint64_t a1)
{
  if (*(a1 + 24) != -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", 294, 87, 0, "Missing call to RunWorker before GetWorker");
    return 0;
  }

  if (pthread_mutex_lock((a1 + 56)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineGetWorker", 298, 87, 0, "SharedArrayPop failed");
    return 0;
  }

  while (1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 120), (a1 + 56)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
      goto LABEL_10;
    }
  }

  v3 = v2 - 1;
  *(a1 + 40) = v3;
  v4 = *(*(a1 + 48) + 4 * v3);
  if (pthread_mutex_unlock((a1 + 56)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
    goto LABEL_10;
  }

  *(a1 + 24) = v4;
  return *(*(a1 + 8) + 408 * v4 + 24);
}

uint64_t ThreadPipelineRunWorker(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 311, 87, 0, "Missing call to GetWorker before RunWorker");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = -1;
  v2 = *(a1 + 8) + 408 * v1;
  v3 = *(a1 + 32);
  *(a1 + 32) = v3 + 1;
  *(v2 + 400) = v3;
  if ((SharedArrayEnqueue((a1 + 168), v1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 324, 87, 0, "SharedArrayEnqueue failed");
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((v2 + 48)) || (v4 = *(v2 + 40), *(v2 + 40) = v4 + 1, !v4) && pthread_cond_broadcast((v2 + 112)) || (result = pthread_mutex_unlock((v2 + 48)), result))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineRunWorker", 325, 87, 0, "SemRelease failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ThreadPipelineFlush(uint64_t a1)
{
  if ((SharedArrayEnqueue((a1 + 168), -2) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", 333, 87, 0, "SharedArrayEnqueue failed");
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 304)))
  {
    goto LABEL_3;
  }

  while (1)
  {
    v2 = *(a1 + 296);
    if (v2 > 0)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 368), (a1 + 304)))
    {
      goto LABEL_3;
    }
  }

  *(a1 + 296) = v2 - 1;
  result = pthread_mutex_unlock((a1 + 304));
  if (result)
  {
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPipeline.c", "ThreadPipelineFlush", 336, 87, 0, "SemAquire failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

_BYTE *pc_zero_coder_decode(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = &a3[a4];
  v5 = &a1[a2];
  if (a2 >= 8 && a4 >= 9)
  {
    v6 = a1;
    while (1)
    {
      v7 = *a3;
      if (*a3)
      {
        v8 = a3[1];
        a3 += 2;
        if ((v7 & 2) != 0)
        {
LABEL_6:
          v10 = *a3++;
          v9 = v10;
          if ((v7 & 4) != 0)
          {
            goto LABEL_7;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v8 = 0;
        ++a3;
        if ((v7 & 2) != 0)
        {
          goto LABEL_6;
        }
      }

      v9 = 0;
      if ((v7 & 4) != 0)
      {
LABEL_7:
        v12 = *a3++;
        v11 = v12;
        if ((v7 & 8) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }

LABEL_11:
      v11 = 0;
      if ((v7 & 8) != 0)
      {
LABEL_8:
        v14 = *a3++;
        v13 = v14;
        goto LABEL_13;
      }

LABEL_12:
      v13 = 0;
LABEL_13:
      *v6 = v8;
      v6[1] = v9;
      v6[2] = v11;
      v6[3] = v13;
      if ((v7 & 0x10) != 0)
      {
        v22 = *a3++;
        v15 = v22;
        if ((v7 & 0x20) != 0)
        {
LABEL_15:
          v17 = *a3++;
          v16 = v17;
          if ((v7 & 0x40) != 0)
          {
            goto LABEL_16;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v15 = 0;
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_15;
        }
      }

      v16 = 0;
      if ((v7 & 0x40) != 0)
      {
LABEL_16:
        v19 = *a3++;
        v18 = v19;
        if (v7 < 0)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

LABEL_20:
      v18 = 0;
      if (v7 < 0)
      {
LABEL_17:
        v21 = *a3++;
        v20 = v21;
        goto LABEL_22;
      }

LABEL_21:
      v20 = 0;
LABEL_22:
      v6[4] = v15;
      v6[5] = v16;
      v6[6] = v18;
      v6[7] = v20;
      v23 = v6 + 16;
      v6 += 8;
      if (v23 > v5 || a3 + 9 > v4)
      {
        goto LABEL_33;
      }
    }
  }

  v6 = a1;
LABEL_33:
  if (a3 < v4)
  {
    v24 = *a3++;
    v25 = v24 | 0x100;
    while (v6 != v5)
    {
      if (v25)
      {
        if (a3 == v4)
        {
          return (v6 - a1);
        }

        v27 = *a3++;
        v26 = v27;
      }

      else
      {
        v26 = 0;
      }

      *v6++ = v26;
      v28 = v25 > 3;
      v25 >>= 1;
      if (!v28)
      {
        goto LABEL_33;
      }
    }

    v6 = &a1[a2];
  }

  return (v6 - a1);
}

_BYTE *pc_zero_coder_encode(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 9)
  {
    return 0;
  }

  v5 = &a3[a4];
  v6 = a1;
  while (a3 + 8 <= v5)
  {
    v7 = *a3;
    v8 = a3[1];
    v9 = a3[2];
    v10 = a3[3];
    if (!*a3)
    {
      v11 = v6 + 1;
      if (!a3[1])
      {
        goto LABEL_8;
      }

LABEL_7:
      *v11++ = v8;
      v7 |= 2u;
      goto LABEL_8;
    }

    v11 = v6 + 2;
    v6[1] = v7;
    v7 = 1;
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (v9)
    {
      *v11++ = v9;
      v7 |= 4u;
    }

    if (v10)
    {
      *v11++ = v10;
      v7 |= 8u;
    }

    v12 = a3[5];
    v13 = a3[6];
    v14 = a3[7];
    if (a3[4])
    {
      *v11++ = a3[4];
      v7 |= 0x10u;
    }

    if (v12)
    {
      *v11++ = v12;
      v7 |= 0x20u;
    }

    if (v13)
    {
      *v11++ = v13;
      v7 |= 0x40u;
    }

    if (v14)
    {
      *v11++ = v14;
      v7 |= 0x80u;
    }

    *v6 = v7;
    a3 += 8;
    v6 = v11;
    if (v11 + 9 > &a1[a2])
    {
      return 0;
    }
  }

  if (a3 >= v5)
  {
    v17 = v6;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = v6 + 1;
    v18 = -1 << (a4 & 7);
    v19 = 1;
    v20 = a3;
    do
    {
      v21 = *v20;
      if (v21)
      {
        *v17++ = v21;
        v18 |= 1 << v15;
      }

      v15 = ++v16;
      v20 = &a3[v19++];
    }

    while (v20 < v5);
    *v6 = v18;
  }

  return (v17 - a1);
}

uint64_t compressionWorkerProc(uint64_t *a1)
{
  v2 = *a1;
  if (atomic_load((*a1 + 112)))
  {
    result = 0;
    a1[6] = -1;
    return result;
  }

  v5 = a1[2];
  a1[6] = v5;
  if (v5 == -2)
  {
    return 0;
  }

  if (v5 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 244, 37, 0, "NOP received");
    return 0;
  }

  if (v5 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 246, 37, 0, "Invalid iBlock received");
  }

  else
  {
    if (!*(v2 + 4))
    {
      v7 = (*(v2 + 96))(a1[5], *(v2 + 16), a1[1], a1[3]);
      v8 = a1[3];
      if ((v7 & 0x8000000000000000) != 0 || v7 >= v8)
      {
        memcpy(a1[5], a1[1], v8);
        v7 = a1[3];
        v8 = v7;
      }

      a1[7] = v7;
      a1[8] = v8;
      if (*(v2 + 24) >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Worker: encode block %5lld: %7llu => %7llu\n");
      }

      return 0;
    }

    if (a1[3] == a1[4])
    {
      memcpy(a1[5], a1[1], a1[3]);
      v6 = a1[3];
      a1[7] = v6;
      goto LABEL_19;
    }

    v9 = (*(v2 + 96))(a1[5]);
    if ((v9 & 0x8000000000000000) == 0 && v9 == a1[4])
    {
      a1[7] = v9;
      v6 = a1[3];
LABEL_19:
      a1[8] = v6;
      if (*(v2 + 24) >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "Worker: decode block %5lld: %7llu => %7llu\n");
      }

      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "compressionWorkerProc", 292, 37, 0, "invalid output size/decoder error: block=%lld, inSize=%lld, outSize=%lld, expectedOutSize=%lld", a1[6], a1[3]);
  }

  v10 = 0;
  a1[6] = -1;
  atomic_compare_exchange_strong((v2 + 112), &v10, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t outputStreamProc(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (atomic_load((a1 + 112)))
  {
    return 0;
  }

  v6 = *(a2 + 48);
  if (v6 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = 0;
LABEL_5:
    result = 0;
    *(a1 + 88) += v7;
    return result;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 327, 37, 0, "invalid block ID in write thread %lld");
    goto LABEL_19;
  }

  if (*(a1 + 4) != 1)
  {
    v9 = vrev64q_s8(*(a2 + 56));
    v13 = vextq_s8(v9, v9, 8uLL);
    v10 = pcWrite(*(a1 + 56), *(a1 + 72), &v13, 16);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v7 = v10;
      if (v10 == 16)
      {
        v11 = pcWrite(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
        if (v11 < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 351, 37, 0, "writing block payload");
          v7 = 16;
        }

        else
        {
          v7 = v11 + 16;
          if (v11 == *(a2 + 56))
          {
            goto LABEL_5;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 353, 37, 0, "Truncated block payload (%lld/%llu bytes read)");
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 347, 37, 0, "Truncated block header (%lld/16 bytes written)");
      }

      goto LABEL_21;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 345, 37, 0, "writing block header");
LABEL_19:
    v7 = 0;
    goto LABEL_21;
  }

  v8 = pcWrite(*(a1 + 56), *(a1 + 72), *(a2 + 40), *(a2 + 56));
  if (v8 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 334, 37, 0, "writing block");
    goto LABEL_19;
  }

  v7 = v8;
  if (v8 == *(a2 + 56))
  {
    goto LABEL_5;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelCompression/Filter.c", "outputStreamProc", 336, 37, 0, "Truncated block payload (%lld/%llu bytes written)");
LABEL_21:
  v12 = 0;
  *(a1 + 88) += v7;
  atomic_compare_exchange_strong((a1 + 112), &v12, 1u);
  return 0xFFFFFFFFLL;
}

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
    v39 = xmmword_2980690E0;
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

uint64_t clusterLookup(uint64_t a1, unint64_t a2, char *__source, char *__dst, size_t __size)
{
  if (HIDWORD(a2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "clusterLookup", 213, 2, 0, "cluster id out of range");
    return 0xFFFFFFFFLL;
  }

  v11 = *a1;
  if (*a1 <= a2)
  {
    do
    {
      if (v11)
      {
        v11 += v11 >> 1;
      }

      else
      {
        v11 = 32;
      }
    }

    while (v11 <= a2);
    v13 = reallocf(*(a1 + 8), 1028 * v11);
    *(a1 + 8) = v13;
    if (!v13)
    {
      v15 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "clusterLookup", 221, 2, v15, "malloc");
      return 0xFFFFFFFFLL;
    }

    v12 = v13;
    bzero(&v13[1028 * *a1], 1028 * (v11 - *a1));
    *a1 = v11;
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v14 = &v12[1028 * a2];
  if (*v14)
  {
    strlcpy(__dst, v14 + 4, __size);
    return 1;
  }

  else
  {
    strlcpy(v14 + 4, __source, 0x400uLL);
    result = 0;
    *(*(a1 + 8) + 1028 * a2) = 1;
  }

  return result;
}

uint64_t setEntryAttributes(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *(*a1 + 24);
  bzero(path, 0x800uLL);
  v6 = MEMORY[0x29EDCA610];
  if (*v4 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "[%7d] set attributes: %s\n", *(a2 + 2296), (a2 + 144));
  }

  if ((concatExtractPath(path, 0x800uLL, (a1 + 12), (a2 + 144)) & 0x80000000) != 0)
  {
    v20 = (a2 + 144);
    v8 = "invalid path: %s";
    v9 = 257;
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "setEntryAttributes", v9, 2, 0, v8, v20);
    goto LABEL_22;
  }

  if (*(a2 + 4) == 68 && (clearEntryXAT(path) & 0x80000000) != 0)
  {
    v20 = path;
    v8 = "clear XAT: %s";
    v9 = 262;
    goto LABEL_21;
  }

  if ((v5 & 0x40000) == 0 && yaa_setEntryAttributes(path, a2, a2 + 2192, v5 & 1))
  {
    v7 = 266;
LABEL_19:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "setEntryAttributes", v7, 2, 0, "setEntryAttributes", v20);
LABEL_22:
    v16 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v10 = *(a2 + 2280);
  if (v10)
  {
    DataSize = MemBufferGetDataSize(v10);
    DataPtr = MemBufferGetDataPtr(*(a2 + 2280));
    if (yaa_setEntryXAT(path, a2, v5 & 1, DataSize, DataPtr))
    {
      v8 = "setEntryXAT";
      v9 = 272;
      goto LABEL_21;
    }
  }

  v13 = *(a2 + 2288);
  if (v13)
  {
    v14 = MemBufferGetDataSize(v13) / 0x120uLL;
    v15 = MemBufferGetDataPtr(*(a2 + 2288));
    if (yaa_setEntryACL(path, a2, v5 & 1, v14, v15))
    {
      v8 = "setEntryACL";
      v9 = 278;
      goto LABEL_21;
    }
  }

  if ((v5 & 0x40000) != 0 && yaa_setEntryAttributes(path, a2, a2 + 2192, v5 & 1))
  {
    v7 = 282;
    goto LABEL_19;
  }

  v16 = 0;
LABEL_23:
  v17 = *a1;
  v18 = *(*a1 + 96);
  if (v18)
  {
    v18(*(v17 + 18), a2);
    v17 = *a1;
  }

  atomic_fetch_add_explicit((a1 + 1528), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if (*v17 >= 3)
  {
    fprintf(*v6, "[%7d] end: %s\n", *(a2 + 2296), (a2 + 144));
  }

  return v16;
}

uint64_t inFlightQueueEntry(void *a1, int a2)
{
  v2 = a1[174];
  if (!v2)
  {
    return 0;
  }

  v3 = a1[177];
  v4 = a1[175];
  v5 = (a2 - *(v3 + 2320 * v4 + 2296));
  if (v5 < 0 || v2 <= v5)
  {
    return 0;
  }

  v6 = v4 + v5;
  v7 = a1[173];
  if (v6 < v7)
  {
    v7 = 0;
  }

  v8 = v6 - v7;
  v9 = v3 + 2320 * v8;
  if (v8 >= 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t writeToThread(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    FreeSize = MemBufferGetFreeSize(*(a1 + 16));
    if (FreeSize)
    {
      if (FreeSize >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = FreeSize;
      }

      MemBufferFillFromBuffer(*(a1 + 16), v7, a2);
      a2 += v7;
      v3 -= v7;
      goto LABEL_18;
    }

    if (pthread_mutex_lock((a1 + 32)) || (v8 = *(a1 + 24), *(a1 + 24) = v8 + 1, !v8) && pthread_cond_broadcast((a1 + 96)) || pthread_mutex_unlock((a1 + 32)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "writeToThread", 764, 2, 0, "SemRelease");
      return 0xFFFFFFFFLL;
    }

    if (pthread_mutex_lock((a1 + 152)))
    {
      goto LABEL_20;
    }

    while (1)
    {
      v9 = *(a1 + 144);
      if (v9 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 216), (a1 + 152)))
      {
        goto LABEL_20;
      }
    }

    *(a1 + 144) = v9 - 1;
    if (pthread_mutex_unlock((a1 + 152)))
    {
LABEL_20:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "writeToThread", 767, 2, 0, "SemAcquire");
      return 0xFFFFFFFFLL;
    }

    if (!MemBufferGetFreeSize(*(a1 + 16)))
    {
      break;
    }

LABEL_18:
    if (!v3)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "writeToThread", 770, 2, 0, "thread didn't consume data");
  return 0xFFFFFFFFLL;
}

uint64_t SemRelease(uint64_t a1)
{
  result = pthread_mutex_lock((a1 + 8));
  if (!result)
  {
    v3 = (*a1)++;
    if (v3 || (result = pthread_cond_broadcast((a1 + 72)), !result))
    {

      return pthread_mutex_unlock((a1 + 8));
    }
  }

  return result;
}

uint64_t SemAcquire(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  while (*a1 <= 0)
  {
    if (pthread_cond_wait((a1 + 72), (a1 + 8)))
    {
      return 0xFFFFFFFFLL;
    }
  }

  --*a1;
  if (pthread_mutex_unlock((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t ParallelArchiveExtract()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v116 = *MEMORY[0x29EDCA608];
  if (!v0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  enterThreadErrorContext();
  bzero(&v76, 0x628uLL);
  v75 = v1;
  DefaultNThreads = *(v1 + 20);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  LODWORD(__count) = DefaultNThreads;
  v89 = -1;
  v3 = *(v1 + 40);
  v76 = (*(v1 + 24) >> 1) & 1;
  v78 = v3;
  pthread_mutex_init(&v87, 0);
  pthread_mutex_init(&v88, 0);
  v63 = v1;
  if (!realpath_DARWIN_EXTSN(*(v1 + 8), v77))
  {
    v5 = *__error();
    v6 = *(v1 + 8);
    v7 = 1908;
    goto LABEL_15;
  }

  v79 = 0;
  v80 = __count;
  v81 = calloc(__count, 4uLL);
  if (!v81)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    goto LABEL_13;
  }

  if (pthread_mutex_init(&v82, 0))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
LABEL_13:
    v6 = "SharedArrayInit";
    v7 = 1911;
    goto LABEL_14;
  }

  if (pthread_cond_init(&v83, 0))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
    goto LABEL_13;
  }

  v85 = calloc(__count, 0x130uLL);
  if (!v85)
  {
    v5 = *__error();
    v6 = "malloc";
    v7 = 1915;
    goto LABEL_15;
  }

  if (__count)
  {
    v48 = 0;
    v49 = 216;
    while (1)
    {
      v50 = v85;
      v51 = v85 + v49;
      v52 = v85 + v49;
      *(v52 - 27) = &v75;
      v53 = (v52 - 216);
      v54 = MemBufferCreate(0x100000uLL);
      *(v53 + 16) = v54;
      if (!v54)
      {
        break;
      }

      *(v51 - 48) = 0;
      if (pthread_mutex_init((v51 - 184), 0) || (v55 = &v50[v49], pthread_cond_init(&v50[v49 - 120], 0)))
      {
        v6 = "SemInit";
        v7 = 1922;
        goto LABEL_14;
      }

      *(v55 - 18) = 0;
      if (pthread_mutex_init(v55 - 1, 0) || (v56 = &v50[v49], pthread_cond_init(v56, 0)))
      {
        v6 = "SemInit";
        v7 = 1923;
        goto LABEL_14;
      }

      if (createThread(&v56[-5].__opaque[24], extractThreadProc, v53, 0))
      {
        v5 = *__error();
        v6 = "createThread";
        v7 = 1924;
        goto LABEL_15;
      }

      ++v48;
      v49 += 304;
      if (v48 >= __count)
      {
        goto LABEL_85;
      }
    }

    v6 = "MemBufferCreate";
    v7 = 1921;
LABEL_14:
    v5 = 0;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", v7, 2, v5, v6);
    v8 = 0;
    v9 = 0.0;
    goto LABEL_16;
  }

LABEL_85:
  v66 = 0;
  v57 = *(v63 + 16);
  if (!v57)
  {
    v57 = getDefaultNThreads();
  }

  v64[0] = 0;
  v64[1] = v57;
  v58 = *(v63 + 64);
  v65 = *(v63 + 48);
  v67 = v58;
  v68 = extractBeginProc;
  v69 = extractBlobProc;
  v70 = extractPayloadProc;
  v72 = extractEndProc;
  v71 = extractPaddingProc;
  v73 = extractPaddingProc;
  v74 = &v75;
  RealTime = getRealTime();
  v60 = ParallelArchiveRead(v64);
  v61 = getRealTime();
  v8 = 1;
  if (v60 | v86)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1948, 2, 0, "ParallelArchiveRead failed");
    v86 = 1;
    v8 = 0;
  }

  v9 = v61 - RealTime;
  if (v89 != -1 && v90)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1956, 2, 0, "aborting current receiving thread");
    v86 = 1;
    v62 = v85 + 304 * v89;
    if (!v90)
    {
      SemAcquire((v62 + 144));
      v90 = 1;
    }

    MemBufferClear(*(v62 + 2));
    v90 = 0;
    SemRelease((v62 + 24));
  }

  while (1)
  {
LABEL_16:
    if (v85)
    {
      v10 = __count == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = 0;
      do
      {
        v12 = v85 + 304 * v11;
        if (*(v12 + 1))
        {
          LODWORD(v109[0]) = 0;
          if (!pthread_mutex_lock((v12 + 152)))
          {
            while (1)
            {
              v13 = *(v12 + 36);
              if (v13 > 0)
              {
                break;
              }

              if (pthread_cond_wait((v12 + 216), (v12 + 152)))
              {
                goto LABEL_27;
              }
            }

            *(v12 + 36) = v13 - 1;
            pthread_mutex_unlock((v12 + 152));
          }

LABEL_27:
          MemBufferFillFromBuffer(*(v12 + 2), 4uLL, v109);
          if (!pthread_mutex_lock((v12 + 32)))
          {
            v14 = *(v12 + 6);
            *(v12 + 6) = v14 + 1;
            if (v14 || !pthread_cond_broadcast(v12 + 2))
            {
              pthread_mutex_unlock((v12 + 32));
            }
          }

          if (joinThread(*(v12 + 1)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 1989, 2, 0, "joinThread");
            v8 = 0;
          }
        }

        MemBufferDestroy(*(v12 + 2));
        if (!pthread_mutex_destroy((v12 + 32)))
        {
          pthread_cond_destroy(v12 + 2);
        }

        if (!pthread_mutex_destroy((v12 + 152)))
        {
          pthread_cond_destroy((v12 + 216));
        }

        atomic_fetch_add(&v104, *(v12 + 36));
        atomic_fetch_add(&v108, *(v12 + 37));
        ++v11;
      }

      while (v11 < __count);
    }

    if (pthread_mutex_lock(&v87))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 701, 2, 0, "pthread_mutex_lock");
      goto LABEL_51;
    }

    v15 = v95;
    if (!v95)
    {
      break;
    }

    v16 = 1;
    do
    {
      memset(v111, 0, 368);
      memset(v110, 0, sizeof(v110));
      v95 = v15 - 1;
      v17 = v96 + 16 * v15 - 16;
      pc_zero_coder_decode(v110, 2320, *v17, *(v17 + 1));
      if (v115 != 6 || v110[1] != 68)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 711, 2, 0, "Invalid entry state");
        v16 = 0;
      }

      saveThreadErrorContext(v109);
      if (*v75 >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "[%7d] processing deferred Dir: %s\n", v114, v111);
      }

      if ((setEntryAttributes(&v75, v110) & 0x80000000) != 0)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "processDeferredEntries", 720, 2, "Failed to set dir attributes");
        restoreThreadErrorContext(v109);
        v115 = 7;
        ++v97;
      }

      MemBufferDestroy(v112);
      MemBufferDestroy(v113);
      free(*v17);
      *v17 = 0;
      v15 = v95;
    }

    while (v95);
    pthread_mutex_unlock(&v87);
    if (v16)
    {
      goto LABEL_53;
    }

LABEL_51:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2002, 2, 0, "Processing deferred entries");
    v8 = 0;
  }

  pthread_mutex_unlock(&v87);
LABEL_53:
  v18 = MEMORY[0x29EDCA610];
  if (v8)
  {
    if (*v63 >= 1)
    {
      v19 = atomic_load(&v104);
      v20 = atomic_load(&v108);
      v21 = v20 + v19;
      v22 = atomic_load(&v105);
      v23 = atomic_load(&v106);
      v24 = v21 + v22 + v23;
      v25 = atomic_load(&v107);
      v26 = v24 + v25;
      v27 = *MEMORY[0x29EDCA610];
      v28 = atomic_load(&v101);
      fprintf(v27, "%12lld entries in archive\n", v28);
      v29 = *v18;
      v30 = atomic_load(&v102);
      fprintf(v29, "%12lld entries extracted\n", v30);
      fprintf(*v18, "%12llu entries failed to extract\n", v97);
      fprintf(*v18, "%12lld max entries in flight\n", v93);
      v31 = *v18;
      v32 = atomic_load(v103);
      fprintf(v31, "%12lld deferred directories\n", v32);
      fprintf(*v18, "%12llu bytes in archive\n", v91);
      fprintf(*v18, "%12lld bytes received in regular files\n", v26);
      v33 = *v18;
      v34 = atomic_load(&v104);
      fprintf(v33, "%12lld bytes stored in regular files\n", v34);
      v35 = *v18;
      v36 = atomic_load(&v108);
      fprintf(v35, "%12lld bytes not stored in holes\n", v36);
      v37 = *v18;
      v38 = atomic_load(&v105);
      fprintf(v37, "%12lld bytes not stored in hard links\n", v38);
      v39 = *v18;
      v40 = atomic_load(&v106);
      fprintf(v39, "%12lld bytes not stored in clones\n", v40);
      v41 = *v18;
      v42 = atomic_load(&v107);
      fprintf(v41, "%12lld bytes not stored in same data files\n", v42);
      fprintf(*v18, "%12.0f MB/s\n", v26 / v9 * 0.000000953674316);
      if (*v63 >= 3)
      {
        if (__count)
        {
          v43 = 0;
          v44 = 264;
          do
          {
            v45 = v85;
            fprintf(*v18, "-- thread %d:\n", v43);
            v46 = &v45[v44];
            fprintf(*v18, "%12lld entries stored\n", *(v46 + 1));
            fprintf(*v18, "%12lld bytes received\n", *(v46 + 2));
            fprintf(*v18, "%12lld bytes stored\n", *(v46 + 3));
            fprintf(*v18, "%12lld buffers exchanged\n", *v46);
            ++v43;
            v44 += 304;
          }

          while (v43 < __count);
        }
      }
    }
  }

  free(v85);
  if (!pthread_mutex_destroy(&v82) && !pthread_cond_destroy(&v83))
  {
    free(v81);
  }

  pthread_mutex_destroy(&v87);
  pthread_mutex_destroy(&v88);
  if (v92)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2043, 2, 0, "Destroying state with non-empty in-flight queue");
  }

  free(v94);
  if (v95)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2045, 2, 0, "Destroying state with non-empty deferred queue");
  }

  free(v96);
  free(v98);
  free(v99);
  free(v100);
  if (v97 && (*(v63 + 24) & 8) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "ParallelArchiveExtract", 2054, 2, 0, "%llu entries failed to extract", v97);
    v8 = 0;
  }

  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v8)
  {
    v47 = 0;
  }

  else
  {
    v47 = -1;
  }

  if (result >= 0)
  {
    return v47;
  }

  else
  {
    return result;
  }
}

uint64_t extractThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v120 = *MEMORY[0x29EDCA608];
  v1 = *v0;
  v2 = **v0;
  v81 = *v2;
  v3 = 678152731 * ((v0 - *(*v0 + 1176)) >> 4);
  __dst = -1;
  memset(v118, 0, 368);
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  *v110 = 0u;
  v109 = 0u;
  v98 = 0;
  v97 = 0u;
  memset(v96, 0, sizeof(v96));
  bzero(v108, 0x800uLL);
  v92 = -1;
  v4 = *(v2 + 96);
  v84 = *(v2 + 88);
  v82 = *(v2 + 104);
  v83 = *(v2 + 144);
  v5 = *(v2 + 24);
  v6 = MemBufferCreate(0x10000uLL);
  v7 = MemBufferCreate(0x10000uLL);
  v8 = v7;
  v89 = v6;
  if (!v6 || !v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 830, 2, 0, "MemBufferCreate");
  }

  v93 = 0;
  v94 = 0;
  v95 = 0;
  if (*(*v1 + 32) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(*v1 + 32);
  }

  v91 = v9;
  v90 = calloc(v9, 0x120uLL);
  if (!v90)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 835, 2, 0, "malloc ACE");
  }

  if (SharedArrayPush_0(v1 + 260, v3))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 838, 2, 0, "SharedArrayPush");
  }

  v85 = v5;
  if (pthread_mutex_lock((v0 + 152)) || (v10 = *(v0 + 144), *(v0 + 144) = v10 + 1, !v10) && pthread_cond_broadcast((v0 + 216)) || pthread_mutex_unlock((v0 + 152)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 847, 2, 0, "SemRelease");
  }

  v87 = 0;
  v88 = 0;
  v11 = 0;
  v12 = 0;
  v13 = " (MSU)";
  if ((v85 & 0x10000) == 0)
  {
    v13 = "";
  }

  v80 = v13;
  v86 = 7;
LABEL_20:
  v14 = 1;
  while (v12 != -1)
  {
    v15 = v12;
    if (v12 == 6)
    {
      break;
    }

    if (v14)
    {
      if (pthread_mutex_lock((v0 + 32)))
      {
        goto LABEL_29;
      }

      while (1)
      {
        v16 = *(v0 + 24);
        if (v16 > 0)
        {
          break;
        }

        if (pthread_cond_wait((v0 + 96), (v0 + 32)))
        {
          goto LABEL_29;
        }
      }

      *(v0 + 24) = v16 - 1;
      if (pthread_mutex_unlock((v0 + 32)))
      {
LABEL_29:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 859, 2, 0, "SemAcquire");
      }

      ++*(v0 + 264);
    }

    if (!MemBufferGetDataSize(*(v0 + 16)) && v1[296])
    {
      goto LABEL_55;
    }

    if (v12 > 3)
    {
      if (v12 > 5)
      {
LABEL_55:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1425, 2, 0, "aborting entry");
        v92 = -1;
        MemBufferClear(v89);
        MemBufferClear(v8);
        if (!SharedArrayPush_0(v1 + 260, v3))
        {
          v12 = 0;
LABEL_58:
          v88 = 0;
          goto LABEL_108;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1440, 2, 0, "SharedArrayPush");
        v88 = 0;
        v12 = 7;
LABEL_108:
        if (pthread_mutex_lock((v0 + 152)) || (v31 = *(v0 + 144), *(v0 + 144) = v31 + 1, !v31) && pthread_cond_broadcast((v0 + 216)) || (v32 = pthread_mutex_unlock((v0 + 152)), v14 = 1, v32))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1462, 2, 0, "SemRelease");
          goto LABEL_20;
        }
      }

      else
      {
        if (v12 == 4)
        {
          *&__s[0] = 0;
          if (MemBufferGetDataSize(*(v0 + 16)) < 8)
          {
            v12 = 4;
            goto LABEL_108;
          }

          if (MemBufferFlushToBuffer(*(v0 + 16), 8uLL, __s) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1295, 2, 0, "MemBufferFlushToBuffer");
            v12 = 4;
            goto LABEL_157;
          }

          *(v0 + 280) += 8;
          v23 = v92;
          v24 = *&__s[0];
          if (pthread_mutex_lock((v1 + 298)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreEntryEnd", 424, 2, 0, "pthread_mutex_lock");
            goto LABEL_92;
          }

          v44 = inFlightQueueEntry(v1, v23);
          if (v44)
          {
            *(v44 + 2312) = v24;
            pthread_mutex_unlock((v1 + 298));
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreEntryEnd", 428, 2, 0, "couldn't locate entry [%d] in queue", v23);
            pthread_mutex_unlock((v1 + 298));
LABEL_92:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1297, 2, 0, "store entryEnd");
          }

          v12 = 5;
          goto LABEL_157;
        }

        if (v11)
        {
          *&__s[0] = 0;
          *v106 = 0;
          OArchiveFileStreamDestroyEx(v11, 0, __s, v106);
          v17 = *(v0 + 296) + *v106;
          *(v0 + 288) += *&__s[0];
          *(v0 + 296) = v17;
          if ((v109 & 8) != 0 && statIsCompressed(v110[0]) && v113 && (v96[0] & 0x20) != 0 && (v96[0] & 0x40) != 0 && DWORD1(v97) && (ParallelCompressionAFSCFixupMetadata(v108, v97, DWORD1(v97)) & 0x80000000) != 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1322, 2, "ParallelCompressionAFSCFixupMetadata failed: %s (aft=%d afr=%u)", v108, v77, v78);
          }
        }

        v18 = v86;
        if (v86 == 2)
        {
          v18 = 3;
        }

        if (v18 == 7)
        {
LABEL_142:
          v86 = v18;
          if (inFlightQueueRetire())
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1399, 2, 0, "retiring entry from in-flight state");
          }

          else
          {
            if (!MemBufferGetDataSize(*(v0 + 16)))
            {
              v92 = -1;
              MemBufferClear(v89);
              MemBufferClear(v8);
              if (SharedArrayPush_0(v1 + 260, v3))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1417, 2, 0, "SharedArrayPush");
                v11 = 0;
                v88 = 0;
                v12 = 5;
                goto LABEL_108;
              }

              v12 = 0;
              v11 = 0;
              goto LABEL_58;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1402, 2, 0, "buffer is not empty");
          }

          v11 = 0;
          v14 = 0;
          v12 = 5;
        }

        else
        {
          if (v18 == 3)
          {
            saveThreadErrorContext(__s);
            if ((v85 & 0x40000) != 0 || !yaa_setEntryAttributes(v108, &v109, v96, v85 & 1))
            {
              v19 = 3;
            }

            else
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1341, 2, "setEntryAttributes: %s", v108);
              v19 = 7;
            }

            if ((BYTE1(v109) & 4) != 0)
            {
              DataSize = MemBufferGetDataSize(v89);
              DataPtr = MemBufferGetDataPtr(v89);
              if (yaa_setEntryXAT(v108, &v109, v85 & 1, DataSize, DataPtr))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1350, 2, 0, "setEntryXAT: %s", v108);
                v19 = 7;
              }
            }

            if ((BYTE1(v109) & 8) != 0 && yaa_setEntryACL(v108, &v109, v85 & 1, v88, v90))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1360, 2, 0, "setEntryACL: %s", v108);
              v19 = 7;
            }

            if ((v85 & 0x40000) != 0 && yaa_setEntryAttributes(v108, &v109, v96, v85 & 1))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1368, 2, "setEntryAttributes: %s", v108);
              v19 = 7;
            }

            if (v4)
            {
              v4(*(*v1 + 144), &v109);
            }

            atomic_fetch_add_explicit(v1 + 191, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            if (v19 == 7)
            {
              restoreThreadErrorContext(__s);
              v18 = 7;
            }

            else
            {
              v18 = 4;
            }

            goto LABEL_142;
          }

          v86 = v18;
          v25 = v8;
          v79 = v4;
          v26 = v3;
          v27 = v92;
          v28 = MemBufferGetDataSize(v89);
          v29 = MemBufferGetDataPtr(v89);
          v30 = v90;
          if (pthread_mutex_lock((v1 + 298)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 445, 2, 0, "pthread_mutex_lock");
            v3 = v26;
            v8 = v25;
          }

          else
          {
            v40 = inFlightQueueEntry(v1, v27);
            if (v40)
            {
              v41 = v40;
              if (v28 && (v42 = MemBufferCreateWithData(v28, v29), (*(v41 + 2280) = v42) == 0))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 454, 2, 0, "allocating XAT blob", v76);
              }

              else
              {
                if (!v88 || (v43 = MemBufferCreateWithData(288 * v88, v30), (*(v41 + 2288) = v43) != 0))
                {
                  pthread_mutex_unlock((v1 + 298));
                  v3 = v26;
                  v4 = v79;
                  v8 = v25;
                  v18 = v86;
                  goto LABEL_142;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 459, 2, 0, "allocating ACL blob", v76);
              }
            }

            else
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueStoreBlobs", 449, 2, 0, "couldn't locate entry [%d] in queue");
            }

            v3 = v26;
            v8 = v25;
            pthread_mutex_unlock((v1 + 298));
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1391, 2, 0, "store XAT and ACL blobs in entry");
          v11 = 0;
          v14 = 0;
          v12 = 5;
          v4 = v79;
        }
      }
    }

    else if (v12 > 1)
    {
      if (v12 == 2)
      {
        goto LABEL_44;
      }

      v20 = MemBufferGetDataSize(*(v0 + 16));
      v21 = MemBufferGetDataPtr(*(v0 + 16));
      if (v20 >= v87)
      {
        v20 = v87;
      }

      *(v0 + 280) += v20;
      switch(__dst)
      {
        case 4:
          if ((MemBufferFillFromBuffer(v8, v20, v21) & 0x8000000000000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1251, 2, 0, "storing ACL blob contents");
            goto LABEL_161;
          }

LABEL_106:
          MemBufferDecreaseSize(*(v0 + 16), v20);
          v87 -= v20;
          if (v87)
          {
            v12 = 3;
            goto LABEL_108;
          }

          v87 = 0;
          v14 = 0;
          v12 = 2;
          if (__dst == 4)
          {
            v14 = 0;
            v87 = 0;
            if ((BYTE1(v109) & 8) != 0)
            {
              if (v114)
              {
                v35 = MemBufferGetDataSize(v8);
                v36 = MemBufferGetDataPtr(v8);
                v37 = yaa_decodeACL(&v109, &v91, &v90, v35, v36);
                if (v37 < 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1267, 2, 0, "decodeEntryACL");
                }

                v38 = v37 & ~(v37 >> 63);
                if (v82)
                {
                  v38 = v82(v83, &v109, v38, v91, v90);
                  if (v38 > v91)
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1274, 2, 0, "invalid user ACL callback return value");
                    v38 = 0;
                  }
                }

                v88 = v38;
                MemBufferClear(v8);
                v87 = 0;
                goto LABEL_138;
              }
            }
          }

          break;
        case 3:
          if ((MemBufferFillFromBuffer(v89, v20, v21) & 0x8000000000000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1246, 2, 0, "storing XAT blob contents");
            goto LABEL_161;
          }

          goto LABEL_106;
        case 2:
          if (!v11 || OArchiveFileStreamWrite(v11, v21, v20) != v20)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1239, 2, "OArchiveFileStreamWrite");
            v86 = 7;
          }

          goto LABEL_106;
        default:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1253, 2, 0, "invalid op in BLOB PAYLOAD");
LABEL_161:
          v14 = 0;
          v12 = 3;
          break;
      }
    }

    else if (v12)
    {
      if (MemBufferGetDataSize(*(v0 + 16)) < 0x8EC)
      {
        v12 = 1;
        goto LABEL_108;
      }

      if (MemBufferFlushToBuffer(*(v0 + 16), 0x890uLL, &v109) < 0)
      {
        v39 = 926;
LABEL_167:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", v39, 2, 0, "MemBufferFlushToBuffer");
        goto LABEL_231;
      }

      if (MemBufferFlushToBuffer(*(v0 + 16), 0x58uLL, v96) < 0)
      {
        v39 = 927;
        goto LABEL_167;
      }

      if (MemBufferFlushToBuffer(*(v0 + 16), 4uLL, &v92) < 0)
      {
        v39 = 928;
        goto LABEL_167;
      }

      *(v0 + 272) = vaddq_s64(*(v0 + 272), xmmword_2980695C0);
      if (!v84)
      {
        goto LABEL_196;
      }

      v93 = 0;
      v94 = 0;
      v95 = 0;
      v84(v83, &v109, &v93);
      if (v93)
      {
        LODWORD(v109) = v109 | 2;
        DWORD2(v109) = HIDWORD(v93);
        if ((v93 & 2) == 0)
        {
LABEL_82:
          if ((v93 & 8) != 0)
          {
            goto LABEL_177;
          }

          goto LABEL_83;
        }
      }

      else if ((v93 & 2) == 0)
      {
        goto LABEL_82;
      }

      LODWORD(v109) = v109 | 4;
      HIDWORD(v109) = v94;
      if ((v93 & 8) != 0)
      {
LABEL_177:
        LODWORD(v109) = v109 | 0x10;
        v110[1] = v95;
        if ((v93 & 4) == 0)
        {
          goto LABEL_85;
        }

LABEL_84:
        LODWORD(v109) = v109 | 8;
        v110[0] = HIDWORD(v94);
        goto LABEL_85;
      }

LABEL_83:
      if ((v93 & 4) != 0)
      {
        goto LABEL_84;
      }

LABEL_85:
      if ((v93 & 0xF) != 0)
      {
        v22 = v92;
        if (!pthread_mutex_lock((v1 + 298)))
        {
          v46 = inFlightQueueEntry(v1, v22);
          if (!v46)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueOverrideAttributes", 405, 2, 0, "couldn't locate entry [%d] in queue", v22);
            pthread_mutex_unlock((v1 + 298));
            goto LABEL_88;
          }

          v47 = v93;
          if (v93)
          {
            *v46 |= 2u;
            v46[2] = HIDWORD(v93);
            v47 = v93;
          }

          if ((v47 & 2) != 0)
          {
            *v46 |= 4u;
            v46[3] = v94;
            v47 = v93;
            if ((v93 & 8) != 0)
            {
              goto LABEL_248;
            }

LABEL_193:
            if ((v47 & 4) == 0)
            {
LABEL_195:
              pthread_mutex_unlock((v1 + 298));
              goto LABEL_196;
            }
          }

          else
          {
            if ((v47 & 8) == 0)
            {
              goto LABEL_193;
            }

LABEL_248:
            *v46 |= 0x10u;
            v46[5] = v95;
            if ((v93 & 4) == 0)
            {
              goto LABEL_195;
            }
          }

          *v46 |= 8u;
          v46[4] = HIDWORD(v94);
          goto LABEL_195;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueOverrideAttributes", 401, 2, 0, "pthread_mutex_lock");
LABEL_88:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 949, 2, 0, "override attributes", v76);
LABEL_230:
        v86 = 0;
LABEL_231:
        v14 = 0;
        v12 = 1;
      }

      else
      {
LABEL_196:
        atomic_fetch_add_explicit(v1 + 191, 1uLL, memory_order_relaxed);
        if (**v1 >= 3)
        {
          fprintf(*MEMORY[0x29EDCA610], "[%7d] begin: %s\n", v92, v118);
        }

        if ((concatExtractPath(v108, 0x800uLL, v1 + 12, v118) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 955, 2, 0, "invalid path: %s");
          goto LABEL_230;
        }

        v48 = v109;
        if ((v109 & 0x400) != 0)
        {
          if ((MemBufferIncreaseCapacity(v89, *(&v113 + 1)) & 0x8000000000000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 960, 2, 0, "allocate XAT blob", v76);
            goto LABEL_230;
          }

          v48 = v109;
        }

        if ((v48 & 0x800) != 0 && (MemBufferIncreaseCapacity(v8, v114) & 0x8000000000000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 964, 2, 0, "allocate ACL blob", v76);
          goto LABEL_230;
        }

        if (!MemBufferIsEmpty(v89) || !MemBufferIsEmpty(v8))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 968, 2, 0, "XAT/ACL blob is not empty", v76);
          goto LABEL_230;
        }

        if (SDWORD1(v109) > 75)
        {
          if (SDWORD1(v109) > 119)
          {
            if ((DWORD1(v109) - 120) >= 2)
            {
              goto LABEL_275;
            }

            v14 = 0;
            v12 = 2;
            v86 = 1;
            if (v81 >= 3)
            {
              v77 = v118;
              fprintf(*MEMORY[0x29EDCA610], "[%7d] HLINK/CLONE deferred: %s\n");
              goto LABEL_260;
            }
          }

          else
          {
            switch(DWORD1(v109))
            {
              case 'L':
                if (v81 >= 3)
                {
                  fprintf(*MEMORY[0x29EDCA610], "[%7d] SLINK: %s -> %s\n", v92, v118, v119);
                }

                unlink(v108);
                v62 = symlink(v119, v108);
                v14 = 0;
                v12 = 2;
                v86 = 3;
                if (v62)
                {
                  v77 = v119;
                  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1086, 2, "symlink %s -> %s");
                  goto LABEL_274;
                }

                break;
              case 'P':
                if (v81 >= 3)
                {
                  fprintf(*MEMORY[0x29EDCA610], "[%7d] FIFO: %s\n", v92, v118);
                }

                unlink(v108);
                if ((v109 & 0x10) != 0)
                {
                  v63 = LOWORD(v110[1]) | 0x1000;
                }

                else
                {
                  v63 = 4516;
                }

                v64 = mkfifo(v108, v63);
                v14 = 0;
                v12 = 2;
                v86 = 3;
                if (v64)
                {
                  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1108, 2, "mkfifo %s");
LABEL_274:
                  v14 = 0;
                  v86 = 7;
                }

                break;
              case 'S':
                if (v81 >= 3)
                {
                  fprintf(*MEMORY[0x29EDCA610], "[%7d] SOCKET: %s\n", v92, v118);
                }

                unlink(v108);
                bzero(__s, 0x400uLL);
                bzero(v106, 0x400uLL);
                v104 = 0u;
                memset(v105, 0, sizeof(v105));
                v102 = 0u;
                v103 = 0u;
                v100 = 0;
                v101 = 0u;
                __strlcpy_chk();
                v53 = strrchr(__s, 47);
                if (!v53)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1137, 2, 0, "could not determine parent directory: %s");
LABEL_280:
                  v86 = 3;
                  goto LABEL_138;
                }

                *v53 = 0;
                v54 = v53 + 1;
                v104 = 0u;
                memset(v105, 0, sizeof(v105));
                v102 = 0u;
                v103 = 0u;
                v100 = 0;
                v101 = 0u;
                __strlcpy_chk();
                v100.sa_len = strlen(v100.sa_data) + 3;
                v100.sa_family = 1;
                v55 = socket(1, 1, 0);
                if (v55 < 0)
                {
                  v65 = *__error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1162, 2, v65, "socket failed: %s");
                  goto LABEL_280;
                }

                v56 = v55;
                if (pthread_mutex_lock((v1 + 314)) < 0)
                {
                  v57 = __error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1169, 2, *v57, "locking chdir_mutex failed: %s", v108);
                }

                if (getcwd(v106, 0x400uLL))
                {
                  if (chdir(__s) < 0 || bind(v56, &v100, 0x6Au) < 0)
                  {
                    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1176, 2, "chdir+bind failed: %s/%s", __s, v54);
                    v58 = 7;
                  }

                  else
                  {
                    v58 = 3;
                  }

                  v86 = v58;
                  if (chdir(v106) < 0)
                  {
                    v72 = __error();
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1180, 2, *v72, "chdir failed: %s", v106);
                  }
                }

                else
                {
                  v73 = __error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1182, 2, *v73, "getcwd failed: %s", v108);
                  v86 = 3;
                }

                if (pthread_mutex_unlock((v1 + 314)) < 0)
                {
                  v74 = __error();
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1183, 2, *v74, "unlocking chdir_mutex failed: %s", v108);
                }

                close(v56);
LABEL_138:
                v14 = 0;
                v12 = 2;
                break;
              default:
LABEL_275:
                v12 = 2;
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1217, 2, 0, "unsupported entry type");
                v86 = 0;
LABEL_157:
                v14 = 0;
                break;
            }
          }
        }

        else if (SDWORD1(v109) > 69)
        {
          if (DWORD1(v109) == 70)
          {
            v59 = v1[259];
            if ((v109 & 8) != 0)
            {
              v61 = v85;
              if (statIsCompressed(v110[0]))
              {
                v60 = v113 != 0;
              }

              else
              {
                v60 = 0;
              }
            }

            else
            {
              v60 = 0;
              v61 = v85;
            }

            if (v81 >= 3)
            {
              v66 = "";
              if (v60)
              {
                v66 = " (C)";
              }

              fprintf(*MEMORY[0x29EDCA610], "[%7d] FILE writing %s%s: %s\n", v92, v66, v80, v118);
            }

            if (v60)
            {
              if (v96[0] & 0x20) != 0 && (v67 = v97 - 3, (v97 - 3) <= 0xB) && ((0xFF3u >> v67))
              {
                v68 = dword_2980695E0[v67];
                v59 = dword_298069610[v67];
              }

              else
              {
                v68 = 4;
              }
            }

            else
            {
              v68 = 0;
            }

            v69 = v68 | (16 * v85) & 0x40;
            if ((v61 & 0x10000) != 0)
            {
              v70 = v69 | 0x2B;
            }

            else
            {
              v70 = v69;
            }

            if ((v61 & 0x10) != 0)
            {
              if ((v96[0] & 0x80) != 0)
              {
                v71 = DWORD2(v97);
              }

              else
              {
                v71 = -1;
              }
            }

            else
            {
              v71 = -1;
            }

            removeFile(v108);
            saveThreadErrorContext(__s);
            v11 = OArchiveFileStreamCreate(v108, v113, v70 | 0x100u, v71, v59);
            if (!v11)
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1062, 2, "OArchiveFileStreamCreate: %s", v108);
              restoreThreadErrorContext(__s);
            }

            v14 = 0;
            v86 = 2;
            v12 = 2;
          }

          else
          {
            if (DWORD1(v109) != 72)
            {
              goto LABEL_275;
            }

            v14 = 0;
            v12 = 2;
            v86 = 1;
            if (v81 >= 3)
            {
              v77 = v118;
              fprintf(*MEMORY[0x29EDCA610], "[%7d] HLINK (legacy) deferred: %s\n");
              goto LABEL_260;
            }
          }
        }

        else if ((DWORD1(v109) - 66) >= 2)
        {
          if (DWORD1(v109) != 68)
          {
            goto LABEL_275;
          }

          v14 = 0;
          v12 = 2;
          v86 = 1;
          if (v81 >= 3)
          {
            v77 = v118;
            fprintf(*MEMORY[0x29EDCA610], "[%7d] DIR deferred: %s\n");
LABEL_260:
            v14 = 0;
            v86 = 1;
          }
        }

        else
        {
          if (v81 >= 3)
          {
            v49 = "CHAR";
            if (DWORD1(v109) == 66)
            {
              v49 = "BLOCK";
            }

            fprintf(*MEMORY[0x29EDCA610], "[%7d] %s SPECIAL: %s\n", v92, v49, v108);
          }

          if ((v109 & 0x20) == 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1195, 2, 0, "DEV field is not set for a block/char special entry");
          }

          unlink(v108);
          v50 = v110[1];
          if ((v109 & 0x10) == 0)
          {
            v50 = 420;
          }

          if (DWORD1(v109) == 66)
          {
            v51 = 24576;
          }

          else
          {
            v51 = 0x2000;
          }

          v52 = mknod(v108, v51 | v50, v110[2]);
          v14 = 0;
          v12 = 2;
          v86 = 3;
          if (v52)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 1209, 2, "mknod %s");
            goto LABEL_274;
          }
        }
      }
    }

    else
    {
LABEL_44:
      if (MemBufferGetDataSize(*(v0 + 16)) < 4)
      {
        goto LABEL_108;
      }

      if (MemBufferFlushToBuffer(*(v0 + 16), 4uLL, &__dst) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 882, 2, 0, "MemBufferFlushToBuffer");
        v14 = 0;
      }

      else
      {
        v14 = 0;
        *(v0 + 280) += 4;
        v12 = 6;
        if (v15 | __dst)
        {
          if (v15 || (v14 = 0, v12 = 1, __dst != 1))
          {
            if (v15 == 2 && __dst == 2)
            {
              if ((BYTE1(v109) & 2) == 0)
              {
                v12 = 2;
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 894, 2, 0, "unexpected DAT blob");
                goto LABEL_157;
              }

              v14 = 0;
              v12 = 3;
              v87 = v113;
            }

            else if (v15 == 2 && __dst == 3)
            {
              if ((BYTE1(v109) & 4) == 0)
              {
                v12 = 2;
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 901, 2, 0, "unexpected XAT blob");
                goto LABEL_157;
              }

              v14 = 0;
              v12 = 3;
              v87 = *(&v113 + 1);
            }

            else if (v15 == 2 && __dst == 4)
            {
              if ((BYTE1(v109) & 8) == 0)
              {
                v12 = 2;
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractThreadProc", 908, 2, 0, "unexpected ACL blob");
                goto LABEL_157;
              }

              v14 = 0;
              v12 = 3;
              v87 = v114;
            }

            else
            {
              v14 = 0;
              if (__dst == 5 && v15 == 2)
              {
                v12 = 4;
              }

              else
              {
                v12 = -1;
              }
            }
          }
        }
      }
    }
  }

  MemBufferDestroy(v89);
  MemBufferDestroy(v8);
  OArchiveFileStreamDestroy(v11);
  free(v90);
  return 0;
}

void extractBeginProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v75 = *MEMORY[0x29EDCA608];
  bzero(v74, 0x800uLL);
  v72 = 0;
  *v70 = 0u;
  v71 = 0u;
  memset(v69, 0, sizeof(v69));
  bzero(__dst, 0x890uLL);
  v12 = (v11 + 1320);
  *(v11 + 1320) = xmmword_2980695D0;
  v13 = *(v11 + 1368);
  *(v11 + 1352) = v13;
  *(v11 + 1368) = v13 + v2;
  *(v11 + 1336) = 0xFFFFFFFF00000000;
  if (*(v11 + 1184))
  {
    return;
  }

  if (v10[1] != 77)
  {
    memcpy(__dst, v10, sizeof(__dst));
    v16 = 1;
    atomic_fetch_add_explicit((v11 + 1504), 1uLL, memory_order_relaxed);
    *(v11 + 1324) = 0;
    v17 = *v11;
    v18 = *(*v11 + 72);
    if (v18)
    {
      if ((*(v17 + 26) & 2) != 0)
      {
        LODWORD(__dst[0]) |= 0x40u;
        __dst[4] = v13;
      }

      v19 = v18(*(v17 + 144), __dst);
      v16 = v19 != 0;
      *(v11 + 1324) = v19 == 0;
    }

    v20 = 0;
    if (v6)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = (v8 + 8);
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v31 = *(v28 - 1) & 0xDFDFDF;
        if (v31 <= 0x494C45)
        {
          if ((*(v28 - 1) & 0xDFDFDFu) > 0x434C52)
          {
            if (v31 == 4410451)
            {
              v27 |= 0x10u;
              v22 = *v28;
            }

            else if (v31 == 4411984)
            {
              v27 |= 0x80u;
              v32 = *v28;
              v25 = -1;
              if (*v28 > 67)
              {
                switch(v32)
                {
                  case 'D':
                    v25 = 4;
                    break;
                  case 'E':
                    v25 = 5;
                    break;
                  case 'F':
                    v25 = 6;
                    break;
                }
              }

              else
              {
                switch(v32)
                {
                  case 'A':
                    v25 = 1;
                    break;
                  case 'B':
                    v25 = 2;
                    break;
                  case 'C':
                    v25 = 3;
                    break;
                }
              }
            }
          }

          else if (v31 == 4410435)
          {
            v27 |= 8u;
            v21 = *v28;
          }

          else if (v31 == 4410440)
          {
            v27 |= 4u;
            v20 = *v28;
          }
        }

        else if ((*(v28 - 1) & 0xDFDFDFu) <= 0x4D5442)
        {
          if (v31 == 4803654)
          {
            v27 |= 0x100u;
            v26 = *v28;
          }

          else if (v31 == 5067842)
          {
            v27 |= 2u;
            v30 = *v28;
          }
        }

        else
        {
          switch(v31)
          {
            case 0x544641u:
              v27 |= 0x20u;
              v23 = *v28;
              break;
            case 0x524641u:
              v27 |= 0x40u;
              v24 = *v28;
              break;
            case 0x4D5443u:
              v27 |= 1u;
              v29 = *v28;
              break;
          }
        }

        v28 += 129;
        --v6;
      }

      while (v6);
      v72 = v26;
      DWORD2(v71) = v25;
      *&v71 = __PAIR64__(v24, v23);
      *v70 = v21;
      *&v70[2] = v22;
      *(&v69[2] + 1) = v20;
      *(&v69[1] + 8) = v30;
      *(v69 + 8) = v29;
    }

    else
    {
      LOWORD(v27) = 0;
    }

    LOWORD(v69[0]) = v27;
    if (v16 && HIDWORD(__dst[0]) == 70)
    {
      if ((v27 & 4) != 0 && v20 != -1)
      {
        v33 = clusterLookup(v11 + 1456, v20, &__dst[18], &__dst[146], 0x400uLL);
        if (v33 < 0)
        {
          v63 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1608, 2, v63, "looking up cluster");
          goto LABEL_73;
        }

        if (v33)
        {
          HIDWORD(__dst[0]) = 120;
          *(v11 + 1336) = 1;
          atomic_fetch_add((v11 + 1552), __dst[8]);
        }
      }

      if (HIDWORD(__dst[0]) == 70)
      {
        if ((v69[0] & 8) != 0 && *v70 != -1)
        {
          v34 = clusterLookup(v11 + 1472, *v70, &__dst[18], &__dst[146], 0x400uLL);
          if (v34 < 0)
          {
            v64 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1630, 2, v64, "looking up cluster");
            goto LABEL_73;
          }

          if (v34)
          {
            HIDWORD(__dst[0]) = 121;
            *(v11 + 1336) = 1;
            atomic_fetch_add((v11 + 1560), __dst[8]);
          }
        }

        if (HIDWORD(__dst[0]) == 70 && (v69[0] & 0x10) != 0 && *&v70[2] != -1 && *(v11 + 8))
        {
          v35 = clusterLookup(v11 + 1488, *&v70[2], &__dst[18], &__dst[146], 0x400uLL);
          if (v35 < 0)
          {
            v65 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1652, 2, v65, "looking up cluster");
            goto LABEL_73;
          }

          if (v35)
          {
            HIDWORD(__dst[0]) = 121;
            *(v11 + 1336) = 1;
            atomic_fetch_add((v11 + 1568), __dst[8]);
          }
        }
      }
    }

    v36 = *(v11 + 1352);
    if (pthread_mutex_lock((v11 + 1192)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueInsert", 325, 2, 0, "pthread_mutex_lock");
LABEL_71:
      *v12 = -1;
      goto LABEL_72;
    }

    v37 = *(v11 + 1392);
    v38 = *(v11 + 1384);
    if (v37 >= v38)
    {
      if (v38)
      {
        v38 += v38 >> 1;
      }

      else
      {
        v38 = 128;
      }

      v39 = calloc(v38, 0x910uLL);
      if (!v39)
      {
        v62 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueInsert", 336, 2, *v62, "malloc");
        pthread_mutex_unlock((v11 + 1192));
        goto LABEL_71;
      }

      v40 = v39;
      if (*(v11 + 1392))
      {
        v41 = 0;
        v42 = *(v11 + 1400);
        v43 = v39;
        do
        {
          memcpy(v43, (*(v11 + 1416) + 2320 * v42), 0x910uLL);
          v44 = *(v11 + 1384);
          if (v42 + 1 < v44)
          {
            v44 = 0;
          }

          v42 = v42 + 1 - v44;
          ++v41;
          v43 += 2320;
        }

        while (v41 < *(v11 + 1392));
      }

      free(*(v11 + 1416));
      *(v11 + 1416) = v40;
      *(v11 + 1384) = v38;
      *(v11 + 1400) = 0;
      v37 = *(v11 + 1392);
    }

    if (v37)
    {
      v45 = *(v11 + 1400);
    }

    else
    {
      v45 = 0;
      *(v11 + 1400) = 0;
    }

    v46 = v45 + v37;
    if (v46 >= v38)
    {
      v47 = v38;
    }

    else
    {
      v47 = 0;
    }

    v48 = *(v11 + 1416) + 2320 * (v46 - v47);
    v49 = *(v11 + 1376);
    *(v11 + 1376) = v49 + 1;
    bzero(v48, 0x910uLL);
    memcpy(v48, __dst, 0x890uLL);
    v50 = v69[0];
    *(v48 + 2208) = v69[1];
    *(v48 + 2192) = v50;
    v51 = v69[2];
    v52 = *v70;
    v53 = v71;
    *(v48 + 2272) = v72;
    *(v48 + 2256) = v53;
    *(v48 + 2240) = v52;
    *(v48 + 2224) = v51;
    *(v48 + 2296) = v49;
    *(v48 + 2312) = v36;
    *(v48 + 2304) = v36;
    *(v48 + 2300) = 0;
    v54 = *(v11 + 1392) + 1;
    *(v11 + 1392) = v54;
    if (v54 > *(v11 + 1408))
    {
      *(v11 + 1408) = v54;
    }

    if (**v11 >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "[%7d] inserted: %s\n", v49, &__dst[18]);
    }

    pthread_mutex_unlock((v11 + 1192));
    *v12 = v49;
    if ((v49 & 0x80000000) == 0)
    {
      if (*(v11 + 1324))
      {
        return;
      }

      v55 = 1;
      atomic_fetch_add_explicit((v11 + 1512), 1uLL, memory_order_relaxed);
      if ((concatExtractPath(v74, 0x800uLL, (v11 + 12), &__dst[18]) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1690, 2, 0, "invalid path: %s", &__dst[18]);
        v55 = 0;
      }

      v56 = HIDWORD(__dst[0]);
      if (HIDWORD(__dst[0]) == 68)
      {
        if (**v11 >= 3)
        {
          fprintf(*MEMORY[0x29EDCA610], "[%7d] DIR mkdir: %s\n", *v12, &__dst[18]);
        }

        memset(&v68, 0, sizeof(v68));
        if (!lstat(v74, &v68) && (v68.st_mode & 0xF000) != 0x4000)
        {
          unlink(v74);
        }

        if (mkdir(v74, 0x1EDu) && *__error() != 17)
        {
          v57 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1706, 2, *v57, "%s", v74);
          v55 = 0;
        }

        if ((__dst[0] & 6) != 0)
        {
          if ((__dst[0] & 4) != 0)
          {
            v58 = HIDWORD(__dst[1]);
          }

          else
          {
            v58 = -1;
          }

          if ((__dst[0] & 2) != 0)
          {
            v59 = __dst[1];
          }

          else
          {
            v59 = -1;
          }

          chown(v74, v59, v58);
        }

        v56 = HIDWORD(__dst[0]);
      }

      if (v56 == 70 && (__dst[0] & 0x200) == 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1720, 2, 0, "Regular file is missing DAT blob: %s", &__dst[18]);
        v55 = 0;
      }

      if (pthread_mutex_lock((v11 + 1056)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_131:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1729, 2, 0, "SharedArrayPop", v67);
        goto LABEL_73;
      }

      while (1)
      {
        v60 = *(v11 + 1040);
        if (v60)
        {
          break;
        }

        if (pthread_cond_wait((v11 + 1120), (v11 + 1056)))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
          goto LABEL_131;
        }
      }

      v61 = v60 - 1;
      *(v11 + 1040) = v61;
      *(v11 + 1340) = *(*(v11 + 1048) + 4 * v61);
      if (pthread_mutex_unlock((v11 + 1056)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
        goto LABEL_131;
      }

      v66 = *(v11 + 1176) + 304 * *(v11 + 1340);
      if (SemAcquire(v66 + 144))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1740, 2, 0, "SemAcquire");
        v55 = 0;
      }

      *(v11 + 1344) = 1;
      v68.st_dev = 1;
      if (writeToThread(v66, &v68, 4uLL))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1748, 2, 0, "writeToThread");
        v55 = 0;
      }

      if (writeToThread(v66, __dst, 0x890uLL))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1749, 2, 0, "writeToThread");
        v55 = 0;
      }

      if (writeToThread(v66, v69, 0x58uLL))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1750, 2, 0, "writeToThread");
        if (!writeToThread(v66, (v11 + 1320), 4uLL))
        {
          goto LABEL_73;
        }
      }

      else if (!writeToThread(v66, (v11 + 1320), 4uLL))
      {
        if (v55)
        {
          return;
        }

LABEL_73:
        *(v11 + 1184) = 1;
        return;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1751, 2, 0, "writeToThread");
      goto LABEL_73;
    }

LABEL_72:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBeginProc", 1676, 2, 0, "extractInsertEntry: %s");
    goto LABEL_73;
  }

  *(v11 + 1332) = 1;
  v14 = *(*v11 + 112);
  if (v14)
  {
    v15 = *(*v11 + 144);

    v14(v15, v10, v8, v6, v4, v2);
  }
}

_DWORD *extractBlobProc(_DWORD *result, _DWORD *a2)
{
  v3 = result;
  if (result[333])
  {
    v4 = *(*result + 120);
    if (v4)
    {
      result = v4(*(*result + 144), a2);
    }
  }

  if ((v3[330] & 0x80000000) == 0 && !v3[331])
  {
    v5 = *(v3 + 147);
    v6 = v3[335];
    v3[332] = 0;
    v7 = *a2 & 0xDFDFDF;
    if (v7 == 4997953)
    {
      v9 = 4;
    }

    else if (v7 == 5521752)
    {
      v9 = 3;
    }

    else
    {
      v8 = v3 + 332;
      if (v7 != 5521732 || v3[334])
      {
LABEL_15:
        *v8 = 1;
        return result;
      }

      v9 = 2;
    }

    v10 = v9;
    result = writeToThread(v5 + 304 * v6, &v10, 4uLL);
    if (!result)
    {
      return result;
    }

    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractBlobProc", 1790, 2, 0, "writeToThread");
    v8 = v3 + 296;
    goto LABEL_15;
  }

  return result;
}

uint64_t extractPayloadProc(uint64_t result, char *a2, unint64_t a3)
{
  v5 = result;
  *(result + 1368) += a3;
  if (*(result + 1332))
  {
    v6 = *(*result + 128);
    if (v6)
    {
      result = v6(*(*result + 144), a2, a3);
    }
  }

  if ((*(v5 + 1320) & 0x80000000) == 0 && !*(v5 + 1324) && !*(v5 + 1328))
  {
    result = writeToThread(*(v5 + 1176) + 304 * *(v5 + 1340), a2, a3);
    if (result)
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractPayloadProc", 1819, 2, 0, "extractWriteToThread");
      *(v5 + 1184) = 1;
    }
  }

  return result;
}

uint64_t extractEndProc(uint64_t result)
{
  v1 = result;
  *(result + 1360) = *(result + 1368);
  if (*(result + 1332))
  {
    v2 = *(*result + 136);
    if (v2)
    {
      result = v2(*(*result + 144));
    }
  }

  if ((*(v1 + 1320) & 0x80000000) == 0)
  {
    if (*(v1 + 1324))
    {
      result = inFlightQueueRetire();
      if ((result & 0x80000000) == 0)
      {
LABEL_7:
        *(v1 + 1320) = -1;
        *(v1 + 1340) = -1;
        return result;
      }

      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractEndProc", 1870, 2, 0, "Updating entry state");
    }

    else
    {
      v3 = *(v1 + 1176) + 304 * *(v1 + 1340);
      v5 = 5;
      if (writeToThread(v3, &v5, 4uLL))
      {
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractEndProc", 1859, 2, 0, "extractWriteToThread");
      }

      else if (writeToThread(v3, (v1 + 1360), 8uLL))
      {
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractEndProc", 1860, 2, 0, "extractWriteToThread");
      }

      else
      {
        *(v1 + 1344) = 0;
        if (!pthread_mutex_lock((v3 + 32)))
        {
          v4 = *(v3 + 24);
          *(v3 + 24) = v4 + 1;
          if (v4 || !pthread_cond_broadcast((v3 + 96)))
          {
            result = pthread_mutex_unlock((v3 + 32));
            if (!result)
            {
              goto LABEL_7;
            }
          }
        }

        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "extractEndProc", 1865, 2, 0, "SemRelease");
      }
    }

    *(v1 + 1184) = 1;
  }

  return result;
}

uint64_t SharedArrayPush_0(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = *a1;
    if (*a1 < v5)
    {
      *(*(a1 + 1) + 4 * v4) = a2;
      v6 = *a1;
    }

    *a1 = v6 + 1;
    if (v6 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      }

      else
      {
        if (v4 < v5)
        {
          return 0;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t inFlightQueueRetire()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v45 = *MEMORY[0x29EDCA608];
  if (pthread_mutex_lock((v0 + 1192)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 476, 2, 0, "pthread_mutex_lock");
    return 0xFFFFFFFFLL;
  }

  v7 = inFlightQueueEntry(v5, v4);
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 480, 2, 0, "couldn't locate entry [%d] in queue");
LABEL_17:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v8 = *(v7 + 2300);
  if (v8 <= 2)
  {
    if (v8)
    {
LABEL_16:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 485, 2, 0, "Invalid entry state [%d] %s: %s", v4);
      goto LABEL_17;
    }

    *(v7 + 2300) = v2;
    v8 = v2;
  }

  else if (v8 <= 4 || v8 != 7)
  {
    goto LABEL_16;
  }

  v9 = MEMORY[0x29EDCA610];
  if (**v5 >= 3)
  {
    if (v8 > 7)
    {
      v10 = "???";
    }

    else
    {
      v10 = (&off_29EE89A48)[v8];
    }

    fprintf(*MEMORY[0x29EDCA610], "[%7d] retiring %s: %s\n", v4, v10, (v7 + 144));
  }

  if (!*(v5 + 1392))
  {
    v6 = 0;
    goto LABEL_18;
  }

  v12 = *(v5 + 1400);
  v13 = 1;
  do
  {
    v14 = *(v5 + 1416) + 2320 * v12;
    v15 = *(v14 + 2300);
    if (v15 == 1)
    {
      v17 = *(v14 + 4);
      if (v17 == 72)
      {
        bzero(__src, 0x800uLL);
        bzero(v44, 0x800uLL);
        if ((concatExtractPath(__src, 0x800uLL, (v5 + 12), (v14 + 144)) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 506, 2, 0, "invalid path: %s");
          goto LABEL_17;
        }

        if (concatPath(v44, 0x800uLL, (v5 + 12), (v14 + 1168)))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 507, 2, 0, "concatPath", v40, v41, v42);
          goto LABEL_17;
        }

        if (**v5 >= 3)
        {
          fprintf(*v9, "[%7d] HLINK (legacy) %s -> %s\n", *(v14 + 2296), (v14 + 144), v44);
        }

        unlink(__src);
        if (link(v44, __src))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 521, 2, "%s", __src);
          LODWORD(v15) = 7;
        }

        else
        {
          LODWORD(v15) = 3;
        }

        *(v14 + 2300) = v15;
        v15 = v15;
      }

      else if (v17 == 120)
      {
        bzero(__src, 0x800uLL);
        bzero(v44, 0x800uLL);
        if ((concatExtractPath(__src, 0x800uLL, (v5 + 12), (v14 + 144)) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 533, 2, 0, "invalid path: %s");
          goto LABEL_17;
        }

        if (concatPath(v44, 0x800uLL, (v5 + 12), (v14 + 1168)))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 534, 2, 0, "concatPath", v40, v41, v42);
          goto LABEL_17;
        }

        if (**v5 >= 3)
        {
          fprintf(*v9, "[%7d] HLINK %s -> %s\n", *(v14 + 2296), (v14 + 144), (v14 + 1168));
        }

        unlink(__src);
        if (link(v44, __src))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 548, 2, "%s", __src);
          LODWORD(v15) = 7;
        }

        else
        {
          LODWORD(v15) = 3;
        }

        *(v14 + 2300) = v15;
        v15 = v15;
      }

      else
      {
        v18 = *(v14 + 4);
        if (v18 != 121)
        {
          if (v18 != 68)
          {
LABEL_63:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 608, 2, 0, "Invalid entry state [%d] %s: %s", v4);
            goto LABEL_110;
          }

          v19 = (*v14 & 8) != 0 && *(v14 + 16) != 0;
          if ((*v14 & 0x10) != 0 && (~*(v14 + 20) & 0x1ED) != 0)
          {
            v19 = 1;
          }

          if (*(v14 + 2288))
          {
            v20 = 0;
          }

          else
          {
            v20 = (*v14 & 0x100) == 0;
          }

          if (v20 && *(v14 + 2280) == 0 && !v19)
          {
            *(v14 + 2300) = 3;
LABEL_27:
            if ((setEntryAttributes(v5, v14) & 0x80000000) != 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 599, 2, 0, "setEntryAttributes failed");
              v16 = 1;
              v15 = 7;
            }

            else
            {
              v16 = 1;
              v15 = 4;
            }
          }

          else
          {
            v16 = 0;
            v15 = 6;
          }

          *(v14 + 2300) = v15;
          goto LABEL_80;
        }

        bzero(__src, 0x800uLL);
        bzero(v44, 0x800uLL);
        if ((concatExtractPath(__src, 0x800uLL, (v5 + 12), (v14 + 144)) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 560, 2, 0, "invalid path: %s");
          goto LABEL_17;
        }

        if (concatPath(v44, 0x800uLL, (v5 + 12), (v14 + 1168)))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 561, 2, 0, "concatPath");
          goto LABEL_17;
        }

        if (**v5 >= 3)
        {
          fprintf(*v9, "[%7d] CLONE %s -> %s\n", *(v14 + 2296), (v14 + 144), (v14 + 1168));
        }

        unlink(__src);
        if (clonefile(v44, __src, 0) && (copyFileSegment(v44, 0, 0xFFFFFFFFFFFFFFFFLL, __src) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 572, 2, 0, "cloning file, falling back to copy, failed: %s", __src);
          v13 = 0;
        }

        *(v14 + 2300) = 3;
        v15 = 3;
      }
    }

    else if (!*(v14 + 2300))
    {
      break;
    }

    if (v15 == 3)
    {
      goto LABEL_27;
    }

    if ((v15 & 0xFFFFFFFC) != 4)
    {
      goto LABEL_63;
    }

    v16 = 1;
LABEL_80:
    v23 = *v5;
    if (*(*v5 + 80))
    {
      v24 = *(v23 + 24);
      if ((v24 & 8) != 0)
      {
        *v14 |= 0x20u;
        *(v14 + 24) = v15 == 7;
        v23 = *v5;
        v24 = *(*v5 + 24);
      }

      if ((v24 & 0x20000) != 0)
      {
        *v14 |= 0x40u;
        *(v14 + 32) = *(v14 + 2312);
        v23 = *v5;
      }

      (*(v23 + 80))(*(v23 + 144), v14);
      v15 = *(v14 + 2300);
    }

    if (v15 == 7)
    {
      ++*(v5 + 1448);
    }

    if (**v5 < 2 || v15 == 5)
    {
      if (v16)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v15 == 7)
      {
        fprintf(*v9, "%s (with errors)\n");
      }

      else
      {
        fprintf(*v9, "%s\n");
      }

      if (v16)
      {
LABEL_94:
        MemBufferDestroy(*(v14 + 2280));
        MemBufferDestroy(*(v14 + 2288));
        goto LABEL_111;
      }
    }

    v26 = *(v5 + 1432);
    v27 = *(v5 + 1424);
    v28 = *(v5 + 1440);
    if (v26 >= v27)
    {
      v29 = v27 + (v27 >> 1);
      v20 = v27 == 0;
      v30 = 16;
      if (!v20)
      {
        v30 = v29;
      }

      *(v5 + 1424) = v30;
      v31 = reallocf(v28, 16 * v30);
      *(v5 + 1440) = v31;
      if (!v31)
      {
        v37 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 646, 2, v37, "Allocating deferred stack", v40, v41, v42);
        goto LABEL_110;
      }

      v28 = v31;
      v26 = *(v5 + 1432);
      bzero(&v31[16 * v26], 16 * (*(v5 + 1424) - v26));
    }

    v32 = &v28[16 * v26];
    v33 = pc_zero_coder_encode(__src, 2610, v14, 2320);
    *(v32 + 1) = v33;
    if (v33)
    {
      v34 = v33;
      v35 = malloc(v33);
      *v32 = v35;
      if (v35)
      {
        memcpy(v35, __src, v34);
        ++*(v5 + 1432);
        atomic_fetch_add_explicit((v5 + 1520), 1uLL, memory_order_relaxed);
        goto LABEL_111;
      }

      v36 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 661, 2, v36, "Allocating deferred entry", v40, v41, v42);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Extract.c", "inFlightQueueRetire", 657, 2, 0, "zero_coder_encode", v40, v41, v42);
    }

LABEL_110:
    v13 = 0;
LABEL_111:
    bzero(v14, 0x910uLL);
    v38 = *(v5 + 1400);
    if (v38 + 1 == *(v5 + 1384))
    {
      v12 = 0;
    }

    else
    {
      v12 = v38 + 1;
    }

    *(v5 + 1400) = v12;
    v39 = *(v5 + 1392) - 1;
    *(v5 + 1392) = v39;
  }

  while (v39);
  if (v13)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

LABEL_18:
  pthread_mutex_unlock((v5 + 1192));
  return v6;
}

unsigned int *ThreadPoolCreate(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0xA8uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v8 = calloc(a1, 0xA8uLL);
    *(v7 + 1) = v8;
    if (v8)
    {
      v9 = *v7;
      v7[8] = 0;
      v7[9] = v9;
      v10 = calloc(v9, 4uLL);
      *(v7 + 5) = v10;
      if (v10)
      {
        if (pthread_mutex_init((v7 + 12), 0))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
        }

        else
        {
          if (!pthread_cond_init((v7 + 28), 0))
          {
            v7[4] = -1;
            if (!*v7)
            {
              return v7;
            }

            v15 = 0;
            v16 = 0;
            while (1)
            {
              v17 = *(v7 + 1) + v15;
              *(v17 + 16) = v7;
              *(v17 + 8) = v16;
              *(v17 + 24) = *(a2 + 8 * v16);
              *(v17 + 32) = a3;
              *(v17 + 40) = 0;
              if (pthread_mutex_init((v17 + 48), 0) || pthread_cond_init((v17 + 112), 0))
              {
                v12 = "SemInit";
                v13 = 115;
                goto LABEL_12;
              }

              if ((createThread(v17, threadPoolWorkerThreadProc, v17, 0) & 0x80000000) != 0)
              {
                break;
              }

              ++v16;
              v15 += 168;
              if (v16 >= *v7)
              {
                return v7;
              }
            }

            v12 = "Thread creation";
            v13 = 116;
            goto LABEL_12;
          }

          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
        }
      }

      else
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
      }

      v12 = "SharedArrayInit";
      v13 = 104;
LABEL_12:
      v11 = 0;
      goto LABEL_13;
    }

    v11 = *__error();
    v12 = "malloc";
    v13 = 103;
  }

  else
  {
    v11 = *__error();
    v12 = "malloc";
    v13 = 98;
  }

LABEL_13:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolCreate", v13, 90, v11, v12);
  ThreadPoolDestroy(v7);
  return 0;
}

uint64_t threadPoolWorkerThreadProc(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  if (pthread_mutex_lock((v2 + 48)))
  {
LABEL_2:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
  }

  else
  {
    while (1)
    {
      v4 = *(v2 + 32);
      v5 = *(v2 + 36);
      v6 = v4;
      if (v4 < v5)
      {
        *(*(v2 + 40) + 4 * v4) = v3;
        v6 = *(v2 + 32);
      }

      *(v2 + 32) = v6 + 1;
      if (!v6)
      {
        if (pthread_cond_broadcast((v2 + 112)))
        {
          break;
        }
      }

      if (pthread_mutex_unlock((v2 + 48)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
        goto LABEL_3;
      }

      if (v4 >= v5)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
        goto LABEL_3;
      }

      if (pthread_mutex_lock((a1 + 48)))
      {
        goto LABEL_21;
      }

      while (1)
      {
        v7 = *(a1 + 40);
        if (v7 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 112), (a1 + 48)))
        {
          goto LABEL_21;
        }
      }

      *(a1 + 40) = v7 - 1;
      if (pthread_mutex_unlock((a1 + 48)))
      {
LABEL_21:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 59, 90, 0, "SemAcquire");
        goto LABEL_22;
      }

      v8 = *(a1 + 160);
      if (v8 != -2)
      {
        if (v8 < 0)
        {
          return a1;
        }

        if (((*(a1 + 32))(*(a1 + 24)) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 72, 90, 0, "worker proc reported an error");
          atomic_fetch_add_explicit((v2 + 160), 1u, memory_order_relaxed);
        }
      }

      v3 = *(a1 + 8);
      if (pthread_mutex_lock((v2 + 48)))
      {
        goto LABEL_2;
      }
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
  }

LABEL_3:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "threadPoolWorkerThreadProc", 56, 90, 0, "SharedArrayPush");
LABEL_22:
  atomic_fetch_add_explicit((v2 + 160), 1u, memory_order_relaxed);
  return a1;
}

uint64_t ThreadPoolDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *result;
      if (!v3)
      {
        v7 = 1;
        goto LABEL_37;
      }

      v4 = 0;
      do
      {
        v5 = *v2;
        v2 += 21;
        if (v5)
        {
          ++v4;
        }

        --v3;
      }

      while (v3);
      if (v4)
      {
        v6 = 0;
        v7 = 1;
        while (1)
        {
          if (pthread_mutex_lock((v1 + 12)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_15:
            v9 = -1;
          }

          else
          {
            while (1)
            {
              v8 = v1[8];
              if (v8)
              {
                break;
              }

              if (pthread_cond_wait((v1 + 28), (v1 + 12)))
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
                goto LABEL_15;
              }
            }

            v12 = v8 - 1;
            v1[8] = v12;
            v9 = *(*(v1 + 5) + 4 * v12);
            if (!pthread_mutex_unlock((v1 + 12)))
            {
              goto LABEL_17;
            }

            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 147, 90, 0, "SharedArrayPop");
          v7 = 0;
LABEL_17:
          v10 = *(v1 + 1) + 168 * v9;
          *(v10 + 160) = -1;
          if (pthread_mutex_lock((v10 + 48)) || (v11 = *(v10 + 40), *(v10 + 40) = v11 + 1, !v11) && pthread_cond_broadcast((v10 + 112)) || pthread_mutex_unlock((v10 + 48)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 155, 90, 0, "SemRelease");
            v7 = 0;
          }

          if ((joinThread(*v10) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 156, 90, 0, "joinThread");
            v7 = 0;
          }

          *v10 = 0;
          if (++v6 == v4)
          {
            if (!*v1)
            {
              goto LABEL_37;
            }

            goto LABEL_33;
          }
        }
      }

      v7 = 1;
LABEL_33:
      v13 = 0;
      v14 = 112;
      do
      {
        v15 = (*(v1 + 1) + v14);
        if (!pthread_mutex_destroy(&v15[-2].__opaque[24]))
        {
          pthread_cond_destroy(v15);
        }

        ++v13;
        v14 += 168;
      }

      while (v13 < *v1);
LABEL_37:
      free(*(v1 + 1));
      *(v1 + 1) = 0;
    }

    else
    {
      v7 = 1;
    }

    if (!pthread_mutex_destroy((v1 + 12)) && !pthread_cond_destroy((v1 + 28)))
    {
      free(*(v1 + 5));
    }

    v16 = atomic_load(v1 + 40);
    if (v16 >= 1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolDestroy", 171, 90, 0, "Threads reported errors");
      v7 = 0;
    }

    free(v1);
    if (v7)
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

uint64_t ThreadPoolGetWorker(uint64_t a1)
{
  if (*(a1 + 16) != -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolGetWorker", 182, 90, 0, "Missing call to RunWorker before GetWorker");
    return 0;
  }

  if (pthread_mutex_lock((a1 + 48)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolGetWorker", 186, 90, 0, "SharedArrayPop failed");
    return 0;
  }

  while (1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 112), (a1 + 48)))
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
      goto LABEL_10;
    }
  }

  v3 = v2 - 1;
  *(a1 + 32) = v3;
  v4 = *(*(a1 + 40) + 4 * v3);
  if (pthread_mutex_unlock((a1 + 48)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
    goto LABEL_10;
  }

  *(a1 + 16) = v4;
  return *(*(a1 + 8) + 168 * v4 + 24);
}

uint64_t ThreadPoolRunWorker(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolRunWorker", 199, 90, 0, "Missing call to GetWorker before RunWorker");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = -1;
  v2 = *(a1 + 8) + 168 * v1;
  v3 = *(a1 + 24);
  *(a1 + 24) = v3 + 1;
  *(v2 + 160) = v3;
  if (pthread_mutex_lock((v2 + 48)) || (v4 = *(v2 + 40), *(v2 + 40) = v4 + 1, !v4) && pthread_cond_broadcast((v2 + 112)) || (result = pthread_mutex_unlock((v2 + 48)), result))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolRunWorker", 211, 90, 0, "SemRelease failed");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ThreadPoolSync(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    v7 = 1;
    goto LABEL_30;
  }

  v3 = 0;
  v4 = *(a1 + 1);
  do
  {
    v5 = *v4;
    v4 += 21;
    if (v5)
    {
      ++v3;
    }

    --v1;
  }

  while (v1);
  if (v3)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      if (pthread_mutex_lock((a1 + 12)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
      }

      else
      {
        while (1)
        {
          v8 = a1[8];
          if (v8)
          {
            break;
          }

          if (pthread_cond_wait((a1 + 28), (a1 + 12)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
            goto LABEL_15;
          }
        }

        a1[8] = v8 - 1;
        if (!pthread_mutex_unlock((a1 + 12)))
        {
          goto LABEL_16;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
      }

LABEL_15:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolSync", 231, 90, 0, "SharedArrayPop");
      v7 = 0;
LABEL_16:
      if (++v6 == v3)
      {
        if (!*a1)
        {
          goto LABEL_30;
        }

        goto LABEL_21;
      }
    }
  }

  v7 = 1;
LABEL_21:
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(a1 + 1);
    if (*(v11 + v9))
    {
      if ((v12 = v11 + v9, *(v11 + v9 + 160) = -2, pthread_mutex_lock((v11 + v9 + 48))) || (v13 = *(v12 + 40), *(v12 + 40) = v13 + 1, !v13) && pthread_cond_broadcast((v11 + v9 + 112)) || pthread_mutex_unlock((v12 + 48)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ThreadPool.c", "ThreadPoolSync", 240, 90, 0, "SemRelease");
        v7 = 0;
      }
    }

    ++v10;
    v9 += 168;
  }

  while (v10 < *a1);
LABEL_30:
  if (v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t RawImageGetPatchInfo(__int128 *a1, unint64_t a2, void *__s)
{
  if (a2 <= 0x2D)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImageGetPatchInfo", 488, 135, 0, "invalid patch size");
    return 0xFFFFFFFFLL;
  }

  v8 = *a1;
  *v9 = a1[1];
  *&v9[14] = *(a1 + 30);
  v3 = *(a1 + 1);
  v5 = *a1 != 0x3031464649444952 || v3 == 0 || (a1[1] >> 16) == 0;
  if (v5 || *&v9[14] < 0x2FuLL || *&v9[14] >= *&v9[22])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImageGetPatchInfo", 497, 135, 0, "bad header", v8, *v9, *&v9[8]);
    return 0xFFFFFFFFLL;
  }

  if (__s)
  {
    memset_s(__s, 0x10uLL, 0, 0x10uLL);
  }

  *(__s + 2) = v3 == 1;
  result = 0;
  if (BYTE10(v8))
  {
    *(__s + 3) = 1;
  }

  return result;
}

uint64_t RawImagePatchInternal(uint64_t a1, AAByteStream_impl *a2)
{
  v5 = *(a1 + 40);
  DefaultNThreads = *(a1 + 44);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
    *(a1 + 44) = DefaultNThreads;
  }

  if (DefaultNThreads >= 3)
  {
    *(a1 + 44) = 2;
  }

  if (!*(a1 + 16))
  {
    *(a1 + 16) = *(a1 + 24);
  }

  v6 = a2;
  if (!a2)
  {
    v16 = AAFileStreamOpenWithPath(*(a1 + 32), 0, 0);
    v6 = v16;
    if (!v16)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 542, 135, 0, "AAFileStreamOpenWithPath");
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v19 = 0;
      v18 = 0;
      goto LABEL_30;
    }

    if ((v5 & 1) != 0 && (io_set_nocache(v16) & 0x80000000) != 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 543, 135, "io_set_nocache %s", *(a1 + 32));
    }
  }

  v7 = malloc(0x2EuLL);
  v8 = v7;
  if (!v7)
  {
    v15 = *__error();
    v13 = "aaMalloc";
    v14 = 108;
    goto LABEL_24;
  }

  if (!*(v6 + 2))
  {
    goto LABEL_17;
  }

  v9 = 0;
  v10 = 46;
  v11 = v7;
  do
  {
    v12 = (*(v6 + 2))(*v6, v11, v10);
    if (v12 < 0)
    {
      goto LABEL_17;
    }

    if (!v12)
    {
      break;
    }

    v11 = (v11 + v12);
    v9 += v12;
    v10 -= v12;
  }

  while (v10);
  if (v9 != 46)
  {
LABEL_17:
    v13 = "aaByteStreamReadExpected";
    v14 = 110;
    goto LABEL_18;
  }

  if (*v8 != 0x3031464649444952 || !*(v8 + 4) || !*(v8 + 18) || (v24 = *(v8 + 30), v24 < 0x2F) || v24 >= *(v8 + 38))
  {
    v13 = "bad header";
    v14 = 118;
LABEL_18:
    v15 = 0;
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", v14, 135, v15, v13);
LABEL_25:
    free(v8);
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 548, 135, *v17, "patch_read_header");
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_26:
    v22 = 0;
    goto LABEL_27;
  }

  if (v24 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_50:
    v32 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", 122, 135, *v32, "aaReallocf");
    v8 = 0;
    goto LABEL_25;
  }

  v25 = realloc(v8, v24);
  if (!v25)
  {
    free(v8);
    goto LABEL_50;
  }

  v21 = v25;
  v26 = *(v25 + 30) - 46;
  v27 = v25 + 46;
  if (*(v6 + 2))
  {
    if (*(v25 + 30) == 46)
    {
      goto LABEL_54;
    }

    v28 = 0;
    v29 = v25 + 46;
    v30 = *(v25 + 30) - 46;
    while (1)
    {
      v31 = (*(v6 + 2))(*v6, v29, v30);
      if (v31 < 0)
      {
        break;
      }

      if (v31)
      {
        v29 += v31;
        v28 += v31;
        v30 -= v31;
        if (v30)
        {
          continue;
        }
      }

      goto LABEL_53;
    }

    v28 = v31;
  }

  else
  {
    v28 = -1;
  }

LABEL_53:
  if (v26 != v28)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", 124, 135, 0, "aaByteStreamReadExpected");
LABEL_62:
    v8 = v21;
    goto LABEL_25;
  }

LABEL_54:
  v33 = *(v21 + 38);
  v34 = *(v21 + 4);
  v35 = v34 + 1;
  v36 = 46;
  do
  {
    v37 = *&v21[v36];
    if (v33 >= v37)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", 130, 135, 0, "bad header");
      goto LABEL_62;
    }

    v36 += 8;
    v33 = v37;
    --v35;
  }

  while (v35);
  v203 = v27;
  if (*(a1 + 48) >= 1)
  {
    v38 = MEMORY[0x29EDCA610];
    if (v34 == 1)
    {
      v39 = "*full replacement*";
    }

    else
    {
      v39 = *(a1 + 16);
    }

    v40 = "(stream based)";
    if (*(a1 + 32))
    {
      v40 = *(a1 + 32);
    }

    v41 = *(a1 + 40);
    if (v41)
    {
      v42 = "no";
    }

    else
    {
      v42 = "yes";
    }

    if ((v41 & 2) != 0)
    {
      v43 = "yes";
    }

    else
    {
      v43 = "no";
    }

    fprintf(*MEMORY[0x29EDCA610], "ImagePatch\n  Input:        %s\n  Output:       %s\n  Patch:        %s\n  CryptexCache: %s\n  StaticContent: %s\n", v39, *(a1 + 24), v40, v42, v43);
    if (*(a1 + 48) >= 2)
    {
      fprintf(*v38, "  - Variants:   %d\n  - Flags:      %llx\n  - # controls: %llu\n  - Patch size: %llu bytes\n    - Metadata: %llu bytes\n    - Controls: %llu bytes\n", *(v21 + 4), *(v21 + 10), *(v21 + 18), *&v27[8 * *(v21 + 4)], *(v21 + 38) - *(v21 + 30), *(v21 + 46) - *(v21 + 38));
      if (*(v21 + 4))
      {
        v44 = 0;
        v45 = v21 + 54;
        do
        {
          if (v44)
          {
            v46 = "Diff";
          }

          else
          {
            v46 = "Literal";
          }

          ++v44;
          fprintf(*v38, "    - %s stream: %llu bytes\n", v46, *v45 - *(v45 - 1));
          ++v45;
        }

        while (v44 < *(v21 + 4));
      }
    }
  }

  v47 = aaIntervalInputStreamOpen(v6, *(v21 + 30), *(v21 + 38));
  v48 = v47;
  if (!v47)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 187, 135, 0, "aaIntervalInputStreamOpen");
    v20 = 0;
    v51 = 0;
    goto LABEL_94;
  }

  v49 = *(a1 + 48);
  if (v49 <= 3)
  {
    v50 = v49 << 62;
  }

  else
  {
    v50 = 0xC000000000000000;
  }

  v51 = AADecompressionInputStreamOpen(v47, v50, *(a1 + 44));
  if (!v51)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 189, 135, 0, "AADecompressionInputStreamOpen");
    v20 = 0;
    goto LABEL_94;
  }

  v20 = calloc(*(v21 + 4), 8uLL);
  if (!v20)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 193, 135, 0, "aaCalloc");
    goto LABEL_94;
  }

  if (*(v21 + 4))
  {
    v52 = 0;
    while (1)
    {
      v53 = rawimg_create_with_stream(v51, v52 == 0);
      v20[v52] = v53;
      if (!v53)
      {
        break;
      }

      if (++v52 >= *(v21 + 4))
      {
        goto LABEL_89;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 199, 135, 0, "rawimg_create_with_stream");
LABEL_94:
    free(v20);
    v54 = 1;
  }

  else
  {
LABEL_89:
    v54 = 0;
  }

  v55 = AAByteStreamClose(v51);
  v56 = AAByteStreamClose(v48);
  if (!v20 || (v54 & 1) != 0 || v56 < 0 || v55 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 552, 135, 0, "patch_read_variants");
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_26;
  }

  v57 = calloc(*(v21 + 4), 0x20uLL);
  v22 = v57;
  if (!v57)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 556, 135, 0, "aaCalloc");
    v19 = 0;
    goto LABEL_379;
  }

  if (*(v21 + 4))
  {
    v58 = 0;
    v59 = v57;
    do
    {
      v60 = *(v20[v58] + 2104);
      *v59 = *(v20[v58] + 2088);
      v59[1] = v60;
      v59 += 2;
      ++v58;
      v61 = *(v21 + 4);
    }

    while (v58 < v61);
    *(*v20 + 2048) = *(a1 + 24);
    if (v61 == 1)
    {
      v19 = 0;
      v181 = 0;
      v187 = 0;
      s = 0;
      v199 = 0;
      compressed_stream = 0;
      v190 = 0;
      v62 = *v20;
      v63 = *(a1 + 40);
      v64 = v63 & 1;
      goto LABEL_105;
    }
  }

  else
  {
    *(*v20 + 2048) = *(a1 + 24);
  }

  v67 = malloc(0x2000uLL);
  v19 = v67;
  if (!v67)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 568, 135, 0, "aaMalloc");
    goto LABEL_379;
  }

  saveThreadErrorContext(v67);
  v68 = *(v21 + 4);
  if (!*(v21 + 4))
  {
LABEL_137:
    restoreThreadErrorContext(v19);
    goto LABEL_138;
  }

  v69 = &v22[4 * v68 - 4];
  v70 = (v20 - 1);
  while (1)
  {
    v205 = v68;
    v71 = v68 - 1;
    *(*&v70[8 * v68] + 2048) = *(a1 + 16);
    if (!rawimg_get_digests(*&v70[8 * v68], 4u, 1, 1))
    {
      v72 = *&v70[8 * v205];
      v73 = v72[261];
      v74 = v72[262];
      v75 = v72[263];
      v76 = v72[264];
      v77 = *v69 == v73 && v69[1] == v74;
      v78 = v77 && v69[2] == v75;
      if (v78 && v69[3] == v76)
      {
        break;
      }
    }

    v69 -= 4;
    v68 = v71;
    if (!v71)
    {
      goto LABEL_137;
    }
  }

  restoreThreadErrorContext(v19);
  v181 = v71;
  if ((v71 & 0x80000000) != 0)
  {
LABEL_138:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 586, 135, 0, "ImagePatch: No variant found");
    goto LABEL_379;
  }

  if (v205 != 1)
  {
    v196 = v71 & 0x7FFFFFFF;
    v126 = &v22[4 * v196];
    v127 = *v126;
    v128 = v126[1];
    v130 = v126[2];
    v129 = v126[3];
    if (*v22 != v127 || v22[1] != v128 || v22[2] != v130 || v22[3] != v129)
    {
      rawimg_show(v20[v196], 0, *(a1 + 48));
      v63 = *(a1 + 40);
      v64 = v63 & 1;
      v197 = *v20;
      v200 = v20[v196];
      v134 = v200[256];
      v194 = strcmp(v134, *(*v20 + 2048));
      if (v194)
      {
        if (*(v21 + 4) > 1u)
        {
          v187 = AAFileStreamOpenWithPath(v134, 0, 0);
          if (v187)
          {
            if ((v63 & 1) == 0)
            {
              goto LABEL_282;
            }

            if ((io_set_nocache(v187) & 0x80000000) != 0)
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 284, 135, "io_set_nocache %s", v200[256]);
            }

            v135 = *(a1 + 48);
            v136 = v135 <= 3 ? v135 << 62 : 0xC000000000000000;
            v64 = 1;
            v187 = aaCacheStreamOpen(v187, 0x1000000uLL, 0xEu, 1u, v136);
            if (v187)
            {
LABEL_282:
              v201 = 0;
              goto LABEL_336;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 286, 135, 0, "aaCacheStreamOpen");
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 281, 135, 0, "AAFileStreamOpenWithPath");
          }

LABEL_358:
          v191 = 0;
          v193 = 0;
          v195 = 0;
          v190 = 0;
          compressed_stream = 0;
          v204 = 0;
          v206 = 0;
          v199 = 0;
          v201 = 0;
          s = 0;
          v187 = 0;
LABEL_359:
          v188 = 0;
          if (v187 == v201)
          {
            v159 = 0;
          }

          else
          {
            v159 = v187;
          }

          goto LABEL_362;
        }

        v187 = 0;
        s = 0;
        v199 = 0;
        compressed_stream = 0;
        v190 = 0;
LABEL_318:
        v62 = v197;
LABEL_105:
        v197 = v62;
        v201 = AAFileStreamOpenWithPath(*(v62 + 2048), 1538, 0x1A4u);
        if (!v201)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 305, 135, 0, "AAFileStreamOpenWithPath");
          goto LABEL_141;
        }

        if ((v63 & 2) != 0 && (io_hint_static_content(v201) & 0x80000000) != 0)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 308, 135, "ImagePatch: Static content hint failed.");
        }

        if ((io_preallocate(v201, *(v197 + 2120)) & 0x80000000) != 0)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 311, 135, "ImagePatch: Preallocation failed.");
        }

        if (v64)
        {
          if ((io_set_nocache(v201) & 0x80000000) != 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 316, 135, "io_set_nocache %s", *(v197 + 2048));
          }

          v65 = *(a1 + 48);
          if (v65 <= 3)
          {
            v66 = v65 << 62;
          }

          else
          {
            v66 = 0xC000000000000000;
          }

          v180 = 1;
          v201 = aaCacheStreamOpen(v201, 0x100000uLL, 0xEu, 1u, v66);
          if (!v201)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 318, 135, 0, "aaCacheStreamOpen");
LABEL_141:
            v191 = 0;
            v193 = 0;
            v195 = 0;
            v204 = 0;
            v206 = 0;
            v201 = 0;
            goto LABEL_359;
          }
        }

        else
        {
          v180 = 1;
        }

LABEL_143:
        v80 = aaSegmentStreamOpen(v201, v197);
LABEL_144:
        v204 = v80;
        if (v80)
        {
          v206 = aaForkOutputStreamOpen(v80, v197);
          if (!v206)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 324, 135, 0, "aaForkOutputStreamOpen");
            v191 = 0;
            v193 = 0;
            v195 = 0;
            v206 = 0;
            goto LABEL_359;
          }

          v193 = aaIntervalInputStreamOpen(v6, *(v21 + 46), *(v21 + 54));
          if (v193)
          {
            v81 = *(a1 + 48);
            if (v81 <= 3)
            {
              v82 = v81 << 62;
            }

            else
            {
              v82 = 0xC000000000000000;
            }

            v195 = AADecompressionInputStreamOpen(v193, v82, *(a1 + 44));
            if (v195)
            {
              v191 = calloc(1uLL, 0x10040uLL);
              if (!v191)
              {
                v137 = __error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_create", 36, 135, *v137, "aaCalloc");
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 338, 135, 0, "control_reader_create");
                v191 = 0;
                goto LABEL_359;
              }

              *(v191 + 0x2000) = v6;
              *(v191 + 8195) = v21;
              *(v191 + 8196) = a1;
              v83 = *(v21 + 4) + 1;
              *(v191 + 8197) = 0x2000 / v83 * v83;
              *(v191 + 8198) = -1;
              v84 = *(v21 + 18);
              *(v191 + 8199) = v84 * v83;
              v85 = v180;
              if (!v84)
              {
                v85 = 1;
              }

              if (v85)
              {
LABEL_155:
                v188 = calloc(1uLL, 0x20000uLL);
                if (v188)
                {
                  v173 = 0;
                  v170 = 0;
                  v166 = v181;
                  v86 = *(v21 + 18);
                  v167 = 1;
                  while (!v86)
                  {
LABEL_255:
                    v125 = v180;
                    if (v167 > 1)
                    {
                      v125 = 1;
                    }

                    ++v167;
                    if (v125 == 1)
                    {
                      if ((AAByteStreamTruncate(v201) & 0x80000000) == 0)
                      {
                        v198 = 0;
                        goto LABEL_396;
                      }

                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 457, 135, 0, "AAByteStreamTruncate");
LABEL_395:
                      v198 = 1;
LABEL_396:
                      if (v187 == v201)
                      {
                        v159 = 0;
                      }

                      else
                      {
                        v159 = v187;
                      }

                      goto LABEL_363;
                    }
                  }

                  v168 = 0;
                  v169 = 0;
                  v178 = 0;
                  while (2)
                  {
                    v87 = ctrl_reader_get(v191, v168);
                    if (!v87)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 387, 135, 0, "ctrl_reader_get");
                      goto LABEL_395;
                    }

                    v88 = *v87;
                    v89 = v87[1];
                    if ((*v87 & 0x8000000000000000) != 0)
                    {
                      v88 = 0x8000000000000000 - *v87;
                    }

                    v174 = v88;
                    v90 = 0x8000000000000000 - v89;
                    if (v89 >= 0)
                    {
                      v90 = v87[1];
                    }

                    v172 = v90;
                    v91 = v87[v166 + 1];
                    if (v91 < 0)
                    {
                      v91 = 0x8000000000000000 - v91;
                    }

                    v165 = v91;
                    if (v167 == 2)
                    {
                      v178 += v174;
                      if ((v180 & 1) == 0 && v178 < *(v197 + 2056))
                      {
                        goto LABEL_169;
                      }

LABEL_222:
                      if (v172)
                      {
                        v175 = 0;
                        while (1)
                        {
                          v112 = v172 - v175;
                          if (v172 - v175 >= 0x10000)
                          {
                            v112 = 0x10000;
                          }

                          v177 = v112;
                          if (!*(v195 + 2))
                          {
                            goto LABEL_348;
                          }

                          if (v172 == v175)
                          {
                            v113 = 0;
                          }

                          else
                          {
                            v113 = 0;
                            v114 = v188;
                            v115 = v112;
                            while (1)
                            {
                              v116 = (*(v195 + 2))(*v195, v114, v115);
                              if (v116 < 0)
                              {
                                break;
                              }

                              if (v116)
                              {
                                v114 += v116;
                                v113 += v116;
                                v115 -= v116;
                                if (v115)
                                {
                                  continue;
                                }
                              }

                              goto LABEL_235;
                            }

                            v113 = v116;
                          }

LABEL_235:
                          if (v177 != v113)
                          {
LABEL_348:
                            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 439, 135, 0, "aaByteStreamReadExpected");
                            goto LABEL_395;
                          }

                          if (!*(v206 + 5))
                          {
                            goto LABEL_349;
                          }

                          if (v172 == v175)
                          {
                            v184 = 0;
                          }

                          else
                          {
                            v184 = 0;
                            v117 = v188;
                            v119 = v177;
                            v118 = v178;
                            while (1)
                            {
                              v120 = (*(v206 + 5))(*v206, v117, v119, v118);
                              if (v120 < 1)
                              {
                                break;
                              }

                              v117 += v120;
                              v184 += v120;
                              v118 += v120;
                              v119 -= v120;
                              if (!v119)
                              {
                                goto LABEL_244;
                              }
                            }

                            v184 = v120;
                          }

LABEL_244:
                          if (v177 != v184)
                          {
LABEL_349:
                            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 440, 135, 0, "aaByteStreamWriteExpected");
                            goto LABEL_395;
                          }

                          v121 = v177 + v173;
                          v173 += v177;
                          if (*a1)
                          {
                            v122 = v121 > v170;
                          }

                          else
                          {
                            v122 = 0;
                          }

                          if (v122)
                          {
                            v123 = *(v197 + 2080);
                            if (v173 < v123)
                            {
                              v124 = ((v123 >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64;
                              if (((*a1)(*(a1 + 8), v173 / (v123 / 0x64 + 1)) & 0x80000000) != 0)
                              {
                                v164 = 450;
                                goto LABEL_401;
                              }

                              v170 = v173 + (v124 >> 2);
                            }
                          }

                          v178 += v177;
                          v175 += v177;
                          if (v175 >= v172)
                          {
                            goto LABEL_254;
                          }
                        }
                      }

                      goto LABEL_254;
                    }

                    if (!v174)
                    {
LABEL_219:
                      v169 += v165;
                      if ((v180 & 1) != 0 || v167 != 1 || v178 < *(v197 + 2056))
                      {
                        goto LABEL_222;
                      }

LABEL_169:
                      v178 += v172;
LABEL_254:
                      v86 = *(v21 + 18);
                      if (++v168 >= v86)
                      {
                        goto LABEL_255;
                      }

                      continue;
                    }

                    break;
                  }

                  v171 = 0;
                  while (2)
                  {
                    v92 = v174 - v171;
                    if (v174 - v171 >= 0x10000)
                    {
                      v92 = 0x10000;
                    }

                    v176 = v92;
                    if (!v199[4])
                    {
                      goto LABEL_352;
                    }

                    if (v174 == v171)
                    {
                      v182 = 0;
                    }

                    else
                    {
                      v182 = 0;
                      v93 = v188;
                      v94 = v169;
                      v95 = v92;
                      while (1)
                      {
                        v96 = (v199[4])(*v199, v93, v95, v94);
                        if (v96 < 0)
                        {
                          break;
                        }

                        if (v96)
                        {
                          v93 += v96;
                          v182 += v96;
                          v94 += v96;
                          v95 -= v96;
                          if (v95)
                          {
                            continue;
                          }
                        }

                        goto LABEL_183;
                      }

                      v182 = v96;
                    }

LABEL_183:
                    if (v176 != v182)
                    {
LABEL_352:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 400, 135, 0, "aaByteStreamPReadExpected");
                      goto LABEL_395;
                    }

                    v97 = *(v197 + 2072);
                    if (v178 < v97)
                    {
                      if (v176 + v178 > v97)
                      {
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 406, 135, 0, "bad controls");
                        goto LABEL_395;
                      }

                      if (!*(v190 + 2))
                      {
                        goto LABEL_392;
                      }

                      if (v174 == v171)
                      {
                        if (!*(v206 + 5))
                        {
                          goto LABEL_353;
                        }

                        goto LABEL_203;
                      }

                      v98 = 0;
                      v99 = v188 + 0x10000;
                      v100 = v176;
                      while (1)
                      {
                        v101 = (*(v190 + 2))(*v190, v99, v100);
                        if (v101 < 0)
                        {
                          break;
                        }

                        if (v101)
                        {
                          v99 += v101;
                          v98 += v101;
                          v100 -= v101;
                          if (v100)
                          {
                            continue;
                          }
                        }

                        goto LABEL_196;
                      }

                      v98 = v101;
LABEL_196:
                      if (v176 != v98)
                      {
LABEL_392:
                        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 407, 135, 0, "aaByteStreamReadExpected");
                        goto LABEL_395;
                      }

                      v102 = v176;
                      if (v176 <= 1)
                      {
                        v102 = 1;
                      }

                      v103 = v188;
                      do
                      {
                        *v103 += v103[0x10000];
                        ++v103;
                        --v102;
                      }

                      while (v102);
                    }

                    if (!*(v206 + 5))
                    {
                      goto LABEL_353;
                    }

                    if (v174 == v171)
                    {
LABEL_203:
                      v183 = 0;
                    }

                    else
                    {
                      v183 = 0;
                      v104 = v188;
                      v106 = v176;
                      v105 = v178;
                      while (1)
                      {
                        v107 = (*(v206 + 5))(*v206, v104, v106, v105);
                        if (v107 < 1)
                        {
                          break;
                        }

                        v104 += v107;
                        v183 += v107;
                        v105 += v107;
                        v106 -= v107;
                        if (!v106)
                        {
                          goto LABEL_209;
                        }
                      }

                      v183 = v107;
                    }

LABEL_209:
                    if (v176 != v183)
                    {
LABEL_353:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 412, 135, 0, "aaByteStreamWriteExpected");
                      goto LABEL_395;
                    }

                    v108 = v173 + v176;
                    v173 += v176;
                    if (*a1)
                    {
                      v109 = v108 > v170;
                    }

                    else
                    {
                      v109 = 0;
                    }

                    if (v109)
                    {
                      v110 = *(v197 + 2080);
                      if (v173 < v110)
                      {
                        v111 = ((v110 >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64;
                        if (((*a1)(*(a1 + 8), v173 / (v110 / 0x64 + 1)) & 0x80000000) != 0)
                        {
                          v164 = 422;
LABEL_401:
                          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v164, 135, 0, "callback signaled abort");
                          if (v187 == v201)
                          {
                            v159 = 0;
                          }

                          else
                          {
                            v159 = v187;
                          }

                          if (v190)
                          {
                            AAByteStreamCancel(v190);
                          }

                          AAByteStreamCancel(v195);
LABEL_362:
                          v198 = 1;
LABEL_363:
                          if (v191)
                          {
                            AAByteStreamClose(*(v191 + 8194));
                            AAByteStreamClose(*(v191 + 8193));
                            free(v191);
                          }

                          free(v188);
                          AAByteStreamClose(v199);
                          AAByteStreamClose(s);
                          AAByteStreamClose(v159);
                          AAByteStreamClose(v206);
                          AAByteStreamClose(v204);
                          AAByteStreamClose(v201);
                          AAByteStreamClose(v190);
                          AAByteStreamClose(compressed_stream);
                          AAByteStreamClose(v195);
                          AAByteStreamClose(v193);
                          if (v198)
                          {
                            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 621, 135, 0, "patch_apply");
                            goto LABEL_379;
                          }

                          if (rawimg_get_digests(*v20, 4u, 0, 1) || (*v22 == *(*v20 + 2088) ? (v160 = v22[1] == *(*v20 + 2096)) : (v160 = 0), v160 ? (v161 = v22[2] == *(*v20 + 2104)) : (v161 = 0), v161 ? (v162 = v22[3] == *(*v20 + 2112)) : (v162 = 0), !v162))
                          {
                            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 630, 135, 0, "digest mismatch");
                            goto LABEL_379;
                          }

                          if (*(a1 + 48) >= 2)
                          {
                            v143 = *MEMORY[0x29EDCA610];
                            v144 = "ImagePatch: Digest match. Output reconstructed.\n";
                            v145 = 48;
LABEL_386:
                            fwrite(v144, v145, 1uLL, v143);
                          }

                          goto LABEL_387;
                        }

                        v170 = v173 + (v111 >> 2);
                      }
                    }

                    v169 += v176;
                    v178 += v176;
                    v171 += v176;
                    if (v171 >= v174)
                    {
                      goto LABEL_219;
                    }

                    continue;
                  }
                }

                v153 = *__error();
                v151 = "aaCalloc";
                v152 = 371;
              }

              else
              {
                v146 = 0;
                v189 = 0;
                while (1)
                {
                  v147 = ctrl_reader_get(v191, v189);
                  if (!v147)
                  {
                    v151 = "ctrl_reader_get";
                    v152 = 349;
                    goto LABEL_314;
                  }

                  if ((*v147 & 0x8000000000000000) == 0)
                  {
                    v148 = *v147;
                  }

                  else
                  {
                    v148 = 0x8000000000000000 - *v147;
                  }

                  v149 = v147[v181 + 1];
                  if (v149 < 0)
                  {
                    v149 = 0x8000000000000000 - v149;
                  }

                  v179 = v149;
                  if (v148)
                  {
                    break;
                  }

LABEL_311:
                  v146 += v179;
                  if (++v189 >= *(v21 + 18))
                  {
                    goto LABEL_155;
                  }
                }

                while (1)
                {
                  v150 = v148 >= 0x10000 ? 0x10000 : v148;
                  if (v150 != aaByteStreamSimulate(v199))
                  {
                    break;
                  }

                  v146 += v150;
                  v148 -= v150;
                  if (!v148)
                  {
                    goto LABEL_311;
                  }
                }

                v151 = "aaByteStreamSimulate";
                v152 = 358;
LABEL_314:
                v153 = 0;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v152, 135, v153, v151);
              goto LABEL_359;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 330, 135, 0, "AADecompressionInputStreamOpen");
            v191 = 0;
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 328, 135, 0, "aaIntervalInputStreamOpen");
            v191 = 0;
            v193 = 0;
          }

          v195 = 0;
          goto LABEL_359;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 322, 135, 0, "aaSegmentStreamOpen");
        v191 = 0;
        v193 = 0;
        v195 = 0;
      }

      else
      {
        if (v21[10])
        {
          if (*(a1 + 48))
          {
            fprintf(*MEMORY[0x29EDCA610], "ImagePatch: Patching with excess space <= %d bytes.\n", *(v21 + 26));
          }
        }

        else
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 245, 135, "ImagePatch: Patch not created with in place. No bound on needed excess space.");
        }

        v154 = v200[265];
        if (*(v197 + 2120) > v154)
        {
          v154 = *(v197 + 2120);
        }

        v192 = v154;
        v202 = AAFileStreamOpenWithPath(*(v197 + 2048), 2, 0x1A4u);
        if (!v202)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 252, 135, 0, "AAFileStreamOpenWithPath");
          goto LABEL_358;
        }

        if (v63)
        {
          if ((io_set_nocache(v202) & 0x80000000) != 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 257, 135, "io_set_nocache %s", *(v197 + 2048));
          }

          v155 = *(a1 + 48);
          v156 = v155 <= 3 ? v155 << 62 : 0xC000000000000000;
          v202 = aaCacheStreamOpen(v202, 0x1000000uLL, 0xEu, 1u, v156);
          if (!v202)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 259, 135, 0, "aaCacheStreamOpen");
            goto LABEL_358;
          }
        }

        v187 = aaInSituStreamOpen(v202, v192, *(v21 + 26), *(a1 + 48), 1);
        if (!v187)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 264, 135, 0, "aaInSituStreamOpen");
          goto LABEL_358;
        }

        if (*(v21 + 4) <= 1u)
        {
          s = 0;
          v199 = 0;
          compressed_stream = 0;
          v190 = 0;
          v180 = 0;
          v201 = v187;
          v80 = aaSegmentStreamOpen(v187, v197);
          goto LABEL_144;
        }

        v201 = v187;
LABEL_336:
        s = aaSegmentStreamOpen(v187, v200);
        if (!s)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 290, 135, 0, "aaSegmentStreamOpen");
          v191 = 0;
          v193 = 0;
          v195 = 0;
          v190 = 0;
          compressed_stream = 0;
          v204 = 0;
          v206 = 0;
          v199 = 0;
          s = 0;
          goto LABEL_359;
        }

        v199 = aaForkInputStreamOpen(s, v200, 0);
        if (!v199)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 292, 135, 0, "aaForkInputStreamOpen");
          v191 = 0;
          v193 = 0;
          v195 = 0;
          v190 = 0;
          compressed_stream = 0;
          v204 = 0;
          v206 = 0;
          v199 = 0;
          goto LABEL_359;
        }

        compressed_stream = aaIntervalInputStreamOpen(v6, *&v203[8 * v196], *&v203[8 * v205]);
        if (compressed_stream)
        {
          v157 = *(a1 + 48);
          if (v157 <= 3)
          {
            v158 = v157 << 62;
          }

          else
          {
            v158 = 0xC000000000000000;
          }

          v190 = AADecompressionInputStreamOpen(compressed_stream, v158, *(a1 + 44));
          if (v190)
          {
            if (v194)
            {
              goto LABEL_318;
            }

            v180 = 0;
            goto LABEL_143;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 298, 135, 0, "AADecompressionInputStreamOpen");
          v191 = 0;
          v193 = 0;
          v195 = 0;
          v190 = 0;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 296, 135, 0, "aaIntervalInputStreamOpen");
          v191 = 0;
          v193 = 0;
          v195 = 0;
          v190 = 0;
          compressed_stream = 0;
        }
      }

      v204 = 0;
      v206 = 0;
      goto LABEL_359;
    }

    *(*v20 + 2048) = *(a1 + 16);
  }

  v138 = *v20;
  v139 = *(*v20 + 2048);
  v140 = *(a1 + 24);
  v141 = strcmp(v139, v140);
  v142 = *(a1 + 48);
  if (v141)
  {
    if (v142 >= 2)
    {
      fwrite("ImagePatch: Digest match. Copy input to output.\n", 0x30uLL, 1uLL, *MEMORY[0x29EDCA610]);
      v138 = *v20;
    }

    if ((copyFileSegment(v139, 0, *(v138 + 2120), v140) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 607, 135, 0, "copyFileSegment");
      goto LABEL_379;
    }
  }

  else if (v142 >= 2)
  {
    v143 = *MEMORY[0x29EDCA610];
    v144 = "ImagePatch: Digest match. Output already correct.\n";
    v145 = 50;
    goto LABEL_386;
  }

LABEL_387:
  v18 = 1;
  rawimg_show(*v20, 1, *(a1 + 48));
  if (*a1 && ((*a1)(*(a1 + 8), 100) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 641, 135, 0, "callback signaled abort");
LABEL_379:
    v18 = 0;
  }

  if (*(v21 + 4))
  {
    v163 = 0;
    do
    {
      rawimg_destroy(v20[v163++]);
    }

    while (v163 < *(v21 + 4));
  }

LABEL_27:
  if (!a2)
  {
LABEL_30:
    if (AAByteStreamClose(v6) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 649, 135, 0, "AAByteStreamClose");
      v18 = 0;
    }
  }

  free(v22);
  free(v21);
  free(v20);
  free(v19);
  if (v18)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ctrl_reader_get(uint64_t a1, unint64_t a2)
{
  v2 = a1 + 0x10000;
  v3 = *(a1 + 65560);
  if (*(v3 + 18) <= a2)
  {
    return 0;
  }

  v5 = a2 + a2 * *(v3 + 8);
  if (v5 >= *(a1 + 65584))
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 65568);
  *(a1 + 65584) = -*(a1 + 65576);
  AAByteStreamClose(*(a1 + 65552));
  *(v2 + 16) = 0;
  AAByteStreamClose(*(v2 + 8));
  *(v2 + 8) = 0;
  v7 = aaIntervalInputStreamOpen(*v2, *(v3 + 38), *(v3 + 46));
  *(v2 + 8) = v7;
  if (!v7)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_get", 81, 135, 0, "aaIntervalInputStreamOpen");
    return 0;
  }

  v8 = *(v6 + 48);
  if (v8 <= 3)
  {
    v9 = v8 << 62;
  }

  else
  {
    v9 = 0xC000000000000000;
  }

  v10 = AADecompressionInputStreamOpen(v7, v9, *(v6 + 44));
  *(v2 + 16) = v10;
  if (!v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_get", 83, 135, 0, "AADecompressionInputStreamOpen");
    return 0;
  }

LABEL_8:
  while (1)
  {
    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    v13 = v11 + v12;
    if (v5 < v11 + v12)
    {
      return a1 + 8 * (v5 - v12);
    }

    *(v2 + 48) = v13;
    v14 = *(v2 + 56) - v13;
    if (v14 < v11)
    {
      v11 = v14;
    }

    v15 = *(v2 + 16);
    if (*(v15 + 16))
    {
      v16 = 0;
      v17 = 8 * v11;
      if (8 * v11)
      {
        v18 = a1;
        v19 = 8 * v11;
        while (1)
        {
          v20 = (*(v15 + 16))(*v15, v18, v19);
          if (v20 < 0)
          {
            break;
          }

          if (v20)
          {
            v18 += v20;
            v16 += v20;
            v19 -= v20;
            if (v19)
            {
              continue;
            }
          }

          goto LABEL_19;
        }

        v16 = v20;
      }

LABEL_19:
      if (v17 == v16)
      {
        continue;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_get", 91, 135, 0, "aaByteStreamReadExpected");
    return 0;
  }
}

uint64_t ParallelArchiveCheckAndFix(uint64_t a1)
{
  v49[1] = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  bzero(v39, 0x458uLL);
  v38 = a1;
  DefaultNThreads = *(a1 + 4);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v43 = DefaultNThreads;
  v3 = calloc(DefaultNThreads, 0x8B0uLL);
  v41 = v3;
  v4 = malloc(8 * DefaultNThreads);
  v42 = v4;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *__error();
    v7 = "malloc";
    v8 = 365;
LABEL_17:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "ParallelArchiveCheckAndFix", v8, 13, v6, v7);
    goto LABEL_18;
  }

  if (!realpath_DARWIN_EXTSN(*(a1 + 16), v39))
  {
    v6 = *__error();
    v7 = *(a1 + 16);
    v8 = 366;
    goto LABEL_17;
  }

  v9 = v43;
  if (v43)
  {
    v10 = 0;
    do
    {
      v11 = (v41 + 2224 * v10);
      *v11 = &v38;
      *(v42 + v10++) = v11;
    }

    while (v10 != v9);
  }

  v40 = ThreadPoolCreate(v9, v42, checkAndFixThreadProc);
  if (!v40)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "ParallelArchiveCheckAndFix", 375, 13, 0, "ThreadPoolCreate");
    goto LABEL_18;
  }

  v32 = 0u;
  v33 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  DWORD1(v32) = *(a1 + 4);
  v12 = *(a1 + 40);
  *(&v32 + 1) = *(a1 + 24);
  *(&v33 + 1) = v12;
  *&v34 = checkAndFixBeginEntry;
  *&v36 = checkAndFixEndEntry;
  *(&v34 + 1) = checkAndFixBlob;
  *&v35 = checkAndFixPayload;
  v37 = &v38;
  if (ParallelArchiveRead(&v32))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "ParallelArchiveCheckAndFix", 390, 13, 0, "reading manifest");
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  if ((ThreadPoolDestroy(v40) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "ParallelArchiveCheckAndFix", 393, 13, 0, "ThreadPoolDestroy failed");
    v13 = 0;
    v40 = 0;
    goto LABEL_19;
  }

  v40 = 0;
  v20 = atomic_load(v49);
  if (v20 > 0)
  {
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  if (*a1 >= 1)
  {
    v21 = MEMORY[0x29EDCA610];
    v22 = *MEMORY[0x29EDCA610];
    v23 = atomic_load(&v44);
    fprintf(v22, "%12lld entries in manifest\n", v23);
    v24 = *v21;
    v25 = atomic_load(&v45);
    fprintf(v24, "%12lld entries valid\n", v25);
    v26 = *v21;
    v27 = atomic_load(&v46);
    fprintf(v26, "%12lld entries fixed\n", v27);
    v28 = *v21;
    v29 = atomic_load(&v47);
    fprintf(v28, "%12lld entries invalid\n", v29);
    v30 = *v21;
    v31 = atomic_load(&v48);
    fprintf(v30, "%12lld entries missing\n", v31);
  }

LABEL_19:
  if ((ThreadPoolDestroy(v40) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "ParallelArchiveCheckAndFix", 409, 13, 0, "ThreadPoolDestroy");
    v13 = 0;
  }

  v14 = v41;
  if (v41)
  {
    if (v43)
    {
      v15 = 0;
      v16 = 2216;
      do
      {
        free(*(v41 + v16));
        ++v15;
        v16 += 2224;
      }

      while (v15 < v43);
      v14 = v41;
    }

    free(v14);
  }

  free(v42);
  result = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) == 0)
  {
    if (v13)
    {
      if (atomic_load(&v47))
      {
        return 0;
      }

      else
      {
        v19 = atomic_load(&v48);
        return v19 == 0;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t checkAndFixThreadProc(uint64_t **a1)
{
  v46 = *MEMORY[0x29EDCA608];
  v2 = (a1 + 19);
  v3 = *a1;
  v5 = (*a1 + 1);
  v4 = **a1;
  v6 = *v4;
  v8 = *(v4 + 48);
  v7 = *(v4 + 56);
  v9 = *(v4 + 12);
  bzero(v45, 0x800uLL);
  memset(&v39, 0, sizeof(v39));
  atomic_fetch_add_explicit(v3 + 134, 1uLL, memory_order_relaxed);
  if (concatPath(v45, 0x800uLL, v5, v2))
  {
    v37 = v2;
    v10 = "building full path: %s";
    v11 = 80;
LABEL_3:
    v12 = 0;
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", v11, 13, v12, v10, v37);
    atomic_fetch_add_explicit(v3 + 139, 1uLL, memory_order_relaxed);
LABEL_5:
    v13 = 2;
    v14 = 137;
    goto LABEL_10;
  }

  if (v6 >= 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "> %s %zu\n", v45, a1[276]);
  }

  if (lstat(v45, &v39))
  {
    goto LABEL_9;
  }

  if (*(a1 + 3) == 72)
  {
    v16 = 70;
  }

  else
  {
    v16 = *(a1 + 3);
  }

  if (v16 != getAAEntryType(v39.st_mode))
  {
    goto LABEL_5;
  }

  v17 = *(a1 + 3) == 70 && statIsCompressed(v39.st_flags) != 0;
  v18 = *(a1 + 2);
  if ((v18 & 8) != 0)
  {
    if (statIsCompressed(*(a1 + 6)))
    {
      v17 = 1;
    }

    v18 = *(a1 + 2);
  }

  v19 = *(*v3 + 8) & v18;
  v20 = *(a1 + 3);
  if (v20 == 70)
  {
    v43 = 0;
    v42 = 0;
    v44 = 0;
    __s2 = 0u;
    v41 = 0u;
    v38 = 0;
    if ((v19 & 0x2000) != 0)
    {
      v21 = &v42;
    }

    else
    {
      v21 = 0;
    }

    if ((v19 & 0x4000) != 0)
    {
      p_s2 = &__s2;
    }

    else
    {
      p_s2 = 0;
    }

    if ((v19 & 0x1000) != 0)
    {
      v23 = &v38;
    }

    else
    {
      v23 = 0;
    }

    if ((getFileDigests(v45, v21, p_s2, v23) & 0x80000000) != 0)
    {
      v37 = v45;
      v10 = "computing file digests: %s";
      v11 = 120;
      goto LABEL_3;
    }

    v24 = (v19 & 0x2000) != 0 && (*(a1 + 100) != v42 || *(a1 + 108) != v43 || *(a1 + 29) != v44);
    if ((v19 & 0x4000) != 0 && a1[15] ^ __s2 | a1[16] ^ *(&__s2 + 1) | a1[17] ^ v41 | a1[18] ^ *(&v41 + 1))
    {
      v24 = 1;
    }

    if ((v19 & 0x1000) != 0 && *(a1 + 24) != v38)
    {
      v24 = 1;
    }

    v27 = !v24;
    v30 = *(a1 + 3);
    if (v30 != 76 || (v19 & 0x10000) == 0)
    {
      if (v24)
      {
        goto LABEL_62;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    if (v20 != 76 || (v19 & 0x10000) == 0)
    {
      goto LABEL_73;
    }

    v27 = 1;
  }

  bzero(&__s2, 0x400uLL);
  if (readlink(v45, &__s2, 0x400uLL) < 0)
  {
    v12 = *__error();
    v37 = v45;
    v10 = "reading link: %s";
    v11 = 136;
    goto LABEL_4;
  }

  if (strncmp(a1 + 1176, &__s2, 0x400uLL) != 0 || !v27)
  {
    v30 = *(a1 + 3);
LABEL_62:
    if (v30 == 70)
    {
      v25 = 1;
      if (a1[276])
      {
        v26 = 1;
        if ((v9 & 1) == 0)
        {
          __s2 = 0uLL;
          *&v41 = 0;
          v31 = open(v45, 2);
          if ((v31 & 0x80000000) != 0)
          {
            v12 = *__error();
            v37 = v45;
            v10 = "%s";
            v11 = 154;
            goto LABEL_4;
          }

          v32 = v31;
          v33 = ParallelArchiveECCFixFileSegment(v31, 0, v39.st_size, a1[277], a1[276], &__s2);
          close(v32);
          if (v33 < 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 163, 13, "Data not fixed with ECC (diag 0x%08x): %s", DWORD1(v41), v45);
            v26 = 1;
          }

          else
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 169, 13, "Data fixed with ECC (diag 0x%08x): %s", DWORD1(v41), v45);
            v26 = 0;
          }

          ParallelCompressionUpdateWarning((DWORD1(v41) | 0xFF000000));
          if (lstat(v45, &v39))
          {
            goto LABEL_9;
          }

          v25 = 1;
          if ((v19 & 2) != 0)
          {
            goto LABEL_79;
          }

LABEL_74:
          v34 = 0;
          goto LABEL_80;
        }

        goto LABEL_73;
      }
    }

    else
    {
      v25 = 1;
    }

    v26 = 1;
LABEL_73:
    if ((v19 & 2) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_79;
  }

LABEL_68:
  v25 = 0;
  v26 = 0;
  if ((v19 & 2) == 0)
  {
    goto LABEL_74;
  }

LABEL_79:
  v34 = v39.st_uid != *(a1 + 4);
LABEL_80:
  if ((v19 & 4) != 0)
  {
    if (v39.st_gid != *(a1 + 5))
    {
      v34 = 1;
    }

    if ((v19 & 0x10) == 0)
    {
LABEL_82:
      if ((v19 & 8) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_83;
    }
  }

  else if ((v19 & 0x10) == 0)
  {
    goto LABEL_82;
  }

  if ((*(a1 + 7) & 0xFFF) != (v39.st_mode & 0xFFF))
  {
    v34 = 1;
  }

  if ((v19 & 8) != 0)
  {
LABEL_83:
    if (v39.st_flags != *(a1 + 6))
    {
      v34 = 1;
    }
  }

LABEL_85:
  if (*(a1 + 3) != 70)
  {
    goto LABEL_101;
  }

  IsCompressed = statIsCompressed(v39.st_flags);
  if (v17)
  {
    if (IsCompressed)
    {
      goto LABEL_101;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 200, 13, "Compressing the file: %s\n", v45);
    if ((ParallelCompressionAFSCCompress(v45, 1) & 0x80000000) != 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 201, 13, "Error compressing file");
    }
  }

  else
  {
    if (!IsCompressed)
    {
      goto LABEL_101;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 212, 13, "Decompressing the file: %s\n", v45);
    if ((ParallelCompressionAFSCCompress(v45, 0) & 0x80000000) != 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 213, 13, "Error decompressing file");
    }
  }

  if (lstat(v45, &v39))
  {
LABEL_9:
    v13 = 3;
    v14 = 138;
    goto LABEL_10;
  }

LABEL_101:
  v36 = v34;
  if (v34)
  {
    v36 = v34;
    if ((v9 & 2) == 0)
    {
      if ((yaa_setEntryAttributes(v45, a1 + 2, 0, 0) & 0x80000000) != 0)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 234, 13, "Attr not fixed: %s", v45);
        v36 = 1;
      }

      else
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixThreadProc", 238, 13, "Attr fixed: %s", v45);
        v36 = 0;
      }
    }
  }

  if (v36 | v26)
  {
    goto LABEL_5;
  }

  v13 = v34 | v25;
  v14 = 135;
  if (v13)
  {
    v14 = 136;
  }

LABEL_10:
  atomic_fetch_add_explicit(&v3[v14], 1uLL, memory_order_relaxed);
  if (v8)
  {
    v8(v7, v13, a1 + 1);
  }

  return 0;
}

unsigned __int16 *checkAndFixBeginEntry(unsigned __int16 *result, _DWORD *a2)
{
  if (a2[1] != 77)
  {
    v3 = result;
    Worker = ThreadPoolGetWorker(*(result + 129));
    *(v3 + 130) = Worker;
    if (Worker)
    {
      *(Worker + 2208) = 0;
      v5 = (Worker + 8);

      return memcpy(v5, a2, 0x890uLL);
    }

    else
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixBeginEntry", 291, 13, 0, "ThreadPoolGetWorker failed");
      atomic_fetch_add_explicit(v3 + 139, 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t checkAndFixEndEntry(uint64_t result)
{
  if (*(result + 1040))
  {
    v1 = result;
    result = ThreadPoolRunWorker(*(result + 1032));
    if ((result & 0x80000000) != 0)
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixEndEntry", 305, 13, 0, "ThreadPoolRunWorker failed");
      atomic_fetch_add_explicit((v1 + 1112), 1uLL, memory_order_relaxed);
    }

    *(v1 + 1040) = 0;
  }

  return result;
}

atomic_ullong *checkAndFixBlob(atomic_ullong *result, _DWORD *a2, size_t __size)
{
  v3 = result[130];
  if (v3)
  {
    v4 = result;
    v5 = (*a2 & 0xDFDFDF) == 4408665;
    *(result + 267) = (*a2 & 0xDFDFDF) == 4408665;
    if (v5 && *(v3 + 2200) < __size)
    {
      *(v3 + 2200) = __size;
      result = reallocf(*(v3 + 2216), __size);
      *(v3 + 2216) = result;
      if (!result)
      {
        v6 = __error();
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixBlob", 327, 13, *v6, "malloc");
        atomic_fetch_add_explicit(v4 + 139, 1uLL, memory_order_relaxed);
      }
    }
  }

  return result;
}

atomic_ullong *checkAndFixPayload(atomic_ullong *result, const void *a2, size_t __n)
{
  v3 = result[130];
  if (v3)
  {
    v4 = result;
    if (*(result + 267))
    {
      v6 = v3[276];
      if (v6 + __n <= v3[275])
      {
        result = memcpy((v3[277] + v6), a2, __n);
        v3[276] += __n;
      }

      else
      {
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/CheckAndFix.c", "checkAndFixPayload", 342, 13, 0, "Invalid YEC blob size");
        atomic_fetch_add_explicit(v4 + 139, 1uLL, memory_order_relaxed);
      }
    }
  }

  return result;
}

uint64_t ParallelCompressionGetCompressedSize(uint64_t a1, unint64_t a2, int a3)
{
  v3 = a2;
  if (a2 >= 0x400)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0;
    v5 = IMemStreamCreate(a1, a2);
    if (v5)
    {
      DWORD2(v8) = a3;
      LODWORD(v8) = 0;
      DWORD1(v8) = getDefaultNThreads();
      *&v9 = 0x200000;
      *(&v9 + 1) = IMemStreamRead;
      *(&v10 + 1) = v5;
      *&v11 = getCompressedSizeCounterProc;
      v12 = &v7;
      if (!ParallelCompressionEncode(&v8))
      {
        if (v7 < v3)
        {
          v3 = v7;
        }

        goto LABEL_9;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", 75, 39, 0, "ParallelCompressionEncode");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", 64, 39, 0, "IMemStreamCreate");
    }

    v3 = -1;
LABEL_9:
    IMagicStreamDestroy(v5);
  }

  return v3;
}

uint64_t IDecoderStreamThreadProc(uint64_t a1)
{
  if (ParallelCompressionDecode(a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamThreadProc", 100, 39, 0, "decoder failed");
  }

  return 0;
}

uint64_t IDecoderStreamCreate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x48uLL);
  v11 = v10;
  if (v10)
  {
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    v12 = SharedBufferCreate(a4);
    *(v11 + 64) = v12;
    if (!v12)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 112, 39, 0, "fail to init buffer");
      goto LABEL_7;
    }

    *v11 = 0;
    *(v11 + 4) = a5;
    *(v11 + 8) = a1;
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    *(v11 + 32) = SharedBufferWrite;
    *(v11 + 40) = SharedBufferAbort;
    *(v11 + 48) = v12;
    if (createThread((v11 + 56), IDecoderStreamThreadProc, v11, 0))
    {
      v13 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 125, 39, v13, "failed to start decoder thread");
LABEL_7:
      IDecoderStreamDestroy(v11);
      return 0;
    }
  }

  else
  {
    v14 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 107, 39, *v14, "malloc");
  }

  return v11;
}

void IDecoderStreamDestroy(void *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a1[8])
    {
      while (1)
      {
        v2 = SharedBufferRead(a1[8], v5, 0x400uLL);
        if (v2 < 0)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_7;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 155, 39, 0, "flushing shared buffer");
    }

LABEL_7:
    v3 = a1[7];
    if (v3)
    {
      if (joinThread(v3))
      {
        v4 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 163, 39, *v4, "failed to join decoder thread");
      }
    }

    SharedBufferDestroy(a1[8]);
    free(a1);
  }
}

uint64_t IDecoderStreamRead(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    return SharedBufferRead(*(a1 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t IDecoderStreamAbort(uint64_t result)
{
  if (result)
  {
    return SharedBufferAbort(*(result + 64));
  }

  return result;
}

uint64_t OEncoderStreamThreadProc(uint64_t a1)
{
  if (ParallelCompressionEncode(a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamThreadProc", 192, 39, 0, "encoder failed");
  }

  return 0;
}

uint64_t OEncoderStreamCreate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7)
{
  v14 = malloc(0x60uLL);
  v15 = v14;
  if (v14)
  {
    v14[10] = 0;
    *(v14 + 3) = 0u;
    *(v14 + 4) = 0u;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v16 = SharedBufferCreate(a4);
    *(v15 + 88) = v16;
    if (!v16)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 204, 39, 0, "init buffer");
      goto LABEL_7;
    }

    *(v15 + 4) = a7;
    *(v15 + 8) = a5;
    *v15 = 0;
    *(v15 + 16) = a6;
    *(v15 + 24) = SharedBufferRead;
    *(v15 + 32) = SharedBufferAbort;
    *(v15 + 40) = v16;
    *(v15 + 48) = a1;
    *(v15 + 56) = a2;
    *(v15 + 64) = a3;
    if (createThread((v15 + 80), OEncoderStreamThreadProc, v15, 0))
    {
      v17 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 219, 39, v17, "failed to start encoder thread");
LABEL_7:
      OEncoderStreamDestroy(v15);
      return 0;
    }
  }

  else
  {
    v18 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamCreate", 199, 39, *v18, "malloc");
  }

  return v15;
}

void OEncoderStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 72))
    {
      SharedBufferWrite(*(a1 + 88), 0, 0);
    }

    v2 = *(a1 + 80);
    if (v2 && joinThread(v2))
    {
      v3 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamDestroy", 260, 39, *v3, "failed to join encoder thread");
    }

    SharedBufferDestroy(*(a1 + 88));

    free(a1);
  }
}

uint64_t OEncoderStreamWrite(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return -1;
  }

  v4 = *(a1 + 72);
  if (a3)
  {
    if (v4)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OEncoderStreamWrite", 241, 39, 0, "extra bytes written after EOF has been sent");
      return -1;
    }
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    *(a1 + 72) = 1;
  }

  v6 = *(a1 + 88);

  return SharedBufferWrite(v6, a2, a3);
}

uint64_t OEncoderStreamAbort(uint64_t result)
{
  if (result)
  {
    return SharedBufferAbort(*(result + 88));
  }

  return result;
}

void *OFileEncoderStreamCreateWithFD(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = malloc(0x10uLL);
  v13 = v12;
  if (v12)
  {
    v12[1] = 0;
    v14 = OFileStreamCreateWithFD(a1, a2);
    *v13 = v14;
    if (!v14 || (v15 = OEncoderStreamCreate(OFileStreamWrite, OFileStreamAbort, v14, a3, a4, a5, a6), (v13[1] = v15) == 0))
    {
      OFileEncoderStreamDestroy(v13);
      return 0;
    }
  }

  else
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "OFileEncoderStreamCreateWithFD", 355, 39, *v16, "malloc");
  }

  return v13;
}

void OFileEncoderStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    OEncoderStreamDestroy(*(a1 + 8));
    OFileStreamDestroy(*a1);

    free(a1);
  }
}

void *ILowMemoryDecoderStreamCreate(uint64_t (*a1)(uint64_t, uint64_t, unint64_t), uint64_t a2, uint64_t a3, size_t a4)
{
  v8 = malloc(0xD8uLL);
  v9 = v8;
  if (v8)
  {
    v8[26] = 0;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    if (a4 <= 0x1000)
    {
      a4 = 4096;
    }

    *v8 = 0uLL;
    v10 = MemBufferCreate(a4);
    *(v9 + 56) = v10;
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = MemBufferCreate(a4);
    *(v9 + 64) = v11;
    if (!v11)
    {
      goto LABEL_26;
    }

    *(v9 + 32) = -1;
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    if (MemBufferFillFromIStream(*(v9 + 56), 0xCuLL, a1, a3) != 12)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 465, 39, 0, "couldn't read enough header bytes from compressed file");
      goto LABEL_26;
    }

    DataPtr = MemBufferGetDataPtr(*(v9 + 56));
    if ((*(v9 + 32) & 0x80000000) != 0)
    {
      v13 = DataPtr;
      if (*DataPtr == 25200 && *(DataPtr + 2) == 122)
      {
        v19 = 0;
        while (1)
        {
          v20 = v13[3];
          if (v20 == PCompressGetDecoderKey(v19))
          {
            break;
          }

          if (++v19 == 7)
          {
            if ((*(v9 + 32) & 0x80000000) == 0)
            {
              return v9;
            }

            goto LABEL_12;
          }
        }

        *(v9 + 40) = bswap64(*(v13 + 4));
        *(v9 + 48) = PCompressGetDecoderFilter(v19);
        MemBufferDecreaseSize(*(v9 + 56), 0xCuLL);
        if ((MemBufferIncreaseCapacity(*(v9 + 56), *(v9 + 40)) & 0x8000000000000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 487, 39, 0, "MemBufferIncreaseCapacity in");
        }

        else
        {
          if ((MemBufferIncreaseCapacity(*(v9 + 64), *(v9 + 40)) & 0x8000000000000000) == 0)
          {
            *(v9 + 32) = 0;
            return v9;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 488, 39, 0, "MemBufferIncreaseCapacity out");
        }

        goto LABEL_26;
      }

LABEL_12:
      if (*v13 == 1484404733 && *(v13 + 2) == 90)
      {
        if (!lzma_stream_decoder())
        {
          *(v9 + 32) = 1;
          return v9;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 503, 39, 0, "lzma_stream_decoder");
        goto LABEL_26;
      }

      v16 = *v13 == 23106 && v13[2] == 104;
      if (v16 && v13[3] - 49 <= 8)
      {
        if (BZ2_bzDecompressInit((v9 + 72), 0, 0))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 514, 39, 0, "BZ2_bzDecompressInit");
LABEL_26:
          ILowMemoryDecoderStreamDestroy(v9);
          return 0;
        }

        v26 = 3;
LABEL_60:
        *(v9 + 32) = v26;
        return v9;
      }

      v21 = *v13;
      if (v21 == 120)
      {
        if (-1108378657 * (v13[1] | 0x7800u) <= 0x8421084)
        {
          if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB) == COMPRESSION_STATUS_OK)
          {
            MemBufferDecreaseSize(*(v9 + 56), 2uLL);
            *(v9 + 32) = 2;
            return v9;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 570, 39, 0, "compression_stream_init");
          goto LABEL_26;
        }
      }

      else if (v21 == 31 && v13[1] == 139 && v13[2] == 8)
      {
        if ((MemBufferFillFromIStream(*(v9 + 56), 0x1000uLL, *v9, *(v9 + 16)) & 0x8000000000000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 525, 39, 0, "reading gzip header data");
          goto LABEL_26;
        }

        DataSize = MemBufferGetDataSize(*(v9 + 56));
        if ((v13[3] & 4) != 0)
        {
          if (DataSize <= 0xB)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 531, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          v23 = *(v13 + 5) + 12;
          if (v23 > DataSize)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 534, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }
        }

        else
        {
          v23 = 10;
        }

        if ((v13[3] & 8) != 0)
        {
          v24 = v23 + 2;
          if (v23 + 2 > DataSize)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 539, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          if (v23 + 2 < DataSize)
          {
            while (v13[v23 + 1])
            {
              if (DataSize - 2 == ++v23)
              {
                v24 = DataSize;
                goto LABEL_42;
              }
            }

            v24 = v23 + 2;
          }
        }

        else
        {
          v24 = v23;
        }

LABEL_42:
        if ((v13[3] & 0x10) != 0)
        {
          v25 = v24 + 2;
          if (v24 + 2 > DataSize)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 545, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }

          if (v24 + 2 < DataSize)
          {
            while (v13[v24 + 1])
            {
              if (DataSize - 2 == ++v24)
              {
                v25 = DataSize;
                goto LABEL_44;
              }
            }

            v25 = v24 + 2;
          }
        }

        else
        {
          v25 = v24;
        }

LABEL_44:
        if ((v13[3] & 2) != 0)
        {
          v25 += 2;
          if (v25 > DataSize)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 551, 39, 0, "parsing gzip header");
            goto LABEL_26;
          }
        }

        MemBufferDecreaseSize(*(v9 + 56), v25);
        if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 557, 39, 0, "compression_stream_init");
          goto LABEL_26;
        }

        v26 = 2;
        goto LABEL_60;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 579, 39, 0, "Could not identify compressed stream format");
      goto LABEL_26;
    }
  }

  else
  {
    v17 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 452, 39, *v17, "malloc");
  }

  return v9;
}

void ILowMemoryDecoderStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    switch(v2)
    {
      case 3:
        BZ2_bzDecompressEnd((a1 + 72));
        break;
      case 2:
        compression_stream_destroy((a1 + 72));
        break;
      case 1:
        lzma_end();
        break;
    }

    MemBufferDestroy(*(a1 + 56));
    MemBufferDestroy(*(a1 + 64));
    IMagicStreamDestroy(*(a1 + 24));

    free(a1);
  }
}

void *ILowMemoryDecoderStreamCreateWithBuffer(uint64_t a1, uint64_t a2, size_t a3)
{
  v4 = IMemStreamCreate(a1, a2);
  if (v4)
  {
    v5 = v4;
    result = ILowMemoryDecoderStreamCreate(IMemStreamRead, IMemStreamAbort, v4, a3);
    if (result)
    {
      result[3] = v5;
      return result;
    }

    IMagicStreamDestroy(v5);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreateWithBuffer", 596, 39, 0, "IMemStreamCreate failed");
  }

  return 0;
}

uint64_t ILowMemoryDecoderStreamRead(void *a1, char *a2, size_t a3)
{
  if (a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (!a3)
      {
        return v7;
      }

      DataSize = MemBufferGetDataSize(a1[8]);
      if (DataSize)
      {
        if (DataSize >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = DataSize;
        }

        DataPtr = MemBufferGetDataPtr(a1[8]);
        memcpy(a2, DataPtr, v9);
        MemBufferDecreaseSize(a1[8], v9);
        v7 += v9;
        a3 -= v9;
        if (!a3)
        {
          return v7;
        }

        a2 += v9;
      }

      if (*(a1 + 52))
      {
        return v7;
      }

      v11 = a1[7];
      if (!*(a1 + 8))
      {
        v23 = MemBufferGetDataSize(v11);
        v24 = v23;
        if (v23 <= 0xF)
        {
          if ((MemBufferFillFromIStream(a1[7], 16 - v23, *a1, a1[2]) & 0x8000000000000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 645, 39, 0, "reading block header failed");
            return -1;
          }

          v25 = MemBufferGetDataSize(a1[7]);
          if (!v25)
          {
            *(a1 + 52) = 1;
            return v7;
          }

          v24 = v25;
        }

        v26 = MemBufferGetDataPtr(a1[7]);
        v28 = *v26;
        v27 = v26[1];
        v29 = bswap64(*v26);
        v30 = bswap64(v27);
        v31 = a1[5];
        if (v29 > v31 || v30 > v31)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 655, 39, 0, "invalid block header");
          return -1;
        }

        MemBufferDecreaseSize(a1[7], 0x10uLL);
        v33 = v30 >= v24 - 16;
        v34 = v30 - (v24 - 16);
        if (v34 != 0 && v33)
        {
          if (MemBufferFillFromIStream(a1[7], v34, *a1, a1[2]) != v34)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 665, 39, 0, "reading block payload failed");
            return -1;
          }

          MemBufferGetDataSize(a1[7]);
        }

        if (v28 == v27)
        {
          FreePtr = MemBufferGetFreePtr(a1[8]);
          v36 = MemBufferGetDataPtr(a1[7]);
          memcpy(FreePtr, v36, v29);
        }

        else
        {
          v47 = a1[6];
          v48 = MemBufferGetFreePtr(a1[8]);
          v49 = MemBufferGetDataPtr(a1[7]);
          if (v47(v48, v29, v49, v30) != v29)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 677, 39, 0, "decoding block payload failed");
            return -1;
          }
        }

        MemBufferDecreaseSize(a1[7], v30);
        MemBufferIncreaseSize(a1[8], v29);
        goto LABEL_64;
      }

      if ((MemBufferFillFromIStream(v11, 0xFFFFFFFFFFFFFFFFLL, *a1, a1[2]) & 0x8000000000000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 687, 39, 0, "reading payload failed");
        return -1;
      }

      v12 = MemBufferGetDataPtr(a1[7]);
      v13 = MemBufferGetDataSize(a1[7]);
      v14 = MemBufferGetFreePtr(a1[8]);
      FreeSize = MemBufferGetFreeSize(a1[8]);
      v16 = FreeSize;
      v17 = *(a1 + 8);
      switch(v17)
      {
        case 1:
          a1[9] = v12;
          a1[10] = v13;
          a1[12] = v14;
          a1[13] = FreeSize;
          v42 = lzma_code();
          v43 = v42;
          if (v42 > 0xA || ((1 << v42) & 0x403) == 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 738, 39, 0, "decoding lzma payload");
            v50 = 1;
            goto LABEL_62;
          }

          v44 = a1[9];
          v45 = a1[12];
          MemBufferDecreaseSize(a1[7], v44 - v12);
          if (v45 == v14 && v44 == v12)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(a1[8], v45 - v14);
          if (v43 != 1)
          {
            v50 = 14;
LABEL_62:
            if (v43 > 0xA || ((1 << v43) & 0x403) == 0)
            {
              continue;
            }

            goto LABEL_64;
          }

          break;
        case 3:
          a1[9] = v12;
          *(a1 + 20) = v13;
          a1[12] = v14;
          *(a1 + 26) = FreeSize;
          v37 = BZ2_bzDecompress((a1 + 9));
          if (v37 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 722, 39, 0, "decoding bzip2 payload");
            return -1;
          }

          v38 = v37;
          v39 = a1[9];
          v40 = a1[12];
          MemBufferDecreaseSize(a1[7], v39 - v12);
          if (v40 == v14 && v39 == v12)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(a1[8], v40 - v14);
          if (v38 != 4)
          {
            goto LABEL_64;
          }

          break;
        case 2:
          a1[11] = v12;
          a1[12] = v13;
          a1[9] = v14;
          a1[10] = FreeSize;
          v18 = compression_stream_process((a1 + 9), 0);
          if (v18 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 706, 39, 0, "decoding zlib payload");
            return -1;
          }

          v19 = v18;
          v20 = a1[12];
          v21 = a1[10];
          MemBufferDecreaseSize(a1[7], v13 - v20);
          if (v16 == v21 && v13 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(a1[8], v16 - v21);
          if (v19 != COMPRESSION_STATUS_END)
          {
            goto LABEL_64;
          }

          break;
        default:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 748, 39, 0, "invalid decoder: %d");
          return -1;
      }

      *(a1 + 52) = 1;
LABEL_64:
      if (v6 >= 3)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 753, 39, 0, "Truncated stream");
        return -1;
      }

      v50 = 0;
    }

    while (!v50);
  }

  return -1;
}

uint64_t ILowMemoryDecoderStreamAbort(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v2(*(result + 16));
    }

    v3 = *(v1 + 24);

    return IMemStreamAbort(v3);
  }

  return result;
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

void *ISparseArchiveStreamCreate(uint64_t a1)
{
  v50 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  v36 = 0;
  v2 = calloc(1uLL, 0x40uLL);
  if (!v2)
  {
    v26 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamCreate", 46, 8, *v26, "malloc");
    v3 = 0;
LABEL_37:
    v5 = 0;
    goto LABEL_53;
  }

  v3 = IFileStreamCreateWithFilename(*(a1 + 32), 0, -1);
  if (!v3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamCreate", 50, 8, 0, "creating index file stream");
    goto LABEL_37;
  }

  v4 = ArchiveTreeCreateFromIndex(IFileStreamRead, v3, *(a1 + 40), *(a1 + 48), *(a1 + 4), *a1);
  v5 = v4;
  if (!v4)
  {
    v24 = "loading archive tree";
    v25 = 53;
    goto LABEL_52;
  }

  v6 = ArchiveTreeSize(v4);
  if (v6)
  {
    v7 = v6;
    for (i = 0; v7 != i; ++i)
    {
      *__s = -1;
      v35 = -1;
      if (ArchiveTreeNodeSegment(v5, i, __s, &v35))
      {
        v24 = "reading node segment";
        v25 = 61;
        goto LABEL_52;
      }

      v9 = v2[1];
      v10 = v2[3];
      v11 = &v10[16 * v9];
      if (v9)
      {
        v12 = v11 == 16;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        goto LABEL_18;
      }

      v13 = *(v11 - 1);
      v14 = v13 + *(v11 - 2);
      if (v14 > *__s)
      {
        v24 = "invalid segment order";
        v25 = 67;
        goto LABEL_52;
      }

      if (v13 == -1)
      {
        v24 = "invalid segments in archive";
        v25 = 68;
        goto LABEL_52;
      }

      if (v14 != *__s)
      {
LABEL_18:
        v17 = v2[2];
        if (v9 >= v17)
        {
          v18 = v17 + (v17 >> 1);
          if (!v17)
          {
            v18 = 32;
          }

          v2[2] = v18;
          v10 = reallocf(v10, 16 * v18);
          v2[3] = v10;
          if (!v10)
          {
            v31 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamCreate", 78, 8, v31, "malloc");
            goto LABEL_53;
          }

          v9 = v2[1];
        }

        v19 = &v10[16 * v9];
        *v19 = *__s;
        *(v19 + 1) = v35;
        v2[1] = v9 + 1;
      }

      else
      {
        v15 = v13 + v35;
        if (v35 == -1)
        {
          v16 = -1;
        }

        else
        {
          v16 = v15;
        }

        *(v11 - 1) = v16;
      }
    }
  }

  if (*a1 >= 1)
  {
    v20 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "%12zu segments to read in archive\n", v2[1]);
    if (*a1 >= 2)
    {
      if (v2[1])
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *v20;
          if (*(v2[3] + v21 + 8) == -1)
          {
            fprintf(v23, "segment=%zu offset=%llu size=<to EOF>\n");
          }

          else
          {
            fprintf(v23, "segment=%zu offset=%llu size=%llu\n");
          }

          ++v22;
          v21 += 16;
        }

        while (v22 < v2[1]);
      }
    }
  }

  if (loadFileSegment(*(a1 + 8), &v36, 4uLL, 0))
  {
    v24 = "reading archive header";
    v25 = 100;
    goto LABEL_52;
  }

  if (v36 != 25200 || BYTE2(v36) != 122)
  {
    v28 = IFileStreamCreateWithFilename(*(a1 + 8), *(a1 + 16), *(a1 + 24));
    v2[5] = v28;
    if (v28)
    {
      v29 = 0;
      goto LABEL_54;
    }

    v24 = "creating archive file stream";
    v25 = 116;
LABEL_52:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamCreate", v25, 8, 0, v24);
LABEL_53:
    v29 = 1;
    goto LABEL_54;
  }

  v49 = 0;
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
  *&__s[6] = 0u;
  strcpy(__s, "r,c=1");
  if (*(a1 + 16))
  {
    v30 = snprintf(&__s[5], 0xC3uLL, ",o=%llu", *(a1 + 16)) + 5;
  }

  else
  {
    v30 = 5;
  }

  if (*(a1 + 24) != -1)
  {
    snprintf(&__s[v30], 200 - v30, ",s=%llu", *(a1 + 24));
  }

  v34 = ParallelCompressionFileOpen(*(a1 + 8), __s);
  v2[4] = v34;
  v29 = v34 == 0;
  if (!v34)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamCreate", 110, 8, 0, "creating archive decoder stream");
  }

LABEL_54:
  IFileStreamDestroy(v3);
  ArchiveTreeDestroy(v5);
  v32 = leaveThreadErrorContext(0, 0, 0);
  if (v29 || v32 < 0)
  {
    ISparseArchiveStreamDestroy(v2);
    return 0;
  }

  return v2;
}

void ISparseArchiveStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 24));
    ParallelCompressionFileClose(*(a1 + 32));
    IFileStreamDestroy(*(a1 + 40));

    free(a1);
  }
}

uint64_t ISparseArchiveStreamRead(void *a1, char *a2, size_t a3)
{
  if (a3)
  {
    v3 = a3;
    v6 = 0;
    while (1)
    {
      v7 = a1[6];
      if (v7 >= a1[1])
      {
        return v6;
      }

      v8 = a1[4];
      v9 = (a1[3] + 16 * v7);
      v10 = a1[7];
      if (v3 >= v9[1] - v10)
      {
        v12 = v9[1] - v10;
      }

      else
      {
        v12 = v3;
      }

      v11 = *v9;
      v13 = *v9 + v10;
      if (v8)
      {
        if (ParallelCompressionFileSeek(v8, v11 + v10, 0) != v13)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamRead", 163, 8, 0, "seek archive decoder");
          return -1;
        }

        v14 = ParallelCompressionFileRead(a1[4], a2, v12);
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = a1[5];
        if (!v15)
        {
          goto LABEL_20;
        }

        if (IFileStreamSetPos(v15, v11 + v10) != v13)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamRead", 168, 8, 0, "seek file decoder");
          return -1;
        }

        v14 = IFileStreamRead(a1[5], a2, v12);
        if ((v14 & 0x8000000000000000) != 0)
        {
LABEL_20:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ISparseArchiveStream.c", "ISparseArchiveStreamRead", 171, 8, 0, "archive read failed");
          return -1;
        }
      }

      if (v14)
      {
        v16 = a1[7] + v14;
        a1[7] = v16;
        if (v16 == v9[1])
        {
          ++a1[6];
          a1[7] = 0;
        }

        a2 += v14;
        v6 += v14;
        v3 -= v14;
        if (v3)
        {
          continue;
        }
      }

      return v6;
    }
  }

  return 0;
}

uint64_t initBestMatchThreadProc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v65 = *MEMORY[0x29EDCA608];
  v1 = *v0;
  v2 = *(v0 + 20);
  bzero(v64, 0x3000uLL);
  bzero(v63, 0x7000uLL);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v1 + 36);
  v6 = v5 - v2;
  if (v5 < v2)
  {
    v6 = 0;
  }

  if (v4 + v2 > v5)
  {
    v4 = v6;
  }

  if (v3 < v4)
  {
    v7 = *(v0 + 12);
    do
    {
      v8 = *(v1 + 48);
      v9 = *(v8 + 8 * v7 + 4);
      if (v9 < 0x400)
      {
        v10 = v7;
        v11 = *(v1 + 24);
        v12 = 0;
        if (v2)
        {
          v13 = (v11 + v7);
          v14 = v2;
          do
          {
            v15 = *v13++;
            v12 = -1640531535 * (v15 + v12) - 1640531535;
            v14 -= 4;
          }

          while (v14);
        }

        v16 = v12 ^ HIWORD(v12);
        v17 = *(v0 + 32) + 6 * (v12 >> *(v1 + 44));
        if (*(v17 + 4) == v16)
        {
          v18 = *v17;
          if (*v17 >= *(v0 + 8))
          {
            v19 = &v64[3 * ((v7 - v18) & 0x3FF)];
            if (v18 != v19[1] + v7 - *v19 || v19[2] + *v19 < v7)
            {
              v20 = &v63[28 * (v18 & 0x3FF)];
              if (*v20 == v18)
              {
                v21 = v20[2];
                v22 = v7 - v21;
                if (v21 != v20[5] + v7 - v21)
                {
                  goto LABEL_26;
                }

                v24 = v20[3];
                v23 = v20[4];
                v25 = v23 + v22;
                v26 = v20[1];
                if (v23 + v22 <= v26)
                {
                  v25 = v20[1];
                }

                v27 = v25 + v22;
                v28 = v20[6] + v23;
                if (v28 >= v24 + v26)
                {
                  v28 = v24 + v26;
                }

                v29 = v28 >= v27;
                v30 = v28 - v27;
                if (v30 != 0 && v29)
                {
                  v18 = v18 - v7 + v27;
                  v10 = v27;
                }

                else
                {
LABEL_26:
                  v30 = 0;
                  LODWORD(v27) = v7;
                }
              }

              else
              {
                v21 = 0;
                v30 = 0;
                *v20 = v18;
                v20[1] = 0;
                LODWORD(v27) = v7;
                *(v20 + 1) = 0;
              }

              v31 = 0;
              if (v18 >= v27 - v3)
              {
                v32 = v27 - v3;
              }

              else
              {
                v32 = v18;
              }

              v33 = *(v1 + 16);
              v34 = v33 + v18;
              v35 = v11 + v10;
              v36 = -1;
              while (1)
              {
                v31 += 8;
                if (v31 > v32)
                {
                  break;
                }

                v37 = *(v34 - v31);
                v38 = *(v35 - v31);
                v36 += 8;
                if (v37 != v38)
                {
                  v36 = v31 + (__clz(v38 ^ v37) >> 3) - 8;
                  goto LABEL_38;
                }
              }

              while (1)
              {
                v39 = v36 + 2;
                if (v36 + 2 > v32)
                {
                  break;
                }

                ++v36;
                if (*(v34 - v39) != *(v35 - v39))
                {
                  goto LABEL_38;
                }
              }

              v36 = v32;
LABEL_38:
              v40 = v18 - v36;
              v41 = v27 - v36;
              v42 = v36 + v30;
              LODWORD(v43) = *(v1 + 32) - v40;
              v44 = *(v1 + 36) - v41;
              if (v43 >= v44)
              {
                v43 = v44;
              }

              else
              {
                v43 = v43;
              }

              v45 = v33 + v40;
              v46 = v11 + v41;
              while (1)
              {
                v47 = v42 + 8;
                if (v42 + 8 > v43)
                {
                  break;
                }

                v48 = *(v45 + v42);
                v49 = *(v46 + v42);
                v42 += 8;
                if (v48 != v49)
                {
                  LODWORD(v43) = v47 + (__clz(__rbit64(v49 ^ v48)) >> 3) - 8;
                  goto LABEL_51;
                }
              }

              if (v42 < v43)
              {
                v50 = v42;
                while (*(v45 + v50) == *(v46 + v50))
                {
                  if (++v50 >= v43)
                  {
                    goto LABEL_51;
                  }
                }

                LODWORD(v43) = v50;
              }

LABEL_51:
              if (v43 >= v2)
              {
                *v19 = v41;
                v19[1] = v40;
                v19[2] = v43;
                v51 = v20[1];
                v52 = v20[3];
                v20[5] = v21;
                v20[6] = v52;
                v20[1] = v41;
                v20[2] = v7;
                v20[3] = v43;
                v20[4] = v51;
                v53 = (v8 + 8 * v41);
                if (v43 > v53[1])
                {
                  *v53 = v40;
                  *(*(v1 + 48) + 8 * v41 + 4) = v43;
                  if (v43 + v41 > v7 + 1024)
                  {
                    v7 = v43 + v41 - 1024;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v7 = v7 + v9 - 1024;
      }

      ++v7;
    }

    while (v7 < v4);
  }

  if (*(v0 + 24))
  {
    v54 = *(v0 + 16);
    v55 = (*(v0 + 12) + 1);
    if (v55 < v54)
    {
      v56 = 8 * (*(v0 + 12) + 1);
      do
      {
        v57 = *(v1 + 48);
        v58 = v57 + v56;
        v59 = *(v57 + v56 - 4);
        if (v59 > v2 && v59 > *(v57 + v56 + 4))
        {
          v61 = *(v58 - 8) + 1;
          if (v61 < *(v1 + 32))
          {
            *(v57 + v56) = v61;
            *(v58 + 4) = v59 - 1;
            v54 = *(v0 + 16);
          }
        }

        ++v55;
        v56 += 8;
      }

      while (v55 < v54);
    }
  }

  return 0;
}