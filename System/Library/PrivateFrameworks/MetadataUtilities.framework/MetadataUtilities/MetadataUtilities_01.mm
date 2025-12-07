__CFString *_MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*(a2 + 32))
  {
    v8 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v44 = *(a2 + 32);
      *buf = 136315906;
      *&buf[4] = "CFTypeRef _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(CFAllocatorRef, MDPlistBytesRef, CFIndex, const MDPlistBytesDeserializationCallbacks *, void *)";
      *&buf[12] = 1024;
      *&buf[14] = v44;
      *&buf[18] = 2048;
      *&buf[20] = a3;
      *&buf[28] = 2048;
      *&buf[30] = a5;
      _os_log_error_impl(&dword_1B238B000, v8, OS_LOG_TYPE_ERROR, "%s: plist bad (line %d); idx = %ld; ctx = %p", buf, 0x26u);
    }

    v9 = __error();
    result = 0;
    v11 = 94;
LABEL_25:
    *v9 = v11;
    return result;
  }

  v12 = *(a2 + 16);
  if (v12 <= 0xF)
  {
    *(a2 + 40) = 0;
LABEL_22:
    v31 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator_cold_3();
    }

    v9 = __error();
    result = 0;
    v11 = 33;
    goto LABEL_25;
  }

  v13 = (v12 >> 3) - 2;
  v14 = (*(a2 + 8) + 8);
  *(a2 + 40) = v14;
  v15 = a3 + 1;
  while (--v15 >= 1)
  {
    v16 = *v14 + 1;
    v17 = *v14 < 0x7FFFFFFF;
    v18 = __OFSUB__(v13, v16);
    v13 -= v16;
    if ((v13 < 0) ^ v18 | (v13 == 0))
    {
      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    v14 += v16;
    v20 = v17 & v19;
    if (v20)
    {
      v21 = v14;
    }

    else
    {
      v21 = 0;
    }

    *(a2 + 40) = v21;
    if ((v20 & 1) == 0)
    {
      v14 = 0;
      break;
    }
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  v24 = *v14;
  if (*(a2 + 60) >= 1)
  {
    *(a2 + 60) = 0;
    os_unfair_lock_lock(&_MergedGlobals);
    v25 = *(a2 + 48);
    *(a2 + 48) = 0;
    os_unfair_lock_unlock(&_MergedGlobals);
    free(v25);
    v14 = *(a2 + 40);
  }

  v26 = &v14[v24 >> 32];
  *(a2 + 48) = v26;
  v27 = *v26;
  *(a2 + 56) = v27 & 0xFFFFFF;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v59 = 0u;
  v60 = 0u;
  memset(&buf[16], 0, 32);
  *buf = a2;
  v28 = malloc_type_calloc(v27 & 0xFFFFFF, 8uLL, 0xC0040B8AA526DuLL);
  *&buf[8] = v28;
  *&buf[16] = 0;
  if (*(a4 + 72))
  {
    v29 = malloc_type_malloc(8 * *(a2 + 56), 0xC0040B8AA526DuLL);
    v30 = a4;
  }

  else
  {
    v30 = a4;
    v29 = 0;
  }

  *&buf[24] = v29;
  v32 = v30[2];
  v33 = v30[4];
  v34 = v30[5];
  v61 = v30[3];
  v62 = v33;
  v63 = v34;
  v35 = v30[1];
  *&buf[32] = *v30;
  v59 = v35;
  v60 = v32;
  *&v64 = a5;
  *(&v64 + 1) = a1;
  *&v65 = malloc_default_zone();
  BYTE8(v65) = 0;
  queue = si_create_queue(0x400u);
  if (*(&v63 + 1))
  {
    *&buf[40] = _MDPlistBytesCreateUniquedString;
  }

  if (!v28)
  {
    v43 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator_cold_2();
    }

    v9 = __error();
    result = 0;
    v11 = 12;
    goto LABEL_25;
  }

  v47 = 1;
  if (*a4 || *(a4 + 8) || *(a4 + 16) || *(a4 + 24) || *(a4 + 32) || *(a4 + 40) || *(a4 + 48) || *(a4 + 56))
  {
    v36 = 0;
  }

  else
  {
    if (qword_1ED6F3F60 != -1)
    {
      _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator_cold_1();
    }

    pthread_setspecific(qword_1ED6F3F68, 1);
    v36 = 1;
    if (*(a4 + 64) == _QueryResultsBeginArray)
    {
      if (*(a4 + 80) == _QueryResultsEndArray)
      {
        if (*(a4 + 72) == _QueryResultsValue)
        {
          v36 = 257;
        }

        else
        {
          v36 = 1;
        }
      }

      else
      {
        v36 = 1;
      }
    }
  }

  v37 = copyObject(buf, &v47, 0, v36);
  pthread_setspecific(qword_1ED6F3F68, 0);
  v38 = *&buf[24];
  if (*&buf[24])
  {
    v39 = *&buf[16];
    if (*&buf[16] >= 1)
    {
      v40 = *&buf[24];
      do
      {
        if (!*v40)
        {
          break;
        }

        CFRelease(*v40++);
        --v39;
      }

      while (v39);
    }

    free(v38);
  }

  free(*&buf[8]);
  si_destroy_queue(queue, MEMORY[0x1E695D7C0]);
  if (*(a2 + 32))
  {
    v41 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v46 = *(a2 + 32);
      *v48 = 136316162;
      v49 = "CFTypeRef _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(CFAllocatorRef, MDPlistBytesRef, CFIndex, const MDPlistBytesDeserializationCallbacks *, void *)";
      v50 = 1024;
      v51 = v46;
      v52 = 2048;
      v53 = a3;
      v54 = 1024;
      v55 = v47;
      v56 = 2048;
      v57 = a5;
      _os_log_error_impl(&dword_1B238B000, v41, OS_LOG_TYPE_ERROR, "%s: plist copy bad (line %d); idx = %ld; quadIdx = %d; ctx = %p", v48, 0x2Cu);
      if (!v37)
      {
        goto LABEL_50;
      }
    }

    else if (!v37)
    {
LABEL_50:
      v42 = __error();
      result = 0;
      *v42 = 94;
      goto LABEL_55;
    }

    CFRelease(v37);
    goto LABEL_50;
  }

  result = v37;
LABEL_55:
  if (result == *MEMORY[0x1E695E738] && sel_enumerateObjectsUsingBlock_ != a5)
  {
    CFRelease(result);
    return 0;
  }

  return result;
}

char *si_create_queue(unsigned int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x90uLL, 0x1090040E44D38CFuLL);
  *v2 = "simple queue";
  pthread_mutex_init((v2 + 8), 0);
  pthread_cond_init((v2 + 72), 0);
  *(v2 + 31) = 0;
  *(v2 + 32) = 0;
  *(v2 + 30) = a1;
  *(v2 + 17) = malloc_type_calloc(a1, 8uLL, 0x80040B8603338uLL);
  return v2;
}

__CFString *copyObject(uint64_t *a1, int *a2, unsigned int a3, uint64_t a4)
{
  v193 = a4;
  v233 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a1[17];
  v194 = a1[16];
  v195 = v7;
  if (si_simplequeue_count_locked(a1[20]))
  {
    v9 = si_dequeue_locked(a1[20]);
    if (v9)
    {
      return v9;
    }
  }

  v10 = *a2;
  v11 = *(*(v195 + 40) + 8 * v10);
  bzero(v201, 0x648uLL);
  if (a3 > 0x63)
  {
    copyObject_cold_23();
  }

  v192 = a2;
  v190 = a3;
  v13 = 0;
  LODWORD(v14) = 0;
  LODWORD(v15) = 0;
  v16 = 0;
  allocator = *MEMORY[0x1E695E480];
  v189 = v193;
  v196 = &v201[-134];
  cf = *MEMORY[0x1E695E738];
  v17 = *MEMORY[0x1E695E4D0];
  v186 = *MEMORY[0x1E695E4C0];
  v187 = v17;
  *&v12 = 136315394;
  v185 = v12;
LABEL_5:
  v18 = v14;
  while (2)
  {
    switch(BYTE3(v11))
    {
      case 0:
        v63 = a1[10];
        if (v63)
        {
          v64 = v63(v8, v194);
        }

        else
        {
          v64 = CFRetain(cf);
        }

        v9 = v64;
        if (!v64)
        {
          copyObject_cold_15();
        }

        if (SHIDWORD(v11) < 2)
        {
          LODWORD(v15) = 2;
        }

        else
        {
          LODWORD(v15) = HIDWORD(v11) + 1;
          v111 = HIDWORD(v11) - 1;
          do
          {
            v113 = a1[10];
            if (v113)
            {
              v112 = v113(v8, v194);
              if (!v112)
              {
LABEL_286:
                copyObject_cold_14();
              }
            }

            else
            {
              v112 = CFRetain(cf);
              if (!v112)
              {
                goto LABEL_286;
              }
            }

            si_enqueue_locked(a1[20], v112);
            --v111;
          }

          while (v111);
        }

        goto LABEL_191;
      case 1:
        v76 = a1[9];
        if (v76)
        {
          v9 = v76(v8, HIDWORD(v11), v194);
        }

        else if (HIDWORD(v11))
        {
          v9 = v187;
        }

        else
        {
          v9 = v186;
        }

        if (!v9)
        {
          copyObject_cold_20();
        }

        goto LABEL_191;
      case 2:
        if ((v11 & 0x8000000000000000) != 0 || (v16 = HIDWORD(v11), *(v195 + 56) <= SHIDWORD(v11)))
        {
          v199 = v10;
          v170 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__dst[0]) = 134217984;
            *(__dst + 4) = (v11 >> 32);
            v171 = "uid is less than zero; malformed MDPlistBytes: %ld";
            goto LABEL_268;
          }

          goto LABEL_271;
        }

        v19 = a1[1];
        v9 = *(v19 + 8 * v16);
        if (!v9)
        {
          v11 = *(*(v195 + 48) + 8 * v16);
          LODWORD(v10) = v11 & 0xFFFFFF;
          continue;
        }

        CFRetain(*(v19 + 8 * v16));
        v104 = v10 + 1;
LABEL_192:
        v199 = v104;
LABEL_193:
        if (!v13)
        {
          goto LABEL_265;
        }

        goto LABEL_200;
      case 0xA:
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_270;
        }

        v20 = HIDWORD(v11);
        v21 = a1[12];
        if (v21 && a1[14] && a1[13] && v21(HIDWORD(v11), v194))
        {
          v200 = v10;
          if (v20)
          {
            v161 = 0;
            v162 = v189;
            do
            {
              v163 = 0;
              v232 = 0u;
              v231 = 0u;
              v230 = 0u;
              v229 = 0u;
              v228 = 0u;
              v227 = 0u;
              v226 = 0u;
              v225 = 0u;
              v224 = 0u;
              v223 = 0u;
              v222 = 0u;
              v221 = 0u;
              v220 = 0u;
              v219 = 0u;
              v218 = 0u;
              v217 = 0u;
              v216 = 0u;
              v215 = 0u;
              v214 = 0u;
              v213 = 0u;
              v212 = 0u;
              v211 = 0u;
              v210 = 0u;
              v209 = 0u;
              v208 = 0u;
              v207 = 0u;
              v206 = 0u;
              v205 = 0u;
              v204 = 0u;
              v203 = 0u;
              memset(__dst, 0, sizeof(__dst));
              do
              {
                __dst[v163] = copyObject(a1, &v200, v190 + 2, v162);
                if (v163 > 0x3E)
                {
                  break;
                }

                ++v163;
              }

              while (v163 + v161 < v20);
              pthread_setspecific(qword_1ED6F3F68, 0);
              if (v161 >= v20)
              {
                pthread_setspecific(qword_1ED6F3F68, (v193 & 1));
              }

              else
              {
                v164 = 0;
                do
                {
                  v165 = v161 + v164;
                  (a1[13])(__dst[v164], v161 + v164, a1[16]);
                  if (v164 > 0x3E)
                  {
                    break;
                  }

                  ++v164;
                }

                while (v165 + 1 < v20);
                v166 = v193;
                pthread_setspecific(qword_1ED6F3F68, (v193 & 1));
                v162 = v189;
                if ((v166 & 0x100) == 0)
                {
                  v167 = 0;
                  do
                  {
                    v168 = __dst[v167];
                    if (v168)
                    {
                      CFRelease(v168);
                    }

                    if (v167 > 0x3E)
                    {
                      break;
                    }

                    ++v167;
                  }

                  while (v167 + v161 < v20);
                }
              }

              v161 += 64;
            }

            while (v161 < v20);
            LODWORD(v10) = v200;
          }

          pthread_setspecific(qword_1ED6F3F68, 0);
          v9 = (a1[14])(a1[16]);
          pthread_setspecific(qword_1ED6F3F68, (v193 & 1));
          v199 = v10;
        }

        else
        {
          if (v20 && SHIDWORD(v11) <= 64 && v18 < 3)
          {
            v13 = &v201[67 * v18++];
            *v13 = v16;
            *(v13 + 1) = v20;
            *(v13 + 2) = 0;
            v11 = *(*(v195 + 40) + 8 * v10);
            continue;
          }

          v199 = v10;
          v182 = v182 & 0xFFFFFFFFFFFF0000 | v189;
          v160 = copyArray(a1, v11, &v199, v190 + 1, v189);
          if (!v160)
          {
            copyObject_cold_22();
          }

          v9 = v160;
        }

        goto LABEL_199;
      case 0xB:
        v199 = v10;
        v65 = *a1;
        v66 = (*(*a1 + 40) + 8 * v10);
        v68 = *v66;
        v67 = (v66 + 1);
        v69 = v68 & 0xFFFFFF;
        v70 = HIDWORD(v68) + 8 * (v68 & 0xFFFFFF) - 16;
        if (SHIDWORD(v68) <= 0)
        {
          v70 = 0;
        }

        v71 = v70;
        v72 = *(v65 + 8);
        if (v67 < v72 || v70 < 0 || (v72 - v67 + *(v65 + 16)) <= v70)
        {
          goto LABEL_279;
        }

        v73 = a1[4];
        v74 = a1[17];
        if (v73)
        {
          v75 = v73(v74);
        }

        else
        {
          v75 = CFDataCreate(v74, v67, v70);
        }

        v9 = v75;
        v199 = v69 + v10;
        if (!v75)
        {
          copyObject_cold_21();
        }

        goto LABEL_199;
      case 0xC:
      case 0x1C:
        v199 = v10;
        if ((v11 & 0xFF000000) == 0xC000000)
        {
          v22 = 134217984;
        }

        else
        {
          v22 = 256;
        }

        v23 = *a1;
        v24 = (*(*a1 + 40) + 8 * v10);
        v26 = *v24;
        v25 = (v24 + 1);
        v27 = v26 & 0xFFFFFF;
        v28 = HIDWORD(v26) + 8 * (v26 & 0xFFFFFF) - 16;
        if (SHIDWORD(v26) <= 0)
        {
          v28 = 0;
        }

        v29 = *(v23 + 8);
        if (v25 < v29 || v28 < 0 || (v29 - v25 + *(v23 + 16)) <= v28)
        {
          v180 = v28;
          v181 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__dst[0]) = 134217984;
            *(__dst + 4) = v180;
            v171 = "invalid index; malformed MDPlistBytes: %ld";
            v172 = v181;
            goto LABEL_269;
          }

          goto LABEL_271;
        }

        v30 = a1[5];
        v31 = a1[17];
        v184 = v11 & 0xFF000000;
        if (v30)
        {
          v32 = v28;
          v9 = v30(v31);
          v199 = v27 + v10;
          if (v9)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v32 = v28;
          v9 = CFStringCreateWithBytes(v31, v25, v28, v22, 1u);
          v199 = v27 + v10;
          if (v9)
          {
            goto LABEL_109;
          }
        }

        v105 = copyString__isMDSInternal;
        if (copyString__isMDSInternal == -1)
        {
          v105 = _MDIsAppleInternal();
          copyString__isMDSInternal = v105;
        }

        if (!v105)
        {
          goto LABEL_108;
        }

        v106 = 16;
        if (v184 == 201326592)
        {
          v106 = 8;
        }

        v9 = CFStringCreateWithFormat(a1[17], 0, @"<MDPlistBytesEncodingError: Invalid UTF-%i encoding (byteCount = %lu)>", v106, v32);
        v107 = _MDLogForCategoryDefault();
        if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          if (v9)
          {
            goto LABEL_109;
          }

LABEL_108:
          v9 = @"__cfstringcreatewithbytesreturnednull__";
          goto LABEL_109;
        }

        LODWORD(__dst[0]) = v185;
        *(__dst + 4) = "CFStringRef copyString(_MDPlistBytesDeserializationContext *, uint64_t, int *)";
        WORD2(__dst[1]) = 2112;
        *(&__dst[1] + 6) = v9;
        _os_log_error_impl(&dword_1B238B000, v107, OS_LOG_TYPE_ERROR, "%s: %@", __dst, 0x16u);
        if (!v9)
        {
          goto LABEL_108;
        }

LABEL_109:
        *(a1[1] + 8 * v16) = v9;
        if (!a1[3])
        {
          goto LABEL_193;
        }

        v108 = CFRetain(v9);
        v109 = a1[3];
        v110 = *(a1 + 4);
        *(a1 + 4) = v110 + 1;
        *(v109 + 8 * v110) = v108;
        if (!v13)
        {
          goto LABEL_265;
        }

        goto LABEL_200;
      case 0xD:
        v199 = v10;
        v183 = v183 & 0xFFFFFFFFFFFF0000 | v189;
        v9 = copyDictionary(a1, v11, &v199, v190 + 1, v189);
        *(a1[1] + 8 * v16) = v9;
        if (!v13)
        {
          goto LABEL_265;
        }

        goto LABEL_200;
      case 0xE:
        v184 = v16;
        v199 = v10;
        v90 = *(v195 + 40);
        v91 = v90 + 8 * v10;
        if (v91 + 8 - *(v195 + 8) >= *(v195 + 16) - 16)
        {
          goto LABEL_271;
        }

        v92 = a1[11];
        if (v92)
        {
          v93 = v92(v8);
        }

        else
        {
          v93 = CFUUIDCreateFromUUIDBytes(v8, *(v91 + 8));
        }

        v9 = v93;
        if (!v93)
        {
          copyObject_cold_11();
        }

        if (SHIDWORD(v11) < 2)
        {
          goto LABEL_189;
        }

        LODWORD(v15) = HIDWORD(v11) + 1;
        v124 = HIDWORD(v11) - 1;
        v125 = v90 + 8 * v10 + 24;
        v126 = v125;
        do
        {
          if (v125 - *(v195 + 8) >= *(v195 + 16) - 16)
          {
            goto LABEL_271;
          }

          v128 = a1[11];
          if (v128)
          {
            v127 = v128(v8, v126, v194);
            if (!v127)
            {
LABEL_290:
              copyObject_cold_10();
            }
          }

          else
          {
            v127 = CFUUIDCreateFromUUIDBytes(v8, *v126);
            if (!v127)
            {
              goto LABEL_290;
            }
          }

          si_enqueue_locked(a1[20], v127);
          ++v126;
          v125 += 16;
          --v124;
        }

        while (v124);
        LODWORD(v10) = v199;
        goto LABEL_190;
      case 0x10:
      case 0x11:
        v199 = v10;
        v200 = v10;
        if ((v11 & 0xFF000000) == 0x11000000)
        {
          if (HIDWORD(v11) != 2)
          {
            copyObject_cold_6();
          }

          v33 = copyObject(a1, &v200, v190 + 2, v189);
          v34 = *a1;
          v35 = *(*a1 + 40);
          v36 = v35 + 8 * v200;
          if (*(v36 + 3) << 24 != 0x2000000)
          {
            copyObject_cold_7();
          }

          v37 = *(v36 + 8);
          if ((v37 & 0xFF000000) != 0x7000000)
          {
            copyObject_cold_8();
          }

          v38 = v33;
          LODWORD(v10) = v200 + 1;
          v39 = v200 + 1;
        }

        else
        {
          v38 = 0;
          v34 = *a1;
          v35 = *(*a1 + 40);
          v39 = v10;
          v37 = *(v35 + 8 * v10);
        }

        v97 = v35 + 8 * v39;
        v98 = HIDWORD(v37);
        v99 = v37 & 0xFFFFFF;
        if (v98 <= 0)
        {
          v100 = 0;
        }

        else
        {
          v100 = v98 + 8 * v99 - 16;
        }

        v71 = v100;
        v101 = v99 + v10;
        v200 = v101;
        v102 = (v97 + 8);
        v103 = *(v34 + 8);
        if (v97 + 8 >= v103 && (v100 & 0x80000000) == 0 && (v103 - v102 + *(v34 + 16)) > v100)
        {
          v9 = CFURLCreateWithBytes(allocator, v102, v100, 0x8000100u, v38);
          if ((v11 & 0xFF000000) == 0x11000000)
          {
            CFRelease(v38);
          }

          v199 = v101;
          if (!v9)
          {
            copyObject_cold_9();
          }

LABEL_199:
          *(a1[1] + 8 * v16) = v9;
          if (!v13)
          {
            goto LABEL_265;
          }

LABEL_200:
          while (1)
          {
            v143 = *(v13 + 2);
            v144 = v143 + 1;
            *(v13 + 2) = v143 + 1;
            *&v13[2 * v143 + 6] = v9;
            LODWORD(v15) = v15 - 2;
            v14 = v18;
            if ((v193 & 1) == 0)
            {
              break;
            }

            v145 = *(v13 + 1);
            if (v15 > 0)
            {
LABEL_202:
              if (v145 <= v144)
              {
LABEL_211:
                v149 = 1;
                if (v144 != v145)
                {
                  goto LABEL_236;
                }

                goto LABEL_216;
              }

              while (1)
              {
                v146 = si_simplequeue_count_locked(a1[20]) ? si_dequeue_locked(a1[20]) : 0;
                v147 = *(v13 + 2);
                v144 = v147 + 1;
                *(v13 + 2) = v147 + 1;
                *&v13[2 * v147 + 6] = v146;
                v145 = *(v13 + 1);
                v148 = __OFSUB__(v15, 1);
                LODWORD(v15) = v15 - 1;
                v149 = !((v15 < 0) ^ v148 | (v15 == 0));
                if ((v15 < 0) ^ v148 | (v15 == 0))
                {
                  break;
                }

                if (v145 <= v144)
                {
                  goto LABEL_211;
                }
              }

              LODWORD(v15) = 0;
              if (v144 != v145)
              {
                goto LABEL_236;
              }

              goto LABEL_216;
            }

            while (1)
            {
              v149 = 0;
              if (v144 != v145)
              {
                goto LABEL_236;
              }

LABEL_216:
              v9 = CFArrayCreate(v8, v13 + 3, v145, &kCopyArrayArrayCallbacks);
              *(a1[1] + 8 * *v13) = v9;
              bzero(v13 + 6, 8 * *(v13 + 2));
              if (v14 < 2)
              {
LABEL_265:
                v169 = v192;
                goto LABEL_277;
              }

              LODWORD(v18) = v14 - 1;
              v13 = &v196[67 * v14];
              if (!v149)
              {
                break;
              }

              v150 = *(v13 + 2);
              v144 = v150 + 1;
              *(v13 + 2) = v150 + 1;
              *&v13[2 * v150 + 6] = v9;
              --v14;
              v145 = *(v13 + 1);
              if (v15 > 0)
              {
                goto LABEL_202;
              }
            }
          }

          while (1)
          {
            if (v15 < 1)
            {
LABEL_228:
              v154 = 0;
            }

            else
            {
              v151 = v13 + 6;
              while (1)
              {
                v153 = *(v13 + 1);
                v154 = v153 <= v144;
                if (v153 <= v144)
                {
                  break;
                }

                if (si_simplequeue_count_locked(a1[20]))
                {
                  v155 = si_dequeue_locked(a1[20]);
                  v156 = *(v13 + 2);
                  v144 = v156 + 1;
                  *(v13 + 2) = v156 + 1;
                  *&v151[2 * v156] = v155;
                  v148 = __OFSUB__(v15, 1);
                  LODWORD(v15) = v15 - 1;
                  if ((v15 < 0) ^ v148 | (v15 == 0))
                  {
LABEL_227:
                    LODWORD(v15) = 0;
                    goto LABEL_228;
                  }
                }

                else
                {
                  v152 = *(v13 + 2);
                  v144 = v152 + 1;
                  *(v13 + 2) = v152 + 1;
                  *&v151[2 * v152] = 0;
                  v148 = __OFSUB__(v15, 1);
                  LODWORD(v15) = v15 - 1;
                  if ((v15 < 0) ^ v148 | (v15 == 0))
                  {
                    goto LABEL_227;
                  }
                }
              }
            }

            if (v144 != *(v13 + 1))
            {
              break;
            }

            v157 = v13 + 6;
            v9 = CFArrayCreate(v8, v13 + 3, v144, &kCopyArrayArrayCallbacks);
            *(a1[1] + 8 * *v13) = v9;
            if (*(v13 + 2) >= 1)
            {
              v158 = 0;
              do
              {
                CFRelease(*&v157[2 * v158]);
                *&v157[2 * v158++] = 0;
              }

              while (v158 < *(v13 + 2));
            }

            if (v14 < 2)
            {
              goto LABEL_265;
            }

            LODWORD(v18) = v14 - 1;
            v13 = &v196[67 * v14];
            if (!v154)
            {
              goto LABEL_200;
            }

            v159 = *(v13 + 2);
            v144 = v159 + 1;
            *(v13 + 2) = v159 + 1;
            *&v13[2 * v159 + 6] = v9;
            --v14;
          }

LABEL_236:
          LODWORD(v10) = v199;
          v11 = *(*(v195 + 40) + 8 * v199);
          goto LABEL_5;
        }

LABEL_279:
        v178 = v71;
        v170 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__dst[0]) = 134217984;
          *(__dst + 4) = v178;
          v171 = "invalid index; malformed MDPlistBytes: %ld";
LABEL_268:
          v172 = v170;
LABEL_269:
          _os_log_error_impl(&dword_1B238B000, v172, OS_LOG_TYPE_ERROR, v171, __dst, 0xCu);
        }

LABEL_271:
        *(v195 + 32) = 1565;
        v9 = CFRetain(cf);
        if (v13 && *(v13 + 2) >= 1)
        {
          v173 = 0;
          v174 = v13 + 6;
          do
          {
            CFRelease(*&v174[2 * v173]);
            *&v174[2 * v173++] = 0;
          }

          while (*(v13 + 2) > v173);
        }

        v175 = _MDLogForCategoryDefault();
        v176 = os_log_type_enabled(v175, OS_LOG_TYPE_ERROR);
        v169 = v192;
        if (v176)
        {
          LODWORD(__dst[0]) = v185;
          *(__dst + 4) = "CFTypeRef copyObject(_MDPlistBytesDeserializationContext *, int *, _Bool, unsigned int, copy_object_behavior_t)";
          WORD2(__dst[1]) = 2048;
          *(&__dst[1] + 6) = v11;
          _os_log_error_impl(&dword_1B238B000, v175, OS_LOG_TYPE_ERROR, "%s: Invalid plist bytes descriptor: %#018llx", __dst, 0x16u);
        }

LABEL_277:
        *v169 = v199;
        return v9;
      case 0x1A:
        v199 = v10;
        v48 = (*(v195 + 40) + 8 * v10);
        v50 = *v48;
        v49 = v48 + 1;
        v51 = v50 & 0xFFFFFF;
        v52 = HIDWORD(v50) + 8 * (v50 & 0xFFFFFF) - 16;
        if (SHIDWORD(v50) <= 0)
        {
          v52 = 0;
        }

        v53 = v52;
        v54 = *(v195 + 8);
        if (v49 < v54 || v52 < 0 || (v54 - v49 + *(v195 + 16)) <= v52)
        {
          goto LABEL_281;
        }

        v55 = v51;
        if (v52)
        {
          __dst[0] = 0;
          v56 = _fast_vm_allocate(__dst, v52, -268435455);
          v57 = v53;
          v9 = 0;
          if (v56)
          {
            goto LABEL_161;
          }

          v58 = v57;
          if (v57 >= 4 * *MEMORY[0x1E69E9AC8])
          {
            madvise(__dst[0], v57, 3);
          }

          memcpy(__dst[0], v49, v58);
          v59 = __dst[0];
          v60 = v58 >> 3;
          v61 = v8;
          v62 = 1;
        }

        else
        {
          v61 = v8;
          v59 = 0;
          v60 = 0;
          v62 = 0;
        }

        v9 = _MDStoreOIDArrayCreate(v61, v59, v60, v62);
LABEL_161:
        v199 = v55 + v10;
        if (!v9)
        {
          copyObject_cold_1();
        }

        goto LABEL_199;
      case 0x1B:
        v199 = v10;
        v77 = (*(v195 + 40) + 8 * v10);
        v79 = *v77;
        v78 = v77 + 1;
        v80 = v79 & 0xFFFFFF;
        v81 = HIDWORD(v79) + 8 * (v79 & 0xFFFFFF) - 16;
        if (SHIDWORD(v79) <= 0)
        {
          v82 = 0;
        }

        else
        {
          v82 = v81;
        }

        v53 = v82;
        v83 = *(v195 + 8);
        if (v78 < v83 || v82 < 0 || (v83 - v78 + *(v195 + 16)) <= v82)
        {
LABEL_281:
          v179 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
          {
            LODWORD(__dst[0]) = 134217984;
            *(__dst + 4) = v53;
            v171 = "invalid index; malformed MDPlistBytes: %ld";
            v172 = v179;
            goto LABEL_269;
          }

          goto LABEL_271;
        }

        v84 = v80 + v10;
        if (!v82)
        {
          if (qword_1ED6F3FE0 == -1)
          {
LABEL_167:
            v9 = CFRetain(qword_1ED6F3FD8);
            goto LABEL_175;
          }

LABEL_263:
          [_MDPlistBytes initWithByteVector:count:trusted:deallocator:];
          goto LABEL_167;
        }

        if (v82 < 0x800 || (*(v195 + 34) & 8) != 0)
        {
          v86 = malloc_type_valloc(v82, 0xF2F017C0uLL);
          v87 = v53;
          v88 = v86;
          if (v87 >= 4 * *MEMORY[0x1E69E9AC8])
          {
            madvise(v86, v87, 3);
          }

          memcpy(v88, v78, v87);
          if (v88)
          {
            v89 = [[_MDPlistBytes alloc] initWithByteVector:v88 count:v87 trusted:0 deallocator:&__block_literal_global_108];
            v9 = v89;
            if (v89)
            {
              CFRetain(v89);
            }
          }

          else
          {
            if (qword_1ED6F3FE0 != -1)
            {
              [_MDPlistBytes initWithByteVector:count:trusted:deallocator:];
            }

            v9 = CFRetain(qword_1ED6F3FD8);
          }

          BYTE2(v9[1].isa) |= 8u;
          v199 = v84;
          goto LABEL_199;
        }

        __dst[0] = 0;
        v134 = _fast_vm_allocate(__dst, v82, -251658239);
        v135 = v53;
        v9 = 0;
        if (!v134)
        {
          v136 = v135;
          if (v135 >= 4 * *MEMORY[0x1E69E9AC8])
          {
            madvise(__dst[0], v135, 3);
          }

          memcpy(__dst[0], v78, v136);
          if (!__dst[0])
          {
            if (qword_1ED6F3FE0 == -1)
            {
              goto LABEL_167;
            }

            goto LABEL_263;
          }

          v137 = [[_MDPlistBytes alloc] initWithByteVector:__dst[0] count:v136 trusted:0 deallocator:&__block_literal_global_108];
          v9 = v137;
          if (v137)
          {
            CFRetain(v137);
          }
        }

LABEL_175:
        v199 = v84;
        if (!v9)
        {
          copyObject_cold_5();
        }

        goto LABEL_199;
      case 0x84:
        v184 = v16;
        v199 = v10;
        v94 = (*(v195 + 40) + 8 * v10 + 8);
        if (v94 - *(v195 + 8) >= *(v195 + 16) - 8)
        {
          goto LABEL_271;
        }

        valuePtr = *v94;
        v95 = a1[8];
        if (v95)
        {
          v96 = v95(v8);
        }

        else
        {
          v96 = CFNumberCreate(v8, kCFNumberLongLongType, &valuePtr);
        }

        v9 = v96;
        if (!v96)
        {
          copyObject_cold_17();
        }

        if (SHIDWORD(v11) < 2)
        {
          goto LABEL_189;
        }

        v15 = (HIDWORD(v11) + 1);
        v129 = v15 - 2;
        v130 = 8 * v10 + 16;
        do
        {
          v132 = *(v195 + 40);
          if (v130 + v132 - *(v195 + 8) >= *(v195 + 16) - 8)
          {
            goto LABEL_271;
          }

          valuePtr = *(v132 + v130);
          v133 = a1[8];
          if (v133)
          {
            v131 = v133(v8);
            if (!v131)
            {
LABEL_289:
              copyObject_cold_16();
            }
          }

          else
          {
            v131 = CFNumberCreate(v8, kCFNumberLongLongType, &valuePtr);
            if (!v131)
            {
              goto LABEL_289;
            }
          }

          si_enqueue_locked(a1[20], v131);
          v130 += 8;
          --v129;
        }

        while (v129);
        goto LABEL_190;
      case 0x85:
        v184 = v16;
        v199 = v10;
        v40 = (*(v195 + 40) + 8 * v10 + 8);
        if (v40 - *(v195 + 8) >= *(v195 + 16) - 8)
        {
          goto LABEL_271;
        }

        v41 = *v40;
        v197 = *v40;
        v42 = a1[7];
        if (v42)
        {
          v43 = v42(v8, v194);
        }

        else
        {
          v114 = v41;
          *__dst = v114;
          if (v41 == v114)
          {
            v115 = __dst;
            v116 = v8;
            v117 = kCFNumberFloatType;
          }

          else
          {
            v115 = &v197;
            v116 = v8;
            v117 = kCFNumberDoubleType;
          }

          v43 = CFNumberCreate(v116, v117, v115);
        }

        v9 = v43;
        if (!v43)
        {
          copyObject_cold_13();
        }

        if (SHIDWORD(v11) < 2)
        {
          goto LABEL_189;
        }

        v15 = (HIDWORD(v11) + 1);
        v138 = v15 - 2;
        v139 = 8 * v10 + 16;
        do
        {
          v141 = *(v195 + 40);
          if (v139 + v141 - *(v195 + 8) >= *(v195 + 16) - 8)
          {
            goto LABEL_271;
          }

          v197 = *(v141 + v139);
          v142 = a1[7];
          if (v142)
          {
            v140 = v142(v8, v194);
            if (!v140)
            {
LABEL_288:
              copyObject_cold_12();
            }
          }

          else
          {
            v140 = CFNumberCreate(v8, kCFNumberDoubleType, &v197);
            if (!v140)
            {
              goto LABEL_288;
            }
          }

          si_enqueue_locked(a1[20], v140);
          v139 += 8;
          --v138;
        }

        while (v138);
LABEL_190:
        v16 = v184;
LABEL_191:
        v104 = v10 + (v11 & 0xFFFFFF);
        goto LABEL_192;
      case 0x86:
        v184 = v16;
        v199 = v10;
        v44 = (*(v195 + 40) + 8 * v10 + 8);
        if (v44 - *(v195 + 8) >= *(v195 + 16) - 8)
        {
          goto LABEL_271;
        }

        v45 = *v44;
        v46 = a1[6];
        if (v46)
        {
          v47 = v46(v8, v194, v45);
        }

        else
        {
          v47 = CFDateCreate(v8, v45);
        }

        v9 = v47;
        if (!v47)
        {
          copyObject_cold_19();
        }

        if (SHIDWORD(v11) < 2)
        {
LABEL_189:
          LODWORD(v15) = 2;
        }

        else
        {
          v15 = (HIDWORD(v11) + 1);
          v118 = 8 * v10 + 16;
          v119 = v15 - 2;
          do
          {
            v121 = *(v195 + 40);
            if (v118 + v121 - *(v195 + 8) >= *(v195 + 16) - 8)
            {
              goto LABEL_271;
            }

            v122 = *(v121 + v118);
            v123 = a1[6];
            if (v123)
            {
              v120 = v123(v8, v194, v122);
              if (!v120)
              {
LABEL_287:
                copyObject_cold_18();
              }
            }

            else
            {
              v120 = CFDateCreate(v8, v122);
              if (!v120)
              {
                goto LABEL_287;
              }
            }

            si_enqueue_locked(a1[20], v120);
            v118 += 8;
            --v119;
          }

          while (v119);
        }

        goto LABEL_190;
      default:
LABEL_270:
        v199 = v10;
        goto LABEL_271;
    }
  }
}

uint64_t si_simplequeue_count_locked(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = *(a1 + 120);
  if ((-v2 & v1) != 0)
  {
    si_simplequeue_count_locked_cold_1();
  }

  v3 = *(a1 + 124);
  if ((v3 & ~(v2 - 1)) != 0)
  {
    si_simplequeue_count_locked_cold_2();
  }

  if (v3 <= v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 120);
  }

  v5 = v4 - v3 + v1;
  if (!v5)
  {
    if (*(*(a1 + 136) + 8 * v1))
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t _QueryResultsBeginArray(uint64_t a1, uint64_t *a2)
{
  if ((a2[4] & 1) == 0)
  {
    v2 = *a2;
    if (*a2)
    {
      if (v2 != 1)
      {
        return 0;
      }

      *(a2 + 33) = 1;
    }

    *a2 = v2 + 1;
  }

  return 1;
}

uint64_t _QueryResultsEndArray(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    v2 = (*a1)--;
    if (v2 == 2)
    {
      (*(*(a1 + 8) + 16))();
      v3 = *(a1 + 16);
      if (v3)
      {
        for (i = 0; i < v3; ++i)
        {
          v5 = *(*(a1 + 24) + 8 * i);
          if (v5)
          {
            CFRelease(v5);
            *(*(a1 + 24) + 8 * i) = 0;
            v3 = *(a1 + 16);
          }
        }
      }
    }
  }

  return 0;
}

void *si_enqueue_locked(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 120);
  if ((-v3 & v2) != 0)
  {
    si_enqueue_locked_cold_1();
  }

  v5 = v3 - 1;
  if ((*(a1 + 124) & ~(v3 - 1)) != 0)
  {
    si_enqueue_locked_cold_2();
  }

  result = *(a1 + 136);
  if (*(result + v2))
  {
    *(a1 + 120) = 2 * v3;
    v8 = malloc_type_realloc(result, 8 * (2 * v3), 0x80040B8603338uLL);
    *(a1 + 136) = v8;
    memcpy(&v8[8 * v3], v8, 8 * *(a1 + 124));
    v9 = *(a1 + 124);
    *(a1 + 128) = (*(a1 + 120) - 1) & (v9 + v3);
    bzero(*(a1 + 136), 8 * v9);
    bzero((*(a1 + 136) + 8 * *(a1 + 128)), 8 * (*(a1 + 120) - *(a1 + 128)));
    result = *(a1 + 136);
    v2 = *(a1 + 128);
    v5 = *(a1 + 120) - 1;
  }

  *(result + v2) = a2;
  v10 = v5 & (v2 + 1);
  *(a1 + 128) = v10;
  if (*(a1 + 132))
  {
    result = pthread_cond_broadcast((a1 + 72));
    v10 = *(a1 + 128);
    v5 = *(a1 + 120) - 1;
  }

  if ((v10 & ~v5) != 0)
  {
    si_enqueue_locked_cold_3();
  }

  if ((*(a1 + 124) & ~v5) != 0)
  {
    si_enqueue_locked_cold_4();
  }

  return result;
}

uint64_t si_dequeue_locked(uint64_t a1)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 124);
  result = *(v2 + 8 * v3);
  if (result)
  {
    *(v2 + 8 * v3) = 0;
    *(a1 + 124) = (*(a1 + 120) - 1) & (v3 + 1);
  }

  return result;
}

uint64_t _QueryResultsValue(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result && (a3[4] & 1) == 0)
  {
    if (*MEMORY[0x1E695E738] == result)
    {
      v3 = *a3;
      if (a2 && v3 == 1)
      {
        v4 = *(a3[1] + 16);

        return v4();
      }

      else if (!a2 && v3 == 1)
      {
        *(a3 + 33) = 1;
      }
    }

    else if (a3[2] > a2)
    {
      *(a3[3] + 8 * a2) = result;
    }
  }

  return result;
}

BOOL _MDPlistBytesGrowCapacityVM(uint64_t a1, unsigned int a2, int a3)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 34);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  v7 = *(a1 + 20);
  v8 = MEMORY[0x1E69E9AC8];
  if (v7 > a2)
  {
    v9 = 2 * v7;
    *(a1 + 20) = 2 * v7;
    v10 = a1;
    if ((2 * v7) < 0x70000001)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = 1879048192;
    if (v7 + a2 > 0x70000000)
    {
      *(a1 + 32) = 2259;
      v15 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (result)
      {
        _MDPlistBytesGrowCapacityVM_cold_1();
        return 0;
      }

      return result;
    }

    *(a1 + 20) = 1879048192;
    if ((v3 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v9 = v7 + ((a2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]);
  *(a1 + 20) = v9;
  v10 = a1;
  if (v9 >= 0x70000001)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((a3 & 1) == 0)
  {
    v11 = a3;
    v12 = malloc_type_zone_malloc(*(a1 + 64), v9, 0x2A937BB6uLL);
    v13 = v10;
    *(v10 + 8) = v12;
LABEL_21:
    *(v13 + 112) = &v12[*(v13 + 20)];
    v16 = (v5 - v12) >> 3;
    v17 = *(v13 + 40);
    if (v17)
    {
      *(v13 + 40) = v17 - 8 * v16;
    }

    v18 = *(v13 + 104);
    if (v18)
    {
      *(v13 + 104) = v18 - 8 * v16;
    }

    v19 = *(v13 + 120);
    if (v19)
    {
      *(v13 + 120) = v19 - 8 * v16;
    }

    if (v7 >= 4 * *v8)
    {
      madvise(v12, v7, 3);
      v12 = *v6;
    }

    memcpy(v12, v5, v7);
    if ((*(v10 + 34) & 8) != 0)
    {
      free(v5);
    }

    else
    {
      _fast_vm_deallocate(v5, v7);
    }

    if ((*(v10 + 34) & 8) != 0)
    {
      v20 = v11;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = 8;
    }

    *(v10 + 34) = v21 | *(v10 + 34) & 0xF7;
    return 1;
  }

LABEL_14:
  v11 = a3;
  if (!_fast_vm_allocate((a1 + 8), v9, -251658239))
  {
    v12 = *v6;
    v13 = v10;
    goto LABEL_21;
  }

  if (*(v10 + 32))
  {
    return 0;
  }

  *(v10 + 32) = 2286;
  v14 = _MDLogForCategoryDefault();
  result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _MDPlistBytesGrowCapacityVM_cold_2();
    return 0;
  }

  return result;
}

uint64_t _MDLogForCategoryDefault()
{
  if (_MDLogForCategoryDefault_onceToken != -1)
  {
    _MDLogForCategoryDefault_cold_1();
  }

  return _MDLogForCategoryDefault_log;
}

void si_destroy_queue(char *a1, void (*a2)(uint64_t))
{
  *a1 = "destroyed simple queue";
  pthread_mutex_destroy((a1 + 8));
  pthread_cond_destroy((a1 + 72));
  v4 = *(a1 + 17);
  v5 = *(a1 + 31);
  v6 = &v4[8 * v5];
  for (i = *v6; *v6; i = *v6)
  {
    *v6 = 0;
    *(a1 + 31) = (*(a1 + 30) - 1) & (v5 + 1);
    a2(i);
    v4 = *(a1 + 17);
    v5 = *(a1 + 31);
    v6 = &v4[8 * v5];
  }

  free(v4);

  free(a1);
}

void __copyCFDictionary_block_invoke(uint64_t a1, const UInt8 *a2, CFIndex a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = CFStringCreateWithBytes(*(a1 + 40), a2, a3, 0x8000100u, 0);
    v6 = *(a1 + 32);
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v12 = *a4;
  v13 = *(a4 + 16);
  v10 = __MDPlistContainerCopyObjectErrorCode(v8, &v12, v9 + 1, v6);
  v11 = v10;
  if (v7 && v10)
  {
    CFDictionaryAddValue(*(a1 + 48), v7, v10);
  }

  else if (!v7)
  {
    goto LABEL_9;
  }

  CFRelease(v7);
LABEL_9:
  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t parse_mobile_journal(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v212 = *MEMORY[0x1E69E9840];
  if (a2 < 0xC)
  {
    return 1;
  }

  v9 = a2;
  v10 = 0;
  v11 = 0;
  v168 = a2 - 20;
  v169 = a2 - 24;
  v174 = a2 - 36;
  v176 = -1;
  v12 = 12;
  while (1)
  {
    v13 = a1 + v11;
    v14 = *(a1 + v11);
    v179 = 0;
    v178 = 0;
    HIDWORD(v16) = v14 + 264306963;
    LODWORD(v16) = v14 + 264306963;
    v15 = v16 >> 20;
    if (v15 > 1)
    {
      switch(v15)
      {
        case 2:
          v34 = v168 + v10;
          v35 = v2_readVInt64_boundschecked(v13 + 20, v168 + v10, &v179, &v178);
          if (v178 == 1)
          {
            v157 = _MDLogForCategoryDefault();
            if (!os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
            {
              return 1;
            }

            *buf = 134218752;
            *&buf[4] = 4033806061;
            *&buf[12] = 2048;
            *&buf[14] = v34;
            *&buf[22] = 2048;
            v205 = v11;
            v206 = 2048;
            v207 = v9;
            v158 = "Invalid journal entry (serial number), magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
            goto LABEL_208;
          }

          v19 = v35;
          goto LABEL_25;
        case 4:
          v45 = v174 + v10;
          v31 = v2_readVInt64_boundschecked(v13 + 36, v174 + v10, &v179, &v178);
          if (v178 != 1)
          {
            v33 = -262275347;
            v32 = 1;
            goto LABEL_60;
          }

          v157 = _MDLogForCategoryDefault();
          if (!os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
          {
            return 1;
          }

          *buf = 134218752;
          *&buf[4] = 4032691949;
          *&buf[12] = 2048;
          *&buf[14] = v45;
          *&buf[22] = 2048;
          v205 = v11;
          v206 = 2048;
          v207 = v9;
          v158 = "Invalid journal entry (serial number) , magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
LABEL_208:
          v160 = v157;
LABEL_209:
          _os_log_error_impl(&dword_1B238B000, v160, OS_LOG_TYPE_ERROR, v158, buf, 0x2Au);
          return 1;
        case 5:
          v17 = v169 + v10;
          v18 = v2_readVInt64_boundschecked(v13 + 24, v169 + v10, &v179, &v178);
          if (v178 != 1)
          {
            v19 = v18;
LABEL_10:
            v20 = *(v13 + 4);
            v21 = v20 + 12;
            if ((v20 + 12) < 0x14 || v21 < 0x18 || (v22 = v11 + v21, v22 > v9))
            {
              v157 = _MDLogForCategoryDefault();
              if (!os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
              {
                return 1;
              }

              *buf = 134218752;
              *&buf[4] = 4035903213;
              *&buf[12] = 2048;
              *&buf[14] = v20;
              *&buf[22] = 2048;
              v205 = v11;
              v206 = 2048;
              v207 = v9;
              v158 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
              goto LABEL_208;
            }

            v23 = v20 - 12;
            v24 = *(v13 + 16);
            v25 = *(v13 + 18);
            v26 = v179;
            if (v179 >= v20 - 12)
            {
              v28 = 0;
            }

            else
            {
              v172 = *(v13 + 16);
              if (*(v13 + 16))
              {
                v27 = v23 - v179 - v25;
                v28 = (v13 + v179 + 24);
                v29 = strnlen(v28, v27);
                v79 = v29 == v27;
                v24 = v172;
                if (!v79 && v29 + 1 == v172)
                {
                  if (!v25)
                  {
                    goto LABEL_90;
                  }

LABEL_87:
                  v73 = v26 + v24;
                  v74 = v23 - (v26 + v24);
                  v75 = strnlen((v13 + v73 + 24), v74);
                  v76 = v75;
                  if (v75 == v74 || v75 + 1 != v25)
                  {
                    v78 = _MDLogForCategoryDefault();
                    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134219264;
                      *&buf[4] = 4035903213;
                      *&buf[12] = 2048;
                      *&buf[14] = v20;
                      *&buf[22] = 2048;
                      v205 = v11;
                      v206 = 2048;
                      v207 = a2;
                      v208 = 2048;
                      v209 = v76;
                      v210 = 2048;
                      v211 = v25;
                      _os_log_error_impl(&dword_1B238B000, v78, OS_LOG_TYPE_ERROR, "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x3Eu);
                    }

                    v77 = 1;
                  }

                  else
                  {
                    v77 = 0;
                  }

                  LODWORD(v24) = v172;
                  goto LABEL_95;
                }

                v171 = v29;
                v72 = _MDLogForCategoryDefault();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134219264;
                  *&buf[4] = 4035903213;
                  *&buf[12] = 2048;
                  *&buf[14] = v20;
                  *&buf[22] = 2048;
                  v205 = v11;
                  v206 = 2048;
                  v207 = a2;
                  v208 = 2048;
                  v209 = v171;
                  v210 = 2048;
                  v211 = v172;
                  _os_log_error_impl(&dword_1B238B000, v72, OS_LOG_TYPE_ERROR, "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x3Eu);
                }
              }

              v28 = 0;
              if (v25)
              {
                goto LABEL_87;
              }
            }

LABEL_90:
            v77 = 1;
LABEL_95:
            if (v28)
            {
              v79 = 1;
            }

            else
            {
              v79 = v24 == 0;
            }

            v80 = v77 & (v25 != 0);
            if (!v79)
            {
              v80 = 1;
            }

            v81 = v176;
            if (v176 <= v19)
            {
              v82 = v19;
            }

            else
            {
              v82 = v176;
            }

            if (!v80)
            {
              v81 = v82;
            }

            v176 = v81;
LABEL_106:
            v9 = a2;
            goto LABEL_188;
          }

          v157 = _MDLogForCategoryDefault();
          if (!os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
          {
            return 1;
          }

          *buf = 134218752;
          *&buf[4] = 4035903213;
          *&buf[12] = 2048;
          *&buf[14] = v17;
          *&buf[22] = 2048;
          v205 = v11;
          v206 = 2048;
          v207 = v9;
          v158 = "Invalid journal entry (serial number), magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
          goto LABEL_208;
      }

      goto LABEL_37;
    }

    if (!v15)
    {
      v46 = v9 - v12;
      v47 = v2_readVInt64_boundschecked(v13 + 12, v9 - v12, &v179, &v178);
      if (v178 == 1)
      {
        v159 = _MDLogForCategoryDefault();
        if (!os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        *buf = 134218752;
        *&buf[4] = 4030594797;
        *&buf[12] = 2048;
        *&buf[14] = v46;
        *&buf[22] = 2048;
        v205 = v11;
        v206 = 2048;
        v207 = v9;
        v158 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
        v160 = v159;
        goto LABEL_209;
      }

      v48 = v47;
      goto LABEL_39;
    }

    if (v15 == 1)
    {
      break;
    }

LABEL_37:
    if (v14 != -264372499)
    {
      if ((v14 & 0xFFEFFFFF) == 0xF04DFEED)
      {
        v32 = 0;
        v31 = 0;
        v33 = v14;
        goto LABEL_60;
      }

      v19 = 0;
      if (v14 == -259064083)
      {
        goto LABEL_10;
      }

      if (v14 != -261161235)
      {
        return 1;
      }

LABEL_25:
      v36 = *(v13 + 4);
      if ((v36 + 12) < 0x14 || (v22 = v11 + (v36 + 12), v22 > v9))
      {
        v157 = _MDLogForCategoryDefault();
        if (!os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        *buf = 134218752;
        *&buf[4] = 4033806061;
        *&buf[12] = 2048;
        *&buf[14] = v36;
        *&buf[22] = 2048;
        v205 = v11;
        v206 = 2048;
        v207 = v9;
        v158 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
        goto LABEL_208;
      }

      v37 = *(v13 + 12);
      v38 = v36 - 8 - v179;
      if (v36 - 8 <= v179)
      {
        if (!*(v13 + 12))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (!*(v13 + 12) || (v39 = strnlen((v13 + v179 + 20), v36 - 8 - v179), v40 = v39, v39 != v38) && v39 + 1 == v37)
        {
LABEL_54:
          v61 = v176;
          if (v176 <= v19)
          {
            v61 = v19;
          }

          goto LABEL_187;
        }

        v41 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219264;
          *&buf[4] = 4033806061;
          *&buf[12] = 2048;
          *&buf[14] = v36;
          *&buf[22] = 2048;
          v205 = v11;
          v206 = 2048;
          v207 = v9;
          v208 = 2048;
          v209 = v40;
          v210 = 2048;
          v211 = v37;
          v42 = v41;
          v43 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)";
          v44 = 62;
LABEL_75:
          _os_log_error_impl(&dword_1B238B000, v42, OS_LOG_TYPE_ERROR, v43, buf, v44);
          goto LABEL_188;
        }
      }

      goto LABEL_188;
    }

    v48 = 0;
LABEL_39:
    v49 = *(v13 + 4);
    if (v49 > 0xFFFFFFF3 || (v22 = v49 + v11 + 12, v22 > v9))
    {
      v157 = _MDLogForCategoryDefault();
      if (!os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
      {
        return 1;
      }

      *buf = 134218752;
      *&buf[4] = 4030594797;
      *&buf[12] = 2048;
      *&buf[14] = v49;
      *&buf[22] = 2048;
      v205 = v11;
      v206 = 2048;
      v207 = v9;
      v158 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
      goto LABEL_208;
    }

    v196 = 0uLL;
    v197 = 0;
    v50 = v179;
    v51 = v49 - v179;
    if (v49 > v179)
    {
      v52 = v13 + 12;
      if (!_MDPlistContainerValidateRootObjectFromBytes(v13 + 12 + v179, v49 - v179, a3, a4, a5, a6, a7, a8))
      {
        v70 = _MDLogForCategoryDefault();
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_188;
        }

        *buf = 134218752;
        *&buf[4] = 4030594797;
        *&buf[12] = 2048;
        *&buf[14] = v49;
        *&buf[22] = 2048;
        v205 = v11;
        v206 = 2048;
        v207 = v9;
        v42 = v70;
        v43 = "Bad journal plist, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
LABEL_74:
        v44 = 42;
        goto LABEL_75;
      }

      v202 = 0uLL;
      v203 = 0;
      _MDPlistGetRootPlistObjectFromBytes(v52 + v50, v51, &v202, v53, v54, v55, v56, v57);
      *buf = v202;
      *&buf[16] = v203;
      if (_MDPlistArrayGetCount(buf))
      {
        *buf = v202;
        *&buf[16] = v203;
        _MDPlistArrayGetPlistObjectAtIndex(buf, 0, &v196, a3, a4, a5, a6, a7, a8);
        *buf = v196;
        *&buf[16] = v197;
        if (_MDPlistGetPlistObjectType(buf) != 244)
        {
          *buf = v196;
          *&buf[16] = v197;
          if (_MDPlistGetPlistObjectType(buf) != 245)
          {
            v106 = _MDLogForCategoryDefault();
            if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_188;
            }

            *buf = 134218752;
            *&buf[4] = 4030594797;
            *&buf[12] = 2048;
            *&buf[14] = v49;
            *&buf[22] = 2048;
            v205 = v11;
            v206 = 2048;
            v207 = v9;
            v42 = v106;
            v43 = "Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
            goto LABEL_74;
          }
        }

        if (v48 && v176 && v48 < v176)
        {
          goto LABEL_188;
        }

        if (*v13 != -264306963 && *v13 != -264372499 || ((v59 = *(v13 + 4), v58 = *(v13 + 8), !v48) ? (v60 = 0) : (*buf = 0, v60 = v2_readVInt64_boundschecked(v13 + 12, -1, buf, &v202), v52 += *buf, v59 -= *buf), !_MDPlistContainerValidateRootObjectFromBytes(v52, v59, a3, a4, a5, a6, a7, a8) || (memset(buf, 0, sizeof(buf)), _MDPlistGetRootPlistObjectFromBytes(v52, v59, buf, a3, a5, a6, a7, a8), v202 = *buf, v203 = *&buf[16], _MDPlistArrayGetCount(&v202) != 2) || (v202 = 0uLL, v203 = 0, v200 = *buf, v201 = *&buf[16], _MDPlistArrayGetPlistObjectAtIndex(&v200, 0, &v202, a3, a4, a5, a6, a7, a8), v200 = 0uLL, v201 = 0, v198 = *buf, v199 = *&buf[16], _MDPlistArrayGetPlistObjectAtIndex(&v198, 1, &v200, v111, v112, v113, v114, v115, v116), !a3)))
        {
          v61 = v176;
          if (v176 <= v48)
          {
            v61 = v48;
          }

LABEL_187:
          v176 = v61;
          goto LABEL_188;
        }

        if ((v58 & 0x8000) != 0)
        {
          v117 = 2;
        }

        else
        {
          v117 = (v58 >> 17) & 1;
        }

        v198 = v202;
        v199 = v203;
        Value = _MDPlistStringGetValue(&v198, 0, 0);
        v119 = *(a3 + 16);
        v198 = v200;
        v199 = v201;
        LOBYTE(v100) = v119(a3, v60, v117, Value, &v198);
        v120 = v176;
        if (v176 <= v48)
        {
          v120 = v48;
        }

        goto LABEL_167;
      }
    }

LABEL_188:
    v10 = -v22;
    v12 = v22 + 12;
    v11 = v22;
    if (v22 + 12 > v9)
    {
      return 1;
    }
  }

  v30 = v174 + v10;
  v31 = v2_readVInt64_boundschecked(v13 + 36, v174 + v10, &v179, &v178);
  if (v178 == 1)
  {
    v157 = _MDLogForCategoryDefault();
    if (!os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 134218752;
    *&buf[4] = 4031643373;
    *&buf[12] = 2048;
    *&buf[14] = v30;
    *&buf[22] = 2048;
    v205 = v11;
    v206 = 2048;
    v207 = v9;
    v158 = "Invalid journal entry (serial number), magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
    goto LABEL_208;
  }

  v32 = 1;
  v33 = -263323923;
LABEL_60:
  v62 = *(v13 + 4);
  if ((v62 + 12) < 0x24 || (v22 = v11 + (v62 + 12), v22 > v9))
  {
    v157 = _MDLogForCategoryDefault();
    if (!os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    *buf = 134218752;
    *&buf[4] = v33;
    *&buf[12] = 2048;
    *&buf[14] = v62;
    *&buf[22] = 2048;
    v205 = v11;
    v206 = 2048;
    v207 = v9;
    v158 = "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
    goto LABEL_208;
  }

  v63 = v62 - 24 - v179;
  if (v62 - 24 <= v179)
  {
    goto LABEL_72;
  }

  v64 = v32;
  v170 = v31;
  v164 = *(v13 + 12);
  v167 = v13 + 36;
  v65 = strnlen((v13 + 36 + v179), v62 - 24 - v179);
  v66 = v65;
  if (v65 == v63 || v65 + 1 != (v164 & 0x3FF))
  {
    v68 = _MDLogForCategoryDefault();
    v9 = a2;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 134219264;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      *&buf[14] = v62;
      *&buf[22] = 2048;
      v205 = v11;
      v206 = 2048;
      v207 = a2;
      v208 = 2048;
      v209 = v66;
      v210 = 2048;
      v211 = v164 & 0x3FF;
      _os_log_error_impl(&dword_1B238B000, v68, OS_LOG_TYPE_ERROR, "Invalid journal entry, magic:0x%08lx, size:%ld, pos:%ld, end:%ld, len:%ld(%ld)", buf, 0x3Eu);
    }

LABEL_72:
    v69 = _MDLogForCategoryDefault();
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_188;
    }

    *buf = 134218752;
    *&buf[4] = v33;
    *&buf[12] = 2048;
    *&buf[14] = v62;
    *&buf[22] = 2048;
    v205 = v11;
    v206 = 2048;
    v207 = v9;
    v42 = v69;
    v43 = "Invalid journal entry - nil bundleID, magic:0x%08lx, size:%ld, pos:%ld, end:%ld";
    goto LABEL_74;
  }

  if (v170 && v176 && v170 < v176)
  {
    v67 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = v170;
      *&buf[12] = 2048;
      *&buf[14] = v176;
      _os_log_error_impl(&dword_1B238B000, v67, OS_LOG_TYPE_ERROR, "Playback skipping sn: %lld mrsn: %lld", buf, 0x16u);
    }

    goto LABEL_106;
  }

  if (v14 <= -262275348)
  {
    if (v14 != -263323923)
    {
      v71 = -263258387;
      goto LABEL_109;
    }

    goto LABEL_110;
  }

  if (v14 != -262275347)
  {
    v71 = -260112659;
LABEL_109:
    if (v14 != v71)
    {
      v107 = _MDLogForCategoryDefault();
      v9 = a2;
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_185;
      }

      *buf = 134218496;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      v205 = (v62 + 12);
      v103 = v107;
      v104 = "Invalid journal entry, magic:0x%08lx, journalEntryOffset:%zu, journalEntrySize:%ld";
      v105 = 32;
      goto LABEL_126;
    }
  }

LABEL_110:
  if (v14 == -263258387 || v14 == -263323923)
  {
    v83 = 2 * *(v13 + 16);
  }

  else
  {
    v83 = *(v13 + 16);
  }

  v84 = *(v13 + 14);
  v85 = *(v13 + 20);
  v86 = *(v13 + 24);
  v88 = *(v13 + 28);
  v87 = *(v13 + 32);
  if (v64)
  {
    *buf = 0;
    v89 = v88;
    v90 = v86;
    v91 = v85;
    v92 = v83;
    v93 = v87;
    v94 = v84;
    v95 = v2_readVInt64_boundschecked(v167, -1, buf, &v202);
    v84 = v94;
    v87 = v93;
    v83 = v92;
    v85 = v91;
    v86 = v90;
    v88 = v89;
    v96 = *buf;
  }

  else
  {
    v96 = 0;
    v95 = 0;
  }

  v97 = (v84 & 0x7FFF) + (v164 >> 10) + (v164 & 0x3FF);
  v98 = v97 + v96 + v85 + (v83 >> 1) + v86 + v88 + v87 + 24;
  if (v62 != v98)
  {
    v102 = _MDLogForCategoryDefault();
    v9 = a2;
    if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_185;
    }

    *buf = 134218752;
    *&buf[4] = v62;
    *&buf[12] = 2048;
    *&buf[14] = v98;
    *&buf[22] = 2048;
    v205 = v11;
    v206 = 2048;
    v207 = (v62 + 12);
    v103 = v102;
    v104 = "Invalid journal entry, size:%ld, extraSize:%ld, journalEntryOffset:%zu, journalEntrySize:%ld";
    v105 = 42;
LABEL_126:
    _os_log_error_impl(&dword_1B238B000, v103, OS_LOG_TYPE_ERROR, v104, buf, v105);
    goto LABEL_185;
  }

  v173 = v95;
  v99 = v96 + v97;
  v9 = a2;
  if (v83 >= 2)
  {
    v165 = v85;
    v108 = v96;
    v109 = v83 >> 1;
    v101 = v167;
    if (_MDPlistContainerValidateRootObjectFromBytes(v167 + v99, v109, a3, a4, a5, a6, a7, a8))
    {
      memset(buf, 0, sizeof(buf));
      _MDPlistGetRootPlistObjectFromBytes(v167 + v99, v109, buf, a3, a5, a6, a7, a8);
      if (a3)
      {
        v110 = *(a3 + 16);
        v202 = *buf;
        v203 = *&buf[16];
        v100 = v110();
      }

      else
      {
        v100 = 1;
      }

      v85 = v165;
      v101 = v167;
      v99 += v109;
      v96 = v108;
    }

    else
    {
      v99 += v109;
      v100 = 1;
      v96 = v108;
      v85 = v165;
    }
  }

  else
  {
    v100 = 1;
    v101 = v167;
  }

  if (!v100 || !v85)
  {
LABEL_165:
    v120 = v176;
    if (v176 <= v170)
    {
      v120 = v170;
    }

LABEL_167:
    v176 = v120;
    if ((v100 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_188;
  }

  v166 = v96;
  memset(buf, 0, sizeof(buf));
  v202 = xmmword_1B23E40B8;
  v203 = 0xEF00000000;
  v121 = v85;
  if (!_MDPlistContainerValidateRootObjectFromBytes(v101 + v99, v85, a3, a4, a5, a6, a7, a8))
  {
    goto LABEL_185;
  }

  _MDPlistGetRootPlistObjectFromBytes(v101 + v99, v121, &v202, a3, a5, a6, a7, a8);
  v128 = v99 + v121;
  v129 = v86;
  if (v86 && _MDPlistContainerValidateRootObjectFromBytes(v101 + v128, v86, v122, v123, v124, v125, v126, v127))
  {
    v200 = 0uLL;
    v201 = 0;
    _MDPlistGetRootPlistObjectFromBytes(v101 + v128, v86, &v200, v122, v124, v125, v126, v127);
    v198 = v200;
    v199 = v201;
    if (_MDPlistGetPlistObjectType(&v198) == 240 && (v198 = v200, v199 = v201, _MDPlistArrayGetCount(&v198) == 2))
    {
      v198 = v200;
      v199 = v201;
      _MDPlistArrayGetPlistObjectAtIndex(&v198, 1, buf, v122, v130, v124, v125, v126, v127);
      v198 = *buf;
      v199 = *&buf[16];
      v131 = _MDPlistGetPlistObjectType(&v198) == 241;
    }

    else
    {
      v131 = 0;
    }

    v129 = v86;
  }

  else
  {
    v131 = 0;
  }

  v200 = 0uLL;
  v201 = 0;
  if (v88)
  {
    v198 = 0uLL;
    v199 = 0;
    _MDPlistGetRootPlistObjectFromBytes(v101 + v128 + v129, v88, &v198, v122, v124, v125, v126, v127);
    v196 = v198;
    v197 = v199;
    if (_MDPlistGetPlistObjectType(&v196) == 240)
    {
      v196 = v198;
      v197 = v199;
      if (_MDPlistArrayGetCount(&v196) == 2)
      {
        v196 = v198;
        v197 = v199;
        _MDPlistArrayGetPlistObjectAtIndex(&v196, 1, &v200, v132, v133, v134, v135, v136, v137);
      }
    }
  }

  v198 = v202;
  v199 = v203;
  if (_MDPlistGetPlistObjectType(&v198) != 240)
  {
    goto LABEL_185;
  }

  v198 = v202;
  v199 = v203;
  Count = _MDPlistArrayGetCount(&v198);
  if (a5)
  {
    if (!Count)
    {
      goto LABEL_185;
    }

    v139 = *(a5 + 16);
    v198 = v202;
    v199 = v203;
    v196 = *buf;
    v197 = *&buf[16];
    v194 = v200;
    v195 = v201;
    LOBYTE(v100) = v139(a5, v173, v101 + v166, &v198, &v196, &v194);
    goto LABEL_165;
  }

  if (!Count)
  {
LABEL_185:
    v61 = v176;
    if (v176 <= v170)
    {
      v61 = v170;
    }

    goto LABEL_187;
  }

  v140 = 0;
  v141 = Count;
  while (1)
  {
    v198 = 0uLL;
    v199 = 0;
    v196 = v202;
    v197 = v203;
    _MDPlistArrayGetPlistObjectAtIndex(&v196, v140, &v198, a3, a4, a5, a6, a7, a8);
    v196 = v198;
    v197 = v199;
    if (_MDPlistGetPlistObjectType(&v196) == 246)
    {
      *&v194 = 0;
      v196 = v198;
      v197 = v199;
      BytePtr = _MDPlistDataGetBytePtr(&v196, &v194);
      if (!_MDPlistContainerValidateRootObjectFromBytes(BytePtr, v194, v143, v144, v145, v146, v147, v148))
      {
        goto LABEL_185;
      }

      _MDPlistGetRootPlistObjectFromBytes(BytePtr, v194, &v196, a3, a5, a6, a7, a8);
      v198 = v196;
      v199 = v197;
    }

    v196 = v198;
    v197 = v199;
    if (_MDPlistGetPlistObjectType(&v196) == 240)
    {
      v196 = v198;
      v197 = v199;
      v149 = _MDPlistArrayGetCount(&v196);
      if ((v149 - 3) <= 1)
      {
        v150 = v149;
        v194 = v198;
        v195 = v199;
        _MDPlistArrayGetPlistObjectAtIndex(&v194, 1, &v196, a3, a4, a5, a6, a7, a8);
        if ((_MDPlistNumberGetIntValue(&v196) & 2) == 0)
        {
          v196 = 0uLL;
          v197 = 0;
          v194 = v198;
          v195 = v199;
          _MDPlistArrayGetPlistObjectAtIndex(&v194, 2, &v196, a3, a4, a5, a6, a7, a8);
          v194 = 0uLL;
          v195 = 0;
          v192 = v196;
          v193 = v197;
          if (_MDPlistDictionaryGetPlistObjectForKey(&v192, "_kMDItemExternalID", 18, &v194, v151, v152, v153, v154))
          {
            v191 = 0;
            v190 = 0;
            v192 = v194;
            v193 = v195;
            v155 = _MDPlistStringGetValue(&v192, &v191, &v190);
            v192 = 0uLL;
            v193 = 0;
            v188 = 0uLL;
            v189 = 0;
            if (v150 == 4)
            {
              v186 = v198;
              v187 = v199;
              _MDPlistArrayGetPlistObjectAtIndex(&v186, 3, &v192, a3, a4, a5, a6, a7, a8);
            }

            if (v131)
            {
              v186 = *buf;
              v187 = *&buf[16];
              _MDPlistDictionaryGetPlistObjectForKey(&v186, v155, -1, &v188, a5, a6, a7, a8);
            }

            if (a4)
            {
              v156 = *(a4 + 16);
              v186 = v194;
              v187 = v195;
              v184 = v196;
              v185 = v197;
              v182 = v192;
              v183 = v193;
              v180 = v188;
              v181 = v189;
              if ((v156() & 1) == 0)
              {
                return 0;
              }
            }
          }
        }
      }
    }

    if (v141 == ++v140)
    {
      goto LABEL_185;
    }
  }
}

BOOL _MDPlistContainerValidateRootObjectFromBytes(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v18[0] = a2;
  v18[1] = 0;
  v18[2] = a1;
  v18[3] = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0uLL;
  MDPlistGetRootPlistObjectFromBuffer(v18, &v17, &v15, a3, a5, a6, a7, a8);
  result = 0;
  if (!v17)
  {
    v13 = v15;
    v14 = v16;
    __MDPlistContainerCopyObjectErrorCode(0, &v13, 0, &v17, v8, v9, v10, v11);
    return v17 == 0;
  }

  return result;
}

void *_MDStoreOIDArrayCreate(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = &__block_literal_global_1;
  }

  else
  {
    v4 = &__block_literal_global_43;
  }

  return _MDStoreOIDArrayCreateWithDeallocator(a1, a2, a3, v4);
}

void *_MDStoreOIDArrayCreateWithDeallocator(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v7 = __kMDStoreOIDArrayTypeID;
  if (__kMDStoreOIDArrayTypeID)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = _CFRuntimeRegisterClass();
    __kMDStoreOIDArrayTypeID = v7;
    if (a2)
    {
LABEL_3:
      Instance = _CFRuntimeCreateInstance();
      v9 = Instance;
      if (Instance)
      {
        *(Instance + 16) = a2;
        *(Instance + 32) = a3;
        *(Instance + 36) = a3;
        *(Instance + 24) = _Block_copy(a4);
      }

      return v9;
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___MDStoreOIDArrayCreateWithDeallocator_block_invoke;
  v11[3] = &__block_descriptor_tmp_1;
  v11[4] = v7;
  if (_MDStoreOIDArrayCreateWithDeallocator_once != -1)
  {
    dispatch_once(&_MDStoreOIDArrayCreateWithDeallocator_once, v11);
  }

  v9 = &_MDStoreOIDArrayCreateWithDeallocator_emptyValue;
  CFRetain(&_MDStoreOIDArrayCreateWithDeallocator_emptyValue);
  return v9;
}

uint64_t MDJournalReaderProcessRecordBatchWithBytes(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v13[5] = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3 <= a2)
  {
    if (a5)
    {
      v9 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __MDJournalReaderProcessRecordBatchWithBytes_block_invoke;
      v13[3] = &unk_1E7B25A78;
      v13[4] = a5;
      if (a4)
      {
LABEL_6:
        v10 = v12;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 0x40000000;
        v12[2] = __MDJournalReaderProcessRecordBatchWithBytes_block_invoke_2;
        v12[3] = &unk_1E7B25AA0;
        v12[4] = a4;
        return parse_mobile_journal(a1 + a3, a2, v9, 0, v10, 0, a7, a8);
      }
    }

    else
    {
      v9 = 0;
      if (a4)
      {
        goto LABEL_6;
      }
    }

    v10 = 0;
    return parse_mobile_journal(a1 + a3, a2, v9, 0, v10, 0, a7, a8);
  }

  return v8;
}

unint64_t v2_readVInt64_boundschecked(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  *a4 = 1;
  v4 = *a3;
  if (*a3 == a2)
  {
    return 0;
  }

  v7 = v4 + 1;
  v8 = (a1 + v4);
  v9 = *(a1 + v4);
  result = *(a1 + v4);
  if (v9 < 0)
  {
    v10 = v9;
    v11 = ~v4 + a2;
    if (v10 > 0xBF)
    {
      if (v10 > 0xDF)
      {
        if (v10 > 0xEF)
        {
          if (v10 > 0xF7)
          {
            if (v10 > 0xFB)
            {
              if (v10 > 0xFD)
              {
                if (v10 == 255)
                {
                  if (v11 >= 8)
                  {
                    result = *(a1 + v7);
                    v7 = v4 + 9;
                    goto LABEL_4;
                  }
                }

                else if (v11 >= 7)
                {
                  result = (*(a1 + v7) << 48) | (v8[2] << 40) | (v8[3] << 32) | (v8[4] << 24) | (v8[5] << 16) | (v8[6] << 8) | v8[7];
                  v7 = v4 + 8;
                  goto LABEL_4;
                }
              }

              else if (v11 >= 6)
              {
                result = ((result & 1) << 48) | (*(a1 + v7) << 40) | (v8[2] << 32) | (v8[3] << 24) | (v8[4] << 16) | (v8[5] << 8) | v8[6];
                v7 = v4 + 7;
                goto LABEL_4;
              }
            }

            else if (v11 >= 5)
            {
              result = ((result & 3) << 40) | (*(a1 + v7) << 32) | (v8[2] << 24) | (v8[3] << 16) | (v8[4] << 8) | v8[5];
              v7 = v4 + 6;
              goto LABEL_4;
            }
          }

          else if (v11 >= 4)
          {
            result = ((result & 7) << 32) | (*(a1 + v7) << 24) | (v8[2] << 16) | (v8[3] << 8) | v8[4];
            v7 = v4 + 5;
            goto LABEL_4;
          }
        }

        else if (v11 >= 3)
        {
          result = ((result & 0xF) << 24) | (*(a1 + v7) << 16) | (v8[2] << 8) | v8[3];
          v7 = v4 + 4;
          goto LABEL_4;
        }
      }

      else if (v11 >= 2)
      {
        result = ((result & 0x1F) << 16) | (*(a1 + v7) << 8) | v8[2];
        v7 = v4 + 3;
        goto LABEL_4;
      }
    }

    else if (v11)
    {
      v12 = *(a1 + v7) | ((result & 0x3F) << 8);
      v7 = v4 + 2;
      result = v12;
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  *a4 = 0;
  *a3 = v7;
  return result;
}

void _MDStoreOIDArrayApplyBlockParallel()
{
  OUTLINED_FUNCTION_0_2();
  v15 = *MEMORY[0x1E69E9840];
  v4 = qos_class_self();
  global_queue = dispatch_get_global_queue(v4, 0);
  v6 = dispatch_group_create();
  if (*(v0 + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 16);
  }

  if (v3 < v2)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(v7 + 8 * v3);
      if (WORD1(v9) - 4078 <= 0xFFFFFAEE)
      {
        break;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___MDStoreOIDArrayApplyBlockParallel_block_invoke;
      block[3] = &unk_1E7B25658;
      v10 = v9 + 1;
      v14 = WORD1(v9);
      block[4] = v1;
      block[5] = v7;
      block[6] = v3;
      block[7] = v10;
      v12 = HIDWORD(v9);
      v13 = v8;
      dispatch_group_async(v6, global_queue, block);
      ++v8;
      v3 += v10;
      if (v3 >= v2)
      {
        goto LABEL_9;
      }
    }

    CFShow(@"MDStoreOIDArrayApplyBlock encountered invalid opcode:");
    CFShow(v0);
  }

LABEL_9:
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v6);
}

CFMutableDictionaryRef copyCFDictionary(CFAllocatorRef allocator, __int128 *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __copyCFDictionary_block_invoke;
  v16[3] = &__block_descriptor_tmp_67;
  v16[4] = a4;
  v16[5] = allocator;
  v17 = a3;
  v16[6] = Mutable;
  v14 = *a2;
  v15 = *(a2 + 2);
  _MDPlistDictionaryIterateWithError(&v14, a4, v16, a4, a5, a6, a7, a8);
  return Mutable;
}

uint64_t __MDJournalReaderProcessRecordBatchWithBytes_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v13 = *a4;
  v14 = *(a4 + 2);
  v11 = *a5;
  v12 = *(a5 + 2);
  v9 = *a6;
  v10 = *(a6 + 2);
  v7(v6, a2, a3);
  return 1;
}

uint64_t _MDPlistNumberGetIntValue(uint64_t a1)
{
  v1 = (a1 + 16);
  v2 = *(a1 + 20);
  v3 = (a1 + 16);
  if ((v2 & 0xFE) != 0xE2)
  {
    v3 = (*a1 + *(a1 + 16));
  }

  result = 0;
  if (v2 <= 224)
  {
    if (v2 == 35)
    {
      return *v3;
    }

    else if (v2 == 51)
    {
      return *v3;
    }
  }

  else
  {
    switch(v2)
    {
      case 227:
        return *v3;
      case 226:
        return *v3;
      case 225:
        return *v1 != 0;
    }
  }

  return result;
}

uint64_t _MDPlistStringGetValue(uint64_t a1, void *a2, int *a3)
{
  if (a2)
  {
    *a2 = *(*a1 + *(a1 + 16)) - (*(a1 + 20) == 244);
  }

  if (a3)
  {
    if (*(a1 + 20) == 245)
    {
      v3 = 256;
    }

    else
    {
      v3 = 134217984;
    }

    *a3 = v3;
  }

  return *a1 + *(a1 + 16) + 4;
}

CFStringRef MDPropertyCopyUserTagName(CFStringRef theString, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  if (!Length)
  {
    return 0;
  }

  v5 = Length;
  location = CFStringFind(theString, @"\n", 0).location;
  if (location != -1)
  {
    v7 = location;
    if (location)
    {
      v12.location = 0;
      v12.length = location;
      v8 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v12);
      if (a2 && v7 + 2 == v5)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v5 - 1);
        if ((CharacterAtIndex - 49) <= 6)
        {
          *a2 = CharacterAtIndex - 48;
        }
      }

      return v8;
    }

    return 0;
  }

  return CFRetain(theString);
}

void term_expansions_release(uint64_t a1)
{
  if (a1)
  {
    v2 = atomic_load(a1);
    if (v2 != -1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
    {
      if (*(a1 + 4))
      {
        v3 = 0;
        do
        {
          free(*(*(a1 + 16) + 8 * v3++));
        }

        while (v3 < *(a1 + 4));
      }

      free(*(a1 + 16));

      free(a1);
    }
  }
}

void _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator_cold_1()
{
  OUTLINED_FUNCTION_0_1();

  dispatch_once(&qword_1ED6F3F60, &__block_literal_global_18);
}

CFTypeRef PBCopyCopyObjectCustomRetainCallback(uint64_t a1, const void *a2)
{
  if (pthread_getspecific(qword_1ED6F3F68))
  {
    return a2;
  }

  return CFRetain(a2);
}

void _MDLogForCategoryDefault_cold_1()
{

  dispatch_once(&_MDLogForCategoryDefault_onceToken, &__block_literal_global_3);
}

void PBCopyCopyObjectCustomReleaseCallback(uint64_t a1, const void *a2)
{
  if (!pthread_getspecific(qword_1ED6F3F68))
  {

    CFRelease(a2);
  }
}

uint64_t __tracing_dispatch_sync_block_invoke()
{
  v0 = si_tracing_current_span();
  *(v0 + 32) = *(v1 + 72);
  v2 = *(v1 + 56);
  *v0 = *(v1 + 40);
  *(v0 + 16) = v2;
  v3 = *(*(v1 + 32) + 16);

  return v3();
}

void tracing_dispatch_sync()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = si_tracing_current_span();
  v1 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __tracing_dispatch_sync_block_invoke;
  block[3] = &unk_1E7B255C8;
  block[4] = v2;
  dispatch_sync(v3, block);
}

void si_tracing_log_span_begin()
{
  if (init_once != -1)
  {
    si_tracing_log_span_begin_cold_1();
  }
}

void si_tracing_log_span_end(uint64_t result)
{
  if (result)
  {
    if (init_once != -1)
    {
      si_tracing_log_span_begin_cold_1();
    }
  }
}

CFDataRef _MDPlistContainerCopyRootObject(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v17 = 0;
  MDPlistGetRootPlistObjectFromBuffer((a2 + 32), 0, &v16, a3, a5, a6, a7, a8);
  v14 = v16;
  v15 = v17;
  return __MDPlistContainerCopyObjectErrorCode(a1, &v14, 0, 0, v9, v10, v11, v12);
}

uint64_t __MDPlistBytesAddObject(uint64_t a1, const __CFString *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (qword_1ED6F3F70 != -1)
  {
    v23 = a2;
    __MDPlistBytesAddObject_cold_1();
    a2 = v23;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *MEMORY[0x1E695E738];
  }

  v4 = CFGetTypeID(v3);
  if (v4 == qword_1ED6F3F78)
  {

    return _MDPlistBytesAddString(a1, v3);
  }

  if (v4 != qword_1ED6F3F80)
  {
    if (v4 == qword_1ED6F3F88)
    {
      context = a1;
      v26 = _MDPlistBytesBeginContainer(a1, 13);
      CFDictionaryApplyFunction(v3, dictionaryApplier, &context);
      if (v26)
      {
        return _MDPlistBytesEndDictionary(a1);
      }

      return 0;
    }

    if (v4 == qword_1ED6F3F90)
    {
      v10 = CFEqual(v3, *MEMORY[0x1E695E4D0]);

      return _MDPlistBytesAddBoolean(a1, v10);
    }

    if (v4 == qword_1ED6F3F98)
    {
      v11 = MEMORY[0x1B2747B00](v3);
      result = _MDPlistBytesAddRLETagRoom(a1, 0x86u, 1u);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v4 == qword_1ED6F3FA0)
      {
        BytePtr = CFDataGetBytePtr(v3);
        Length = CFDataGetLength(v3);

        return _MDPlistBytesAddData(a1, BytePtr, Length);
      }

      if (v4 == qword_1ED6F3FA8)
      {
        while (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
        {
          if (*(a1 + 80) >= 1)
          {

            return _MDPlistBytesAddRLETagRoom(a1, 0, 0);
          }

          v16 = *(a1 + 104);
          if (v16 + 8 < *(a1 + 112))
          {
            goto LABEL_42;
          }

          if (_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
          {
            v16 = *(a1 + 104);
LABEL_42:
            v17 = *MEMORY[0x1E69E9AC8];
            v18 = -*MEMORY[0x1E69E9AC8];
            if ((((v16 + 8) ^ v16) & v18) != 0 && (((v16 + 8) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
            {
              v19 = 16 << *MEMORY[0x1E69E9AC0];
              if (v19 >= 4 * v17)
              {
                madvise(((v17 - 1 + v16) & v18), v19, 3);
                v16 = *(a1 + 104);
              }
            }

            *v16 = 0x100000001;
            v13 = (v16 + 8);
            goto LABEL_30;
          }
        }

        return 0;
      }

      if (v4 != qword_1ED6F3FB0)
      {
        if (v4 == qword_1ED6F3FB8)
        {
          v20 = CFUUIDGetUUIDBytes(v3);

          return _MDPlistBytesAddUUID(a1, *&v20.byte0, *&v20.byte8);
        }

        else if (v4 == qword_1ED6F3FC0)
        {

          return __MDPlistBytesAddURL(a1, v3);
        }

        else if (v4 == qword_1ED6F3FC8)
        {

          return _MDPlistBytesAddPlistBytes(a1, v3);
        }

        else if (v4 == qword_1ED6F3FD0)
        {

          return _MDPlistBytesAddStoreOIDArray(a1, v3);
        }

        else
        {
          v24 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __MDPlistBytesAddObject_cold_2();
          }

          return _MDPlistBytesAddRLETagRoom(a1, 0, 0);
        }
      }

      if (!CFNumberIsFloatType(v3))
      {
        context = 0;
        CFNumberGetValue(v3, kCFNumberSInt64Type, &context);
        v21 = context;
        result = _MDPlistBytesAddRLETagRoom(a1, 0x84u, 1u);
        if (!result)
        {
          return result;
        }

        v22 = *(a1 + 104);
        *v22 = v21;
        v13 = v22 + 1;
LABEL_30:
        *(a1 + 104) = v13;
        return 1;
      }

      context = 0;
      CFNumberGetValue(v3, kCFNumberFloat64Type, &context);
      v11 = *&context;
      result = _MDPlistBytesAddRLETagRoom(a1, 0x85u, 1u);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(a1 + 104);
    *v12 = v11;
    v13 = v12 + 1;
    goto LABEL_30;
  }

  Count = CFArrayGetCount(v3);
  result = _MDPlistBytesBeginContainer(a1, 10);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      while (!result)
      {
        result = 0;
        if (Count == ++i)
        {
          goto LABEL_16;
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      result = __MDPlistBytesAddObject(a1, ValueAtIndex) != 0;
    }
  }

LABEL_16:
  if (result)
  {
    return _MDPlistBytesEndArray(a1);
  }

  return result;
}

BOOL _MDPlistBytesAddString(uint64_t a1, CFStringRef theString)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 80) <= 0)
  {
    *(a1 + 32) = 2577;
    v7 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddString_cold_2();
      return 0;
    }
  }

  else
  {
    Length = CFStringGetLength(theString);
    FastestEncoding = CFStringGetFastestEncoding(theString);
    v9 = 0;
    usedBufLen[0] = 0;
    if (FastestEncoding != 256 && FastestEncoding != 335544576 && FastestEncoding != 268435712)
    {
      v13.location = 0;
      v13.length = Length;
      CFStringGetBytes(theString, v13, 0x8000100u, 0x20u, 1u, 0, 0, usedBufLen);
      if (!addStringBytes(a1, 12, &v9, usedBufLen[0]))
      {
        __MDPlistBytesError(a1, "_MDPlistBytesAddString", "Encoding", 2621);
        return 0;
      }

      v14.location = 0;
      v14.length = Length;
      CFStringGetBytes(theString, v14, 0x8000100u, 0x20u, 1u, v9, usedBufLen[0], usedBufLen);
      return 1;
    }

    v11.location = 0;
    v11.length = Length;
    CFStringGetBytes(theString, v11, 0x100u, 0x20u, 1u, 0, 0, usedBufLen);
    if (addStringBytes(a1, 28, &v9, usedBufLen[0]))
    {
      v12.location = 0;
      v12.length = Length;
      CFStringGetBytes(theString, v12, 0x100u, 0x20u, 1u, v9, usedBufLen[0], usedBufLen);
      return 1;
    }

    if (*(a1 + 32))
    {
      return 0;
    }

    *(a1 + 32) = 2598;
    v8 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      _MDPlistBytesAddString_cold_1();
      return 0;
    }
  }

  return result;
}

BOOL _MDPlistBytesAddInternedCString(uint64_t a1, void *key, int a3)
{
  keya[1] = *MEMORY[0x1E69E9840];
  keya[0] = key;
  while (1)
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      return 0;
    }

    if (*(a1 + 80) <= 0)
    {
      *(a1 + 32) = 2659;
      v13 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (result)
      {
        _MDPlistBytesAddInternedCString_cold_2();
        return 0;
      }

      return result;
    }

    Value = CFDictionaryGetValue(*(a1 + 96), key);
    if (!Value)
    {
      break;
    }

    v7 = Value;
    v8 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
    *(*(a1 + 48) + 8 * v8) += 0x100000000;
    v9 = *(a1 + 104);
    if ((v9 + 1) < *(a1 + 112))
    {
      goto LABEL_9;
    }

    if (_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
    {
      v9 = *(a1 + 104);
LABEL_9:
      v10 = *MEMORY[0x1E69E9AC8];
      v11 = -*MEMORY[0x1E69E9AC8];
      if ((((v9 + 1) ^ v9) & v11) != 0 && (((v9 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v12 = 16 << *MEMORY[0x1E69E9AC0];
        if (v12 >= 4 * v10)
        {
          madvise(((v9 + v10 - 1) & v11), v12, 3);
          v9 = *(a1 + 104);
        }
      }

      *v9 = (v7 << 32) | 0x2000001;
      *(a1 + 104) = v9 + 1;
      return 1;
    }
  }

  if (a3 == -1)
  {
    v16 = strlen(key);
    v15 = addStringBytes(a1, 12, keya, v16);
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = addStringBytes(a1, 12, keya, a3);
    if (v15)
    {
LABEL_18:
      CFDictionarySetValue(*(a1 + 96), keya[0], v15);
      return 1;
    }
  }

  if (*(a1 + 32))
  {
    return 0;
  }

  *(a1 + 32) = 2667;
  v17 = _MDLogForCategoryDefault();
  result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _MDPlistBytesAddInternedCString_cold_1();
    return 0;
  }

  return result;
}

int *_MDPlistContainerAddBoolean(uint64_t a1, CFBooleanRef BOOLean, uint64_t a3)
{
  Value = CFBooleanGetValue(BOOLean);

  return _addInlineData(a1, 225, Value, a3, v6, v7, v8, v9);
}

void _MDPlistContainerAddURL(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 136);
  if (v8 <= 1)
  {
    _MDPlistContainerAddURL_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 144) + 24 * v8;
  if (*(v10 - 24) == 241 && (*(v10 - 20) & 1) == 0)
  {
    _MDPlistContainerAddURL_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  ++*(v10 - 20);
  v14 = *(a1 + 32);
  v15 = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
  if (!v15)
  {
    v22 = 1;
    if (!a3)
    {
      return;
    }

    goto LABEL_20;
  }

  v16 = CFURLGetBaseURL(a2);
  v17 = *MEMORY[0x1E695E480];
  if (v16)
  {
    v18 = CFURLCreateData(*MEMORY[0x1E695E480], v16, 0x8000100u, 0);
    v19 = CFURLCreateData(v17, a2, 0x8000100u, 0);
    if (v18)
    {
      v20 = 0;
      v21 = CFDataGetLength(v18) + 8;
      goto LABEL_14;
    }
  }

  else
  {
    v19 = CFURLCreateData(*MEMORY[0x1E695E480], a2, 0x8000100u, 0);
    v18 = 0;
  }

  v20 = 1;
  v21 = 8;
LABEL_14:
  v23 = CFDataGetLength(v19) + v21;
  v24 = MDPlistBufferConsume(a1, a1 + 32, v23 + 4);
  v22 = v24 == 0;
  if (v24)
  {
    v25 = v24;
    *v24 = v23;
    if (v20)
    {
      v24[1] = 0;
      v26 = (v24 + 2);
    }

    else
    {
      v24[1] = CFDataGetLength(v18);
      v27 = (v25 + 2);
      v31.length = CFDataGetLength(v18);
      v31.location = 0;
      CFDataGetBytes(v18, v31, v27);
      v26 = &v27[CFDataGetLength(v18)];
      CFRelease(v18);
    }

    *v26 = CFDataGetLength(v19);
    v32.length = CFDataGetLength(v19);
    v32.location = 0;
    CFDataGetBytes(v19, v32, v26 + 4);
  }

  CFRelease(v19);
  *v15 = v14;
  *(v15 + 4) = -9;
  if (a3)
  {
LABEL_20:
    if (v15)
    {
      v28 = v22;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      v29 = &gNullObjectReference;
    }

    else
    {
      v29 = v15;
    }

    v30 = *v29;
    *(a3 + 4) = *(v29 + 4);
    *a3 = v30;
  }
}

_DWORD *_MDPlistContainerAddDoubleValue(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[1] = *MEMORY[0x1E69E9840];
  *v10 = a3;
  return _addGenericData(a1, 1, 51, v10, 8uLL, a2, a8, a9);
}

CFURLRef copyCFURL(CFAllocatorRef allocator, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (*a2 + *(a2 + 16));
  v9 = *v8;
  if (v9 <= 7)
  {
    copyCFURL_cold_3(allocator, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(v8 + 1);
  if (v10 + 8 > v9)
  {
    copyCFURL_cold_2(allocator, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = allocator;
  v12 = v8 + 8;
  if (v10)
  {
    allocator = CFURLCreateWithBytes(allocator, v8 + 8, *(v8 + 1), 0x8000100u, 0);
    v13 = allocator;
    v12 += v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = *v12;
  if (v10 + 8 + v14 > v9)
  {
    copyCFURL_cold_1(allocator, a2, v14, a4, a5, a6, a7, a8);
  }

  v15 = CFURLCreateWithBytes(v11, v12 + 4, v14, 0x8000100u, v13);
  if (v13)
  {
    CFRelease(v13);
  }

  return v15;
}

uint64_t icu_search_context_is_fuzzy(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 69);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

_MDPlistBytes *_MDPlistBytesCreate(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v7 = [_MDPlistBytes alloc];
    if (a4)
    {
      v8 = &__block_literal_global_108;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(_MDPlistBytes *)v7 initWithByteVector:a2 count:a3 trusted:0 deallocator:v8];
    v10 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    return v10;
  }

  else
  {
    if (qword_1ED6F3FE0 != -1)
    {
      +[_MDPlistBytes enumerateObjectsFromPlistBytes:count:shouldDeallocate:usingBlock:];
    }

    v12 = qword_1ED6F3FD8;

    return CFRetain(v12);
  }
}

BOOL __MDPlistBytesValidate(uint64_t a1)
{
  *&v28[5] = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 8) + 8);
  *(a1 + 40) = v2;
  v3 = *(a1 + 16) >> 3;
  while (1)
  {
    v4 = *v2;
    v3 += ~*v2;
    if (v3 < 0)
    {
LABEL_49:
      result = 0;
      *(a1 + 32) = 575;
      return result;
    }

    v5 = HIDWORD(v4);
    if (SHIDWORD(v4) >= v4 || SHIDWORD(v4) < 2)
    {
      v7 = 474;
LABEL_20:
      *(a1 + 32) = v7;
      goto LABEL_21;
    }

    v8 = v2[v5];
    if ((v8 & 0xFF000000) != 0x88000000)
    {
      v7 = 481;
      goto LABEL_20;
    }

    v9 = v8 & 0xFFFFFF;
    if ((v8 & 0xFFFFFF) + HIDWORD(v4) != v4)
    {
      v7 = 487;
      goto LABEL_20;
    }

    v26 = v2[v5];
    Mutable = CFSetCreateMutable(0, 0, 0);
    v11 = *(a1 + 40);
    v12 = 1;
    do
    {
      v13 = *(v11 + 8 * v12) & 0xFFFFFF;
      if (!v13)
      {
        break;
      }

      CFSetAddValue(Mutable, v12);
      v11 = *(a1 + 40);
      v14 = *(v11 + 8 * v12);
      if ((v14 & 0xFF000000) == 0x2000000)
      {
        v15 = 502;
        if (v14 < 0 || v9 <= SHIDWORD(v14))
        {
          goto LABEL_43;
        }
      }

      v12 += v13;
    }

    while (v12 < SHIDWORD(v4));
    if (v12 == HIDWORD(v4))
    {
      if (v9 >= 2)
      {
        v17 = v26 & 0xFFFFFF;
        v18 = &v2[v5 - 1 + v17];
        for (i = v17 + 1; i > 2; --i)
        {
          v21 = *v18--;
          v20 = v21;
          v22 = v21 & 0xFF000000;
          if (BYTE3(v21) < 3u || v22 == -2013265920)
          {
            v15 = 523;
            goto LABEL_43;
          }

          if ((v20 & 0xFFFFFF) < SHIDWORD(v4))
          {
            if (!CFSetContainsValue(Mutable, (v20 & 0xFFFFFF)))
            {
              v15 = 534;
              goto LABEL_43;
            }
          }

          else
          {
            if (HIDWORD(v20))
            {
              v24 = 0;
            }

            else
            {
              v24 = (v20 & 0xFFFFFF) <= SHIDWORD(v4);
            }

            if (!v24)
            {
              v15 = 540;
              goto LABEL_43;
            }
          }
        }
      }

      CFRelease(Mutable);
      goto LABEL_23;
    }

    v15 = 510;
LABEL_43:
    *(a1 + 32) = v15;
    if (Mutable)
    {
      CFRelease(Mutable);
      if (!*(a1 + 32))
      {
        v7 = 551;
        goto LABEL_20;
      }
    }

LABEL_21:
    v16 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __MDPlistBytesValidate_cold_1(buf, v28, v16);
    }

LABEL_23:
    if (!v3)
    {
      return *(a1 + 32) == 0;
    }

    v2 = (*(a1 + 40) + 8 * v4 + 8);
    *(a1 + 40) = v2;
    if (v2 - *(a1 + 8) >= *(a1 + 16) - 8 || *(a1 + 32))
    {
      goto LABEL_49;
    }
  }
}

__CFString *_MDPlistBytesCopyPlistAtIndex(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];

  return _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(v4, a1, a2, &_kMDPlistBytesDeserializationCallbacks, 0);
}

_DWORD *_MDPlistContainerAddInt64Value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  return _addGenericData(a1, 1, 35, v9, 8uLL, a3, a7, a8);
}

int *_MDPlistContainerAddNullValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return _addInlineData(a1, 224, 0, a2, a5, a6, a7, a8);
}

uint64_t _SILogForLogForCategory(int a1)
{
  if (_SILogForLogForCategory_onceToken != -1)
  {
    dispatch_once(&_SILogForLogForCategory_onceToken, &__block_literal_global_120);
  }

  return gSILogArray[a1];
}

void storageWindowsClose(atomic_uint **a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(10);
    v5 = 2 * (dword_1EB7ABB10 < 4);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = a1[1];
      v7 = a1[2] * 100.0 / v6;
      v9[0] = 67109376;
      v9[1] = v6 >> 10;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_1B238B000, v4, v5, "Memsize: %uKB %f%% used", v9, 0x12u);
    }

    *__error() = v3;
    fd_release(v2);
  }

  v8 = a1[5];
  if (v8)
  {
    _Block_release(v8);
    a1[5] = 0;
  }
}

void storageWindowsInit(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, char a6, void *aBlock)
{
  *(a1 + 36) = a5;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 1;
  *(a1 + 37) = a6;
  if (aBlock)
  {
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = 26;

  bzero((a1 + 56), 0x1000uLL);
}

void storageWindowRelease(atomic_uint **a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      v3 = *(v2 + 4);
      if (v3)
      {
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 0x40000000;
        v4[2] = __storageWindowDestroy_block_invoke;
        v4[3] = &__block_descriptor_tmp_18;
        v4[4] = v2;
        (*(v3 + 16))(v3, v4);
      }

      else
      {
        storageWindowDestroyImmediate(v2);
      }
    }

    *a1 = 0;
  }
}

void storageWindowsUnmap(_DWORD *result)
{
  v1 = result[8];
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = result + 14;
    do
    {
      v5 = *&v4[2 * v3];
      if (v5)
      {
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          storageWindowDestroyImmediate(v5);
        }

        *&v4[2 * v3] = 0;
        v1 = result[8];
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void *storageWindowSync(void *result, int a2)
{
  if (result)
  {
    v2 = result;
    result = result[1];
    if (result)
    {
      if ((v2[5] & 1) == 0)
      {
        v5 = v2 + 2;
        v3 = v2[2];
        v4 = v5[1];
        if (a2)
        {
          v6 = 1;
        }

        else
        {
          v6 = 16;
        }

        return fd_msync(result, v4 - v3, v6, 1);
      }
    }
  }

  return result;
}

int *storageWindowsSync(int *result, int a2)
{
  if (result[8] >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result + 14;
    do
    {
      result = storageWindowSync(*&v5[2 * v4++], a2);
    }

    while (v4 < v3[8]);
  }

  return result;
}

uint64_t _windowsMapInit(unsigned int *inited, int a2, int a3)
{
  v6 = 0;
  v7 = 0;
  v8 = inited + 14;
  while (1)
  {
    v9 = *(inited + 1);
    if (v7 >= v9)
    {
      break;
    }

    v10 = *&v8[2 * v6];
    v11 = *(inited + 48);
    v12 = 1 << v11;
    if (v6)
    {
      if (v9 <= (v11 > 1))
      {
        _windowsMapInit_cold_1();
      }

      inited[8] = v6 + 1;
      if (v9 <= v12)
      {
        _windowsMapInit_cold_2();
      }

      v7 = (v6 + 1) << v11;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v9 >= v12)
      {
        v9 = 1 << v11;
      }

      if (*(inited + 37))
      {
        v7 = 1 << v11;
      }

      else
      {
        v7 = v9;
      }

      inited[8] = 1;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v13 = *(inited + 36);
    v14 = *(inited + 5);
    v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
    atomic_store(1u, v10);
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    *(v10 + 40) = v13;
    *(v10 + 3) = 0;
    *(v10 + 4) = v14;
    *&v8[2 * v6] = v10;
    __dmb(0xBu);
LABEL_8:
    if (!*(v10 + 1))
    {
      _initWindow(v10, inited, v6 << v11, v7, a2, a3);
    }

    if (++v6 == 512)
    {
      v9 = *(inited + 1);
      break;
    }
  }

  if (v9 <= 1 << *(inited + 48) && inited[8] >= 2)
  {
    _windowsMapInit_cold_3();
  }

  return 1;
}

BOOL _initWindow(void *inited, uint64_t *a2, unint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = inited[2];
  if (v6)
  {
    v7 = v6 == a3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 || inited[1])
  {
    _initWindow_cold_1();
  }

  if (*(a2 + 37) == 1 && !((a4 - a3) >> *(a2 + 48)))
  {
    _initWindow_cold_3();
  }

  inited[2] = a3;
  if (a2[1] < a3)
  {
    _initWindow_cold_2();
  }

  v12 = *MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= ((*MEMORY[0x1E69E9AC8] + ((a4 - a3) >> 5) - 1) & -*MEMORY[0x1E69E9AC8]))
  {
    v12 = (*MEMORY[0x1E69E9AC8] + ((a4 - a3) >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
  }

  v13 = v12 + a4;
  inited[3] = v13;
  v14 = *a2;
  v15 = v13 - a3;
  if (*(a2 + 36))
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  if (a6)
  {
    v17 = 1;
  }

  else
  {
    v17 = 1025;
  }

  v18 = fd_mmap(v14, v15, v16, v17, a3);
  inited[1] = v18;
  if (v18 == -1)
  {
    v19 = *__error();
    inited[1] = 0;
    if (a5)
    {
      if (v19 != 1)
      {
        v20 = mmap(0, 4uLL, 0, 4098, -50331648, 0);
        inited[1] = v20;
        if (v20 == -1)
        {
          __message_assert("%s:%u: failed assertion '%s' %s mmap(%p, offset: %llx, size: %lld) error:%d, fSize:%lld", "storage_window.c", 399, "false", "", a2, 0, inited[3] - inited[2], v19, a2[2]);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        *(inited + 1) = xmmword_1B23E0AE0;
        *v20 = 1;
      }
    }
  }

  return v18 != -1;
}

void __message_assert(char *a1, ...)
{
  va_start(va, a1);
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  va_copy(&v1[1], va);
  vasprintf(v1, a1, va);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v3 = v1[0];
    _os_log_error_impl(&dword_1B238B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v1[0]);
}

uint64_t _moveWindowsInner(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4, __n128 a5, uint64_t a6, char a7)
{
  *(&v91[1] + 4) = *MEMORY[0x1E69E9840];
  v11 = a1 + 56;
  v12 = a3 + a2;
  v13 = MEMORY[0x1E69E9AC8];
  v14 = MEMORY[0x1E69E9AB8];
  a4.n128_u64[0] = 134219520;
  a5.n128_u64[0] = 134217984;
LABEL_2:
  v15 = a2 >> *(a1 + 48);
  if ((a7 & 1) == 0)
  {
    if (a2 && *(a1 + 16) <= a2)
    {
      __message_assert("%s:%u: failed assertion '%s' %s offset: 0x%llx, freeRegion: 0x%llx", a4.n128_f64[0], a5.n128_f64[0]);
      goto LABEL_91;
    }

    if (v15 < *(a1 + 32))
    {
      v16 = *(v11 + 8 * v15);
      if (v16)
      {
        v17 = v16[1];
        if ((v17 + 1) >= 2)
        {
          v18 = v16[2];
          if (v18 <= a2 && v16[3] >= v12)
          {
            return v17 + a2 - v18;
          }
        }
      }
    }
  }

  v81 = (*v13 + *(a1 + 8)) & ~*v14;
  v80 = v15 + 1;
  lock = (&windowLock + 4 * v15);
  v78 = a4;
  v79 = a5;
  while (1)
  {
    if (v15 >= *(a1 + 32))
    {
      v53 = *__error();
      v54 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v79.n128_u32[0];
        *&buf[4] = v15;
        _os_log_impl(&dword_1B238B000, v54, OS_LOG_TYPE_DEFAULT, "3: %lld", buf, 0xCu);
      }

      *__error() = v53;
      v55 = *(a1 + 32);
      if (v15 >= v55)
      {
        v56 = v55;
        do
        {
          os_unfair_lock_lock(&windowLock + v56);
          if (v55 == *(a1 + 32))
          {
            if (!*(v11 + 8 * v56))
            {
              v57 = *(a1 + 36);
              v75 = *(a1 + 40);
              v58 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
              atomic_store(1u, v58);
              *(v58 + 1) = 0;
              *(v58 + 2) = 0;
              *(v58 + 40) = v57;
              *(v58 + 3) = 0;
              *(v58 + 4) = v75;
              v59 = *(a1 + 48);
              v60 = (*MEMORY[0x1E69E9AC8] + ((1 << v59) >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
              v61 = v15 << v59;
              v62 = v80 << v59;
              if (*MEMORY[0x1E69E9AC8] > v60)
              {
                v60 = *MEMORY[0x1E69E9AC8];
              }

              *(v58 + 2) = v61;
              *(v58 + 3) = v60 + v62;
              *(v11 + 8 * v56) = v58;
              v55 = *(a1 + 32);
            }

            *(a1 + 32) = v55 + 1;
          }

          os_unfair_lock_unlock(&windowLock + v56);
          v55 = *(a1 + 32);
          v56 = v55;
        }

        while (v15 >= v55);
      }

      v34 = *(v11 + 8 * v15);
      if (!v34[2])
      {
        v34[2] = v15 << *(a1 + 48);
      }

      v35 = (&windowLock + 4 * v15);
    }

    else
    {
      if (dword_1EB7ABB10 >= 5)
      {
        _moveWindowsInner_cold_1(v90, v15, v91);
      }

      v19 = *(v11 + 8 * v15);
      if (v19)
      {
        v17 = v19[1];
        if ((v17 + 1) >= 2)
        {
          v18 = v19[2];
          if (v18 <= a2 && v19[3] >= v12 && !((*(a1 + 8) < v12) | a7 & 1))
          {
            return v17 + a2 - v18;
          }
        }

        v20 = v19[3] - v19[2];
      }

      else
      {
        v20 = 0;
        v17 = 0;
      }

      os_unfair_lock_lock(lock);
      v29 = *(v11 + 8 * v15);
      if (v29)
      {
        v30 = v29[1];
        if ((v30 + 1) >= 2)
        {
          v45 = v29[2];
          v44 = v29[3];
          if (v20 != v44 - v45 || v20 >> *(a1 + 48) || v17 != v30 || v45 <= a2 && v44 >= v12 && *(a1 + 8) >= v12)
          {
            os_unfair_lock_unlock(lock);
            a7 = 0;
            v13 = MEMORY[0x1E69E9AC8];
            v14 = MEMORY[0x1E69E9AB8];
            a4 = v78;
            a5 = v79;
            goto LABEL_2;
          }

          if (*(a1 + 37) == 1)
          {
            si_analytics_log(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v45, v44, a2, a3);
          }
        }
      }

      v31 = *(a1 + 36);
      v32 = *(a1 + 40);
      v33 = malloc_type_calloc(1uLL, 0x30uLL, 0x10800408BF3291EuLL);
      v34 = v33;
      atomic_store(1u, v33);
      v33[1] = 0;
      v33[2] = 0;
      *(v33 + 40) = v31;
      v33[3] = 0;
      v33[4] = v32;
      if (v15)
      {
        v33[2] = v15 << *(a1 + 48);
      }

      v35 = (&windowLock + 4 * v15);
      if (v12)
      {
        v36 = *(a1 + 48);
        v37 = 1 << v36;
        v38 = v80 << v36;
        v39 = (*MEMORY[0x1E69E9AC8] + (v37 >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
        if (*MEMORY[0x1E69E9AC8] > v39)
        {
          v39 = *MEMORY[0x1E69E9AC8];
        }

        v40 = v39 + v38;
        v33[3] = v40;
        if (v40 > *(a1 + 8))
        {
          if (dword_1EB7ABB10 >= 5)
          {
            _moveWindowsInner_cold_2(v88, v33 + 3, &v89);
          }

          if (*(a1 + 37))
          {
            v41 = *(a1 + 48);
            v42 = 1 << v41;
            v43 = v80 << v41;
          }

          else
          {
            v42 = *(a1 + 8);
            v43 = v42;
          }

          v46 = (*MEMORY[0x1E69E9AC8] + (v42 >> 5) - 1) & -*MEMORY[0x1E69E9AC8];
          if (*MEMORY[0x1E69E9AC8] > v46)
          {
            v46 = *MEMORY[0x1E69E9AC8];
          }

          v34[3] = v46 + v43;
        }
      }

      if (!v34[2])
      {
        v34[2] = v15 << *(a1 + 48);
      }

      *buf = *(v11 + 8 * v15);
      *(v11 + 8 * v15) = v34;
      storageWindowRelease(buf);
      os_unfair_lock_unlock(lock);
      a7 = 0;
    }

    os_unfair_lock_lock(v35);
    v47 = v34[2];
    if (!v47)
    {
      v47 = v15 << *(a1 + 48);
      v34[2] = v47;
    }

    v48 = v34[3];
    if (!v48)
    {
      if ((*(a1 + 37) & 1) != 0 || v15)
      {
        v48 = v80 << *(a1 + 48);
      }

      else
      {
        v48 = *(a1 + 8);
      }

      v34[3] = v48;
    }

    if (*(a1 + 36))
    {
      v49 = 1;
    }

    else
    {
      v49 = 3;
    }

    v34[1] = fd_mmap(*a1, v48 - v47, v49, 1025, v47);
    v50 = v34 + 1;
    v51 = __error();
    v52 = *v51;
    if (dword_1EB7ABB10 >= 5)
    {
      v77 = *v51;
      v76 = *__error();
      log = _SILogForLogForCategory(10);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v34[1];
        v64 = v34[2];
        v65 = v34[3] - v64;
        *buf = v78.n128_u32[0];
        *&buf[4] = a1;
        v84 = 2048;
        *v85 = v34;
        *&v85[8] = 2048;
        *&v85[10] = v63;
        *&v85[18] = 2048;
        *&v85[20] = v64;
        *&v85[28] = 2048;
        *&v85[30] = v65;
        *&v85[38] = 2048;
        *v86 = a2;
        *&v86[8] = 2048;
        v87 = v12;
        _os_log_impl(&dword_1B238B000, log, OS_LOG_TYPE_DEFAULT, "mmap (%p/%p) %p 0x%llx-0x%llx (0x%llx-0x%llx)", buf, 0x48u);
      }

      *__error() = v76;
      v52 = v77;
    }

    if (*v50 != -1)
    {
      goto LABEL_88;
    }

    *v50 = 0;
    v34[2] = 0;
    v34[3] = 0;
    if (v52 != 12 || v81 < 0x200000)
    {
      break;
    }

    v81 >>= 1;
    os_unfair_lock_unlock(lock);
  }

  if (!v52)
  {
    goto LABEL_88;
  }

  v66 = v52;
  v67 = *__error();
  v68 = _SILogForLogForCategory(10);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    v73 = *(a1 + 16);
    *buf = 136316674;
    *&buf[4] = "_moveWindowsInner";
    v84 = 1024;
    *v85 = 719;
    *&v85[4] = 2048;
    *&v85[6] = a1;
    *&v85[14] = 2048;
    *&v85[16] = a2;
    *&v85[24] = 2048;
    *&v85[26] = a3;
    *&v85[34] = 1024;
    *&v85[36] = v66;
    *v86 = 2048;
    *&v86[2] = v73;
    _os_log_error_impl(&dword_1B238B000, v68, OS_LOG_TYPE_ERROR, "%s:%d: mmap(%p, offset: %llx, size: %ld) error:%d, fSize:%lld", buf, 0x40u);
  }

  *__error() = v67;
  v69 = mmap(0, 4uLL, 0, 4098, -50331648, 0);
  *v50 = v69;
  if (v69 == -1)
  {
    __message_assert("%s:%u: failed assertion '%s' %s mmap(%p, offset: %llx, size: %ld) error:%d, fSize:%lld", v70, v71, "storage_window.c", 730);
LABEL_91:
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  *(v34 + 1) = xmmword_1B23E0AE0;
  *v69 = 1;
LABEL_88:
  os_unfair_lock_unlock(lock);
  v17 = v34[1];
  v18 = v34[2];
  return v17 + a2 - v18;
}

void si_analytics_log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8[2] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "Deallocating window for stable mapping %p (%p %lld %lld) (%lld  %zu)", va);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    si_analytics_log_cold_1(v8);
  }

  free(v8[0]);
}

uint64_t _storageWindowsExpandBacking(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = 1 << *(a1 + 48);
  if (v3 <= v4 && *(a1 + 8) >= 2)
  {
    _storageWindowsExpandBacking_cold_1();
  }

  v5 = a1[2] + a2;
  if (v3 >> 30)
  {
    if (v5 + 1 > v3 + 0x40000000)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = v3 + 0x40000000;
    }

    v7 = ((v6 + ~v3) & 0xFFFFFFFFC0000000) + 0x40000000;
  }

  else
  {
    v8 = 4096;
    if (v3)
    {
      v8 = a1[1];
    }

    do
    {
      v7 = v8;
      v9 = v8 + v3;
      v8 *= 2;
    }

    while (v5 >= v9);
  }

  LODWORD(v10) = *(a1 + 8);
  if (v10)
  {
    v11 = a1[7];
    if (v11)
    {
      v12 = *(v11 + 8);
      if (v10 >= 1 && v12 != 0)
      {
        v14 = 0;
        do
        {
          storageWindowSync(a1[v14++ + 7], 1);
          v10 = *(a1 + 8);
        }

        while (v14 < v10);
        v3 = a1[1];
        v4 = 1 << *(a1 + 48);
      }
    }

    if (v3 <= v4 && v10 >= 2)
    {
      _storageWindowsExpandBacking_cold_2();
    }
  }

  *__error() = 0;
  if (v7 && (v15 = a1[1] + v7, v15 >= v5))
  {
    v16 = "unknown";
    while (1)
    {
      v17 = *a1;
      if (fd_truncate(*a1, v15) != -1)
      {
        a1[1] = v15;
        return 1;
      }

      v18 = *__error();
      v19 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = v16;
        if (v17)
        {
          v16 = fd_name_ptr(v17);
        }

        v23 = *__error();
        *buf = 136316162;
        v29 = "_storageWindowsExpandBacking";
        v30 = 1024;
        v31 = 840;
        v32 = 2080;
        v33 = v16;
        v34 = 2048;
        v35 = v15;
        v36 = 1024;
        v37 = v23;
        _os_log_error_impl(&dword_1B238B000, v19, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate %s (%lld) error:%d", buf, 0x2Cu);
        v16 = v22;
      }

      *__error() = v18;
      if (*__error() != 28)
      {
        return 0;
      }

      v20 = *__error();
      v21 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v29 = "_storageWindowsExpandBacking";
        v30 = 1024;
        v31 = 843;
        v32 = 2048;
        v33 = v7 >> 1;
        _os_log_error_impl(&dword_1B238B000, v21, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate(%lld) growing size", buf, 0x1Cu);
      }

      *__error() = v20;
      if (v7 >= 2)
      {
        v15 = a1[1] + (v7 >> 1);
        v7 >>= 1;
        if (v15 >= v5)
        {
          continue;
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
LABEL_36:
    bzero(buf, 0x400uLL);
    v24 = *__error();
    v25 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      _storageWindowsExpandBacking_cold_3(a1, buf);
    }

    v26 = __error();
    result = 0;
    *v26 = v24;
  }

  return result;
}

void _release_read_window(OSQueueHead *__list, void *__new)
{
  if (__new && atomic_fetch_add(__new + 2, 0xFFFFFFFF) == 1)
  {
    for (i = 73; i != 585; ++i)
    {
      v5 = *(__new + i);
      if (v5)
      {
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          storageWindowDestroyImmediate(v5);
        }

        *(__new + i) = 0;
      }
    }

    OSAtomicEnqueue(__list, __new, 0);
  }
}

uint64_t storageWindowsAlloc(void *a1, unsigned int a2)
{
  result = a1[2];
  v4 = result + a2;
  if (v4 < a1[1])
  {
    goto LABEL_2;
  }

  v5 = a2;
  if (_storageWindowsExpandBacking(a1, a2))
  {
    result = a1[2];
    v4 = result + v5;
LABEL_2:
    a1[2] = v4;
    return result;
  }

  return 0;
}

void __storageWindowDestroy_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);

  storageWindowDestroyImmediate(v1);
}

void storageWindowDestroyImmediate(void *a1)
{
  v2 = a1[1];
  if (v2 + 1 >= 2)
  {
    munmap(v2, a1[3] - a1[2]);
  }

  free(a1);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

void __message_assert_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s ", va);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = v8[0];
    _os_log_error_impl(&dword_1B238B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v8[0]);
}

uint64_t *storage_array_HeaderStore(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[5] < a1[6])
  {
    storage_array_HeaderStore_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = a1[1];
  v11 = *a2;
  if (v10 >> 28)
  {
    *v11 = v10 | 0x80;
    v11[1] = (v10 >> 7) | 0x80;
    v11[2] = (v10 >> 14) | 0x80;
    v11[3] = (v10 >> 21) | 0x80;
    v11[4] = v10 >> 28;
    v12 = 5;
  }

  else if (v10 >= 0x200000)
  {
    *v11 = v10 | 0x80;
    v11[1] = (v10 >> 7) | 0x80;
    v11[2] = (v10 >> 14) | 0x80;
    v11[3] = v10 >> 21;
    v12 = 4;
  }

  else if (v10 >= 0x4000)
  {
    *v11 = v10 | 0x80;
    v11[1] = (v10 >> 7) | 0x80;
    v11[2] = v10 >> 14;
    v12 = 3;
  }

  else if (v10 >= 0x80)
  {
    *v11 = v10 | 0x80;
    v11[1] = v10 >> 7;
    v12 = 2;
  }

  else
  {
    *v11 = v10;
    v12 = 1;
  }

  *a2 += v12;
  storeVInt64(a2, a1[6]);
  storeVInt64(a2, a1[5]);
  v13 = a1[2];

  return storeVInt64(a2, v13);
}

uint64_t *storeVInt64(uint64_t *result, unint64_t a2)
{
  v2 = *result;
  if (HIDWORD(a2))
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      *v2 = a2 | 0x80;
      v5 = vdupq_n_s64(a2);
      v5.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v5, xmmword_1B23E0B10), vshlq_u64(v5, xmmword_1B23E0B00))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = (a2 >> 49) | 0x80;
      *(v2 + 8) = HIBYTE(a2);
      *(v2 + 9) = 1;
      v3 = 10;
    }

    else if (HIBYTE(a2))
    {
      *v2 = a2 | 0x80;
      v6 = vdupq_n_s64(a2);
      v6.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_1B23E0B10), vshlq_u64(v6, xmmword_1B23E0B00))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v6.i8, *v6.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = (a2 >> 49) | 0x80;
      *(v2 + 8) = HIBYTE(a2);
      v3 = 9;
    }

    else if (a2 >> 49)
    {
      *v2 = a2 | 0x80;
      v7 = vdupq_n_s64(a2);
      v7.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v7, xmmword_1B23E0B10), vshlq_u64(v7, xmmword_1B23E0B00))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
      *(v2 + 5) = (a2 >> 35) | 0x80;
      *(v2 + 6) = (a2 >> 42) | 0x80;
      *(v2 + 7) = a2 >> 49;
      v3 = 8;
    }

    else
    {
      *v2 = a2 | 0x80;
      v4 = vdupq_n_s64(a2);
      v4.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1B23E0B10), vshlq_u64(v4, xmmword_1B23E0B00))) | 0x80008000800080;
      *(v2 + 1) = vuzp1_s8(*v4.i8, *v4.i8).u32[0];
      if (a2 >> 42)
      {
        *(v2 + 5) = (a2 >> 35) | 0x80;
        *(v2 + 6) = a2 >> 42;
        v3 = 7;
      }

      else
      {
        *(v2 + 5) = a2 >> 35;
        v3 = 6;
      }
    }
  }

  else if (a2 >> 28)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = (a2 >> 14) | 0x80;
    *(v2 + 3) = (a2 >> 21) | 0x80;
    *(v2 + 4) = a2 >> 28;
    v3 = 5;
  }

  else if (a2 >= 0x200000)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = (a2 >> 14) | 0x80;
    *(v2 + 3) = a2 >> 21;
    v3 = 4;
  }

  else if (a2 >= 0x4000)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = (a2 >> 7) | 0x80;
    *(v2 + 2) = a2 >> 14;
    v3 = 3;
  }

  else if (a2 >= 0x80)
  {
    *v2 = a2 | 0x80;
    *(v2 + 1) = a2 >> 7;
    v3 = 2;
  }

  else
  {
    *v2 = a2;
    v3 = 1;
  }

  *result += v3;
  return result;
}

uint64_t storage_array_HeaderRestore(void *a1, char **a2, int a3)
{
  if (a3)
  {
    bzero(a1, 0x1088uLL);
  }

  v5 = *a2;
  v6 = **a2;
  if ((**a2 & 0x80000000) == 0)
  {
    v7 = 1;
LABEL_12:
    v12 = &v5[v7];
    *a2 = v12;
    *(a1 + 1) = v6;
    goto LABEL_13;
  }

  v8 = v5[1];
  if ((v5[1] & 0x80000000) == 0)
  {
    v6 = v6 & 0x7F | (v8 << 7);
    v7 = 2;
    goto LABEL_12;
  }

  v9 = v5[2];
  if ((v5[2] & 0x80000000) == 0)
  {
    v10 = ((v8 & 0x7F) << 7) | (v9 << 14) | v6 & 0x7F;
    v7 = 3;
LABEL_11:
    v6 = v10;
    goto LABEL_12;
  }

  v11 = v5[3];
  if ((v5[3] & 0x80000000) == 0)
  {
    v10 = ((v9 & 0x7F) << 14) | (v11 << 21) | ((v8 & 0x7F) << 7) | v6 & 0x7F;
    v7 = 4;
    goto LABEL_11;
  }

  v33 = v5[4];
  v12 = (v5 + 5);
  *a2 = v12;
  *(a1 + 1) = ((v11 & 0x7F) << 21) | (v33 << 28) | ((v9 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | v6 & 0x7F;
  if (v33 < 0)
  {
LABEL_13:
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *v12++;
      v14 |= (v15 & 0x7F) << v13;
      if ((v15 & 0x80) == 0)
      {
        break;
      }

      v16 = v13 == 63;
      v13 += 7;
    }

    while (!v16);
    *a2 = v12;
    v17 = setWindowsFreeRegion(a1 + 32, v14);
    v25 = 0;
    v26 = 0;
    v27 = *a2;
    do
    {
      v28 = *v27++;
      v26 |= (v28 & 0x7F) << v25;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v16 = v25 == 63;
      v25 += 7;
    }

    while (!v16);
    *a2 = v27;
    *(a1 + 5) = v26;
    if (v26 < *(a1 + 6))
    {
      storage_array_HeaderRestore_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *v27++;
      v30 |= (v31 & 0x7F) << v29;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v16 = v29 == 63;
      v29 += 7;
    }

    while (!v16);
    *a2 = v27;
    *(a1 + 2) = v30;
    return 1;
  }

  v34 = *__error();
  v35 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    storage_array_HeaderRestore_cold_1();
  }

  v36 = __error();
  result = 0;
  *v36 = v34;
  return result;
}

uint64_t storage_array_ReadInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(a1 + 32) = a2;
  v11 = a1 + 32;
  v12 = a1 + 4096;
  v13 = malloc_type_malloc(0xD0uLL, 0x1020040167D79A3uLL);
  *(v11 + 4192) = v13;
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v13[6] = 0u;
  v13[7] = 0u;
  v13[8] = 0u;
  v13[9] = 0u;
  v13[10] = 0u;
  v13[11] = 0u;
  *(v13 + 24) = 0;
  pthread_rwlock_init(*(v11 + 4192), 0);
  *(*(v11 + 4192) + 200) = 0;
  *(v12 + 92) = 1;
  *(v12 + 94) = 0;
  *(v11 - 24) = a5;
  *(v11 - 16) = a3;
  storageWindowsInit(v11, a2, a4, a6, 1, 0, 0);

  return setWindowsFreeRegion(v11, a4);
}

uint64_t storage_array_Init(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10, void *aBlock, uint64_t a12)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    storage_array_Init_cold_4(a1, a2, a3, 0, a5, a6, a7, a8);
  }

  v12 = a8;
  v13 = a7;
  v14 = a6;
  bzero(a1, 0x1088uLL);
  if (a12)
  {
    v20 = (*(a12 + 16))(a12);
  }

  if (a5)
  {
    *a1 = a10;
    if (v14)
    {
      *(a1 + 1) = a4;
      *(a1 + 2) = a2;
      v27 = a1 + 8;
      storageWindowsInit((a1 + 8), a5, a3 + a2, a3 + a2, v12, 0, aBlock);
      setWindowsFreeRegion((a1 + 8), a2);
    }

    else
    {
      st_size = *(a1 + 5);
      if (st_size)
      {
        if (st_size < *(a1 + 6))
        {
          storage_array_Init_cold_1(v20, v21, st_size, v22, v23, v24, v25, v26);
        }
      }

      else
      {
        memset(&v41, 0, sizeof(v41));
        v33 = fd_stat(a5, &v41);
        if (v33)
        {
          st_size = a3;
        }

        else
        {
          st_size = v41.st_size;
        }

        *(a1 + 1) = a4;
        *(a1 + 2) = a2;
        if (st_size < *(a1 + 6))
        {
          storage_array_Init_cold_2(v33, v34, st_size, v35, v36, v37, v38, v39);
        }
      }

      v27 = a1 + 8;
      storageWindowsInit((a1 + 8), a5, st_size, st_size, v12, 0, aBlock);
    }

    a1[6] = v13;
    *(a1 + 4) = a5;
    v40 = malloc_type_malloc(0xD0uLL, 0x1020040167D79A3uLL);
    *(a1 + 528) = v40;
    *v40 = 0u;
    v40[1] = 0u;
    v40[2] = 0u;
    v40[3] = 0u;
    v40[4] = 0u;
    v40[5] = 0u;
    v40[6] = 0u;
    v40[7] = 0u;
    v40[8] = 0u;
    v40[9] = 0u;
    v40[10] = 0u;
    v40[11] = 0u;
    v40[12] = 0u;
    pthread_rwlock_init(*(a1 + 528), 0);
    *(a1 + 4188) = v12;
    *(a1 + 4190) = a9 & ~v12;
    a1[1054] = 0;
    result = _windowsMapInit(v27, 0, 1);
    if (result)
    {
      if (v12)
      {
        return 1;
      }

      if (v14)
      {
        fd_truncate(a5, 0);
      }

      return !fd_truncate(a5, *(a1 + 5));
    }
  }

  else
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      storage_array_Init_cold_3();
    }

    v30 = __error();
    result = 0;
    *v30 = v28;
  }

  return result;
}

void storage_array_Close(uint64_t a1)
{
  storageWindowsUnmap((a1 + 32));
  storageWindowsClose((a1 + 32));
  v2 = *(a1 + 4224);
  if (v2)
  {
    pthread_rwlock_wrlock(v2);
    _release_read_window(&availableArrayReaders, *(*(a1 + 4224) + 200));
    pthread_rwlock_unlock(*(a1 + 4224));
    pthread_rwlock_destroy(*(a1 + 4224));
    free(*(a1 + 4224));
    *(a1 + 4224) = 0;
  }

  *(a1 + 4189) = 1;
}

int *storage_array_Sync(int *result, int a2, int a3)
{
  v4 = result;
  if (a2)
  {
    result = storageWindowsSync(result + 8, 0);
  }

  if (a3)
  {
    result = *(v4 + 4);
    if (result)
    {

      return fd_sync(result, 0, 1);
    }
  }

  return result;
}

unint64_t storage_array_AllocOffsetFromEnd(void *a1)
{
  v2 = a1[1];
  if (a1[6] + v2 >= a1[5] && !_storage_array_Expand(a1))
  {
    return 0;
  }

  v3 = storageWindowsAlloc(a1 + 4, v2);
  storage_array_dirtyRange(a1, 0, a1[2], v4, v5, v6, v7, v8);
  return (v3 - a1[2]) / v2;
}

uint64_t _storage_array_Expand(uint64_t a1)
{
  v2 = _storageWindowsExpandBacking((a1 + 32), *(a1 + 8));
  if (v2)
  {
    pthread_rwlock_wrlock(*(a1 + 4224));
    v3 = *(a1 + 4224);
    sig = v3[1].__sig;
    v3[1].__sig = 0;
    pthread_rwlock_unlock(v3);
    _release_read_window(&availableArrayReaders, sig);
  }

  return v2;
}

void storage_array_dirtyRange(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2 >> 20;
  bit_vector_set((a1 + 4192), (a2 >> 20), a3, a4, a5, a6, a7, a8);
  v18 = (a3 + a2) >> 20;
  if (v18 > v11)
  {
    v19 = v11 + 1;
    do
    {
      bit_vector_set((a1 + 4192), v19, v12, v13, v14, v15, v16, v17);
    }

    while (v18 > v19++);
  }
}

void bit_vector_set(void *a1, CFIndex idx, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1 + 1;
  v10 = a1[1];
  if (v10 <= idx)
  {
    bit_vector_set_cold_1(v10, idx, a1, v11, a5, a6, a7, a8);
  }

  if (*a1 <= idx)
  {
    *a1 = idx + 1;
  }

  v12 = a1[2];

  CFBitVectorSetBitAtIndex(v12, idx, 1u);
}

unint64_t storage_array_ResolvePtr(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  if (a3)
  {
    a2 = *(a1 + 16) + v4 * a2;
  }

  v5 = a1 + 32;

  return _windowsResolvePtr(v5, a2, v4);
}

BOOL storage_array_ValidPtr(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = v3 * a2;
  v5 = *(a1 + 48);
  v6 = v3 * a2 + v3 <= v5;
  v7 = v4 >= v5;
  v8 = v4 < v5;
  if (v7 || a3 == 0)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

BOOL isRegisteredForCloning(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  pthread_mutex_lock(&registeredFdsLock);
  if (registeredCloneFds)
  {
    v2 = CFSetContainsValue(registeredCloneFds, v1) != 0;
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock(&registeredFdsLock);
  CFRelease(v1);
  return v2;
}

uint64_t _copyFile(uint64_t a1, const char *a2, uint64_t a3, const char *a4, _DWORD *a5, off_t a6)
{
  v64 = *MEMORY[0x1E69E9840];
  memset(&v63, 0, sizeof(v63));
  v57 = 0;
  v58 = 0;
  if (*a5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(10);
    v8 = 2 * (dword_1EB7ABB10 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_1B238B000, v7, v8, "canceled", buf, 2u);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    v13 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v15 = a5;
  v11 = fd_create(a1, a2, 0);
  v18 = fd_open(v11, &v58);
  v13 = v18;
  if (!v11 || v18 == -1)
  {
    v6 = *__error();
    v37 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_8();
    }

    goto LABEL_33;
  }

  if (fstat(v18, &v63) == -1)
  {
    v6 = *__error();
    v38 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_7();
    }

LABEL_33:
    v9 = 0;
    v10 = 0;
    v12 = 0xFFFFFFFFLL;
LABEL_39:
    v41 = 0;
    *__error() = v6;
    goto LABEL_40;
  }

  v10 = fd_create(a3, a4, 536872450);
  v19 = fd_open(v10, &v57);
  v12 = v19;
  if (!v10 || v19 == -1)
  {
    v6 = *__error();
    v39 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_6();
    }

    goto LABEL_38;
  }

  ci_preallocate(v19, v63.st_size);
  if (_fd_ftruncate_guarded(v12, &v57, v63.st_size) == -1)
  {
    v6 = *__error();
    v40 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      _copyFile_cold_5();
    }

LABEL_38:
    v9 = 0;
    goto LABEL_39;
  }

  fcntl(v13, 48, 1);
  fcntl(v13, 76, 1);
  fcntl(v12, 48, 1);
  fcntl(v12, 76, 1);
  v55 = a6;
  __buf = malloc_type_malloc(0x100000uLL, 0x8C758051uLL);
  v20 = 0;
  if (v63.st_size > a6)
  {
    v54 = v10;
    v53 = v13;
    v52 = v15;
    while (!*v15)
    {
      v21 = prot_pread(v13, __buf, 0x100000uLL, a6);
      if (v21 == -1)
      {
        v44 = *__error();
        v49 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          _copyFile_cold_3();
        }

        goto LABEL_65;
      }

      if (*v15)
      {
        v44 = *__error();
        v50 = _SILogForLogForCategory(10);
        v51 = 2 * (dword_1EB7ABB10 < 4);
        if (os_log_type_enabled(v50, v51))
        {
          *buf = 0;
          _os_log_impl(&dword_1B238B000, v50, v51, "canceled", buf, 2u);
        }

LABEL_65:
        v13 = v53;
        goto LABEL_50;
      }

      v22 = v21;
      v23 = __buf;
      v24 = prot_pwrite_guarded(v12, &v57, __buf, v21, a6);
      if (v24 == -1)
      {
LABEL_47:
        v44 = *__error();
        v45 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          _copyFile_cold_2();
        }

        v13 = v53;
        v15 = v52;
        goto LABEL_50;
      }

      v32 = v24;
      v33 = 1;
      while (1)
      {
        v34 = v22 - v32;
        if (v22 < v32)
        {
          _copyFile_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
        }

        v20 += v32;
        if (v22 <= v32)
        {
          break;
        }

        if ((v32 != 0) | v33 & 1)
        {
          v33 &= v32 != 0;
        }

        else
        {
          v35 = *__error();
          v36 = _SILogForLogForCategory(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v60 = "_copyFile";
            v61 = 1024;
            v62 = 194;
            _os_log_error_impl(&dword_1B238B000, v36, OS_LOG_TYPE_ERROR, "%s:%d: write failed", buf, 0x12u);
          }

          v33 = 0;
          *__error() = v35;
        }

        a6 += v32;
        v23 += v32;
        v24 = prot_pwrite_guarded(v12, &v57, v23, v34, a6);
        v32 = v24;
        v22 = v34;
        if (v24 == -1)
        {
          goto LABEL_47;
        }
      }

      a6 += v22;
      v13 = v53;
      v10 = v54;
      v15 = v52;
      if (a6 >= v63.st_size)
      {
        goto LABEL_51;
      }
    }

    v44 = *__error();
    v47 = _SILogForLogForCategory(10);
    v48 = 2 * (dword_1EB7ABB10 < 4);
    if (os_log_type_enabled(v47, v48))
    {
      *buf = 0;
      _os_log_impl(&dword_1B238B000, v47, v48, "canceled", buf, 2u);
    }

LABEL_50:
    *__error() = v44;
    v10 = v54;
  }

LABEL_51:
  if (v20 + v55 == v63.st_size)
  {
    v41 = 1;
  }

  else
  {
    if (!*v15)
    {
      v6 = *__error();
      v46 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        _copyFile_cold_4();
      }

      v9 = __buf;
      goto LABEL_39;
    }

    v41 = 0;
  }

  v9 = __buf;
LABEL_40:
  v42 = *__error();
  free(v9);
  prot_fsync(v12, 0);
  if ((v13 & 0x80000000) == 0)
  {
    fd_close(v11, v13, v58);
  }

  fd_release(v11);
  if ((v12 & 0x80000000) == 0)
  {
    fd_close(v10, v12, v57);
  }

  fd_release(v10);
  if (v42)
  {
    *__error() = v42;
  }

  return v41;
}

uint64_t copyFile(uint64_t a1, const char *a2, uint64_t a3, const char *a4, _DWORD *a5)
{

  return copyFileFallback(a1, a2, a3, a4, a5, 1, 1);
}

uint64_t copyFileFallback(uint64_t a1, const char *a2, uint64_t a3, const char *a4, _DWORD *a5, char a6, int a7)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1 != a3 || !isRegisteredForCloning(a1) || !a7)
  {
    return _copyFile(a1, a2, a3, a4, a5, 0);
  }

  bzero(v45, 0x400uLL);
  bzero(v44, 0x400uLL);
  v14 = faccurate_realpath(a1, v45);
  if (!v14)
  {
    v28 = *__error();
    v29 = *__error();
    v30 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      copyFileFallback_cold_3();
    }

    goto LABEL_28;
  }

  v15 = v14;
  v16 = strlen(v14);
  snprintf(&v15[v16], 1024 - v16, "/%s", a2);
  v17 = faccurate_realpath(a1, v44);
  if (!v17)
  {
    v28 = *__error();
    v29 = *__error();
    v32 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      copyFileFallback_cold_2();
    }

LABEL_28:
    *__error() = v29;
    v33 = __error();
    result = 0;
    *v33 = v28;
    return result;
  }

  v18 = v17;
  v38 = a6;
  v19 = strlen(v17);
  v37 = a4;
  snprintf(v18 + v19, 1024 - v19, "/%s", a4);
  v20 = *__error();
  v21 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = v15;
    v42 = 2080;
    v43 = v18;
    _os_log_impl(&dword_1B238B000, v21, OS_LOG_TYPE_DEFAULT, "copy file %s to %s", buf, 0x16u);
  }

  *__error() = v20;
  while (1)
  {
    v22 = open(v18, 0);
    to = 0;
    asprintf(&to, "%s.tmp", v18);
    unlink(to);
    v23 = copyfile(v15, to, 0, 0x20C0000u);
    v25 = *__error();
    if (v25 != 45)
    {
      goto LABEL_12;
    }

    v26 = open(v15, 0);
    if (v26 != -1)
    {
      close(v26);
      v25 = 45;
LABEL_12:
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      rename(to, v18, v24);
      v23 = v27;
      v25 = *__error();
      goto LABEL_14;
    }

    v25 = *__error();
    if (!v23)
    {
      goto LABEL_13;
    }

LABEL_14:
    free(to);
    if (v22 != -1)
    {
      close(v22);
    }

    if (v23 != -1)
    {
      break;
    }

    if ((prot_error_check() & 1) == 0)
    {
      *__error() = v25;
      *__error() = v25;
      if ((prot_error_check() & 1) == 0)
      {
        *__error() = v25;
        goto LABEL_29;
      }
    }
  }

  *__error() = v25;
  if (!v23)
  {
    return 1;
  }

LABEL_29:
  v34 = *__error();
  v35 = *__error();
  v36 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    copyFileFallback_cold_1();
  }

  *__error() = v35;
  *__error() = v34;
  if (v38)
  {
    a4 = v37;
    return _copyFile(a1, a2, a3, a4, a5, 0);
  }

  return 0;
}

void *fd_create_protected(uint64_t a1, const char *a2, int a3, unsigned __int8 a4)
{
  v7 = a1;
  v34 = *MEMORY[0x1E69E9840];
  if (fd_create_protected_once != -1)
  {
    fd_create_protected_cold_1();
  }

  v8 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
  *v8 = -50529037;
  v8[1] = 0;
  *(v8 + 1) = 0u;
  v8[4] = 1;
  *(v8 + 10) = -1;
  *(v8 + 11) = v7;
  v9 = (a3 & 3) != 0;
  *(v8 + 12) = a3 | (v9 << 29);
  v10 = *(v8 + 28);
  *(v8 + 30) &= 0xFC00u;
  v11 = v10 & 0xFFF0 | (4 * v9);
  *(v8 + 28) = v11;
  v12 = strdup(a2);
  *(v8 + 52) = 0;
  *(v8 + 17) = 0;
  v8[9] = v12;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  *(v8 + 28) = v11 & 0xF00F | (16 * a4);
  v21 = 0;
  v13 = _fd_acquire_fd(v8, &v21);
  if (v13 == -1)
  {
    v14 = *__error();
    bzero(v33, 0x400uLL);
    v15 = faccurate_realpath(v7, v33);
    if ((a3 & 0x200) != 0)
    {
      v16 = 17;
    }

    else
    {
      v16 = 2;
    }

    if (v14 == v16)
    {
      if (gSILogLevels < 5)
      {
LABEL_15:
        fd_release(v8);
        v8 = 0;
        *__error() = v14;
        return v8;
      }

      v17 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v23 = v15;
        v24 = 2080;
        *v25 = a2;
        *&v25[8] = 1024;
        *&v25[10] = a3;
        v26 = 1024;
        *v27 = v7;
        *&v27[4] = 1024;
        *&v27[6] = v14;
        _os_log_impl(&dword_1B238B000, v18, OS_LOG_TYPE_DEFAULT, "fd_open failed, path:%s, name:%s, flags:0x%x, parent_fd:%d, errno:%d", buf, 0x28u);
      }
    }

    else
    {
      v17 = *__error();
      v19 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v23 = "fd_create_protected";
        v24 = 1024;
        *v25 = 207;
        *&v25[4] = 2080;
        *&v25[6] = v15;
        v26 = 2080;
        *v27 = a2;
        *&v27[8] = 1024;
        v28 = a3;
        v29 = 1024;
        v30 = v7;
        v31 = 1024;
        v32 = v14;
        _os_log_error_impl(&dword_1B238B000, v19, OS_LOG_TYPE_ERROR, "%s:%d: fd_open failed, path:%s, name:%s, flags:0x%x, parent_fd:%d, errno:%d", buf, 0x38u);
      }
    }

    *__error() = v17;
    goto LABEL_15;
  }

  *(v8 + 12) &= 0xFFFFF9FF;
  _fd_release_fd(v8, v13, 0, v21);
  return v8;
}

int *__fd_create_protected_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v7.rlim_cur = 0;
  v7.rlim_max = 0;
  if (getrlimit(8, &v7))
  {
    rlim_cur = 1024;
  }

  else
  {
    rlim_cur = v7.rlim_cur;
  }

  gOpenLimit = rlim_cur;
  v1 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200406E52F545uLL);
  g_fd_list = v1;
  v2 = rlim_cur / 4;
  if (rlim_cur >= 512)
  {
    v2 = 128;
  }

  v1[2] = v2;
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  v5 = 2 * (gSILogLevels < 4);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 67109120;
    v9 = gOpenLimit;
    _os_log_impl(&dword_1B238B000, v4, v5, "fd limit %d", buf, 8u);
  }

  result = __error();
  *result = v3;
  return result;
}

uint64_t fd_open(uint64_t a1, void *a2)
{

  return _fd_acquire_fd(a1, a2);
}

_DWORD *fd_close(_DWORD *a1, uint64_t a2, uint64_t a3)
{

  return _fd_release_fd(a1, a2, 0, a3);
}

void fd_release(atomic_uint *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1 && atomic_fetch_add_explicit(a1 + 8, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1 != -50529037)
    {
      fd_release_cold_1();
    }

    v4[0] = 0;
    pthread_mutex_lock(&g_fd_lock);
    v2 = _fd_remove_locked(a1, v4);
    pthread_mutex_unlock(&g_fd_lock);
    if (v2 != -1)
    {
      guarded_close_np();
    }

    *a1 = 0;
    free(*(a1 + 9));
    v3 = *(a1 + 10);
    if (v3)
    {
      fd_release(v3);
    }

    free(a1);
  }
}

void *fd_create(uint64_t a1, const char *a2, int a3)
{

  return fd_create_protected(a1, a2, a3, 0);
}

void *fd_create_read_only(int a1, const char *a2)
{
  if (a1 == -1)
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
  *v4 = -50529037;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0x100000001;
  *(v4 + 10) = a1;
  *(v4 + 44) = 0xFFFFFFFFLL;
  v5 = *(v4 + 28);
  *(v4 + 30) &= 0xFC00u;
  *(v4 + 28) = v5 & 0xFFF0;
  v6 = strdup(a2);
  *(v4 + 52) = 0;
  v4[9] = v6;
  v4[10] = 0;
  *(v4 + 17) = 1;
  v4[11] = 0;
  v4[12] = 0;
  return v4;
}

char *fd_name(uint64_t a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -50529037)
  {
    fd_name_cold_1();
  }

  os_unfair_lock_lock(&g_name_lock);
  if (strlcpy(a2, *(a1 + 72), a3) > a3)
  {
    a2 = 0;
  }

  os_unfair_lock_unlock(&g_name_lock);
  return a2;
}

uint64_t close_inactive_fds_if_necessary(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = _fd_close_inactive(*(a2 + 44), 0, 1, 1);
    if (!result)
    {
      result = _fd_close_inactive(0xFFFFFFFFLL, 0, 1, 1);
      if (!result)
      {
        result = _fd_close_inactive(*(a2 + 44), 0, 1, 0);
        if (!result)
        {

          return _fd_close_inactive(0xFFFFFFFFLL, 0, 1, 0);
        }
      }
    }
  }

  return result;
}

uint64_t fd_truncate(uint64_t a1, off_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v4 = _fd_acquire_fd(a1, v11);
  if (v4 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = _fd_ftruncate_guarded(v4, v11, a2);
  v7 = *__error();
  if (v6 == -1 || a2 == 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  *(a1 + 56) = *(a1 + 56) & 0xFFFD | v9;
  _fd_release_fd(a1, v5, 0, v11[0]);
  if (v6 == -1)
  {
    *__error() = v7;
  }

  return v6;
}

uint64_t _fd_acquire_fd(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    v10 = 2 * (gSILogLevels < 4);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_1B238B000, v9, v10, "open error NULL obj", buf, 2u);
    }

    *__error() = v8;
    v6 = __error();
    v7 = 2;
    goto LABEL_10;
  }

  if (*a1 != -50529037)
  {
    _fd_acquire_fd_cold_1();
  }

  pthread_mutex_lock(&g_fd_lock);
  if (*(a1 + 52) == 1)
  {
    pthread_mutex_unlock(&g_fd_lock);
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _fd_acquire_fd_cold_3(v5);
    }

    *__error() = v4;
    v6 = __error();
    v7 = 22;
LABEL_10:
    *v6 = v7;
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 40) == -1)
  {
    pthread_mutex_unlock(&g_fd_lock);
  }

  else
  {
    updated = _fd_update_locked(a1, 0, a2);
    pthread_mutex_unlock(&g_fd_lock);
    if (updated != -1)
    {
      return updated;
    }
  }

  bzero(buf, 0x400uLL);
  v13 = (*(a1 + 56) >> 4);
  v14 = fd_name(a1, buf, 0x400uLL);
  v18 = _fd_open(*(a1 + 44), v14, *(a1 + 48), *(a1 + 56) & 1, v13, v15, v16, v17);
  if (v18 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v18;
  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  v20 = change_fdguard_np();
  __error();
  if (v20 && gSILogLevels >= 5)
  {
    _fd_acquire_fd_cold_2();
  }

  pthread_mutex_lock(&g_fd_lock);
  if (*(a1 + 40) == -1)
  {
    *(a1 + 8) = __buf;
    *(a1 + 40) = v19;
    updated = _fd_update_locked(a1, 1, a2);
    v21 = *(g_fd_list + 4) > *(g_fd_list + 8);
    pthread_mutex_unlock(&g_fd_lock);
  }

  else
  {
    updated = _fd_update_locked(a1, 0, a2);
    pthread_mutex_unlock(&g_fd_lock);
    guarded_close_np();
    v21 = 0;
  }

  close_inactive_fds_if_necessary(v21, a1);
  return updated;
}

uint64_t fd_stat(uint64_t a1, stat *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    result = fstatat(*(a1 + 44), *(a1 + 72), a2, 2048);
    v5 = g_prot_error_callback;
    if (result != -1 || g_prot_error_callback == 0)
    {
      break;
    }

    v7 = *(a1 + 40);
    v8 = __error();
    if (((*(v5 + 16))(v5, v7, *v8, 8) & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

_BYTE *fd_realpath(_DWORD *a1, _BYTE *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v4 = _fd_acquire_fd(a1, v8);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  v6 = faccurate_realpath(v4, a2);
  _fd_release_fd(a1, v5, 0, v8[0]);
  return v6;
}

ssize_t fd_pread(_DWORD *a1, void *a2, size_t a3, off_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v8 = _fd_acquire_fd(a1, &v16);
  v9 = v8;
  if (v8 == -1 || (v10 = prot_pread(v8, a2, a3, a4), _fd_release_fd(a1, v9, 0, v16), v10 == -1))
  {
    bzero(v31, 0x400uLL);
    v11 = *__error();
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = fd_realpath(a1, v31);
      if (!v15)
      {
        v15 = fd_name(a1, v31, 0x400uLL);
        if (!v15)
        {
          v15 = "";
        }
      }

      *buf = 136316674;
      v18 = "fd_pread";
      v19 = 1024;
      v20 = 650;
      v21 = 1024;
      v22 = v9;
      v23 = 2080;
      v24 = v15;
      v25 = 2048;
      v26 = a4;
      v27 = 1024;
      v28 = a3;
      v29 = 1024;
      v30 = v11;
      _os_log_error_impl(&dword_1B238B000, v13, OS_LOG_TYPE_ERROR, "%s:%d: pread(%d %s, o:%lx, s:%d) err:%d", buf, 0x38u);
    }

    *__error() = v12;
    *__error() = v11;
    return -1;
  }

  return v10;
}

uint64_t fd_pwrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *__error() = 2;
    return -1;
  }

  if (*(a1 + 96))
  {
    fd_pwrite_cold_1();
  }

  v17 = 0;
  v8 = _fd_acquire_fd(a1, &v17);
  v9 = v8;
  if (v8 == -1)
  {
    v12 = *__error();
LABEL_9:
    bzero(v32, 0x400uLL);
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = fd_realpath(a1, v32);
      if (!v16)
      {
        v16 = fd_name(a1, v32, 0x400uLL);
        if (!v16)
        {
          v16 = "";
        }
      }

      *buf = 136316674;
      v19 = "fd_pwrite";
      v20 = 1024;
      v21 = 680;
      v22 = 1024;
      v23 = v9;
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a4;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = v12;
      _os_log_error_impl(&dword_1B238B000, v14, OS_LOG_TYPE_ERROR, "%s:%d: pwrite(%d %s, o:%lx, s:%d) err:%d", buf, 0x38u);
    }

    *__error() = v13;
    *__error() = v12;
    return -1;
  }

  v10 = prot_pwrite_guarded(v8, &v17, a2, a3, a4);
  if (v10 == -1)
  {
    v12 = *__error();
    _fd_release_fd(a1, v9, 0, v17);
    goto LABEL_9;
  }

  v11 = v10;
  _fd_release_fd(a1, v9, 0, v17);
  return v11;
}

uint64_t fd_sync(uint64_t a1, int a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    fd_system_status_stall_if_busy();
  }

  v14 = 0;
  v5 = _fd_acquire_fd(a1, &v14);
  v6 = 0xFFFFFFFFLL;
  if (v5 != -1)
  {
    v7 = v5;
    bzero(v16, 0x400uLL);
    v13 = -1;
    v8 = *(a1 + 56);
    if ((v8 & 0xE) == 6 && (*(a1 + 56) = v8 & 0xFFF3, bzero(&v15, 0x878uLL), fstatfs(*(a1 + 44), &v15) != -1) && *v15.f_fstypename ^ 0x73667061 | v15.f_fstypename[4])
    {
      v9 = fd_name(a1, v16, 0x400uLL);
      if (v9)
      {
        if (fd_setDir(*(a1 + 44), &v13))
        {
          v12 = 1;
          if (fsctl(v9, 0x80006817uLL, &v12, 0) != -1)
          {
            *(a1 + 56) |= 0xCu;
          }
        }
      }

      if (a2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = 0;
      if (a2)
      {
LABEL_12:
        v10 = (*(a1 + 56) & 8) == 0;
        goto LABEL_15;
      }
    }

    v10 = 0;
LABEL_15:
    v6 = prot_fsync(v7, v10);
    if (v6 != -1 && (*(a1 + 56) & 8) != 0)
    {
      v15.f_bsize = 0;
      fsctl(v9, 0x80006817uLL, &v15, 0);
      *(a1 + 56) &= 0xFFF5u;
    }

    if (v13 != -1)
    {
      fd_resetDir(v13);
    }

    _fd_release_fd(a1, v7, 0, v14);
  }

  return v6;
}

uint64_t fd_mmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *__error() = 22;
    return -1;
  }

  v12[0] = 0;
  if (*(a1 + 44) == -1)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = _fd_acquire_fd(a1, v12);
  }

  if (v6 == -1)
  {
    return -1;
  }

  do
  {
    v7 = __mmap();
    if (v7 != -1)
    {
      break;
    }

    v8 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v9 = *(a1 + 40);
    v10 = __error();
  }

  while (((*(v8 + 16))(v8, v9, *v10, 10) & 1) != 0);
  if (*(a1 + 44) != -1)
  {
    _fd_release_fd(a1, v6, (*(a1 + 56) & 2) == 0, v12[0]);
  }

  return v7;
}

_DWORD *_fd_release_fd(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = a2;
    if (a2 != -1)
    {
      v5 = result;
      v11[0] = 0;
      if (*result != -50529037)
      {
        _fd_release_fd_cold_1();
      }

      pthread_mutex_lock(&g_fd_lock);
      v8 = *(v5 + 52);
      if ((v8 & 1) == 0)
      {
        if (v5[10] != v4)
        {
          _fd_release_fd_cold_2();
        }

        if (*(v5 + 1) != a4)
        {
          _fd_release_fd_cold_3();
        }
      }

      v9 = v5[9];
      if (!v9)
      {
        _fd_release_fd_cold_4();
      }

      v10 = v9 - 1;
      v5[9] = v10;
      if (v10 || !a3 || (v8 & 1) != 0 || v5[17] || _fd_remove_locked(v5, v11) == -1)
      {
        return pthread_mutex_unlock(&g_fd_lock);
      }

      else
      {
        *(v5 + 28) &= ~8u;
        pthread_mutex_unlock(&g_fd_lock);
        return guarded_close_np();
      }
    }
  }

  return result;
}

_DWORD *fd_name_ptr(_DWORD *a1)
{
  v1 = a1;
  if (a1)
  {
    if (*a1 != -50529037)
    {
      fd_name_ptr_cold_1();
    }

    os_unfair_lock_lock(&g_name_lock);
    v1 = *(v1 + 9);
    os_unfair_lock_unlock(&g_name_lock);
  }

  return v1;
}

uint64_t _fd_remove_locked(uint64_t a1, void *a2)
{
  v3 = (a1 + 16);
  v4 = *(a1 + 16);
  result = *(a1 + 40);
  *a2 = *(v3 - 1);
  v6 = v3[1];
  if (v6)
  {
    if (!v4)
    {
      _fd_remove_locked_cold_4();
    }

    v7 = g_fd_list;
    v8 = *(g_fd_list + 16);
    if (v8 == a1)
    {
      *(g_fd_list + 16) = v6;
      v8 = v6;
    }

    *(v4 + 24) = v6;
    *(*(a1 + 24) + 16) = v4;
    *v3 = 0;
    v3[1] = 0;
    v9 = *v7;
    v10 = *v7 - 1;
    *v7 = v10;
    if (v8 == a1)
    {
      if (v10)
      {
        _fd_remove_locked_cold_3();
      }

      *(v7 + 16) = 0;
      if (result != -1)
      {
        --*(v7 + 4);
      }
    }

    else
    {
      if (!v10)
      {
        _fd_remove_locked_cold_2();
      }

      if (result != -1)
      {
        --*(v7 + 4);
        if (v9 <= 0)
        {
          _fd_remove_locked_cold_1();
        }
      }
    }
  }

  else if (v4)
  {
    _fd_remove_locked_cold_5();
  }

  *(a1 + 40) = -1;
  *(a1 + 8) = 0;
  return result;
}

uint64_t _fd_close_inactive(uint64_t a1, const char *a2, char a3, int a4)
{
  v34 = a1;
  v36 = *MEMORY[0x1E69E9840];
  if (gOpenLimit <= 2047)
  {
    v7 = (gOpenLimit + (gOpenLimit >> 31)) >> 1;
  }

  else
  {
    v7 = 1024;
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v12, v11);
  pthread_mutex_lock(&g_fd_lock);
  v13 = &unk_1EB7CC000;
  v14 = g_fd_list;
  v15 = *(g_fd_list + 16);
  if (!v15 || ((v16 = *(v15 + 16), !a2) ? (v17 = 0) : (v17 = strlen(a2), v13 = &unk_1EB7CC000), (v18 = *(g_fd_list + 4), v18 < *(g_fd_list + 8)) && (a3 & 1) != 0))
  {
    pthread_mutex_unlock(&g_fd_lock);
    return 0;
  }

  v32 = a2;
  v33 = a4;
  v19 = 0;
  v20 = 1;
  v21 = v34;
  while (1)
  {
    v22 = *(v16 + 40);
    if (v22 != -1 && !*(v16 + 36) && v18 && !*(v16 + 68) && (!v33 || (*(v16 + 56) & 2) == 0))
    {
      if (v21 != -1)
      {
        if (*(v16 + 44) != v21)
        {
          goto LABEL_14;
        }

        if (v17)
        {
          v31 = v17;
          v23 = v13;
          bzero(v35, 0x400uLL);
          v24 = fd_name(v16, v35, 0x400uLL);
          if (!v24)
          {
            v13 = v23;
            v14 = v23[369];
LABEL_33:
            v21 = v34;
            v17 = v31;
            goto LABEL_14;
          }

          v25 = strncmp(v32, v24, v31);
          v13 = v23;
          v14 = v23[369];
          if (v25)
          {
            goto LABEL_33;
          }

          v22 = *(v16 + 40);
          v21 = v34;
          v17 = v31;
        }
      }

      v26 = *(v16 + 56);
      *&v12[8 * v19] = *(v16 + 8);
      *&v9[4 * v19] = v22;
      *(v16 + 8) = 0;
      *(v16 + 40) = -1;
      *(v16 + 56) = v26 & 0xFFF5;
      v27 = v14[1];
      v14[1] = v27 - 1;
      if (v27 <= 0)
      {
        _fd_close_inactive_cold_1();
      }

      if (++v19 >= v7)
      {
        goto LABEL_35;
      }
    }

LABEL_14:
    if (v20 - 1 >= *v14)
    {
      _fd_close_inactive_cold_2();
    }

    if (v16 == v15)
    {
      break;
    }

    v16 = *(v16 + 16);
    v18 = v14[1];
    ++v20;
    if (v18 < v14[2] && (a3 & 1) != 0)
    {
      goto LABEL_35;
    }
  }

  if (v20 != *v14)
  {
    _fd_close_inactive_cold_3();
  }

LABEL_35:
  pthread_mutex_unlock(&g_fd_lock);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      guarded_close_np();
      v12 += 8;
    }
  }

  return v19;
}

uint64_t _fd_open(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v26 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v13 = v8 ? si_openat_protected(a1, a2, v10, 384, v8) : _safe_open_at(a1, a2, v10, a4, a5, a6, a7, a8, 384);
    v14 = v13;
    if (v9)
    {
      if (v13 != -1)
      {
        break;
      }
    }

    if (v13 != -1 || !g_prot_error_callback)
    {
      return v14;
    }

    v15 = *__error();
    if (gSILogLevels >= 5)
    {
      v21 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *__error();
        *buf = 136315394;
        v23 = a2;
        v24 = 1024;
        v25 = v19;
        _os_log_impl(&dword_1B238B000, v18, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", buf, 0x12u);
      }

      *__error() = v21;
    }

    v16 = g_prot_error_callback;
    v17 = __error();
    if (((*(v16 + 16))(v16, a1, *v17, 15) & 1) == 0)
    {
      *__error() = v15;
      return v14;
    }
  }

  fcntl(v13, 48, 1);
  fcntl(v14, 76, 1);
  return v14;
}

uint64_t _fd_update_locked(uint64_t a1, int a2, void *a3)
{
  result = *(a1 + 40);
  if (result == -1)
  {
    _fd_update_locked_cold_6();
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    if (!v5)
    {
      _fd_update_locked_cold_2();
    }

    v7 = g_fd_list;
    v8 = *(g_fd_list + 16);
    if (!v8)
    {
      _fd_update_locked_cold_1();
    }

    if (v8 != a1)
    {
      *(v5 + 24) = v6;
      *(*(a1 + 24) + 16) = v5;
      v9 = *(v8 + 16);
      *(a1 + 16) = v9;
      *(a1 + 24) = v8;
      *(v9 + 24) = a1;
      *(v8 + 16) = a1;
    }

    if (a2)
    {
LABEL_8:
      ++*(v7 + 4);
    }
  }

  else
  {
    if (v5)
    {
      _fd_update_locked_cold_3();
    }

    v7 = g_fd_list;
    v10 = *(g_fd_list + 16);
    v11 = *g_fd_list;
    if (v10)
    {
      if (!v11)
      {
        _fd_update_locked_cold_4();
      }

      v12 = *(v10 + 16);
      *(a1 + 16) = v12;
      *(a1 + 24) = v10;
      *(v12 + 24) = a1;
      *(v10 + 16) = a1;
      v13 = v11 + 1;
    }

    else
    {
      if (v11)
      {
        _fd_update_locked_cold_5();
      }

      *(a1 + 16) = a1;
      *(a1 + 24) = a1;
      v13 = 1;
    }

    *v7 = v13;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  *(v7 + 16) = a1;
  ++*(a1 + 36);
  *a3 = *(a1 + 8);
  return result;
}

uint64_t _safe_open_at(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x200) != 0)
  {
    bzero(buf, 0x400uLL);
    if (faccurate_realpath(a1, buf))
    {
      if (buf[0] && *buf != 47)
      {
        v12 = a9;
        goto LABEL_3;
      }

      v26 = *__error();
      v27 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v32 = 136316162;
        v33 = "_safe_open_at";
        v34 = 1024;
        v35 = 1421;
        v36 = 2080;
        *v37 = buf;
        *&v37[8] = 2080;
        *&v37[10] = a2;
        *&v37[18] = 2048;
        *&v37[20] = a3;
        _os_log_error_impl(&dword_1B238B000, v27, OS_LOG_TYPE_ERROR, "%s:%d: Invalid parent path, currentPath:%s, path:%s, flags:0x%lx\n", v32, 0x30u);
      }

      v28 = 22;
    }

    else
    {
      v28 = *__error();
      v26 = *__error();
      v29 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *v32 = 136316418;
        v33 = "_safe_open_at";
        v34 = 1024;
        v35 = 1417;
        v36 = 1024;
        *v37 = a1;
        *&v37[4] = 2080;
        *&v37[6] = a2;
        *&v37[14] = 2048;
        *&v37[16] = a3;
        *&v37[24] = 1024;
        *&v37[26] = v28;
        _os_log_error_impl(&dword_1B238B000, v29, OS_LOG_TYPE_ERROR, "%s:%d: faccurate_realpath() failed, parent_fd:%d, path:%s, flags:0x%lx, errno:%d\n", v32, 0x32u);
      }
    }

    *__error() = v26;
    *__error() = v28;
    return 0xFFFFFFFFLL;
  }

  v12 = 0;
LABEL_3:
  while (1)
  {
    result = openat(a1, a2, a3, a4, a5, a6, a7, a8, v12);
    if (result != -1)
    {
      break;
    }

    v14 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    if (gSILogLevels >= 5)
    {
      v30 = *__error();
      v16 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *__error();
        *buf = 136315394;
        v39 = a2;
        v40 = 1024;
        v41 = v17;
        _os_log_impl(&dword_1B238B000, v16, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", buf, 0x12u);
      }

      *__error() = v30;
      v14 = g_prot_error_callback;
    }

    v15 = __error();
    if (((*(v14 + 16))(v14, a1, *v15, 13) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (result != -1)
  {
    return result;
  }

LABEL_16:
  v18 = *__error();
  if ((v18 - 23) > 1)
  {
    goto LABEL_35;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(0);
  v21 = gSILogLevels < 3;
  if (os_log_type_enabled(v20, (gSILogLevels < 3)))
  {
    *buf = 67109120;
    LODWORD(v39) = v18;
    _os_log_impl(&dword_1B238B000, v20, v21, "*warn* too many open files, err: %d, closing inactive and trying again", buf, 8u);
  }

  *__error() = v19;
  _fd_close_inactive(0xFFFFFFFFLL, 0, 0, 0);
  while (1)
  {
    result = openat(a1, a2, a3, v12);
    if (result != -1)
    {
      break;
    }

    v22 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    if (gSILogLevels >= 5)
    {
      v31 = *__error();
      v24 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *__error();
        *buf = 136315394;
        v39 = a2;
        v40 = 1024;
        v41 = v25;
        _os_log_impl(&dword_1B238B000, v24, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", buf, 0x12u);
      }

      *__error() = v31;
      v22 = g_prot_error_callback;
    }

    v23 = __error();
    if (((*(v22 + 16))(v22, a1, *v23, 14) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (result == -1)
  {
LABEL_35:
    if (v18 == 23)
    {
      _safe_open_at_cold_1();
    }

    if (v18 == 24)
    {
      _safe_open_at_cold_2(buf);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

void md_deadline_once_start(atomic_uint *a1, dispatch_queue_t queue)
{
  v2[5] = *MEMORY[0x1E69E9840];
  if (!atomic_fetch_add_explicit(a1 + 4, 1u, memory_order_relaxed))
  {
    atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __md_deadline_once_start_block_invoke;
    v2[3] = &__block_descriptor_tmp_0;
    v2[4] = a1;
    dispatch_async(queue, v2);
  }
}

void __md_deadline_once_start_block_invoke(uint64_t a1)
{
  if (!atomic_load_explicit((*(a1 + 32) + 20), memory_order_acquire))
  {
    (*(*(*(a1 + 32) + 32) + 16))();
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);

  md_deadline_once_release(v2);
}

void md_deadline_once_cancel(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 6);
  atomic_store(1u, &a1[5]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(a1 + 6);
}

intptr_t md_deadline_once_wait(uint64_t a1, dispatch_time_t a2)
{
  result = dispatch_semaphore_wait(*(a1 + 8), a2);
  if (!result)
  {
    v4 = *(a1 + 8);

    return dispatch_semaphore_signal(v4);
  }

  return result;
}

void md_deadline_once_run_block_with_lock(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 6);
  (*(a2 + 16))(a2, a1[5]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(a1 + 6);
}

void si_tracing_log_span_event()
{
  if (init_once != -1)
  {
    si_tracing_log_span_begin_cold_1();
  }
}

void md_tracing_dispatch_async_propagating(NSObject *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = si_tracing_current_span();
  v3 = *(v2 + 16);
  v9 = *v2;
  v10 = v3;
  v11 = *(v2 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __md_tracing_dispatch_async_propagating_block_invoke;
  block[3] = &unk_1E7B255C8;
  block[4] = v4;
  v5 = qos_class_self();
  if (v5 < 0x1A)
  {
    v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  }

  else
  {
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, block);
  }

  v7 = v6;
  dispatch_async(a1, v6);
  _Block_release(v7);
}

uint64_t __md_tracing_dispatch_async_propagating_block_invoke()
{
  v0 = si_tracing_current_span();
  *(v0 + 32) = *(v1 + 72);
  v2 = *(v1 + 56);
  *v0 = *(v1 + 40);
  *(v0 + 16) = v2;
  v3 = *(*(v1 + 32) + 16);

  return v3();
}

void tracing_dispatch_apply()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = si_tracing_current_span();
  v1 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __tracing_dispatch_apply_block_invoke;
  block[3] = &unk_1E7B255F0;
  block[4] = v2;
  dispatch_apply(v4, v3, block);
}

uint64_t __tracing_dispatch_apply_block_invoke()
{
  v0 = si_tracing_current_span();
  *(v0 + 32) = *(v1 + 72);
  v2 = *(v1 + 56);
  *v0 = *(v1 + 40);
  *(v0 + 16) = v2;
  v3 = *(*(v1 + 32) + 16);

  return v3();
}

uint64_t __ensure_tracing_initialised_block_invoke()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    tracing_enabled = 1;
    result = getenv("SPOTLIGHT_TRACING");
    if (result)
    {
      result = atoi(result);
      if (result <= 0)
      {
        tracing_enabled = 0;
      }
    }
  }

  return result;
}

uint64_t _MDStoreOIDArrayGetTypeID()
{
  result = __kMDStoreOIDArrayTypeID;
  if (!__kMDStoreOIDArrayTypeID)
  {
    result = _CFRuntimeRegisterClass();
    __kMDStoreOIDArrayTypeID = result;
  }

  return result;
}

uint64_t _MDStoreOIDArrayCreateMutableWithOids(uint64_t a1, uint64_t a2, unsigned int a3, int a4, const void *a5)
{
  if (!__kMDStoreOIDArrayTypeID)
  {
    __kMDStoreOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a2;
    *(Instance + 32) = a3;
    *(Instance + 36) = a4;
    v11 = &__block_literal_global_1;
    if (!a2)
    {
      v11 = &__block_literal_global_43;
    }

    if (a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = v11;
    }

    *(v10 + 24) = _Block_copy(v12);
    *(v10 + 40) = *(v10 + 40) & 0xF8 | 4;
    v13 = *(v10 + 16);
    v14 = v13 + 8 * *(v10 + 36);
    *(v10 + 56) = v13 + 8 * a3;
    *(v10 + 64) = v14;
  }

  return v10;
}

uint64_t _MDStoreOIDArrayCreateMutableUsingMalloc(uint64_t a1, unsigned int a2)
{
  if (!__kMDStoreOIDArrayTypeID)
  {
    __kMDStoreOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a2)
    {
      v4 = malloc_good_size(8 * a2) >> 3;
    }

    else
    {
      LODWORD(v4) = 8;
    }

    *(Instance + 36) = v4;
    v5 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
    *(Instance + 16) = v5;
    *(Instance + 40) = *(Instance + 40) & 0xF8 | 6;
    *(Instance + 48) = 0;
    if (v5)
    {
      *(Instance + 24) = _Block_copy(&__block_literal_global_1);
      v6 = *(Instance + 16);
      v7 = v6 + 8 * *(Instance + 36);
      *(Instance + 56) = v6;
      *(Instance + 64) = v7;
    }

    else
    {
      CFRelease(Instance);
      return 0;
    }
  }

  return Instance;
}

uint64_t _MDStoreOIDArrayCreateMutableCopy(uint64_t a1, int a2, uint64_t a3)
{
  if (!__kMDStoreOIDArrayTypeID)
  {
    __kMDStoreOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    v7 = MEMORY[0x1E69E9AC8];
    v8 = *(a3 + 32) + a2;
    if (v8)
    {
      v9 = (*MEMORY[0x1E69E9AC8] + 8 * v8 - 1) & -*MEMORY[0x1E69E9AC8];
    }

    else
    {
      v9 = *MEMORY[0x1E69E9AC8];
    }

    *(Instance + 36) = v9 >> 3;
    if (_fast_vm_allocate((Instance + 16), v9 & 0x7FFFFFFF8, -268435455))
    {
      CFRelease(v6);
      return 0;
    }

    else
    {
      *(v6 + 40) = *(v6 + 40) & 0xF9 | 4;
      *(v6 + 24) = _Block_copy(&__block_literal_global_1);
      v10 = *(v6 + 16);
      v11 = &v10[8 * *(v6 + 36)];
      *(v6 + 56) = v10;
      *(v6 + 64) = v11;
      v12 = 8 * *(a3 + 32);
      if (v12 >= 4 * *v7)
      {
        madvise(v10, 8 * *(a3 + 32), 3);
        v10 = *(v6 + 56);
        v12 = 8 * *(a3 + 32);
      }

      memcpy(v10, *(a3 + 16), v12);
      v13 = *(a3 + 32);
      v14 = *(v6 + 56) + 8 * v13;
      *(v6 + 32) = v13;
      *(v6 + 48) = 0;
      *(v6 + 56) = v14;
    }
  }

  return v6;
}

uint64_t _MDStoreOIDArrayBeginSequence(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    v4 = "Sequencing";
LABEL_4:
    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayBeginSequence", v4);
    return 0;
  }

  v8 = *(a1 + 56);
  if (v8 >= *(a1 + 64))
  {
    if (!_mutableMakeRoom(a1, 1, 0))
    {
      v4 = "Overflow";
      goto LABEL_4;
    }

    v8 = *(a1 + 56);
  }

  *v8 = (a2 << 32) | (a3 << 16);
  *(a1 + 48) = v8;
  *(a1 + 56) = v8 + 1;
  return 1;
}

void __MDStoreOIDArrayError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    *(a1 + 40) |= 1u;
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s: %s error -- %@ marked bad", a2, a3, a1);
    CFShow(v3);

    CFRelease(v3);
  }
}

uint64_t _MDStoreOIDArrayEndSequence(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayEndSequence", "Sequencing");
    return 0;
  }

  v2 = *(a1 + 56) - v1;
  if (v2 >> 3 > 0x10000)
  {
    _MDStoreOIDArrayEndSequence_cold_1();
  }

  *v1 |= ((v2 >> 3) - 1);
  *(a1 + 48) = 0;
  *(a1 + 32) += v2 >> 3;
  return 1;
}

uint64_t _MDStoreOIDArrayAddOID(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 48))
    {
      v4 = *(a1 + 56);
      if (v4 < *(a1 + 64))
      {
LABEL_6:
        *v4 = a2;
        *(a1 + 56) = v4 + 1;
        return 1;
      }

      if (_mutableMakeRoom(a1, 1, 0))
      {
        v4 = *(a1 + 56);
        goto LABEL_6;
      }

      v6 = "Overflow";
    }

    else
    {
      v6 = "Sequencing";
    }

    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayAddOID", v6);
  }

  return 0;
}

uint64_t _MDStoreOIDArrayBeginBulkAdd(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 48))
    {
      v5 = *(a1 + 56);
      if ((v5 + 8 * a2) < *(a1 + 64))
      {
LABEL_6:
        *a3 = v5;
        return 1;
      }

      if (_mutableMakeRoom(a1, a2, 0))
      {
        v5 = *(a1 + 56);
        goto LABEL_6;
      }

      v7 = "Overflow";
    }

    else
    {
      v7 = "Sequencing";
    }

    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayBeginBulkAdd", v7);
  }

  return 0;
}

uint64_t _MDStoreOIDArrayEndBulkAdd(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!*(a1 + 48))
  {
    v2 = "Sequencing";
    goto LABEL_6;
  }

  if (*(a1 + 64) < a2)
  {
    v2 = "Overflow";
LABEL_6:
    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayEndBulkAdd", v2);
    return 0;
  }

  *(a1 + 56) = a2;
  return 1;
}

uint64_t _MDStoreOIDArrayRoom(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  else
  {
    return (*(a1 + 64) - *(a1 + 56)) >> 3;
  }
}

uint64_t _MDStoreOIDArrayGetVectorCount(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 32);
  }
}

void *_MDStoreOIDArraySetShouldDeallocate(uint64_t a1, int a2)
{
  _Block_release(*(a1 + 24));
  if (a2)
  {
    v4 = &__block_literal_global_1;
  }

  else
  {
    v4 = &__block_literal_global_43;
  }

  result = _Block_copy(v4);
  *(a1 + 24) = result;
  return result;
}

uint64_t _MDStoreOIDArrayAppendOIDArray(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    v3 = "Sequencing";
LABEL_4:
    __MDStoreOIDArrayError(a1, "_MDStoreOIDArrayAppendOIDArray", v3);
    return 0;
  }

  v6 = *(a2 + 32);
  v7 = *(a1 + 56);
  if (v7 + 8 * v6 >= *(a1 + 64))
  {
    if (!_mutableMakeRoom(a1, v6, 0))
    {
      v3 = "Overflow";
      goto LABEL_4;
    }

    v7 = *(a1 + 56);
    v6 = *(a2 + 32);
  }

  memcpy(v7, *(a2 + 16), 8 * v6);
  v8 = *(a2 + 32);
  *(a1 + 56) += 8 * v8;
  *(a1 + 32) += v8;
  return 1;
}

uint64_t _mutableMakeRoom(uint64_t a1, uint64_t a2, int a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (v3)
  {
    return 0;
  }

  v6 = *(a1 + 56) + 8 * a2;
  v7 = *(a1 + 16);
  v8 = v6 - v7;
  v24[0] = 0;
  if ((v3 & 2) != 0 && (a3 & 1) == 0)
  {
    if (v6 == v7)
    {
      v9 = 4;
    }

    else if ((v8 >> 3) > 0xFF)
    {
      v9 = ((v8 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) >> 3;
    }

    else
    {
      v13 = ((v8 >> 3) - 1) | (((v8 >> 3) - 1) >> 1);
      v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4);
      v9 = ((v14 | (v14 >> 8)) + 1);
    }

    v11 = malloc_good_size(8 * v9);
    v15 = malloc_type_malloc(v11, 0xF8970F01uLL);
    v24[0] = v15;
    goto LABEL_16;
  }

  v10 = (v8 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  v11 = v6 == v7 ? *MEMORY[0x1E69E9AC8] : v10;
  if (_fast_vm_allocate(v24, v11 & 0xFFFFFFFFFFFFFFF8, -268435455))
  {
    return 0;
  }

  v15 = v24[0];
LABEL_16:
  memcpy(v15, *(a1 + 16), *(a1 + 56) - *(a1 + 16));
  (*(*(a1 + 24) + 16))();
  _Block_release(*(a1 + 24));
  v16 = _Block_copy(&__block_literal_global_1);
  if ((*(a1 + 40) & 2) != 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  *(a1 + 40) = v18 | *(a1 + 40) & 0xFD;
  v20 = *(a1 + 48);
  v19 = *(a1 + 56);
  v21 = v19 - *(a1 + 16);
  *(a1 + 36) = v11 >> 3;
  v22 = v24[0];
  *(a1 + 16) = v24[0];
  *(a1 + 24) = v16;
  v23 = v22 + v21;
  *(a1 + 56) = v23;
  *(a1 + 64) = v22 + (v11 & 0x7FFFFFFF8);
  if (v20)
  {
    *(a1 + 48) = v23 + v20 - v19;
  }

  return 1;
}

BOOL __MDStoreOIDArrayEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 32);
  }

  if (*(a2 + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a2 + 32);
  }

  if (v2 == v3)
  {
    if (*(a1 + 40))
    {
      v4 = 0;
      if ((*(a2 + 40) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = *(a1 + 16);
      if ((*(a2 + 40) & 1) == 0)
      {
LABEL_10:
        v5 = *(a2 + 16);
        return memcmp(v4, v5, 8 * v2) == 0;
      }
    }

    v5 = 0;
    return memcmp(v4, v5, 8 * v2) == 0;
  }

  return 0;
}

__CFString *__MDStoreOIDArrayCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 52 * gMDStoreOIDArrayDebugDescriptionDumpMaxLines + 52);
  v3 = Mutable;
  if (gMDStoreOIDArrayDebugDescriptionDumpMaxLines <= 0)
  {
    v4 = "";
  }

  else
  {
    v4 = "[";
  }

  CFStringAppendFormat(Mutable, 0, @"<MDStoreOIDArray: %p>%s", a1, v4);
  if (gMDStoreOIDArrayDebugDescriptionDumpMaxLines >= 1)
  {
    v5 = *(a1 + 32);
    v16 = v5;
    if (v5 <= gMDStoreOIDArrayDebugDescriptionDumpMaxLines)
    {
      v6 = v5;
    }

    else
    {
      v6 = (gMDStoreOIDArrayDebugDescriptionDumpMaxLines - 1);
    }

    if (v6 >= 1)
    {
      v7 = 0;
      v8 = *(a1 + 16);
      v9 = MEMORY[0x1E69E9830];
      v10 = v8;
      do
      {
        CFStringAppendFormat(v3, 0, @"\n    0x%016llx, // [0x%06x] - |", *(v8 + 8 * v7), v7 & 0xFFFFFF);
        for (i = 0; i != 8; ++i)
        {
          v12 = *(v10 + i);
          if ((v12 & 0x80000000) != 0)
          {
            v13 = __maskrune(*(v10 + i), 0x40000uLL);
          }

          else
          {
            v13 = *(v9 + 4 * v12 + 60) & 0x40000;
          }

          if (v13)
          {
            v14 = v12;
          }

          else
          {
            v14 = 46;
          }

          CFStringAppendFormat(v3, 0, @"%c", v14);
        }

        CFStringAppendCString(v3, "|", 0x600u);
        ++v7;
        v10 += 8;
      }

      while (v7 != v6);
    }

    if (v16 > v6)
    {
      CFStringAppendFormat(v3, 0, @"\n    // ... %i more lines suppressed ...", (v16 - v6));
    }

    CFStringAppendCString(v3, "\n]", 0x600u);
  }

  return v3;
}

uint64_t _MDPerf_LifeCycleLog()
{
  if (_MDPerf_LifeCycleLog_onceToken != -1)
  {
    _MDPerf_LifeCycleLog_cold_1();
  }

  return _MDPerf_LifeCycleLog_sIndexLifeCycle;
}

uint64_t _MDPerf_IndexingLog()
{
  if (_MDPerf_IndexingLog_onceToken != -1)
  {
    _MDPerf_IndexingLog_cold_1();
  }

  return _MDPerf_IndexingLog_sIndexingLog;
}

uint64_t _MDPerf_SignpostLog()
{
  if (_MDPerf_SignpostLog_onceToken != -1)
  {
    _MDPerf_SignpostLog_cold_1();
  }

  return _MDPerf_SignpostLog_sIndexingLog;
}

CFStringRef MDCopyBestAvailableLanguage(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v23 = v2;
  v4 = v3;
  v5 = v1;
  v33 = *MEMORY[0x1E69E9840];
  v24 = v6;
  if (sBestLanguageOnceDictionaryToken != -1)
  {
    MDCopyBestAvailableLanguage_cold_1();
  }

  v25 = &v23;
  v31 = 0;
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v26, v7);
  bzero(v32, 0x1000uLL);
  if (v4 >= 1)
  {
    v8 = 0;
    v9 = v5;
    v10 = v4;
    v11 = v26;
    v12 = v32;
    do
    {
      v13 = *v9;
      CStringPtr = CFStringGetCStringPtr(*v9, 0x8000100u);
      if (CStringPtr)
      {
        *v11 = CStringPtr;
      }

      else
      {
        Length = CFStringGetLength(v13);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        if (MaximumSizeForEncoding + v8 > 4095 || !CFStringGetCString(v13, v12, MaximumSizeForEncoding, 0x8000100u))
        {
          return v31;
        }

        *v11 = v12;
        v8 += strlen(v12) + 1;
      }

      v12 = &v32[v8];
      ++v11;
      ++v9;
      --v10;
    }

    while (v10);
  }

  *&v29 = 0;
  v17 = v24;
  LOWORD(v29) = CFArrayGetCount(v24);
  WORD1(v29) = v4;
  *(&v29 + 1) = v23;
  v30 = v26;
  pthread_rwlock_rdlock(&sBestLanguageDictionaryLock);
  Value = CFDictionaryGetValue(sBestLanguageDictionary, &v29);
  pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
  if (Value)
  {
    return CFStringCreateWithCStringNoCopy(0, Value, 0x8000100u, *MEMORY[0x1E695E498]);
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v4, MEMORY[0x1E695E9C0]);
  if (v4 >= 1)
  {
    do
    {
      v20 = *v5++;
      CFArrayAppendValue(Mutable, v20);
      --v4;
    }

    while (v4);
  }

  v21 = CFBundleCopyLocalizationsForPreferences(Mutable, v17);
  v27 = v29;
  v28 = v30;
  _get_and_cache_best_localization_match(v21, &v27, &v31);
  if (v21)
  {
    CFRelease(v21);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v31;
}

const __CFArray *_get_and_cache_best_localization_match(CFArrayRef theArray, unsigned __int16 *a2, CFStringRef *a3)
{
  v3 = theArray;
  if (!theArray)
  {
    return v3;
  }

  if (!CFArrayGetCount(theArray))
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
  Length = CFStringGetLength(ValueAtIndex);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v3 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xCB420A60uLL);
  if (!CFStringGetCString(ValueAtIndex, v3, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    free(v3);
    v20 = 0;
    v3 = 0;
    if (!a3)
    {
      return v3;
    }

    goto LABEL_24;
  }

  v9 = malloc_type_malloc(0x18uLL, 0x1080040C4643742uLL);
  v10 = a2[1];
  v9[1] = v10;
  *(v9 + 2) = malloc_type_malloc(8 * v10, 0x10040436913F5uLL);
  if (v9[1])
  {
    v11 = 0;
    v12 = 8 * v9[1];
    do
    {
      *(*(v9 + 2) + v11) = strdup(*(*(a2 + 2) + v11));
      v11 += 8;
    }

    while (v12 != v11);
  }

  v13 = *a2;
  *v9 = v13;
  *(v9 + 1) = malloc_type_malloc(8 * v13, 0x10040436913F5uLL);
  if (*v9)
  {
    v14 = 0;
    v15 = 8 * *v9;
    do
    {
      *(*(v9 + 1) + v14) = strdup(*(*(a2 + 1) + v14));
      v14 += 8;
    }

    while (v15 != v14);
  }

  pthread_rwlock_wrlock(&sBestLanguageDictionaryLock);
  Value = CFDictionaryGetValue(sBestLanguageDictionary, v9);
  if (!Value)
  {
    CFDictionarySetValue(sBestLanguageDictionary, v9, v3);
    pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
    if (!a3)
    {
      return v3;
    }

    goto LABEL_23;
  }

  v17 = Value;
  free(v3);
  pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
  if (v9[1])
  {
    v18 = 0;
    do
    {
      free(*(*(v9 + 2) + 8 * v18++));
    }

    while (v18 < v9[1]);
  }

  free(*(v9 + 2));
  if (*v9)
  {
    v19 = 0;
    do
    {
      free(*(*(v9 + 1) + 8 * v19++));
    }

    while (v19 < *v9);
  }

  free(*(v9 + 1));
  free(v9);
  v3 = v17;
  if (a3)
  {
LABEL_23:
    v20 = CFStringCreateWithCString(0, v3, 0x8000100u);
LABEL_24:
    *a3 = v20;
  }

  return v3;
}

BOOL convertToCArray(CFIndex a1, CFArrayRef theArray, char **a3, char *a4, CFIndex a5)
{
  if (a1 < 1)
  {
    return 1;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    Length = CFStringGetLength(ValueAtIndex);
    v12 = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) + 1;
    if (v12 >= a5)
    {
      return 0;
    }

    else
    {
      v13 = 0;
      v14 = &a4[a5];
      v15 = 1;
      do
      {
        if (!CFStringGetCString(ValueAtIndex, a4, v12, 0x8000100u))
        {
          break;
        }

        *a3 = a4;
        v13 = v15 >= a1;
        if (a1 == v15)
        {
          break;
        }

        a4 += strlen(a4) + 1;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
        v16 = CFStringGetLength(ValueAtIndex);
        v12 = CFStringGetMaximumSizeForEncoding(v16, 0x8000100u) + 1;
        ++a3;
        ++v15;
      }

      while (&a4[v12] < v14);
    }
  }

  return v13;
}

CFStringRef MDRetrieveBestAvailableLanguage(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v22 = *MEMORY[0x1E69E9840];
  if (sBestLanguageOnceDictionaryToken != -1)
  {
    MDCopyBestAvailableLanguage_cold_1();
  }

  v19 = 0;
  Count = CFArrayGetCount(v4);
  v6 = CFArrayGetCount(v3);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  bzero(v21, 0x1000uLL);
  if (convertToCArray(Count, v4, v8, v21, 4096))
  {
    bzero(v20, 0x1000uLL);
    if (convertToCArray(v6, v3, v11, v20, 4096))
    {
      *(&v17 + 1) = v11;
      *&v17 = v6;
      WORD1(v17) = Count;
      v18 = v8;
      pthread_rwlock_rdlock(&sBestLanguageDictionaryLock);
      Value = CFDictionaryGetValue(sBestLanguageDictionary, &v17);
      pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
      if (Value)
      {
        return CFStringCreateWithCStringNoCopy(0, Value, 0x8000100u, *MEMORY[0x1E695E498]);
      }

      else
      {
        v13 = CFBundleCopyLocalizationsForPreferences(v4, v3);
        v15 = v17;
        v16 = v18;
        _get_and_cache_best_localization_match(v13, &v15, &v19);
        if (v13)
        {
          CFRelease(v13);
        }
      }
    }
  }

  return v19;
}

void *MDGetBestAvailableLanguage(uint64_t a1, __int16 a2, uint64_t *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (sBestLanguageOnceDictionaryToken != -1)
  {
    MDCopyBestAvailableLanguage_cold_1();
  }

  *&key = 0;
  *(&key + 1) = a3;
  WORD1(key) = a2;
  v25 = a1;
  v6 = *a3;
  if (*a3)
  {
    LOWORD(v6) = 0;
    v7 = a3 + 1;
    do
    {
      LOWORD(v6) = v6 + 1;
    }

    while (*v7++);
  }

  LOWORD(key) = v6;
  pthread_rwlock_rdlock(&sBestLanguageDictionaryLock);
  Value = CFDictionaryGetValue(sBestLanguageDictionary, &key);
  pthread_rwlock_unlock(&sBestLanguageDictionaryLock);
  if (!Value)
  {
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], WORD1(key), MEMORY[0x1E695E9C0]);
    if (WORD1(key))
    {
      v12 = 0;
      do
      {
        v13 = CFStringCreateWithCString(v10, *(v25 + 8 * v12), 0x8000100u);
        if (v13)
        {
          v14 = v13;
          CFArrayAppendValue(Mutable, v13);
          CFRelease(v14);
        }

        ++v12;
      }

      while (v12 < WORD1(key));
    }

    v15 = CFArrayCreateMutable(v10, key, MEMORY[0x1E695E9C0]);
    if (key)
    {
      v16 = 0;
      do
      {
        v17 = CFStringCreateWithCString(v10, *(*(&key + 1) + 8 * v16), 0x8000100u);
        if (v17)
        {
          v18 = v17;
          CFArrayAppendValue(v15, v17);
          CFRelease(v18);
        }

        ++v16;
      }

      while (v16 < key);
    }

    v19 = CFBundleCopyLocalizationsForPreferences(Mutable, v15);
    if (v19)
    {
      v20 = v19;
      v22 = key;
      v23 = v25;
      Value = _get_and_cache_best_localization_match(v19, &v22, 0);
      CFRelease(v20);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v15);
    CFRelease(Mutable);
  }

  return Value;
}

CFMutableDictionaryRef __initBestLanguageDict_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *byte_1F29A5F10;
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &v1, 0);
  sBestLanguageDictionary = result;
  return result;
}

BOOL BestLanguageDictionaryEqualCallBack(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return 0;
  }

  v5 = a1[1];
  if (v5 != a2[1])
  {
    return 0;
  }

  if (*a1)
  {
    v6 = *(a1 + 1);
    v7 = *(a2 + 1);
    while (!strcmp(*v6, *v7))
    {
      ++v7;
      ++v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  if (!v5)
  {
    return 1;
  }

  v8 = *(a1 + 2);
  v9 = *(a2 + 2);
  if (strcmp(*v8, *v9))
  {
    return 0;
  }

  v11 = 1;
  do
  {
    v12 = v11;
    if (v5 == v11)
    {
      break;
    }

    v13 = strcmp(v8[v11], v9[v11]);
    v11 = v12 + 1;
  }

  while (!v13);
  return v12 >= v5;
}

const __CFString *_MDStringCopyAbbreviations(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v65 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    return v2;
  }

  Length = CFStringGetLength(v1);
  if (Length < 3)
  {
    return 0;
  }

  if (Length >= 0x400)
  {
    v4 = 1024;
  }

  else
  {
    v4 = Length;
  }

  MEMORY[0x1EEE9AC00](Length);
  v6 = (&v52 - v5);
  bzero(&v52 - v5, v7);
  CharactersPtr = CFStringGetCharactersPtr(v2);
  if (!CharactersPtr)
  {
    v66.location = 0;
    v66.length = v4;
    CFStringGetCharacters(v2, v66, v6);
    CharactersPtr = v6;
  }

  HIDWORD(v57) = 0;
  unorm2_getNFCInstance();
  if (v57 <= 0)
  {
    HIDWORD(v57) = 0;
    v9 = unorm2_quickCheck();
    bzero(&v64[1025], 0x800uLL);
    if (v9 != 1)
    {
      HIDWORD(v57) = 0;
      v10 = unorm2_normalize();
      if (v10 < 1025 && HIDWORD(v57) == 0)
      {
        CharactersPtr = &v64[1025];
        v4 = v10;
      }

      else
      {
        v4 = v4;
      }
    }
  }

  else
  {
    bzero(&v64[1025], 0x800uLL);
  }

  v57 = 0;
  bzero(v64, 0x401uLL);
  u_strToUTF8(v64, 1024, &v57, CharactersPtr, v4, &v57 + 1);
  if (HIDWORD(v57))
  {
    return 0;
  }

  bzero(v63, 0x400uLL);
  bzero(v62, 0x2000uLL);
  bzero(v61, 0x2000uLL);
  v11 = v64[0];
  v12 = MEMORY[0x1E695E480];
  if (!v64[0])
  {
    v33 = 0;
    v63[0] = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_69;
  }

  v53 = v4;
  v54 = &v52;
  v56 = 0;
  v13 = 0;
  v14 = 0;
  v52 = &v59 + 1;
  v55 = &v64[1];
  v15 = 28672;
  v16 = v63;
  do
  {
    v17 = v11 >> 4;
    v18 = utf8_byte_length_noerror_utf8_len_table[v17];
    v19 = v14 + v18;
    if (v14 + v18 > 0x3FF)
    {
      break;
    }

    if ((v11 & 0x80) != 0)
    {
      v20 = ~v17;
      v21 = utf8_byte_length_utf8_len_table[v17];
      v22 = utf8_to_code_point_utf8_first_char_mask[v21] & v11;
      if ((v20 & 0xC) != 0)
      {
        v11 &= utf8_to_code_point_utf8_first_char_mask[v21];
        if (!v22)
        {
          break;
        }
      }

      else
      {
        if (v21 <= 2)
        {
          v21 = 2;
        }

        else
        {
          v21 = v21;
        }

        v23 = v21 - 1;
        v24 = &v55[v14];
        v25 = &v55[v14];
        v26 = v23;
        v27 = v22;
        do
        {
          v28 = *v25++;
          v27 = v28 & 0x3F | (v27 << 6);
          --v26;
        }

        while (v26);
        if (!v27)
        {
          break;
        }

        do
        {
          v29 = *v24++;
          v11 = v29 & 0x3F | (v22 << 6);
          v22 = v11;
          --v23;
        }

        while (v23);
      }
    }

    v30 = &v64[v14];
    v31 = 1 << u_charType(v11);
    if ((v31 & 0x3E) != 0)
    {
      if ((v15 & 0x7000) != 0)
      {
        v61[v13++] = v30;
      }

      if ((v15 & 0x3E) != 0 && (v31 & 0xA) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v31 & 0xE00) == 0)
      {
        goto LABEL_42;
      }

      if ((v15 & 0x7000) != 0)
      {
        v61[v13++] = v30;
      }

      if ((v15 & 0xE00) != 0)
      {
        goto LABEL_42;
      }
    }

    v32 = v56;
    v62[v56] = v30;
    v56 = v32 + 1;
LABEL_42:
    if ((v31 & 0x7000) == 0)
    {
      memcpy(v16, v30, v18);
      v16 += v18;
    }

    if ((v31 & 0x1C0) == 0)
    {
      v15 = v31;
    }

    v11 = v64[v19];
    v14 = v19;
  }

  while (v64[v19]);
  v33 = 0;
  *v16 = 0;
  v59 = 0u;
  v60 = 0u;
  v34 = v56;
  if (v56 < 2)
  {
    LODWORD(v4) = v53;
    v12 = MEMORY[0x1E695E480];
  }

  else
  {
    LODWORD(v4) = v53;
    v12 = MEMORY[0x1E695E480];
    if (v56 != v53)
    {
      v33 = 0;
      v35 = &v59;
      if (v13 >= 2 && v63[0])
      {
        v36 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v63, 0x8000100u);
        if (v36)
        {
          *&v59 = v36;
          v33 = 1;
          v35 = v52;
        }

        else
        {
          v33 = 0;
          v35 = &v59;
        }
      }

      bzero(v58, 0x400uLL);
      build_initials(v62, v34, v58);
      if (LOBYTE(v58[0].location))
      {
        v37 = CFStringCreateWithCString(*v12, v58, 0x8000100u);
        if (v37)
        {
          ++v33;
          *v35 = v37;
        }
      }

      if (v13 >= 2 && v13 != v34)
      {
        build_initials(v61, v13, v58);
        if (LOBYTE(v58[0].location))
        {
          v38 = CFStringCreateWithCString(*v12, v58, 0x8000100u);
          if (v38)
          {
            v39 = v38;
            if (v33)
            {
              v40 = 0;
              while (CFStringCompare(v39, *(&v59 + v40), 0))
              {
                if (v33 == ++v40)
                {
                  goto LABEL_67;
                }
              }

              CFRelease(v39);
            }

            else
            {
LABEL_67:
              *(&v59 + v33++) = v39;
            }
          }
        }
      }
    }
  }

LABEL_69:
  if (_MDStringCopyAbbreviations_onceToken != -1)
  {
    _MDStringCopyAbbreviations_cold_1();
  }

  v41 = *v12;
  v42 = v4;
  Mutable = CFStringCreateMutable(*v12, v4);
  v58[0].location = 0;
  v58[0].length = 0;
  v67.location = 0;
  v67.length = v4;
  if (CFStringFindCharacterFromSet(v2, _MDStringCopyAbbreviations_characterSet, v67, 0, v58))
  {
    v44 = 0;
    do
    {
      v68.length = v58[0].location - v44;
      v68.location = v44;
      v45 = CFStringCreateWithSubstring(v41, v2, v68);
      CFStringAppend(Mutable, v45);
      CFRelease(v45);
      v44 = v58[0].length + v58[0].location;
      v46 = v42 - (v58[0].length + v58[0].location);
      v69.location = v58[0].length + v58[0].location;
      v69.length = v46;
    }

    while (CFStringFindCharacterFromSet(v2, _MDStringCopyAbbreviations_characterSet, v69, 0, v58));
    if (v44 >= 1)
    {
      v70.location = v44;
      v70.length = v46;
      v47 = CFStringCreateWithSubstring(v41, v2, v70);
      CFStringAppend(Mutable, v47);
      CFRelease(v47);
      if (CFStringGetLength(Mutable))
      {
        if (v33 < 1)
        {
LABEL_80:
          *(&v59 + v33++) = Mutable;
          Mutable = 0;
        }

        else
        {
          v48 = 0;
          while (CFStringCompare(Mutable, *(&v59 + v48), 0))
          {
            if (v33 == ++v48)
            {
              goto LABEL_80;
            }
          }
        }
      }
    }
  }

  if (v33)
  {
    v2 = CFArrayCreate(v41, &v59, v33, MEMORY[0x1E695E9C0]);
    if (v33 >= 1)
    {
      v49 = &v59;
      do
      {
        v50 = *v49++;
        CFRelease(v50);
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    v2 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t build_initials(uint64_t result, unsigned int a2, char *__dst)
{
  v26 = result;
  if (a2)
  {
    v4 = 0;
    v25 = a2;
    do
    {
      v5 = *(v26 + 8 * v4);
      v6 = utf8_byte_length_noerror_utf8_len_table[*v5 >> 4];
      memcpy(__dst, v5, v6);
      v7 = &v5[v6];
      v8 = v5[v6];
      if (v8 < 0)
      {
        v9 = utf8_byte_length_utf8_len_table[v5[v6] >> 4];
        v10 = (v8 & utf8_to_code_point_utf8_first_char_mask[v9]);
        if ((~(v5[v6] >> 4) & 0xC) != 0)
        {
          v8 = (v8 & utf8_to_code_point_utf8_first_char_mask[v9]);
        }

        else
        {
          if (v9 <= 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = utf8_byte_length_utf8_len_table[v5[v6] >> 4];
          }

          v12 = v11 - 1;
          v13 = &v5[v6 + 1];
          do
          {
            v14 = *v13++;
            v8 = v14 & 0x3F | (v10 << 6);
            v10 = v8;
            --v12;
          }

          while (v12);
        }
      }

      __dst += v6;
      result = u_charType(v8);
      if (v8)
      {
        v15 = ((1 << result) & 0x1C0) == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        do
        {
          v16 = utf8_byte_length_noerror_utf8_len_table[*v7 >> 4];
          memcpy(__dst, v7, v16);
          v17 = v7[v16];
          if (v17 < 0)
          {
            v18 = utf8_byte_length_utf8_len_table[v7[v16] >> 4];
            v19 = (v17 & utf8_to_code_point_utf8_first_char_mask[v18]);
            if ((~(v7[v16] >> 4) & 0xC) != 0)
            {
              v17 = (v17 & utf8_to_code_point_utf8_first_char_mask[v18]);
            }

            else
            {
              if (v18 <= 2)
              {
                v20 = 2;
              }

              else
              {
                v20 = utf8_byte_length_utf8_len_table[v7[v16] >> 4];
              }

              v21 = v20 - 1;
              v22 = &v7[v16 + 1];
              do
              {
                v23 = *v22++;
                v17 = v23 & 0x3F | (v19 << 6);
                v19 = v17;
                --v21;
              }

              while (v21);
            }
          }

          __dst += v16;
          result = u_charType(v17);
          if (v17)
          {
            v24 = ((1 << result) & 0x1C0) == 0;
          }

          else
          {
            v24 = 1;
          }

          v7 += v16;
        }

        while (!v24);
      }

      ++v4;
    }

    while (v4 != v25);
  }

  *__dst = 0;
  return result;
}

void _MDPathFilterDumpRawFilterInternal(unint64_t *a1, int a2, uint64_t a3, char *a4, char *a5)
{
  LODWORD(v8) = a2;
  v31 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  bzero(__src, 0x400uLL);
  if (a4)
  {
    if (v8 < 1)
    {
      goto LABEL_9;
    }

    v11 = 0;
    v8 = v8;
    v12 = (a3 + 8);
    do
    {
      v13 = (v10 >> *(v12 - 2)) & ~(-1 << (*(v12 - 2) >> 6));
      if (v13)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        *__str = 0u;
        v15 = 0u;
        snprintf(__str, 0x100uLL, "%s:%lld ", *v12, v13);
        __strlcat_chk();
        ++v11;
      }

      v12 += 2;
      --v8;
    }

    while (v8);
    if (v11)
    {
      strcpy(a4, __src);
    }

    else
    {
LABEL_9:
      strcpy(a4, "no rule bits");
    }
  }

  if (a5)
  {
    sprintf(a5, "rule:%d  descend:%d  softrule:%d defAux:%d auxIdx:%d auxVal:%lld subAuxCnt:%d parentBndlIdx:%d bundleIdx:%d", v10 >> 63, (v10 & 0x4000000000000000) != 0, (v10 & 0x2000000000000000) != 0, *(a1 + 9), *(a1 + 8), a1[1], *(a1 + 11), *(a1 + 13), *(a1 + 12));
  }
}

uint64_t arrayObjectToElementRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v10 = 0uLL;
  v11 = 0;
  v12 = *a1;
  v13 = *(a1 + 16);
  _MDPlistArrayGetPlistObjectAtIndex(&v12, 0, &v10, a3, a4, a5, a6, a7, a8);
  v12 = v10;
  v13 = v11;
  v14[0] = 0;
  BytePtr = _MDPlistDataGetBytePtr(&v12, v14);
  if (v14[0] != 60)
  {
    puts("Dying!");
  }

  return BytePtr;
}

uint64_t fillFilterStackRecord(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v34 = *a3;
  v35 = *(a3 + 16);
  v13 = arrayObjectToElementRecord(&v34, a2, a3, a4, a5, a6, a7, a8);
  v20 = v13;
  v21 = *(v13 + 28);
  v22 = (v21 & 0x5FFFFFFFFFFFFFFFLL ^ 0x7FFFFFFFFFFFFFFFLL) & *(a2 + 48) | *(v13 + 36);
  if (*a1 && *(v13 + 44) != 0)
  {
    v22 = *(v13 + 52) | (*(v13 + 44) & 0x5FFFFFFFFFFFFFFFLL ^ 0x7FFFFFFFFFFFFFFFLL) & v22;
    v21 = *(v13 + 44);
  }

  v32 = *a3;
  v33 = *(a3 + 16);
  _MDPlistArrayGetPlistObjectAtIndex(&v32, 0, &v34, v14, v15, v16, v17, v18, v19);
  v23 = _MDPlistPlistObjectToEmbeddedReference(&v34);
  v34 = *a3;
  v35 = *(a3 + 16);
  v24 = _MDPlistPlistObjectToEmbeddedReference(&v34);
  v25 = v20[11];
  if (v20[11])
  {
    v26 = *(a2 + 68) != v25;
  }

  else
  {
    v26 = 0;
    v25 = *(a2 + 68);
  }

  v27 = a4 + 80 * v8;
  v28 = v20[12];
  v29 = v20[13];
  if (*a1 == 47)
  {
    v30 = a1 + 1;
  }

  else
  {
    v30 = a1;
  }

  *v27 = v8;
  *(v27 + 4) = v23;
  *(v27 + 8) = v20;
  *(v27 + 16) = v24;
  *(v27 + 24) = v30;
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  *(v27 + 48) = v22;
  *(v27 + 56) = v21;
  *(v27 + 64) = v26;
  *(v27 + 68) = v25;
  *(v27 + 72) = v28;
  *(v27 + 76) = v29;
  return a4 + 80 * v8;
}

unint64_t _MDPlistEmbeddedReferenceToPlistObject@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = *(result + 48);
  v11 = *(result + 32);
  *a4 = v10;
  *(a4 + 8) = v11;
  *(a4 + 4) = a2;
  if (!a2)
  {
    a3 = 0;
  }

  *(a4 + 20) = a3;
  if (!*(result + 136))
  {
    if (v11 <= 0x1C)
    {
      _MDPlistEmbeddedReferenceToPlistObject_cold_1(result, a2, v11, a5, a6, a7, a8, a9);
    }

    v12 = *a4;
    v13 = *(a4 + 2);
    return validatePlistObject((v10 + 19), &v12, v11, 0, a6, a7, a8, a9);
  }

  return result;
}

unint64_t _MDPlistReferenceToPlistObject@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = *(result + 48);
  v9 = *(result + 32);
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 20) = BYTE4(a2);
  *(a3 + 4) = a2;
  if (!*(result + 136))
  {
    if (v9 <= 0x1C)
    {
      _MDPlistReferenceToPlistObject_cold_1(result, a2, v9, a4, a5, a6, a7, a8);
    }

    v10 = *a3;
    v11 = *(a3 + 2);
    return validatePlistObject((v8 + 19), &v10, v9, 0, a5, a6, a7, a8);
  }

  return result;
}

uint64_t _MDPlistGetPlistObjectSize(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 & 0xF0) == 0xE0)
  {
    return 4;
  }

  if ((*(a1 + 20) & 0x80) != 0)
  {
    return *(*a1 + *(a1 + 16)) + 4;
  }

  return (v1 & 0xF) + 5;
}

unsigned int *_MDPlistGetRootPlistObjectFromBytesWithError@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v9[1] = 0;
  v9[2] = a1;
  v9[3] = 0;
  return MDPlistGetRootPlistObjectFromBuffer(v9, a3, a4, a3, a5, a6, a7, a8);
}