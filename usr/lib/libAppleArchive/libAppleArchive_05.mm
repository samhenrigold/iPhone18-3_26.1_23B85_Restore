uint64_t closeWithStateProc_1(unsigned int *a1, void *a2, void *a3)
{
  if (!atomic_load(a1 + 2))
  {
    v90 = 0;
    v89 = 0u;
    v88 = 0u;
    __s = 0;
    v79 = 0;
    v8 = *a1;
    v9 = *(a1 + 594);
    v80 = 0;
    v81[0] = v8;
    v81[1] = v9;
    v10 = a1 + 623;
    v82 = strlen(a1 + 2492);
    v11 = a1 + 879;
    v83 = strlen(a1 + 3516);
    v12 = a1 + 1135;
    v84 = strlen(a1 + 4540);
    v91 = a1[1185];
    v92 = a1[1186];
    v13 = *(a1 + 596);
    if (v13)
    {
      LODWORD(v13) = AAHeaderGetEncodedSize(v13);
    }

    v85 = v13;
    v14 = *(a1 + 595);
    v86 = *(a1 + 597);
    v87 = v14;
    v15 = *(a1 + 601);
    *(&v88 + 1) = *(a1 + 598);
    *&v89 = v15;
    *(&v89 + 1) = *(a1 + 604);
    v16 = *(a1 + 608);
    if (v16)
    {
      v17 = AAByteStreamSeek(v16, 0, 2);
      v18 = 1;
    }

    else
    {
      v18 = 0;
      v17 = *(a1 + 609);
    }

    HIBYTE(v90) = v18;
    *&v88 = v17;
    LOBYTE(v90) = *(a1 + 607) != 0;
    if (!a2[3])
    {
      goto LABEL_118;
    }

    v19 = 0;
    v20 = v81;
    v21 = 84;
    while (1)
    {
      v22 = (a2[3])(*a2, v20, v21);
      if (v22 < 1)
      {
        break;
      }

      v20 = (v20 + v22);
      v19 += v22;
      v21 -= v22;
      if (!v21)
      {
        if (v19 < 0)
        {
          goto LABEL_118;
        }

        goto LABEL_15;
      }
    }

    if (v22 < 0)
    {
      goto LABEL_118;
    }

LABEL_15:
    if (!a2[3])
    {
      goto LABEL_118;
    }

    v23 = v82;
    if (v82)
    {
      v24 = 0;
      while (1)
      {
        v25 = (a2[3])(*a2, v10, v23);
        if (v25 < 1)
        {
          break;
        }

        v10 = (v10 + v25);
        v24 += v25;
        v23 -= v25;
        if (!v23)
        {
          if (v24 < 0)
          {
            goto LABEL_118;
          }

          goto LABEL_23;
        }
      }

      if (v25 < 0)
      {
        goto LABEL_118;
      }

LABEL_23:
      if (!a2[3])
      {
        goto LABEL_118;
      }
    }

    v26 = v83;
    if (v83)
    {
      v27 = 0;
      while (1)
      {
        v28 = (a2[3])(*a2, v11, v26);
        if (v28 < 1)
        {
          break;
        }

        v11 = (v11 + v28);
        v27 += v28;
        v26 -= v28;
        if (!v26)
        {
          goto LABEL_30;
        }
      }

      v27 = v28;
LABEL_30:
      if (v27 < 0)
      {
        goto LABEL_118;
      }
    }

    if (!a2[3])
    {
      goto LABEL_118;
    }

    v29 = v84;
    if (v84)
    {
      v30 = 0;
      while (1)
      {
        v31 = (a2[3])(*a2, v12, v29);
        if (v31 < 1)
        {
          break;
        }

        v12 = (v12 + v31);
        v30 += v31;
        v29 -= v31;
        if (!v29)
        {
          goto LABEL_38;
        }
      }

      v30 = v31;
LABEL_38:
      if (v30 < 0)
      {
        goto LABEL_118;
      }
    }

    v32 = *(a1 + 596);
    if (v32)
    {
      EncodedData = AAHeaderGetEncodedData(v32);
      if (!a2[3])
      {
        goto LABEL_118;
      }

      v34 = v85;
      if (!v85)
      {
LABEL_49:
        v38 = *(&v88 + 1);
        if (!*(&v88 + 1))
        {
          goto LABEL_148;
        }

        v39 = 0;
        v40 = *(a1 + 600);
        while (1)
        {
          v41 = (a2[3])(*a2, v40, v38);
          if (v41 < 1)
          {
            break;
          }

          v40 += v41;
          v39 += v41;
          v38 -= v41;
          if (!v38)
          {
            goto LABEL_55;
          }
        }

        v39 = v41;
LABEL_55:
        if ((v39 & 0x8000000000000000) == 0)
        {
LABEL_148:
          if (a2[3])
          {
            v42 = v89;
            if (!v89)
            {
              goto LABEL_65;
            }

            v43 = 0;
            v44 = *(a1 + 603);
            while (1)
            {
              v45 = (a2[3])(*a2, v44, v42);
              if (v45 < 1)
              {
                break;
              }

              v44 += v45;
              v43 += v45;
              v42 -= v45;
              if (!v42)
              {
                goto LABEL_63;
              }
            }

            v43 = v45;
LABEL_63:
            if ((v43 & 0x8000000000000000) == 0 && a2[3])
            {
LABEL_65:
              v46 = *(&v89 + 1);
              if (!*(&v89 + 1))
              {
                goto LABEL_149;
              }

              v47 = 0;
              v48 = *(a1 + 606);
              while (1)
              {
                v49 = (a2[3])(*a2, v48, v46);
                if (v49 < 1)
                {
                  break;
                }

                v48 += v49;
                v47 += v49;
                v46 -= v49;
                if (!v46)
                {
                  goto LABEL_71;
                }
              }

              v47 = v49;
LABEL_71:
              if ((v47 & 0x8000000000000000) == 0)
              {
LABEL_149:
                if (*(a1 + 608))
                {
                  v50 = v88;
                  if (v88)
                  {
                    v76 = 0;
                    v51 = 0;
                    v52 = 0;
                    v53 = 0;
                    while (2)
                    {
                      __s = 0;
                      offset = v53;
                      v54 = v50 - v53;
                      if (v54)
                      {
                        v55 = 0;
                        v56 = 0;
                        s = *(a1 + 608);
                        if (v54 >= 0x40000)
                        {
                          v57 = 0x40000;
                        }

                        else
                        {
                          v57 = v54;
                        }

                        v58 = offset;
                        while (1)
                        {
                          if (v55 == v52)
                          {
                            v59 = v52 + 0x40000;
                            if ((v52 + 0x40000) < 0)
                            {
                              goto LABEL_144;
                            }

                            if (v52 <= 0xFFFFFFFFFFFBFFFFLL)
                            {
                              do
                              {
                                while (!v52)
                                {
                                  v52 = 0x4000;
                                  v61 = 0x4000;
                                  if (v59 <= 0x4000)
                                  {
                                    goto LABEL_93;
                                  }
                                }

                                v60 = v52 >> 1;
                                if ((v52 & (v52 >> 1)) != 0)
                                {
                                  v60 = v52 & (v52 >> 1);
                                }

                                v52 += v60;
                              }

                              while (v52 < v59);
                              v61 = v52;
                              if (v52 >= 0x2000000001)
                              {
                                *__error() = 12;
                                goto LABEL_143;
                              }

LABEL_93:
                              v62 = realloc(v51, v61);
                              if (v62)
                              {
                                v79 = v61;
                                v80 = v62;
                                v76 = v62;
                                v55 = __s;
                                goto LABEL_95;
                              }

                              free(v51);
LABEL_143:
                              __s = 0;
                              v79 = 0;
                              v80 = 0;
LABEL_144:
                              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "closeWithStateProc", 759, 133, 0, "reading DAT file");
                              goto LABEL_119;
                            }

                            v55 = v52;
                          }

                          v61 = v52;
                          v62 = v51;
LABEL_95:
                          if (v61 - v55 >= v57)
                          {
                            v63 = v57;
                          }

                          else
                          {
                            v63 = v61 - v55;
                          }

                          v51 = v62;
                          v64 = AAByteStreamPRead(s, &v62[v55], v63, v58);
                          if (v64 < 0)
                          {
                            goto LABEL_144;
                          }

                          if (!v64)
                          {
                            break;
                          }

                          v55 = __s + v64;
                          if (__CFADD__(__s, v64))
                          {
                            goto LABEL_144;
                          }

                          v52 = v79;
                          if (v55 > v79)
                          {
                            goto LABEL_144;
                          }

                          __s += v64;
                          v56 += v64;
                          v58 += v64;
                          v57 -= v64;
                          if (!v57)
                          {
                            goto LABEL_105;
                          }
                        }

                        v52 = v61;
                        if (!v56)
                        {
                          goto LABEL_139;
                        }

LABEL_105:
                        if (a2[3])
                        {
                          v65 = __s;
                          if (__s)
                          {
                            v66 = 0;
                            v67 = v76;
                            while (1)
                            {
                              v68 = (a2[3])(*a2, v67, v65);
                              if (v68 < 1)
                              {
                                break;
                              }

                              v67 += v68;
                              v66 += v68;
                              v65 -= v68;
                              if (!v65)
                              {
                                goto LABEL_113;
                              }
                            }

                            v51 = v76;
                            v66 = v68;
                          }

                          else
                          {
                            v66 = 0;
LABEL_113:
                            v51 = v76;
                          }
                        }

                        else
                        {
                          v66 = -1;
                        }

                        if (v66 != v56)
                        {
                          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "closeWithStateProc", 762, 133, 0, "write state");
                          goto LABEL_119;
                        }

                        v53 = v56 + offset;
                        v50 = v88;
                        if (v56 + offset < v88)
                        {
                          continue;
                        }
                      }

                      else
                      {
LABEL_139:
                        v50 = v88;
                        v53 = offset;
                      }

                      break;
                    }

                    if (v53 != v50)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "closeWithStateProc", 765, 133, 0, "truncated DAT file");
                      goto LABEL_119;
                    }
                  }

LABEL_130:
                  v74 = *(a1 + 607);
                  if (v74)
                  {
                    if ((AAByteStreamCloseWithState(v74) & 0x80000000) != 0)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "closeWithStateProc", 775, 133, 0, "write state");
                      *(a1 + 607) = 0;
                      v4 = 0xFFFFFFFFLL;
                      goto LABEL_120;
                    }

                    *(a1 + 607) = 0;
                    if (a3)
                    {
                      goto LABEL_133;
                    }
                  }

                  else if (a3)
                  {
LABEL_133:
                    v4 = 0;
                    *a3 = -1;
                    goto LABEL_120;
                  }

                  v4 = 0;
                  goto LABEL_120;
                }

                if (a2[3])
                {
                  v70 = v88;
                  if (!v88)
                  {
                    goto LABEL_130;
                  }

                  v71 = 0;
                  v72 = *(a1 + 611);
                  while (1)
                  {
                    v73 = (a2[3])(*a2, v72, v70);
                    if (v73 < 1)
                    {
                      break;
                    }

                    v72 += v73;
                    v71 += v73;
                    v70 -= v73;
                    if (!v70)
                    {
                      goto LABEL_129;
                    }
                  }

                  v71 = v73;
LABEL_129:
                  if ((v71 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_130;
                  }
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "closeWithStateProc", 769, 133, 0, "write state");
LABEL_119:
                v4 = 0xFFFFFFFFLL;
LABEL_120:
                free(v80);
                memset_s(&__s, 0x18uLL, 0, 0x18uLL);
                AAHeaderDestroy(*(a1 + 596));
                free(*(a1 + 600));
                memset_s(a1 + 1196, 0x18uLL, 0, 0x18uLL);
                free(*(a1 + 603));
                memset_s(a1 + 1202, 0x18uLL, 0, 0x18uLL);
                free(*(a1 + 606));
                memset_s(a1 + 1208, 0x18uLL, 0, 0x18uLL);
                free(*(a1 + 611));
                memset_s(a1 + 1218, 0x18uLL, 0, 0x18uLL);
                AAByteStreamClose(*(a1 + 608));
                AAByteStreamClose(*(a1 + 607));
                free(a1);
                return v4;
              }
            }
          }
        }

LABEL_118:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "closeWithStateProc", 747, 133, 0, "write state");
        goto LABEL_119;
      }

      v35 = EncodedData;
      v36 = 0;
      while (1)
      {
        v37 = (a2[3])(*a2, v35, v34);
        if (v37 < 1)
        {
          break;
        }

        v35 += v37;
        v36 += v37;
        v34 -= v37;
        if (!v34)
        {
          goto LABEL_47;
        }
      }

      v36 = v37;
LABEL_47:
      if (v36 < 0)
      {
        goto LABEL_118;
      }
    }

    if (!a2[3])
    {
      goto LABEL_118;
    }

    goto LABEL_49;
  }

  return 0xFFFFFFFFLL;
}

uint64_t writeHeaderProc(uint64_t a1, AAHeader header)
{
  v40 = *MEMORY[0x29EDCA608];
  if (atomic_load((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  length = 0;
  value = 0;
  v5.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v5);
  if ((KeyIndex & 0x80000000) != 0 || ((v7 = AAHeaderGetFieldUInt(header, KeyIndex, &value), v7 <= 1) ? (v8 = 1) : (v8 = v7), v8 <= 0))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 569, 133, 0, "missing TYP");
  }

  else
  {
    v9.ikey = 4997708;
    v10 = AAHeaderGetKeyIndex(header, v9);
    if ((v10 & 0x80000000) == 0)
    {
      FieldString = AAHeaderGetFieldString(header, v10, 0xC8uLL, __s1, &length);
      v12 = FieldString <= 1 ? 1 : FieldString;
      if (v12 >= 1)
      {
        if (strcmp(__s1, (a1 + 4540)))
        {
          __strlcpy_chk();
          *(a1 + 4740) = 0;
          v13 = *(a1 + 1048);
          if (v13)
          {
            v14 = v13(*(a1 + 1040), 90, __s1, 0);
            if (v14 < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "updateLabel", 205, 133, 0, "Caller cancelled");
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 571, 133, 0, "updating label");
              goto LABEL_20;
            }

            if (v14)
            {
              *(a1 + 4740) = 1;
            }
          }
        }
      }
    }

    if (*(a1 + 4740))
    {
      return 0;
    }

    if (value == 77)
    {
      v38[0] = 0;
      v17.ikey = 5263193;
      v18 = AAHeaderGetKeyIndex(header, v17);
      if ((v18 & 0x80000000) == 0)
      {
        FieldUInt = AAHeaderGetFieldUInt(header, v18, v38);
        v20 = FieldUInt <= 1 ? 1 : FieldUInt;
        if (v20 >= 1)
        {
          if (v38[0] == 93)
          {
            *(a1 + 4760) = 0;
            return 0;
          }

          if (v38[0] == 91)
          {
            v21.ikey = 5328729;
            v22 = AAHeaderGetKeyIndex(header, v21);
            if ((v22 & 0x80000000) == 0)
            {
              v23 = AAHeaderGetFieldUInt(header, v22, (a1 + 4760));
              v24 = v23 <= 1 ? 1 : v23;
              if (v24 >= 1 && *(a1 + 4760))
              {
                return 0;
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 584, 133, 0, "expected valid YOQ field");
            goto LABEL_20;
          }
        }
      }
    }

    if (*(a1 + 4864) || *(a1 + 4856) || *(a1 + 4768) || *(a1 + 4872) || *(a1 + 4784) || *(a1 + 4808) || *(a1 + 4832))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 603, 133, 0, "invalid extractor state (blobs)");
    }

    else
    {
      *(a1 + 4768) = AAHeaderClone(header);
      *(a1 + 4776) = AAHeaderGetPayloadSize(header);
      if ((updateFromHeader(a1) & 0x80000000) == 0)
      {
        if (*(a1 + 2096) == 77)
        {
          v25 = (a1 + 1056);
        }

        else
        {
          if (!*(a1 + 4744))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 616, 133, 0, "invalid AssetArchive stream (missing manifest)");
            goto LABEL_20;
          }

          v25 = (a1 + 1056);
          if (*(a1 + 1056))
          {
            v29 = *(a1 + 1048);
            if (v29)
            {
              LOBYTE(v38[0]) = 0;
              v30 = v29(*(a1 + 1040), 91, a1 + 1064, v38);
              if (v30 < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 626, 133, 0, "Caller cancelled");
                goto LABEL_20;
              }

              if (v30)
              {
                __strlcpy_chk();
                v31.ikey = 5521744;
                v32 = AAHeaderGetKeyIndex(*(a1 + 4768), v31);
                if (v32 < 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 632, 133, 0, "no PAT field in header");
                  goto LABEL_20;
                }

                v33 = v32;
                v34 = strlen((a1 + 1064));
                v35.ikey = 5521744;
                if (AAHeaderSetFieldString(*(a1 + 4768), v33, v35, (a1 + 1064), v34) < 0)
                {
                  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 633, 133, 0, "set PAT");
                  goto LABEL_20;
                }
              }
            }
          }
        }

        if (*(a1 + 2088) == 70 && *(a1 + 2096) == 69)
        {
          if (!*v25)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 640, 133, 0, "missing PAT");
            goto LABEL_20;
          }

          if ((concatExtractPath(v38, 0x400uLL, (a1 + 3516), (a1 + 1064)) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 641, 133, 0, "invalid PAT: %s");
            goto LABEL_20;
          }

          v26 = strlen(v38);
          makePath(v38, v26);
          v27 = aaArchiveFileOutputStreamOpenAt(-1, v38, *(a1 + 2104), *(a1 + 2488), 0, *(a1 + 2472), *(a1 + 2480));
          *(a1 + 4856) = v27;
          if (!v27)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 647, 133, 0, "file stream");
            goto LABEL_20;
          }
        }

        if (!*(a1 + 1060) || *(a1 + 4856) || *(a1 + 2104) < *(a1 + 4752) || (v28 = AATempFileStreamOpenWithDirectory((a1 + 12)), (*(a1 + 4864) = v28) != 0))
        {
          if (*(a1 + 4776) || (processEntry_0(a1) & 0x80000000) == 0)
          {
            return 0;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 658, 133, 0, "entry processing");
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 654, 133, 0, "temp stream");
        }

        goto LABEL_20;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeHeaderProc", 610, 133, 0, "extract entry attributes from header");
    }
  }

LABEL_20:
  v16 = 0;
  atomic_compare_exchange_strong((a1 + 8), &v16, 1u);
  return 0xFFFFFFFFLL;
}

uint64_t writeBlobProc(uint64_t a1, int a2, char *__src, rsize_t __smax)
{
  if (atomic_load((a1 + 8)))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (!__smax || *(a1 + 4740))
  {
    return result;
  }

  if (*(a1 + 4776) < __smax)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeBlobProc", 672, 133, 0, "blob size mismatch");
LABEL_87:
    v40 = 0;
    atomic_compare_exchange_strong((a1 + 8), &v40, 1u);
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 4768))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeBlobProc", 673, 133, 0, "invalid state");
    goto LABEL_87;
  }

  result = 0;
  v9 = *&a2 & 0xFFFFFFLL;
  if ((*&a2 & 0xFFFFFFuLL) <= 0x544143)
  {
    if (v9 != 4408665)
    {
      if (v9 == 4997953)
      {
        v10 = *(a1 + 4832);
        v11 = __CFADD__(v10, __smax);
        v12 = v10 + __smax;
        if (!v11 && (v12 & 0x8000000000000000) == 0)
        {
          v13 = (a1 + 4832);
          v14 = *(a1 + 4840);
          if (v14 >= v12)
          {
            goto LABEL_74;
          }

          do
          {
            while (!v14)
            {
              v14 = 0x4000;
              if (v12 <= 0x4000)
              {
                v16 = (a1 + 4848);
                v14 = 0x4000;
                goto LABEL_72;
              }
            }

            v15 = v14 >> 1;
            if ((v14 & (v14 >> 1)) != 0)
            {
              v15 = v14 & (v14 >> 1);
            }

            v14 += v15;
          }

          while (v14 < v12);
          v16 = (a1 + 4848);
          if (v14 >= 0x2000000001)
          {
            goto LABEL_89;
          }

LABEL_72:
          v35 = *v16;
          v36 = realloc(*v16, v14);
          if (v36)
          {
            *(a1 + 4848) = v36;
            *(a1 + 4840) = v14;
LABEL_74:
            v37 = *(a1 + 4848);
            if (__src)
            {
LABEL_75:
              memcpy((v37 + *v13), __src, __smax);
LABEL_82:
              *v13 += __smax;
              goto LABEL_83;
            }

LABEL_80:
            if (v37)
            {
              memset_s((v37 + *v13), __smax, 0, __smax);
            }

            goto LABEL_82;
          }

          goto LABEL_94;
        }

LABEL_68:
        v18 = -1;
        goto LABEL_69;
      }

      return result;
    }

    v21 = *(a1 + 4784);
    v11 = __CFADD__(v21, __smax);
    v22 = v21 + __smax;
    if (v11 || (v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    v13 = (a1 + 4784);
    v23 = *(a1 + 4792);
    if (v23 >= v22)
    {
LABEL_79:
      v37 = *(a1 + 4800);
      if (__src)
      {
        goto LABEL_75;
      }

      goto LABEL_80;
    }

    do
    {
      while (!v23)
      {
        v23 = 0x4000;
        if (v22 <= 0x4000)
        {
          v16 = (a1 + 4800);
          v23 = 0x4000;
          goto LABEL_77;
        }
      }

      v24 = v23 >> 1;
      if ((v23 & (v23 >> 1)) != 0)
      {
        v24 = v23 & (v23 >> 1);
      }

      v23 += v24;
    }

    while (v23 < v22);
    v16 = (a1 + 4800);
    if (v23 >= 0x2000000001)
    {
      goto LABEL_89;
    }

LABEL_77:
    v35 = *v16;
    v38 = realloc(*v16, v23);
    if (v38)
    {
      *(a1 + 4800) = v38;
      *(a1 + 4792) = v23;
      goto LABEL_79;
    }

LABEL_94:
    v42 = v35;
    goto LABEL_95;
  }

  if (v9 == 5521752)
  {
    v25 = *(a1 + 4808);
    v11 = __CFADD__(v25, __smax);
    v26 = v25 + __smax;
    if (v11 || (v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    v13 = (a1 + 4808);
    v27 = *(a1 + 4816);
    if (v27 < v26)
    {
      do
      {
        while (!v27)
        {
          v27 = 0x4000;
          if (v26 <= 0x4000)
          {
            v16 = (a1 + 4824);
            v27 = 0x4000;
            goto LABEL_90;
          }
        }

        v28 = v27 >> 1;
        if ((v27 & (v27 >> 1)) != 0)
        {
          v28 = v27 & (v27 >> 1);
        }

        v27 += v28;
      }

      while (v27 < v26);
      v16 = (a1 + 4824);
      if (v27 >= 0x2000000001)
      {
LABEL_89:
        *__error() = 12;
        goto LABEL_96;
      }

LABEL_90:
      v35 = *v16;
      v41 = realloc(*v16, v27);
      if (!v41)
      {
        goto LABEL_94;
      }

      *(a1 + 4824) = v41;
      *(a1 + 4816) = v27;
    }

    v37 = *(a1 + 4824);
    if (__src)
    {
      goto LABEL_75;
    }

    goto LABEL_80;
  }

  if (v9 == 5521732)
  {
    v17 = *(a1 + 4856);
    if (v17)
    {
      if (!v17[3])
      {
        goto LABEL_68;
      }

      v18 = 0;
      v19 = __smax;
      while (1)
      {
        v20 = (v17[3])(*v17, __src, v19);
        if (v20 < 1)
        {
          break;
        }

        __src += v20;
        v18 += v20;
        v19 -= v20;
        if (!v19)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      v29 = *(a1 + 4864);
      if (!v29)
      {
        v31 = *(a1 + 4872);
        v11 = __CFADD__(v31, __smax);
        v32 = v31 + __smax;
        if (!v11 && (v32 & 0x8000000000000000) == 0)
        {
          v13 = (a1 + 4872);
          v33 = *(a1 + 4880);
          if (v33 < v32)
          {
            do
            {
              while (!v33)
              {
                v33 = 0x4000;
                if (v32 <= 0x4000)
                {
                  v16 = (a1 + 4888);
                  v33 = 0x4000;
                  goto LABEL_98;
                }
              }

              v34 = v33 >> 1;
              if ((v33 & (v33 >> 1)) != 0)
              {
                v34 = v33 & (v33 >> 1);
              }

              v33 += v34;
            }

            while (v33 < v32);
            v16 = (a1 + 4888);
            if (v33 >= 0x2000000001)
            {
              goto LABEL_89;
            }

LABEL_98:
            v43 = *v16;
            v44 = v33;
            v45 = realloc(*v16, v33);
            if (!v45)
            {
              v42 = v43;
LABEL_95:
              free(v42);
LABEL_96:
              *v16 = 0;
              v18 = -1;
              *v13 = 0;
              v13[1] = 0;
LABEL_69:
              if (v18 != __smax)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeBlobProc", 688, 133, 0, "store blob");
                goto LABEL_87;
              }

LABEL_83:
              v39 = *(a1 + 4776) - __smax;
              *(a1 + 4776) = v39;
              if (v39 || (processEntry_0(a1) & 0x80000000) == 0)
              {
                return 0;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "writeBlobProc", 693, 133, 0, "entry processing");
              goto LABEL_87;
            }

            *(a1 + 4888) = v45;
            *(a1 + 4880) = v44;
          }

          v37 = *(a1 + 4888);
          if (__src)
          {
            goto LABEL_75;
          }

          goto LABEL_80;
        }

        goto LABEL_68;
      }

      if (!v29[3])
      {
        goto LABEL_68;
      }

      v18 = 0;
      v30 = __smax;
      while (1)
      {
        v20 = (v29[3])(*v29, __src, v30);
        if (v20 < 1)
        {
          break;
        }

        __src += v20;
        v18 += v20;
        v30 -= v20;
        if (!v30)
        {
          goto LABEL_69;
        }
      }
    }

    v18 = v20;
    goto LABEL_69;
  }

  return result;
}

uint64_t processEntry_0(uint64_t *a1)
{
  v75 = *MEMORY[0x29EDCA608];
  length = 0;
  memset(&v54, 0, sizeof(v54));
  hash_function = 0;
  v58 = 0u;
  v59 = 0u;
  *value = 0u;
  v57 = 0u;
  v2 = *a1;
  v3 = *(a1 + 2492);
  if (*(a1 + 2492))
  {
    v4 = strcmp(a1 + 2492, a1 + 3516) != 0;
  }

  else
  {
    v4 = 1;
  }

  if ((v2 & 2) != 0)
  {
    v5 = 0x20000000000001;
  }

  else
  {
    v5 = 0x20000000000000;
  }

  v6 = *(a1 + 2416);
  if (v6)
  {
    if (a1[304] != a1[598])
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 235, 133, 0, "blob size mismatch");
      goto LABEL_97;
    }

    a1[303] = a1[600];
  }

  if ((v6 & 2) != 0)
  {
    if (a1[306] != a1[601])
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 240, 133, 0, "blob size mismatch");
      goto LABEL_97;
    }

    a1[305] = a1[603];
  }

  if ((v6 & 4) != 0)
  {
    if (a1[308] != a1[604])
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 245, 133, 0, "blob size mismatch");
      goto LABEL_97;
    }

    a1[307] = a1[606];
  }

  v7 = a1[262];
  if (v7 <= 76)
  {
    if (v7 == 67)
    {
      if (*(a1 + 264))
      {
        if (!v3)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 399, 133, 0, "no input dir");
          goto LABEL_156;
        }

        if (v2 < 0)
        {
          fprintf(*MEMORY[0x29EDCA610], "Copy %c %s\n", *(a1 + 2088), a1 + 1064);
        }

        if (!v4)
        {
          goto LABEL_124;
        }

        if ((concatPath(v62, 0x400uLL, a1 + 2492, a1 + 1064) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 402, 133, 0, "invalid PAT: %s");
        }

        else if ((concatExtractPath(__s, 0x400uLL, a1 + 3516, a1 + 1064) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 403, 133, 0, "invalid PAT: %s");
        }

        else if ((aaCopyFile(v62, __s, v5) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 404, 133, 0, "copy file: %s");
        }

        else
        {
          if (!a1[598] || (applyYEC(a1 + 598, a1 + 3516, a1 + 1064) & 0x80000000) == 0)
          {
            goto LABEL_124;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 406, 133, 0, "apply YEC (copy)", v46);
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 398, 133, 0, "missing PAT");
      }

      goto LABEL_97;
    }

    if (v7 == 69)
    {
      if (*(a1 + 264))
      {
        if ((concatExtractPath(__s, 0x400uLL, a1 + 3516, a1 + 1064) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 263, 133, 0, "invalid PAT: %s");
        }

        else
        {
          if (v2 < 0)
          {
            fprintf(*MEMORY[0x29EDCA610], "Extract %c %s\n", *(a1 + 2088), a1 + 1064);
          }

          v27 = strlen(__s);
          makePath(__s, v27);
          v28 = a1[261];
          switch(v28)
          {
            case 'L':
              v35 = a1[596];
              v36.ikey = 4935244;
              KeyIndex = AAHeaderGetKeyIndex(v35, v36);
              if ((KeyIndex & 0x80000000) != 0 || ((FieldString = AAHeaderGetFieldString(v35, KeyIndex, 0x400uLL, v62, &length), FieldString <= 1) ? (v39 = 1) : (v39 = FieldString), v39 <= 0))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 279, 133, 0, "missing LNK", v46);
              }

              else
              {
                unlink(__s);
                if ((symlink(v62, __s) & 0x80000000) == 0)
                {
                  goto LABEL_124;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 281, 133, 0, "creating symlink: %s");
              }

              break;
            case 'F':
              v34 = a1[607];
              if (v34)
              {
                AAByteStreamClose(v34);
                a1[607] = 0;
                if (!a1[598] || (applyYEC(a1 + 598, a1 + 3516, a1 + 1064) & 0x80000000) == 0)
                {
                  goto LABEL_124;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 288, 133, 0, "apply YEC (extract)", v46);
              }

              else
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 286, 133, 0, "no file stream", v46);
              }

              break;
            case 'D':
              unlink(__s);
              if ((mkdir(__s, 0x1EDu) & 0x80000000) == 0 || *__error() == 17 && !stat(__s, &v54) && (v54.st_mode & 0xF000) == 0x4000)
              {
                goto LABEL_124;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 274, 133, 0, "creating dir: %s");
              break;
            default:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 292, 133, 0, "Unsupported entry type (extract): %c\n");
              break;
          }
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 262, 133, 0, "missing PAT");
      }

      goto LABEL_97;
    }

    if (v7 != 73)
    {
LABEL_123:
      fprintf(*MEMORY[0x29EDCA610], "TODO(%c) %c %s\n", v7, *(a1 + 2088), a1 + 1064);
      goto LABEL_124;
    }

    if (!*(a1 + 264))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 425, 133, 0, "missing PAT");
      goto LABEL_97;
    }

    if (!v3)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 426, 133, 0, "no input dir");
      goto LABEL_156;
    }

    if ((concatPath(v62, 0x400uLL, a1 + 2492, a1 + 1064) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 427, 133, 0, "invalid PAT: %s");
      goto LABEL_97;
    }

    if (v2 < 0)
    {
      fprintf(*MEMORY[0x29EDCA610], "Src check %c %s\n", *(a1 + 2088), a1 + 1064);
    }

    FieldCount = AAHeaderGetFieldCount(a1[596]);
    *__s = 0u;
    memset(v61, 0, 156);
    if (!FieldCount)
    {
      goto LABEL_95;
    }

    v13 = FieldCount;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      if (AAHeaderGetFieldType(a1[596], v14) != 3)
      {
        goto LABEL_91;
      }

      FieldKey = AAHeaderGetFieldKey(a1[596], v14);
      if (!v15)
      {
        v22 = FieldKey.ikey & 0xFFFFFF;
        if ((FieldKey.ikey & 0xFFFFFF) == 0x324853)
        {
          v15 = 0x2000;
        }

        else if (v22 == 3491923)
        {
          v15 = 0x8000;
        }

        else
        {
          if (v22 != 3360851)
          {
            v15 = 0;
LABEL_91:
            v23 = 0;
            goto LABEL_92;
          }

          v15 = 0x4000;
        }
      }

      if (!*__s && (aaEntryHashesInitWithPath(__s, v15, a1 + 2492, a1 + 1064) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 454, 133, 0, "computing file digest: %s");
        goto LABEL_153;
      }

      if (AAHeaderGetFieldHash(a1[596], v14, 0x40uLL, &hash_function, value) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 458, 133, 0, "retrieving digest from header", v46);
        goto LABEL_153;
      }

      if ((__s[0] & 4) != 0 && hash_function == 3)
      {
        v19 = *(v61 + 12) == *value && *(&v61[1] + 4) == *&value[8] && *(&v61[1] + 12) == v57 && *(&v61[2] + 4) == *(&v57 + 1);
      }

      else
      {
        if ((__s[0] & 8) != 0 && hash_function == 4)
        {
          v20 = &v61[2] + 12;
          v21 = 48;
        }

        else
        {
          v23 = 0;
          if ((__s[0] & 0x10) == 0 || hash_function != 5)
          {
            goto LABEL_92;
          }

          v20 = &v61[5] + 12;
          v21 = 64;
        }

        v19 = memcmp(v20, value, v21) == 0;
      }

      v23 = v19;
LABEL_92:
      if (++v14 >= v13 || v23)
      {
        if (v23)
        {
          goto LABEL_45;
        }

LABEL_95:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 465, 133, 0, "patch doesn't match source file: %s");
LABEL_153:
        v3 = 0;
        goto LABEL_156;
      }
    }
  }

  if (v7 <= 79)
  {
    if (v7 == 77)
    {
      v24 = 0;
      v25 = 0;
      v3 = 1;
      *(a1 + 1186) = 1;
      goto LABEL_99;
    }

    if (v7 == 79)
    {
      if (*(a1 + 264))
      {
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v74 = 0;
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
        *v62 = 0u;
        v8 = *(a1 + 2112);
        if (v8)
        {
          __strlcat_chk();
          v8 = *(a1 + 2112);
          if ((v8 & 2) == 0)
          {
LABEL_24:
            if ((v8 & 8) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_166;
          }
        }

        else if ((a1[264] & 2) == 0)
        {
          goto LABEL_24;
        }

        __strlcat_chk();
        v8 = *(a1 + 2112);
        if ((v8 & 8) == 0)
        {
LABEL_25:
          if ((v8 & 4) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_167;
        }

LABEL_166:
        __strlcat_chk();
        v8 = *(a1 + 2112);
        if ((v8 & 4) == 0)
        {
LABEL_26:
          if ((v8 & 0x40) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_168;
        }

LABEL_167:
        __strlcat_chk();
        v8 = *(a1 + 2112);
        if ((v8 & 0x40) == 0)
        {
LABEL_27:
          if ((v8 & 0x10) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_169;
        }

LABEL_168:
        __strlcat_chk();
        v8 = *(a1 + 2112);
        if ((v8 & 0x10) == 0)
        {
LABEL_28:
          if ((v8 & 0x20) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

LABEL_169:
        __strlcat_chk();
        if ((a1[264] & 0x20) == 0)
        {
LABEL_30:
          v9 = *(a1 + 2184);
          if ((v9 & 2) != 0)
          {
            __strlcat_chk();
            v9 = *(a1 + 2184);
            if ((v9 & 1) == 0)
            {
LABEL_32:
              if ((v9 & 8) == 0)
              {
                goto LABEL_33;
              }

              goto LABEL_173;
            }
          }

          else if ((a1[273] & 1) == 0)
          {
            goto LABEL_32;
          }

          __strlcat_chk();
          v9 = *(a1 + 2184);
          if ((v9 & 8) == 0)
          {
LABEL_33:
            if ((v9 & 4) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

LABEL_173:
          __strlcat_chk();
          if ((a1[273] & 4) == 0)
          {
LABEL_35:
            v10 = *(a1 + 2240);
            if ((v10 & 4) != 0)
            {
              __strlcat_chk();
              v10 = *(a1 + 2240);
              if ((v10 & 8) == 0)
              {
LABEL_37:
                if ((v10 & 0x10) == 0)
                {
                  goto LABEL_39;
                }

                goto LABEL_38;
              }
            }

            else if ((a1[280] & 8) == 0)
            {
              goto LABEL_37;
            }

            __strlcat_chk();
            if ((a1[280] & 0x10) == 0)
            {
LABEL_39:
              v11 = *(a1 + 2416);
              if (v11)
              {
                __strlcat_chk();
                v11 = *(a1 + 2416);
                if ((v11 & 2) == 0)
                {
LABEL_41:
                  if ((v11 & 4) == 0)
                  {
LABEL_43:
                    fprintf(*MEMORY[0x29EDCA610], "Dst fixup %c%s %s\n", *(a1 + 2088), v62, a1 + 1064);
LABEL_44:
                    *v62 = 0;
                    if ((aaCheckAndFixWithPath(a1 + 2112, a1 + 2184, a1 + 2240, a1 + 2416, -1, v62, a1 + 3516, a1 + 1064, v5) & 0x80000000) != 0)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 503, 133, 0, "fixup failed: %s");
                      goto LABEL_153;
                    }

LABEL_45:
                    v3 = 1;
LABEL_156:
                    v24 = 0;
                    goto LABEL_157;
                  }

LABEL_42:
                  __strlcat_chk();
                  goto LABEL_43;
                }
              }

              else if ((a1[302] & 2) == 0)
              {
                goto LABEL_41;
              }

              __strlcat_chk();
              if ((a1[302] & 4) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_42;
            }

LABEL_38:
            __strlcat_chk();
            goto LABEL_39;
          }

LABEL_34:
          __strlcat_chk();
          goto LABEL_35;
        }

LABEL_29:
        __strlcat_chk();
        goto LABEL_30;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 472, 133, 0, "missing PAT");
      goto LABEL_97;
    }

    goto LABEL_123;
  }

  if (v7 != 80)
  {
    if (v7 == 82)
    {
      if (*(a1 + 264))
      {
        if (!v3)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 413, 133, 0, "no input dir");
          goto LABEL_156;
        }

        if (v2 < 0)
        {
          fprintf(*MEMORY[0x29EDCA610], "Remove %c %s\n", *(a1 + 2088), a1 + 1064);
        }

        if (v4)
        {
          goto LABEL_124;
        }

        if ((concatExtractPath(__s, 0x400uLL, a1 + 3516, a1 + 1064) & 0x80000000) == 0)
        {
          unlink(__s);
LABEL_124:
          v24 = 0;
          v25 = 0;
          v3 = 1;
          goto LABEL_99;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 417, 133, 0, "invalid PAT: %s");
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 412, 133, 0, "missing PAT");
      }

LABEL_97:
      v24 = 0;
      v25 = 0;
LABEL_98:
      v3 = 0;
      goto LABEL_99;
    }

    goto LABEL_123;
  }

  if (!*(a1 + 264))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 301, 133, 0, "missing PAT");
    goto LABEL_97;
  }

  if (v2 < 0)
  {
    fprintf(*MEMORY[0x29EDCA610], "Patch %s\n", a1 + 1064);
  }

  if (!v3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 303, 133, 0, "no input dir");
    goto LABEL_156;
  }

  if (a1[607])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 304, 133, 0, "file stream already opened", v46);
    goto LABEL_97;
  }

  if ((concatExtractPath(__s, 0x400uLL, a1 + 3516, a1 + 1064) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 305, 133, 0, "invalid PAT: %s");
    goto LABEL_97;
  }

  v51 = 0;
  v52 = 0;
  v29 = a1[608];
  if (v29)
  {
    FD = aaFileStreamGetFD(v29);
    v31 = MappedBufferCreateWithFD(FD, 0, 0xFFFFFFFFFFFFFFFFLL);
    v24 = v31;
    if (!v31)
    {
      v42 = "mapping patch file";
      v43 = 316;
      goto LABEL_236;
    }

    v32 = BXDiffMatchesOBuf(v31);
    DataSize = MappedBufferGetDataSize(v24);
  }

  else
  {
    v24 = 0;
    v32 = a1[611];
    DataSize = a1[609];
  }

  v40 = strlen(__s);
  makePath(__s, v40);
  if (DataSize < 9 || *v32 != 0x3031464649444952)
  {
    if ((BXDiff5GetPatchInfo(v32, DataSize, &v51) & 0x80000000) != 0)
    {
      v46 = (a1 + 133);
      v42 = "invalid patch: %s";
      v43 = 353;
    }

    else if (v52)
    {
      v41 = aaArchiveFileOutputStreamOpenAt(-1, __s, v51, *(a1 + 622), 0, *(a1 + 618), a1[310]);
      a1[607] = v41;
      if (v41)
      {
        if ((BXPatch5StreamWithFlags(0, 0, 0, v32, DataSize, aaByteStreamPCWriteProc, v41, 2) & 0x80000000) == 0)
        {
LABEL_207:
          AAByteStreamClose(a1[607]);
          a1[607] = 0;
          goto LABEL_208;
        }

        v46 = __s;
        v42 = "patching failed: %s";
        v43 = 364;
      }

      else
      {
        v42 = "file stream";
        v43 = 359;
      }
    }

    else if ((concatPath(v62, 0x400uLL, a1 + 2492, a1 + 1064) & 0x80000000) != 0)
    {
      v46 = (a1 + 133);
      v42 = "invalid PAT: %s";
      v43 = 371;
    }

    else if (v4)
    {
      v44 = aaArchiveFileOutputStreamOpenAt(-1, __s, v51, *(a1 + 622), 0, *(a1 + 618), a1[310]);
      a1[607] = v44;
      if (!v44)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 381, 133, 0, "file stream", v46);
        goto LABEL_237;
      }

      if ((BXPatch5FileWithFlags(v62, v32, DataSize, aaByteStreamPCWriteProc, v44, 2) & 0x80000000) == 0)
      {
        goto LABEL_207;
      }

      v46 = __s;
      v42 = "patching failed: %s";
      v43 = 386;
    }

    else if (HIDWORD(v52))
    {
      if ((BXPatch5InPlace(__s, v32, DataSize, 0) & 0x80000000) == 0)
      {
LABEL_208:
        MappedBufferDestroy(v24);
        if (!a1[598] || (applyYEC(a1 + 598, a1 + 3516, a1 + 1064) & 0x80000000) == 0)
        {
          v24 = 0;
          v3 = 1;
LABEL_157:
          v25 = 0;
          goto LABEL_99;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 392, 133, 0, "apply YEC (patch)");
        v24 = 0;
LABEL_237:
        v3 = 0;
        goto LABEL_157;
      }

      v42 = "in-place patching failed";
      v43 = 376;
    }

    else
    {
      v42 = "patch doesn't allow in-place";
      v43 = 375;
    }

LABEL_236:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", v43, 133, 0, v42, v46);
    goto LABEL_237;
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v25 = AAMemoryInputStreamOpen(v32, DataSize);
  if (!v25)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 336, 133, 0, "AAMemoryInputStreamOpen");
    goto LABEL_98;
  }

  if ((concatPath(v62, 0x400uLL, a1 + 2492, a1 + 1064) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 339, 133, 0, "invalid PAT: %s");
    goto LABEL_98;
  }

  *&v48 = v62;
  *(&v48 + 1) = __s;
  v3 = 1;
  DWORD2(v49) = 1;
  LODWORD(v50) = 1;
  if ((RawImagePatchInternal(&v47, v25, v45) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "processEntry", 348, 133, 0, "RawImagePatchInternal", v46);
    goto LABEL_98;
  }

LABEL_99:
  AAHeaderDestroy(a1[596]);
  a1[596] = 0;
  AAByteStreamClose(a1[608]);
  a1[608] = 0;
  AAByteStreamClose(a1[607]);
  a1[607] = 0;
  a1[609] = 0;
  a1[598] = 0;
  a1[601] = 0;
  a1[604] = 0;
  memset_s(a1 + 264, 0x48uLL, 0, 0x48uLL);
  memset_s(a1 + 273, 0x38uLL, 0, 0x38uLL);
  memset_s(a1 + 280, 0xACuLL, 0, 0xACuLL);
  memset_s(a1 + 302, 0x38uLL, 0, 0x38uLL);
  AAByteStreamClose(v25);
  MappedBufferDestroy(v24);
  if (v3)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t applyYEC(uint64_t *a1, char *a2, const char *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  memset(v16, 0, 172);
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  LOBYTE(v8) = 1;
  *(&v8 + 1) = a1[2];
  *&v9 = v3;
  v7 = 0;
  v5 = aaCheckAndFixWithPath(v14, v12, v16, &v8, -1, &v7, a2, a3, 0x20000000000000);
  if (v5 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAssetExtractStream.c", "applyYEC", 113, 133, 0, "ECC failed: %s", a3);
  }

  return (v5 >> 31);
}

unsigned __int16 *enterThreadErrorContext()
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    ++result[2];
  }

  else
  {
    v2 = calloc(1uLL, 0x2000uLL);
    if (v2)
    {
      v2[2] = 1;
      *(v2 + 18) = 531890176;

      return setThreadErrorContext(v2);
    }

    else
    {
      v3 = *__error();

      return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThreadErrorContext", 76, 5, v3, "malloc");
    }
  }

  return result;
}

unsigned __int16 *setThreadErrorContext(const void *a1)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_setspecific(ErrorContextKey, a1);
  if (result)
  {
    v4 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "setThreadErrorContext", 65, 5, v4, "pthread_setspecific");
  }

  return result;
}

uint64_t leaveThreadErrorContext(__CFError **a1, const __CFString **a2, int a3)
{
  userInfoValues[1] = *MEMORY[0x29EDCA608];
  ErrorContextKey = getErrorContextKey();
  v7 = pthread_getspecific(ErrorContextKey);
  if (v7)
  {
    v8 = v7;
    v9 = v7[2] - 1;
    v7[2] = v9;
    if (!v9)
    {
      v11 = v7[36];
      v10 = *v7;
      if (!v7[36] && (v10 & 0x80000000) == 0)
      {
        if (!v7[3] || !a2 && !a3)
        {
          goto LABEL_46;
        }

        bzero(userInfoKeys, 0x400uLL);
        v27 = 0;
        do
        {
          v28 = strlen(userInfoKeys);
          if (v28 + 20 > 0x3FF)
          {
            break;
          }

          if (v28)
          {
            snprintf(userInfoKeys + v28, 1024 - v28, ",0x%08x");
          }

          else
          {
            snprintf(userInfoKeys, 0x400uLL, "Warnings:0x%08x");
          }

          ++v27;
        }

        while (v27 < v8[3]);
        v29 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], userInfoKeys, 0x600u);
        if (!v29)
        {
          goto LABEL_46;
        }

        v30 = v29;
        if (a2)
        {
          *a2 = v29;
          goto LABEL_46;
        }

        Length = CFStringGetLength(v29);
        v38 = calloc(1uLL, Length + 1);
        if (v38)
        {
          v39 = v38;
          CFStringGetCString(v30, v38, Length + 1, 0x600u);
          fprintf(*MEMORY[0x29EDCA610], "%s\n", v39);
          free(v39);
        }

        v36 = v30;
LABEL_45:
        CFRelease(v36);
        goto LABEL_46;
      }

      if (!a1 && !a3)
      {
        goto LABEL_46;
      }

      v12 = calloc(v11 + 32, 1uLL);
      if (!v12)
      {
        goto LABEL_46;
      }

      v13 = v12;
      v14 = v12;
      if ((v10 & 0x80000000) != 0)
      {
        snprintf(v12, v11 + 32, "Error 0x%08x\n", v10);
        v14 = &v13[strlen(v13)];
      }

      v15 = v8[36];
      if (v8[36])
      {
        v16 = 0;
        do
        {
          v17 = (v8 + v16 + 76);
          v18 = *v17;
          v19 = v18 + v16;
          if (v18 < 4 || v19 > v15)
          {
            break;
          }

          v21 = v18 - 3;
          memcpy(v14, v17 + 1, v21);
          v22 = &v14[v21];
          *v22 = 10;
          v14 = v22 + 1;
          v16 = v19;
          v15 = v8[36];
        }

        while (v15 > v19);
      }

      if (v14 > v13)
      {
        *(v14 - 1) = 0;
      }

      v23 = *MEMORY[0x29EDB8ED8];
      v24 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v13, 0x600u);
      if (!v24)
      {
        free(v13);
        goto LABEL_46;
      }

      v25 = v24;
      userInfoKeys[0] = *MEMORY[0x29EDB8F58];
      userInfoValues[0] = v24;
      v26 = CFErrorCreateWithUserInfoKeysAndValues(v23, @"com.apple.ParallelCompression", 1, userInfoKeys, userInfoValues, 1);
      CFRelease(v25);
      free(v13);
      if (v26)
      {
        if (!a1)
        {
          v31 = CFErrorCopyDescription(v26);
          if (v31)
          {
            v32 = v31;
            v33 = CFStringGetLength(v31);
            v34 = calloc(1uLL, v33 + 1);
            if (v34)
            {
              v35 = v34;
              CFStringGetCString(v32, v34, v33 + 1, 0x600u);
              fprintf(*MEMORY[0x29EDCA610], "%s\n", v35);
              free(v35);
            }

            CFRelease(v32);
          }

          v36 = v26;
          goto LABEL_45;
        }

        *a1 = v26;
      }

LABEL_46:
      setThreadErrorContext(0);
      free(v8);
      return v10;
    }
  }

  return 0;
}

unsigned __int16 *appendThreadErrorContextString(unsigned __int16 *result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      ErrorContextKey = getErrorContextKey();
      result = pthread_getspecific(ErrorContextKey);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = result[36];
        if (v6 + (v2 + 3) <= result[37])
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *updateThreadErrorContextErrorCode(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *updateThreadErrorContextWarningCode(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *saveThreadErrorContext(void *a1)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    v4 = result;
    bzero(a1, 0x2000uLL);
    v5 = v4[36];
    if (v5 <= 0x1FB4)
    {
      v6 = v5 + 76;
    }

    else
    {
      v6 = 0;
    }

    return memcpy(a1, v4, v6);
  }

  return result;
}

unsigned __int16 *restoreThreadErrorContext(__int128 *a1)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    v4 = a1[1];
    v12 = *a1;
    v13 = v4;
    v5 = a1[3];
    v14 = a1[2];
    *v15 = v5;
    *&v15[12] = *(a1 + 60);
    if ((v12 & 0x80000000) == 0)
    {
      v6 = WORD3(v12);
      if ((*result & 0x80000000) != 0 && WORD3(v12) <= 0xFu)
      {
        v6 = WORD3(v12) + 1;
        *(&v12 + WORD3(v12) + 2) = *result;
      }

      v7 = result[3];
      if (result[3] && v6 <= 0xF)
      {
        v8 = 0;
        do
        {
          v9 = *&result[2 * v8 + 4];
          if (v8 >= v6 || *(&v12 + v8 + 2) != v9)
          {
            *(&v12 + v6++ + 2) = v9;
          }

          ++v8;
        }

        while (v8 < v7 && v6 < 0x10);
      }

      WORD3(v12) = v6;
    }

    v10 = *v15;
    *(result + 2) = v14;
    *(result + 3) = v10;
    *(result + 30) = *&v15[12];
    v11 = v13;
    *result = v12;
    *(result + 1) = v11;
    if (*&v15[24] <= 0x1FB4uLL)
    {
      return memcpy(result + 38, a1 + 76, *&v15[24]);
    }
  }

  return result;
}

uint64_t createThread(pthread_t *a1, uint64_t a2, uint64_t a3, size_t a4)
{
  *__relative_priority = 0;
  v8 = calloc(1uLL, 0x2000uLL);
  if (!v8)
  {
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 552, 5, *v15, "malloc");
    return -*__error();
  }

  v9 = v8;
  v10 = calloc(1uLL, 0x40uLL);
  if (!v10)
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 555, 5, *v16, "malloc");
    v17 = __error();
    v13 = -*v17;
    if (!*v17)
    {
      return v13;
    }

    goto LABEL_9;
  }

  v11 = v10;
  v12 = pthread_attr_init(v10);
  if (v12)
  {
    v13 = v12;
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 558, 5, v14, "pthread_attr_init");
  }

  else if (a4 && (v20 = pthread_attr_setstacksize(v11, a4), v20))
  {
    v13 = v20;
    v21 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 564, 5, v21, "pthread_attr_setstacksize");
  }

  else
  {
    v22 = pthread_self();
    qos_class_np = pthread_get_qos_class_np(v22, &__relative_priority[1], __relative_priority);
    if (qos_class_np)
    {
      v13 = qos_class_np;
      v24 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 570, 5, v24, "pthread_get_qos_class_np");
    }

    else
    {
      v25 = pthread_attr_set_qos_class_np(v11, __relative_priority[1], __relative_priority[0]);
      if (v25)
      {
        v13 = v25;
        v26 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 572, 5, v26, "pthread_attr_set_qos_class_np");
      }

      else
      {
        v30[0] = MEMORY[0x29EDCA5F8];
        v30[1] = 0x40000000;
        v30[2] = __createThread_block_invoke;
        v30[3] = &__block_descriptor_tmp;
        v30[4] = v9;
        v27 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v30);
        v9[2] = v27;
        if (v27)
        {
          *v9 = a2;
          v9[1] = a3;
          *(v9 + 7) = 1;
          *(v9 + 24) = 530317312;
          v13 = pthread_create(a1, v11, threadWrapperProc, v9);
          if (v13)
          {
            v28 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 591, 5, v28, "pthread_create");
          }
        }

        else
        {
          v29 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 578, 5, *v29, "dispatch_block_create");
          v13 = -*__error();
        }
      }
    }
  }

  pthread_attr_destroy(v11);
  free(v11);
  if (v13)
  {
LABEL_9:
    v18 = v9[2];
    if (v18)
    {
      _Block_release(v18);
    }

    free(v9);
  }

  return v13;
}

uint64_t threadWrapperProc(uint64_t a1)
{
  setThreadErrorContext((a1 + 24));
  (*(*(a1 + 16) + 16))();
  setThreadErrorContext(0);
  return a1;
}

uint64_t joinThread(_opaque_pthread_t *a1)
{
  v20 = 0;
  if (pthread_join(a1, &v20))
  {
    joinThread_cold_1();
  }

  v1 = v20;
  if (*(v20 + 14) != 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 627, 5, 0, "expected ref_count=1 for terminating thread");
    v11 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  ErrorContextKey = getErrorContextKey();
  v3 = pthread_getspecific(ErrorContextKey);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v5 = *v3;
  if ((*v3 & 0x80000000) == 0)
  {
    v6 = v1[6];
    if (v6 < 0)
    {
      *v3 = v6;
      v5 = v6;
    }
  }

  v7 = *(v1 + 48);
  if (!*(v1 + 48))
  {
LABEL_14:
    if (v5)
    {
      v11 = 0;
      *(v4 + 3) = 0;
      goto LABEL_26;
    }

    if (*(v1 + 15))
    {
      v13 = 0;
      v14 = *(v4 + 3);
      LODWORD(v15) = 16 - v14;
      if (v14 <= 0x10)
      {
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      v16 = &v4[v14 + 2];
      v17 = v14 + 1;
      while (v15 != v13)
      {
        v11 = 0;
        *(v16 + 4 * v13) = v1[v13 + 8];
        *(v4 + 3) = v17 + v13++;
        if (v13 >= *(v1 + 15))
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = (v1 + v9 + 100);
    v11 = *v10;
    if (!*v10)
    {
      break;
    }

    v8 += v11;
    if (v8 > v7)
    {
      goto LABEL_25;
    }

    v12 = *(v4 + 36);
    if (v12 + v11 <= *(v4 + 37))
    {
      memcpy(v4 + v12 + 76, v10, *v10);
      *(v4 + 36) += v11;
      v9 = v8;
      v7 = *(v1 + 48);
      if (v7 > v8)
      {
        continue;
      }
    }

    v5 = *v4;
    goto LABEL_14;
  }

LABEL_26:
  v18 = *(v1 + 2);
  if (v18)
  {
    _Block_release(v18);
  }

  free(v1);
  return v11;
}

unsigned __int16 *ParallelCompressionUpdateError(_WORD *a1, unsigned __int16 *a2)
{
  updateThreadErrorContextErrorCode(a1);

  return appendThreadErrorContextString(a2);
}

uint64_t getErrorContextKey()
{
  if (pthread_once(&getErrorContextKey_errorContextOnce, createErrorContextKey))
  {
    v0 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once");
  }

  return gErrorContextKey;
}

size_t createErrorContextKey()
{
  result = pthread_key_create(&gErrorContextKey, 0);
  if (result)
  {
    v1 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v1, "pthread_key_create");
  }

  return result;
}

AAArchiveStream AAConvertArchiveOutputStreamOpen(AAArchiveStream stream, AAFieldKeySet insert_key_set, AAFieldKeySet remove_key_set, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v13 = malloc(0x38uLL);
  v14 = v13;
  if (v13)
  {
    memset_s(v13, 0x38uLL, 0, 0x38uLL);
  }

  v15 = malloc(0x310uLL);
  v16 = v15;
  if (!v15 || (memset_s(v15, 0x310uLL, 0, 0x310uLL), !v14))
  {
    v19 = *__error();
    v20 = "malloc";
    v21 = 507;
LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "AAConvertArchiveOutputStreamOpen", v21, 111, v19, v20);
    free(v14);
    convertStreamClose(v16);
    return 0;
  }

  *v16 = stream;
  v16[1] = AAFieldKeySetClone(insert_key_set);
  v17 = AAFieldKeySetClone(remove_key_set);
  v16[2] = v17;
  if (!v16[1] || !v17)
  {
    v20 = "copy key set";
    v21 = 512;
    v19 = 0;
    goto LABEL_11;
  }

  v16[3] = flags;
  v16[4] = msg_data;
  v16[5] = msg_proc;
  v16[12] = 0x10000;
  v18 = malloc(0x10000uLL);
  v16[13] = v18;
  if (!v18)
  {
    v19 = *__error();
    v20 = "malloc";
    v21 = 518;
    goto LABEL_11;
  }

  v14[3] = convertStreamWriteHeader;
  v14[4] = convertStreamWriteBlob;
  v14[2] = convertStreamAbort;
  *v14 = v16;
  v14[1] = convertStreamClose;
  return v14;
}

uint64_t convertStreamClose(uint64_t a1)
{
  if (a1)
  {
    AAFieldKeySetDestroy(*(a1 + 8));
    AAFieldKeySetDestroy(*(a1 + 16));
    AAHeaderDestroy(*(a1 + 56));
    OECCStreamDestroy(*(a1 + 776));
    free(*(a1 + 128));
    memset_s((a1 + 112), 0x18uLL, 0, 0x18uLL);
    free(*(a1 + 104));
    free(*(a1 + 88));
    memset_s((a1 + 80), 0x10uLL, 0, 0x10uLL);
    free(a1);
  }

  return 0;
}

uint64_t convertStreamWriteHeader(uint64_t a1, AAHeader header)
{
  v73 = *MEMORY[0x29EDCA608];
  if (*(a1 + 48))
  {
    return 0;
  }

  value = 0;
  *v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  *(a1 + 52) = 0;
  *(a1 + 136) = 0;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  v6.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v6);
  if ((KeyIndex & 0x80000000) != 0 || AAHeaderGetFieldUInt(header, KeyIndex, &value) >= 2)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 237, 111, "Invalid entry missing TYP field (skipped)");
    goto LABEL_12;
  }

  v8.ikey = 5521744;
  v9 = AAHeaderGetKeyIndex(header, v8);
  if ((v9 & 0x80000000) != 0)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    FieldString = AAHeaderGetFieldString(header, v9, 0x400uLL, __s, 0);
    if (FieldString <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = FieldString;
    }

    v12 = v11 < 1;
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  if (value != 77)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 244, 111, "Invalid non metadata entry missing PAT field (skipped)");
    goto LABEL_12;
  }

LABEL_16:
  v13 = *(a1 + 40);
  if (!v13)
  {
    LOBYTE(v12) = 1;
  }

  if (!v12)
  {
    v57 = v13(*(a1 + 32), 40, __s, header);
    if (v57 < 0)
    {
      goto LABEL_110;
    }

    if (!v57)
    {
      v58 = (*(a1 + 40))(*(a1 + 32), 41, __s, v71);
      if ((v58 & 0x80000000) == 0)
      {
        if (v58)
        {
          __strlcpy_chk();
        }

        goto LABEL_19;
      }

LABEL_110:
      *(a1 + 48) = 1;
      return 0xFFFFFFFFLL;
    }

LABEL_12:
    result = 0;
    *(a1 + 52) = 1;
    return result;
  }

LABEL_19:
  if (value == 77 && (*(a1 + 25) & 2) != 0)
  {
    goto LABEL_12;
  }

  if ((aaHeaderBlobArrayInitWithHeader(a1 + 80, header) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 262, 111, 0, "capturing non-empty blobs");
    goto LABEL_139;
  }

  v14 = AAHeaderCreate();
  *(a1 + 56) = v14;
  if (!v14)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 266, 111, 0, "create new header");
LABEL_139:
    if (!*(a1 + 48))
    {
      *(a1 + 48) = 1;
      AAArchiveStreamCancel(*a1);
    }

    return 0xFFFFFFFFLL;
  }

  FieldCount = AAHeaderGetFieldCount(header);
  if (!FieldCount)
  {
    goto LABEL_115;
  }

  v16 = FieldCount;
  v59 = 0;
  for (i = 0; i != v16; ++i)
  {
    FieldKey = AAHeaderGetFieldKey(header, i);
    v19 = FieldKey;
    v20 = AAFieldKeySetContainsKey(*(a1 + 16), v19);
    v21 = *FieldKey.skey & 0xFFFFFFLL;
    if ((*FieldKey.skey & 0xFFFFFFLL) == 0x544144)
    {
      size.tv_sec = 0;
      offset = 0;
      if (AAHeaderGetFieldBlob(header, i, &size, &offset) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 290, 111, 0, "getting header blob field");
        goto LABEL_139;
      }

      if (!v20 || ((*FieldKey.skey & 0xFFFFFFuLL) > 0x54414F ? (v22 = 5521744) : (v22 = 5265748), v21 == v22))
      {
        v23 = FieldKey;
        if (AAHeaderSetFieldBlob(*(a1 + 56), 0xFFFFFFFF, v23, size.tv_sec) < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 295, 111, 0, "inserting header field");
          goto LABEL_139;
        }

        v59 = 1;
      }

      v24.ikey = 3229779;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v24))
      {
        v25.ikey = 3229779;
        if (AAHeaderGetKeyIndex(header, v25) < 0)
        {
          v26.ikey = 3229779;
          if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v26, 2u, v67) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 300, 111, 0, "inserting header field");
            goto LABEL_139;
          }

          *(a1 + 136) |= 2u;
          CC_SHA1_Deprecated_Init((a1 + 160));
        }
      }

      v27.ikey = 3295315;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v27))
      {
        v28.ikey = 3295315;
        if (AAHeaderGetKeyIndex(header, v28) < 0)
        {
          v29.ikey = 3295315;
          if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v29, 3u, v67) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 306, 111, 0, "inserting header field");
            goto LABEL_139;
          }

          *(a1 + 136) |= 4u;
          CC_SHA256_Init((a1 + 256));
        }
      }

      v30.ikey = 3360851;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v30))
      {
        v31.ikey = 3360851;
        if (AAHeaderGetKeyIndex(header, v31) < 0)
        {
          v32.ikey = 3360851;
          if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v32, 4u, v67) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 312, 111, 0, "inserting header field");
            goto LABEL_139;
          }

          *(a1 + 136) |= 8u;
          CC_SHA384_Init((a1 + 360));
        }
      }

      v33.ikey = 3491923;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v33))
      {
        v34.ikey = 3491923;
        if (AAHeaderGetKeyIndex(header, v34) < 0)
        {
          v35.ikey = 3491923;
          if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v35, 5u, v67) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 318, 111, 0, "inserting header field");
            goto LABEL_139;
          }

          *(a1 + 136) |= 0x10u;
          CC_SHA512_Init((a1 + 568));
        }
      }

      v36.ikey = 5458755;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v36))
      {
        v37.ikey = 5458755;
        if (AAHeaderGetKeyIndex(header, v37) < 0)
        {
          v38.ikey = 5458755;
          if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v38, 1u, v67) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 324, 111, 0, "inserting header field");
            goto LABEL_139;
          }

          *(a1 + 136) |= 1u;
          CC_CKSUM_Init(a1 + 144);
        }
      }

      v39.ikey = 5917011;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v39))
      {
        v40.ikey = 5917011;
        if (AAHeaderGetKeyIndex(header, v40) < 0)
        {
          v41.ikey = 5917011;
          if (AAHeaderSetFieldUInt(*(a1 + 56), 0xFFFFFFFF, v41, size.tv_sec) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 330, 111, 0, "inserting header field");
            goto LABEL_139;
          }
        }
      }

      v42.ikey = 4408665;
      if (AAFieldKeySetContainsKey(*(a1 + 8), v42))
      {
        v43.ikey = 4408665;
        if (AAHeaderGetKeyIndex(header, v43) < 0)
        {
          if (size.tv_sec)
          {
            v44.ikey = 4408665;
            if (AAHeaderSetFieldBlob(*(a1 + 56), 0xFFFFFFFF, v44, 0) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 334, 111, 0, "inserting header field");
              goto LABEL_139;
            }

            *(a1 + 136) |= 0x20u;
            v45 = OECCStreamCreate(1, 0x4000u, size.tv_sec);
            *(a1 + 776) = v45;
            if (!v45)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 337, 111, 0, "creating YEC context");
              goto LABEL_139;
            }
          }
        }
      }

      if (!v20 || ((*FieldKey.skey & 0xFFFFFFuLL) > 0x54414F ? (v46 = 5521744) : (v46 = 5265748), v21 == v46))
      {
        if (*(a1 + 136))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 342, 111, 0, "can't generate a field from DAT, and keep DAT at the same time");
          goto LABEL_139;
        }
      }
    }

    if (v20)
    {
      if ((*FieldKey.skey & 0xFFFFFFuLL) > 0x54414F)
      {
        if (v21 == 5521744)
        {
LABEL_85:
          v50 = strlen(__s);
          v51 = FieldKey;
          if (AAHeaderSetFieldString(*(a1 + 56), 0xFFFFFFFF, v51, __s, v50) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 350, 111, 0, "inserting header field");
            goto LABEL_139;
          }

          continue;
        }

        v47 = 5653828;
        goto LABEL_76;
      }

      if (v21 != 4935244)
      {
        v47 = 5265748;
LABEL_76:
        if (v21 != v47)
        {
          continue;
        }
      }
    }

    else if (v21 == 5521744)
    {
      goto LABEL_85;
    }

    if (v21 != 5521732)
    {
      FieldType = AAHeaderGetFieldType(header, i);
      v64 = 0;
      offset = 0;
      v62 = 0;
      v63 = 0;
      hash_function = 0;
      size.tv_sec = 0;
      size.tv_nsec = 0;
      if (FieldType > 2)
      {
        switch(FieldType)
        {
          case 3:
            if (AAHeaderGetFieldHash(header, i, *(a1 + 96), &hash_function, *(a1 + 104)) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 378, 111, 0, "Invalid input header");
              goto LABEL_139;
            }

            v54 = FieldKey;
            if (AAHeaderSetFieldHash(*(a1 + 56), 0xFFFFFFFF, v54, hash_function, *(a1 + 104)) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 379, 111, 0, "inserting header field");
              goto LABEL_139;
            }

            break;
          case 4:
            if (AAHeaderGetFieldTimespec(header, i, &size) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 382, 111, 0, "Invalid input header");
              goto LABEL_139;
            }

            v56 = FieldKey;
            if (AAHeaderSetFieldTimespec(*(a1 + 56), 0xFFFFFFFF, v56, &size) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 383, 111, 0, "inserting header field");
              goto LABEL_139;
            }

            break;
          case 5:
            if (AAHeaderGetFieldBlob(header, i, &v64, &v63) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 363, 111, 0, "Invalid input header");
              goto LABEL_139;
            }

            v52 = FieldKey;
            if (AAHeaderSetFieldBlob(*(a1 + 56), 0xFFFFFFFF, v52, v64) < 0)
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 364, 111, 0, "inserting header field");
              goto LABEL_139;
            }

            break;
          default:
LABEL_133:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 385, 111, 0, "Invalid header field type");
            goto LABEL_139;
        }
      }

      else if (FieldType)
      {
        if (FieldType == 1)
        {
          if (AAHeaderGetFieldUInt(header, i, &v62) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 367, 111, 0, "Invalid input header");
            goto LABEL_139;
          }

          v55 = FieldKey;
          if (AAHeaderSetFieldUInt(*(a1 + 56), 0xFFFFFFFF, v55, v62) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 368, 111, 0, "inserting header field");
            goto LABEL_139;
          }
        }

        else
        {
          if (FieldType != 2)
          {
            goto LABEL_133;
          }

          if (AAHeaderGetFieldString(header, i, *(a1 + 96), *(a1 + 104), &offset) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 371, 111, 0, "Invalid input header");
            goto LABEL_139;
          }

          v49 = FieldKey;
          if (AAHeaderSetFieldString(*(a1 + 56), 0xFFFFFFFF, v49, *(a1 + 104), offset) < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 372, 111, 0, "inserting header field");
            goto LABEL_139;
          }
        }
      }

      else
      {
        v53 = FieldKey;
        if (AAHeaderSetFieldFlag(*(a1 + 56), 0xFFFFFFFF, v53) < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 375, 111, 0, "inserting header field");
          goto LABEL_139;
        }
      }
    }
  }

  if (v59 && (sendHeader(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 392, 111, 0, "sending header");
    goto LABEL_139;
  }

LABEL_115:
  *(a1 + 76) = 0;
  if ((convertStreamToNextNonEmptyBlob(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 396, 111, 0, "iterating to next blob");
    goto LABEL_139;
  }

  if (*(a1 + 76) >= *(a1 + 80) && (convertStreamEndEntry(a1) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteHeader", 399, 111, 0, "finishing entry");
    goto LABEL_139;
  }

  return 0;
}

uint64_t convertStreamWriteBlob(uint64_t a1, AAFieldKey key, void *__src, rsize_t __smax)
{
  if (*(a1 + 48))
  {
    return 0;
  }

  v35 = v11;
  v36 = v10;
  v37 = v9;
  v38 = v8;
  v39 = v7;
  v40 = v6;
  v41 = v5;
  v42 = v4;
  result = 0;
  if (__smax && !*(a1 + 52))
  {
    v17 = *(a1 + 76);
    if (v17 >= *(a1 + 80))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteBlob", 414, 111, 0, "invalid state", v11, v10, v9, v8, v7, v6, v41, v42, v12, v13);
      goto LABEL_9;
    }

    v18 = *(a1 + 88) + 24 * v17;
    v19 = *v18;
    if (((*v18 ^ key.ikey) & 0xFFFFFFLL) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteBlob", 416, 111, 0, "invalid state", v11, v10, v37, v38, v7, v6, v41, v42, v12, v13);
LABEL_9:
      if (!*(a1 + 48))
      {
        *(a1 + 48) = 1;
        AAArchiveStreamCancel(*a1);
      }

      return 0xFFFFFFFFLL;
    }

    if (!*(a1 + 68))
    {
      if ((convertStreamBeginBlob(a1, key, *(v18 + 8)) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteBlob", 422, 111, 0, "starting blob", v11, v10, v37, v38, v39, v40, v41, v42, v12, v13);
        goto LABEL_9;
      }

      *(a1 + 68) = 1;
    }

    if ((*&v19 & 0xFFFFFFLL) != 0x544144)
    {
LABEL_30:
      if (!*(a1 + 72))
      {
        goto LABEL_33;
      }

      if (*(a1 + 64))
      {
        v23 = key;
        if (AAArchiveStreamWriteBlob(*a1, v23, __src, __smax) < 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteBlob", 449, 111, 0, "sending blob data", v11, v10, v37, v38, v39, v40, v41, v42, v12, v13);
          goto LABEL_9;
        }

LABEL_33:
        v24 = *(v18 + 8) - __smax;
        *(v18 + 8) = v24;
        if (!v24)
        {
          if ((convertStreamEndBlob(a1) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteBlob", 457, 111, 0, "finishing blob", v35, v36, v37, v38, v39, v40, v41, v42, v12, v13);
            goto LABEL_9;
          }

          *(a1 + 68) = 0;
          ++*(a1 + 76);
          if ((convertStreamToNextNonEmptyBlob(a1) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteBlob", 461, 111, 0, "iterating to next blob", v35, v36, v37, v38, v39, v40, v41, v42, v12, v13);
            goto LABEL_9;
          }

          if (*(a1 + 76) >= *(a1 + 80) && (convertStreamEndEntry(a1) & 0x80000000) != 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteBlob", 465, 111, 0, "finishing entry", v35, v36, v37, v38, v39, v40, v41, v42, v12, v13);
            goto LABEL_9;
          }
        }

        return 0;
      }

      v26 = (a1 + 112);
      v25 = *(a1 + 112);
      v27 = __CFADD__(v25, __smax);
      v28 = v25 + __smax;
      if (!v27 && (v28 & 0x8000000000000000) == 0)
      {
        v29 = *(a1 + 120);
        if (v29 >= v28)
        {
LABEL_58:
          v34 = *(a1 + 128);
          if (__src)
          {
            memcpy((v34 + *v26), __src, __smax);
          }

          else if (v34)
          {
            memset_s((v34 + *v26), __smax, 0, __smax);
          }

          *v26 += __smax;
          if ((__smax & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          do
          {
            while (!v29)
            {
              v29 = 0x4000;
              if (v28 <= 0x4000)
              {
                v31 = (a1 + 128);
                v29 = 0x4000;
                goto LABEL_56;
              }
            }

            v30 = v29 >> 1;
            if ((v29 & (v29 >> 1)) != 0)
            {
              v30 = v29 & (v29 >> 1);
            }

            v29 += v30;
          }

          while (v29 < v28);
          v31 = (a1 + 128);
          if (v29 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_66;
          }

LABEL_56:
          v32 = *v31;
          v33 = realloc(*v31, v29);
          if (v33)
          {
            *(a1 + 120) = v29;
            *(a1 + 128) = v33;
            goto LABEL_58;
          }

          free(v32);
LABEL_66:
          *v31 = 0;
          *v26 = 0;
          *(a1 + 120) = 0;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteBlob", 445, 111, 0, "accumulating blob data", v35, v36, v37, v38, v39, v40, v41, v42, v12, v13);
      goto LABEL_9;
    }

    v22 = *(a1 + 136);
    if ((v22 & 2) != 0)
    {
      CC_SHA1_Deprecated_Update((a1 + 160), __src, __smax);
      v22 = *(a1 + 136);
      if ((v22 & 4) == 0)
      {
LABEL_19:
        if ((v22 & 8) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    else if ((*(a1 + 136) & 4) == 0)
    {
      goto LABEL_19;
    }

    CC_SHA256_Update((a1 + 256), __src, __smax);
    v22 = *(a1 + 136);
    if ((v22 & 8) == 0)
    {
LABEL_20:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

LABEL_26:
    CC_SHA384_Update((a1 + 360), __src, __smax);
    v22 = *(a1 + 136);
    if ((v22 & 0x10) == 0)
    {
LABEL_21:
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

LABEL_27:
    CC_SHA512_Update((a1 + 568), __src, __smax);
    v22 = *(a1 + 136);
    if ((v22 & 1) == 0)
    {
LABEL_22:
      if ((v22 & 0x20) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_28:
    CC_CKSUM_Update(a1 + 144, __src, __smax);
    if ((*(a1 + 136) & 0x20) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    if (OECCStreamWrite(*(a1 + 776), __src, __smax) != __smax)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamWriteBlob", 436, 111, 0, "updating YEC field", v11, v10, v37, v38, v39, v40, v41, v42, v12, v13);
      goto LABEL_9;
    }

    goto LABEL_30;
  }

  return result;
}

void convertStreamAbort(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    *(a1 + 48) = 1;
    AAArchiveStreamCancel(*a1);
  }
}

uint64_t sendHeader(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v4;
  v17 = v3;
  v18 = v2;
  v19 = v1;
  if (*(a1 + 64))
  {
    return 0;
  }

  if (AAArchiveStreamWriteHeader(*a1, *(a1 + 56)) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "sendHeader", 56, 111, 0, "Encoding failed", v4, v3, v2, v19, v5, v6);
  }

  else
  {
    v9 = 0;
    *(a1 + 64) = 1;
    v10 = *(a1 + 112);
    v11 = *(a1 + 128);
    while (1)
    {
      if (v9 >= v10)
      {
        result = 0;
        *(a1 + 112) = 0;
        return result;
      }

      v12 = v9 + 24;
      if (v9 + 24 > v10)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "sendHeader", 66, 111, 0, "Invalid payload", v16, v17, v18, v19, v5, v6);
        return 0xFFFFFFFFLL;
      }

      v13 = (v11 + v9);
      v14 = *(v11 + v9 + 8);
      v9 = v14 + v12;
      if (v14 + v12 > v10)
      {
        break;
      }

      v15 = *v13;
      if (AAArchiveStreamWriteBlob(*a1, v15, (v11 + v12), v14) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "sendHeader", 70, 111, 0, "Blob encoding failed", v16, v17, v18, v19, v5, v6);
        return 0xFFFFFFFFLL;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "sendHeader", 69, 111, 0, "Invalid payload", v16, v17, v18, v19, v5, v6);
  }

  return 0xFFFFFFFFLL;
}

uint64_t convertStreamToNextNonEmptyBlob(uint64_t a1)
{
  v1 = *(a1 + 76);
  if (v1 >= *(a1 + 80))
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = *(a1 + 88) + 24 * v1;
    if (*(v4 + 8))
    {
      break;
    }

    v5 = *v4;
    v6 = convertStreamBeginBlob(a1, v5, 0);
    if ((convertStreamEndBlob(a1) | v6) < 0)
    {
      v3 = 0;
    }

    v7 = *(a1 + 80);
    v1 = *(a1 + 76) + 1;
    *(a1 + 76) = v1;
  }

  while (v1 < v7);
  if (v3)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamToNextNonEmptyBlob", 204, 111, 0, "iterating to next non-empty blob");
  return 0xFFFFFFFFLL;
}

uint64_t convertStreamEndEntry(uint64_t a1)
{
  v2 = sendHeader(a1);
  if (v2 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndEntry", 182, 111, 0, "send header");
  }

  AAHeaderDestroy(*(a1 + 56));
  *(a1 + 56) = 0;
  OECCStreamDestroy(*(a1 + 776));
  *(a1 + 776) = 0;
  free(*(a1 + 128));
  memset_s((a1 + 112), 0x18uLL, 0, 0x18uLL);
  return (v2 >> 31);
}

uint64_t convertStreamBeginBlob(uint64_t a1, AAFieldKey key, uint64_t a3)
{
  KeyIndex = AAHeaderGetKeyIndex(*(a1 + 56), key);
  *(a1 + 72) = KeyIndex >= 0;
  if (KeyIndex < 0 || *(a1 + 64))
  {
    return 0;
  }

  v9 = (a1 + 112);
  v8 = *(a1 + 112);
  v10 = a3 + v8 + 24;
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  v11 = *(a1 + 120);
  if (v11 < v10)
  {
    do
    {
      while (!v11)
      {
        v11 = 0x4000;
        if (v10 <= 0x4000)
        {
          v13 = (a1 + 128);
          v11 = 0x4000;
          goto LABEL_15;
        }
      }

      v12 = v11 >> 1;
      if ((v11 & (v11 >> 1)) != 0)
      {
        v12 = v11 & (v11 >> 1);
      }

      v11 += v12;
    }

    while (v11 < v10);
    v13 = (a1 + 128);
    if (v11 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_28;
    }

LABEL_15:
    v14 = *v13;
    v15 = realloc(*v13, v11);
    if (v15)
    {
      *(a1 + 120) = v11;
      *(a1 + 128) = v15;
      v8 = *(a1 + 112);
      goto LABEL_17;
    }

    free(v14);
LABEL_28:
    *v13 = 0;
    *v9 = 0;
    *(a1 + 120) = 0;
LABEL_29:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamBeginBlob", 87, 111, 0, "allocating blob buffer");
    return 0xFFFFFFFFLL;
  }

LABEL_17:
  v16 = v8 + 24;
  if (v8 >= 0xFFFFFFFFFFFFFFE8 || (v16 & 0x8000000000000000) != 0)
  {
LABEL_38:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamBeginBlob", 91, 111, 0, "accumulating blob data");
    return 0xFFFFFFFFLL;
  }

  if (v11 < v16)
  {
    do
    {
      while (!v11)
      {
        v11 = 0x4000;
        if (v16 <= 0x4000)
        {
          v18 = (a1 + 128);
          v11 = 0x4000;
          goto LABEL_33;
        }
      }

      v17 = v11 >> 1;
      if ((v11 & (v11 >> 1)) != 0)
      {
        v17 = v11 & (v11 >> 1);
      }

      v11 += v17;
    }

    while (v11 < v16);
    v18 = (a1 + 128);
    if (v11 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_37;
    }

LABEL_33:
    v20 = *v18;
    v21 = realloc(*v18, v11);
    if (v21)
    {
      v19 = v21;
      *(a1 + 120) = v11;
      *(a1 + 128) = v21;
      v8 = *(a1 + 112);
      goto LABEL_35;
    }

    free(v20);
LABEL_37:
    *v18 = 0;
    *v9 = 0;
    *(a1 + 120) = 0;
    goto LABEL_38;
  }

  v19 = *(a1 + 128);
LABEL_35:
  result = 0;
  v22 = &v19[v8];
  *v22 = key;
  *(v22 + 1) = 0;
  *(v22 + 1) = a3;
  *(v22 + 2) = 0;
  *v9 += 24;
  return result;
}

uint64_t convertStreamEndBlob(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if ((*(*(a1 + 88) + 24 * *(a1 + 76)) & 0xFFFFFF) != 0x544144)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (!v2)
  {
LABEL_28:
    if ((sendHeader(a1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 162, 111, 0, "send header");
      return 0xFFFFFFFFLL;
    }

    if ((*(a1 + 136) & 0x20) != 0)
    {
      DataSize = OECCStreamGetDataSize(*(a1 + 776));
      DataPtr = OECCStreamGetDataPtr(*(a1 + 776));
      v24.ikey = 4408665;
      if (AAArchiveStreamWriteBlob(*a1, v24, DataPtr, DataSize) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 169, 111, 0, "sending blob data");
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  if (!*(a1 + 64))
  {
    if ((v2 & 2) != 0)
    {
      CC_SHA1_Deprecated_Final(md, (a1 + 160));
      v3.ikey = 3229779;
      KeyIndex = AAHeaderGetKeyIndex(*(a1 + 56), v3);
      if ((KeyIndex & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 117, 111, 0, "Missing field in new header");
        return 0xFFFFFFFFLL;
      }

      v5.ikey = 3229779;
      if (AAHeaderSetFieldHash(*(a1 + 56), KeyIndex, v5, 2u, md) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 118, 111, 0, "updating new header field");
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v2) = *(a1 + 136);
    }

    if ((v2 & 4) != 0)
    {
      CC_SHA256_Final(md, (a1 + 256));
      v6.ikey = 3295315;
      v7 = AAHeaderGetKeyIndex(*(a1 + 56), v6);
      if ((v7 & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 125, 111, 0, "Missing field in new header");
        return 0xFFFFFFFFLL;
      }

      v8.ikey = 3295315;
      if (AAHeaderSetFieldHash(*(a1 + 56), v7, v8, 3u, md) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 126, 111, 0, "updating new header field");
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v2) = *(a1 + 136);
    }

    if ((v2 & 8) != 0)
    {
      CC_SHA384_Final(md, (a1 + 360));
      v9.ikey = 3360851;
      v10 = AAHeaderGetKeyIndex(*(a1 + 56), v9);
      if ((v10 & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 133, 111, 0, "Missing field in new header");
        return 0xFFFFFFFFLL;
      }

      v11.ikey = 3360851;
      if (AAHeaderSetFieldHash(*(a1 + 56), v10, v11, 4u, md) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 134, 111, 0, "updating new header field");
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v2) = *(a1 + 136);
    }

    if ((v2 & 0x10) != 0)
    {
      CC_SHA512_Final(md, (a1 + 568));
      v12.ikey = 3491923;
      v13 = AAHeaderGetKeyIndex(*(a1 + 56), v12);
      if ((v13 & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 141, 111, 0, "Missing field in new header");
        return 0xFFFFFFFFLL;
      }

      v14.ikey = 3491923;
      if (AAHeaderSetFieldHash(*(a1 + 56), v13, v14, 5u, md) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 142, 111, 0, "updating new header field");
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v2) = *(a1 + 136);
    }

    if (v2)
    {
      CC_CKSUM_Final(md, a1 + 144);
      v15.ikey = 5458755;
      v16 = AAHeaderGetKeyIndex(*(a1 + 56), v15);
      if ((v16 & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 149, 111, 0, "Missing field in new header");
        return 0xFFFFFFFFLL;
      }

      v17.ikey = 5458755;
      if (AAHeaderSetFieldHash(*(a1 + 56), v16, v17, 1u, md) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 150, 111, 0, "updating new header field");
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v2) = *(a1 + 136);
    }

    if ((v2 & 0x20) != 0)
    {
      v18 = OECCStreamGetDataSize(*(a1 + 776));
      v19.ikey = 4408665;
      v20 = AAHeaderGetKeyIndex(*(a1 + 56), v19);
      if ((v20 & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 157, 111, 0, "Missing field in new header");
        return 0xFFFFFFFFLL;
      }

      v21.ikey = 4408665;
      if (AAHeaderSetFieldBlob(*(a1 + 56), v20, v21, v18) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 158, 111, 0, "updating new header field");
        return 0xFFFFFFFFLL;
      }
    }

    goto LABEL_28;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAConvertArchiveOutputStream.c", "convertStreamEndBlob", 111, 111, 0, "Header has already been sent");
  return 0xFFFFFFFFLL;
}

void *aaInPlaceStreamOpen(AAByteStream_impl *a1)
{
  v2 = calloc(1uLL, 0x68uLL);
  v3 = calloc(1uLL, 0x80uLL);
  v4 = v3;
  if (!v2 || !v3)
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamOpen", 237, 126, *v7, "malloc");
    free(v2);
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!*(a1 + 4) || !*(a1 + 5) || !*(a1 + 6) || !*(a1 + 8))
  {
    v5 = "stream not in-place compatible\n";
    v6 = 243;
    goto LABEL_12;
  }

  if (pthread_mutex_init(v3, 0))
  {
    v5 = "mutex failed";
    v6 = 246;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamOpen", v6, 126, 0, v5);
LABEL_13:
    free(v2);
LABEL_14:
    pthread_mutex_destroy(v4);
    free(*&v4[1].__opaque[32]);
LABEL_15:
    free(v4);
    return 0;
  }

  v4[1].__sig = a1;
  *v4[1].__opaque = 0;
  *&v4[1].__opaque[16] = 0;
  v9 = AAByteStreamSeek(a1, 0, 2);
  *&v4[1].__opaque[8] = v9;
  *&v4[1].__opaque[24] = 0;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v5 = "bad input size";
    v6 = 252;
    goto LABEL_12;
  }

  *&v4[1].__opaque[40] = (v9 + 0xFFFFF) >> 20;
  if (v9 >= 0x20000000000001)
  {
    *__error() = 12;
    *&v4[1].__opaque[32] = 0;
LABEL_26:
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamOpen", 257, 126, v14, "malloc");
    goto LABEL_13;
  }

  v10 = calloc((v9 + 0xFFFFF) >> 20, 0x10uLL);
  *&v4[1].__opaque[32] = v10;
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = *&v4[1].__opaque[40];
  if (v11)
  {
    v12 = v10 + 8;
    for (i = v11 - 1; ; --i)
    {
      *(v12 - 1) = 0;
      if (!i)
      {
        break;
      }

      *v12 = 0x100000;
      v12 += 2;
    }

    *v12 = ((*&v4[1].__opaque[8] - 1) & 0xFFFFF) + 1;
  }

  AACustomByteStreamSetData(v2, v4);
  AACustomByteStreamSetPReadProc(v2, aaInPlaceStreamPRead);
  AACustomByteStreamSetPWriteProc(v2, aaInPlaceStreamPWrite);
  AACustomByteStreamSetReadProc(v2, aaInPlaceStreamRead);
  AACustomByteStreamSetWriteProc(v2, aaInPlaceStreamWrite);
  AACustomByteStreamSetSeekProc(v2, aaInPlaceStreamSeek);
  AACustomByteStreamSetCloseProc(v2, aaInPlaceStreamClose);
  AACustomByteStreamSetCancelProc(v2, aaInPlaceStreamCancel);
  return v2;
}

off_t aaInPlaceStreamSeek(uint64_t a1, off_t a2, int a3)
{
  if (pthread_mutex_lock(a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamSeek", 176, 126, 0, "MutexLock");
    *(a1 + 120) = 1;
    return -1;
  }

  if (*(a1 + 120))
  {
    pthread_mutex_unlock(a1);
    return -1;
  }

  v8 = AAByteStreamSeek(*(a1 + 64), a2, a3);
  v6 = v8;
  if ((v8 & 0x8000000000000000) == 0)
  {
    *(a1 + 88) = v8;
    *(a1 + 72) = v8;
  }

  pthread_mutex_unlock(a1);
  return v6;
}

uint64_t aaInPlaceStreamClose(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*&a1[1].__opaque[48] && *&a1[1].__opaque[24] < *&a1[1].__opaque[8] && (AAByteStreamTruncate(a1[1].__sig) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamClose", 210, 126, 0, "truncate failed");
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_destroy(a1);
  v3 = *&a1[1].__opaque[32];
  if (v3)
  {
    if (*&a1[1].__opaque[40])
    {
      v4 = 0;
      v5 = 0;
      do
      {
        free(*&v3[v4]);
        v3 = *&a1[1].__opaque[32];
        v6 = *&a1[1].__opaque[40];
        *&v3[v4] = 0;
        ++v5;
        v4 += 16;
      }

      while (v5 < v6);
    }

    free(v3);
  }

  free(a1);
  return v2;
}

uint64_t aaInPlaceStreamCancel(uint64_t a1)
{
  if (pthread_mutex_lock(a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "aaInPlaceStreamCancel", 191, 126, 0, "MutexLock");
  }

  if (!*(a1 + 120))
  {
    *(a1 + 120) = 1;
    AAByteStreamCancel(*(a1 + 64));
  }

  return pthread_mutex_unlock(a1);
}

size_t blockReader(uint64_t a1, void *a2, size_t a3, uint64_t a4, int a5)
{
  if (!pthread_mutex_lock(a1))
  {
    if (*(a1 + 120))
    {
      pthread_mutex_unlock(a1);
      return -1;
    }

    if (a5)
    {
      a4 = *(a1 + 72);
      if (!a3)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *(a1 + 72) = a4;
      if (!a3)
      {
        goto LABEL_24;
      }
    }

    if (*(a1 + 80) <= a4)
    {
      a3 = 0;
    }

    else
    {
      v11 = blockGetFromCache(a1, a4);
      if (v11)
      {
        v12 = v11;
        v13 = v11[1];
        if (v13)
        {
          if (0x100000 - (a4 & 0xFFFFFuLL) < v13)
          {
            v13 = 0x100000 - (a4 & 0xFFFFF);
          }

          if (v13 < a3)
          {
            a3 = v13;
          }

          memcpy(a2, &(*v11)[a4 & 0xFFFFF], a3);
          v14 = &v12[1][-a3];
          v12[1] = v14;
          if (!v14)
          {
            free(*v12);
            *v12 = 0;
          }

          *(a1 + 72) += a3;
          goto LABEL_24;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "blockPRead", 72, 126, 0, "block already consumed");
      }

      *(a1 + 120) = 1;
      a3 = -1;
    }

LABEL_24:
    pthread_mutex_unlock(a1);
    return a3;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "blockReader", 111, 126, 0, "MutexLock");
  *(a1 + 120) = 1;
  return -1;
}

char **blockGetFromCache(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 104) + 16 * (a2 >> 20));
  if (!*v2)
  {
    v3 = v2[1];
    if (v3)
    {
      if (v3 >= 0x2000000001)
      {
        *__error() = 12;
        *v2 = 0;
LABEL_12:
        v12 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "blockGetFromCache", 52, 126, v12, "malloc");
        return 0;
      }

      v6 = malloc(v2[1]);
      *v2 = v6;
      if (!v6)
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 64);
      if (*(v7 + 32))
      {
        v8 = v6;
        v9 = 0;
        v10 = a2 & 0xFFFFFFFFFFF00000;
        while (1)
        {
          v11 = (*(v7 + 32))(*v7, v8, v3, v10);
          if (v11 < 0)
          {
            break;
          }

          if (v11)
          {
            v8 += v11;
            v9 += v11;
            v10 += v11;
            v3 -= v11;
            if (v3)
            {
              continue;
            }
          }

          goto LABEL_17;
        }

        v9 = v11;
LABEL_17:
        v3 = v2[1];
      }

      else
      {
        v9 = -1;
      }

      if (v9 != v3)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "blockGetFromCache", 58, 126, 0, "stream read error");
        return 0;
      }
    }
  }

  return v2;
}

uint64_t blockWriter(uint64_t a1, const void *a2, size_t a3, uint64_t a4, int a5)
{
  if (!pthread_mutex_lock(a1))
  {
    if (*(a1 + 120))
    {
      pthread_mutex_unlock(a1);
      return -1;
    }

    if (a5)
    {
      a4 = *(a1 + 88);
      if (a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(a1 + 88) = a4;
      if (a3)
      {
LABEL_9:
        if (*(a1 + 80) > a4)
        {
          if (!blockGetFromCache(a1, a4))
          {
            v10 = -1;
LABEL_20:
            *(a1 + 120) = 1;
            goto LABEL_21;
          }

          if (0x100000 - (a4 & 0xFFFFFuLL) < a3)
          {
            a3 = 0x100000 - (a4 & 0xFFFFF);
          }
        }

        v12 = AAByteStreamPWrite(*(a1 + 64), a2, a3, a4);
        v10 = v12;
        if ((v12 & 0x8000000000000000) == 0)
        {
          if (v12)
          {
            v13 = *(a1 + 96);
            v14 = *(a1 + 88) + v12;
            *(a1 + 88) = v14;
            if (v13 < v14)
            {
              *(a1 + 96) = v14;
            }
          }

          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v10 = 0;
LABEL_21:
    pthread_mutex_unlock(a1);
    return v10;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAInPlaceStream.c", "blockWriter", 131, 126, 0, "MutexLock");
  *(a1 + 120) = 1;
  return -1;
}

uint64_t io_hint_static_content(unsigned int **a1)
{
  FD = aaFileStreamGetFD(a1);
  if (FD < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_hint_static_content", 63, 137, "file not open");
  }

  else
  {
    if (fcntl(FD, 68, 1) != -1)
    {
      return 0;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_hint_static_content", 64, 137, "static content hint failed");
  }

  return 0xFFFFFFFFLL;
}

uint64_t io_preallocate(unsigned int **a1, unint64_t a2)
{
  RealTime = getRealTime();
  FD = aaFileStreamGetFD(a1);
  memset(&v14, 0, sizeof(v14));
  if (FD < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 84, 137, "file not open");
LABEL_12:
    v8 = 0;
    v7 = 0;
    goto LABEL_13;
  }

  v6 = FD;
  if (fstat(FD, &v14) || v14.st_size)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 85, 137, "file not empty");
    goto LABEL_12;
  }

  pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 88, 137, "preallocating %llu B", a2);
  if (!a2)
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v12[0] = 0x300000002;
    v12[1] = 0;
    v12[2] = a2 - v8;
    v13 = 0;
    if (fcntl(v6, 42, v12) == -1 || v13 <= 0)
    {
      break;
    }

    v8 += v13;
    ++v7;
    if (v8 >= a2)
    {
      v9 = 0;
      goto LABEL_14;
    }
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 99, 137, "preallocation failed");
LABEL_13:
  v9 = 0xFFFFFFFFLL;
LABEL_14:
  v10 = getRealTime();
  pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 110, 137, "preallocation %llu/%llu B took %0.2f seconds (# of calls=%i)", v8, a2, v10 - RealTime, v7);
  return v9;
}

uint64_t io_set_nocache(unsigned int **a1)
{
  FD = aaFileStreamGetFD(a1);
  if (FD < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_set_nocache", 126, 137, 0, "aaFileStreamGetFD");
  }

  else
  {
    if (fcntl(FD, 48, 1) != -1)
    {
      return 0;
    }

    v3 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_set_nocache", 127, 137, v3, "fcntl");
  }

  return 0xFFFFFFFFLL;
}

uint64_t **aaSegmentStreamOpen(void *a1, void *a2)
{
  v3 = SegmentStreamCreate(a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = *v3;
    v6 = pc_array_indirect_sort(a2[267], compare_extents_by_position);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = a2[269];
      do
      {
        if (v8 >= v9)
        {
          v11 = 0;
          v10 = a2 + 265;
        }

        else
        {
          v10 = v6[v8];
          v11 = v10[1];
        }

        v12 = *v10;
        v13 = *v10 >= v7;
        v14 = *v10 - v7;
        if (v14 != 0 && v13)
        {
          v30 = v5[397];
          v31 = v14;
          v32 = v7;
          v33 = 0;
          v34 = 0;
          v5[397] = v30 + v14;
          v15 = pc_array_append(v5[395], &v30);
          v5[395] = v15;
          if (!v15)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 476, 137, 0, "segment_add");
            goto LABEL_28;
          }

          v9 = a2[269];
        }

        v7 = v12 + v11;
        ++v8;
      }

      while (v8 <= v9);
      v16 = v5[397];
      a2[258] = v16;
      v17 = a2[270];
      if (v17)
      {
        v18 = 0;
        while (1)
        {
          v19 = (a2[268] + 129 * v18);
          v20 = a2[267];
          v21 = v5[397];
          v19[4] = 0;
          v19[5] = v21;
          if (v19[15])
          {
            break;
          }

LABEL_19:
          if (++v18 >= v17)
          {
            v16 = v5[397];
            goto LABEL_21;
          }
        }

        v22 = 0;
        v23 = v5[395];
        v24 = (v20 + 16 * v19[14] + 8);
        while (1)
        {
          v26 = *(v24 - 1);
          v25 = *v24;
          v30 = v5[397];
          v31 = v25;
          v32 = v26;
          v33 = 0;
          v34 = 0;
          v5[397] = v30 + v25;
          v23 = pc_array_append(v23, &v30);
          v5[395] = v23;
          if (!v23)
          {
            break;
          }

          v27 = *v24;
          v24 += 2;
          v19[4] += v27;
          if (++v22 >= v19[15])
          {
            v17 = a2[270];
            goto LABEL_19;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 500, 137, 0, "segment_add");
      }

      else
      {
LABEL_21:
        v5[396] = *(v5[395] - 64);
        if (v16 == a2[265])
        {
          free(v6);
          return v4;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 507, 137, 0, "bad image");
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 465, 137, 0, "pc_array_indirect_sort");
    }
  }

  else
  {
    v28 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 457, 137, *v28, "aaSegmentStreamOpen");
    v6 = 0;
    v5 = 0;
  }

LABEL_28:
  free(v6);
  free(v4);
  SegmentStreamClose(v5);
  return 0;
}

void *SegmentStreamCreate(void *a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = calloc(1uLL, 0xC78uLL);
  v6 = v5;
  if (!v4 || !v5)
  {
    v7 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamCreate", 416, 137, v7, "malloc");
LABEL_9:
    free(v4);
    SegmentStreamClose(v6);
    return 0;
  }

  if (!a1[4] || !a1[5])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamCreate", 417, 137, 0, "stream not compatible");
    goto LABEL_9;
  }

  *v5 = a1;
  v5[1] = a2;
  v5[395] = pc_array_init(29);
  AACustomByteStreamSetData(v4, v6);
  AACustomByteStreamSetPReadProc(v4, SegmentStreamPRead);
  AACustomByteStreamSetPWriteProc(v4, SegmentStreamPWrite);
  AACustomByteStreamSetCancelProc(v4, SegmentStreamCancel);
  AACustomByteStreamSetCloseProc(v4, SegmentStreamClose);
  if (a1[11])
  {
    v4[11] = SegmentStreamSimulate;
  }

  return v4;
}

uint64_t SegmentStreamClose(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 3152))
    {
      for (i = 16; i != 3088; i += 24)
      {
        free(*(a1 + i));
      }

      pthread_mutex_destroy((a1 + 3088));
    }

    pc_array_free(*(a1 + 3160));
    free(a1);
  }

  return 0;
}

uint64_t *aaForkInputStreamOpen(void *a1, uint64_t a2, int a3)
{
  if ((*(a2 + 2128) & 8) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", 538, 137, 0, "no chunk info");
    v3 = 0;
LABEL_12:
    v8 = 0;
    goto LABEL_39;
  }

  v7 = SegmentStreamCreate(a1, a2);
  v3 = v7;
  if (!v7)
  {
    v14 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", 542, 137, *v14, "SegmentStreamCreate");
    goto LABEL_12;
  }

  v8 = *v7;
  if (a1[11])
  {
    *(v8 + 3184) = 1;
  }

  v9 = 0;
  *(v8 + 3152) = 1;
  do
  {
    v10 = malloc(0x10000uLL);
    v11 = v8 + v9;
    *(v11 + 16) = v10;
    *(v11 + 24) = -1;
    if (!v10)
    {
      v15 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", 554, 137, v15, "malloc");
      goto LABEL_39;
    }

    v9 += 24;
  }

  while (v9 != 3072);
  if (pthread_mutex_init((v8 + 3088), 0))
  {
    v12 = "MutexInit";
    v13 = 556;
    goto LABEL_38;
  }

  v37 = 0;
  v36 = 1;
  v35 = a3;
  while (!*(a2 + 2160))
  {
LABEL_32:
    if ((v36 & 1) == 0)
    {
      *(v8 + 3168) = *(*(v8 + 3160) - 64);
      *(a2 + 2080) = *(v8 + 3176);
      return v3;
    }

    v31 = *(v8 + 3176);
    *(a2 + 2056) = v31;
    v32 = *(a2 + 2064);
    if (v32)
    {
      __src = v31;
      v39 = v32;
      v40 = 0;
      v41 = 0;
      *(v8 + 3176) = v32 + v31;
      v33 = pc_array_append(*(v8 + 3160), &__src);
      *(v8 + 3160) = v33;
      if (!v33)
      {
        v12 = "segment_add";
        v13 = 607;
        goto LABEL_38;
      }

      v31 = *(v8 + 3176);
    }

    v36 = 0;
    *(a2 + 2072) = v31;
    v37 = 1;
  }

  v16 = 0;
  while (1)
  {
    v17 = *(a2 + 2144) + 129 * v16;
    if (a3)
    {
      LOBYTE(v18) = 1;
    }

    else
    {
      v18 = *(v17 + 104);
    }

    if (!(v37 & 1 | ((v18 & 1) == 0)))
    {
      break;
    }

LABEL_29:
    if (!(v36 & 1 | ((v18 & 2) == 0)))
    {
      v28 = *(v8 + 3176);
      *(v17 + 48) = v28;
      v29 = *(v17 + 32);
      __src = v28;
      v39 = v29;
      v40 = 0;
      v41 = 0;
      *(v8 + 3176) = v29 + v28;
      v30 = pc_array_append(*(v8 + 3160), &__src);
      *(v8 + 3160) = v30;
      if (!v30)
      {
        v12 = "segment_add";
        v13 = 597;
        goto LABEL_38;
      }
    }

LABEL_31:
    ++v16;
    a3 = v35;
    if (v16 >= *(a2 + 2160))
    {
      goto LABEL_32;
    }
  }

  if (!*(v17 + 80))
  {
    v12 = "no chunks found";
    v13 = 572;
    goto LABEL_38;
  }

  *(v17 + 48) = *(v8 + 3176);
  if (!*(v17 + 56))
  {
    goto LABEL_31;
  }

  v19 = 0;
  v20 = 0;
  v21 = *(v17 + 88);
  v22 = *(v8 + 3160);
  while (1)
  {
    v23 = *(v17 + 80) + v19;
    v24 = v21 >= 0x10000 ? 0x10000 : v21;
    v25 = *v23 + *(v17 + 40);
    v26 = *(v23 + 8);
    v27 = *(v17 + 128);
    __src = *(v8 + 3176);
    *&v39 = v24;
    *(&v39 + 1) = v25;
    v40 = v26;
    v41 = v27;
    *(v8 + 3176) = __src + v24;
    v22 = pc_array_append(v22, &__src);
    *(v8 + 3160) = v22;
    if (!v22)
    {
      break;
    }

    v21 -= v24;
    ++v20;
    v19 += 12;
    if (v20 >= *(v17 + 56))
    {
      goto LABEL_29;
    }
  }

  v12 = "segment_add";
  v13 = 584;
LABEL_38:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", v13, 137, 0, v12);
LABEL_39:
  free(v3);
  SegmentStreamClose(v8);
  return 0;
}

AAByteStream_impl *aaIntervalInputStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0x68uLL);
  v7 = calloc(1uLL, 0x20uLL);
  v8 = v7;
  if (v6 && v7)
  {
    if (a3 >= a2)
    {
      *v7 = a1;
      v7[1] = a2;
      v7[2] = a3 - a2;
      v7[3] = 0;
      AACustomByteStreamSetData(v6, v7);
      AACustomByteStreamSetReadProc(v6, IntervalStreamRead);
      AACustomByteStreamSetPReadProc(v6, IntervalStreamPRead);
      AACustomByteStreamSetSeekProc(v6, IntervalStreamSeek);
      AACustomByteStreamSetCancelProc(v6, IntervalStreamCancel);
      AACustomByteStreamSetCloseProc(v6, IntervalStreamClose);
      return v6;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaIntervalInputStreamOpen", 703, 137, 0, "bad interval");
  }

  else
  {
    v9 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaIntervalInputStreamOpen", 702, 137, v9, "malloc");
  }

  free(v6);
  free(v8);
  return 0;
}

ssize_t IntervalStreamPRead(uint64_t a1, void *a2, size_t a3, int64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (v5 == a4)
  {
    return 0;
  }

  if (v5 < a4)
  {
    return -1;
  }

  if ((a4 + a3) > v5)
  {
    a3 = v5 - a4;
  }

  result = AAByteStreamPRead(*a1, a2, a3, *(a1 + 8) + a4);
  if (result < 0)
  {
    return -1;
  }

  *(a1 + 24) += result;
  return result;
}

uint64_t IntervalStreamSeek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (a1 + 24);
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return -1;
      }

      v3 = (a1 + 16);
    }

    a2 += *v3;
  }

  if ((a2 & 0x8000000000000000) == 0 && a2 <= *(a1 + 16))
  {
    *(a1 + 24) = a2;
    return a2;
  }

  return -1;
}

unint64_t SegmentStreamPRead(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v7 = 0;
  v8 = a1 + 2;
  v64 = a1 + 4;
  while (1)
  {
    v9 = segment_find(a1, a4);
    if (!v9)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", 321, 137, 0, "no segment found");
      return -1;
    }

    v10 = v9;
    v11 = a4 - *v9;
    if (v5 - v7 >= *(v9 + 8) - v11)
    {
      v12 = *(v9 + 8) - v11;
    }

    else
    {
      v12 = v5 - v7;
    }

    v67 = a4 - *v9;
    if (!*(v9 + 24))
    {
      v18 = v8;
      v19 = *a1;
      if (*(*a1 + 32))
      {
        if (!v12)
        {
          goto LABEL_41;
        }

        v20 = 0;
        v21 = v12;
        v22 = a2 + v7;
        v23 = *(v9 + 16) + v11;
        __na = v21;
        while (1)
        {
          v24 = (*(v19 + 32))(*v19, v22, v21, v23);
          if (v24 < 0)
          {
            break;
          }

          if (v24)
          {
            v22 += v24;
            v20 += v24;
            v23 += v24;
            v21 -= v24;
            if (v21)
            {
              continue;
            }
          }

          goto LABEL_39;
        }

        v20 = v24;
      }

      else
      {
        __na = v12;
        v20 = -1;
      }

LABEL_39:
      v12 = __na;
      v49 = __na == v20;
      v5 = a3;
      if (!v49)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", 337, 137, 0, "aaSegmentStreamProcess");
        return -1;
      }

LABEL_41:
      v8 = v18;
      if (*(a1 + 796) && v12 != aaByteStreamSimulate(*a1))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", 340, 137, 0, "aaByteStreamSimulate");
        return -1;
      }

      goto LABEL_56;
    }

    v13 = a1[1];
    v14 = *(v9 + 28);
    if (pthread_mutex_lock((a1 + 386)))
    {
      v56 = "MutexLock";
      v57 = 169;
LABEL_61:
      v58 = 0;
      goto LABEL_68;
    }

    __n = v12;
    v15 = *(v10 + 16);
    v16 = &v8[3 * (((0x317E428CA9 * v15) >> 32) & 0x7F)];
    if (v16[1] != v15)
    {
      break;
    }

    v17 = a1[394] + 1;
    a1[394] = v17;
    v16[2] = v17;
LABEL_26:
    v37 = (*v16 + v67);
    v12 = __n;
    memcpy((a2 + v7), v37, __n);
    v38 = 0;
LABEL_53:
    if (pthread_mutex_unlock((a1 + 386)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", 208, 137, 0, "MutexUnlock");
      goto LABEL_72;
    }

    free(v38);
    if (*(a1 + 796))
    {
      v55 = *(v10 + 24);
      if (aaByteStreamSimulate(*a1) != v55)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", 333, 137, 0, "aaByteStreamSimulate");
        return -1;
      }
    }

LABEL_56:
    a4 += v12;
    v7 += v12;
    if (v7 >= v5)
    {
      return v7;
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = v64;
  v28 = v13 + 8 * v14;
  while (*(v27 - 1) != v15)
  {
    v29 = *v27;
    v27 += 3;
    if (v29 < v8[3 * v26 + 2])
    {
      v26 = v25;
    }

    if (++v25 == 128)
    {
      goto LABEL_25;
    }
  }

  v26 = v25;
LABEL_25:
  v30 = v16[2];
  v31 = *v16;
  v32 = &v8[3 * v26];
  v33 = v32[2];
  *v16 = *v32;
  v16[2] = v33;
  *v32 = v31;
  v32[2] = v30;
  v34 = v16[1];
  v35 = *(v10 + 16);
  v36 = a1[394] + 1;
  a1[394] = v36;
  v16[2] = v36;
  if (v34 == v35)
  {
    goto LABEL_26;
  }

  if (pthread_mutex_unlock((a1 + 386)))
  {
    v56 = "MutexUnlock";
    v57 = 175;
    goto LABEL_61;
  }

  v39 = *(v10 + 24);
  v40 = *(v10 + 8) + v39;
  if (v40 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_67:
    v58 = *__error();
    v56 = "aaMalloc";
    v57 = 179;
LABEL_68:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", v57, 137, v58, v56);
    v38 = 0;
    goto LABEL_72;
  }

  v41 = malloc(v40);
  if (!v41)
  {
    goto LABEL_67;
  }

  v38 = v41;
  v63 = v28;
  v42 = *a1;
  if (!*(*a1 + 32))
  {
    goto LABEL_64;
  }

  v61 = v41;
  v62 = v8;
  v43 = v39;
  v60 = v39;
  v44 = 0;
  if (v39)
  {
    v45 = *(v10 + 16);
    v46 = v41;
    v47 = v43;
    while (1)
    {
      v48 = (*(v42 + 32))(*v42, v46, v47, v45);
      if (v48 < 0)
      {
        break;
      }

      if (v48)
      {
        v46 += v48;
        v44 += v48;
        v45 += v48;
        v47 -= v48;
        if (v47)
        {
          continue;
        }
      }

      goto LABEL_45;
    }

    v44 = v48;
  }

LABEL_45:
  v38 = v61;
  v49 = v44 == v60;
  v5 = a3;
  v8 = v62;
  if (!v49)
  {
LABEL_64:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", 183, 137, 0, "aaByteStreamPReadExpected");
    goto LABEL_72;
  }

  v50 = *(v10 + 8);
  if (*v61 == *(v63 + 4))
  {
    if (v50 + 1 != *(v10 + 24))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", 189, 137, 0, "chunk error");
      goto LABEL_72;
    }

    v51 = v61 + 1;
  }

  else
  {
    v52 = *(v10 + 24);
    v51 = &v61[v52];
    if (compression_decode_buffer(&v61[v52], v50, v61, v52, 0, *v63) != *(v10 + 8))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", 195, 137, 0, "compression_decode_buffer");
      goto LABEL_72;
    }
  }

  memcpy((a2 + v7), &v51[v67], __n);
  if (!pthread_mutex_lock((a1 + 386)))
  {
    memcpy(*v16, v51, *(v10 + 8));
    v53 = *(v10 + 16);
    v54 = a1[394] + 1;
    a1[394] = v54;
    v16[1] = v53;
    v16[2] = v54;
    v12 = __n;
    goto LABEL_53;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", 202, 137, 0, "MutexLock");
LABEL_72:
  free(v38);
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", 330, 137, 0, "segment_decode_to_buffer");
  return -1;
}

unint64_t SegmentStreamPWrite(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = segment_find(a1, a4);
    if (!v8)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPWrite", 363, 137, 0, "no segment found");
      return -1;
    }

    v9 = a4 - *v8;
    if (a3 - v7 >= *(v8 + 8) - v9)
    {
      v10 = *(v8 + 8) - v9;
    }

    else
    {
      v10 = a3 - v7;
    }

    if (*(v8 + 24))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPWrite", 370, 137, 0, "compressed content");
      return -1;
    }

    v11 = *a1;
    if (!*(*a1 + 40))
    {
      v12 = -1;
      goto LABEL_16;
    }

    if (v10)
    {
      break;
    }

LABEL_17:
    a4 += v10;
    v7 += v10;
    if (v7 >= a3)
    {
      return v7;
    }
  }

  v12 = 0;
  v13 = a2 + v7;
  v14 = *(v8 + 16) + v9;
  v15 = v10;
  while (1)
  {
    v16 = (*(v11 + 40))(*v11, v13, v15, v14);
    if (v16 < 1)
    {
      break;
    }

    v13 += v16;
    v12 += v16;
    v14 += v16;
    v15 -= v16;
    if (!v15)
    {
      goto LABEL_16;
    }
  }

  v12 = v16;
LABEL_16:
  if (v10 == v12)
  {
    goto LABEL_17;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPWrite", 374, 137, 0, "aaByteStreamPWriteExpected");
  return -1;
}

unint64_t SegmentStreamSimulate(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = 0;
  while (a4 > v8)
  {
    v9 = segment_find(a1, a5);
    if (!v9)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamSimulate", 276, 137, 0, "no segment found");
      return -1;
    }

    v10 = *(v9 + 8) - (a5 - *v9);
    if (a4 - v8 < v10)
    {
      v10 = a4 - v8;
    }

    a5 += v10;
    v8 += v10;
    if (*(v9 + 24))
    {
      v11 = *(v9 + 24);
    }

    else
    {
      v11 = v10;
    }

    if (v11 != aaByteStreamSimulate(*a1))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamSimulate", 303, 137, 0, "aaByteStreamSimulate");
      return -1;
    }
  }

  return v8;
}

uint64_t segment_find(void *a1, unint64_t a2)
{
  if (a1[397] <= a2)
  {
    return 0;
  }

  v2 = a1[396];
  v3 = a1[395];
  if (v2 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      if (*(v3 + 29 * ((v4 + v2) >> 1)) <= a2)
      {
        v4 = (v4 + v2) >> 1;
      }

      else
      {
        v2 = (v4 + v2) >> 1;
      }
    }

    while (v4 + 1 < v2);
  }

  return v3 + 29 * v4;
}

uint64_t load_variants(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = (a2 + 16);
  v7 = MEMORY[0x29EDCA610];
  while (1)
  {
    v8 = v6;
    if (v4)
    {
      v8 = (*(a2 + 8) + 8 * v4 - 8);
    }

    v9 = rawimg_create_with_path(*v8);
    *(a1 + 8 * v4) = v9;
    if (!v9)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "load_variants", 37, 134, 0, "rawimg_create_with_file");
      return 0;
    }

    if ((rawimg_get_digests(v9, *(a2 + 36), 0, 0) & 0x80000000) != 0)
    {
      break;
    }

    v10 = *(a1 + 8 * v4);
    if (v4 < 2)
    {
LABEL_19:
      *(a1 + 8 * v5++) = v10;
    }

    else
    {
      v11 = 1;
      while (1)
      {
        v12 = *(a1 + 8 * v11);
        v13 = v12[261];
        v14 = v12[262];
        v15 = v12[263];
        v16 = v12[264];
        v17 = v10[261] == v13 && v10[262] == v14;
        v18 = v17 && v10[263] == v15;
        if (v18 && v10[264] == v16)
        {
          break;
        }

        if (v4 == ++v11)
        {
          goto LABEL_19;
        }
      }

      rawimg_destroy(v10);
      if (*(a2 + 40))
      {
        fprintf(*v7, "ImageDiff: Removed non-unique input variant <%s>.\n", *(*(a1 + 8 * v4) + 2048));
      }
    }

    if (++v4 > *a2)
    {
      return v5;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "load_variants", 38, 134, 0, "rawimg_get_digests");
  return 0;
}

unint64_t patch_write_controls(AAByteStream_impl *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = AAByteStreamSeek(a1, 0, 1);
  *(a3 + 38) = v8;
  if (v8 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 331, 134, 0, "AAByteStreamSeek");
    v16 = 0;
    v12 = 0;
  }

  else
  {
    v9 = *(a4 + 40);
    if (v9 <= 3)
    {
      v10 = v9 << 62;
    }

    else
    {
      v10 = 0xC000000000000000;
    }

    v11 = AACompressionOutputStreamOpen(a1, 0x306u, 0x100000uLL, v10, *(a4 + 36));
    v12 = v11;
    if (v11)
    {
      v13 = a2[2];
      if (v13 < 2)
      {
        v17 = a2[3];
        v14 = (v17 + 56);
        v15 = (v17 + 40);
      }

      else
      {
        v14 = a2 + 11;
        v15 = a2 + 9;
      }

      v18 = *v14;
      *(a3 + 18) = v18;
      v16 = *v15;
      if (*(v11 + 3))
      {
        v19 = 8 * v13 + 16;
        v20 = v19 * v18;
        if (!(v19 * v18))
        {
          goto LABEL_19;
        }

        v21 = 0;
        v22 = *v15;
        v23 = v19 * v18;
        while (1)
        {
          v24 = (*(v12 + 3))(*v12, v22, v23);
          if (v24 < 1)
          {
            break;
          }

          v22 += v24;
          v21 += v24;
          v23 -= v24;
          if (!v23)
          {
            goto LABEL_18;
          }
        }

        v21 = v24;
LABEL_18:
        if (v20 == v21)
        {
LABEL_19:
          v25 = 0;
          goto LABEL_22;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 350, 134, 0, "aaByteStreamWriteExpected");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 335, 134, 0, "AACompressionOutputStreamOpen");
      v16 = 0;
    }
  }

  v25 = 1;
LABEL_22:
  if (AAByteStreamClose(v12) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 353, 134, 0, "AAByteStreamClose");
  }

  else if (!v25)
  {
    return v16;
  }

  return 0;
}

uint64_t RawImageDiff(uint64_t a1)
{
  v201 = *MEMORY[0x29EDCA608];
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v194 = 0u;
  if (!*(a1 + 36))
  {
    *(a1 + 36) = getDefaultNThreads();
  }

  if (*(a1 + 40))
  {
    v2 = MEMORY[0x29EDCA610];
    fwrite("ImageDiff\n", 0xAuLL, 1uLL, *MEMORY[0x29EDCA610]);
    v3 = *a1;
    if (*a1)
    {
      v4 = 0;
      do
      {
        v5 = *(*(a1 + 8) + 8 * v4);
        if (v5)
        {
          fprintf(*v2, "  Input %zu: %s\n", v4, v5);
          v3 = *a1;
        }

        ++v4;
      }

      while (v4 < v3);
    }

    if (*(a1 + 16))
    {
      fprintf(*v2, "  Output: %s\n", *(a1 + 16));
    }

    if (*(a1 + 24))
    {
      fprintf(*v2, "  Patch: %s\n", *(a1 + 24));
    }

    if (*(a1 + 32))
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    fprintf(*v2, "  In-place: %s\n", v6);
  }

  v7 = *a1 + 1;
  if (v7 > 0x400000000)
  {
    *__error() = 12;
LABEL_105:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 592, 134, 0, "aaCalloc");
    v72 = 0xFFFFFFFFLL;
    goto LABEL_127;
  }

  v8 = calloc(v7, 8uLL);
  if (!v8)
  {
    goto LABEL_105;
  }

  v9 = v8;
  variants = load_variants(v8, a1);
  if (!variants)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 596, 134, 0, "load_variants");
    goto LABEL_123;
  }

  *a1 = variants - 1;
  if ((rawimg_set_fork_types(v9, variants) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 600, 134, 0, "rawimg_set_fork_types");
    goto LABEL_123;
  }

  v11 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v12 = *a1 & 0x7FFFFFFFLL;
    do
    {
      rawimg_show(v9[v12], v12 == 0, *(a1 + 40));
      --v12;
    }

    while (v12 != -1);
    v11 = *a1;
  }

  v13 = *v9;
  v192 = (*(*v9 + 2120) / 0x64uLL + 0x2000000);
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  *(&v194 + 4) = vrev64_s32(*(a1 + 36));
  *&v195 = v11;
  if (v11 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11;
  }

  if (!is_mul_ok(v14, 0x50uLL) || 80 * v14 >= 0x2000000001)
  {
    *__error() = 12;
    *(&v195 + 1) = 0;
    goto LABEL_109;
  }

  v15 = calloc(v14, 0x50uLL);
  *(&v195 + 1) = v15;
  if (!v15)
  {
LABEL_109:
    v73 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 205, 134, v73, "aaCalloc");
LABEL_110:
    v28 = 0;
    v27 = 0;
    v25 = 0;
    goto LABEL_111;
  }

  v16 = v15;
  if (v11)
  {
    v17 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = vdupq_n_s64(v11 - 1);
    v19 = xmmword_296AD18D0;
    v20 = xmmword_296AD1760;
    v21 = v15 + 196;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s16(v23, *v18.i8).u8[0])
      {
        *(v21 - 40) = 1;
      }

      if (vuzp1_s16(v23, *&v18).i8[2])
      {
        *(v21 - 20) = 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
      {
        *v21 = 1;
        v21[20] = 1;
      }

      v19 = vaddq_s64(v19, v22);
      v20 = vaddq_s64(v20, v22);
      v21 += 80;
      v17 -= 4;
    }

    while (v17);
  }

  if (!*a1)
  {
    v150 = calloc(1uLL, 0x18uLL);
    *(v16 + 5) = v150;
    if (v150)
    {
      v28 = 0;
      v27 = 0;
      v25 = 0;
      v38 = 0;
      v36 = 0;
      v34 = 0;
      v151 = *(v13 + 2080);
      if (v151 < 0)
      {
        v151 = 0x8000000000000000 - v151;
      }

      v150[1] = v151;
      v74 = 1;
      *(v16 + 7) = 1;
      goto LABEL_113;
    }

    v152 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 213, 134, v152, "aaCalloc");
    goto LABEL_110;
  }

  v24 = AAFileStreamOpenWithPath(*(v13 + 2048), 0, 0);
  v25 = v24;
  if (!v24)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 223, 134, 0, "AAFileStreamOpenWithPath");
    v28 = 0;
    v27 = 0;
    goto LABEL_111;
  }

  v26 = aaSegmentStreamOpen(v24, v13);
  v27 = v26;
  if (!v26)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 225, 134, 0, "aaSegmentStreamOpen");
    v28 = 0;
    goto LABEL_111;
  }

  v28 = aaForkInputStreamOpen(v26, v13, 0);
  if (!v28)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 227, 134, 0, "aaForkInputStreamOpen");
    goto LABEL_111;
  }

  v29 = 0;
  while (1)
  {
    if (v29 >= v195)
    {
      if (v195 < 2)
      {
LABEL_349:
        v38 = 0;
        v36 = 0;
        v34 = 0;
        v74 = 1;
        goto LABEL_113;
      }

      if (bxdiff5CreateComboControls(&v194))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 270, 134, 0, "bxdiff5CreateComboControls");
        goto LABEL_111;
      }

      if ((controls_combo_enforce_copy_fork_boundary(*v9, &v194) & 0x80000000) == 0)
      {
        if (*(a1 + 40))
        {
          fprintf(*MEMORY[0x29EDCA610], "ImageDiff: Constructed %zd combo controls.\n", *(&v199 + 1));
        }

        goto LABEL_349;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 272, 134, 0, "controls_combo_enforce_copy_fork_boundary");
LABEL_111:
      v38 = 0;
      v36 = 0;
      v34 = 0;
      goto LABEL_112;
    }

    v30 = v27;
    v190 = v29;
    v31 = (v29 + 1);
    v32 = v9[v29 + 1];
    v33 = AAFileStreamOpenWithPath(*(v32 + 2048), 0, 0);
    v34 = v33;
    if (!v33)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 236, 134, 0, "AAFileStreamOpenWithPath");
      v38 = 0;
      v36 = 0;
LABEL_323:
      v74 = 0;
      v27 = v30;
      goto LABEL_113;
    }

    v35 = aaSegmentStreamOpen(v33, v32);
    v36 = v35;
    if (!v35)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 238, 134, 0, "aaSegmentStreamOpen");
      v38 = 0;
      goto LABEL_323;
    }

    v186 = v31;
    v37 = aaForkInputStreamOpen(v35, v32, 0);
    v38 = v37;
    if (!v37)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 240, 134, 0, "aaForkInputStreamOpen");
      goto LABEL_323;
    }

    v188 = v32;
    if ((GetLargeFileControlsWithStreams(v37, *(v32 + 2072), v28, *(v13 + 2072), (*(&v195 + 1) + 80 * v190 + 40), (*(&v195 + 1) + 80 * v190 + 56), &v194) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 246, 134, 0, "GetLargeFileControlsWithStreams");
      goto LABEL_323;
    }

    v39 = *(v13 + 2160);
    v27 = v30;
    if (v39)
    {
      v40 = *(&v195 + 1) + 80 * v190;
      v41 = *(v40 + 56);
      if (!v41)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_append_copy_forks", 124, 134, 0, "empty controls");
        goto LABEL_302;
      }

      if ((*(v13 + 2128) & 0x10) == 0 || (v188[2128] & 0x10) == 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_append_copy_forks", 126, 134, 0, "no digests found");
LABEL_302:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 250, 134, 0, "controls_append_copy_forks");
        goto LABEL_112;
      }

      v42 = 24 * (v41 + v39);
      if (v42 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_336:
        *(v40 + 40) = 0;
        v159 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_append_copy_forks", 130, 134, v159, "aaReallocf");
        goto LABEL_302;
      }

      v184 = v28;
      v43 = v25;
      v182 = *(a1 + 40);
      v44 = *(v40 + 40);
      v45 = realloc(v44, v42);
      if (!v45)
      {
        free(v44);
        v25 = v43;
        v28 = v184;
        goto LABEL_336;
      }

      *(v40 + 40) = v45;
      v46 = *(v40 + 56);
      if (v46)
      {
        v47 = 0;
        v48 = (v45 + 16);
        v49 = *(v40 + 56);
        v25 = v43;
        do
        {
          v50 = *(v48 - 2);
          if (v50 < 0)
          {
            v50 = 0x8000000000000000 - v50;
          }

          v52 = *v48;
          v48 += 3;
          v51 = v52;
          v53 = 0x8000000000000000 - v52;
          if (v52 < 0)
          {
            v51 = v53;
          }

          v47 += v50 + v51;
          --v49;
        }

        while (v49);
      }

      else
      {
        v47 = 0;
        v25 = v43;
      }

      v54 = *(v13 + 2160);
      v28 = v184;
      if (v54)
      {
        v55 = 0;
        v56 = *(v13 + 2144);
        do
        {
          v57 = v56 + 129 * v55;
          if ((*(v57 + 104) & 2) != 0)
          {
            v58 = *(v188 + 270);
            if (!v58)
            {
              goto LABEL_301;
            }

            v59 = *(v188 + 268);
            while (1)
            {
              if ((*(v59 + 104) & 2) != 0 && *(v59 + 88) == *(v57 + 88) && *(v59 + 96) == *(v57 + 96))
              {
                v60 = *(v59 + 32);
                if (v60 == *(v57 + 32))
                {
                  v61 = *v59 == *v57 && *(v59 + 8) == *(v57 + 8);
                  v62 = v61 && *(v59 + 16) == *(v57 + 16);
                  if (v62 && *(v59 + 24) == *(v57 + 24))
                  {
                    break;
                  }
                }
              }

              v59 += 129;
              if (!--v58)
              {
                goto LABEL_301;
              }
            }

            v64 = *(v59 + 48);
            if (v64 < 0)
            {
LABEL_301:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_append_copy_forks", 161, 134, 0, "copy fork not found");
              goto LABEL_302;
            }

            v65 = &v45[24 * v46];
            v66 = 0x8000000000000000 - v60;
            if (v60 >= 0)
            {
              v66 = v60;
            }

            v67 = *(v65 - 1);
            if (v67 < 0)
            {
              v67 = 0x8000000000000000 - v67;
            }

            *(v40 + 56) = ++v46;
            v65[1] = 0;
            v65[2] = 0;
            v68 = v64 - v47;
            v69 = __OFADD__(v67, v68);
            v70 = v67 + v68;
            if (v70 < 0 != v69)
            {
              v70 = 0x8000000000000000 - v70;
            }

            *(v65 - 1) = v70;
            *v65 = v66;
            v47 = v64 + v60;
            v54 = *(v13 + 2160);
          }

          ++v55;
        }

        while (v55 < v54);
      }

      if (v182 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "ImageDiff: Processed copy forks: %zd controls\n", v46);
      }
    }

    if ((*(a1 + 32) & 1) != 0 && (rawimg_force_in_place((*(&v195 + 1) + 80 * v190 + 40), (*(&v195 + 1) + 80 * v190 + 56), v188, v13, v192, *(a1 + 40)) & 0x80000000) != 0)
    {
      break;
    }

    if (AAByteStreamClose(v38) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 262, 134, 0, "AAByteStreamClose");
      goto LABEL_112;
    }

    if (AAByteStreamClose(v36) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 263, 134, 0, "AAByteStreamClose");
      v38 = 0;
      goto LABEL_112;
    }

    v71 = AAByteStreamClose(v34);
    v29 = v186;
    if (v71 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 264, 134, 0, "AAByteStreamClose");
      v38 = 0;
      v36 = 0;
      goto LABEL_112;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 258, 134, 0, "rawimg_force_in_place");
LABEL_112:
  v74 = 0;
LABEL_113:
  if (AAByteStreamClose(v28) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 280, 134, 0, "AAByteStreamClose");
    v74 = 0;
  }

  if (AAByteStreamClose(v27) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 281, 134, 0, "AAByteStreamClose");
    if ((AAByteStreamClose(v25) & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

LABEL_121:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 282, 134, 0, "AAByteStreamClose");
    goto LABEL_122;
  }

  if (AAByteStreamClose(v25) < 0)
  {
    goto LABEL_121;
  }

  if (!v74)
  {
LABEL_122:
    AAByteStreamClose(v38);
    AAByteStreamClose(v36);
    AAByteStreamClose(v34);
    BXDiff5Data_free(&v194);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 612, 134, 0, "controls_create_with_variants");
    goto LABEL_123;
  }

  v75 = 8 * *a1 + 62;
  if (v75 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_291;
  }

  v78 = *(a1 + 32);
  v79 = calloc(1uLL, 8 * *a1 + 62);
  if (!v79)
  {
LABEL_291:
    v149 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 515, 134, *v149, "aaCalloc");
    v80 = 0;
    v83 = 0;
LABEL_309:
    v153 = 1;
    goto LABEL_310;
  }

  v80 = v79;
  *v79 = 0x3031464649444952;
  *(v79 + 4) = *a1 + 1;
  *(v79 + 10) = v78 & 1;
  if (v78)
  {
    v81 = v192;
  }

  else
  {
    v81 = 0;
  }

  *(v79 + 26) = v81;
  *(v79 + 30) = v75;
  v82 = AAFileStreamOpenWithPath(*(a1 + 24), 1537, 0x1A4u);
  v83 = v82;
  if (!v82)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 526, 134, 0, "AAFileStreamOpenWithPath");
    goto LABEL_309;
  }

  if (AAByteStreamSeek(v82, v75, 0) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 527, 134, 0, "AAByteStreamSeek");
    goto LABEL_309;
  }

  v84 = *(a1 + 40);
  if (v84 <= 3)
  {
    v85 = v84 << 62;
  }

  else
  {
    v85 = 0xC000000000000000;
  }

  v86 = AACompressionOutputStreamOpen(v83, 0x306u, 0x100000uLL, v85, *(a1 + 36));
  if (!v86)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_metadata", 305, 134, 0, "AACompressionOutputStreamOpen");
    goto LABEL_306;
  }

  v87 = 0;
  do
  {
    if ((rawimg_save_to_stream(v86, v9[v87], v87 == 0) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_metadata", 311, 134, 0, "rawimg_save_to_stream");
LABEL_306:
      if ((AAByteStreamClose(v86) & 0x80000000) == 0)
      {
LABEL_308:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 530, 134, 0, "patch_write_metadata");
        goto LABEL_309;
      }

LABEL_307:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_metadata", 315, 134, 0, "AAByteStreamClose");
      goto LABEL_308;
    }

    ++v87;
  }

  while (v87 <= *a1);
  if (AAByteStreamClose(v86) < 0)
  {
    goto LABEL_307;
  }

  v88 = patch_write_controls(v83, &v194, v80, a1);
  if (!v88)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 534, 134, 0, "patch_write_controls");
    goto LABEL_309;
  }

  v89 = 0;
  v90 = v80 + 46;
  v170 = v88;
  do
  {
    v91 = v9[v89];
    v178 = *v9;
    v92 = AAByteStreamSeek(v83, 0, 1);
    v177 = (v90 + 8 * v89);
    *v177 = v92;
    if (v92 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 383, 134, 0, "AAByteStreamSeek");
LABEL_157:
      v187 = 0;
      v189 = 0;
      v191 = 0;
      v193 = 0;
      v180 = 0;
      v181 = 0;
      v183 = 0;
      v185 = 0;
      v98 = 0;
      v99 = 0;
      goto LABEL_250;
    }

    v93 = *(a1 + 40);
    if (v93 <= 3)
    {
      v94 = v93 << 62;
    }

    else
    {
      v94 = 0xC000000000000000;
    }

    s = AACompressionOutputStreamOpen(v83, 0x306u, 0x100000uLL, v94, *(a1 + 36));
    if (!s)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 387, 134, 0, "AACompressionOutputStreamOpen");
      goto LABEL_157;
    }

    if (v89)
    {
      v95 = AAFileStreamOpenWithPath(*(v91 + 2048), 0, 0);
      if (v95)
      {
        v185 = v95;
        v96 = aaSegmentStreamOpen(v95, v91);
        if (v96)
        {
          v183 = v96;
          v191 = aaForkInputStreamOpen(v96, v91, 0);
          if (!v191)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 398, 134, 0, "aaForkInputStreamOpen");
            v187 = 0;
            v189 = 0;
            v191 = 0;
            v193 = 0;
            goto LABEL_247;
          }

          v187 = malloc(0x10000uLL);
          if (!v187)
          {
            v97 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 400, 134, *v97, "aaMalloc");
            v187 = 0;
            v189 = 0;
LABEL_243:
            v193 = 0;
LABEL_247:
            v180 = 0;
            v181 = 0;
            goto LABEL_248;
          }

          goto LABEL_159;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 396, 134, 0, "aaSegmentStreamOpen");
        v187 = 0;
        v189 = 0;
        v191 = 0;
        v193 = 0;
        v180 = 0;
        v181 = 0;
        v183 = 0;
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 394, 134, 0, "AAFileStreamOpenWithPath");
        v187 = 0;
        v189 = 0;
        v191 = 0;
        v193 = 0;
        v180 = 0;
        v181 = 0;
        v183 = 0;
        v185 = 0;
      }

LABEL_248:
      v99 = 0;
      goto LABEL_249;
    }

    v185 = 0;
    v187 = 0;
    v191 = 0;
    v183 = 0;
LABEL_159:
    v100 = v178;
    v101 = AAFileStreamOpenWithPath(*(v178 + 2048), 0, 0);
    if (!v101)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 405, 134, 0, "AAFileStreamOpenWithPath");
      v189 = 0;
      goto LABEL_243;
    }

    v181 = v101;
    v102 = aaSegmentStreamOpen(v101, v178);
    if (!v102)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 407, 134, 0, "aaSegmentStreamOpen");
      v189 = 0;
      v193 = 0;
      v180 = 0;
      goto LABEL_248;
    }

    v180 = v102;
    v193 = aaForkInputStreamOpen(v102, v178, 0);
    if (!v193)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 409, 134, 0, "aaForkInputStreamOpen");
      v189 = 0;
      v193 = 0;
      goto LABEL_248;
    }

    v103 = malloc(0x10000uLL);
    if (!v103)
    {
      v144 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 411, 134, *v144, "aaMalloc");
      v189 = 0;
      goto LABEL_248;
    }

    v189 = v103;
    v104 = v170;
    if (!*(v80 + 18))
    {
      v107 = 0;
      v106 = 0;
LABEL_270:
      if (v106 != *(v100 + 2080))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 472, 134, 0, "bad controls");
        goto LABEL_279;
      }

      v145 = v107;
      if (AAByteStreamClose(s) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 475, 134, 0, "AAByteStreamClose");
        v99 = 0;
      }

      else
      {
        v99 = 1;
      }

      v147 = AAByteStreamSeek(v83, 0, 1);
      v177[1] = v147;
      if (v147 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 480, 134, 0, "AAByteStreamSeek");
        v98 = 0;
        v99 = 0;
LABEL_289:
        v90 = v80 + 46;
      }

      else
      {
        if (*(a1 + 40) >= 2)
        {
          v148 = "Diff";
          if (!v89)
          {
            v148 = "Literal";
          }

          fprintf(*MEMORY[0x29EDCA610], "%s stream: %llu bytes -> %llu bytes\n", v148, v145, v147 - *v177);
        }

        v98 = 0;
        v90 = v80 + 46;
      }

      goto LABEL_250;
    }

    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    while (1)
    {
      v166 = v108;
      v165 = (v104 + 8 * (v108 + v108 * *(v80 + 8)));
      v109 = v165[1];
      v110 = 0x8000000000000000 - *v165;
      if ((*v165 & 0x8000000000000000) == 0)
      {
        v110 = *v165;
      }

      v111 = 0x8000000000000000 - v109;
      if (v109 >= 0)
      {
        v111 = v165[1];
      }

      if (!v89)
      {
        break;
      }

      v163 = v111;
      v112 = *(v100 + 2072);
      if (v106 < v112 && v110 + v106 > v112)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 427, 134, 0, "bad controls");
        goto LABEL_248;
      }

      v113 = v106 >= v112;
      if (v106 >= v112)
      {
        v114 = v110 + v106;
      }

      else
      {
        v114 = v106;
      }

      if (v106 >= v112)
      {
        v115 = v110;
      }

      else
      {
        v115 = 0;
      }

      v171 = v114;
      v173 = v115 + v105;
      v161 = v107;
      if (!v113 && v110)
      {
        v116 = v110;
        v167 = v110;
        while (1)
        {
          v168 = v116;
          if (v116 >= 0x10000)
          {
            v117 = 0x10000;
          }

          else
          {
            v117 = v116;
          }

          if (!*(v191 + 4))
          {
            goto LABEL_275;
          }

          v118 = 0;
          v119 = v187;
          v120 = v173;
          v175 = v117;
          while (1)
          {
            v121 = (*(v191 + 4))(*v191, v119, v117, v120);
            if (v121 < 0)
            {
              break;
            }

            if (v121)
            {
              v119 += v121;
              v118 += v121;
              v120 += v121;
              v117 -= v121;
              if (v117)
              {
                continue;
              }
            }

            goto LABEL_191;
          }

          v118 = v121;
LABEL_191:
          v122 = v175;
          if (v175 != v118)
          {
LABEL_275:
            v146 = 442;
            goto LABEL_278;
          }

          v123 = v189;
          if (!*(v193 + 4))
          {
            goto LABEL_277;
          }

          v124 = 0;
          v125 = v171;
          while (1)
          {
            v126 = (*(v193 + 4))(*v193, v123, v122, v125);
            if (v126 < 0)
            {
              break;
            }

            if (v126)
            {
              v123 += v126;
              v124 += v126;
              v125 += v126;
              v122 -= v126;
              if (v122)
              {
                continue;
              }
            }

            goto LABEL_199;
          }

          v124 = v126;
LABEL_199:
          v127 = v175;
          v128 = v189;
          if (v175 != v124)
          {
LABEL_277:
            v146 = 443;
            goto LABEL_278;
          }

          v129 = 0;
          v130 = v175 <= 1 ? 1 : v175;
          v90 = v80 + 46;
          do
          {
            v189[v129] -= v187[v129];
            ++v129;
          }

          while (v130 != v129);
          if (!*(s + 3))
          {
            break;
          }

          v131 = 0;
          while (1)
          {
            v132 = (*(s + 3))(*s, v128, v127);
            if (v132 < 1)
            {
              break;
            }

            v128 += v132;
            v131 += v132;
            v127 -= v132;
            if (!v127)
            {
              goto LABEL_211;
            }
          }

          v131 = v132;
LABEL_211:
          v103 = v189;
          if (v175 != v131)
          {
            break;
          }

          v173 += v175;
          v171 += v175;
          v116 = v168 - v175;
          v110 = v167;
          if (v168 == v175)
          {
            goto LABEL_213;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 447, 134, 0, "aaByteStreamWriteExpected");
        goto LABEL_248;
      }

LABEL_213:
      v133 = v165[v89 + 1];
      if (v133 < 0)
      {
        v133 = 0x8000000000000000 - v133;
      }

      v105 = v133 + v173;
      v107 = v161;
      v106 = v171 + v163;
      v100 = v178;
LABEL_239:
      v107 += v110;
      v108 = v166 + 1;
      v104 = v170;
      if ((v166 + 1) >= *(v80 + 18))
      {
        goto LABEL_270;
      }
    }

    v106 += v110;
    if (!v111)
    {
      v110 = 0;
      goto LABEL_239;
    }

    v169 = v105;
    v162 = v107;
    v164 = v111;
    v134 = v111;
    while (1)
    {
      v174 = v134;
      v135 = v134 >= 0x10000 ? 0x10000 : v134;
      if (!*(v193 + 4))
      {
        break;
      }

      v136 = 0;
      v137 = v103;
      v172 = v106;
      v138 = v106;
      v176 = v135;
      while (1)
      {
        v139 = (*(v193 + 4))(*v193, v137, v135, v138);
        if (v139 < 0)
        {
          break;
        }

        if (v139)
        {
          v137 += v139;
          v136 += v139;
          v138 += v139;
          v135 -= v139;
          if (v135)
          {
            continue;
          }
        }

        goto LABEL_228;
      }

      v136 = v139;
LABEL_228:
      v140 = v176;
      v141 = v189;
      if (v176 != v136)
      {
        break;
      }

      if (!*(s + 3))
      {
        goto LABEL_276;
      }

      v142 = 0;
      while (1)
      {
        v143 = (*(s + 3))(*s, v141, v140);
        if (v143 < 1)
        {
          break;
        }

        v141 += v143;
        v142 += v143;
        v140 -= v143;
        if (!v140)
        {
          goto LABEL_235;
        }
      }

      v142 = v143;
LABEL_235:
      v103 = v189;
      if (v176 != v142)
      {
LABEL_276:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 467, 134, 0, "aaByteStreamWriteExpected");
        v99 = 0;
        v98 = s;
        goto LABEL_289;
      }

      v106 = v176 + v172;
      v134 = v174 - v176;
      if (v174 == v176)
      {
        v107 = v162;
        v110 = v164;
        v90 = v80 + 46;
        v100 = v178;
        v105 = v169;
        goto LABEL_239;
      }
    }

    v146 = 466;
LABEL_278:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", v146, 134, 0, "aaByteStreamPReadExpected");
LABEL_279:
    v99 = 0;
    v90 = v80 + 46;
LABEL_249:
    v98 = s;
LABEL_250:
    if (AAByteStreamClose(v98) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 489, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v191) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 490, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v183) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 491, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v185) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 492, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v193) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 493, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v180) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 494, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v181) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 495, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    free(v187);
    free(v189);
    if (!v99)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 539, 134, 0, "patch_write_stream");
      goto LABEL_309;
    }

    ++v89;
  }

  while (v89 <= *a1);
  if (!*(v83 + 5))
  {
    goto LABEL_345;
  }

  v154 = 0;
  v155 = 0;
  v156 = v80;
  v157 = v75;
  while (1)
  {
    v158 = (*(v83 + 5))(*v83, v156, v157, v155);
    if (v158 < 1)
    {
      break;
    }

    v156 += v158;
    v154 += v158;
    v155 += v158;
    v157 -= v158;
    if (!v157)
    {
      goto LABEL_339;
    }
  }

  v154 = v158;
LABEL_339:
  if (v75 != v154)
  {
LABEL_345:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 543, 134, 0, "aaByteStreamPWriteExpected");
    goto LABEL_309;
  }

  v160 = *(a1 + 40);
  if (v160 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "  Metadata: %llu bytes\n  Controls: %llu bytes\n", *(v80 + 38) - *(v80 + 30), *(v80 + 46) - *(v80 + 38));
    v160 = *(a1 + 40);
  }

  if (v160 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12llu final patch size\n", *(v80 + 46 + 8 * *(v80 + 8)));
  }

  v153 = 0;
LABEL_310:
  if (AAByteStreamClose(v83) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 562, 134, 0, "AAByteStreamClose");
    free(v80);
  }

  else
  {
    free(v80);
    if (!v153)
    {
      v72 = 0;
      goto LABEL_124;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 615, 134, 0, "patch_write");
LABEL_123:
  v72 = 0xFFFFFFFFLL;
LABEL_124:
  v76 = 0;
  do
  {
    rawimg_destroy(v9[v76++]);
  }

  while (v76 <= *a1);
  free(v9);
LABEL_127:
  BXDiff5Data_free(&v194);
  return v72;
}

double BXDiff5Data_free(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 16))
    {
      v3 = 0;
      v4 = 40;
      do
      {
        free(*(*(a1 + 24) + v4));
        ++v3;
        v4 += 80;
      }

      while (v3 < *(a1 + 16));
      v2 = *(a1 + 24);
    }

    free(v2);
  }

  free(*(a1 + 72));
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t controls_combo_enforce_copy_fork_boundary(uint64_t a1, void *a2)
{
  v3 = a2[11];
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v24 = a2[2];
    v25 = 8 * (v24 + 2);
    v8 = 8 * v24 + 16;
    v9 = -1;
    while (1)
    {
      v10 = a2[9];
      v11 = *&v10[v5];
      if (v11 >= 0)
      {
        v12 = *&v10[v5];
      }

      else
      {
        v12 = 0x8000000000000000 - v11;
      }

      v13 = *(a1 + 2072);
      v14 = v12 + v6;
      v15 = v13 - v6;
      if (v13 > v6 && v14 > v13)
      {
        v18 = v3 + 1;
        a2[11] = v18;
        if (v25 * v18 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_30;
        }

        v19 = realloc(v10, v25 * v18);
        if (!v19)
        {
          free(v10);
LABEL_30:
          a2[9] = 0;
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_combo_enforce_copy_fork_boundary", 88, 134, 0, "aaReallocf");
          return 0xFFFFFFFFLL;
        }

        a2[9] = v19;
        v20 = &v19[v5];
        memmove(&v19[v5 + v8], &v19[v5], v25 * (v9 + a2[11]));
        v21 = 0x8000000000000000 - v15;
        if (v15 >= 0)
        {
          v21 = v15;
        }

        *v20 = v21;
        if (v24 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          bzero(v20 + 1, 8 * v24 + 8);
        }

        v22 = v12 - v15;
        if ((v12 - v15) < 0)
        {
          v22 = 0x8000000000000000 - (v12 - v15);
        }

        *(v20 + v8) = v22;
        v3 = a2[11];
        v6 = v13;
      }

      else
      {
        v17 = *&v10[v5 + 8];
        if (v17 < 0)
        {
          v17 = 0x8000000000000000 - v17;
        }

        v6 = v14 + v17;
      }

      ++v7;
      v5 += v8;
      --v9;
      if (v7 >= v3)
      {
        goto LABEL_25;
      }
    }
  }

  v6 = 0;
LABEL_25:
  if (v6 != *(a1 + 2080))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_combo_enforce_copy_fork_boundary", 108, 134, 0, "SIZE MISMATCH");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t *AEADecryptToFileAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v27 = *MEMORY[0x29EDCA608];
  strcpy(v26, ".tmp_decrypt");
  memset(&v25, 0, sizeof(v25));
  v12 = malloc(0x898uLL);
  v13 = v12;
  if (v12)
  {
    memset_s(v12, 0x898uLL, 0, 0x898uLL);
    v14 = malloc(0x38uLL);
    v15 = v14;
    if (v14)
    {
      memset_s(v14, 0x38uLL, 0, 0x38uLL);
      *(v13 + 8) = a2;
      *(v13 + 16) = a3;
      *(v13 + 24) = a4;
      *(v13 + 2084) = -1;
      *(v13 + 2080) = a5 >> 62;
      if (pthread_mutex_init((v13 + 2136), 0))
      {
        v16 = "MutexInit";
        v17 = 290;
      }

      else if (strlen(a1) - 1012 > 0xFFFFFFFFFFFFFBFELL)
      {
        __strlcpy_chk();
        __strlcpy_chk();
        __strlcat_chk();
        v21 = stat((v13 + 32), &v25);
        if (v21 || (v25.st_mode & 0xF000) == 0x8000)
        {
          v22 = stat((v13 + 1056), &v25);
          if (v22 || (v25.st_mode & 0xF000) == 0x8000)
          {
            if (v22 | v21)
            {
              v23 = AEADecryptAsyncStreamOpen(v13, setupContext, verifySegment, processSegment_0, a5, a6);
              *v13 = v23;
              if (v23)
              {
                *v15 = v13;
                v15[1] = decryptToFileAsyncClose;
                v15[4] = decryptToFileAsyncCancel;
                v15[2] = decryptToFileAsyncGetRange;
                v15[3] = decryptToFileAsyncProcess;
                return v15;
              }

              v16 = "creating DecryptAsyncStream";
              v17 = 313;
            }

            else
            {
              v24 = (v13 + 32);
              v16 = "Both file and temp file exist: %s";
              v17 = 309;
            }
          }

          else
          {
            v24 = (v13 + 1056);
            v16 = "Temp file exists but is not a regular file: %s";
            v17 = 306;
          }
        }

        else
        {
          v24 = (v13 + 32);
          v16 = "File exists but is not a regular file: %s";
          v17 = 301;
        }
      }

      else
      {
        v24 = a1;
        v16 = "Filename is too long: %s";
        v17 = 293;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileAsyncStreamOpen", v17, 98, 0, v16, v24);
    }

    else
    {
      v19 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileAsyncStreamOpen", 281, 98, v19, "malloc");
    }
  }

  else
  {
    v18 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileAsyncStreamOpen", 279, 98, *v18, "malloc");
    v15 = 0;
  }

  decryptToFileAsyncClose(v13);
  free(v15);
  return 0;
}

uint64_t setupContext(uint64_t a1, AEAContext context)
{
  memset(&v14, 0, sizeof(v14));
  v4 = *(a1 + 16);
  if (v4 && (v4(*(a1 + 8), context) & 0x80000000) != 0)
  {
    v5 = "Client context callback returned an error";
    v6 = 58;
    goto LABEL_9;
  }

  if (!*(a1 + 2096))
  {
    result = 0;
    *(a1 + 2096) = 1;
    return result;
  }

  if ((*(a1 + 2084) & 0x80000000) == 0 || (*(a1 + 2088) & 0x80000000) == 0)
  {
    v5 = "Invalid state, file already open";
    v6 = 64;
LABEL_9:
    v8 = 0;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "setupContext", v6, 98, v8, v5, v13);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2104) = AEAContextGetFieldUInt(context, 0xDu);
  *(a1 + 2112) = AEAContextGetFieldUInt(context, 4u);
  if (!stat((a1 + 32), &v14) && (v14.st_mode & 0xF000) == 0x8000)
  {
    if (v14.st_size && v14.st_size != *(a1 + 2104))
    {
      v13 = a1 + 32;
      v5 = "Destination file exists and size doesn't match: %s";
      v6 = 77;
      goto LABEL_9;
    }

    rename((a1 + 32), (a1 + 1056), v9);
    if (v10)
    {
      v8 = *__error();
      v13 = a1 + 32;
      v5 = "rename: %s";
      v6 = 82;
      goto LABEL_10;
    }

    if (*(a1 + 2080))
    {
      fprintf(*MEMORY[0x29EDCA610], "Verifying file: %s\n", (a1 + 32));
    }
  }

  if (stat((a1 + 1056), &v14) || (v14.st_mode & 0xF000) != 0x8000)
  {
    *(a1 + 2088) = open((a1 + 1056), 1537, 420);
    *(a1 + 2092) = 1;
    v11 = *(a1 + 2084);
  }

  else
  {
    v11 = open((a1 + 1056), 0);
    *(a1 + 2084) = v11;
  }

  v12 = *(a1 + 2088);
  if (v11 < 0)
  {
    if (v12 < 0)
    {
      v8 = *__error();
      v13 = a1 + 1056;
      v5 = "open: %s";
      v6 = 98;
      goto LABEL_10;
    }
  }

  else if (v12 < 0)
  {
    return 0;
  }

  result = ftruncate(v12, *(a1 + 2104));
  if (result)
  {
    v8 = *__error();
    v13 = a1 + 1056;
    v5 = "truncate to final size: %s";
    v6 = 101;
    goto LABEL_10;
  }

  return result;
}

uint64_t verifySegment(uint64_t a1, size_t a2, uint64_t a3, int a4, const void *a5, size_t a6)
{
  v25 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 2092))
  {
    v9 = *(a1 + 2112);
    if (v9 < a2)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "verifySegment", 117, 98, 0, "Invalid segment size");
      return 0xFFFFFFFFLL;
    }

    v24 = 0;
    memset(v23, 0, sizeof(v23));
    if (v9 < 0x2000000001)
    {
      v10 = malloc(v9);
      if (v10)
      {
        v15 = 0;
        while (a2 > v15)
        {
          v16 = pread(*(a1 + 2084), v10 + v15, a2 - v15, v15 + a3);
          if (v16)
          {
            v17 = 0;
          }

          else
          {
            v17 = 5;
          }

          v15 += v16 & ~(v16 >> 63);
          if (v16 < 0)
          {
            v17 = 4;
          }

          if (v17)
          {
            if (v17 == 4)
            {
              goto LABEL_21;
            }

            break;
          }
        }

        if (v15 == a2)
        {
          v18 = aeaChecksum(v23, a4, v10, a2);
          v6 = 0;
          if (v18 < 0 || LODWORD(v23[0]) != a6)
          {
            goto LABEL_22;
          }

          if (!memcmp(v23 + 4, a5, a6))
          {
            atomic_fetch_add_explicit((a1 + 2128), a2, memory_order_relaxed);
            v21 = *(a1 + 24);
            if (v21 && ((v22 = *(a1 + 2104)) == 0 ? (v19.n128_u64[0] = 0) : (v19.n128_f32[0] = (*(a1 + 2128) * 100.0) / v22), (v21(*(a1 + 8), v19) & 0x80000000) != 0))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "verifySegment", 144, 98, 0, "Client progress callback reported an error");
              v6 = 0xFFFFFFFFLL;
            }

            else
            {
              if (*(a1 + 2080) >= 3u)
              {
                fprintf(*MEMORY[0x29EDCA610], "Segment verified: offset=%llu size=%zu\n", a3, a2);
              }

              v6 = 1;
            }

            goto LABEL_22;
          }
        }
      }

LABEL_21:
      v6 = 0;
    }

    else
    {
      v10 = 0;
      v6 = 0;
      *__error() = 12;
    }

LABEL_22:
    free(v10);
    return v6;
  }

  return 0;
}

uint64_t processSegment_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if ((*(a1 + 2088) & 0x80000000) != 0)
  {
    if (pthread_mutex_lock((a1 + 2136)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 165, 98, 0, "MutexInit");
      return 0xFFFFFFFFLL;
    }

    if ((*(a1 + 2088) & 0x80000000) != 0)
    {
      *(a1 + 2088) = open((a1 + 1056), 2);
    }

    if (pthread_mutex_unlock((a1 + 2136)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 167, 98, 0, "MutexUnlock");
      return 0xFFFFFFFFLL;
    }

    if ((*(a1 + 2088) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 168, 98, 0, "Can't reopen %s for writing");
      return 0xFFFFFFFFLL;
    }
  }

  v9 = 0;
  do
  {
    v10 = v9;
    if (a2 <= v9)
    {
      break;
    }

    v11 = pwrite(*(a1 + 2088), (a4 + v9), a2 - v9, v9 + a3);
    v9 = v11 + v10;
  }

  while (v11 > 0);
  if (a2 == v10)
  {
    atomic_fetch_add_explicit((a1 + 2128), a2, memory_order_relaxed);
    if (*(a1 + 2080) >= 3u)
    {
      fprintf(*MEMORY[0x29EDCA610], "Segment processed: offset=%llu size=%zu\n", a3, a2);
    }
  }

  else
  {
    atomic_fetch_add_explicit((a1 + 2120), a2, memory_order_relaxed);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 181, 98, 0, "Segment write failed: offset=%llu size=%zu\n", a3, a2);
  }

  v12 = *(a1 + 24);
  if (!v12)
  {
    return 0;
  }

  v13 = *(a1 + 2104);
  if (v13)
  {
    a5.n128_f32[0] = (*(a1 + 2128) * 100.0) / v13;
  }

  else
  {
    a5.n128_u64[0] = 0;
  }

  if ((v12(*(a1 + 8), a5) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 190, 98, 0, "Client progress callback reported an error", v15);
  return 0xFFFFFFFFLL;
}

uint64_t decryptToFileAsyncClose(char *a1)
{
  if (a1)
  {
    v2 = AAAsyncByteStreamClose(*a1);
    if ((v2 & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 207, 98, 0, "Async stream reported errors");
    }

    pthread_mutex_destroy((a1 + 2136));
    v3 = atomic_load(a1 + 266);
    v4 = atomic_load(a1 + 265);
    if (!v2)
    {
      if (v3 == *(a1 + 263) && v4 == 0)
      {
        v2 = 0;
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 216, 98, 0, "Some segments failed to process");
        v2 = 0xFFFFFFFFLL;
      }
    }

    v6 = *(a1 + 521);
    if (v6 < 0)
    {
      v8 = *(a1 + 522);
      if (v8 < 0)
      {
        if (v2)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }
    }

    else
    {
      close(v6);
      v8 = *(a1 + 522);
      if (v8 < 0)
      {
        if (!v2)
        {
LABEL_18:
          rename(a1 + 44, (a1 + 32), v7);
          if (v9)
          {
            v10 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 227, 98, *v10, "rename: %s", a1 + 32);
            v2 = 0xFFFFFFFFLL;
            goto LABEL_24;
          }

LABEL_21:
          if (*(a1 + 520) >= 2u)
          {
            fprintf(*MEMORY[0x29EDCA610], "Decrypted file: %s\n", a1 + 32);
          }

          v2 = 0;
        }

LABEL_24:
        free(a1);
        return v2;
      }
    }

    close(v8);
    if (!v2)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  return 0;
}

void *AEADecryptToFileChunkAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v12 = AEADecryptToFileAsyncStreamOpen(a1, a2, a3, a4, a7 | 0x200000000000000, a8);
  if (v12)
  {

    return aaCompositeChunkAsyncStreamOpen(v12, a5, a6, a7, a8);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileChunkAsyncStreamOpen", 349, 98, 0, "AEADecryptToFileAsyncStreamOpen");
    return 0;
  }
}

void *AATempStreamOpenWithDirectory(unint64_t a1, const char *a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x88uLL);
  v6 = v5;
  if (v5 && (memset_s(v5, 0x88uLL, 0, 0x88uLL), v4))
  {
    if (a2)
    {
      v7 = strlen(a2);
      v8 = v7 + 1;
      if (v7 + 1 < 0x2000000001)
      {
        v11 = malloc(v7 + 1);
        v9 = v11;
        if (v11)
        {
          memcpy(v11, a2, v8);
        }
      }

      else
      {
        v9 = 0;
        *__error() = 12;
      }
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 13) = v9;
    v12 = a1 >> 20;
    if (a1 == -1)
    {
      v12 = -1;
    }

    *(v6 + 1) = 0x100000;
    *(v6 + 2) = v12;
    if ((pthread_mutex_init((v6 + 40), 0) & 0x80000000) == 0)
    {
      *v4 = v6;
      v4[1] = tempStreamClose;
      v4[7] = tempStreamCancel;
      v4[2] = tempStreamRead;
      v4[4] = tempStreamPRead;
      v4[6] = tempStreamSeek;
      v4[3] = tempStreamWrite;
      v4[5] = tempStreamPWrite;
      v4[8] = tempStreamTruncate;
      return v4;
    }

    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "AATempStreamOpenWithDirectory", 326, 50, v14, "mutex init");
  }

  else
  {
    v10 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "AATempStreamOpenWithDirectory", 320, 50, v10, "malloc");
  }

  free(v6);
  free(v4);
  return 0;
}

uint64_t tempStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 128));
    AAByteStreamClose(*(result + 112));
    v3 = *(v1 + 32);
    if (v3)
    {
      if (*(v1 + 24))
      {
        v4 = 0;
        do
        {
          free(*(*(v1 + 32) + 8 * v4++));
        }

        while (v4 < *(v1 + 24));
        v3 = *(v1 + 32);
      }

      free(v3);
    }

    pthread_mutex_destroy((v1 + 40));
    free(*(v1 + 104));
    free(v1);
    if (v2)
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

ssize_t tempStreamRead(uint64_t a1, void *a2, size_t a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (*(a1 + 112))
  {
    return AAByteStreamRead(*(a1 + 112), a2, a3);
  }

  return tempStreamPRead(a1, a2, a3, atomic_fetch_add((a1 + 120), a3));
}

ssize_t tempStreamPRead(uint64_t a1, char *buf, size_t a3, off_t offset)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  v7 = offset;
  v8 = buf;
  v10 = *(a1 + 112);
  if (!v10)
  {
    if (((offset | a3) & 0x8000000000000000) == 0)
    {
      v11 = offset + a3;
      if (!__OFADD__(offset, a3))
      {
        if (*a1 <= offset)
        {
          return 0;
        }

        if (pthread_mutex_lock((a1 + 40)) < 0)
        {
          v20 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPRead", 120, 50, v20, "mutex lock");
        }

        else
        {
          if (v11 >= *a1)
          {
            v12 = *a1;
          }

          else
          {
            v12 = v11;
          }

          if (v12 <= v7)
          {
            v5 = 0;
          }

          else
          {
            v5 = 0;
            v13 = *(a1 + 8);
            v14 = v7 / v13;
            v15 = v7 / v13 * v13;
            v16 = v15 + v13;
            do
            {
              if (v16 >= v12)
              {
                v17 = v12;
              }

              else
              {
                v17 = v16;
              }

              memcpy(v8, (*(*(a1 + 32) + 8 * v14) + v7 - v15), v17 - v7);
              v8 += v17 - v7;
              v5 += v17 - v7;
              ++v14;
              v18 = *(a1 + 8);
              v15 += v18;
              v7 = v17;
              v19 = v16 >= v12;
              v16 += v18;
            }

            while (!v19);
          }

          if ((pthread_mutex_unlock((a1 + 40)) & 0x80000000) == 0)
          {
            return v5;
          }

          v21 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPRead", 148, 50, v21, "mutex unlock");
        }

        v22 = 0;
        atomic_compare_exchange_strong((a1 + 128), &v22, 1u);
      }
    }

    return -1;
  }

  return AAByteStreamPRead(v10, buf, a3, offset);
}

off_t tempStreamSeek(uint64_t a1, unint64_t a2, int a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (!*(a1 + 112))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 120), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *a1;
    }

    atomic_store(a2, (a1 + 120));
    return a2;
  }

  return AAByteStreamSeek(*(a1 + 112), a2, a3);
}

ssize_t tempStreamWrite(uint64_t a1, void *a2, size_t a3)
{
  if (atomic_load((a1 + 128)))
  {
    return -1;
  }

  if (*(a1 + 112))
  {
    return AAByteStreamWrite(*(a1 + 112), a2, a3);
  }

  return tempStreamPWrite(a1, a2, a3, atomic_fetch_add((a1 + 120), a3));
}

ssize_t tempStreamPWrite(size_t *a1, char *buf, size_t nbyte, off_t offset)
{
  if (atomic_load(a1 + 32))
  {
    return -1;
  }

  v7 = offset;
  v9 = buf;
  v11 = a1[14];
  if (!v11)
  {
    if (((offset | nbyte) & 0x8000000000000000) != 0)
    {
      return -1;
    }

    v12 = offset + nbyte;
    if (__OFADD__(offset, nbyte))
    {
      return -1;
    }

    if (pthread_mutex_lock((a1 + 5)) < 0)
    {
      v17 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", 164, 50, v17, "mutex lock");
LABEL_38:
      v27 = 0;
      atomic_compare_exchange_strong(a1 + 32, &v27, 1u);
      return -1;
    }

    if (v12 <= *a1)
    {
      v13 = *a1;
    }

    else
    {
      v13 = v7 + nbyte;
    }

    if ((resizeStream(a1, v13) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", 170, 50, 0, "resizing stream");
    }

    else
    {
      v14 = a1[14];
      if (!v14)
      {
        if (v12 <= v7)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0;
          v18 = a1[1];
          v19 = v7 / v18;
          v20 = v7 / v18 * v18;
          v21 = v20 + v18;
          do
          {
            if (v21 >= v12)
            {
              v22 = v12;
            }

            else
            {
              v22 = v21;
            }

            memcpy((*(a1[4] + 8 * v19) + v7 - v20), v9, v22 - v7);
            v9 += v22 - v7;
            v5 += v22 - v7;
            ++v19;
            v23 = a1[1];
            v20 += v23;
            v7 = v22;
            v24 = v21 >= v12;
            v21 += v23;
          }

          while (!v24);
        }

        v16 = 0;
        v25 = *a1;
        if (v12 > *a1)
        {
          v25 = v12;
        }

        *a1 = v25;
LABEL_34:
        if (pthread_mutex_unlock((a1 + 5)) < 0)
        {
          v26 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", 209, 50, v26, "mutex unlock");
        }

        else if (!v16)
        {
          return v5;
        }

        goto LABEL_38;
      }

      v15 = AAByteStreamPWrite(v14, v9, nbyte, v7);
      if ((v15 & 0x8000000000000000) == 0)
      {
        v5 = v15;
        v16 = 0;
        goto LABEL_34;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamPWrite", 176, 50, 0, "temp file write");
    }

    v5 = 0;
    v16 = 1;
    goto LABEL_34;
  }

  return AAByteStreamPWrite(v11, buf, nbyte, offset);
}

uint64_t tempStreamTruncate(uint64_t a1, uint64_t a2)
{
  if (atomic_load((a1 + 128)))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 112);
  if (v6)
  {

    return AAByteStreamTruncate(v6);
  }

  if (a2 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 271, 50, 0, "invalid length");
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 40)) < 0)
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 272, 50, *v8, "mutex lock");
    v9 = 0;
    atomic_compare_exchange_strong((a1 + 128), &v9, 1u);
    return 0xFFFFFFFFLL;
  }

  if ((resizeStream(a1, a2) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 274, 50, 0, "resize stream");
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  if (pthread_mutex_unlock((a1 + 40)) < 0)
  {
    v10 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "tempStreamTruncate", 276, 50, *v10, "mutex lock");
    v11 = 0;
    v7 = 0;
    atomic_compare_exchange_strong((a1 + 128), &v11, 1u);
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t resizeStream(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112))
  {
    v2 = "invalid state";
    v3 = 64;
LABEL_3:
    v4 = 0;
LABEL_4:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "resizeStream", v3, 50, v4, v2, v32);
    return 0xFFFFFFFFLL;
  }

  if (*a1 >= a2)
  {
    goto LABEL_51;
  }

  v8 = *(a1 + 8);
  if (__OFADD__(a2, v8))
  {
    v32 = a2;
    v2 = "new size out of range: %zu";
    v3 = 70;
    goto LABEL_3;
  }

  v9 = (a2 + v8 - 1) / v8;
  if (v9 <= *(a1 + 16))
  {
    v24 = *(a1 + 24);
    while (v24 < v9)
    {
      if (v24)
      {
        v24 *= 2;
      }

      else
      {
        v24 = 32;
      }
    }

    if (8 * v24 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_54:
      *(a1 + 32) = 0;
      v4 = *__error();
      v2 = "malloc";
      v3 = 89;
      goto LABEL_4;
    }

    v25 = *(a1 + 32);
    v26 = realloc(v25, 8 * v24);
    if (!v26)
    {
      free(v25);
      goto LABEL_54;
    }

    *(a1 + 32) = v26;
    memset_s(&v26[8 * *(a1 + 24)], 8 * (v24 - *(a1 + 24)), 0, 8 * (v24 - *(a1 + 24)));
    *(a1 + 24) = v24;
    v27 = v9 - 1;
    while (v27 != -1 && !*(*(a1 + 32) + 8 * v27))
    {
      v28 = *(a1 + 8);
      if (v28 < 0x2000000001)
      {
        v30 = malloc(*(a1 + 8));
        v29 = v30;
        if (v30)
        {
          memset_s(v30, v28, 0, v28);
        }
      }

      else
      {
        v29 = 0;
        *__error() = 12;
      }

      *(*(a1 + 32) + 8 * v27) = v29;
      if (!*(*(a1 + 32) + 8 * v27--))
      {
        v4 = *__error();
        v2 = "malloc";
        v3 = 99;
        goto LABEL_4;
      }
    }

LABEL_51:
    result = 0;
    *a1 = a2;
    return result;
  }

  v10 = AATempFileStreamOpenWithDirectory(*(a1 + 104));
  *(a1 + 112) = v10;
  if (!v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "offloadToFile", 36, 50, 0, "AATempFileStreamOpen");
LABEL_57:
    v2 = "offload to file";
    v3 = 76;
    goto LABEL_3;
  }

  v11 = (a1 + 24);
  if (*(a1 + 24))
  {
    v12 = 0;
    v13 = 0;
    while (*a1 > v13)
    {
      if (*(a1 + 8) >= *a1 - v13)
      {
        v14 = *a1 - v13;
      }

      else
      {
        v14 = *(a1 + 8);
      }

      v15 = *(a1 + 112);
      if (*(v15 + 24))
      {
        v16 = 0;
        if (v14)
        {
          v17 = *(*(a1 + 32) + 8 * v12);
          v18 = v14;
          while (1)
          {
            v19 = (*(v15 + 24))(*v15, v17, v18);
            if (v19 < 1)
            {
              break;
            }

            v17 += v19;
            v16 += v19;
            v18 -= v19;
            if (!v18)
            {
              goto LABEL_26;
            }
          }

          v16 = v19;
        }
      }

      else
      {
        v16 = -1;
      }

LABEL_26:
      if (v16 != v14)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AATempStream.c", "offloadToFile", 43, 50, 0, "writing data to temp file");
        goto LABEL_57;
      }

      v13 += v14;
      if (++v12 >= *v11)
      {
        if (!*v11)
        {
          goto LABEL_31;
        }

        break;
      }
    }

    v20 = 0;
    do
    {
      free(*(*(a1 + 32) + 8 * v20++));
    }

    while (v20 < *(a1 + 24));
  }

LABEL_31:
  free(*(a1 + 32));
  *v11 = 0;
  *(a1 + 32) = 0;
  if ((AAByteStreamTruncate(*(a1 + 112)) & 0x80000000) != 0)
  {
    v2 = "truncate temp file";
    v3 = 78;
    goto LABEL_3;
  }

  v21 = *(a1 + 112);
  v22 = atomic_load((a1 + 120));
  v23 = AAByteStreamSeek(v21, v22, 0);
  result = 0;
  if (v23 < 0)
  {
    v2 = "seek temp file";
    v3 = 80;
    goto LABEL_3;
  }

  return result;
}

uint64_t bxdiff5Free(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = *(a1 + 24);
      if (*(v5 + v2))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 40, 54, 0, "in[%zu] is not NULL", v3);
        v4 = 0;
        v5 = *(a1 + 24);
      }

      if (*(v5 + v2 + 64))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 41, 54, 0, "inPatch[%zu] is not NULL", v3);
        v4 = 0;
        v5 = *(a1 + 24);
      }

      if (*(v5 + v2 + 40))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 42, 54, 0, "inControls[%zu] is not NULL", v3);
        v4 = 0;
      }

      ++v3;
      v2 += 80;
    }

    while (v3 < *(a1 + 16));
  }

  else
  {
    v4 = 1;
  }

  if (*(a1 + 32))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 44, 54, 0, "out is not NULL");
    v4 = 0;
  }

  if (*(a1 + 72))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 45, 54, 0, "comboControls is not NULL");
    v4 = 0;
  }

  if (*(a1 + 96))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5Free", 46, 54, 0, "comboPatch is not NULL");
    v4 = 0;
  }

  free(*(a1 + 24));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *a1 = 0uLL;
  return result;
}

uint64_t bxdiff5Dump(uint64_t a1, FILE *a2)
{
  if (*(a1 + 16))
  {
    v4 = 0;
    v5 = (*(a1 + 24) + 36);
    v6 = *(a1 + 16);
    do
    {
      v7 = *v5;
      v5 += 20;
      if (v7)
      {
        ++v4;
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  fprintf(a2, "BXDiff5Data: n=%zu, nUnique=%zu\n", *(a1 + 16), v4);
  if (*(a1 + 16))
  {
    v8 = 0;
    v9 = 0;
    v10 = 16;
    do
    {
      fprintf(a2, "- input %zu\n", v9);
      v11 = (*(a1 + 24) + 80 * v9);
      if (*v11)
      {
        fprintf(a2, "    in set, inSize=%zu, inSHA1=", v11[1]);
        v12 = 20;
        v13 = v10;
        do
        {
          fprintf(a2, "%02x", *(*(a1 + 24) + v13++));
          --v12;
        }

        while (v12);
        v14 = "unique";
        if (!*(*(a1 + 24) + 80 * v9 + 36))
        {
          v14 = "non unique";
        }

        fprintf(a2, ", %s", v14);
        fputc(10, a2);
      }

      else
      {
        fwrite("    in is NULL\n", 0xFuLL, 1uLL, a2);
      }

      v15 = *(a1 + 24) + 80 * v9;
      if (*(v15 + 40))
      {
        v16 = 3 * *(v15 + 56);
        fprintf(a2, "    inControls set, nControls=%zu, inPlace=%d (%zu MB)\n", *(v15 + 56), *(v15 + 48), (v16 >> 17) & 0xFFFFFFFFFFFLL);
        v8 += 8 * v16;
      }

      else
      {
        fwrite("    inControls is NULL\n", 0x17uLL, 1uLL, a2);
      }

      v17 = *(a1 + 24) + 80 * v9;
      if (*(v17 + 64))
      {
        v18 = *(v17 + 72);
        fprintf(a2, "    inPatch set, inPatchSize=%zu (%zu MB)\n", v18, v18 >> 20);
        v8 += v18;
      }

      else
      {
        fwrite("    inPatch is NULL\n", 0x14uLL, 1uLL, a2);
      }

      ++v9;
      v10 += 80;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    v8 = 0;
  }

  fwrite("- output\n", 9uLL, 1uLL, a2);
  if (*(a1 + 32))
  {
    fprintf(a2, "    out set, outSize=%zu, outSHA1=", *(a1 + 40));
    for (i = 0; i != 20; ++i)
    {
      fprintf(a2, "%02x", *(a1 + 48 + i));
    }

    fputc(10, a2);
  }

  else
  {
    fwrite("    out is NULL\n", 0x10uLL, 1uLL, a2);
  }

  if (*(a1 + 72))
  {
    v20 = (8 * v4 + 16) * *(a1 + 88);
    fprintf(a2, "    comboControls set, nControls=%zu, inPlace=%d (%zu MB)\n", *(a1 + 88), *(a1 + 80), v20 >> 20);
    v8 += v20;
  }

  else
  {
    fwrite("    comboControls is NULL\n", 0x1AuLL, 1uLL, a2);
  }

  if (*(a1 + 96))
  {
    v21 = *(a1 + 104);
    fprintf(a2, "    comboPatch set, comboPatchSize=%zu (%zu MB)\n", v21, v21 >> 20);
    v8 += v21;
  }

  else
  {
    fwrite("    comboPatch is NULL\n", 0x17uLL, 1uLL, a2);
  }

  fprintf(a2, "Total size %zu MB\n", v8 >> 20);
  return 0;
}

uint64_t bxdiff5SetIn(void *a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (a1[2] <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetIn", 122, 54, 0, "invalid I=%zu");
    return 0xFFFFFFFFLL;
  }

  if (!a3 || !a4)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetIn", 123, 54, 0, "invalid in,inSize");
    return 0xFFFFFFFFLL;
  }

  if (!a1[4])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetIn", 124, 54, 0, "missing out");
    return 0xFFFFFFFFLL;
  }

  v6 = a1[3] + 80 * a2;
  *v6 = a3;
  *(v6 + 8) = a4;
  getBufferSHA1Digest(a3, a4, (v6 + 16));
  v7 = a1[2];
  v8 = a1[3];
  *(v8 + 80 * a2 + 36) = 1;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (a2 != v10)
      {
        v11 = a1[3];
        if (*(v11 + v9))
        {
          if (!sha1cmp(v11 + 80 * a2 + 16, v11 + v9 + 16))
          {
            v8 = a1[3];
            *(v8 + 80 * a2 + 36) = 0;
            break;
          }

          v7 = a1[2];
        }
      }

      ++v10;
      v9 += 80;
      if (v10 >= v7)
      {
        v8 = a1[3];
        break;
      }
    }
  }

  result = sha1cmp(v8 + 80 * a2 + 16, (a1 + 6));
  if (result)
  {
    return 0;
  }

  *(a1[3] + 80 * a2 + 36) = 0;
  return result;
}

uint64_t bxdiff5SetOut(uint64_t a1, char *a2, unint64_t a3)
{
  if (a2 && a3)
  {
    *(a1 + 32) = a2;
    *(a1 + 40) = a3;
    getBufferSHA1Digest(a2, a3, (a1 + 48));
    return 0;
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5SetOut", 155, 54, 0, "invalid out,outSize");
    return 0xFFFFFFFFLL;
  }
}

uint64_t bxdiff5CreateInControls(uint64_t a1, unint64_t a2, int a3)
{
  if (*(a1 + 16) <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 247, 54, 0, "invalid input index");
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 24) + 80 * a2;
  v6 = (v5 + 40);
  if (*(v5 + 40))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 248, 54, 0, "input controls already present");
    return 0xFFFFFFFFLL;
  }

  v8 = *v5;
  if (!*v5 || (v9 = *(v5 + 8)) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 249, 54, 0, "input is missing or invalid");
    return 0xFFFFFFFFLL;
  }

  if (!*(v5 + 36))
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v5 + 56);
  if (!(v9 >> 28) || v12 >> 28 == 0)
  {
    if ((getBXDiffControls(v8, v9, v11, v12, v6, v13, a1) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 270, 54, 0, "generic controls");
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    LargeFileControls = GetLargeFileControls(v8, v9, v11, v12, v6, v13, a1);
    if (LargeFileControls < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 262, 54, 0, "largefile controls");
      return 0xFFFFFFFFLL;
    }
  }

  if (!a3)
  {
    return 0;
  }

  if ((forceInPlaceControls(*(*(a1 + 24) + 80 * a2 + 8), *(a1 + 40), *(*(a1 + 24) + 80 * a2 + 40), *(*(a1 + 24) + 80 * a2 + 56), *(a1 + 4)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateInControls", 278, 54, 0, "forceInPlaceControls");
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(*(a1 + 24) + 80 * a2 + 48) = 1;
  return result;
}

uint64_t bxdiff5CreateComboControls(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_7;
  }

  v3 = 0;
  v4 = (*(a1 + 24) + 36);
  v5 = *(a1 + 16);
  do
  {
    v6 = *v4;
    v4 += 20;
    if (v6)
    {
      ++v3;
    }

    --v5;
  }

  while (v5);
  if (v3 <= 1)
  {
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 289, 54, 0, "creating combo controls requires 2 or more unique inputs");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 80) = 1;
  v9 = calloc(v1, 0x18uLL);
  if (!v9)
  {
    v17 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 300, 54, v17, "malloc");
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  v11 = v9;
  v12 = v1;
  do
  {
    initDiffSegmentVector(v11);
    v11 += 3;
    --v12;
  }

  while (v12);
  v13 = 0;
  v14 = 0;
  v15 = *(a1 + 24);
  do
  {
    if (*(v15 + v13 + 36))
    {
      v16 = *(v15 + v13 + 40);
      if (!v16)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 309, 54, 0, "missing controls for input %zu");
        goto LABEL_29;
      }

      if ((pushControls(&v10[3 * v14], v16, *(v15 + v13 + 56), 0, 0) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 312, 54, 0, "pushControls");
        goto LABEL_29;
      }

      v15 = *(a1 + 24);
      if (!*(v15 + v13 + 48))
      {
        *(a1 + 80) = 0;
      }

      ++v14;
    }

    ++v12;
    v13 += 80;
  }

  while (v1 != v12);
  if ((mergeDiffSegmentVectors(v14, v10) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 321, 54, 0, "mergeDiffSegmentVectors");
  }

  else
  {
    if ((getComboControlsFromMergedDiffSegmentVectors(v14, v10, (a1 + 72), (a1 + 88)) & 0x80000000) == 0)
    {
      v7 = 0;
      goto LABEL_30;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboControls", 324, 54, 0, "getComboControlsFromMergedDiffSegmentVectors");
  }

LABEL_29:
  v7 = 0xFFFFFFFFLL;
LABEL_30:
  v18 = v10;
  do
  {
    BlobBufferFree(v18);
    v18 += 24;
    --v1;
  }

  while (v1);
  free(v10);
  return v7;
}

uint64_t bxdiff5CreatePatchBackend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t __size, uint64_t a7, int64x2_t *a8, uint64_t a9, void *a10, size_t *a11, int a12, int a13, unsigned int a14)
{
  v19 = a10;
  v18 = a11;
  v20 = malloc(__size);
  v21 = v20;
  if (!v20)
  {
    v29 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 447, 54, v29, "malloc");
LABEL_48:
    v34 = 0;
LABEL_69:
    free(v21);
    free(v34);
    v75 = 0;
    v74 = 0;
    v76 = 0xFFFFFFFFLL;
    goto LABEL_70;
  }

  v22 = a13;
  v23 = a9;
  v24 = a1 + 2;
  if (a9)
  {
    v25 = 0uLL;
    v26 = vnegq_f64(0);
    v27 = a8;
    v28 = a9;
    do
    {
      v25 = vaddq_s64(vbslq_s8(vcltzq_s64(*v27), vsubq_s64(v26, *v27), *v27), v25);
      v27 = (v27 + 8 * a1 + 16);
      --v28;
    }

    while (v28);
  }

  else
  {
    v25 = 0uLL;
  }

  __dst = v20;
  if (a13 > 1)
  {
    v82 = v25;
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 backend, out: %zu B, diff: %zu B, lit: %zu B, ctrl: %zu B\n", __size, v25.u64[0], v25.u64[1], 8 * (a1 + 2) * a9);
    v25 = v82;
    v22 = a13;
    v24 = a1 + 2;
    v18 = a11;
    v19 = a10;
    v21 = __dst;
  }

  if (vaddvq_s64(v25) != __size)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 458, 54, 0, "size inconsistency: diff + archive != out");
    goto LABEL_48;
  }

  v78 = v24;
  v83 = v19;
  v80 = v18;
  v30 = v22;
  v31 = 28 * a1 + lzma_stream_buffer_bound() * a1;
  v32 = v31 + lzma_stream_buffer_bound() + 60;
  v81 = v30;
  if (v30 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch allocated: %zu B\n", v32);
  }

  v33 = malloc(v32);
  v34 = v33;
  if (!v33)
  {
    v62 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 469, 54, *v62, "malloc");
    v18 = v80;
LABEL_50:
    v19 = v83;
    goto LABEL_52;
  }

  *(v33 + 44) = 0u;
  v33[1] = 0u;
  v33[2] = 0u;
  *v33 = 0u;
  v79 = v33 + 60;
  bzero(v33 + 60, 28 * a1);
  *v34 = 0x3035464649445842;
  v34[2] = __size;
  *(v34 + 5) = *a7;
  *(v34 + 14) = *(a7 + 16);
  *(v34 + 2) = a1;
  *(v34 + 3) = a12 != 0;
  if (a1)
  {
    v35 = v34 + 68;
    v36 = a1;
    do
    {
      *v35 = *a4;
      *(v35 + 4) = *(a4 + 16);
      a4 += 20;
      v35 += 28;
      --v36;
    }

    while (v36);
  }

  v37 = v34 + v32;
  v38 = &v79[28 * a1];
  if (v30 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch headers: %zu B\n", v38 - v34);
  }

  v18 = v80;
  v39 = plzmaEncodeBuffer(v38, &v37[-v38], a8, 8 * (a1 + 2) * a9, a14);
  if (v39 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 499, 54, 0, "Payload compression");
LABEL_52:
    v21 = __dst;
    goto LABEL_69;
  }

  v40 = v38 + v39;
  v34[3] = v39;
  if (v81 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch control payload: %zu B\n", v39);
  }

  v21 = __dst;
  if (a1)
  {
    v41 = 0;
    v42 = a5;
    while (!a9)
    {
      v46 = v21;
LABEL_42:
      v60 = plzmaEncodeBuffer(v40, &v37[-v40], v21, v46 - v21, a14);
      if (v60 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 530, 54, 0, "Payload compression");
        goto LABEL_50;
      }

      v61 = v60;
      *&v79[28 * v41] = v60;
      if (v81 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch diff[%zu] payload: %zu B\n", v41, v60);
      }

      v40 += v61;
      ++v41;
      v21 = __dst;
      v42 = a5;
      if (v41 == a1)
      {
        goto LABEL_55;
      }
    }

    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v21;
    while (1)
    {
      v47 = &a8->i64[v43 * v78];
      v48 = *v47;
      v49 = v47[1];
      if (*v47 < 0)
      {
        v48 = 0x8000000000000000 - *v47;
      }

      if (v49 < 0)
      {
        v49 = 0x8000000000000000 - v49;
      }

      v50 = v47[v41 + 2];
      if (v50 < 0)
      {
        v50 = 0x8000000000000000 - v50;
      }

      if (v44 < 0)
      {
        break;
      }

      v51 = v48 + v44;
      if (v48 + v44 > __size)
      {
        break;
      }

      if (v45 < 0 || (v52 = v48 + v45, v48 + v45 > *(a3 + 8 * v41)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 519, 54, 0, "in[%zu] access out of range");
        goto LABEL_68;
      }

      if (v48 >= 1)
      {
        v53 = (v42 + v44);
        v54 = (*(a2 + 8 * v41) + v45);
        v55 = v46;
        v56 = v48;
        do
        {
          v58 = *v53++;
          v57 = v58;
          v59 = *v54++;
          *v55++ = v57 - v59;
          --v56;
        }

        while (v56);
      }

      v46 += v48;
      v44 = v51 + v49;
      v45 = v52 + v50;
      if (++v43 == a9)
      {
        goto LABEL_42;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 518, 54, 0, "out access out of range");
    goto LABEL_68;
  }

  v42 = a5;
LABEL_55:
  if (a9)
  {
    v63 = 0;
    v64 = &a8->i64[1];
    v65 = 8 * a1 + 16;
    v21 = __dst;
    do
    {
      v66 = *(v64 - 1);
      v67 = *v64;
      if (v66 < 0)
      {
        v66 = 0x8000000000000000 - v66;
      }

      if (v67 >= 0)
      {
        v68 = *v64;
      }

      else
      {
        v68 = 0x8000000000000000 - v67;
      }

      v69 = v66 + v63;
      memcpy(v21, (v42 + v66 + v63), v68);
      v42 = a5;
      v21 += v68;
      v63 = v69 + v68;
      v64 = (v64 + v65);
      --v23;
    }

    while (v23);
  }

  v70 = v21 - __dst;
  v21 = __dst;
  v71 = plzmaEncodeBuffer(v40, &v37[-v40], __dst, v70, a14);
  if (v71 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreatePatchBackend", 554, 54, 0, "Payload compression");
    v18 = v80;
LABEL_68:
    v19 = v83;
    goto LABEL_69;
  }

  v72 = v40 + v71;
  v34[4] = v71;
  v18 = v80;
  v19 = v83;
  if (v81 <= 1)
  {
    v74 = v72 - v34;
  }

  else
  {
    v73 = MEMORY[0x29EDCA610];
    fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch archive payload: %zu B\n", v71);
    v74 = v72 - v34;
    fprintf(*v73, "BXDiff5 patch total size: %zu B\n", v72 - v34);
  }

  free(__dst);
  v75 = reallocToFit(v34, v74);
  v76 = 0;
LABEL_70:
  *v19 = v75;
  *v18 = v74;
  return v76;
}

uint64_t bxdiff5CreateComboPatch(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = (*(a1 + 24) + 36);
      do
      {
        v5 = *v4;
        v4 += 20;
        if (v5)
        {
          ++v3;
        }

        --v2;
      }

      while (v2);
    }

    else
    {
      v3 = 0;
    }

    v7 = calloc(v3, 8uLL);
    v8 = calloc(v3, 8uLL);
    v9 = calloc(v3, 0x14uLL);
    v10 = v9;
    if (v7)
    {
      v11 = v8 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || v9 == 0)
    {
      v13 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboPatch", 609, 54, *v13, "malloc");
      PatchBackend = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *(a1 + 24);
          if (*(v18 + v15 + 36))
          {
            v7[v17] = *(v18 + v15);
            v19 = *(a1 + 24) + v15;
            v8[v17] = *(v19 + 8);
            v20 = &v9[20 * v17];
            v21 = *(v19 + 16);
            *(v20 + 4) = *(v19 + 32);
            *v20 = v21;
            ++v17;
            v14 = *(a1 + 16);
          }

          ++v16;
          v15 += 80;
        }

        while (v16 < v14);
      }

      PatchBackend = bxdiff5CreatePatchBackend(v3, v7, v8, v9, *(a1 + 32), *(a1 + 40), a1 + 48, *(a1 + 72), *(a1 + 88), (a1 + 96), (a1 + 104), *(a1 + 80), *(a1 + 4), *(a1 + 8));
    }

    free(v7);
    free(v8);
    free(v10);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateComboPatch", 600, 54, 0, "missing combo controls");
    return 0xFFFFFFFFLL;
  }

  return PatchBackend;
}

uint64_t BXDiff5WithIndividualPatches(uint64_t a1, void **a2, void *a3, void *a4, void *a5)
{
  v74 = *MEMORY[0x29EDCA608];
  if (HIDWORD(*a1))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 645, 54, 0, "Invalid number of inputs: %zu", *a1);
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 48);
  enterThreadErrorContext();
  v12 = *a1;
  v13 = *(a1 + 52);
  if (a4)
  {
    v14 = a5 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = *(a1 + 40);
  v17 = *(a1 + 44);
  v69 = 0u;
  memset(v70, 0, sizeof(v70));
  *v71 = 0u;
  v72 = 0u;
  v73 = 0;
  v68 = v12;
  v66 = __PAIR64__(v13, v16);
  v67 = v17;
  if (v12)
  {
    *&v69 = calloc(v12, 0x50uLL);
    *a2 = 0;
    *a3 = 0;
    if (a4)
    {
      bzero(a4, 8 * v12);
    }

    if (a5)
    {
      bzero(a5, 8 * v12);
    }
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
  }

  if (bxdiff5SetOut(&v66, *(a1 + 24), *(a1 + 32)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 672, 54, 0, "bxdiff5SetOut");
    goto LABEL_17;
  }

  if (!v12)
  {
LABEL_27:
    v23 = v68;
    if (v68)
    {
      v24 = 0;
      v25 = (v69 + 36);
      do
      {
        v26 = *v25;
        v25 += 20;
        if (v26)
        {
          ++v24;
        }

        --v23;
      }

      while (v23);
      if (!v24)
      {
        *(v69 + 36) = 1;
      }
    }

    if (v13 >= 2)
    {
      bxdiff5Dump(&v66, *MEMORY[0x29EDCA610]);
    }

    if (!v12)
    {
      v35 = *(&v69 + 1);
      v36 = *&v70[0];
      v37 = HIDWORD(v66);
      v38 = v67;
      v39 = lzma_stream_buffer_bound();
      v40 = v39 + 60;
      if (v37 >= 1)
      {
        fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch capacity: %zu B\n", v40);
      }

      v41 = malloc(v40);
      v42 = v41;
      if (v41)
      {
        *v41 = 0u;
        *(v41 + 1) = 0u;
        *(v41 + 44) = 0u;
        *(v41 + 2) = 0u;
        *v41 = 0x3035464649445842;
        *(v41 + 1) = 0;
        *(v41 + 2) = v36;
        *(v41 + 40) = *(v70 + 8);
        *(v41 + 14) = DWORD2(v70[1]);
        v43 = plzmaEncodeBuffer((v41 + 60), v39, v35, v36, v38);
        if ((v43 & 0x8000000000000000) == 0)
        {
          v44 = a3;
          v45 = v42 + v43 + 60;
          v42[4] = v43;
          if (v37 >= 1)
          {
            fprintf(*MEMORY[0x29EDCA610], "BXDiff5 patch archive payload size: %zu B\n", v43);
          }

          v18 = 0;
          *a2 = reallocToFit(v42, v45 - v42);
          *v44 = v45 - v42;
          goto LABEL_20;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateFullReplacementBackend", 406, 54, 0, "Payload compression");
      }

      else
      {
        v52 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "bxdiff5CreateFullReplacementBackend", 386, 54, *v52, "malloc patch");
      }

      free(v42);
      *a2 = 0;
      *a3 = 0;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 689, 54, 0, "bxdiff5CreateFullReplacementBackend");
      v18 = -1;
      goto LABEL_20;
    }

    v65 = v13;
    v27 = v68;
    if (v68)
    {
      v28 = 0;
      v29 = (v69 + 36);
      do
      {
        v30 = *v29;
        v29 += 20;
        if (v30)
        {
          ++v28;
        }

        --v27;
      }

      while (v27);
      if (v28 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = v15;
      }

      if (v28 == 1)
      {
        v32 = 0;
        v33 = (v69 + 36);
        while (1)
        {
          v34 = *v33;
          v33 += 20;
          if (v34)
          {
            break;
          }

          if (v12 == ++v32)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 699, 54, 0, "could not find unique input");
            goto LABEL_88;
          }
        }

        v63 = a2;
        v64 = a3;
        v46 = 1;
        v15 = v31;
        v28 = 1;
LABEL_61:
        v47 = 0;
        v48 = 36;
        do
        {
          if (*(v69 + v48))
          {
            if (bxdiff5CreateInControls(&v66, v47, v11 & 2))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 710, 54, 0, "bxdiff5CreateInControls");
              goto LABEL_17;
            }

            v49 = v32 == v47 ? v46 : 0;
            if ((v15 || v49) && bxdiff5CreateInPatch(&v66, v47))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 718, 54, 0, "bxdiff5CreateInPatch");
              goto LABEL_17;
            }
          }

          ++v47;
          v48 += 80;
        }

        while (v12 != v47);
        if (v65 >= 2)
        {
          bxdiff5Dump(&v66, *MEMORY[0x29EDCA610]);
        }

        v51 = v63;
        v50 = v64;
        if (v28 >= 2)
        {
          if (bxdiff5CreateComboControls(&v66))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 730, 54, 0, "bxdiff5CreateComboControls");
            goto LABEL_88;
          }

          v53 = 0;
          v54 = v69;
          v55 = v12;
          do
          {
            free(*(v54 + v53 + 40));
            v54 = v69;
            v56 = v69 + v53;
            *(v56 + 40) = 0;
            *(v56 + 56) = 0;
            v53 += 80;
            --v55;
          }

          while (v55);
          v50 = v64;
          if (v65 > 1)
          {
            bxdiff5Dump(&v66, *MEMORY[0x29EDCA610]);
          }

          v51 = v63;
          if (bxdiff5CreateComboPatch(&v66))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 747, 54, 0, "bxdiff5CreateComboPatch");
LABEL_88:
            v18 = -1;
            goto LABEL_18;
          }
        }

        if (v65 >= 2)
        {
          bxdiff5Dump(&v66, *MEMORY[0x29EDCA610]);
        }

        if (v28 >= 2)
        {
          v57 = v73;
          *v51 = *(&v72 + 1);
          *v50 = v57;
          *(&v72 + 1) = 0;
          v73 = 0;
          if (!v15)
          {
            goto LABEL_97;
          }

          v58 = (v69 + 64);
          v59 = v12;
          do
          {
            v60 = v58[1];
            *a4++ = *v58;
            *a5++ = v60;
            *v58 = 0;
            v58[1] = 0;
            v58 += 10;
            --v59;
          }

          while (v59);
        }

        if (v28 == 1)
        {
          v18 = 0;
          v61 = v69 + 80 * v32;
          v62 = *(v61 + 72);
          *v51 = *(v61 + 64);
          *v50 = v62;
          *(v61 + 64) = 0;
          *(v61 + 72) = 0;
          goto LABEL_18;
        }

LABEL_97:
        v18 = 0;
LABEL_18:
        v19 = 0;
        v20 = v69;
        do
        {
          v21 = v20 + v19;
          *v21 = 0;
          free(*(v21 + 40));
          v20 = v69;
          *(v69 + v19 + 40) = 0;
          v19 += 80;
          --v12;
        }

        while (v12);
        goto LABEL_20;
      }

      v63 = a2;
      v64 = a3;
      v46 = 0;
    }

    else
    {
      v63 = a2;
      v64 = a3;
      v46 = 0;
      v28 = 0;
    }

    v32 = -1;
    goto LABEL_61;
  }

  v22 = 0;
  while (!bxdiff5SetIn(&v66, v22, *(*(a1 + 8) + 8 * v22), *(*(a1 + 16) + 8 * v22)))
  {
    if (v12 == ++v22)
    {
      goto LABEL_27;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "BXDiff5WithIndividualPatches", 675, 54, 0, "bxdiff5SetIn");
LABEL_17:
  v18 = -1;
  if (v12)
  {
    goto LABEL_18;
  }

LABEL_20:
  *(&v69 + 1) = 0;
  free(v71[0]);
  v71[0] = 0;
  bxdiff5Free(&v66);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v18;
  }

  else
  {
    return result;
  }
}

uint64_t plzmaEncodeBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = IMemStreamCreate(a3, a4);
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "plzmaEncodeBuffer", 348, 54, 0, "is", v14, v15, v16, v17, v18);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = OMemStreamCreate(a1, a2);
  v10 = v9;
  if (!v9)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "plzmaEncodeBuffer", 349, 54, 0, "os", v14, v15, v16, v17, v18);
    goto LABEL_7;
  }

  *(&v14 + 4) = a5 | 0x100000000;
  LODWORD(v14) = 0;
  *&v15 = 0x100000;
  *(&v15 + 1) = IMemStreamRead;
  *(&v16 + 1) = v8;
  *&v17 = OMemStreamWrite;
  v18 = v9;
  if (ParallelCompressionEncode(&v14))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/BXDiff5.c", "plzmaEncodeBuffer", 358, 54, 0, "encode", v14, v15, v16, v17, v18);
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:
  v12 = BXDiffMatchesOBuf(v10);
  OMemStreamDestroy(v8);
  OMemStreamDestroy(v10);
  if (v11)
  {
    return -1;
  }

  else
  {
    return v12;
  }
}