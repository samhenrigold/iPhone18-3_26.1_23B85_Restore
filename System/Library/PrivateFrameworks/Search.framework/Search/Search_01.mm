void sub_10003C9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23)
{
  sub_1000066D4(&a15);
  v25 = a22;
  *v23 = a21;
  *(v23 + 16) = v25;
  *(v23 + 32) = a23;
  _Unwind_Resume(a1);
}

void sub_10003CA34(uint64_t a1)
{
  v2 = [[NSError alloc] initWithDomain:@"MainCSIndexTimedOut" code:95208 userInfo:0];
  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
}

void *sub_10003CAB4(uint64_t a1, int a2, unint64_t a3, size_t a4, unint64_t a5, int *a6)
{
  v12 = si_tracing_current_span();
  v13 = *(v12 + 16);
  v129 = *v12;
  v130 = v13;
  v131 = *(v12 + 32);
  v14 = *(a1 + 80);
  *v12 = *(a1 + 64);
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a1 + 96);
  v15 = objc_autoreleasePoolPush();
  v16 = HIDWORD(a3);
  switch(a2)
  {
    case 0:
      v17 = malloc_type_malloc(0x28uLL, 0x1020040C9F8C70BuLL);
      *v17 = atomic_fetch_add(&qword_1000A8540, 1uLL);
      v17[1] = a6;
      *(v17 + 4) = _SIProtectionClass();
      *(v17 + 20) = _SIPriority();
      v17[3] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      v17[4] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      goto LABEL_102;
    case 1:
      CFRelease(*(a3 + 24));
      CFRelease(*(a3 + 32));
      goto LABEL_100;
    case 2:
      v17 = malloc_type_malloc(0x58uLL, 0x10E00406EEDA840uLL);
      *v17 = a6;
      v17[1] = a3;
      *(v17 + 32) = 8;
      *(v17 + 1) = 0u;
      *(v17 + 2) = 0u;
      *(v17 + 3) = 0u;
      v17[9] = malloc_type_calloc(8uLL, 8uLL, 0x2004093837F09uLL);
      v17[10] = 0;
      goto LABEL_102;
    case 3:
      cf = 0;
      v27.i32[1] = 0;
      v126 = 0u;
      *v127 = 0u;
      v28 = *(a3 + 32);
      v29 = *(a3 + 64);
      v126 = *(a3 + 48);
      *v127 = v29;
      v125 = 0u;
      cf = *(a3 + 80);
      v125 = v28;
      *v124 = *(a3 + 16);
      *(a3 + 80) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      if ((*v124 & 0x400) == 0)
      {
        v30 = 0;
        goto LABEL_86;
      }

      v27.i32[0] = *v124 & 0x3FF;
      v58 = vcnt_s8(v27);
      v58.i16[0] = vaddlv_u8(v58);
      v30 = *(v127[1] + v58.u32[0]);
      if (!v30 || *(v30 + 20))
      {
LABEL_86:
        v59 = SPLogForSPLogCategoryDefault();
        v60 = v59;
        if (gSPLogDebugAsDefault)
        {
          v61 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v61 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v59, v61))
        {
          *buf = 134217984;
          *&buf[4] = v30;
          _os_log_impl(&_mh_execute_header, v60, v61, "Prune no bundle id %p", buf, 0xCu);
        }

        goto LABEL_92;
      }

      v67 = *(v30 + 24);
      if (v67 == 16)
      {
        v68 = [*(v30 + 32) cStringUsingEncoding:4];
      }

      else
      {
        if (v67 != 1)
        {
          goto LABEL_86;
        }

        v68 = *(v30 + 32);
      }

      if (!v68)
      {
        goto LABEL_86;
      }

      v69 = SPLogForSPLogCategoryDefault();
      v70 = v69;
      if (gSPLogDebugAsDefault)
      {
        v71 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v71 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v69, v71))
      {
        *buf = 136315138;
        *&buf[4] = v68;
        _os_log_impl(&_mh_execute_header, v70, v71, "Got result for bundle %s", buf, 0xCu);
      }

      if ((*v124 & 0x1000000000) == 0 || (v72 = vcnt_s8((*v124 & 0xFFFFFFFFFLL)), v72.i16[0] = vaddlv_u8(v72), (v73 = *(v127[1] + v72.u32[0])) == 0) || *(v73 + 32) >= *(a1 + 104))
      {
        v123 = sub_10004B760(*(a3 + 8), v124);
        os_unfair_lock_lock(&stru_1000A853C);
        v74 = NSMapGet(*(a1 + 32), v68);
        if (!v74)
        {
          v74 = CFBinaryHeapCreate(kCFAllocatorDefault, 0, &unk_1000A7FC8, 0);
          NSMapInsert(*(a1 + 32), v68, v74);
          CFRelease(v74);
        }

        heap = v74;
        v119 = strcmp(v68, "com.apple.MobileSMS");
        if (v119)
        {
          v75 = strcmp(v68, "com.apple.mobilemail");
          v76 = (a1 + 112);
          v77 = *(a1 + 112);
          if (v75)
          {
            v78 = strcmp(v68, "com.apple.mobileslideshow");
            HIDWORD(v117) = v78 != 0;
            v118 = 0;
            v116 = v78 == 0;
            LODWORD(v117) = v116;
          }

          else
          {
            v117 = 0;
            v116 = 0;
            if (!*(*(*(a1 + 56) + 8) + 24))
            {
              v77 *= 5;
            }

            v118 = 1;
          }
        }

        else
        {
          v118 = 0;
          v76 = (a1 + 112);
          v77 = *(a1 + 112);
          v116 = 0;
          v117 = 1;
        }

        if (v77 <= 300 && v77)
        {
          if (v77 < 1)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v79 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            v80 = *v76;
            *buf = 67109632;
            *&buf[4] = v77;
            *&buf[8] = 1024;
            *&buf[10] = v80;
            v133 = 1024;
            v134 = v77;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "checkCount is %d for query; fetchCount is %d, relaxedCheckCount is %d\n", buf, 0x14u);
          }

          v77 = 300;
        }

        if (CFBinaryHeapGetCount(heap) < v77)
        {
LABEL_135:
          v81 = 0;
          goto LABEL_177;
        }

        Minimum = CFBinaryHeapGetMinimum(heap);
        if (sub_10004D574(v123, Minimum) == 1)
        {
          if (v119)
          {
            if (v116)
            {
              v83 = (Minimum + 64);
              v84 = 3;
            }

            else
            {
              if (v118)
              {
                v84 = 81;
              }

              else
              {
                v84 = 2;
              }

              if (((v118 | BYTE4(v117)) & 1) == 0)
              {
                v88 = 0;
LABEL_175:
                CFBinaryHeapRemoveMinimumValue(heap);
                v81 = 0;
LABEL_176:

LABEL_177:
                if (qword_1000A8528)
                {
                  v99 = a6[4];
                  if (v99 < [qword_1000A8528 count])
                  {
                    v100 = *(a6 + 20);
                    if (v100)
                    {
                      v101 = @"Priority";
                    }

                    else
                    {
                      v101 = [qword_1000A8528 objectAtIndexedSubscript:a6[4]];
                    }

                    sub_10004BD9C(v123, v124, v101);
                    if ((v100 & 1) == 0)
                    {
                    }

                    if ((v81 & 1) == 0)
                    {
                      CFBinaryHeapAddValue(heap, v123);
                    }

                    sub_10004BFA8(0, v123);
                    goto LABEL_187;
                  }

                  v104 = "batch->protectionClass < (int)protectionClasses.count";
                  v105 = 3789;
                }

                else
                {
                  v104 = "protectionClasses";
                  v105 = 3788;
                }

                __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", v105, v104);
              }

              v83 = v124;
            }
          }

          else
          {
            v83 = (Minimum + 64);
            v84 = 50;
          }

          v88 = sub_10004BAE0(v83, v84);
          if (v88)
          {
            v93 = NSMapGet(*(a1 + 40), v68);
            if (!v93)
            {
              v93 = sub_1000612C4(v77);
              NSMapInsert(*(a1 + 40), v68, v93);
            }

            *buf = 0;
            v94 = CFHash(v88);
            if (sub_100061384(v93, v94, Minimum, buf))
            {
              if (*buf)
              {
                v95 = NSMapGet(*(a1 + 48), v68);
                if (!v95)
                {
                  v95 = sub_1000612C4(v77);
                  NSMapInsert(*(a1 + 48), v68, v95);
                }

                v96 = CFHash(v88);
                sub_10006141C(v95, v96, *buf);
                sub_10004BFA8(kCFAllocatorDefault, *buf);
              }
            }

            else
            {
              v97 = NSMapGet(*(a1 + 48), v68);
              if (!v97)
              {
                v97 = sub_1000612C4(v77);
                NSMapInsert(*(a1 + 48), v68, v97);
              }

              v98 = CFHash(v88);
              sub_10006141C(v97, v98, Minimum);
            }
          }

          goto LABEL_175;
        }

        if (((v117 | v118 | HIDWORD(v117)) & 1) == 0)
        {
          goto LABEL_156;
        }

        v85 = 3;
        if (!v119)
        {
          v85 = 50;
        }

        v86 = 2;
        if (v118)
        {
          v86 = 81;
        }

        v87 = v117 ? v85 : v86;
        v88 = sub_10004BAE0(v124, v87);
        if (v88)
        {
          v89 = NSMapGet(*(a1 + 40), v68);
          if (!v89)
          {
            v89 = sub_1000612C4(v77);
            NSMapInsert(*(a1 + 40), v68, v89);
          }

          *buf = 0;
          v90 = CFHash(v88);
          if (sub_100061384(v89, v90, v123, buf))
          {
            if (*buf)
            {
              v91 = NSMapGet(*(a1 + 48), v68);
              if (!v91)
              {
                v91 = sub_1000612C4(v77);
                NSMapInsert(*(a1 + 48), v68, v91);
              }

              v92 = CFHash(v88);
              sub_10006141C(v91, v92, *buf);
              sub_10004BFA8(kCFAllocatorDefault, *buf);
            }

LABEL_191:
            v81 = 1;
            goto LABEL_176;
          }

          v102 = NSMapGet(*(a1 + 48), v68);
          if (!v102)
          {
            v102 = sub_1000612C4(v77);
            NSMapInsert(*(a1 + 48), v68, v102);
          }

          v103 = CFHash(v88);
          if (sub_10006141C(v102, v103, v123))
          {
            goto LABEL_191;
          }

          free(v123);
        }

        else
        {
LABEL_156:
          free(v123);
        }

LABEL_187:
        os_unfair_lock_unlock(&stru_1000A853C);
      }

LABEL_92:
      v62 = v127[1];
      if (v127[1])
      {
        v63 = BYTE1(v127[0]);
        if (BYTE1(v127[0]))
        {
          v64 = v127[1];
          do
          {
            sub_10004BE4C(*v64++);
            --v63;
          }

          while (v63);
        }

        free(v62);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

LABEL_100:
      free(a3);
LABEL_101:
      v17 = 0;
LABEL_102:
      objc_autoreleasePoolPop(v15);
      v65 = v130;
      *v12 = v129;
      *(v12 + 16) = v65;
      *(v12 + 32) = v131;
      return v17;
    case 4:
      v17 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F20407A6C0F06uLL);
      v17[1] = *a6;
      *v17 = 1;
      goto LABEL_102;
    case 5:
      if (*(a3 + 24))
      {
        sub_10003DEA0(a6 + 2, a5, a3);
      }

      else
      {
        sub_10004BE4C(a3);
      }

      goto LABEL_101;
    case 6:
      v32 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F20409211DA8EuLL);
      v17 = v32;
      *(v32 + 1) = *(a6 + 1);
      v33 = 3;
      goto LABEL_40;
    case 7:
      if (*a6 == 2)
      {
        v17 = 0;
        *(a6 + 10) = a3;
        a6[28] = 19;
        goto LABEL_102;
      }

      if (*a6 != 1)
      {
        v115 = SPLogForSPLogCategoryDefault();
        sub_1000633A0(v115);

        __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", 3843, "0");
      }

      a6[5] = 3;
      a6[6] = *(a3 + 64);
      v31 = *(a3 + 48);
      *(a6 + 2) = *(a3 + 32);
      *(a6 + 3) = v31;
      *(a6 + 4) = *(a3 + 16);
      goto LABEL_100;
    case 8:
      v17 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
      v17[1] = *(a6 + 1);
      *v17 = 4;
      v17[2] = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      goto LABEL_102;
    case 9:
      if (*a6 == 2)
      {
        *(a6 + 10) = *(a3 + 16);
        a6[28] = 17;
      }

      else
      {
        if (*a6 != 1)
        {
          v114 = SPLogForSPLogCategoryDefault();
          sub_100063330(v114);

          __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", 3885, "0");
        }

        *(a6 + 5) = 0x1100000004;
        v26 = *(a3 + 16);
        *(a6 + 4) = v26;
        CFDictionarySetValue(*(*(a3 + 8) + 32), a4, v26);
      }

      goto LABEL_100;
    case 10:
      v110 = SPLogForSPLogCategoryDefault();
      v107 = v110;
      if (gSPLogDebugAsDefault)
      {
        v111 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v111 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v110, v111))
      {
        *v124 = 0;
        _os_log_impl(&_mh_execute_header, v107, v111, "ERROR: In 'performQuery', Handling for a Dictonary Container has not yet been implemented", v124, 2u);
      }

      v109 = 3996;
      goto LABEL_214;
    case 11:
      v106 = SPLogForSPLogCategoryDefault();
      v107 = v106;
      if (gSPLogDebugAsDefault)
      {
        v108 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v108 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v106, v108))
      {
        *v124 = 0;
        _os_log_impl(&_mh_execute_header, v107, v108, "ERROR: In 'performQuery', Handling for a Dictonary Container has not yet been implemented", v124, 2u);
      }

      v109 = 4004;
      goto LABEL_214;
    case 12:
      v32 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F204051DD1B44uLL);
      v17 = v32;
      *(v32 + 1) = *(a6 + 1);
      v33 = 2;
LABEL_40:
      *v32 = v33;
      goto LABEL_102;
    case 13:
      v17 = 0;
      *(a6 + 5) = 0x1500000002;
      *(a6 + 4) = a3;
      goto LABEL_102;
    case 14:
      v112 = SPLogForSPLogCategoryDefault();
      v107 = v112;
      if (gSPLogDebugAsDefault)
      {
        v113 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v113 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v112, v113))
      {
        *v124 = 0;
        _os_log_impl(&_mh_execute_header, v107, v113, "ERROR: In 'performQuery', Handling for a Event Key Container has not yet been implemented", v124, 2u);
      }

      v109 = 4017;
LABEL_214:

      __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", v109, "0");
    case 15:
      a4 = 0;
      v16 = 0;
      LODWORD(v22) = 0;
      LOWORD(v19) = 0;
      v17 = 0;
      LOBYTE(a3) = a3 & 1;
      v20 = 14;
      goto LABEL_37;
    case 16:
      a4 = 0;
      v16 = 0;
      LODWORD(v22) = 0;
      LOWORD(v19) = 0;
      v17 = 0;
      v20 = 5;
      goto LABEL_37;
    case 17:
      a4 = 0;
      v16 = 0;
      LODWORD(v22) = 0;
      v17 = 0;
      v19 = a3 >> 8;
      v20 = 4;
      goto LABEL_42;
    case 18:
      a4 = 0;
      v16 = 0;
      v17 = 0;
      v22 = (a3 >> 16);
      v19 = a3 >> 8;
      v20 = 3;
      goto LABEL_31;
    case 19:
      a4 = 0;
      v17 = 0;
      v22 = (a3 >> 16);
      v19 = a3 >> 8;
      v20 = 2;
      goto LABEL_45;
    case 20:
      a4 = 0;
      v16 = 0;
      LODWORD(v22) = 0;
      LOWORD(v19) = 0;
      v17 = 0;
      v20 = 10;
LABEL_37:
      v21 = 1;
      goto LABEL_51;
    case 21:
      a4 = 0;
      v16 = 0;
      LODWORD(v22) = 0;
      v17 = 0;
      v19 = a3 >> 8;
      v20 = 9;
LABEL_42:
      v21 = 2;
      goto LABEL_51;
    case 22:
      a4 = 0;
      v16 = 0;
      v17 = 0;
      v22 = (a3 >> 16);
      v19 = a3 >> 8;
      v20 = 8;
      goto LABEL_31;
    case 23:
      a4 = 0;
      v17 = 0;
      v22 = (a3 >> 16);
      v19 = a3 >> 8;
      v20 = 7;
      goto LABEL_45;
    case 24:
      v17 = 0;
      v22 = (a3 >> 16);
      v19 = a3 >> 8;
      v20 = 6;
      v21 = 16;
      goto LABEL_51;
    case 25:
      a4 = 0;
      v17 = 0;
      v22 = (a3 >> 16);
      v19 = a3 >> 8;
      v20 = 13;
      goto LABEL_45;
    case 26:
      a4 = 0;
      v16 = 0;
      v17 = 0;
      v22 = (a3 >> 16);
      v19 = a3 >> 8;
      v20 = 11;
LABEL_31:
      v21 = 4;
      goto LABEL_51;
    case 27:
      a4 = 0;
      v17 = 0;
      v22 = (a3 >> 16);
      v19 = a3 >> 8;
      v20 = 12;
LABEL_45:
      v21 = 8;
      goto LABEL_51;
    case 28:
      v25 = strdup(a3);
      goto LABEL_25;
    case 29:
      v25 = strndup(a3, a4);
LABEL_25:
      a4 = 0;
      v17 = 0;
      v19 = v25 >> 8;
      v22 = (v25 >> 16);
      v16 = HIDWORD(v25);
      v20 = 1;
      v21 = 8;
      goto LABEL_50;
    case 30:
      v23 = *(*(a6 + 1) + 24);
      if (!v23)
      {
        goto LABEL_8;
      }

      Value = CFDictionaryGetValue(v23, a4);
      v17 = Value;
      if (!Value)
      {
        goto LABEL_102;
      }

      v25 = CFRetain(Value);
      v21 = 0;
      a4 = 0;
      v19 = v25 >> 8;
      v22 = (v25 >> 16);
      v16 = HIDWORD(v25);
      v20 = 16;
LABEL_50:
      LOBYTE(a3) = v25;
LABEL_51:
      v35 = *a6;
      if (*a6 > 3)
      {
        if (v35 == 4)
        {
          if (v20 == 16)
          {
            CFArrayAppendValue(*(a6 + 2), (a3 | (v19 << 8) | (v22 << 16) | (v16 << 32)));
            CFRelease((a3 | (v19 << 8) | (v22 << 16) | (v16 << 32)));
          }

          else if (v20 == 15)
          {
            __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", 4168, "0");
          }

          goto LABEL_102;
        }

        if (v35 == 5)
        {
          v40 = a6[4];
          if (*(a6 + 4) == v40)
          {
            if (v40)
            {
              v41 = 2 * v40;
              *(a6 + 4) = v41;
              *(a6 + 5) = malloc_type_realloc(*(a6 + 5), v41 * v21, 0x1DAC99AAuLL);
              if (a6[16] != v20)
              {
                v42 = "array->valtype == type";
                v43 = 4116;
LABEL_65:
                __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", v43, v42);
              }
            }

            else
            {
              *(a6 + 4) = 4;
              *(a6 + 5) = malloc_type_malloc(4 * v21, 0x9BBDE17uLL);
              a6[16] = v20;
            }
          }

          v42 = "0";
          v43 = 4153;
          switch(v20)
          {
            case 1:
            case 12:
            case 13:
LABEL_78:
              v45 = *(a6 + 5);
              v46 = a6[4];
              a6[4] = v46 + 1;
              *(v45 + 8 * v46) = a3 | (v19 << 8) | (v22 << 16) | (v16 << 32);
              goto LABEL_102;
            case 2:
            case 7:
LABEL_81:
              v51 = *(a6 + 5);
              v52 = a6[4];
              a6[4] = v52 + 1;
              v53 = (v51 + 8 * v52);
              *v53 = a3 | (v19 << 8) | (v22 << 16);
              v53[1] = v16;
              goto LABEL_102;
            case 3:
            case 8:
            case 11:
LABEL_79:
              v47 = *(a6 + 5);
              v48 = a6[4];
              a6[4] = v48 + 1;
              *(v47 + 4 * v48) = a3 | (v19 << 8) | (v22 << 16);
              goto LABEL_102;
            case 4:
            case 9:
LABEL_82:
              v54 = *(a6 + 5);
              v55 = a6[4];
              a6[4] = v55 + 1;
              *(v54 + 2 * v55) = a3 | (v19 << 8);
              goto LABEL_102;
            case 5:
            case 10:
LABEL_80:
              v49 = *(a6 + 5);
              v50 = a6[4];
              a6[4] = v50 + 1;
              *(v49 + v50) = a3;
              goto LABEL_102;
            case 14:
LABEL_83:
              v56 = *(a6 + 5);
              v57 = a6[4];
              a6[4] = v57 + 1;
              *(v56 + v57) = a3 & 1;
              goto LABEL_102;
            case 15:
              goto LABEL_65;
            default:
              goto LABEL_102;
          }
        }
      }

      else
      {
        if (v35 == 2)
        {
          v44 = a3 | (v19 << 8) | (v22 << 16);
          if (*(a6 + 20) == 1)
          {
            a6[20] = v44;
            a6[21] = v16;
            *(a6 + 12) = 0;
            *(a6 + 13) = 0;
            *(a6 + 11) = a4;
            a6[28] = v20;
          }

          else
          {
            a6[8] = v44;
            a6[9] = v16;
            *(a6 + 6) = 0;
            *(a6 + 7) = 0;
            *(a6 + 5) = a4;
            a6[16] = v20;
            *(a6 + 20) = 1;
          }

          goto LABEL_102;
        }

        if (v35 == 3)
        {
          v36 = a6[4];
          if (*(a6 + 4) == v36)
          {
            if (v36)
            {
              v37 = 2 * v36;
              *(a6 + 4) = v37;
              *(a6 + 5) = malloc_type_realloc(*(a6 + 5), v37 * v21, 0x5EFFBEB8uLL);
              if (a6[16] != v20)
              {
                v38 = "array->valtype == type";
                v39 = 4065;
LABEL_58:
                __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", v39, v38);
              }
            }

            else
            {
              *(a6 + 4) = 4;
              *(a6 + 5) = malloc_type_malloc(4 * v21, 0xC4ED7BBDuLL);
              a6[16] = v20;
            }
          }

          v38 = "0";
          v39 = 4102;
          switch(v20)
          {
            case 1:
            case 12:
            case 13:
              goto LABEL_78;
            case 2:
            case 7:
              goto LABEL_81;
            case 3:
            case 8:
            case 11:
              goto LABEL_79;
            case 4:
            case 9:
              goto LABEL_82;
            case 5:
            case 10:
              goto LABEL_80;
            case 14:
              goto LABEL_83;
            case 15:
              goto LABEL_58;
            default:
              goto LABEL_102;
          }
        }
      }

      a6[8] = a3 | (v19 << 8) | (v22 << 16);
      a6[9] = v16;
      *(a6 + 6) = 0;
      *(a6 + 7) = 0;
      *(a6 + 5) = a4;
      a6[6] = v20;
      goto LABEL_102;
    case 31:
      a3 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
      CFDictionarySetValue(*(*(a6 + 1) + 24), a4, a3);
      v21 = 0;
      a4 = 0;
      v17 = 0;
      v19 = a3 >> 8;
      v22 = (a3 >> 16);
      v16 = HIDWORD(a3);
      v20 = 16;
      goto LABEL_51;
    case 32:
      v34 = CFDictionaryGetValue(*(*(a6 + 1) + 32), a4);
      v17 = v34;
      if (!v34)
      {
        goto LABEL_102;
      }

      v25 = CFRetain(v34);
      v21 = 0;
      a4 = 0;
      v19 = v25 >> 8;
      v22 = (v25 >> 16);
      v16 = HIDWORD(v25);
      v20 = 17;
      goto LABEL_50;
    case 33:
      v22 = malloc_type_malloc(a4, 0x5236D819uLL);
      v16 = HIDWORD(a4);
      heapa = (a4 >> 16);
      v122 = v15;
      v18 = a4;
      v19 = a4 >> 8;
      memcpy(v22, a3, a4);
      v17 = 0;
      v20 = 15;
      v21 = 8;
      a4 = v22;
      LODWORD(v22) = heapa;
      LOBYTE(a3) = v18;
      v15 = v122;
      goto LABEL_51;
    default:
LABEL_8:
      v21 = 0;
      v20 = 0;
      a4 = 0;
      v16 = 0;
      LODWORD(v22) = 0;
      LOWORD(v19) = 0;
      LOBYTE(a3) = 0;
      v17 = 0;
      goto LABEL_51;
  }
}

void sub_10003DDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, __int128 a26, uint64_t a27)
{
  *v27 = a25;
  *(v27 + 16) = a26;
  *(v27 + 32) = a27;
  _Unwind_Resume(a1);
}

void **sub_10003DEA0(void **result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 49);
  if (v6 == *(result + 48))
  {
    *(result + 48) = 2 * v6;
    result = reallocf(result[7], 16 * (v6 & 0x7F));
    v5[7] = result;
  }

  v7 = 1 << a2;
  if (a2 <= 63)
  {
    *v5 = (*v5 | v7);
LABEL_11:
    v8 = v5[7];
    v9 = v6 + 1;
    goto LABEL_12;
  }

  if (a2 <= 0x7F)
  {
    v5[1] = (v5[1] | v7);
    goto LABEL_11;
  }

  if (a2 <= 0xBF)
  {
    v5[2] = (v5[2] | v7);
    goto LABEL_11;
  }

  if (a2 <= 0xFF)
  {
    v5[3] = (v5[3] | v7);
    goto LABEL_11;
  }

  v9 = v6 + 1;
  if (a2 > 0x13F)
  {
    v5[5] = (v5[5] | v7);
  }

  else
  {
    v5[4] = (v5[4] | v7);
  }

  v8 = v5[7];
LABEL_12:
  *(v5 + 49) = v9;
  v8[v6] = a3;
  return result;
}

void sub_10003DFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if (v4)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:@"MainCSIndexTimedOut"];
  }

  else
  {
    v6 = 0;
  }

  v7 = si_tracing_current_span();
  v8 = *(v7 + 16);
  v71 = *v7;
  v72 = v8;
  v73 = *(v7 + 32);
  v9 = *(a1 + 328);
  *v7 = *(a1 + 312);
  *(v7 + 16) = v9;
  *(v7 + 32) = *(a1 + 344);
  if (v6)
  {
    v10 = [@"SPCoreSpotlightDatastore rankAndSendResultsHandler" stringByAppendingString:@" (Priority)"];
  }

  else
  {
    v10 = @"SPCoreSpotlightDatastore rankAndSendResultsHandler";
  }

  v11 = *(v7 + 16);
  v68 = *v7;
  v69 = v11;
  v70 = *(v7 + 32);
  v12 = *v7;
  spanid = si_tracing_calc_next_spanid();
  v14 = *(v7 + 8);
  v15 = *(v7 + 24);
  v16 = [(__CFString *)v10 UTF8String];
  *v7 = v12;
  *(v7 + 8) = spanid;
  *(v7 + 16) = v14;
  *(v7 + 24) = v15;
  *(v7 + 28) = 102;
  *(v7 + 32) = v16;
  si_tracing_log_span_begin();
  WeakRetained = objc_loadWeakRetained((a1 + 296));
  v18 = objc_loadWeakRetained((a1 + 304));
  v19 = v18;
  if (WeakRetained && v18)
  {
    objc_copyWeak(&v62, (a1 + 296));
    objc_copyWeak(v63, (a1 + 304));
    v44 = v3;
    v64 = v6;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    v23 = *(a1 + 80);
    *&v24 = v22;
    *(&v24 + 1) = v23;
    *&v25 = v20;
    *(&v25 + 1) = v21;
    v45 = v25;
    v46 = v24;
    v26 = *(a1 + 88);
    v63[1] = *(a1 + 352);
    v27 = *(a1 + 96);
    v28 = *(a1 + 104);
    v29 = *(a1 + 112);
    *&v30 = v28;
    *(&v30 + 1) = v29;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v47 = v31;
    v48 = v30;
    v32 = *(a1 + 120);
    v33 = *(a1 + 128);
    v34 = *(a1 + 136);
    v35 = *(a1 + 144);
    *&v36 = v34;
    *(&v36 + 1) = v35;
    *&v37 = v32;
    *(&v37 + 1) = v33;
    v49 = v37;
    v50 = v36;
    v38 = *(a1 + 152);
    v39 = *(a1 + 160);
    v40 = *(a1 + 168);
    v63[2] = *(a1 + 360);
    *&v41 = v38;
    *(&v41 + 1) = v39;
    v51 = v41;
    v52 = v40;
    v65 = *(a1 + 376);
    v53 = *(a1 + 184);
    v54 = *(a1 + 48);
    v66 = *(a1 + 378);
    v67 = *(a1 + 379);
    v55 = *(a1 + 192);
    v56 = *(a1 + 200);
    v57 = *(a1 + 208);
    v58 = *(a1 + 216);
    v59 = *(a1 + 224);
    v60 = *(a1 + 232);
    v61 = *(a1 + 240);
    v63[3] = *(a1 + 368);
    tracing_dispatch_async();

    objc_destroyWeak(v63);
    objc_destroyWeak(&v62);
  }

  si_tracing_log_span_end();
  v42 = v69;
  *v7 = v68;
  *(v7 + 16) = v42;
  *(v7 + 32) = v70;

  v43 = v72;
  *v7 = v71;
  *(v7 + 16) = v43;
  *(v7 + 32) = v73;
}

void sub_10003E4A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 312));
  objc_destroyWeak((v2 + 304));
  sub_1000066D4(v3 - 192);
  v5 = *(v3 - 128);
  *v1 = *(v3 - 144);
  *(v1 + 16) = v5;
  *(v1 + 32) = *(v3 - 112);
  _Unwind_Resume(a1);
}

void sub_10003E4EC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  WeakRetained = objc_loadWeakRetained((v1 + 304));
  v203 = objc_loadWeakRetained((v1 + 312));
  v206 = objc_alloc_init(NSMutableSet);
  if (*(v1 + 48) && *(v1 + 344) != 1 || ([WeakRetained cancelled] & 1) != 0)
  {
    goto LABEL_205;
  }

  os_unfair_lock_lock(&stru_1000A853C);
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, *(v1 + 56));
  value = 0;
  key = 0;
  if (!NSNextMapEnumeratorPair(&enumerator, &key, &value))
  {
    goto LABEL_195;
  }

  v213 = SSEventBundleIdentifier;
  __s2 = SPApplicationBundleIdGeneralApplicationCStr;
  v207 = PRSRankingSettingsBundleString;
  v200 = SSMessagesBundleIdentifier;
  v201 = PRSRankingMessagesBundleString;
  v199 = PRSRankingNotesBundleString;
  v197 = PRSRankingDocumentsAppBundleString;
  v198 = PRSRankingPhotosAppBundleString;
  v196 = PRSRankingLocalFilesBundleString;
  v195 = PRSRankingFilesBundleString;
  v202 = SSPhotosBundleIdentifier;
  v194 = PRSRankingFileProviderFilesBundleString;
  do
  {
    v2 = NSMapGet(*(v1 + 64), key);
    v3 = NSMapGet(*(v1 + 72), key);
    v4 = [NSString alloc];
    v222 = [v4 initWithCString:key encoding:4];
    if (*(v1 + 344) == 1)
    {
      if (![(__CFString *)v222 isEqualToString:@"com.apple.searchd.engagement"])
      {
LABEL_31:
        [v206 addObject:v222];
        goto LABEL_32;
      }

      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Found com.apple.searchd.engagement", buf, 2u);
      }

      Count = CFBinaryHeapGetCount(value);
      bzero(buf, 0x2000uLL);
      if (Count < 1025)
      {
        CFBinaryHeapGetValues(value, buf);
        if (Count < 1)
        {
LABEL_28:
          v16 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *v292 = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Found no exact-match on previous engagement", v292, 2u);
          }

          goto LABEL_31;
        }

        v7 = buf;
      }

      else
      {
        v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
        CFBinaryHeapGetValues(value, v7);
      }

      v8 = 0;
      do
      {
        v9 = v7[v8];
        if (v9)
        {
          v12 = (v9 + 2);
          v10 = v9[2];
          v11 = *(v12 + 1);
          v14 = (v10 | v11) == 0;
          v13 = qword_1000A8510 & v10 | *algn_1000A8518 & v11;
          v14 = v14 || v13 == 0;
          v15 = !v14;
        }

        else
        {
          v15 = 0;
        }

        ++v8;
      }

      while (v8 < Count && (v15 & 1) == 0);
      if (v7 != buf)
      {
        free(v7);
      }

      if (v15)
      {

        NSEndMapTableEnumeration(&enumerator);
        os_unfair_lock_unlock(&stru_1000A853C);
        if (*(v1 + 344) != 1)
        {
          goto LABEL_205;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Delay returning results; previous engagement of non-priority result found", buf, 2u);
        }

        goto LABEL_266;
      }

      goto LABEL_28;
    }

LABEL_32:
    v17 = CFBinaryHeapGetCount(value);
    v18 = sub_100061498(v2);
    v19 = v17 + v18 + sub_100061498(v3);
    if (!v19)
    {
      goto LABEL_194;
    }

    v20 = buf;
    bzero(buf, 0x2000uLL);
    v214 = v19;
    if (v19 >= 1025)
    {
      v20 = malloc_type_malloc(8 * v19, 0x80040B8603338uLL);
    }

    v217 = v20;
    CFBinaryHeapGetValues(value, v20);
    *v292 = 0;
    *&v292[8] = v292;
    *&v292[16] = 0x2020000000;
    *&v292[24] = 0;
    v284[0] = _NSConcreteStackBlock;
    v284[1] = 3221225472;
    v284[2] = sub_1000407C8;
    v284[3] = &unk_1000934E0;
    v284[6] = v17;
    v284[5] = v20;
    v284[4] = v292;
    sub_1000614D0(v2, v284);
    _Block_object_dispose(v292, 8);
    *v292 = 0;
    *&v292[8] = v292;
    *&v292[16] = 0x2020000000;
    *&v292[24] = 0;
    v283[0] = _NSConcreteStackBlock;
    v283[1] = 3221225472;
    v283[2] = sub_1000407F8;
    v283[3] = &unk_100093508;
    v283[6] = v18;
    v283[7] = v17;
    v283[5] = v20;
    v283[4] = v292;
    sub_1000614D0(v3, v283);
    _Block_object_dispose(v292, 8);
    v21 = SPL1Threshold();
    v210 = v22;
    v211 = v21;
    v23 = v19;
    if (v19 < 1)
    {
      goto LABEL_191;
    }

    v24 = 0;
    v25 = v20;
    while (1)
    {
      v26 = v25[v24];
      if (v26)
      {
        break;
      }

LABEL_166:
      if (++v24 == v23)
      {
        goto LABEL_192;
      }
    }

    v218 = *(v26 + 1);
    v221 = *(v26 + 4);
    if (!strcmp(key, "com.apple.spotlight.category"))
    {
      v27 = sub_10004C1A4(v26 + 64, 0x44uLL);
      v28 = sub_10004C4F4(v26 + 64, 0x43uLL);
      v29 = objc_opt_new();
      if (v27)
      {
        if ([v27 count])
        {
          if (v28)
          {
            v30 = [v28 count];
            if (v30 == [v27 count])
            {
              if ([v27 count])
              {
                v31 = 0;
                do
                {
                  v32 = [v27 objectAtIndex:v31];
                  v33 = [v32 isEqualToString:*(v1 + 80)];

                  if (v33)
                  {
                    v34 = [v28 objectAtIndex:v31];
                    [v29 addObject:v34];
                  }

                  ++v31;
                }

                while ([v27 count] > v31);
              }

              if ([v29 count])
              {
                v35 = [v203 rankingInfo];
                v36 = [v35 categoryEngagements];
                v37 = sub_10004BAE0(v26 + 64, 2uLL);
                [v36 setValue:v29 forKey:v37];
              }
            }
          }
        }
      }
    }

    v38 = SPLogForSPLogCategoryDefault();
    v39 = v38;
    if (gSPLogDebugAsDefault)
    {
      v40 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v40 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v38, v40))
    {
      *v292 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "2", v292, 2u);
    }

    if ([WeakRetained cancelled])
    {
      goto LABEL_190;
    }

    obj = sub_10004BAE0(v26 + 64, 0);
    if (_os_feature_enabled_impl() && [(__CFString *)v222 isEqualToString:v213])
    {
      v41 = v213;

      obj = v41;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      oslog = SPLogForSPLogCategoryDefault();
      v46 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(oslog, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        v47 = sub_10004BAE0(v26 + 64, 2uLL);
        *v292 = 138412546;
        *&v292[4] = v47;
        *&v292[12] = 2112;
        *&v292[14] = v222;
        _os_log_impl(&_mh_execute_header, oslog, ((v46 & 1) == 0), "No UTI type for CoreSpotlight result, identifier:%@, bundleID:%@", v292, 0x16u);
      }

      goto LABEL_165;
    }

    v42 = key;
    if (!strcmp(key, __s2))
    {
      v43 = *(v1 + 88);
      v44 = sub_10004BAE0(v26 + 64, 2uLL);
      LOBYTE(v43) = [v43 containsObject:v44];

      if (v43)
      {
        oslog = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v45 = sub_10004BAE0(v26 + 64, 2uLL);
          *v292 = 138412290;
          *&v292[4] = v45;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Skipping disabled app %@", v292, 0xCu);
        }

        goto LABEL_165;
      }

      v42 = key;
    }

    if (!strcmp(v42, "com.apple.shortcuts"))
    {
      v48 = *(v1 + 88);
      v49 = sub_10004BAE0(v26 + 64, 0x48uLL);
      LODWORD(v48) = [v48 containsObject:v49];

      if (v48)
      {
        oslog = SPLogForSPLogCategoryDefault();
        v50 = gSPLogInfoAsDefault;
        if (os_log_type_enabled(oslog, ((gSPLogInfoAsDefault & 1) == 0)))
        {
          v51 = sub_10004BAE0(v26 + 64, 0x48uLL);
          *v292 = 138412290;
          *&v292[4] = v51;
          _os_log_impl(&_mh_execute_header, oslog, ((v50 & 1) == 0), "Skipping shortcut for disabled app %@", v292, 0xCu);
        }

        goto LABEL_165;
      }
    }

    oslog = sub_10004BAE0(v26 + 64, 0x53uLL);
    if (![oslog length]|| (*(v26 + 65) & 8) != 0 || ([(__CFString *)v222 isEqualToString:v200]& 1) != 0)
    {
      v52 = sub_10004BAE0(v26 + 64, 0xBuLL);

      if (v52)
      {
        v53 = sub_10004BAE0(v26 + 64, 0x57uLL);
        v54 = [v53 isEqualToString:off_1000A7FB8[0]];

        if (v54)
        {
          goto LABEL_165;
        }
      }
    }

    else
    {
      v55 = off_1000A7FB0[0];

      v222 = v55;
    }

    if ([(__CFString *)v222 isEqualToString:v207])
    {
      if ([obj isEqualToString:@"com.apple.Preferences.thirdPartyApp"])
      {
        v56 = sub_10004BAE0(v26 + 64, 0x5DuLL);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v57 = *(*(*(v1 + 256) + 8) + 40);
          if (!v57)
          {
            v58 = SPFastApplicationsGetNoBuild();
            v59 = [v58 allKeys];
            v60 = [NSSet setWithArray:v59];
            v61 = *(*(v1 + 256) + 8);
            v62 = *(v61 + 40);
            *(v61 + 40) = v60;

            v57 = *(*(*(v1 + 256) + 8) + 40);
            if (!v57)
            {
              v63 = SPCopyVisibleApps();
              v64 = *(*(v1 + 256) + 8);
              v65 = *(v64 + 40);
              *(v64 + 40) = v63;

              v57 = *(*(*(v1 + 256) + 8) + 40);
            }
          }

          if (([v57 containsObject:v56] & 1) == 0)
          {
            v66 = SPLogForSPLogCategoryDefault();
            v67 = v66;
            if (gSPLogDebugAsDefault)
            {
              v68 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v68 = OS_LOG_TYPE_DEBUG;
            }

            if (!os_log_type_enabled(v66, v68))
            {
              goto LABEL_177;
            }

            *v292 = 138412290;
            *&v292[4] = v56;
            v69 = v67;
            v70 = v68;
            v71 = "skipping for not installed app %@";
LABEL_176:
            _os_log_impl(&_mh_execute_header, v69, v70, v71, v292, 0xCu);
LABEL_177:

LABEL_165:
            v25 = v217;
            v23 = v214;
            goto LABEL_166;
          }
        }
      }

      else
      {
        v56 = sub_10004BAE0(v26 + 64, 2uLL);
        v72 = *(*(*(v1 + 256) + 8) + 40);
        if (!v72)
        {
          v73 = SPFastApplicationsGetNoBuild();
          v74 = [v73 allKeys];
          v75 = [NSSet setWithArray:v74];
          v76 = *(*(v1 + 256) + 8);
          v77 = *(v76 + 40);
          *(v76 + 40) = v75;

          v72 = *(*(*(v1 + 256) + 8) + 40);
          if (!v72)
          {
            v78 = SPCopyVisibleApps();
            v79 = *(*(v1 + 256) + 8);
            v80 = *(v79 + 40);
            *(v79 + 40) = v78;

            v72 = *(*(*(v1 + 256) + 8) + 40);
          }
        }

        if (([v72 containsObject:@"com.apple.news"] & 1) == 0 && ((objc_msgSend(v56, "hasPrefix:", @"prefs:root=NEWS") & 1) != 0 || (objc_msgSend(v56, "hasPrefix:", @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.News") & 1) != 0 || objc_msgSend(v56, "hasPrefix:", @"prefs:root=DEVELOPER_SETTINGS#NEWS_TESTING")))
        {
          v116 = SPLogForSPLogCategoryDefault();
          v67 = v116;
          if (gSPLogDebugAsDefault)
          {
            v117 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v117 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v116, v117))
          {
            goto LABEL_177;
          }

          *v292 = 136315138;
          *&v292[4] = "com.apple.news";
          v69 = v67;
          v70 = v117;
          v71 = "skipping for not installed app %s";
          goto LABEL_176;
        }
      }
    }

    if (([WeakRetained cancelled] & 1) == 0)
    {
      if (*(v1 + 320))
      {
        v81 = 0;
        v82 = 0;
        do
        {
          if ([*(v1 + 96) containsIndex:v82])
          {
            if (v82 > 63)
            {
              if (v82 > 0x7F)
              {
                if (v82 > 0xBF)
                {
                  if (v82 > 0xFF)
                  {
                    v83 = v82 > 0x13F ? *(v26 + 13) : *(v26 + 12);
                  }

                  else
                  {
                    v83 = *(v26 + 11);
                  }
                }

                else
                {
                  v83 = *(v26 + 10);
                }
              }

              else
              {
                v83 = *(v26 + 9);
              }
            }

            else
            {
              v83 = *(v26 + 8);
            }

            if ((v83 & (1 << v82)) != 0)
            {
              ++v81;
            }
          }

          ++v82;
        }

        while (v82 < *(v1 + 320));
      }

      v215 = SSCompactRankingAttrsAlloc();
      if (*(v1 + 320))
      {
        v84 = 0;
        do
        {
          if ([*(v1 + 96) containsIndex:v84])
          {
            if (v84 > 63)
            {
              if (v84 > 0x7F)
              {
                if (v84 > 0xBF)
                {
                  if (v84 > 0xFF)
                  {
                    v85 = v84 > 0x13F ? *(v26 + 13) : *(v26 + 12);
                  }

                  else
                  {
                    v85 = *(v26 + 11);
                  }
                }

                else
                {
                  v85 = *(v26 + 10);
                }
              }

              else
              {
                v85 = *(v26 + 9);
              }
            }

            else
            {
              v85 = *(v26 + 8);
            }

            if ((v85 & (1 << v84)) != 0)
            {
              v86 = sub_10004CED8(v26 + 64, v84);
              if (v86)
              {
                SSCompactRankingAttrsInsertValue();
              }
            }
          }

          ++v84;
        }

        while (v84 < *(v1 + 320));
      }

      v220 = [[PRSRankingItem alloc] initWithAttrs:v215];
      v87 = SPLogForSPLogCategoryDefault();
      v88 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(v87, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        v204 = *(v1 + 344);
        v205 = v88;
        v89 = [*(v1 + 104) queryID];
        v209 = [v220 sectionBundleIdentifier];
        v208 = [v220 identifier];
        v90 = [v220 bundleIDType];
        v91 = [v220 L2FeatureVector];
        [v91 indexScore];
        v93 = v92;
        v94 = [v220 L2FeatureVector];
        v95 = [v94 indexScore];
        v96 = SSCompactRankingAttrsGetCount();
        *v292 = 67111426;
        *&v292[4] = v204;
        *&v292[8] = 2048;
        *&v292[10] = v89;
        *&v292[18] = 2112;
        *&v292[20] = v209;
        *&v292[28] = 2112;
        *&v292[30] = v208;
        v293 = 2048;
        v294 = v90;
        v295 = 2048;
        v296 = v93;
        v297 = 2048;
        v298 = v95;
        v299 = 2048;
        v300 = v220;
        v301 = 2048;
        v302 = v215;
        v303 = 2048;
        v304 = v96;
        _os_log_impl(&_mh_execute_header, v87, ((v205 & 1) == 0), "### (%d) [%ld] rankingItem %@ %@ 0x%16.16llx 0x%16.16llx%16.16llx (%p, %p, %lu)", v292, 0x62u);
      }

      *v292 = 0;
      v97 = sub_10004BFD4(v26 + 64, 0x58uLL, v292);
      v98 = sub_10004BAE0(v26 + 64, 0xAuLL);
      v99 = sub_10004CED8(v26 + 64, 0xB1uLL);
      if (!v99 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v99 integerValue] < 1 || (objc_msgSend(v98, "isEqualToString:", v198) & 1) != 0)
      {
        v100 = 0;
        v216 = 0;
        if (v97)
        {
LABEL_140:
          if (*v292 == 6)
          {
            if ([oslog length])
            {
              [v220 setSectionBundleIdentifier:v98];
            }

            [*(v1 + 112) setRenderEngagementFeaturesForItemAsShorts:v220 counts:v97 isRender:1 bundleDict:*(v1 + 120)];
            [*(v1 + 112) setRenderEngagementFeaturesForItemAsShorts:v100 counts:v97 isRender:1 bundleDict:*(v1 + 120)];
          }
        }

LABEL_144:
        v101 = sub_10004BFD4(v26 + 64, 0x59uLL, v292);
        if (v101 && *v292 == 6)
        {
          if ([oslog length])
          {
            [v220 setSectionBundleIdentifier:v98];
          }

          [*(v1 + 112) setRenderEngagementFeaturesForItemAsShorts:v220 counts:v101 isRender:0 bundleDict:*(v1 + 120)];
          [*(v1 + 112) setRenderEngagementFeaturesForItemAsShorts:v100 counts:v101 isRender:0 bundleDict:*(v1 + 120)];
        }

        v102 = [[SPSearchTopHitResult alloc] initWithRankingItem:v220 clientData:v26];
        [(SPTopHitResult *)v102 setScore:v218];
        v103 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(v26 + 5)];
        [(SPTopHitResult *)v102 setInterestingDate:v103];

        [(SPTopHitResult *)v102 setBundleID:v222];
        [(SPTopHitResult *)v102 setDataclass:v221];
        if (v218 < __PAIR128__(v210, v211))
        {
          [v220 setEligibleForDemotion:1];
        }

        if ([obj hasPrefix:@"com.apple.siri."])
        {
          v104 = [(SPTopHitResult *)v102 rankingItem];
          v105 = [v104 L2FeatureVector];
          [v105 setIsSiriAction:1];
        }

        v106 = [*(v1 + 128) objectForKey:v222];
        if (!v106)
        {
          v106 = objc_opt_new();
          [v106 setDomain:1];
          [v106 setBundleIdentifier:v222];
          [*(v1 + 128) setObject:v106 forKey:v222];
        }

        [v106 addResults:v102];
        [*(v1 + 136) addObject:v102];
        ++*(*(*(v1 + 264) + 8) + 24);
        if (v216)
        {
          v107 = [[SPSearchTopHitResult alloc] initWithRankingItem:v100 clientData:v26];
          [(SPTopHitResult *)v107 setScore:v218];
          v108 = [(SPTopHitResult *)v102 interestingDate];
          [(SPTopHitResult *)v107 setInterestingDate:v108];

          [(SPTopHitResult *)v107 setBundleID:v202];
          [(SPTopHitResult *)v107 setDataclass:v221];
          [v100 setEligibleForDemotion:{objc_msgSend(v220, "eligibleForDemotion")}];
          v109 = [v98 isEqualToString:v201];
          v110 = (v1 + 144);
          if ((v109 & 1) == 0)
          {
            v111 = [v98 isEqualToString:v199];
            v110 = (v1 + 152);
            if ((v111 & 1) == 0)
            {
              v112 = [v98 isEqualToString:v197];
              v110 = (v1 + 160);
              if ((v112 & 1) == 0)
              {
                v113 = [v98 isEqualToString:v196];
                v110 = (v1 + 160);
                if ((v113 & 1) == 0)
                {
                  v114 = [v98 isEqualToString:v195];
                  v110 = (v1 + 160);
                  if ((v114 & 1) == 0)
                  {
                    v115 = [v98 isEqualToString:v194];
                    v110 = (v1 + 168);
                    if (v115)
                    {
                      v110 = (v1 + 160);
                    }
                  }
                }
              }
            }
          }

          [*v110 addResults:v107];
          [*(v1 + 136) addObject:v107];
          ++*(*(*(v1 + 264) + 8) + 24);
        }

        goto LABEL_165;
      }

      if ([v98 isEqualToString:v201])
      {
        v118 = 0x4000000;
        goto LABEL_186;
      }

      if ([v98 isEqualToString:v199])
      {
        v118 = 0x8000000;
        goto LABEL_186;
      }

      if (([v98 isEqualToString:v197] & 1) != 0 || (objc_msgSend(v98, "isEqualToString:", v196) & 1) != 0 || objc_msgSend(v98, "isEqualToString:", v195))
      {
        v118 = 0x10000000;
LABEL_186:
        [v220 setBundleIDType:v118];
      }

      [v220 setBundleIDType:{objc_msgSend(v220, "bundleIDType") | 0x2000000}];
      v100 = [[PRSRankingItem alloc] initWithAttrs:SSCompactRankingAttrsCopy()];
      [v100 setBundleIDType:{objc_msgSend(v220, "bundleIDType")}];
      [v100 setSectionBundleIdentifier:v202];
      v216 = 1;
      if (v97)
      {
        goto LABEL_140;
      }

      goto LABEL_144;
    }

LABEL_190:
LABEL_191:
    v25 = v217;
LABEL_192:
    if (v25 != buf)
    {
      free(v25);
    }

LABEL_194:
  }

  while (NSNextMapEnumeratorPair(&enumerator, &key, &value));
LABEL_195:
  NSEndMapTableEnumeration(&enumerator);
  if (*(v1 + 344))
  {
    v281 = 0u;
    v282 = 0u;
    v279 = 0u;
    v280 = 0u;
    v119 = v206;
    v120 = [v119 countByEnumeratingWithState:&v279 objects:v291 count:16];
    if (v120)
    {
      v121 = *v280;
      do
      {
        for (i = 0; i != v120; i = i + 1)
        {
          if (*v280 != v121)
          {
            objc_enumerationMutation(v119);
          }

          NSMapRemove(*(v1 + 56), [*(*(&v279 + 1) + 8 * i) cStringUsingEncoding:4]);
        }

        v120 = [v119 countByEnumeratingWithState:&v279 objects:v291 count:16];
      }

      while (v120);
    }
  }

  os_unfair_lock_unlock(&stru_1000A853C);
LABEL_205:
  if ([WeakRetained cancelled])
  {
    goto LABEL_266;
  }

  if ((*(v1 + 328) & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
LABEL_231:
    if ((*(v1 + 344) & 1) == 0)
    {
      v124 = *(v1 + 168);
      v125 = [*(v1 + 144) results];
      [v124 addResultsFromArray:v125];

      v126 = *(v1 + 168);
      v127 = [*(v1 + 152) results];
      [v126 addResultsFromArray:v127];

      v128 = *(v1 + 168);
      v129 = [*(v1 + 160) results];
      [v128 addResultsFromArray:v129];

      [*(v1 + 144) setResults:0];
      [*(v1 + 152) setResults:0];
      [*(v1 + 160) setResults:0];
    }

    v130 = [*(v1 + 128) allValues];
    v131 = [WeakRetained queryIdent];
    v132 = [WeakRetained queryContext];
    v133 = [v132 searchString];
    [SSRankingUtilities logSections:v130 message:@"L1 performQuery" queryId:v131 query:v133];

    if ([WeakRetained cancelled])
    {
      v134 = SPLogForSPLogCategoryTelemetry();
      v135 = [WeakRetained externalID];
      if (v135 && os_signpost_enabled(v134))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v134, OS_SIGNPOST_EVENT, v135, "coreSpotlightCancel", " enableTelemetry=YES ", buf, 2u);
      }

      v136 = [v203 resultPipe];
      sub_10001DAE0(v136, "canceled", "corespotlight", *(*(*(v1 + 296) + 8) + 32), "rankprep", *(*(*(v1 + 296) + 8) + 40), "resultprep", *(*(*(v1 + 296) + 8) + 48), 0, 0);
    }

    else
    {
      if (*(v1 + 344) == 1)
      {
        v137 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v130, "count")}];
        v138 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v130, "count")}];
        v260 = 0u;
        v261 = 0u;
        v258 = 0u;
        v259 = 0u;
        v139 = v130;
        v140 = [v139 countByEnumeratingWithState:&v258 objects:v289 count:16];
        if (v140)
        {
          v141 = *v259;
          do
          {
            for (j = 0; j != v140; j = j + 1)
            {
              if (*v259 != v141)
              {
                objc_enumerationMutation(v139);
              }

              v143 = *(*(&v258 + 1) + 8 * j);
              v144 = [v143 bundleIdentifier];
              if (sub_100040C3C(v144))
              {
                v145 = [v143 mutableDeepCopy];
                [v138 addObject:v145];

                [v137 addObject:v144];
              }
            }

            v140 = [v139 countByEnumeratingWithState:&v258 objects:v289 count:16];
          }

          while (v140);
        }

        v146 = v138;
        if (![v146 count])
        {

LABEL_265:
          goto LABEL_266;
        }

        v256 = 0u;
        v257 = 0u;
        v254 = 0u;
        v255 = 0u;
        v147 = v137;
        v148 = [v147 countByEnumeratingWithState:&v254 objects:v288 count:16];
        if (v148)
        {
          v149 = *v255;
          do
          {
            for (k = 0; k != v148; k = k + 1)
            {
              if (*v255 != v149)
              {
                objc_enumerationMutation(v147);
              }

              v151 = *(*(&v254 + 1) + 8 * k);
              if (sub_100040C3C(v151))
              {
                v152 = [qword_1000A8460 containsObject:v151];
                v153 = *(v1 + 128);
                if (v152)
                {
                  v154 = [v153 objectForKey:v151];
                  v155 = [v154 resultSet];
                  [v155 removeAllObjects];
                }

                else
                {
                  [v153 removeObjectForKey:v151];
                }
              }
            }

            v148 = [v147 countByEnumeratingWithState:&v254 objects:v288 count:16];
          }

          while (v148);
        }
      }

      else
      {
        v146 = v130;
      }

      v156 = [*(v1 + 136) copy];
      dispatch_suspend(*(v1 + 192));
      v157 = +[SDController rankQueue];
      v158 = qos_class_self();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100040CB4;
      block[3] = &unk_100093580;
      v159 = WeakRetained;
      v160 = *(v1 + 176);
      v227 = v159;
      v228 = v160;
      v229 = *(v1 + 80);
      v230 = *(v1 + 184);
      v251 = *(v1 + 347);
      v252 = *(v1 + 348);
      v253 = *(v1 + 344);
      v161 = *(v1 + 40);
      block[4] = *(v1 + 32);
      block[5] = v161;
      v231 = *(v1 + 200);
      v232 = *(v1 + 208);
      v233 = *(v1 + 216);
      v234 = *(v1 + 144);
      v235 = *(v1 + 152);
      v236 = *(v1 + 160);
      v237 = *(v1 + 224);
      v238 = *(v1 + 232);
      v136 = v146;
      v239 = v136;
      v162 = v156;
      v163 = *(v1 + 280);
      v240 = v162;
      v247 = v163;
      v241 = v203;
      v164 = *(v1 + 112);
      v165 = *(v1 + 288);
      v242 = v164;
      v248 = v165;
      v166 = *(v1 + 104);
      v167 = *(v1 + 296);
      v243 = v166;
      v249 = v167;
      v244 = *(v1 + 240);
      v245 = *(v1 + 248);
      v250 = *(v1 + 336);
      v246 = *(v1 + 192);
      v168 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v158, 0, block);
      tracing_dispatch_async();

      [v159 externalID];
      v169 = [objc_opt_class() description];
      v170 = [NSNumber numberWithLong:*(*(*(v1 + 264) + 8) + 24)];
      SDTraceAdd();
    }

    v146 = SPLogForSPLogCategoryQuery();
    v171 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v146, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v172 = *(*(*(v1 + 264) + 8) + 24);
      *buf = 134217984;
      *&buf[4] = v172;
      _os_log_impl(&_mh_execute_header, v146, ((v171 & 1) == 0), "CoreSpotlight query finished with %ld results", buf, 0xCu);
    }

    goto LABEL_265;
  }

  if (*(*(*(v1 + 264) + 8) + 24) || (*(*(*(v1 + 272) + 8) + 24) & 1) != 0 || ([WeakRetained isRewrite] & 1) != 0 || (objc_msgSend(WeakRetained, "cancelled") & 1) != 0 || (*(v1 + 344) & 1) != 0)
  {
LABEL_215:
    if ((*(v1 + 345) & 1) == 0 && !*(*(*(v1 + 264) + 8) + 24) && (*(v1 + 346) & 1) == 0 && [WeakRetained needsReRunForFuzzy] && (objc_msgSend(WeakRetained, "cancelled") & 1) == 0 && (objc_msgSend(WeakRetained, "isCJK") & 1) == 0 && (objc_msgSend(*(v1 + 104), "pommes") & 1) == 0 && *(v1 + 80) && (*(v1 + 344) & 1) == 0)
    {
      [WeakRetained setNeedsReRunForFuzzy:0];
      v193 = [*(v1 + 176) performQuery:WeakRetained isCorrectedQuery:0 reuseTask:v203 needsFuzzy:0 pommesRewrite:0 embeddingsRequery:1];
      goto LABEL_266;
    }

    if ((*(v1 + 345) & 1) == 0 && !*(*(*(v1 + 264) + 8) + 24) && (*(v1 + 346) & 1) == 0 && ([WeakRetained needsReRunForFuzzy] & 1) == 0 && (objc_msgSend(WeakRetained, "cancelled") & 1) == 0 && (objc_msgSend(WeakRetained, "isCJK") & 1) == 0 && (*(v1 + 344) & 1) == 0)
    {
      [WeakRetained setNeedsReRunForFuzzy:1];
      if ([*(v1 + 104) pommes])
      {
        v176 = [WeakRetained copyMatchInfo];
        v177 = +[NSMutableDictionary dictionary];
        v277 = 0u;
        v278 = 0u;
        v275 = 0u;
        v276 = 0u;
        obja = v176;
        v178 = [obja countByEnumeratingWithState:&v275 objects:v290 count:16];
        if (v178)
        {
          v179 = *v276;
          do
          {
            for (m = 0; m != v178; m = m + 1)
            {
              if (*v276 != v179)
              {
                objc_enumerationMutation(obja);
              }

              v181 = *(*(&v275 + 1) + 8 * m);

              _MDPlistGetRootPlistObjectFromPlist();
              v270 = _NSConcreteStackBlock;
              v271 = 3221225472;
              v272 = sub_10004082C;
              v273 = &unk_100093530;
              v274 = v177;
              _MDPlistDictionaryIterate();
              CFRelease(v181);
            }

            v178 = [obja countByEnumeratingWithState:&v275 objects:v290 count:16];
          }

          while (v178);
        }

        v182 = SPLogForSPLogCategoryDefault();
        v183 = gSPLogInfoAsDefault;
        if (os_log_type_enabled(v182, ((gSPLogInfoAsDefault & 1) == 0)))
        {
          v184 = [*(v1 + 104) queryID];
          *buf = 134217984;
          *&buf[4] = v184;
          _os_log_impl(&_mh_execute_header, v182, ((v183 & 1) == 0), "[qid=%ld][rewrite] Fetching Spotlight rewrite candidates.", buf, 0xCu);
        }

        v185 = si_tracing_current_span();
        v186 = *(v185 + 16);
        *buf = *v185;
        v306 = v186;
        v307 = *(v185 + 32);
        v187 = +[SPCoreSpotlightIndexer sharedInstance];
        v188 = *(v1 + 104);
        v189 = *(v1 + 184);
        v262[0] = _NSConcreteStackBlock;
        v262[1] = 3221225472;
        v262[2] = sub_100040914;
        v262[3] = &unk_100093558;
        objc_copyWeak(&v265, (v1 + 304));
        objc_copyWeak(&v266, (v1 + 312));
        v267 = *buf;
        v268 = v306;
        v269 = v307;
        v190 = *(v1 + 104);
        v191 = *(v1 + 176);
        v263 = v190;
        v264 = v191;
        [v187 rewriteQueryWithQueryString:v189 context:v188 matchInfo:v177 rewriteHandler:v262];

        objc_destroyWeak(&v266);
        objc_destroyWeak(&v265);
      }

      else
      {
        v192 = [*(v1 + 176) performQuery:WeakRetained isCorrectedQuery:0 reuseTask:v203 needsFuzzy:1 pommesRewrite:0 embeddingsRequery:0];
      }

      goto LABEL_266;
    }

    goto LABEL_231;
  }

  v123 = [WeakRetained waitForQueryCorrections];
  if (![v123 count] || objc_msgSend(WeakRetained, "previousQueryKind") == 10)
  {

    goto LABEL_215;
  }

  v173 = *(v1 + 176);
  v174 = [v123 firstObject];
  v175 = [v174 suggestion];
  [v173 performQueryRewriteForQuery:WeakRetained withCorrection:v175 task:v203];

LABEL_266:
}

void sub_10004078C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_10004082C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v14 = *a4;
  v15 = *(a4 + 2);
  IntValue = _MDPlistNumberGetIntValue();
  v7 = *(a1 + 32);
  v8 = [NSString stringWithUTF8String:a2, v14, v15];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 longLongValue];

  v11 = [NSNumber numberWithLongLong:&v10[IntValue]];
  v12 = *(a1 + 32);
  v13 = [NSString stringWithUTF8String:a2];
  [v12 setObject:v11 forKeyedSubscript:v13];
}

void sub_100040914(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_loadWeakRetained((a1 + 56));
  v9 = v8;
  if (WeakRetained && v8)
  {
    v10 = si_tracing_current_span();
    v27 = *v10;
    v28 = *(v10 + 16);
    v29 = *(v10 + 32);
    v11 = *(a1 + 80);
    *v10 = *(a1 + 64);
    *(v10 + 16) = v11;
    *(v10 + 32) = *(a1 + 96);
    v24 = *(a1 + 64);
    v25 = *(a1 + 80);
    v26 = *(a1 + 96);
    v12 = *v10;
    spanid = si_tracing_calc_next_spanid();
    v14 = *(v10 + 8);
    *v10 = v12;
    *(v10 + 8) = spanid;
    *(v10 + 16) = v14;
    *(v10 + 28) = 102;
    *(v10 + 32) = "SPCoreSpotlightIndexer rewriteHandler";
    si_tracing_log_span_begin();
    if (v6)
    {
      v15 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100063410(v6, buf, [*(a1 + 32) queryID], v15);
      }
    }

    else
    {
      if ([v5 count])
      {
        v17 = SPLogForSPLogCategoryDefault();
        v18 = gSPLogInfoAsDefault;
        if (os_log_type_enabled(v17, ((gSPLogInfoAsDefault & 1) == 0)))
        {
          v19 = [*(a1 + 32) queryID];
          *buf = 134217984;
          v31 = v19;
          _os_log_impl(&_mh_execute_header, v17, ((v18 & 1) == 0), "[qid=%ld][rewrite] Fetching Spotlight rewrite candidates finished.", buf, 0xCu);
        }

        v20 = *(a1 + 40);
        v21 = [v5 firstObject];
        v22 = [v20 performQuery:WeakRetained isCorrectedQuery:0 reuseTask:v9 needsFuzzy:1 pommesRewrite:v21 embeddingsRequery:0];

        goto LABEL_11;
      }

      v15 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [*(a1 + 32) queryID];
        *buf = 134217984;
        v31 = v23;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[qid=%ld][rewrite] No rewrite candidates for Spotlight query.", buf, 0xCu);
      }
    }

    v16 = [*(a1 + 40) performQuery:WeakRetained isCorrectedQuery:0 reuseTask:v9 needsFuzzy:1 pommesRewrite:0 embeddingsRequery:0];
LABEL_11:
    si_tracing_log_span_end();
    *v10 = v27;
    *(v10 + 16) = v28;
    *(v10 + 32) = v29;
  }
}

void sub_100040BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17)
{
  sub_1000066D4(&a9);
  v19 = a16;
  *v17 = a15;
  *(v17 + 16) = v19;
  *(v17 + 32) = a17;
  _Unwind_Resume(a1);
}

uint64_t sub_100040C3C(void *a1)
{
  v1 = a1;
  if (v1 && ([qword_1000A8468 containsObject:v1] & 1) == 0)
  {
    if (qword_1000A8470 && SSPriorityIndexLimitBundles())
    {
      v2 = [qword_1000A8470 containsObject:v1];
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100040CB4(uint64_t a1)
{
  v1 = si_tracing_current_span();
  v186 = *v1;
  v187 = *(v1 + 16);
  v188 = *(v1 + 32);
  v170 = v1;
  v2 = *v1;
  spanid = si_tracing_calc_next_spanid();
  v4 = *(v170 + 8);
  *v170 = v2;
  *(v170 + 8) = spanid;
  *(v170 + 16) = v4;
  *(v170 + 28) = 102;
  *(v170 + 32) = "SPCoreSpotlightDatastore ranking";
  si_tracing_log_span_begin();
  if (([*(a1 + 48) cancelled] & 1) == 0)
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v137 = *(a1 + 242);
    v138 = *(a1 + 241);
    v141 = *(a1 + 240);
    v142 = *(a1 + 243);
    v139 = *(a1 + 32);
    v140 = *(a1 + 40);
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    v10 = *(a1 + 96);
    v9 = *(a1 + 104);
    v12 = *(a1 + 112);
    v11 = *(a1 + 120);
    v13 = *(a1 + 128);
    v14 = *(a1 + 136);
    v167 = *(a1 + 144);
    v173 = *(a1 + 152);
    v165 = *(*(*(a1 + 208) + 8) + 40);
    v175 = *(a1 + 48);
    v171 = *(a1 + 160);
    v162 = *(*(a1 + 216) + 8);
    v143 = *(*(a1 + 224) + 8);
    v177 = *(a1 + 176);
    objb = *(a1 + 168);
    v182 = *(a1 + 184);
    v184 = *(a1 + 192);
    v15 = *(a1 + 232);
    v159 = *(a1 + 56);
    v147 = v5;
    v146 = v6;
    v145 = v7;
    v144 = v8;
    v148 = v10;
    v149 = v9;
    v150 = v12;
    v151 = v11;
    v152 = v13;
    v153 = v14;
    v164 = v167;
    v158 = v173;
    v166 = v165;
    v154 = v171;
    v16 = v175;
    v161 = objb;
    v157 = v177;
    v155 = v182;
    v156 = v184;
    v168 = v16;
    v17 = [v16 queryIdent];
    v18 = [v16 queryContext];
    v19 = [v18 searchString];
    [SSRankingUtilities logSections:v164 message:@"L1 rankLocalItems" queryId:v17 query:v19];

    v20 = [v168 queryContext];
    [v161 parseQUQuery:v20];

    v21 = SPLogForSPLogCategoryRanking();
    v22 = [v168 externalID];
    if (v22 && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v22, "coreSpotlightRankingLatency", &unk_100079B12, buf, 2u);
    }

    v23 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v291 = 0;
    v292 = &v291;
    v293 = 0x3032000000;
    v294 = sub_10003C26C;
    v295 = sub_10003C27C;
    v296 = objc_alloc_init(NSMutableDictionary);
    v285 = 0;
    v286 = &v285;
    v287 = 0x3032000000;
    v288 = sub_10003C26C;
    v289 = sub_10003C27C;
    v290 = objc_alloc_init(NSMutableDictionary);
    v283[0] = 0;
    v283[1] = v283;
    v283[2] = 0x3032000000;
    v283[3] = sub_10003C26C;
    v283[4] = sub_10003C27C;
    v284 = 0;
    v279 = 0;
    v280 = &v279;
    v281 = 0x2020000000;
    v282 = [v158 count];
    if (!v280[3])
    {
      if (v142)
      {
LABEL_117:
        _Block_object_dispose(&v279, 8);
        _Block_object_dispose(v283, 8);

        _Block_object_dispose(&v285, 8);
        _Block_object_dispose(&v291, 8);

        goto LABEL_118;
      }

      os_unfair_lock_lock(&stru_1000A8538);
      if (v166)
      {
        v45 = [v166 copy];
        [v154 setSuggestionResults:v45];
      }

      os_unfair_lock_unlock(&stru_1000A8538);
      v46 = [v154 suggestionResults];
      [v154 finishWithSections:0 suggestionResults:v46];
LABEL_116:

      goto LABEL_117;
    }

    v24 = [NSMutableArray alloc];
    v172 = [v24 initWithCapacity:v280[3]];
    [v168 externalID];
    kdebug_trace();
    v25 = [v164 count];
    v278 = 0;
    v277 = 0;
    v276 = 0;
    [objc_opt_class() modifyBatchSize:&v278 batchIncrement:&v277 batches:&v276 withSectionsCount:v25];
    v26 = [NSMutableArray alloc];
    v27 = [v26 initWithCapacity:v276];
    if (v25)
    {
      v28 = v25;
      do
      {
        [v27 addObject:kCFNull];
        --v28;
      }

      while (v28);
    }

    v29 = dispatch_get_global_queue(33, 0);
    v262 = _NSConcreteStackBlock;
    v263 = 3221225472;
    v264 = sub_100048A28;
    v265 = &unk_100093848;
    v30 = v168;
    v266 = v30;
    v273 = v278;
    v274 = v25;
    v31 = v164;
    v267 = v31;
    v271 = v283;
    obj = v161;
    v268 = obj;
    v275 = v162 + 24;
    v32 = v157;
    v269 = v32;
    v272 = &v279;
    v183 = v27;
    v270 = v183;
    tracing_dispatch_apply();

    if (v25)
    {
      for (i = 0; i != v25; ++i)
      {
        v34 = [v183 objectAtIndexedSubscript:i];
        if (v34 != kCFNull)
        {
          v35 = [v183 objectAtIndexedSubscript:i];
          [v172 addObjectsFromArray:v35];
        }
      }
    }

    [v30 externalID];
    kdebug_trace();
    *(v143 + 40) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v23;
    if ([v30 cancelled])
    {
LABEL_115:

      v46 = v172;
      goto LABEL_116;
    }

    v185 = objc_opt_new();
    v261 = 0u;
    v260 = 0u;
    v259 = 0u;
    v258 = 0u;
    v36 = v172;
    v37 = [v36 countByEnumeratingWithState:&v258 objects:v308 count:16];
    if (v37)
    {
      v38 = 0;
      v39 = *v259;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v259 != v39)
          {
            objc_enumerationMutation(v36);
          }

          if (*(*(&v258 + 1) + 8 * j) == kCFNull)
          {
            [v185 addIndex:v38];
          }

          ++v38;
        }

        v37 = [v36 countByEnumeratingWithState:&v258 objects:v308 count:16];
      }

      while (v37);
    }

    v41 = v31;
    [v36 removeObjectsAtIndexes:v185];
    [v30 externalID];
    kdebug_trace();
    v42 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v43 = [v32 fetchAttributes];
    if ([v43 containsObject:MDItemPhotosL2Signals])
    {
      v44 = 1;
    }

    else
    {
      v44 = [v32 fetchl2Signals];
    }

    v47 = v159[8];
    SPL2Threshold();
    LOBYTE(v132) = 0;
    [obj updateScoresForPreparedItems:v36 isCJK:(v47 >> 1) & 1 clientBundleID:0 thresholdValue:0 queryNodeMatchInfo:v44 collectL2Signals:0 isCardSearch:v132 isDocumentSearch:?];
    [v155 setNanosecondInterval:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v42];
    [v156 setNanosecondInterval:(*(v162 + 24) * 1000000000.0)];
    v48 = +[SPFeedbackProxy sharedProxy];
    v49 = [v30 queryIdent];
    v50 = [v30 connection];
    v51 = [v50 bundleID];
    [v48 sendFeedbackType:21 feedback:v156 queryId:v49 clientID:v51];

    [v30 externalID];
    kdebug_trace();
    v52 = +[SPFeedbackProxy sharedProxy];
    v53 = [v30 queryIdent];
    v54 = [v30 connection];
    v55 = [v54 bundleID];
    [v52 sendFeedbackType:21 feedback:v155 queryId:v53 clientID:v55];

    if ([v30 cancelled])
    {
LABEL_114:

      goto LABEL_115;
    }

    v56 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v256[0] = 0;
    v256[1] = v256;
    v256[2] = 0x3032000000;
    v256[3] = sub_10003C26C;
    v256[4] = sub_10003C27C;
    v257 = 0;
    v247 = _NSConcreteStackBlock;
    v248 = 3221225472;
    v249 = sub_10004976C;
    v250 = &unk_1000928D8;
    v57 = v30;
    v251 = v57;
    v254 = v278;
    v255 = v25;
    v58 = v41;
    v252 = v58;
    v59 = v159;
    v253 = v59;
    tracing_dispatch_apply();
    if ([v57 cancelled])
    {
LABEL_113:

      _Block_object_dispose(v256, 8);
      goto LABEL_114;
    }

    *buf = _NSConcreteStackBlock;
    v225 = 3221225472;
    v226 = sub_10004A084;
    v227 = &unk_1000938C0;
    v163 = v57;
    v228 = v163;
    v242 = v278;
    v243 = v25;
    v60 = v58;
    v229 = v60;
    v244 = v15;
    v230 = v147;
    v245 = v141;
    v246 = v142;
    v61 = v154;
    v231 = v61;
    v232 = v148;
    v233 = v149;
    v234 = v150;
    v235 = v151;
    v236 = v153;
    v237 = v152;
    v238 = &v285;
    v239 = &v291;
    v240 = v256;
    v241 = v283;
    tracing_dispatch_apply();
    if ([v163 cancelled])
    {
LABEL_112:

      goto LABEL_113;
    }

    v136 = v61;
    if ([v286[5] count])
    {
      v133 = v60;
      v134 = v59;
      v135 = v56;
      v62 = [v286[5] keysSortedByValueUsingComparator:&stru_1000938E0];
      v63 = [v62 mutableCopy];

      v64 = [v292[5] keysSortedByValueUsingComparator:&stru_100093900];
      v65 = [v64 mutableCopy];

      v66 = [NSMutableArray alloc];
      v178 = [v66 initWithCapacity:{objc_msgSend(v292[5], "count")}];
      v67 = [NSMutableArray alloc];
      v160 = [v67 initWithCapacity:{objc_msgSend(v286[5], "count")}];
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      obja = v65;
      v68 = 0;
      v69 = [obja countByEnumeratingWithState:&v220 objects:v307 count:16];
      if (v69)
      {
        v70 = *v221;
        do
        {
          for (k = 0; k != v69; k = k + 1)
          {
            if (*v221 != v70)
            {
              objc_enumerationMutation(obja);
            }

            v72 = [v292[5] objectForKeyedSubscript:*(*(&v220 + 1) + 8 * k)];
            [v178 addObject:v72];
            if (!v68)
            {
              v68 = objc_alloc_init(NSMutableSet);
            }

            v73 = [v72 title];
            v74 = [v73 text];

            if (v74)
            {
              v75 = [v72 title];
              v76 = [v75 text];
              v77 = [v76 lowercaseString];
              [v68 addObject:v77];
            }
          }

          v69 = [obja countByEnumeratingWithState:&v220 objects:v307 count:16];
        }

        while (v69);
      }

      [v145 setResults:v178];
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v176 = v63;
      v78 = [v176 countByEnumeratingWithState:&v216 objects:&v303 count:16];
      if (v78)
      {
        v79 = *v217;
        v174 = SSSectionIdentifierPeopleSuggestions;
        do
        {
          for (m = 0; m != v78; m = m + 1)
          {
            if (*v217 != v79)
            {
              objc_enumerationMutation(v176);
            }

            v81 = [v286[5] objectForKeyedSubscript:*(*(&v216 + 1) + 8 * m)];
            v82 = [v81 title];
            v83 = [v82 text];
            v84 = [v83 lowercaseString];

            v85 = [v81 sectionBundleIdentifier];
            v86 = v85;
            if (v85)
            {
              v87 = [v85 isEqual:v174];
            }

            else
            {
              v87 = 0;
            }

            v88 = [v81 contactIdentifier];

            if (v88)
            {
              if ([obja count])
              {
                v89 = v292[5];
                v90 = [v81 contactIdentifier];
                v91 = [v89 objectForKeyedSubscript:v90];

                if (v91)
                {
                  v92 = [v81 personIdentifier];
                  [v91 setPersonIdentifier:v92];

                  v93 = [v81 personQueryIdentifier];
                  [v91 setPersonQueryIdentifier:v93];

                  v94 = (v87 & 1) != 0 ? 1 : [v91 hasTextContentMatch];
                  [v91 setHasTextContentMatch:v94];
                  [v81 rankingScore];
                  [v91 setRankingScore:?];
                  [v91 setType:37];
                  if ([v91 hasTextContentMatch])
                  {
                    v98 = [v163 queryContext];
                    v99 = [SSSuggestionResultBuilder buildResultWithResult:v91 queryContext:v98];

                    os_unfair_lock_lock(&stru_1000A8538);
                    [v166 addObject:v99];
                    os_unfair_lock_unlock(&stru_1000A8538);
                  }
                }

                goto LABEL_68;
              }
            }

            else if ([v68 containsObject:v84])
            {
              goto LABEL_68;
            }

            [v81 rankingScore];
            if (v95 > 0.0)
            {
              if (v87)
              {
                v96 = [v163 queryContext];
                v97 = [SSSuggestionResultBuilder buildResultWithResult:v81 queryContext:v96];

                os_unfair_lock_lock(&stru_1000A8538);
                [v166 addObject:v97];
                os_unfair_lock_unlock(&stru_1000A8538);
              }

              [v160 addObject:v81];
            }

LABEL_68:
          }

          v78 = [v176 countByEnumeratingWithState:&v216 objects:&v303 count:16];
        }

        while (v78);
      }

      [v144 setResults:v160];
    }

    else
    {
      if (![v292[5] count])
      {
LABEL_81:
        if (v142)
        {
          v106 = v60;
        }

        else
        {
          v106 = [objc_opt_class() removedDuplicatePhotosSectionsFromSections:v60 isPhotosScopedSearch:v138];
        }

        v107 = v106;
        v108 = [v106 count];
        [objc_opt_class() modifyBatchSize:&v278 batchIncrement:&v277 batches:&v276 withSectionsCount:v108];
        v204 = _NSConcreteStackBlock;
        v205 = 3221225472;
        v206 = sub_10004AFDC;
        v207 = &unk_100093928;
        v210 = v163;
        v214 = v278;
        v215 = v108;
        v211 = v107;
        v212 = v59;
        v213 = v146;
        v209 = v140;
        v208 = v139;
        tracing_dispatch_apply();
        v193 = _NSConcreteStackBlock;
        v194 = 3221225472;
        v195 = sub_10004B160;
        v196 = &unk_100093950;
        v109 = v210;
        v197 = v109;
        v202 = v278;
        v203 = v108;
        v110 = v211;
        v198 = v110;
        v111 = v136;
        v199 = v111;
        v200 = v283;
        v201 = v256;
        tracing_dispatch_apply();
        *(v143 + 48) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v56;
        v112 = [v111 resultPipe];
        if ([v109 cancelled])
        {
          v113 = "canceled";
        }

        else
        {
          v113 = "finished";
        }

        v114 = sub_10001DAE0(v112, v113, "corespotlight", *(v143 + 32), "rankprep", *(v143 + 40), "resultprep", *(v143 + 48), 0, 0);

        v115 = SPLogForSPLogCategoryQuery();
        v116 = gSPLogInfoAsDefault;
        if (os_log_type_enabled(v115, ((gSPLogInfoAsDefault & 1) == 0)))
        {
          v117 = objc_opt_class();
          v118 = [v109 cancelled];
          v119 = "";
          *v297 = 138412802;
          v298 = v117;
          if (v118)
          {
            v119 = " canceled";
          }

          v299 = 2048;
          v300 = v114 / 1000000000.0;
          v301 = 2080;
          v302 = v119;
          _os_log_impl(&_mh_execute_header, v115, ((v116 & 1) == 0), "- Datastore %@ time %g%s", v297, 0x20u);
        }

        if ([v109 cancelled])
        {
          v120 = SPLogForSPLogCategoryTelemetry();
          v121 = [v109 externalID];
          if (v121 && os_signpost_enabled(v120))
          {
            *v297 = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v120, OS_SIGNPOST_EVENT, v121, "coreSpotlightCancel", " enableTelemetry=YES ", v297, 2u);
          }
        }

        else
        {
          if (v108)
          {
            [v109 setPrefersLocalUserTypedSuggestion:(v137 | v141) ^ 1u];
          }

          os_unfair_lock_lock(&stru_1000A8538);
          if (v166)
          {
            v122 = [v166 copy];
            [v111 setSuggestionResults:v122];
          }

          os_unfair_lock_unlock(&stru_1000A8538);
          if (v142)
          {
            v120 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v110, "count")}];
            v191 = 0u;
            v192 = 0u;
            v189 = 0u;
            v190 = 0u;
            v123 = v110;
            v124 = [v123 countByEnumeratingWithState:&v189 objects:v297 count:16];
            if (v124)
            {
              v125 = *v190;
              do
              {
                for (n = 0; n != v124; n = n + 1)
                {
                  if (*v190 != v125)
                  {
                    objc_enumerationMutation(v123);
                  }

                  v127 = *(*(&v189 + 1) + 8 * n);
                  v128 = [v127 bundleIdentifier];
                  if (sub_100040C3C(v128))
                  {
                    v129 = [v127 mutableDeepCopy];
                    [v120 addObject:v129];
                  }
                }

                v124 = [v123 countByEnumeratingWithState:&v189 objects:v297 count:16];
              }

              while (v124);
            }

            v130 = [v111 suggestionResults];
            [v111 progressWithSections:v120 suggestionResults:v130];
          }

          else
          {
            v120 = [v111 suggestionResults];
            [v111 finishWithSections:v110 suggestionResults:v120];
          }
        }

        goto LABEL_112;
      }

      v133 = v60;
      v134 = v59;
      v135 = v56;
      v100 = [NSMutableArray alloc];
      v176 = [v100 initWithCapacity:{objc_msgSend(v292[5], "count")}];
      v306 = 0u;
      v305 = 0u;
      v304 = 0u;
      v303 = 0u;
      v101 = v292[5];
      v102 = [v101 countByEnumeratingWithState:&v303 objects:v307 count:16];
      if (v102)
      {
        v103 = *v304;
        do
        {
          for (ii = 0; ii != v102; ii = ii + 1)
          {
            if (*v304 != v103)
            {
              objc_enumerationMutation(v101);
            }

            v105 = [v292[5] objectForKeyedSubscript:*(*(&v303 + 1) + 8 * ii)];
            [v176 addObject:v105];
          }

          v102 = [v101 countByEnumeratingWithState:&v303 objects:v307 count:16];
        }

        while (v102);
      }

      [v145 setResults:v176];
    }

    v59 = v134;
    v56 = v135;
    v60 = v133;
    goto LABEL_81;
  }

LABEL_118:
  dispatch_resume(*(a1 + 200));
  result = si_tracing_log_span_end();
  *v170 = v186;
  *(v170 + 16) = v187;
  *(v170 + 32) = v188;
  return result;
}

void sub_100042510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&STACK[0x400], 8);
  _Block_object_dispose(&STACK[0x500], 8);
  _Block_object_dispose(&STACK[0x520], 8);
  _Block_object_dispose(&STACK[0x550], 8);
  _Block_object_dispose(&STACK[0x580], 8);
  sub_1000066D4(&a51);
  _Unwind_Resume(a1);
}

void sub_100042660(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = si_tracing_current_span();
  v13 = *v5;
  v14 = *(v5 + 16);
  v15 = *(v5 + 32);
  v6 = *(a1 + 72);
  *v5 = *(a1 + 56);
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a1 + 88);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "SPCoreSpotlightDatastore completionHandler";
  si_tracing_log_span_begin();
  if (WeakRetained[56] == 1)
  {
    v10 = [v4 timeoutTimer];
    v11 = v10;
    if (v10)
    {
      dispatch_source_cancel(v10);
      [v4 setTimeoutTimer:0];
    }
  }

  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
  si_tracing_log_span_end();
  *v5 = v13;
  *(v5 + 16) = v14;
  *(v5 + 32) = v15;
}

void sub_1000427D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  sub_1000066D4(&a11);
  v21 = a18;
  *v19 = a17;
  *(v19 + 16) = v21;
  *(v19 + 32) = a19;
  _Unwind_Resume(a1);
}

void sub_100044F94(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x790], 8);
  _Block_object_dispose(&STACK[0x7C0], 8);
  _Unwind_Resume(a1);
}

void sub_1000451D8(void *a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  [v5 count];
  Mutable = _MDStoreOIDArrayCreateMutable();
  v7 = _MDPlistBytesCreateMutable();
  v27 = Mutable;
  _MDStoreOIDArrayBeginSequence();
  _MDPlistBytesBeginPlist();
  _MDPlistBytesBeginArray();
  _MDPlistBytesAddNull();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v28)
  {
    v26 = *v37;
    do
    {
      v8 = 0;
      do
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v8;
        v9 = *(*(&v36 + 1) + 8 * v8);
        [v9 oid];
        _MDPlistBytesBeginArray();
        v10 = [v9 bundleID];
        v31 = SSPommesRankingForSectionBundle();

        v30 = [v9 clientData];
        v11 = [v30 count];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v12 = *(*(a1[5] + 8) + 40);
        v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v33;
          do
          {
            v16 = 0;
            do
            {
              if (*v33 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v32 + 1) + 8 * v16) integerValue];
              if ((v17 & 0x8000000000000000) != 0 || v17 >= v11)
              {
                v19 = kCFNull;
LABEL_17:
                v20 = v19;
                goto LABEL_27;
              }

              if (v17 == *(*(a1[6] + 8) + 24))
              {
                if (!v31)
                {
                  [v9 scoreL1];
                  v19 = [NSNumber numberWithFloat:?];
                  goto LABEL_17;
                }

                v18 = [v9 rankingItem];
                [v18 pommesL1Score];
                goto LABEL_25;
              }

              if (v17 == *(*(a1[7] + 8) + 24))
              {
                v21 = [v9 rankingItem];
                v18 = v21;
                if (v31)
                {
                  [v21 l2Score];
                }

                else
                {
                  [v21 score];
                }

LABEL_25:
                v22 = [NSNumber numberWithFloat:?];
                goto LABEL_26;
              }

              if (v17 != *(*(a1[8] + 8) + 24))
              {
                v19 = [v30 objectAtIndexedSubscript:v17];
                goto LABEL_17;
              }

              v18 = [v9 rankingItem];
              v22 = [v18 l2Signals];
LABEL_26:
              v20 = v22;

LABEL_27:
              __MDPlistBytesAddObject();

              v16 = v16 + 1;
            }

            while (v14 != v16);
            v23 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
            v14 = v23;
          }

          while (v23);
        }

        _MDPlistBytesEndArray();
        _MDStoreOIDArrayAddOID();

        v8 = v29 + 1;
      }

      while ((v29 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v28);
  }

  _MDPlistBytesEndArray();
  _MDPlistBytesEndPlist();
  _MDStoreOIDArrayEndSequence();
  (*(a1[4] + 16))();
  CFRelease(v7);
  CFRelease(v27);
}

void sub_1000455E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  kdebug_trace();
  v6 = *(*(*(a1 + 64) + 8) + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100045730;
  v14[3] = &unk_100093668;
  v7 = *(a1 + 32);
  v8 = *(a1 + 80);
  v17 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
  v18 = v8;
  v9 = *(a1 + 40);
  v20 = *(a1 + 96);
  v10 = *(a1 + 48);
  v21 = *(a1 + 97);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v7;
  *(&v13 + 1) = v9;
  v15 = v13;
  v16 = v12;
  v19 = a3;
  [v6 enumerateTopHitResultsByBundle:v5 addingToItems:0 withHandler:v14];
}

void sub_100045730(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = a2;
  v7 = a3;
  v35 = a4;
  [*(a1 + 32) prepareItemsForL1Ranking:? inBundle:?];
  v36 = v7;
  v8 = [v7 mutableCopy];
  obj = *(*(*(a1 + 64) + 8) + 40);
  objc_sync_enter(obj);
  v9 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v38];
  v10 = [v9 objectForKeyedSubscript:@"sparse"];
  [v8 addObjectsFromArray:v10];

  v11 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v38];
  v12 = [v11 objectForKeyedSubscript:@"dense"];
  [v8 addObjectsFromArray:v12];

  v13 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v38];
  v14 = [v13 objectForKeyedSubscript:@"hybrid"];
  [v8 addObjectsFromArray:v14];

  v15 = *(a1 + 80);
  v16 = *(*(*(a1 + 72) + 8) + 40);
  v17 = *(a1 + 88);
  v18 = [*(a1 + 40) userQuery];
  v19 = [*(a1 + 40) queryID];
  LOBYTE(v14) = *(a1 + 104);
  v20 = *(a1 + 48);
  v21 = *(a1 + 105);
  [*(a1 + 32) currentTime];
  LOBYTE(v34) = v21;
  LOBYTE(v33) = v14;
  v22 = [v16 selectFromBatch:v8 withBundle:v38 rankCount:v15 maxCount:v17 userQuery:v18 queryID:v19 isCJK:v33 clientBundle:v20 isKeyboardCJK:v34 currentTime:?];

  [*(*(*(a1 + 64) + 8) + 40) setObject:v22 forKeyedSubscript:v38];
  objc_sync_exit(obj);

  v23 = [v8 objectEnumerator];
  v24 = [v23 nextObject];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    while (1)
    {
      v30 = [v25 dataclass];

      if (!v29)
      {
        break;
      }

      if (v26 && ![v26 isEqualToString:v30])
      {
        goto LABEL_8;
      }

      ++v28;
LABEL_10:

      v32 = v30;
      v25 = [v23 nextObject];
      v29 = v25 != 0;
      v26 = v32;
      if (!v25)
      {
        v26 = v32;
        if (!v28)
        {

          goto LABEL_13;
        }
      }
    }

    if (!v26)
    {
      sub_10006347C();
    }

LABEL_8:
    v31 = [v8 subarrayWithRange:{v27, v28}];
    if (![v31 count])
    {
      sub_1000634A8();
    }

    (*(*(a1 + 56) + 16))();
    v27 += v28;
    v28 = v29;

    goto LABEL_10;
  }

LABEL_13:
}

void sub_100045A7C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  kdebug_trace();
  v6 = *(*(*(a1 + 64) + 8) + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100045BD4;
  v13[3] = &unk_1000936B8;
  v7 = *(a1 + 32);
  v18 = *(a1 + 80);
  v8 = *(a1 + 40);
  v16 = *(a1 + 64);
  v9 = *(a1 + 48);
  v17 = *(a1 + 72);
  v20 = *(a1 + 88);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v14 = v12;
  v15 = v11;
  v19 = a3;
  [v6 enumerateTopHitResultsByBundle:v5 addingToItems:0 withHandler:v13];
}

void sub_100045BD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = a2;
  v7 = a3;
  v42 = a4;
  [*(a1 + 32) setTopHitMaxCount:*(a1 + 80)];
  v8 = [*(a1 + 40) fetchAttributes];
  v44 = [v8 containsObject:MDItemPhotosL2Signals];

  v43 = v7;
  v9 = [v7 mutableCopy];
  v10 = *(*(*(a1 + 64) + 8) + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 80);
  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) userQuery];
  v15 = [*(a1 + 40) queryID];
  v16 = *(*(*(a1 + 72) + 8) + 40);
  LOWORD(v7) = *(a1 + 96);
  BYTE3(v41) = v44;
  BYTE2(v41) = [*(a1 + 40) privateQuery];
  LOWORD(v41) = v7;
  v17 = [v10 rankBatch:v9 withRanker:v13 withBundle:v46 clientBundle:v11 maxCount:v12 userQuery:v14 queryID:v15 rankingConfiguration:v16 isCJK:v41 isKeyboardCJK:? privateQuery:? collectL2Signals:?];

  [v9 addObjectsFromArray:v17];
  v18 = [v9 objectEnumerator];
  v19 = [v18 nextObject];
  v45 = v17;
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    while (1)
    {
      v25 = [v20 dataclass];

      if (!v24)
      {
        break;
      }

      if (v21 && ![v21 isEqualToString:v25])
      {
        goto LABEL_8;
      }

      ++v23;
LABEL_10:

      v27 = v25;
      v20 = [v18 nextObject];
      v24 = v20 != 0;
      v21 = v27;
      if (!v20)
      {
        v21 = v27;
        if (!v23)
        {

          v17 = v45;
          goto LABEL_13;
        }
      }
    }

    if (!v21)
    {
      sub_1000634D4();
    }

LABEL_8:
    v26 = [v9 subarrayWithRange:{v22, v23}];
    if (![v26 count])
    {
      sub_100063500();
    }

    (*(*(a1 + 56) + 16))();
    v22 += v23;
    v23 = v24;

    goto LABEL_10;
  }

LABEL_13:
  if (byte_1000A8488 == 1 && [v17 count])
  {
    v28 = objc_opt_new();
    v29 = objc_opt_new();
    [v28 setArrayOfRankingItems:v29];
    v30 = [v17 objectAtIndexedSubscript:0];
    v31 = [v30 bundleID];
    [v28 setBundleIdentifier:v31];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = v17;
    v33 = [v32 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v48;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v48 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v47 + 1) + 8 * i) rankingItem];
          [v29 addObject:v37];
        }

        v34 = [v32 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v34);
    }

    v38 = +[SDTTRSupport getSharedInstance];
    v39 = [*(a1 + 40) userQuery];
    v51 = v28;
    v40 = [NSArray arrayWithObjects:&v51 count:1];
    [v38 dumpTTRDebugFilesForQuery:v39 sections:v40 enableKeyLogRanking:0];

    v17 = v45;
  }

  kdebug_trace();
}

void sub_10004600C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a6;
  if (a2 > 6)
  {
    switch(a2)
    {
      case 7:
        _MDStoreOIDArrayGetVectorCount();
        _MDStoreOIDArrayApplyBlock();
        v13 = *(*(a1[9] + 8) + 40);
        v14 = objc_opt_new();
        v15 = *(a1[9] + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        (*(a1[6] + 16))();
        goto LABEL_29;
      case 8:
        v12 = *(a1[5] + 16);
        break;
      case 9:
        v12 = *(a1[5] + 16);
        break;
      default:
        goto LABEL_12;
    }

LABEL_28:
    v12();
    goto LABEL_29;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_5;
    case 2:
      v12 = *(a1[5] + 16);
      goto LABEL_28;
    case 6:
LABEL_5:
      if (([*(*(a1[10] + 8) + 40) canceled] & 1) == 0)
      {
        _MDStoreOIDArrayGetVectorCount();
        v37 = v35;
        _MDStoreOIDArrayApplyBlock();
        v8 = *(*(a1[9] + 8) + 40);
        v9 = objc_opt_new();
        v10 = *(a1[9] + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        (*(a1[7] + 16))();
        *(*(a1[20] + 8) + 24) += [v8 count];
      }

      goto LABEL_29;
  }

LABEL_12:
  v34 = *(*(a1[8] + 8) + 40);
  objc_sync_enter(v34);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(*(a1[8] + 8) + 40);
  v17 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v17)
  {
    v18 = *v39;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v38 + 1) + 8 * i);
        v21 = objc_alloc_init(NSMutableArray);
        v22 = [*(*(a1[8] + 8) + 40) objectForKeyedSubscript:v20];
        v23 = [v22 objectForKeyedSubscript:@"sparse"];

        if (v23)
        {
          v24 = [*(*(a1[8] + 8) + 40) objectForKeyedSubscript:v20];
          v25 = [v24 objectForKeyedSubscript:@"sparse"];
          [v21 addObjectsFromArray:v25];
        }

        v26 = [*(*(a1[8] + 8) + 40) objectForKeyedSubscript:{v20, v34}];
        v27 = [v26 objectForKeyedSubscript:@"dense"];

        if (v27)
        {
          v28 = [*(*(a1[8] + 8) + 40) objectForKeyedSubscript:v20];
          v29 = [v28 objectForKeyedSubscript:@"dense"];
          [v21 addObjectsFromArray:v29];
        }

        v30 = [*(*(a1[8] + 8) + 40) objectForKeyedSubscript:v20];
        v31 = [v30 objectForKeyedSubscript:@"hybrid"];

        if (v31)
        {
          v32 = [*(*(a1[8] + 8) + 40) objectForKeyedSubscript:v20];
          v33 = [v32 objectForKeyedSubscript:@"hybrid"];
          [v21 addObjectsFromArray:v33];
        }

        (*(a1[4] + 16))();
      }

      v17 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v17);
  }

  objc_sync_exit(v34);
LABEL_29:
}

void sub_1000465C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5 >= 2)
  {
    v6 = (a4 + 8);
    v7 = a5 - 1;
    do
    {
      v8 = objc_opt_new();
      v9 = *v6++;
      [v8 setOid:v9];
      [*(*(*(a1 + 32) + 8) + 40) addObject:v8];

      --v7;
    }

    while (v7);
  }
}

void sub_100046640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v8 = _MDPlistBytesCopyChildPlistBytesAtIndex();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 1;
  v16[0] = _NSConcreteStackBlock;
  v9 = *(a1 + 40);
  v10 = *(*(*(a1 + 40) + 8) + 24);
  v16[1] = 3221225472;
  v16[2] = sub_100046790;
  v16[3] = &unk_100093730;
  v18 = v26;
  v11 = *(a1 + 56);
  v19 = v9;
  v20 = v11;
  v12 = *(a1 + 88);
  v21 = *(a1 + 72);
  v22 = v12;
  v13 = *(a1 + 104);
  v25 = a4;
  v23 = v13;
  v14 = *(a1 + 32);
  v15 = *(a1 + 112);
  v17 = v14;
  v24 = v15;
  [v8 enumerateQueryResults:v10 stringCache:0 usingBlock:v16];
  if (v8)
  {
    CFRelease(v8);
  }

  _Block_object_dispose(v26, 8);
}

void sub_100046790(void *a1, uint64_t a2)
{
  v2 = a1[16];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  v5 = *(v2 + 8 * v4);
  if (v5)
  {
    v37 = v5;
    v8 = [[NSMutableArray alloc] initWithCapacity:399];
    v9 = 0;
    v38 = 0;
    v39 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (v11 >= *(*(a1[6] + 8) + 24))
      {
        goto LABEL_35;
      }

      v14 = *(a2 + 8 * v11);
      if (v11 == *(*(a1[7] + 8) + 24))
      {
        objc_opt_class();
        v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
        v16 = v15;

        v10 = v16;
      }

      else if (v11 == *(*(a1[8] + 8) + 24))
      {
        objc_opt_class();
        v17 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
        v18 = v17;

        v9 = v18;
      }

      else if (v11 == *(*(a1[9] + 8) + 24))
      {
        ranking_index_score_init();
      }

      else if (v11 == *(*(a1[10] + 8) + 24))
      {
        objc_opt_class();
        v19 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
        v20 = v19;

        v39 = v20;
      }

      else if (v11 == *(*(a1[11] + 8) + 24))
      {
        objc_opt_class();
        v21 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
        v22 = v21;

        v38 = v22;
      }

      else if (v11 == *(*(a1[12] + 8) + 24))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(__CFNull *)v14 floatValue];
          v13 = v23;
        }
      }

      if (v14)
      {
        [v8 addObject:v14];
        if (v14 != kCFNull)
        {
          v24 = *(*(a1[13] + 8) + 24);
          if (*v24 > v11 && (v24[(v11 >> 6) + 1] & (1 << v11)) != 0)
          {
            ++v12;
          }
        }
      }

      else
      {
LABEL_35:
        v14 = kCFNull;
        [v8 addObject:v14];
      }

      ++v11;
    }

    while (v11 != 399);
    v25 = SSCompactRankingAttrsAlloc();
    for (i = 0; i != 399; ++i)
    {
      v27 = [v8 objectAtIndexedSubscript:{i, v37}];
      if (v27 != kCFNull)
      {
        v28 = *(*(a1[13] + 8) + 24);
        if (*v28 > i && ((v28[(i >> 6) + 1] >> i) & 1) != 0)
        {
          v29 = qword_1000A84B0;
          v30 = [*(*(a1[14] + 8) + 40) objectAtIndexedSubscript:i];
          [v29 indexOfObject:v30];

          SSCompactRankingAttrsInsertValue();
        }
      }
    }

    if (v9)
    {
      v31 = [SPCSTopHitResult alloc];
      v32 = [[PRSRankingItem alloc] initWithAttrs:v25];
      v33 = [(SPCSTopHitResult *)v31 initWithRankingItem:v32 clientData:v8];

      [v33 setOid:v37];
      v34 = v38;
      [v33 setThreadId:v38];
      [v33 setInterestingDate:v10];
      [v33 setScore:0, 0];
      [v33 setBundleID:v9];
      [v33 setDataclass:a1[4]];
      [v33 setType:2];
      v35 = v39;
      [v33 setIdentifier:v39];
      LODWORD(v36) = v13;
      [v33 setScoreL1:v36];
      [*(*(a1[15] + 8) + 40) addObject:v33];
    }

    else
    {
      v33 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v41 = v37;
        v42 = 2048;
        v43 = v37;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "*warn* Missing bundleID for oid:0x%llx(%lld)", buf, 0x16u);
      }

      v34 = v38;
      v35 = v39;
    }
  }
}

void sub_100046C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SPLogForSPLogCategoryQuery();
  v5 = v4;
  if (gSPLogDebugAsDefault)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v7 = [*(*(*(a1 + 112) + 8) + 40) count];
    *buf = 134218242;
    v147 = v7;
    v148 = 2112;
    v149 = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished topHit query, resultsCount:%lu, error:%@", buf, 0x16u);
  }

  if (v3)
  {
    (*(*(a1 + 88) + 16))();
    goto LABEL_21;
  }

  if ([SDPommesFeature usingPommesRankingForClientBundle:*(a1 + 32)])
  {
    v8 = os_transaction_create();
    v9 = objc_autoreleasePoolPush();
    v10 = SPLogForSPLogCategoryDefault();
    v11 = v10;
    if (gSPLogDebugAsDefault)
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v10, v12))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (*(*(*(a1 + 120) + 8) + 24) || !*(a1 + 48))
  {
    v8 = os_transaction_create();
    v9 = objc_autoreleasePoolPush();
    v13 = SPLogForSPLogCategoryDefault();
    v11 = v13;
    if (gSPLogDebugAsDefault)
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v13, v12))
    {
      goto LABEL_20;
    }

LABEL_19:
    v14 = objc_retainBlock(*(a1 + 88));
    *buf = 138412290;
    v147 = v14;
    _os_log_impl(&_mh_execute_header, v11, v12, "Finished completing %@", buf, 0xCu);

LABEL_20:
    (*(*(a1 + 96) + 16))();
    (*(*(a1 + 88) + 16))();
    [*(a1 + 40) deactivate];
    objc_autoreleasePoolPop(v9);
    v15 = objc_opt_self();

    goto LABEL_21;
  }

  [*(a1 + 56) setMaxCount:*(a1 + 256)];
  [*(a1 + 56) setGrouped:*(a1 + 256) != 0];
  v16 = *(a1 + 64);
  v17 = *(a1 + 32);
  v18 = *(a1 + 272);
  v19 = *(a1 + 48);
  *(&v113 + 1) = [*(a1 + 56) disableNLP];
  LOBYTE(v113) = v18;
  v20 = [v16 _topHitQueryParametersForSearchString:v19 searchEntities:&__NSArray0__struct contextIdentifier:v17 queryKind:11 needsFuzzy:1 checkForMath:0 isCJK:v113 disableNLP:11 disableOCR:*(a1 + 32) previousQueryKind:*(a1 + 72) clientBundle:objc_msgSend(*(a1 + 56) keyboardLanguage:"queryID") queryID:?];
  v21 = *(*(a1 + 128) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  v23 = [*(*(*(a1 + 128) + 8) + 40) objectForKeyedSubscript:@"query"];
  v24 = [v23 mutableCopy];

  objc_storeStrong((*(*(a1 + 136) + 8) + 40), v24);
  [*(a1 + 40) setIsFuzzySearch:1];
  v25 = *(*(a1 + 144) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = 0;

  v116 = v24;
  if (*(a1 + 273) == 1)
  {
    os_unfair_lock_lock(&unk_1000A84B8);
    v27 = qword_1000A8438;
    v117 = qword_1000A84A0;
    v28 = v27;
    os_unfair_lock_unlock(&unk_1000A84B8);
    v29 = qword_1000A8428;
    v30 = qword_1000A8430;
    v32 = *(a1 + 32);
    v31 = *(a1 + 40);
    v33 = *(*(*(a1 + 136) + 8) + 40);
    v34 = *(a1 + 48);
    v35 = [*(a1 + 56) keyboardLanguage];
    v36 = [v31 rankingConfigurationWithMeContact:v29 emailAddresses:v30 phoneFavorites:v28 vipList:v117 clientBundle:v32 spotlightQuery:v33 userQuery:v34 tokenString:0 queryKind:11 flags:0 keyboardLanguage:v35];
    v37 = *(*(a1 + 144) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;
  }

  else
  {
    v40 = *(a1 + 32);
    v39 = *(a1 + 40);
    v41 = *(*(*(a1 + 136) + 8) + 40);
    v42 = *(a1 + 48);
    v28 = [*(a1 + 56) keyboardLanguage];
    v43 = [v39 rankingConfigurationWithMeContact:0 emailAddresses:0 phoneFavorites:0 vipList:0 clientBundle:v40 spotlightQuery:v41 userQuery:v42 tokenString:0 queryKind:11 flags:0 keyboardLanguage:v28];
    v44 = *(*(a1 + 144) + 8);
    v35 = *(v44 + 40);
    *(v44 + 40) = v43;
  }

  v45 = [*(*(*(a1 + 144) + 8) + 40) rankingQueries];
  v46 = *(*(a1 + 152) + 8);
  v47 = *(v46 + 40);
  *(v46 + 40) = v45;

  [*(a1 + 56) setParseUserQuery:0];
  [*(a1 + 56) setRankingQueries:*(*(*(a1 + 152) + 8) + 40)];
  [*(a1 + 56) setStrongRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "strongRankingQueryCount")}];
  [*(a1 + 56) setDominantRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "dominantRankingQueryCount")}];
  [*(a1 + 56) setDominatedRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "dominatedRankingQueryCount")}];
  [*(a1 + 56) setShortcutBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "shortcutBit")}];
  [*(a1 + 56) setHighMatchBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "highMatchBit")}];
  [*(a1 + 56) setLowMatchBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "lowMatchBit")}];
  [*(a1 + 56) setHighRecencyBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "highRecencyBit")}];
  [*(a1 + 56) setLowRecencyBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "lowRecencyBit")}];
  v48 = [*(*(*(a1 + 144) + 8) + 40) requiredAttributes];
  v49 = [v48 array];
  v50 = *(*(a1 + 160) + 8);
  v51 = *(v50 + 40);
  *(v50 + 40) = v49;

  v52 = objc_opt_class();
  v53 = [*(a1 + 56) fetchAttributes];
  v54 = [v52 _makeUniqueFetchAttributesWithAttributes:v53 extraAttributes:*(*(*(a1 + 160) + 8) + 40)];
  [*(a1 + 56) setFetchAttributes:v54];

  v55 = [*(a1 + 56) fetchAttributes];
  v56 = *(*(a1 + 168) + 8);
  v57 = *(v56 + 40);
  *(v56 + 40) = v55;

  *(*(*(a1 + 176) + 8) + 24) = [*(*(*(a1 + 168) + 8) + 40) count];
  v58 = objc_opt_new();
  v59 = *(*(a1 + 112) + 8);
  v60 = *(v59 + 40);
  *(v59 + 40) = v58;

  v61 = [[NSMutableData alloc] initWithLength:(8 * *(*(*(a1 + 176) + 8) + 24) + 504) >> 6];
  v62 = *(*(a1 + 184) + 8);
  v63 = *(v62 + 40);
  *(v62 + 40) = v61;

  *(*(*(a1 + 192) + 8) + 24) = [*(*(*(a1 + 184) + 8) + 40) mutableBytes];
  v64 = *(*(*(a1 + 192) + 8) + 24);
  v65 = *(*(*(a1 + 176) + 8) + 24);
  *v64 = v65;
  bzero(v64 + 1, (8 * v65 + 504) >> 6);
  *(*(*(a1 + 200) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 208) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 216) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 224) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 232) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 240) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  if (*(*(*(a1 + 176) + 8) + 24))
  {
    v66 = 0;
    v67 = MDItemContentCreationDate;
    v68 = MDItemBundleID;
    v115 = MDMailConversationID;
    v114 = MDQueryResultScoreL1;
    do
    {
      v69 = [*(*(*(a1 + 144) + 8) + 40) requiredAttributes];
      v70 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v66];
      v71 = [v69 containsObject:v70];

      if (v71)
      {
        v72 = *(*(*(a1 + 192) + 8) + 24);
        if (*v72 > v66)
        {
          v72[(v66 >> 6) + 1] |= 1 << v66;
        }
      }

      v73 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v66];
      v74 = [v73 isEqualToString:v67];

      v75 = a1 + 200;
      if (v74 & 1) != 0 || ([*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v66], v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v76, "isEqualToString:", v68), v76, v75 = a1 + 208, (v77) || (objc_msgSend(*(*(*(a1 + 168) + 8) + 40), "objectAtIndexedSubscript:", v66), v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v78, "isEqualToString:", @"kMDQueryResultNewMatchedExtraQueriesField"), v78, v75 = a1 + 216, (v79) || (objc_msgSend(*(*(*(a1 + 168) + 8) + 40), "objectAtIndexedSubscript:", v66), v80 = objc_claimAutoreleasedReturnValue(), v81 = objc_msgSend(v80, "isEqualToString:", @"_kMDItemExternalID"), v80, v75 = a1 + 224, (v81) || (objc_msgSend(*(*(*(a1 + 168) + 8) + 40), "objectAtIndexedSubscript:", v66), v82 = objc_claimAutoreleasedReturnValue(), v83 = objc_msgSend(v82, "isEqualToString:", v115), v82, v75 = a1 + 232, (v83) || (objc_msgSend(*(*(*(a1 + 168) + 8) + 40), "objectAtIndexedSubscript:", v66), v84 = objc_claimAutoreleasedReturnValue(), v85 = objc_msgSend(v84, "isEqualToString:", v114), v84, v75 = a1 + 240, v85))
      {
        *(*(*v75 + 8) + 24) = v66;
      }

      ++v66;
    }

    while (v66 < *(*(*(a1 + 176) + 8) + 24));
  }

  v86 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 80) count]);
  v87 = *(*(a1 + 248) + 8);
  v88 = *(v87 + 40);
  *(v87 + 40) = v86;

  v89 = [NSOrderedSet orderedSetWithArray:*(*(*(a1 + 168) + 8) + 40)];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v90 = *(a1 + 80);
  v91 = [v90 countByEnumeratingWithState:&v141 objects:v145 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v142;
    do
    {
      for (i = 0; i != v92; i = i + 1)
      {
        if (*v142 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = [v89 indexOfObject:*(*(&v141 + 1) + 8 * i)];
        v96 = *(*(*(a1 + 248) + 8) + 40);
        v97 = [NSNumber numberWithInteger:v95];
        [v96 addObject:v97];
      }

      v92 = [v90 countByEnumeratingWithState:&v141 objects:v145 count:16];
    }

    while (v92);
  }

  v98 = +[SPCoreSpotlightIndexer sharedInstance];
  v99 = *(*(*(a1 + 136) + 8) + 40);
  v100 = *(a1 + 56);
  v118[0] = _NSConcreteStackBlock;
  v118[1] = 3221225472;
  v118[2] = sub_1000479BC;
  v118[3] = &unk_1000937D0;
  v101 = *(a1 + 104);
  v127 = *(a1 + 112);
  v102 = *(a1 + 88);
  v103 = *(a1 + 120);
  v124 = v102;
  v128 = v103;
  v104 = *(a1 + 48);
  v105 = *(a1 + 56);
  v138 = *(a1 + 264);
  v106 = *(a1 + 40);
  v129 = *(a1 + 128);
  *&v107 = v106;
  *(&v107 + 1) = *(a1 + 64);
  *&v108 = v104;
  *(&v108 + 1) = v105;
  v119 = v108;
  v120 = v107;
  v121 = *(a1 + 32);
  v139 = *(a1 + 272);
  v109 = *(a1 + 72);
  v140 = *(a1 + 273);
  v130 = *(a1 + 136);
  v131 = *(a1 + 152);
  v132 = *(a1 + 168);
  v133 = *(a1 + 184);
  v134 = *(a1 + 200);
  v135 = *(a1 + 216);
  v136 = *(a1 + 232);
  v110 = *(a1 + 248);
  v122 = v109;
  v137 = v110;
  v123 = *(a1 + 80);
  v125 = *(a1 + 104);
  v126 = *(a1 + 96);
  v111 = [v98 taskForTopHitQueryWithQueryString:v99 queryContext:v100 eventHandler:0 resultsHandler:v101 completionHandler:v118];

  v112 = +[SPCoreSpotlightIndexer sharedInstance];
  [v112 startQueryTask:v111];

LABEL_21:
}

void sub_1000479BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SPLogForSPLogCategoryQuery();
  v5 = v4;
  if (gSPLogDebugAsDefault)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v7 = [*(*(*(a1 + 112) + 8) + 40) count];
    *buf = 134218242;
    v136 = v7;
    v137 = 2112;
    v138 = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished topHit query, resultsCount:%lu, error:%@", buf, 0x16u);
  }

  if (v3)
  {
    (*(*(a1 + 88) + 16))();
  }

  else if (*(*(*(a1 + 120) + 8) + 24) || !*(a1 + 32) || ([*(a1 + 40) queryEmbedding], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v8 = os_transaction_create();
    v9 = objc_autoreleasePoolPush();
    v10 = SPLogForSPLogCategoryDefault();
    v11 = v10;
    if (gSPLogDebugAsDefault)
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v10, v12))
    {
      v13 = objc_retainBlock(*(a1 + 88));
      *buf = 138412290;
      v136 = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "Finished completing %@", buf, 0xCu);
    }

    (*(*(a1 + 104) + 16))();
    (*(*(a1 + 88) + 16))();
    [*(a1 + 48) deactivate];
    objc_autoreleasePoolPop(v9);
    v14 = objc_opt_self();
  }

  else
  {
    [*(a1 + 40) setMaxCount:*(a1 + 256)];
    [*(a1 + 40) setGrouped:*(a1 + 256) != 0];
    v16 = [[NSMutableArray alloc] initWithCapacity:5];
    v17 = *(a1 + 48);
    v133 = v16;
    v18 = [v17 requery:&v133];
    v19 = v133;

    if (v18)
    {
      [*(a1 + 48) resetWithSearchString:v18];
      v20 = *(a1 + 56);
      v21 = *(a1 + 64);
      v22 = *(a1 + 264);
      *(&v118 + 1) = [*(a1 + 40) disableNLP];
      LOBYTE(v118) = v22;
      v23 = [v20 _topHitQueryParametersForSearchString:v18 searchEntities:&__NSArray0__struct contextIdentifier:v21 queryKind:11 needsFuzzy:0 checkForMath:0 isCJK:v118 disableNLP:11 disableOCR:*(a1 + 64) previousQueryKind:*(a1 + 72) clientBundle:objc_msgSend(*(a1 + 40) keyboardLanguage:"queryID") queryID:?];
      v24 = *(*(a1 + 128) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v26 = [*(*(*(a1 + 128) + 8) + 40) objectForKeyedSubscript:@"query"];
      v27 = [v26 mutableCopy];

      if ([v19 count])
      {
        v28 = [v19 componentsJoinedByString:@" || "];
        v29 = [NSString stringWithFormat:@"(%@ || %@)", v27, v28];
        v30 = *(*(a1 + 136) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;
      }

      else
      {
        v39 = *(*(a1 + 136) + 8);
        v40 = v27;
        v28 = *(v39 + 40);
        *(v39 + 40) = v40;
      }

      v41 = *(*(a1 + 144) + 8);
      v42 = *(v41 + 40);
      *(v41 + 40) = 0;

      v122 = v19;
      v121 = v27;
      if (*(a1 + 265) == 1)
      {
        os_unfair_lock_lock(&unk_1000A84B8);
        v43 = qword_1000A8438;
        v123 = qword_1000A84A0;
        v44 = v43;
        os_unfair_lock_unlock(&unk_1000A84B8);
        v45 = qword_1000A8428;
        v46 = qword_1000A8430;
        v47 = *(a1 + 64);
        v48 = *(*(*(a1 + 136) + 8) + 40);
        v49 = *(a1 + 48);
        v50 = [*(a1 + 40) keyboardLanguage];
        v51 = [v49 rankingConfigurationWithMeContact:v45 emailAddresses:v46 phoneFavorites:v44 vipList:v123 clientBundle:v47 spotlightQuery:v48 userQuery:v18 tokenString:0 queryKind:11 flags:0 keyboardLanguage:v50];
        v52 = *(*(a1 + 144) + 8);
        v53 = *(v52 + 40);
        *(v52 + 40) = v51;
      }

      else
      {
        v54 = *(a1 + 64);
        v55 = *(*(*(a1 + 136) + 8) + 40);
        v56 = *(a1 + 48);
        v44 = [*(a1 + 40) keyboardLanguage];
        v57 = [v56 rankingConfigurationWithMeContact:0 emailAddresses:0 phoneFavorites:0 vipList:0 clientBundle:v54 spotlightQuery:v55 userQuery:v18 tokenString:0 queryKind:11 flags:0 keyboardLanguage:v44];
        v58 = *(*(a1 + 144) + 8);
        v50 = *(v58 + 40);
        *(v58 + 40) = v57;
      }

      v59 = [*(*(*(a1 + 144) + 8) + 40) rankingQueries];
      v60 = *(*(a1 + 152) + 8);
      v61 = *(v60 + 40);
      *(v60 + 40) = v59;

      [*(a1 + 40) setParseUserQuery:0];
      [*(a1 + 40) setRankingQueries:*(*(*(a1 + 152) + 8) + 40)];
      [*(a1 + 40) setStrongRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "strongRankingQueryCount")}];
      [*(a1 + 40) setDominantRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "dominantRankingQueryCount")}];
      [*(a1 + 40) setDominatedRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "dominatedRankingQueryCount")}];
      [*(a1 + 40) setShortcutBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "shortcutBit")}];
      [*(a1 + 40) setHighMatchBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "highMatchBit")}];
      [*(a1 + 40) setLowMatchBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "lowMatchBit")}];
      [*(a1 + 40) setHighRecencyBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "highRecencyBit")}];
      [*(a1 + 40) setLowRecencyBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "lowRecencyBit")}];
      v62 = [*(*(*(a1 + 144) + 8) + 40) requiredAttributes];
      v63 = [v62 array];
      v64 = *(*(a1 + 160) + 8);
      v65 = *(v64 + 40);
      *(v64 + 40) = v63;

      v66 = objc_opt_class();
      v67 = [*(a1 + 40) fetchAttributes];
      v68 = [v66 _makeUniqueFetchAttributesWithAttributes:v67 extraAttributes:*(*(*(a1 + 160) + 8) + 40)];
      [*(a1 + 40) setFetchAttributes:v68];

      v69 = [*(a1 + 40) fetchAttributes];
      v70 = *(*(a1 + 168) + 8);
      v71 = *(v70 + 40);
      *(v70 + 40) = v69;

      *(*(*(a1 + 176) + 8) + 24) = [*(*(*(a1 + 168) + 8) + 40) count];
      v72 = objc_opt_new();
      v73 = *(*(a1 + 112) + 8);
      v74 = *(v73 + 40);
      *(v73 + 40) = v72;

      v75 = [[NSMutableData alloc] initWithLength:(8 * *(*(*(a1 + 176) + 8) + 24) + 504) >> 6];
      v76 = *(*(a1 + 184) + 8);
      v77 = *(v76 + 40);
      *(v76 + 40) = v75;

      *(*(*(a1 + 192) + 8) + 24) = [*(*(*(a1 + 184) + 8) + 40) mutableBytes];
      v78 = *(*(*(a1 + 192) + 8) + 24);
      v79 = *(*(*(a1 + 176) + 8) + 24);
      *v78 = v79;
      bzero(v78 + 1, (8 * v79 + 504) >> 6);
      *(*(*(a1 + 200) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(a1 + 208) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(a1 + 216) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(a1 + 224) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(a1 + 232) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(a1 + 240) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      if (*(*(*(a1 + 176) + 8) + 24))
      {
        v80 = 0;
        v81 = MDItemContentCreationDate;
        v82 = MDItemBundleID;
        v120 = MDMailConversationID;
        v119 = MDQueryResultScoreL1;
        do
        {
          v83 = [*(*(*(a1 + 144) + 8) + 40) requiredAttributes];
          v84 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v80];
          v85 = [v83 containsObject:v84];

          if (v85)
          {
            v86 = *(*(*(a1 + 192) + 8) + 24);
            if (*v86 > v80)
            {
              v86[(v80 >> 6) + 1] |= 1 << v80;
            }
          }

          v87 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v80];
          v88 = [v87 isEqualToString:v81];

          v89 = a1 + 200;
          if (v88 & 1) != 0 || ([*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v80], v90 = objc_claimAutoreleasedReturnValue(), v91 = objc_msgSend(v90, "isEqualToString:", v82), v90, v89 = a1 + 208, (v91) || (objc_msgSend(*(*(*(a1 + 168) + 8) + 40), "objectAtIndexedSubscript:", v80), v92 = objc_claimAutoreleasedReturnValue(), v93 = objc_msgSend(v92, "isEqualToString:", @"kMDQueryResultNewMatchedExtraQueriesField"), v92, v89 = a1 + 216, (v93) || (objc_msgSend(*(*(*(a1 + 168) + 8) + 40), "objectAtIndexedSubscript:", v80), v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "isEqualToString:", @"_kMDItemExternalID"), v94, v89 = a1 + 224, (v95) || (objc_msgSend(*(*(*(a1 + 168) + 8) + 40), "objectAtIndexedSubscript:", v80), v96 = objc_claimAutoreleasedReturnValue(), v97 = objc_msgSend(v96, "isEqualToString:", v120), v96, v89 = a1 + 232, (v97) || (objc_msgSend(*(*(*(a1 + 168) + 8) + 40), "objectAtIndexedSubscript:", v80), v98 = objc_claimAutoreleasedReturnValue(), v99 = objc_msgSend(v98, "isEqualToString:", v119), v98, v89 = a1 + 240, v99))
          {
            *(*(*v89 + 8) + 24) = v80;
          }

          ++v80;
        }

        while (v80 < *(*(*(a1 + 176) + 8) + 24));
      }

      v100 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 80) count]);
      v101 = *(*(a1 + 248) + 8);
      v102 = *(v101 + 40);
      *(v101 + 40) = v100;

      v103 = [NSOrderedSet orderedSetWithArray:*(*(*(a1 + 168) + 8) + 40)];
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v104 = *(a1 + 80);
      v105 = [v104 countByEnumeratingWithState:&v129 objects:v134 count:16];
      if (v105)
      {
        v106 = v105;
        v107 = *v130;
        do
        {
          for (i = 0; i != v106; i = i + 1)
          {
            if (*v130 != v107)
            {
              objc_enumerationMutation(v104);
            }

            v109 = [v103 indexOfObject:*(*(&v129 + 1) + 8 * i)];
            v110 = *(*(*(a1 + 248) + 8) + 40);
            v111 = [NSNumber numberWithInteger:v109];
            [v110 addObject:v111];
          }

          v106 = [v104 countByEnumeratingWithState:&v129 objects:v134 count:16];
        }

        while (v106);
      }

      v112 = +[SPCoreSpotlightIndexer sharedInstance];
      v113 = *(*(*(a1 + 136) + 8) + 40);
      v114 = *(a1 + 40);
      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_100048710;
      v124[3] = &unk_1000937A8;
      v128 = *(a1 + 112);
      v115 = *(a1 + 96);
      v126 = *(a1 + 88);
      v127 = *(a1 + 104);
      v125 = *(a1 + 48);
      v116 = [v112 taskForTopHitQueryWithQueryString:v113 queryContext:v114 eventHandler:0 resultsHandler:v115 completionHandler:v124];

      v117 = +[SPCoreSpotlightIndexer sharedInstance];
      [v117 startQueryTask:v116];

      v19 = v122;
      v32 = v121;
    }

    else
    {
      v32 = os_transaction_create();
      v33 = objc_autoreleasePoolPush();
      v34 = SPLogForSPLogCategoryDefault();
      v35 = v34;
      if (gSPLogDebugAsDefault)
      {
        v36 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v36 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v34, v36))
      {
        v37 = objc_retainBlock(*(a1 + 88));
        *buf = 138412290;
        v136 = v37;
        _os_log_impl(&_mh_execute_header, v35, v36, "Finished completing %@", buf, 0xCu);
      }

      (*(*(a1 + 104) + 16))();
      (*(*(a1 + 88) + 16))();
      [*(a1 + 48) deactivate];
      objc_autoreleasePoolPop(v33);
      v38 = objc_opt_self();
    }
  }
}

void sub_100048710(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SPLogForSPLogCategoryQuery();
  v5 = v4;
  if (gSPLogDebugAsDefault)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v7 = [*(*(*(a1 + 56) + 8) + 40) count];
    v15 = 134218242;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished topHit query, resultsCount:%lu, error:%@", &v15, 0x16u);
  }

  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = os_transaction_create();
    v9 = objc_autoreleasePoolPush();
    v10 = SPLogForSPLogCategoryDefault();
    v11 = v10;
    if (gSPLogDebugAsDefault)
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v10, v12))
    {
      v13 = objc_retainBlock(*(a1 + 40));
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "Finished completing %@", &v15, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) deactivate];
    objc_autoreleasePoolPop(v9);
    v14 = objc_opt_self();
  }
}

uint64_t sub_100048A28(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  result = [*(a1 + 32) cancelled];
  if ((result & 1) == 0)
  {
    v5 = si_tracing_current_span();
    v6 = *(v5 + 16);
    v121 = *v5;
    v122 = v6;
    v123 = *(v5 + 32);
    v7 = *v5;
    spanid = si_tracing_calc_next_spanid();
    v9 = *(v5 + 8);
    *v5 = v7;
    *(v5 + 8) = spanid;
    *(v5 + 16) = v9;
    *(v5 + 28) = 102;
    *(v5 + 32) = "SPCoreSpotlightDatastore rank batch";
    si_tracing_log_span_begin();
    v97 = v5;
    context = objc_autoreleasePoolPush();
    v11 = *(v3 + 88);
    v12 = v11 * a2;
    v13 = v11 * a2 + v11;
    if (v13 >= *(v3 + 96))
    {
      v13 = *(v3 + 96);
    }

    v99 = v13;
    if (v12 < v13)
    {
      v98 = PRSRankingMailBundleString;
      v95 = v116;
      v96 = PRSRankingMessagesBundleString;
      *&v10 = 67109378;
      v93 = v10;
      v112 = v3;
      do
      {
        v101 = v12;
        v14 = [*(v3 + 40) objectAtIndexedSubscript:{v93, context, v95}];
        v15 = [v14 bundleIdentifier];
        obj = v14;
        IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
        v17 = objc_opt_new();
        if ([v15 isEqualToString:off_1000A7FB0[0]])
        {
          objc_storeStrong((*(*(v112 + 72) + 8) + 40), obj);
        }

        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v18 = [obj results];
        v19 = [v18 countByEnumeratingWithState:&v117 objects:v132 count:16];
        if (v19)
        {
          v20 = *v118;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v118 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v117 + 1) + 8 * i);
              v23 = [v22 rankingItem];

              if (v23)
              {
                v24 = [v22 rankingItem];
                [v24 setSectionBundleIdentifier:v15];

                v25 = [v22 rankingItem];
                [v17 addObject:v25];
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v117 objects:v132 count:16];
          }

          while (v19);
        }

        if ([*(v112 + 32) cancelled])
        {

          break;
        }

        Current = CFAbsoluteTimeGetCurrent();
        v27 = *(v112 + 48);
        v28 = [obj bundleIdentifier];
        [v27 prepareItems:v17 inBundle:v28];

        **(v112 + 104) = CFAbsoluteTimeGetCurrent() - Current + **(v112 + 104);
        if (IsSyndicatedPhotos)
        {
          v103 = objc_opt_new();
          v102 = objc_opt_new();
          v29 = [obj resultsCount];
          v30 = [obj resultSet];
          v110 = [*(v112 + 48) isNLSearch];
          if ([*(v112 + 48) queryTermCount])
          {
            v31 = v29 == 0;
          }

          else
          {
            v31 = 1;
          }

          v32 = !v31;
          v106 = v32;
          v113 = v29;
          if (!v31)
          {
            v33 = 0;
            while (1)
            {
              v34 = [v30 objectAtIndex:v33];
              v35 = [v34 rankingItem];
              v36 = v35;
              if (v35)
              {
                v37 = [v35 L2FeatureVector];
                [v37 scoreForFeature:1929];
                v39 = v38;

                if (v39 == 1.0)
                {
                  break;
                }
              }

              if (v113 == ++v33)
              {
                v106 = 0;
                goto LABEL_33;
              }
            }

            v29 = v113;
          }

          if (v29)
          {
LABEL_33:
            v40 = 0;
            v104 = 0;
            v105 = 0;
            v41 = 0;
            v100 = v30;
            do
            {
              v42 = [v30 objectAtIndex:v41];
              v43 = [v42 rankingItem];
              v44 = [v43 L2FeatureVector];
              [v44 scoreForFeature:2392];
              v46 = v45;

              if (v43)
              {
                v47 = [v43 L2FeatureVector];
                [v47 scoreForFeature:1929];
                v49 = v48;

                v50 = [v43 L2FeatureVector];
                [v50 scoreForFeature:2380];
                v52 = v51;

                if (v46 == 1.0)
                {
                  v53 = v110;
                }

                else
                {
                  v53 = 0;
                }

                if (!((v106 ^ 1) & 1 | (v49 == 1.0)) && (v53 & 1) == 0 || (v49 == 1.0 ? (v59 = 1) : (v59 = v106), (v59 & 1) == 0 && v52 != 1.0 && ([v43 photosExactMatch] & 1) == 0 && ((objc_msgSend(v43, "photosMatch") | v53) & 1) == 0))
                {
                  if ([*(v112 + 56) pommes])
                  {
                    v54 = SPLogForSPLogCategoryDefault();
                    v55 = gSPLogInfoAsDefault;
                    if (os_log_type_enabled(v54, ((gSPLogInfoAsDefault & 1) == 0)))
                    {
                      v56 = [v43 identifier];
                      v57 = [v43 photosExactMatch];
                      v58 = [v43 photosMatch];
                      *buf = 138413314;
                      *&buf[4] = v56;
                      *&buf[12] = 1024;
                      *&buf[14] = v57;
                      *&buf[18] = 1024;
                      *&buf[20] = v58;
                      *v129 = 2048;
                      *&v129[2] = v46;
                      v130 = 1024;
                      v131 = v110;
                      _os_log_impl(&_mh_execute_header, v54, ((v55 & 1) == 0), "#####=== [Pommes Ranking] photo filtering ignored id:%@ exact:%d match:%d nl:%.0f isNL:%d", buf, 0x28u);

                      v30 = v100;
                    }
                  }

                  else
                  {
                    [v103 addIndex:v41];
                    [v102 addIndex:v40];
                    v54 = SPLogForSPLogCategoryDefault();
                    ++v105;
                    v60 = gSPLogInfoAsDefault;
                    v104 = 1;
                    if (os_log_type_enabled(v54, ((gSPLogInfoAsDefault & 1) == 0)))
                    {
                      v61 = [v43 identifier];
                      v62 = [v43 photosExactMatch];
                      v63 = [v43 photosMatch];
                      *buf = 138413314;
                      *&buf[4] = v61;
                      *&buf[12] = 1024;
                      *&buf[14] = v62;
                      *&buf[18] = 1024;
                      *&buf[20] = v63;
                      *v129 = 2048;
                      *&v129[2] = v46;
                      v130 = 1024;
                      v131 = v110;
                      _os_log_impl(&_mh_execute_header, v54, ((v60 & 1) == 0), "#####=== photo filtered id:%@ exact:%d match:%d nl:%.0f isNL:%d", buf, 0x28u);

                      v30 = v100;
                      v104 = 1;
                    }
                  }
                }

                ++v40;
              }

              ++v41;
            }

            while (v113 != v41);
            if (v104)
            {
              [v17 removeObjectsAtIndexes:v102];
              [v30 removeObjectsAtIndexes:v103];
              *(*(*(v112 + 80) + 8) + 24) -= v105;
            }
          }
        }

        v64 = [obj resultsCount];
        if ([*(v112 + 32) isPeopleSearch])
        {
          if ([v15 isEqualToString:v98])
          {
            if (v64 >= 0xC9)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v65 = [v15 isEqualToString:v96];
            if (v64 > 0xC8)
            {
              v66 = v65;
            }

            else
            {
              v66 = 0;
            }

            if (v66)
            {
LABEL_67:
              v114 = objc_opt_new();
              v111 = objc_opt_new();
              v67 = [obj resultSet];
              v68 = [[NSMutableArray alloc] initWithCapacity:v64];
              v69 = 0;
              do
              {
                v70 = [v67 objectAtIndex:v69];
                v71 = [v70 rankingItem];
                if (v71)
                {
                  [v68 addObject:v71];
                }

                ++v69;
              }

              while (v64 != v69);
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              [*(v112 + 56) currentTime];
              *v129 = v72;
              v115[0] = _NSConcreteStackBlock;
              v115[1] = 3221225472;
              v116[0] = sub_1000496B0;
              v116[1] = &unk_100093820;
              v116[2] = buf;
              [v68 sortWithOptions:16 usingComparator:v115];
              v73 = [v68 count];
              if (v73 >= 0xC9)
              {
                for (j = 200; j != v73; ++j)
                {
                  v75 = [v68 objectAtIndexedSubscript:j];
                  v76 = [v75 L2FeatureVector];
                  LODWORD(v77) = -915135504;
                  [v76 setOriginalL2Score:v77];
                }
              }

              v78 = 0;
              v109 = 0;
              v79 = 0;
LABEL_75:
              v107 = v79;
              do
              {
                v80 = [v67 objectAtIndex:v78];
                v81 = [v80 rankingItem];
                v82 = v81;
                if (v81)
                {
                  v83 = [v81 L2FeatureVector];
                  [v83 originalL2Score];
                  v85 = v84 == -1000000.0;

                  if (v85)
                  {
                    v86 = [v17 indexOfObject:v82];
                    if (v86 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      [v114 addIndex:v78];
                      [v111 addIndex:v86];

                      ++v109;
                      v79 = 1;
                      v31 = v64 - 1 == v78++;
                      if (!v31)
                      {
                        goto LABEL_75;
                      }

                      goto LABEL_88;
                    }

                    v87 = SPLogForSPLogCategoryDefault();
                    v88 = gSPLogInfoAsDefault;
                    if (os_log_type_enabled(v87, ((gSPLogInfoAsDefault & 1) == 0)))
                    {
                      *v124 = 0;
                      _os_log_impl(&_mh_execute_header, v87, ((v88 & 1) == 0), "Item to remove not found in array of ranking items", v124, 2u);
                    }
                  }
                }

                ++v78;
              }

              while (v64 != v78);
              if ((v107 & 1) == 0)
              {
                goto LABEL_91;
              }

LABEL_88:
              v89 = SPLogForSPLogCategoryDefault();
              v90 = gSPLogInfoAsDefault;
              if (os_log_type_enabled(v89, ((gSPLogInfoAsDefault & 1) == 0)))
              {
                *v124 = v93;
                v125 = v109;
                v126 = 2112;
                v127 = v15;
                _os_log_impl(&_mh_execute_header, v89, ((v90 & 1) == 0), "Removing %d items from %@", v124, 0x12u);
              }

              [v17 removeObjectsAtIndexes:v111];
              [v67 removeObjectsAtIndexes:v114];
              *(*(*(v112 + 80) + 8) + 24) -= v109;
LABEL_91:
              _Block_object_dispose(buf, 8);
            }
          }
        }

        if ([v17 count])
        {
          v91 = [v17 copy];
          [*(v112 + 64) setObject:v91 atIndexedSubscript:v101];
        }

        [v17 removeAllObjects];

        v12 = v101 + 1;
        v3 = v112;
      }

      while (v101 + 1 != v99);
    }

    objc_autoreleasePoolPop(context);
    result = si_tracing_log_span_end();
    v92 = v122;
    *v97 = v121;
    *(v97 + 16) = v92;
    *(v97 + 32) = v123;
  }

  return result;
}

void sub_1000495CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(va, 8);
  sub_1000066D4(&a45);
  _Unwind_Resume(a1);
}

uint64_t sub_1000496B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 interestingDate];
  v7 = [v5 interestingDate];

  [v6 timeIntervalSinceReferenceDate];
  v9 = v8 - *(*(*(a1 + 32) + 8) + 24);
  [v7 timeIntervalSinceReferenceDate];
  v11 = v10 - *(*(*(a1 + 32) + 8) + 24);
  if (v9 <= v11)
  {
    v12 = v9 < v11;
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

uint64_t sub_10004976C(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) cancelled];
  if ((result & 1) == 0)
  {
    v4 = si_tracing_current_span();
    v5 = *(v4 + 16);
    v82 = *v4;
    v83 = v5;
    v84 = *(v4 + 32);
    v6 = *v4;
    spanid = si_tracing_calc_next_spanid();
    v8 = *(v4 + 8);
    *v4 = v6;
    *(v4 + 8) = spanid;
    *(v4 + 16) = v8;
    *(v4 + 28) = 102;
    *(v4 + 32) = "SPCoreSpotlightDatastore handle attachments";
    si_tracing_log_span_begin();
    v54 = v4;
    context = objc_autoreleasePoolPush();
    v9 = *(a1 + 56);
    v10 = v9 * a2;
    v11 = v9 * a2 + v9;
    if (v11 >= *(a1 + 64))
    {
      v11 = *(a1 + 64);
    }

    v56 = v11;
    if (v10 < v11)
    {
      v55 = SSMailBundleIdentifier;
      while (1)
      {
        v57 = v10;
        v59 = [*(a1 + 40) objectAtIndexedSubscript:?];
        v12 = [v59 bundleIdentifier];
        v13 = [v12 isEqualToString:v55];

        if (v13)
        {
          break;
        }

LABEL_48:

        v10 = v57 + 1;
        if (v57 + 1 == v56)
        {
          goto LABEL_49;
        }
      }

      v14 = [v59 results];
      v15 = [v14 copy];

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      obj = v15;
      v16 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
      if (v16)
      {
        v65 = 0;
        v62 = 0;
        v17 = *v79;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v79 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v78 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v19 clientData])
            {
              v20 = sub_10004BAE0([v19 clientData] + 64, 0xFuLL);
              if (v20)
              {
                if (!v62)
                {
                  v62 = +[NSMutableDictionary dictionary];
                  v21 = +[NSMutableDictionary dictionary];

                  v65 = v21;
                }

                v22 = [v19 dataclass];
                v23 = [v62 objectForKeyedSubscript:v22];

                if (!v23)
                {
                  v23 = +[NSMutableArray array];
                  v24 = [v19 dataclass];
                  [v62 setObject:v23 forKeyedSubscript:v24];
                }

                v25 = [v65 objectForKeyedSubscript:v20];
                if (!v25 || (v26 = [v19 score], v28 = v27, v29 = objc_msgSend(v25, "score"), __PAIR128__(v30, v29) < __PAIR128__(v28, v26)))
                {
                  [v65 setObject:v19 forKeyedSubscript:v20];
                  if (v25)
                  {
                    v31 = SPLogForSPLogCategoryDefault();
                    v32 = gSPLogInfoAsDefault;
                    if (os_log_type_enabled(v31, ((gSPLogInfoAsDefault & 1) == 0)))
                    {
                      LOWORD(buf[0]) = 0;
                      _os_log_impl(&_mh_execute_header, v31, ((v32 & 1) == 0), "===^^ RANKING 4 Mail higher ranked replaced", buf, 2u);
                    }
                  }

                  else
                  {
                    [v23 addObject:v20];
                  }
                }
              }
            }
          }

          v16 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
        }

        while (v16);

        if (!v62)
        {
          v51 = 0;
          goto LABEL_47;
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v33 = v62;
        v34 = [v33 countByEnumeratingWithState:&v74 objects:v85 count:16];
        if (v34)
        {
          v58 = *v75;
          v63 = v33;
          do
          {
            v60 = v34;
            for (j = 0; j != v60; j = j + 1)
            {
              if (*v75 != v58)
              {
                objc_enumerationMutation(v63);
              }

              v36 = *(*(&v74 + 1) + 8 * j);
              v37 = [v63 objectForKeyedSubscript:v36];
              v38 = rankingAttributeNameArray();
              v39 = dispatch_group_create();
              dispatch_group_enter(v39);
              objc_initWeak(buf, *(a1 + 48));
              v40 = +[NSMutableArray array];
              v41 = +[NSMutableArray array];
              v42 = +[SPCoreSpotlightIndexer sharedInstance];
              v43 = [v59 bundleIdentifier];
              v66[0] = _NSConcreteStackBlock;
              v66[1] = 3221225472;
              v66[2] = sub_100049EF0;
              v66[3] = &unk_100093870;
              objc_copyWeak(&v72, buf);
              v67 = *(a1 + 32);
              v68 = v65;
              v44 = v40;
              v69 = v44;
              v45 = v41;
              v70 = v45;
              v46 = v39;
              v71 = v46;
              [v42 fetchAttributesForProtectionClass:v36 attributes:v38 bundleID:v43 identifiers:v37 completion:v66];

              v47 = dispatch_time(0, 300000000);
              if (!dispatch_group_wait(v46, v47))
              {
                for (k = 0; [v44 count] > k; ++k)
                {
                  v49 = [v44 objectAtIndexedSubscript:k];
                  v50 = [v45 objectAtIndexedSubscript:k];
                  [v49 attachShadowArray:v50];
                }
              }

              objc_destroyWeak(&v72);
              objc_destroyWeak(buf);
            }

            v33 = v63;
            v34 = [v63 countByEnumeratingWithState:&v74 objects:v85 count:16];
          }

          while (v34);
        }

        v51 = v33;
      }

      else
      {
        v51 = 0;
        v65 = 0;
        v33 = obj;
      }

LABEL_47:
      goto LABEL_48;
    }

LABEL_49:
    objc_autoreleasePoolPop(context);
    result = si_tracing_log_span_end();
    v52 = v83;
    *v54 = v82;
    *(v54 + 16) = v52;
    *(v54 + 32) = v84;
  }

  return result;
}

void sub_100049E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_100049EF0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
LABEL_15:
    dispatch_group_leave(*(a1 + 64));
    goto LABEL_16;
  }

  if (([*(a1 + 32) cancelled] & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [*(a1 + 40) objectForKeyedSubscript:{v10, v13}];
          if (v11)
          {
            v12 = [v5 objectForKeyedSubscript:v10];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [*(a1 + 48) addObject:v11];
              [*(a1 + 56) addObject:v12];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    goto LABEL_15;
  }

LABEL_16:
}

uint64_t sub_10004A084(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) cancelled];
  if ((result & 1) == 0)
  {
    v4 = si_tracing_current_span();
    v5 = *(v4 + 16);
    v116 = *v4;
    v117 = v5;
    v118 = *(v4 + 32);
    v6 = *v4;
    spanid = si_tracing_calc_next_spanid();
    v8 = *(v4 + 8);
    *v4 = v6;
    *(v4 + 8) = spanid;
    *(v4 + 16) = v8;
    *(v4 + 28) = 102;
    *(v4 + 32) = "SPCoreSpotlightDatastore build results";
    si_tracing_log_span_begin();
    v92 = v4;
    context = objc_autoreleasePoolPush();
    v9 = *(a1 + 144);
    v10 = v9 * a2;
    v11 = v9 * a2 + v9;
    if (v11 >= *(a1 + 152))
    {
      v11 = *(a1 + 152);
    }

    v98 = v11;
    if (v10 >= v11)
    {
      goto LABEL_104;
    }

    v106 = SSSectionIdentifierSyndicatedLinks;
    v100 = SSSectionIdentifierSyndicatedPhotos;
    v93 = SSSectionIdentifierSyndicatedPhotosMessages;
    v86 = SSSectionIdentifierSyndicatedPhotosNotes;
    v81 = SSSectionIdentifierSyndicatedPhotosFiles;
    v79 = SSSectionIdentifierSyndicatedPhotosFromPhotos;
    v103 = SSSectionIdentifierUnsupportedSyndicatedContent;
    v97 = SSPeopleBundleIdentifier;
    v95 = SSSectionIdentifierPeopleSuggestions;
    v91 = PRSRankingAppsBundleString;
    v83 = SSContactsBundleIdentifier;
    v82 = PRSRankingFindMyBundleString;
    v80 = PRSRankingPeopleFindMyBundleString;
    v96 = SSMessagesBundleIdentifier;
    v94 = PRSRankingNotesBundleString;
    v90 = PRSRankingLocalFilesBundleString;
    v89 = PRSRankingFilesBundleString;
    v88 = PRSRankingFileProviderFilesBundleString;
    v99 = SSPhotosBundleIdentifier;
    while (1)
    {
      v101 = v10;
      v102 = [*(a1 + 40) objectAtIndexedSubscript:?];
      v104 = [v102 bundleIdentifier];
      if ([v104 isEqualToString:v106] & 1) != 0 || (objc_msgSend(v104, "isEqualToString:", v100) & 1) != 0 || (objc_msgSend(v104, "isEqualToString:", v93) & 1) != 0 || (objc_msgSend(v104, "isEqualToString:", v86) & 1) != 0 || (objc_msgSend(v104, "isEqualToString:", v81) & 1) != 0 || (objc_msgSend(v104, "isEqualToString:", v79))
      {
        goto LABEL_103;
      }

      v12 = [v102 results];
      v13 = [v12 copy];

      v84 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
      v87 = objc_opt_new();
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      obj = v13;
      v14 = [obj countByEnumeratingWithState:&v112 objects:v122 count:16];
      if (!v14)
      {
        goto LABEL_99;
      }

      v107 = *v113;
      do
      {
        v108 = v14;
        for (i = 0; i != v108; i = i + 1)
        {
          if (*v113 != v107)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v112 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v18 = *(a1 + 160);
            v19 = *(a1 + 48);
            v20 = *(a1 + 168);
            v21 = [*(a1 + 32) queryContext];
            v22 = [v16 resultWithTime:v19 searchString:v20 isCorrectedQuery:v21 withQueryContext:v18];

            v23 = [v16 rankingItem];
            v24 = [v23 L2FeatureVector];
            if (v24)
            {
              v25 = v16 == 0;
            }

            else
            {
              v25 = 1;
            }

            v26 = !v25;

            if (v26)
            {
              v120[0] = @"score";
              [v23 score];
              v27 = [NSNumber numberWithFloat:?];
              v121[0] = v27;
              v120[1] = @"raw score";
              [v23 rawScore];
              v28 = [NSNumber numberWithFloat:?];
              v121[1] = v28;
              v120[2] = @"original score";
              v29 = [v23 L2FeatureVector];
              [v29 originalL2Score];
              v30 = [NSNumber numberWithFloat:?];
              v121[2] = v30;
              v31 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:3];
              [v22 setLocalFeatures:v31];
            }

            v32 = [v16 rankingItem];
            [v32 score];
            [v22 setL2score:?];

            if (!v22)
            {
              goto LABEL_44;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = 0;
              v22 = 0;
              goto LABEL_45;
            }

            v22 = v16;
            v23 = [v22 rankingItem];
            if (!v22)
            {
              goto LABEL_45;
            }
          }

          if (*(a1 + 169) == 1 && ([v22 protectionClass], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isEqualToString:", @"Priority"), v33, v34))
          {
            [v22 setCoreSpotlightIndexUsed:2];
            if ([*(a1 + 56) priorityIndexFinishedInTime])
            {
              v35 = 2;
            }

            else
            {
              v35 = 1;
            }

            [v22 setCoreSpotlightIndexUsedReason:v35];
          }

          else
          {
            [v22 setCoreSpotlightIndexUsed:1];
          }

          [v22 setIsFuzzyMatch:{objc_msgSend(*(a1 + 32), "needsReRunForFuzzy")}];
          v36 = [v22 sectionBundleIdentifier];
          v37 = [v22 resultBundleId];
          if ([v36 isEqual:v106])
          {
            v38 = *(a1 + 64);
            objc_sync_enter(v38);
            [*(a1 + 64) addResults:v22];
            goto LABEL_39;
          }

          if ([v36 isEqual:v103])
          {
            goto LABEL_43;
          }

          if ([v36 isEqual:v100])
          {
            if ([v37 isEqual:v96])
            {
              v39 = [v23 sectionBundleIdentifier];
              v40 = [v39 isEqualToString:v99];

              if (v40)
              {
                v41 = *(a1 + 72);
                objc_sync_enter(v41);
                [*(a1 + 72) addResults:v22];
                goto LABEL_78;
              }
            }

            else
            {
              if ([v37 isEqual:v94])
              {
                v46 = [v23 sectionBundleIdentifier];
                v47 = [v46 isEqualToString:v99];

                if (!v47)
                {
                  goto LABEL_79;
                }

                v41 = *(a1 + 80);
                objc_sync_enter(v41);
                [*(a1 + 80) addResults:v22];
              }

              else
              {
                v119[0] = v90;
                v119[1] = v89;
                v119[2] = v88;
                v53 = [NSArray arrayWithObjects:v119 count:3];
                v54 = [v53 containsObject:v37];

                if (v54)
                {
                  v55 = [v23 sectionBundleIdentifier];
                  v56 = [v55 isEqualToString:v99];

                  if (!v56)
                  {
                    goto LABEL_79;
                  }

                  v41 = *(a1 + 88);
                  objc_sync_enter(v41);
                  [*(a1 + 88) addResults:v22];
                }

                else
                {
                  v41 = *(a1 + 96);
                  objc_sync_enter(v41);
                  [*(a1 + 96) addResults:v22];
                }
              }

LABEL_78:
              objc_sync_exit(v41);
            }

LABEL_79:
            v61 = [v23 sectionBundleIdentifier];
            v62 = [v61 isEqualToString:v99];

            if (v62)
            {
              v38 = *(a1 + 104);
              objc_sync_enter(v38);
              [*(a1 + 104) addResults:v22];
LABEL_39:
              objc_sync_exit(v38);
LABEL_40:
            }

LABEL_43:

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_45;
            }

LABEL_44:
            [v16 clearClientData];
            goto LABEL_45;
          }

          if (([v36 isEqual:v97] & 1) != 0 || objc_msgSend(v36, "isEqual:", v95))
          {
            v42 = [v22 personIdentifier];
            if (!v42)
            {
              goto LABEL_43;
            }

            v43 = [v22 personIdentifier];
            v44 = [v43 hasPrefix:@"com.apple.spotlight"];

            if (!v44)
            {
              goto LABEL_43;
            }

            v45 = [v22 personType];
            if (([v45 isEqual:@"ml"] & 1) == 0 && objc_msgSend(v22, "hasTextContentMatch"))
            {

LABEL_76:
              v60 = *(*(*(a1 + 112) + 8) + 40);
              v38 = [v22 personIdentifier];
              [v60 setObject:v22 forKey:v38];
              goto LABEL_40;
            }

            v58 = [*(a1 + 32) queryContext];
            v59 = [v58 isSearchToolClient];

            if (v59)
            {
              goto LABEL_76;
            }

LABEL_89:
            v67 = v36;
            if (v67)
            {
              v38 = v67;
            }

            else
            {
              v38 = @"empty_bundle";
            }

            v68 = [v87 objectForKeyedSubscript:v38];
            v69 = v68;
            if (v68)
            {
              v70 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v68 unsignedIntValue] + 1);
              [v87 setObject:v70 forKeyedSubscript:v38];
            }

            else
            {
              [v87 setObject:&off_100098AE0 forKeyedSubscript:v38];
            }

            goto LABEL_40;
          }

          if (([v36 isEqual:v91] & 1) == 0 && objc_msgSend(v37, "isEqual:", v83))
          {
            if (([v22 hasTextContentMatch] & 1) == 0)
            {
              v48 = [*(a1 + 32) queryContext];
              v49 = [v48 isSearchToolClient];

              if (!v49)
              {
                goto LABEL_89;
              }
            }

            v50 = [v22 contactIdentifier];

            if (v50)
            {
              v51 = *(*(*(a1 + 120) + 8) + 40);
              v52 = [v22 contactIdentifier];
              [v51 setObject:v22 forKey:v52];
            }

LABEL_88:
            [v84 addObject:v22];
            goto LABEL_43;
          }

          v57 = [v22 userActivityRequiredString];
          if (![v57 length])
          {

LABEL_82:
            if (([v36 hasPrefix:@"com.apple"] & 1) == 0)
            {
              if ([SSLocalCEP isLowEngagementBundle:v36])
              {
                if (([SSLocalCEP isAllowlistedBundle:v36]& 1) == 0)
                {
                  v63 = [v22 rankingItem];
                  if (!v63 || ([v22 rankingItem], v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "mostRecentTimeToQueryInMinutesWithCurrentTime:topicality:", CFAbsoluteTimeGetCurrent(), 0.0), v66 = v65 >= 129600.0, v64, v63, v66))
                  {
                    if (![v22 hasTextContentMatch])
                    {
                      goto LABEL_89;
                    }
                  }
                }
              }
            }

            goto LABEL_88;
          }

          if ([v104 isEqual:v82] & 1) != 0 || (objc_msgSend(v104, "isEqual:", v80))
          {
          }

          else
          {
            IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

            if ((IsSyndicatedPhotos & 1) == 0)
            {
              goto LABEL_82;
            }
          }

LABEL_45:
        }

        v14 = [obj countByEnumeratingWithState:&v112 objects:v122 count:16];
      }

      while (v14);
LABEL_99:

      [v102 setResults:v84];
      v110[0] = _NSConcreteStackBlock;
      v110[1] = 3221225472;
      v110[2] = sub_10004AE38;
      v110[3] = &unk_100093898;
      v111 = *(a1 + 32);
      [v87 enumerateKeysAndObjectsUsingBlock:v110];
      if ([*(a1 + 32) cancelled])
      {

        goto LABEL_104;
      }

      v72 = [v102 bundleIdentifier];
      v73 = [v72 isEqualToString:off_1000A7FB0[0]];

      if (v73)
      {
        v74 = [*(a1 + 56) job];
        v75 = [v74 _docIDsToResultsDictionaryForSection:*(*(*(a1 + 136) + 8) + 40)];
        v76 = *(*(a1 + 128) + 8);
        v77 = *(v76 + 40);
        *(v76 + 40) = v75;
      }

LABEL_103:
      v10 = v101 + 1;
      if (v101 + 1 == v98)
      {
LABEL_104:
        objc_autoreleasePoolPop(context);
        result = si_tracing_log_span_end();
        v78 = v117;
        *v92 = v116;
        *(v92 + 16) = v78;
        *(v92 + 32) = v118;
        return result;
      }
    }
  }

  return result;
}

void sub_10004ADB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_10004AE38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SPLogForSPLogCategoryRanking();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) queryIdent];
    v9 = 134218498;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 1024;
    v14 = [v6 unsignedIntValue];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] Filtering qid=%llu section=%@: removed items count=%u", &v9, 0x1Cu);
  }
}

int64_t sub_10004AF2C(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 rankingScore];
  v6 = v5;
  [v4 rankingScore];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_10004AF84(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 rankingScore];
  v6 = v5;
  [v4 rankingScore];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

__n128 sub_10004AFDC(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 48) cancelled] & 1) == 0)
  {
    v5 = si_tracing_current_span();
    v17 = *v5;
    v18 = *(v5 + 16);
    v19 = *(v5 + 32);
    v6 = *v5;
    spanid = si_tracing_calc_next_spanid();
    v8 = *(v5 + 8);
    *v5 = v6;
    *(v5 + 8) = spanid;
    *(v5 + 16) = v8;
    *(v5 + 28) = 102;
    *(v5 + 32) = "SPCoreSpotlightDatastore process section";
    si_tracing_log_span_begin();
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 80);
    v11 = v10 * a2;
    v12 = v11 + v10;
    if (v12 >= *(a1 + 88))
    {
      v13 = *(a1 + 88);
    }

    else
    {
      v13 = v12;
    }

    if (v11 < v13)
    {
      do
      {
        if ([*(a1 + 48) cancelled])
        {
          break;
        }

        v14 = [*(a1 + 56) objectAtIndexedSubscript:v11];
        v15 = [v14 results];
        v16 = [v15 count];

        if (v16)
        {
          [*(a1 + 64) processSection:v14 forQuery:*(a1 + 48) rawQuery:*(a1 + 72) usingTopHitThreshold:{*(a1 + 32), *(a1 + 40)}];
        }

        ++v11;
      }

      while (v13 != v11);
    }

    objc_autoreleasePoolPop(v9);
    si_tracing_log_span_end();
    result = v17;
    *v5 = v17;
    *(v5 + 16) = v18;
    *(v5 + 32) = v19;
  }

  return result;
}

__n128 sub_10004B160(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 32) cancelled] & 1) == 0)
  {
    v5 = si_tracing_current_span();
    v16 = *v5;
    v17 = *(v5 + 16);
    v18 = *(v5 + 32);
    v6 = *v5;
    spanid = si_tracing_calc_next_spanid();
    v8 = *(v5 + 8);
    *v5 = v6;
    *(v5 + 8) = spanid;
    *(v5 + 16) = v8;
    *(v5 + 28) = 102;
    *(v5 + 32) = "SPCoreSpotlightDatastore filter iCloud dupes";
    si_tracing_log_span_begin();
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 72);
    v11 = v10 * a2;
    v12 = v11 + v10;
    if (v12 >= *(a1 + 80))
    {
      v13 = *(a1 + 80);
    }

    else
    {
      v13 = v12;
    }

    if (v11 < v13)
    {
      do
      {
        if ([*(a1 + 32) cancelled])
        {
          break;
        }

        v14 = [*(a1 + 40) objectAtIndexedSubscript:v11];
        v15 = [*(a1 + 48) job];
        [v15 _filterDuplicateiCloudDriveResultsForSection:v14 iCloudDriveSection:*(*(*(a1 + 56) + 8) + 40) iCloudDriveResultsDictionary:*(*(*(a1 + 64) + 8) + 40)];

        ++v11;
      }

      while (v13 != v11);
    }

    objc_autoreleasePoolPop(v9);
    si_tracing_log_span_end();
    result = v16;
    *v5 = v16;
    *(v5 + 16) = v17;
    *(v5 + 32) = v18;
  }

  return result;
}

void sub_10004B2FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id sub_10004B314(uint64_t a1)
{
  if (qword_1000A8560 != -1)
  {
    sub_100063558();
  }

  v2 = qword_1000A8558;

  return v2;
}

void sub_10004B358(id a1)
{
  qword_1000A8558 = rankingPrefetchedAttributesArray();

  _objc_release_x1();
}

BOOL sub_10004B610(void *a1)
{
  v1 = a1;
  v2 = [v1 fileProviderIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v1 fileProviderIdentifier];
    if ([v4 length])
    {
      v5 = [v1 userActivityRequiredString];
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

unsigned int *sub_10004B760(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x90uLL, 0x10E004034F55327uLL);
  atomic_store(1u, v4);
  *(v4 + 7) = a1;
  v5 = vcnt_s8(*a2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = *(*(a2[7] + 8 * v5.u32[0]) + 40);
  *(v4 + 2) = *(*(a2[7] + 8 * v5.u32[0]) + 32);
  *(v4 + 3) = v6;
  v7 = sub_10004BAE0(a2, 0xAuLL);
  if (([v7 isEqualToString:@"com.apple.mobilemail"] & 1) == 0)
  {
    v12 = &dword_100072B10;
    v11 = 7;
    while (1)
    {
      v13 = *v12++;
      v14 = sub_10004B890(a2, v13);
      if (v14)
      {
        v10 = *(v14 + 32);
        if (v10 != 0.0)
        {
          goto LABEL_5;
        }
      }

      if (!--v11)
      {
        goto LABEL_10;
      }
    }
  }

  if ((*a2 & 0x100000000) != 0)
  {
    v8 = vcnt_s8(*a2);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = *(a2[7] + 8 * v8.u32[0]);
    if (v9)
    {
      v10 = *(v9 + 32);
      LODWORD(v11) = 1;
LABEL_5:
      v4[12] = v11;
      *(v4 + 5) = v10;
    }
  }

LABEL_10:
  v15 = sub_10004BC14(a2, 0x91uLL).n64_f64[0];
  *(v4 + 13) = v15;

  return v4;
}

uint64_t sub_10004B890(uint64_t a1, unint64_t a2)
{
  if (a2 > 383)
  {
    return 0;
  }

  v3 = 1 << a2;
  if (a2 > 63)
  {
    if (a2 > 0x7F)
    {
      if (a2 > 0xBF)
      {
        if (a2 > 0xFF)
        {
          if (a2 > 0x13F)
          {
            v28 = *(a1 + 40);
            if ((v28 & v3) == 0)
            {
              return 0;
            }

            v27 = vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(a1 + 8))))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(a1 + 24)))))) + vaddlv_u8(vcnt_s8(*a1)) + vaddlv_u8(vcnt_s8((v28 & (v3 - 1))));
          }

          else
          {
            v26 = *(a1 + 32);
            if ((v26 & v3) == 0)
            {
              return 0;
            }

            v27 = vaddlv_u8(vcnt_s8(*a1)) + vaddlv_u8(vcnt_s8((v26 & (v3 - 1)))) + vaddlv_u8(vcnt_s8(*(a1 + 8))) + vaddlv_u8(vcnt_s8(*(a1 + 16))) + vaddlv_u8(vcnt_s8(*(a1 + 24)));
          }

          v25 = *(a1 + 56) + 8 * v27;
          return *v25;
        }

        v17 = *(a1 + 24);
        if ((v17 & v3) != 0)
        {
          v18 = vcnt_s8(*a1);
          v18.i16[0] = vaddlv_u8(v18);
          v19 = v18.i32[0];
          v20 = vcnt_s8(*(a1 + 8));
          v20.i16[0] = vaddlv_u8(v20);
          v21 = v20.i32[0];
          v22 = vcnt_s8(*(a1 + 16));
          v22.i16[0] = vaddlv_u8(v22);
          v23 = v22.i32[0];
          v24 = vcnt_s8((v17 & (v3 - 1)));
          v24.i16[0] = vaddlv_u8(v24);
          v5 = v24.i32[0];
          v6 = *(a1 + 56) + 8 * v19 + 8 * v21 + 8 * v23;
          goto LABEL_15;
        }
      }

      else
      {
        v11 = *(a1 + 16);
        if ((v11 & v3) != 0)
        {
          v12 = vcnt_s8(*a1);
          v12.i16[0] = vaddlv_u8(v12);
          v13 = v12.i32[0];
          v14 = vcnt_s8(*(a1 + 8));
          v14.i16[0] = vaddlv_u8(v14);
          v15 = v14.i32[0];
          v16 = vcnt_s8((v11 & (v3 - 1)));
          v16.i16[0] = vaddlv_u8(v16);
          v5 = v16.i32[0];
          v6 = *(a1 + 56) + 8 * v13 + 8 * v15;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v7 = *(a1 + 8);
      if ((v7 & v3) != 0)
      {
        v8 = vcnt_s8(*a1);
        v8.i16[0] = vaddlv_u8(v8);
        v9 = v8.i32[0];
        v10 = vcnt_s8((v7 & (v3 - 1)));
        v10.i16[0] = vaddlv_u8(v10);
        v5 = v10.i32[0];
        v6 = *(a1 + 56) + 8 * v9;
        goto LABEL_15;
      }
    }

    return 0;
  }

  if ((*a1 & v3) == 0)
  {
    return 0;
  }

  v4 = vcnt_s8((*a1 & (v3 - 1)));
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.i32[0];
  v6 = *(a1 + 56);
LABEL_15:
  v25 = v6 + 8 * v5;
  return *v25;
}

_DWORD *sub_10004BAE0(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64))
  {
    v4 = sub_10004C07C(a1, a2);
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;
    v6 = v5;
    if (v6)
    {
      v7 = v6;
      goto LABEL_22;
    }
  }

  v8 = sub_10004B890(a1, a2);
  if (v8)
  {
    v9 = v8;
    v10 = v8[6];
    if (v10 == 18)
    {
      if (v8[5])
      {
        goto LABEL_16;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      if (v10 != 16)
      {
        if (v10 == 1 && !v8[5])
        {
          v8 = [[NSString alloc] initWithCString:*(v8 + 4) encoding:4];
          goto LABEL_21;
        }

LABEL_16:
        v8 = 0;
        goto LABEL_21;
      }

      if (v8[5])
      {
        goto LABEL_16;
      }
    }

    v11 = *(v9 + 4);
LABEL_20:
    v8 = v11;
  }

LABEL_21:
  v4 = v8;
LABEL_22:

  return v4;
}

__n64 sub_10004BC14(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64))
  {
    v4 = sub_10004C07C(a1, a2);
    if (v4)
    {
      v5 = v4;
      valuePtr.n64_u64[0] = 0;
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
        return valuePtr;
      }

      v8 = CFGetTypeID(v5);
      if (v8 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v5);
        result.n64_f64[0] = 1.0;
        if (!Value)
        {
          result.n64_f64[0] = 0.0;
        }

        return result;
      }
    }
  }

  v10 = sub_10004B890(a1, a2);
  result.n64_f64[0] = 0.0;
  if (!v10)
  {
    return result;
  }

  v11 = *(v10 + 24);
  if (v11 <= 7)
  {
    if (v11 <= 3)
    {
      if (v11 != 2)
      {
        if (v11 != 3)
        {
          return result;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (v11 == 4)
      {
        goto LABEL_29;
      }

      if (v11 == 5)
      {
LABEL_28:
        v12 = *(v10 + 32);
        goto LABEL_30;
      }

      if (v11 != 7)
      {
        return result;
      }
    }

    result.n64_f64[0] = *(v10 + 32);
    return result;
  }

  if (v11 <= 10)
  {
    if (v11 != 8)
    {
      if (v11 != 9)
      {
        goto LABEL_28;
      }

LABEL_29:
      v12 = *(v10 + 32);
      goto LABEL_30;
    }

LABEL_26:
    v12 = *(v10 + 32);
LABEL_30:
    result.n64_f64[0] = v12;
    return result;
  }

  switch(v11)
  {
    case 11:
      result.n64_f64[0] = *(v10 + 32);
      break;
    case 12:
      result.n64_u64[0] = *(v10 + 32);
      break;
    case 14:
      result.n64_u8[0] = *(v10 + 32);
      result.n64_f64[0] = result.n64_u64[0];
      break;
  }

  return result;
}

CFTypeRef sub_10004BD9C(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  *(a1 + 64) = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 128) = *(a2 + 64);
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  *(a1 + 80) = v3;
  *(a2 + 56) = 0;
  *(a1 + 32) = cf;
  return CFRetain(cf);
}

void sub_10004BDCC(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = *(a1 + 113);
    if (*(a1 + 113))
    {
      v4 = *(a1 + 120);
      do
      {
        v5 = *v4++;
        sub_10004BE4C(v5);
        --v3;
      }

      while (v3);
    }

    free(v2);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 128) = 0;
  }

  CFRelease(*(a1 + 32));

  free(a1);
}

void sub_10004BE4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = v2 - 1;
    return;
  }

  v3 = *(a1 + 20);
  if (v3 == 2)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    v7 = *(v5 + 48);
    v12 = *(v5 + 32);
    v13 = v7;
    sub_10004D0C4(&v12, v6);
    v8 = *(v5 + 112);
    v9 = *(v5 + 96);
    v12 = *(v5 + 80);
    v13 = v9;
    sub_10004D0C4(&v12, v8);
    v10 = v5;
LABEL_17:
    free(v10);
    goto LABEL_18;
  }

  if (v3 == 3)
  {
    if (*(a1 + 24) == 1 && *(a1 + 32))
    {
      v4 = 0;
      do
      {
        free(*(*(a1 + 40) + 8 * v4++));
      }

      while (*(a1 + 32) > v4);
    }

    goto LABEL_16;
  }

  v11 = *(a1 + 24);
  if ((v11 - 16) < 3)
  {
    CFRelease(*(a1 + 32));
    goto LABEL_18;
  }

  if (v11 == 15)
  {
LABEL_16:
    v10 = *(a1 + 40);
    goto LABEL_17;
  }

  if (v11 == 1)
  {
    v10 = *(a1 + 32);
    goto LABEL_17;
  }

LABEL_18:

  free(a1);
}

void sub_10004BFA8(uint64_t a1, atomic_uint *a2)
{
  if (atomic_fetch_add(a2, 0xFFFFFFFF) == 1)
  {
    sub_10004BDCC(a2);
  }
}

atomic_uint *sub_10004BFC4(uint64_t a1, atomic_uint *a2)
{
  result = a2;
  atomic_fetch_add(a2, 1u);
  return result;
}

uint64_t sub_10004BFD4(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = sub_10004B890(a1, a2);
  if (!v4 || *(v4 + 24) != 4 || *(v4 + 20) != 3)
  {
    return 0;
  }

  v5 = *(v4 + 40);
  *a3 = *(v4 + 32);
  return v5;
}

uint64_t sub_10004C028(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = sub_10004B890(a1, a2);
  if (!v4 || *(v4 + 24) != 7 || *(v4 + 20) != 3)
  {
    return 0;
  }

  v5 = *(v4 + 40);
  *a3 = *(v4 + 32);
  return v5;
}

const void *sub_10004C07C(uint64_t a1, CFIndex a2)
{
  if (CFArrayGetCount(*(a1 + 64)) <= a2)
  {
    return 0;
  }

  v4 = *(a1 + 64);

  return CFArrayGetValueAtIndex(v4, a2);
}

id sub_10004C0D8(uint64_t a1, unint64_t a2)
{
  v2 = sub_10004B890(a1, a2);
  if (v2 && *(v2 + 24) == 7 && *(v2 + 20) == 3)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  for (i = [[NSMutableArray alloc] initWithCapacity:v3]; v3; --v3)
  {
    v6 = [NSNumber alloc];
    v7 = *v4++;
    v8 = [v6 initWithLongLong:v7];
    [i addObject:v8];
  }

  v9 = [i copy];

  return v9;
}

void *sub_10004C1A4(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) && ((v4 = sub_10004C07C(a1, a2), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v5 = 0) : (v5 = v4), (v6 = v5) != 0))
  {
    v7 = v6;
  }

  else
  {
    v8 = sub_10004B890(a1, a2);
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 24);
      if (v10 == 17)
      {
        v9 = *(v8 + 32);
      }

      else if (v10 == 1 && *(v8 + 20) == 3)
      {
        v11 = [[NSMutableArray alloc] initWithCapacity:*(v8 + 32)];
        if (v9[4])
        {
          v12 = 0;
          do
          {
            v13 = [[NSString alloc] initWithCString:*(v9[5] + 8 * v12) encoding:4];
            [v11 addObject:v13];

            ++v12;
          }

          while (v12 < v9[4]);
        }

        v9 = [v11 copy];
      }

      else
      {
        v9 = 0;
      }
    }

    v4 = v9;
  }

  return v4;
}

double *sub_10004C300(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) && ((v4 = sub_10004C07C(a1, a2), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v5 = 0) : (v5 = v4), (v6 = v5) != 0))
  {
    v7 = v6;
  }

  else
  {
    v8 = sub_10004B890(a1, a2);
    if (v8)
    {
      if (*(v8 + 6) == 13 && !*(v8 + 5))
      {
        v8 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v8[4]];
      }

      else
      {
        v8 = 0;
      }
    }

    v4 = v8;
  }

  return v4;
}

_DWORD *sub_10004C3D8(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64))
  {
    v4 = sub_10004C07C(a1, a2);
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;
    v6 = v5;
    if (v6)
    {
      v7 = v6;
      goto LABEL_15;
    }
  }

  v8 = sub_10004B890(a1, a2);
  if (v8)
  {
    v9 = v8;
    v10 = v8[6];
    if (v10 == 18)
    {
      if (!v8[5])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = *(v9 + 4);
        }

        else
        {
          v12 = 0;
        }

        v8 = v12;
        goto LABEL_14;
      }
    }

    else if (v10 == 15 && !v8[5])
    {
      v8 = [NSData dataWithBytes:*(v8 + 5) length:*(v8 + 4)];
      goto LABEL_14;
    }

    v8 = 0;
  }

LABEL_14:
  v4 = v8;
LABEL_15:

  return v4;
}

void *sub_10004C4F4(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) && ((v4 = sub_10004C07C(a1, a2), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v5 = 0) : (v5 = v4), (v6 = v5) != 0))
  {
    v7 = v6;
  }

  else
  {
    v8 = sub_10004B890(a1, a2);
    v9 = v8;
    if (v8)
    {
      if (*(v8 + 24) == 13 && *(v8 + 20) == 3)
      {
        v10 = [[NSMutableArray alloc] initWithCapacity:*(v8 + 32)];
        if (v9[4])
        {
          v11 = 0;
          do
          {
            v12 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*(v9[5] + 8 * v11)];
            [v10 addObject:v12];

            ++v11;
          }

          while (v11 < v9[4]);
        }

        v9 = [v10 copy];
      }

      else
      {
        v9 = 0;
      }
    }

    v4 = v9;
  }

  return v4;
}

uint64_t sub_10004C634(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64))
  {
    v4 = sub_10004C07C(a1, a2);
    if (v4)
    {
      v5 = v4;
      valuePtr = 0;
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberLongLongType, &valuePtr);
        v7 = valuePtr == 0;
        goto LABEL_7;
      }

      v8 = CFGetTypeID(v5);
      if (v8 == CFBooleanGetTypeID())
      {
        v7 = CFBooleanGetValue(v5) == 0;
LABEL_7:
        v9 = !v7;
        return v9 & 1;
      }
    }
  }

  v10 = sub_10004B890(a1, a2);
  if (v10 && *(v10 + 24) == 14 && !*(v10 + 20))
  {
    v9 = *(v10 + 32);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10004C718(uint64_t a1, unint64_t a2)
{
  v2 = sub_10004B890(a1, a2);
  if (v2)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

char *sub_10004C77C(char *a1, double a2)
{
  v2 = a1;
  if (a1)
  {
    switch(*(a1 + 6))
    {
      case 1:
        if (*(a1 + 5) != 3)
        {
          v3 = [[NSString alloc] initWithCString:*(a1 + 4) encoding:4];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v21 = 0;
          do
          {
            v22 = [[NSString alloc] initWithCString:*(*(v2 + 5) + 8 * v21) encoding:4];
            if (v22)
            {
              [v6 addObject:v22];
            }

            ++v21;
          }

          while (v21 < *(v2 + 4));
        }

        goto LABEL_76;
      case 2:
        if (*(a1 + 5) != 3)
        {
          goto LABEL_66;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v23 = 0;
          do
          {
            v24 = [NSNumber numberWithLongLong:*(*(v2 + 5) + 8 * v23)];
            [v6 addObject:v24];

            ++v23;
          }

          while (v23 < *(v2 + 4));
        }

        goto LABEL_76;
      case 3:
        if (*(a1 + 5) != 3)
        {
          goto LABEL_41;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v15 = 0;
          do
          {
            v16 = [NSNumber numberWithInt:*(*(v2 + 5) + 4 * v15)];
            [v6 addObject:v16];

            ++v15;
          }

          while (v15 < *(v2 + 4));
        }

        goto LABEL_76;
      case 4:
        if (*(a1 + 5) != 3)
        {
          goto LABEL_77;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v17 = 0;
          do
          {
            v18 = [NSNumber numberWithShort:*(*(v2 + 5) + 2 * v17)];
            [v6 addObject:v18];

            ++v17;
          }

          while (v17 < *(v2 + 4));
        }

        goto LABEL_76;
      case 5:
        if (*(a1 + 5) != 3)
        {
          goto LABEL_25;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v9 = 0;
          do
          {
            v10 = [NSNumber numberWithChar:*(*(v2 + 5) + v9)];
            [v6 addObject:v10];

            ++v9;
          }

          while (v9 < *(v2 + 4));
        }

        goto LABEL_76;
      case 6:
        v4 = a1 + 32;
        v5 = 16;
        goto LABEL_55;
      case 7:
        if (*(a1 + 5) != 3)
        {
LABEL_66:
          v3 = [NSNumber numberWithLongLong:*(a1 + 4), a2];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v27 = 0;
          do
          {
            v28 = [NSNumber numberWithLongLong:*(*(v2 + 5) + 8 * v27)];
            [v6 addObject:v28];

            ++v27;
          }

          while (v27 < *(v2 + 4));
        }

        goto LABEL_76;
      case 8:
        if (*(a1 + 5) != 3)
        {
LABEL_41:
          v3 = [NSNumber numberWithInt:*(a1 + 8), a2];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v19 = 0;
          do
          {
            v20 = [NSNumber numberWithInt:*(*(v2 + 5) + 4 * v19)];
            [v6 addObject:v20];

            ++v19;
          }

          while (v19 < *(v2 + 4));
        }

        goto LABEL_76;
      case 9:
        if (*(a1 + 5) != 3)
        {
LABEL_77:
          v3 = [NSNumber numberWithShort:*(a1 + 16), a2];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v32 = 0;
          do
          {
            v33 = [NSNumber numberWithShort:*(*(v2 + 5) + 2 * v32)];
            [v6 addObject:v33];

            ++v32;
          }

          while (v32 < *(v2 + 4));
        }

        goto LABEL_76;
      case 0xA:
        if (*(a1 + 5) != 3)
        {
LABEL_25:
          v3 = [NSNumber numberWithChar:a1[32], a2];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v13 = 0;
          do
          {
            v14 = [NSNumber numberWithChar:*(*(v2 + 5) + v13)];
            [v6 addObject:v14];

            ++v13;
          }

          while (v13 < *(v2 + 4));
        }

        goto LABEL_76;
      case 0xB:
        if (*(a1 + 5) != 3)
        {
          LODWORD(a2) = *(a1 + 8);
          v3 = [NSNumber numberWithFloat:a2];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v30 = 0;
          do
          {
            LODWORD(v29) = *(*(v2 + 5) + 4 * v30);
            v31 = [NSNumber numberWithFloat:v29];
            [v6 addObject:v31];

            ++v30;
          }

          while (v30 < *(v2 + 4));
        }

        goto LABEL_76;
      case 0xC:
        if (*(a1 + 5) != 3)
        {
          v3 = [NSNumber numberWithDouble:*(a1 + 4)];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v7 = 0;
          do
          {
            v8 = [NSNumber numberWithDouble:*(*(v2 + 5) + 8 * v7)];
            [v6 addObject:v8];

            ++v7;
          }

          while (v7 < *(v2 + 4));
        }

        goto LABEL_76;
      case 0xD:
        if (*(a1 + 5) != 3)
        {
          v3 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*(a1 + 4)];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (*(v2 + 4))
        {
          v11 = 0;
          do
          {
            v12 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*(*(v2 + 5) + 8 * v11)];
            [v6 addObject:v12];

            ++v11;
          }

          while (v11 < *(v2 + 4));
        }

        goto LABEL_76;
      case 0xE:
        if (*(a1 + 5) == 3)
        {
          v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
          if (*(v2 + 4))
          {
            v25 = 0;
            do
            {
              v26 = [NSNumber numberWithBool:*(*(v2 + 5) + v25)];
              [v6 addObject:v26];

              ++v25;
            }

            while (v25 < *(v2 + 4));
          }

LABEL_76:
          v2 = [v6 copy];
        }

        else
        {
          v3 = [NSNumber numberWithBool:a1[32], a2];
LABEL_84:
          v2 = v3;
        }

        break;
      case 0xF:
        v5 = *(a1 + 4);
        v4 = *(a1 + 5);
LABEL_55:
        v3 = [NSData dataWithBytes:v4 length:v5, a2];
        goto LABEL_84;
      case 0x10:
      case 0x11:
      case 0x12:
        v3 = *(a1 + 4);
        goto LABEL_84;
      default:
        v2 = 0;
        break;
    }
  }

  return v2;
}

const __CFNull *sub_10004CED8(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64) && (v4 = sub_10004C07C(a1, a2)) != 0 && v4 != kCFNull)
  {
    v5 = v4;
  }

  else
  {
    v6 = sub_10004B890(a1, a2);
    v5 = sub_10004C77C(v6, v7);
  }

  return v5;
}

uint64_t sub_10004CF54(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 64))
  {
    v4 = sub_10004C07C(a1, a2);
    if (v4)
    {
      v5 = v4;
      valuePtr = 0;
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberLongLongType, &valuePtr);
        return valuePtr;
      }

      v8 = CFGetTypeID(v5);
      if (v8 == CFBooleanGetTypeID())
      {
        return CFBooleanGetValue(v5) != 0;
      }
    }
  }

  result = sub_10004B890(a1, a2);
  if (result)
  {
    v9 = result;
    result = 0;
    v10 = *(v9 + 24);
    if (v10 <= 6)
    {
      if (v10 > 3)
      {
        if (v10 != 4)
        {
          if (v10 != 5)
          {
            return result;
          }

          return *(v9 + 32);
        }

        return *(v9 + 32);
      }

      if (v10 != 2)
      {
        if (v10 != 3)
        {
          return result;
        }

        return *(v9 + 32);
      }
    }

    else
    {
      if (v10 > 8)
      {
        if (v10 != 9)
        {
          if (v10 != 10)
          {
            if (v10 == 14)
            {
              return *(v9 + 32);
            }

            return result;
          }

          return *(v9 + 32);
        }

        return *(v9 + 32);
      }

      if (v10 != 7)
      {
        return *(v9 + 32);
      }
    }

    return *(v9 + 32);
  }

  return result;
}

void sub_10004D0C4(uint64_t *a1, int a2)
{
  if ((a2 - 16) >= 3)
  {
    if (a2 != 1)
    {
      if (a2 != 19)
      {
        return;
      }

      v4 = *a1;
      if (*(*a1 + 64) == 1 && *(v4 + 16) >= 1)
      {
        v5 = 0;
        do
        {
          free(*(*(v4 + 40) + 8 * v5++));
        }

        while (v5 < *(v4 + 16));
      }

      free(*(v4 + 40));
    }

    v6 = *a1;

    free(v6);
  }

  else
  {
    v3 = *a1;
    if (*a1)
    {

      CFRelease(v3);
    }
  }
}

const __CFNull *sub_10004D198(uint64_t a1, int a2, uint64_t a3, double a4)
{
  switch(a2)
  {
    case 1:
      v4 = [[NSString alloc] initWithCString:*(*(a1 + 40) + 8 * a3) encoding:4];
      break;
    case 2:
    case 7:
      v4 = [NSNumber numberWithLongLong:*(*(a1 + 40) + 8 * a3), a4];
      break;
    case 3:
    case 8:
      v4 = [NSNumber numberWithInt:*(*(a1 + 40) + 4 * a3), a4];
      break;
    case 4:
    case 9:
      v4 = [NSNumber numberWithShort:*(*(a1 + 40) + 2 * a3), a4];
      break;
    case 5:
    case 10:
      v4 = [NSNumber numberWithChar:*(*(a1 + 40) + a3), a4];
      break;
    case 11:
      LODWORD(a4) = *(*(a1 + 40) + 4 * a3);
      v4 = [NSNumber numberWithFloat:a4];
      break;
    case 12:
      v4 = [NSNumber numberWithDouble:*(*(a1 + 40) + 8 * a3)];
      break;
    case 13:
      v4 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*(*(a1 + 40) + 8 * a3)];
      break;
    case 14:
      v4 = [NSNumber numberWithBool:*(*(a1 + 40) + a3), a4];
      break;
    default:
      v4 = kCFNull;
      break;
  }

  return v4;
}

id sub_10004D308(uint64_t *a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:*(*a1 + 32)];
  v4 = *a1;
  v5 = *(*a1 + 64);
  v6 = v5 > 0xE;
  v7 = (1 << v5) & 0x7FBE;
  if (v6 || v7 == 0)
  {
    v11 = 0;
  }

  else
  {
    if (*(v4 + 16))
    {
      v9 = 0;
      do
      {
        v10 = sub_10004D198(v4, *(v4 + 64), v9, v3);
        if (v10)
        {
          [v2 addObject:v10];
        }

        ++v9;
        v4 = *a1;
      }

      while (v9 < *(*a1 + 16));
    }

    v11 = v2;
  }

  return v11;
}

double *sub_10004D3E0(double *a1, int a2, double a3)
{
  if (a1)
  {
    switch(a2)
    {
      case 1:
        a1 = [[NSString alloc] initWithCString:*a1 encoding:4];
        break;
      case 2:
      case 7:
        a1 = [NSNumber numberWithLongLong:*a1, a3];
        break;
      case 3:
      case 8:
        a1 = [NSNumber numberWithInt:*a1, a3];
        break;
      case 4:
      case 9:
        a1 = [NSNumber numberWithShort:*a1, a3];
        break;
      case 5:
      case 10:
        a1 = [NSNumber numberWithChar:*a1, a3];
        break;
      case 6:
        v7 = a1;
        v8 = 16;
        goto LABEL_12;
      case 11:
        LODWORD(a3) = *a1;
        a1 = [NSNumber numberWithFloat:a3];
        break;
      case 12:
        a1 = [NSNumber numberWithDouble:*a1];
        break;
      case 13:
        a1 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*a1];
        break;
      case 14:
        a1 = [NSNumber numberWithBool:*a1, a3];
        break;
      case 15:
        v8 = *a1;
        v7 = *(a1 + 1);
LABEL_12:
        a1 = [NSData dataWithBytes:v7 length:v8, a3, v4, v3, v5];
        break;
      case 16:
      case 17:
      case 18:
        a1 = *a1;
        break;
      case 19:
        a1 = sub_10004D308(a1);
        break;
      default:
        a1 = 0;
        goto LABEL_21;
    }
  }

  else
  {
LABEL_21:
  }

  return a1;
}

uint64_t sub_10004D574(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (*(a2 + 16) < __PAIR128__(v2, v3))
  {
    return 1;
  }

  if (__PAIR128__(v2, v3) < *(a2 + 16))
  {
    return -1;
  }

  v5 = *(a1 + 52);
  v6 = *(a2 + 52);
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return -1;
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (v7 > v8)
  {
    return 1;
  }

  if (v7 < v8)
  {
    return -1;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (v9 > v10)
  {
    return 1;
  }

  if (v9 >= v10)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10004D5E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2 >= v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2 > v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void sub_10004EE70(id a1)
{
  v17 = PRSRankingQueryIndexDictionary();
  v1 = [v17 objectForKeyedSubscript:PRSRankingDisplayNameTokenizedPrefixMatch];
  v2 = [v1 integerValue];
  v3 = 1 << v2;
  if ((v2 & 0x40) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if ((v2 & 0x40) == 0)
  {
    v3 = 0;
  }

  qword_1000A8570 |= v4;
  *algn_1000A8578 |= v3;

  v5 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactWordMatch];
  v6 = [v5 integerValue];
  v7 = 1 << v6;
  if ((v6 & 0x40) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1 << v6;
  }

  if ((v6 & 0x40) == 0)
  {
    v7 = 0;
  }

  qword_1000A8570 |= v8;
  *algn_1000A8578 |= v7;

  v9 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactPrefixMatch];
  v10 = [v9 integerValue];
  v11 = 1 << v10;
  if ((v10 & 0x40) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1 << v10;
  }

  if ((v10 & 0x40) == 0)
  {
    v11 = 0;
  }

  qword_1000A8570 |= v12;
  *algn_1000A8578 |= v11;

  v13 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactMatch];
  v14 = [v13 integerValue];
  v15 = 1 << v14;
  if ((v14 & 0x40) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1 << v14;
  }

  if ((v14 & 0x40) == 0)
  {
    v15 = 0;
  }

  qword_1000A8570 |= v16;
  *algn_1000A8578 |= v15;
}

void sub_10004EFD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ((([v9 hasPrefix:{v15, v16}] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", v15)) && *(a1 + 56) == ++*(*(*(a1 + 40) + 8) + 24))
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a7 = 1;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_10004F144(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ((([v9 hasPrefix:{v15, v16}] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", v15)) && *(a1 + 56) == ++*(*(*(a1 + 40) + 8) + 24))
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a7 = 1;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_10004F7A0(id a1)
{
  v17 = PRSRankingQueryIndexDictionary();
  v1 = [v17 objectForKeyedSubscript:PRSRankingDisplayNameTokenizedPrefixMatch];
  v2 = [v1 integerValue];
  v3 = 1 << v2;
  if ((v2 & 0x40) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if ((v2 & 0x40) == 0)
  {
    v3 = 0;
  }

  *&xmmword_1000A8590 = v4 | xmmword_1000A8590;
  *(&xmmword_1000A8590 + 1) |= v3;

  v5 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactWordMatch];
  v6 = [v5 integerValue];
  v7 = 1 << v6;
  if ((v6 & 0x40) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1 << v6;
  }

  if ((v6 & 0x40) == 0)
  {
    v7 = 0;
  }

  *&xmmword_1000A8590 = v8 | xmmword_1000A8590;
  *(&xmmword_1000A8590 + 1) |= v7;

  v9 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactPrefixMatch];
  v10 = [v9 integerValue];
  v11 = 1 << v10;
  if ((v10 & 0x40) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1 << v10;
  }

  if ((v10 & 0x40) == 0)
  {
    v11 = 0;
  }

  *&xmmword_1000A8590 = v12 | xmmword_1000A8590;
  *(&xmmword_1000A8590 + 1) |= v11;

  v13 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactMatch];
  v14 = [v13 integerValue];
  v15 = 1 << v14;
  if ((v14 & 0x40) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1 << v14;
  }

  if ((v14 & 0x40) == 0)
  {
    v15 = 0;
  }

  *&xmmword_1000A8590 = v16 | xmmword_1000A8590;
  *(&xmmword_1000A8590 + 1) |= v15;
}

void sub_100050F98(id a1)
{
  v5 = PRSRankingQueryIndexDictionary();
  v1 = [v5 objectForKeyedSubscript:PRSRankingDisplayNameTokenizedPrefixMatch];
  v2 = [v1 integerValue];
  v3 = 1 << v2;
  if ((v2 & 0x40) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if ((v2 & 0x40) == 0)
  {
    v3 = 0;
  }

  *&xmmword_1000A85B0 = v4 | xmmword_1000A85B0;
  *(&xmmword_1000A85B0 + 1) |= v3;
}

void sub_100051AFC(id a1)
{
  qword_1000A85C8 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_100052298(id a1)
{
  v1 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
  v2 = qword_1000A85D8;
  qword_1000A85D8 = v1;

  v3 = qword_1000A85D8;

  [v3 addCharactersInRange:{65532, 0xFFFFLL}];
}

void sub_100055E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_100055EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SDController workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v5 = *(a1 + 64);
  v16 = *(a1 + 48);
  v12[2] = sub_10005600C;
  v12[3] = &unk_100093A60;
  v17 = v5;
  v18 = *(a1 + 80);
  objc_copyWeak(&v15, (a1 + 40));
  v13 = *(a1 + 32);
  v6 = v3;
  v14 = v6;
  v7 = v12;
  v8 = v4;
  v9 = qos_class_self();
  if (v9 < 0x1A)
  {
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v7);
  }

  else
  {
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v9, 0, v7);
  }

  v11 = v10;

  dispatch_async(v8, v11);
  objc_destroyWeak(&v15);
}

double sub_10005600C(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v3 = *(v2 + 16);
  v19 = *v2;
  v20 = v3;
  v21 = *(v2 + 32);
  v4 = *(a1 + 72);
  *v2 = *(a1 + 56);
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 88);
  v5 = *(a1 + 72);
  v16 = *(a1 + 56);
  v17 = v5;
  v18 = *(a1 + 88);
  v6 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v2 + 8);
  *v2 = v6;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v8;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPDataDetectorsDataStore completion";
  si_tracing_log_span_begin();
  v9 = SPLogForSPLogCategoryTelemetry();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = [WeakRetained externalID];

  if (v11 && os_signpost_enabled(v9))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v11, "dataDetectorsLatency", " enableTelemetry=YES ", v15, 2u);
  }

  v12 = objc_loadWeakRetained((a1 + 48));
  [v12 storeCompletedSearch:*(a1 + 32) withSections:*(a1 + 40)];

  si_tracing_log_span_end();
  result = *&v19;
  v14 = v20;
  *v2 = v19;
  *(v2 + 16) = v14;
  *(v2 + 32) = v21;
  return result;
}

void sub_100056178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_100056960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  _Block_object_dispose((v31 - 160), 8);
  sub_1000066D4(v31 - 128);
  _Unwind_Resume(a1);
}

void sub_1000569D4(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v1 localizedStringForKey:@"DICTIONARY_DEFINITION_TRIGGER_1" value:&stru_100094040 table:@"Search"];
  v3 = qword_1000A85F0;
  qword_1000A85F0 = v2;

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v6 localizedStringForKey:@"DICTIONARY_DEFINITION_TRIGGER_2" value:&stru_100094040 table:@"Search"];
  v5 = qword_1000A85F8;
  qword_1000A85F8 = v4;
}

void sub_100056AC8(id a1)
{
  qword_1000A8600 = dispatch_queue_create("dictionary queue", 0);

  _objc_release_x1();
}

double sub_100056B08(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v3 = *(v2 + 16);
  v62 = *v2;
  v63 = v3;
  v64 = *(v2 + 32);
  v4 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v2 + 8);
  *v2 = v4;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v6;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPDictionaryDataStore lookup";
  si_tracing_log_span_begin();
  v48 = v2;
  v7 = SPLogForSPLogCategoryDefault();
  v8 = v7;
  v54 = a1;
  if (gSPLogDebugAsDefault)
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v7, v9))
  {
    v10 = objc_opt_class();
    *buf = 138412546;
    v66 = v10;
    v67 = 1024;
    LODWORD(v68) = qos_class_self();
    _os_log_impl(&_mh_execute_header, v8, v9, "QOS %@ begin: %d", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((v54 + 64));
  v11 = [*(v54 + 32) store];
  v12 = [v11 dictionaries];
  v13 = objc_opt_class();
  NSStringFromClass(v13);
  v49 = DCSSearchFoundationCopyResultsWithOptions();

  v55 = objc_opt_new();
  v51 = objc_opt_new();
  v14 = v54;
  if ([v49 count])
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v49;
    v15 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v15)
    {
      v16 = *v59;
      v50 = PRSRankingDictionaryBundleString;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v59 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v58 + 1) + 8 * i);
          v19 = [v18 footnote];
          if (([v55 containsObject:v19] & 1) == 0)
          {
            [v55 addObject:v19];
            [v51 addObject:v18];
            v20 = [WeakRetained queryContext];
            v21 = [v20 searchString];
            [v18 setUserInput:v21];

            [v18 setQueryId:{objc_msgSend(WeakRetained, "queryIdent")}];
            if (*(v54 + 80) == 1)
            {
              [v18 setTopHit:SSSetTopHitWithReasonString()];
            }

            [v18 setType:8];
            [v18 setResultBundleId:v50];
            v22 = [v18 title];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v24 = [v18 title];
              v25 = [v24 formattedTextPieces];
              if (v25)
              {
                v26 = [v24 formattedTextPieces];
                v27 = [v26 firstObject];
                v28 = [v27 text];
              }

              else
              {
                v28 = [v24 text];
              }
            }

            else
            {
              v24 = [v18 title];
              v28 = [v24 text];
            }

            [v18 setCompletion:v28];
            v29 = objc_opt_new();
            [v29 setSymbolName:@"book.closed.fill"];
            [v29 setIsTemplate:1];
            v30 = [v18 card];
            [v30 setTitleImage:v29];

            v31 = *(v54 + 40);
            v32 = [v18 card];
            [v32 setTitle:v31];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
      }

      while (v15);
    }

    v33 = objc_opt_new();
    [v33 setMaxInitiallyVisibleResults:1];
    [v33 setBundleIdentifier:PRSRankingDictionaryBundleString];
    v34 = [NSBundle bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"DOMAIN_DICTIONARY" value:&stru_100094040 table:@"Search"];
    [v33 setTitle:v35];

    [v33 setResults:v51];
    v14 = v54;
  }

  else
  {
    v33 = 0;
  }

  if (*(*(v14 + 32) + 24))
  {
    v36 = "canceled";
  }

  else
  {
    v36 = "finished";
  }

  v37 = sub_100017E38(WeakRetained, v36, "dictionary", *(v14 + 72));
  if ((*(*(v14 + 32) + 24) & 1) == 0)
  {
    v38 = +[SDController workQueue];
    v56 = WeakRetained;
    v57 = v33;
    md_tracing_dispatch_async_propagating();
  }

  v39 = SPLogForSPLogCategoryQuery();
  v40 = v39;
  if (gSPLogDebugAsDefault)
  {
    v41 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v41 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v39, v41))
  {
    v42 = objc_opt_class();
    *buf = 138412546;
    v66 = v42;
    v67 = 2048;
    v68 = v37 / 1000000000.0;
    v43 = v42;
    _os_log_impl(&_mh_execute_header, v40, v41, "- Datastore %@ time %g", buf, 0x16u);
  }

  [*(v54 + 32) finishWithClientID:*(v54 + 48)];
  [WeakRetained externalID];
  kdebug_trace();
  v44 = SPLogForSPLogCategoryTelemetry();
  v45 = [WeakRetained externalID];
  if (v45 && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, v45, "dictionaryLatency", " enableTelemetry=YES ", buf, 2u);
  }

  si_tracing_log_span_end();
  result = *&v62;
  v47 = v63;
  *v48 = v62;
  *(v48 + 16) = v47;
  *(v48 + 32) = v64;
  return result;
}

void sub_1000572B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_10005731C(void *a1)
{
  *(*(a1[7] + 8) + 24) = 1;
  v1 = a1[4];
  v2 = a1[5];
  if (a1[6])
  {
    v5 = a1[6];
    v3 = [NSArray arrayWithObjects:&v5 count:1];
    [v1 storeCompletedSearch:v2 withSections:v3];
  }

  else
  {
    v4 = a1[4];

    [v4 storeCompletedSearch:v2 withSections:&__NSArray0__struct];
  }
}

__n128 sub_100057410(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v7 = *v2;
  v8 = *(v2 + 16);
  v9 = *(v2 + 32);
  v3 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v5 = *(v2 + 8);
  *v2 = v3;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v5;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPDictionaryDataStore completion";
  si_tracing_log_span_begin();
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 32) storeCompletedSearch:*(a1 + 40) withSections:&__NSArray0__struct];
  si_tracing_log_span_end();
  result = v7;
  *v2 = v7;
  *(v2 + 16) = v8;
  *(v2 + 32) = v9;
  return result;
}

void sub_100057700(uint64_t a1)
{
  active = DCSCopyActiveDictionaries();
  [*(a1 + 32) setDictionaries:active];
}

void sub_100057954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_1000579D4(uint64_t result, uint64_t a2)
{
  if (qword_1000A8618 != -1)
  {
    sub_100063620();
  }
}

void sub_100057A00(id a1)
{
  qword_1000A8620[0] = 0;
  *algn_1000A8628 = "didErrorOccur:";
  qword_1000A8630 = "searchViewDidAppear:";
  unk_1000A8638 = "searchViewDidDisappear:";
  qword_1000A8640 = "cardViewDidDisappear:";
  unk_1000A8648 = "didStartSearch:";
  qword_1000A8650 = "didEndSearch:";
  unk_1000A8658 = "didRankSections:";
  qword_1000A8660 = "didEngageResult:";
  unk_1000A8668 = "didEngageSuggestion:";
  qword_1000A8670 = "didEngageCardSection:";
  unk_1000A8678 = "sendCustomFeedback:";
  qword_1000A8680 = "resultsDidBecomeVisible:";
  unk_1000A8688 = "suggestionsDidBecomeVisible:";
  qword_1000A8690 = "didReceiveResultsAfterTimeout:";
  unk_1000A8698 = "didAppendLateSections:";
  qword_1000A86A0 = "didClearInput:";
  unk_1000A86A8 = "didEngageSection:";
  qword_1000A86B0 = "sectionHeaderDidBecomeVisible:";
  unk_1000A86B8 = "didGradeResultRelevancy:";
  qword_1000A86C0 = "cardViewDidAppear:";
  unk_1000A86C8 = "reportFeedback:queryId:";
  qword_1000A86D0 = "didGoToSite:";
  unk_1000A86D8 = "didGoToSearch:";
  qword_1000A86E0 = "didGradeLookupHintRelevancy:";
  unk_1000A86E8 = "didReportUserResponseFeedback:";
  qword_1000A86F0 = "didPerformCommand:";
  qword_1000A8700 = 0;
  qword_1000A8708[0] = 0;
  qword_1000A8710 = objc_opt_class();
  qword_1000A8718 = objc_opt_class();
  qword_1000A8720 = objc_opt_class();
  qword_1000A8728 = objc_opt_class();
  qword_1000A8730 = objc_opt_class();
  qword_1000A8738 = objc_opt_class();
  qword_1000A8740 = objc_opt_class();
  qword_1000A8748 = objc_opt_class();
  qword_1000A8750 = objc_opt_class();
  qword_1000A8758 = objc_opt_class();
  qword_1000A8760 = objc_opt_class();
  qword_1000A8768 = objc_opt_class();
  qword_1000A8770 = objc_opt_class();
  qword_1000A8778 = objc_opt_class();
  qword_1000A8780 = objc_opt_class();
  qword_1000A8788 = objc_opt_class();
  qword_1000A8790 = objc_opt_class();
  qword_1000A8798 = objc_opt_class();
  qword_1000A87A8 = objc_opt_class();
  qword_1000A87A0 = objc_opt_class();
  qword_1000A87B0 = objc_opt_class();
  qword_1000A87B8 = objc_opt_class();
  qword_1000A87C0 = objc_opt_class();
  qword_1000A87C8 = objc_opt_class();
  qword_1000A87D0 = objc_opt_class();
  qword_1000A87D8 = objc_opt_class();
  qword_1000A87E8 = 0;
  qword_1000A87F0[0] = "None";
  *algn_1000A87F8 = "Error";
  qword_1000A8800 = "ViewAppear";
  unk_1000A8808 = "ViewDisappear";
  qword_1000A8810 = "CardViewDisappear";
  unk_1000A8818 = "StartSearch";
  qword_1000A8820 = "EndSearch";
  unk_1000A8828 = "RankSections";
  qword_1000A8830 = "EngageResult";
  unk_1000A8838 = "EngageSuggestion";
  qword_1000A8840 = "DidEngageCardSection";
  unk_1000A8848 = "SendCustomFeedback";
  qword_1000A8850 = "ResultVisible";
  unk_1000A8858 = "SuggestionsVisible";
  qword_1000A8860 = "ReceiveResultsAfterTimeout";
  unk_1000A8868 = "AppendLateSections";
  qword_1000A8870 = "ClearInput";
  unk_1000A8878 = "EngageSection";
  qword_1000A8880 = "SectionHeaderVisible";
  unk_1000A8888 = "GradeResult";
  qword_1000A8890 = "CardViewAppear";
  unk_1000A8898 = "ReportFeedback";
  qword_1000A88A0 = "GoToSite";
  unk_1000A88A8 = "GoToSearch";
  qword_1000A88B0 = "GradeLookup";
  unk_1000A88B8 = "ReportUserResponse";
  qword_1000A88C0 = "Command";
  qword_1000A88D0 = "Invalid";
}

void sub_100058438(id a1)
{
  qword_1000A88E0 = objc_alloc_init(SGSMFeedbackListener);

  _objc_release_x1();
}

id sub_100058600(uint64_t a1)
{
  result = [qword_1000A8610 count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _gatherFeedbackListeners];
  }

  return result;
}

void sub_100058874(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_2;
  }

  v15 = *(a1 + 40);
  if (!v15)
  {
    v2 = 0;
    goto LABEL_2;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v15);
  if (bytes_ptr)
  {
    v17 = [[NSData alloc] initWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(*(a1 + 40)) freeWhenDone:0];
    if (v17)
    {
      v18 = v17;
      v19 = [NSSet setWithObject:objc_opt_class()];
      v20 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v18 error:0];
      v2 = [v20 decodeObjectOfClasses:v19 forKey:NSKeyedArchiveRootObjectKey];

      if (v2)
      {
        v21 = a1 + 72;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = SPLogForSPLogCategoryFeedback();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000636D8(v21, v2);
          }

          goto LABEL_66;
        }

LABEL_2:
        v3 = *(a1 + 40) == 0;
        v4 = SPLogForSPLogCategoryFeedback();
        v5 = v4;
        if (gSPLogDebugAsDefault)
        {
          v6 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v6 = OS_LOG_TYPE_DEBUG;
        }

        v7 = os_log_type_enabled(v4, v6);
        if (v3)
        {
          if (v7)
          {
            v23 = qword_1000A87F0[*(a1 + 72)];
            *buf = 136315394;
            v47 = v23;
            v48 = 2112;
            v49 = v2;
            v11 = "sending feedback (%s) %@";
            v12 = v5;
            v13 = v6;
            v14 = 22;
            goto LABEL_18;
          }
        }

        else if (v7)
        {
          v8 = qword_1000A87F0[*(a1 + 72)];
          length = xpc_data_get_length(*(a1 + 40));
          v10 = *(a1 + 40);
          *buf = 136315906;
          v47 = v8;
          v48 = 2048;
          v49 = length;
          v50 = 2048;
          v51 = v10;
          v52 = 2112;
          v53 = v2;
          v11 = "sending feedback (%s) size %ld %p %@";
          v12 = v5;
          v13 = v6;
          v14 = 42;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
        }

        if (*(a1 + 72) == 7 && (+[SDFeedbackInterceptor sharedInstance], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_100059034;
          v42[3] = &unk_100093BA8;
          v25 = *(a1 + 48);
          v26 = *(a1 + 72);
          v43 = v2;
          v44 = v26;
          v42[4] = v25;
          v2 = v2;
          [v24 annotateRankingFeedback:v2 completion:v42];
        }

        else
        {
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v27 = +[SPFeedbackSender feedbackListeners];
          v28 = [v27 countByEnumeratingWithState:&v38 objects:v45 count:16];
          if (v28)
          {
            v29 = *v39;
            do
            {
              for (i = 0; i != v28; i = i + 1)
              {
                if (*v39 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                v31 = *(*(&v38 + 1) + 8 * i);
                v32 = [v31 feedbackListener];
                if ([*(a1 + 48) clientID:*(a1 + 56) supportsFeedbackListener:v32])
                {
                  v33 = [v31 supportsFeedbackType:21];
                  if (*(a1 + 72) == 11)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = v33;
                  }

                  if (v34 == 1)
                  {
LABEL_32:
                    [v32 reportFeedback:v2 queryId:*(a1 + 80)];
                  }

                  else if ([v31 supportsFeedbackType:?])
                  {
                    switch(*(a1 + 72))
                    {
                      case 1:
                        [v32 didErrorOccur:v2];
                        break;
                      case 2:
                        [v32 searchViewDidAppear:v2];
                        break;
                      case 3:
                        [v32 searchViewDidDisappear:v2];
                        break;
                      case 4:
                        [v32 cardViewDidDisappear:v2];
                        break;
                      case 5:
                        [v32 didStartSearch:v2];
                        break;
                      case 6:
                        [v32 didEndSearch:v2];
                        break;
                      case 7:
                        [v32 didRankSections:v2];
                        break;
                      case 8:
                        [v32 didEngageResult:v2];
                        break;
                      case 9:
                        [v32 didEngageSuggestion:v2];
                        break;
                      case 0xALL:
                        [v32 didEngageCardSection:v2];
                        break;
                      case 0xBLL:
                        [v32 sendCustomFeedback:v2];
                        break;
                      case 0xCLL:
                        [v32 resultsDidBecomeVisible:v2];
                        break;
                      case 0xDLL:
                        [v32 suggestionsDidBecomeVisible:v2];
                        break;
                      case 0xELL:
                        [v32 didReceiveResultsAfterTimeout:v2];
                        break;
                      case 0xFLL:
                        [v32 didAppendLateSections:v2];
                        break;
                      case 0x10:
                        [v32 didClearInput:v2];
                        break;
                      case 0x11:
                        [v32 didEngageSection:v2];
                        break;
                      case 0x12:
                        [v32 sectionHeaderDidBecomeVisible:v2];
                        break;
                      case 0x13:
                        [v32 didGradeResultRelevancy:v2];
                        break;
                      case 0x14:
                        [v32 cardViewDidAppear:v2];
                        break;
                      case 0x15:
                        goto LABEL_32;
                      case 0x16:
                        [v32 didGoToSite:v2];
                        break;
                      case 0x17:
                        [v32 didGoToSearch:v2];
                        break;
                      case 0x18:
                        [v32 didGradeLookupHintRelevancy:v2];
                        break;
                      case 0x19:
                        [v32 didReportUserResponseFeedback:v2];
                        break;
                      case 0x1ALL:
                        [v32 didPerformCommand:v2];
                        break;
                      default:
                        v35 = SPLogForSPLogCategoryFeedback();
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
                          v36 = *(a1 + 72);
                          *buf = 67109120;
                          LODWORD(v47) = v36;
                          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "*** Error feedback type %d not handled", buf, 8u);
                        }

                        break;
                    }
                  }
                }
              }

              v28 = [v27 countByEnumeratingWithState:&v38 objects:v45 count:16];
            }

            while (v28);
          }

          v37 = objc_opt_self();
        }

        goto LABEL_66;
      }
    }
  }

  v2 = SPLogForSPLogCategoryFeedback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10006377C();
  }

LABEL_66:
}

void sub_100059034(void *a1)
{
  v1 = *(a1[4] + 8);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000590C8;
  v3[3] = &unk_100092290;
  v2 = a1[5];
  v5 = a1[6];
  v4 = v2;
  dispatch_async(v1, v3);
}

void sub_1000590C8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[SPFeedbackSender feedbackListeners];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 supportsFeedbackType:*(a1 + 40)])
        {
          v8 = [v7 feedbackListener];
          [v8 didRankSections:*(a1 + 32)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100059650(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10005AB08()
{
  if (v0)
  {
    objc_end_catch();
  }

  JUMPOUT(0x10005AA04);
}

void sub_10005AB20(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10005AB2CLL);
}

void sub_10005AB34(uint64_t a1)
{
  [*(a1 + 32) storeCompletedSearch:*(a1 + 40) withSections:*(*(a1 + 40) + 208)];
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#query parsec sending results", buf, 2u);
  }

  [*(a1 + 32) externalID];
  kdebug_trace();
  v5 = SPLogForSPLogCategoryTelemetry();
  v6 = [*(a1 + 32) externalID];
  if (v6)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v7, "parsecLatency", " enableTelemetry=YES ", v8, 2u);
    }
  }
}

void sub_10005ADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_10005AE08(uint64_t a1)
{
  sub_100017E38(*(a1 + 32), "cancel", "parsec", *(*(a1 + 40) + 232));
  v2 = *(*(a1 + 40) + 200);
  if (v2)
  {
    [v2 invalidateHandler];
    v3 = *(a1 + 40);
    v4 = *(v3 + 208);
    *(v3 + 208) = 0;

    v5 = *(a1 + 40);
    v6 = *(v5 + 200);
    *(v5 + 200) = 0;
  }

  v7 = +[SDController workQueue];
  v8 = qos_class_self();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005AF48;
  v12[3] = &unk_100091EA8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v9;
  v14 = v10;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, v12);
  tracing_dispatch_async();

  if ((*(*(a1 + 40) + 122) & 1) == 0)
  {
    atomic_fetch_add(dword_1000A8900, 0xFFFFFFFF);
  }
}

void sub_10005AF48(uint64_t a1)
{
  if (([*(a1 + 32) cancelled] & 1) == 0)
  {
    [*(a1 + 32) storeCompletedSearch:*(a1 + 40) withSections:0];
  }

  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#query parsec sending cancel", v5, 2u);
  }
}

void sub_10005B114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_10005B12C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 121) & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (v3 == *(v1 + 200))
    {
      v4 = [v3 category_stats];
      v5 = *(a1 + 32);
      v6 = *(v5 + 136);
      *(v5 + 136) = v4;

      v7 = [*(a1 + 40) server_features];
      v8 = *(a1 + 32);
      v9 = *(v8 + 144);
      *(v8 + 144) = v7;

      *(*(a1 + 32) + 123) = 1;
      v10 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10006398C(v10);
      }

      v1 = *(a1 + 32);
    }

    if (*(v1 + 123) == 1)
    {
      v11 = +[SDController workQueue];
      tracing_dispatch_async();
    }
  }
}

void sub_10005B254(uint64_t a1)
{
  v2 = [*(a1 + 32) resultPipe];
  [v2 storeWillComplete:*(a1 + 32)];
}

void sub_10005B4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

id sub_10005C424(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v5 = objc_msgSend([NSMutableString alloc], "initWithFormat:", @"FieldMatch(%@, "), v3;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      v10 = @"%@";
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 appendFormat:v10, *(*(&v13 + 1) + 8 * i)];
          v10 = @", %@";
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v10 = @", %@";
      }

      while (v8);
    }

    [v5 appendString:@""]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10005C5B0(id a1)
{
  v3[0] = NSFileProtectionComplete;
  v3[1] = NSFileProtectionCompleteUnlessOpen;
  v3[2] = NSFileProtectionCompleteWhenUserInactive;
  v3[3] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v1 = [NSArray arrayWithObjects:v3 count:4];
  v2 = qword_1000A8908;
  qword_1000A8908 = v1;
}

void *sub_10005C658(uint64_t a1, int a2, unint64_t a3, size_t a4, unint64_t a5, int *a6)
{
  v12 = objc_autoreleasePoolPush();
  v13 = HIDWORD(a3);
  switch(a2)
  {
    case 0:
      v14 = malloc_type_malloc(0x28uLL, 0x1020040C9F8C70BuLL);
      *v14 = atomic_fetch_add(&qword_1000A8920, 1uLL);
      v14[1] = a6;
      *(v14 + 4) = _SIProtectionClass();
      *(v14 + 20) = _SIPriority();
      v14[3] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      v14[4] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      goto LABEL_105;
    case 1:
      CFRelease(*(a3 + 24));
      v34 = *(a3 + 32);
      goto LABEL_34;
    case 2:
      v14 = malloc_type_malloc(0x58uLL, 0x10E00406EEDA840uLL);
      *v14 = a6;
      v14[1] = a3;
      *(v14 + 32) = 8;
      *(v14 + 1) = 0u;
      *(v14 + 2) = 0u;
      *(v14 + 3) = 0u;
      v14[9] = malloc_type_calloc(8uLL, 8uLL, 0x2004093837F09uLL);
      v14[10] = 0;
      goto LABEL_105;
    case 3:
      v27 = *(a3 + 32);
      v25 = *(a3 + 48);
      v26 = *(a3 + 64);
      v71 = *(a3 + 80);
      v69[2] = v25;
      *v70 = v26;
      v69[1] = v27;
      v69[0] = *(a3 + 16);
      *(a3 + 80) = 0;
      DWORD1(v27) = 0;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      if ((v69[0] & 0x400) == 0)
      {
        goto LABEL_22;
      }

      LODWORD(v27) = v69[0] & 0x3FF;
      v28 = vcnt_s8(*&v27);
      v28.i16[0] = vaddlv_u8(v28);
      v29 = *(v70[1] + v28.u32[0]);
      if (!v29 || *(v29 + 20))
      {
        goto LABEL_22;
      }

      v60 = *(v29 + 24);
      if (v60 == 16)
      {
        v61 = [*(v29 + 32) cStringUsingEncoding:4];
      }

      else
      {
        if (v60 != 1)
        {
          goto LABEL_22;
        }

        v61 = *(v29 + 32);
      }

      if (v61)
      {
        if ((*&v69[0] & 0x1000000000) == 0 || (v62 = vcnt_s8((*&v69[0] & 0xFFFFFFFFFLL)), v62.i16[0] = vaddlv_u8(v62), (v63 = *(v70[1] + v62.u32[0])) == 0) || *(v63 + 32) >= *(a1 + 40))
        {
          v64 = sub_10004B760(*(a3 + 8), v69);
          os_unfair_lock_lock(&unk_1000A8918);
          v65 = NSMapGet(*(a1 + 32), v61);
          if (!v65)
          {
            v65 = CFBinaryHeapCreate(kCFAllocatorDefault, 0, &unk_1000A7FC8, 0);
            NSMapInsert(*(a1 + 32), v61, v65);
            CFRelease(v65);
          }

          if (!qword_1000A8908)
          {
            sub_100063B00();
          }

          v66 = a6[4];
          if (v66 >= [qword_1000A8908 count])
          {
            sub_100063AD4();
          }

          if (*(a6 + 20) == 1)
          {
            sub_10004BD9C(v64, v69, @"Priority");
          }

          else
          {
            v67 = [qword_1000A8908 objectAtIndexedSubscript:a6[4]];
            sub_10004BD9C(v64, v69, v67);
          }

          CFBinaryHeapAddValue(v65, v64);
          sub_10004BFA8(0, v64);
          os_unfair_lock_unlock(&unk_1000A8918);
        }
      }

LABEL_22:
      v30 = v70[1];
      if (v70[1])
      {
        v31 = BYTE1(v70[0]);
        if (BYTE1(v70[0]))
        {
          v32 = v70[1];
          do
          {
            v33 = *v32++;
            sub_10004BE4C(v33);
            --v31;
          }

          while (v31);
        }

        free(v30);
      }

      v34 = v71;
      if (v71)
      {
LABEL_34:
        CFRelease(v34);
      }

      goto LABEL_103;
    case 4:
      v14 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F20407A6C0F06uLL);
      v14[1] = *a6;
      *v14 = 1;
      goto LABEL_105;
    case 5:
      if (*(a3 + 24))
      {
        sub_10003DEA0(a6 + 2, a5, a3);
      }

      else
      {
        sub_10004BE4C(a3);
      }

      goto LABEL_104;
    case 6:
      v37 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F20409211DA8EuLL);
      v14 = v37;
      *(v37 + 1) = *(a6 + 1);
      v38 = 3;
      goto LABEL_48;
    case 7:
      if (*a6 == 2)
      {
        v14 = 0;
        *(a6 + 10) = a3;
        a6[28] = 19;
      }

      else
      {
        if (*a6 != 1)
        {
          sub_100063AA8();
        }

        v35 = *(a3 + 64);
        a6[5] = 3;
        a6[6] = v35;
        v36 = *(a3 + 48);
        *(a6 + 2) = *(a3 + 32);
        *(a6 + 3) = v36;
        *(a6 + 4) = *(a3 + 16);
LABEL_103:
        free(a3);
LABEL_104:
        v14 = 0;
      }

      goto LABEL_105;
    case 8:
      v14 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
      v14[1] = *(a6 + 1);
      *v14 = 4;
      v14[2] = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      goto LABEL_105;
    case 9:
      if (*a6 == 2)
      {
        *(a6 + 10) = *(a3 + 16);
        a6[28] = 17;
      }

      else
      {
        if (*a6 != 1)
        {
          sub_100063A7C();
        }

        *(a6 + 5) = 0x1100000004;
        v24 = *(a3 + 16);
        *(a6 + 4) = v24;
        CFDictionarySetValue(*(*(a3 + 8) + 32), a4, v24);
      }

      goto LABEL_103;
    case 10:
      sub_100063A50();
    case 11:
      sub_100063A24();
    case 12:
      v37 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F204051DD1B44uLL);
      v14 = v37;
      *(v37 + 1) = *(a6 + 1);
      v38 = 2;
LABEL_48:
      *v37 = v38;
      goto LABEL_105;
    case 13:
      v14 = 0;
      *(a6 + 5) = 0x1500000002;
      *(a6 + 4) = a3;
      goto LABEL_105;
    case 14:
      sub_1000639F8();
    case 15:
      v17 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v20) = 0;
      LOWORD(v15) = 0;
      v14 = 0;
      LOBYTE(a3) = a3 & 1;
      v18 = 14;
      goto LABEL_45;
    case 16:
      v17 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v20) = 0;
      LOWORD(v15) = 0;
      v14 = 0;
      v18 = 5;
      goto LABEL_45;
    case 17:
      v17 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v20) = 0;
      v14 = 0;
      v15 = a3 >> 8;
      v18 = 4;
      goto LABEL_50;
    case 18:
      v17 = 0;
      a4 = 0;
      v13 = 0;
      v14 = 0;
      v20 = (a3 >> 16);
      v15 = a3 >> 8;
      v18 = 3;
      goto LABEL_39;
    case 19:
      v17 = 0;
      a4 = 0;
      v14 = 0;
      v20 = (a3 >> 16);
      v15 = a3 >> 8;
      v18 = 2;
      goto LABEL_53;
    case 20:
      v17 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v20) = 0;
      LOWORD(v15) = 0;
      v14 = 0;
      v18 = 10;
LABEL_45:
      v19 = 1;
      goto LABEL_59;
    case 21:
      v17 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v20) = 0;
      v14 = 0;
      v15 = a3 >> 8;
      v18 = 9;
LABEL_50:
      v19 = 2;
      goto LABEL_59;
    case 22:
      v17 = 0;
      a4 = 0;
      v13 = 0;
      v14 = 0;
      v20 = (a3 >> 16);
      v15 = a3 >> 8;
      v18 = 8;
      goto LABEL_39;
    case 23:
      v17 = 0;
      a4 = 0;
      v14 = 0;
      v20 = (a3 >> 16);
      v15 = a3 >> 8;
      v18 = 7;
      goto LABEL_53;
    case 24:
      v17 = 0;
      v14 = 0;
      v20 = (a3 >> 16);
      v15 = a3 >> 8;
      v18 = 6;
      v19 = 16;
      goto LABEL_59;
    case 25:
      v17 = 0;
      a4 = 0;
      v14 = 0;
      v20 = (a3 >> 16);
      v15 = a3 >> 8;
      v18 = 13;
      goto LABEL_53;
    case 26:
      v17 = 0;
      a4 = 0;
      v13 = 0;
      v14 = 0;
      v20 = (a3 >> 16);
      v15 = a3 >> 8;
      v18 = 11;
LABEL_39:
      v19 = 4;
      goto LABEL_59;
    case 27:
      v17 = 0;
      a4 = 0;
      v14 = 0;
      v20 = (a3 >> 16);
      v15 = a3 >> 8;
      v18 = 12;
LABEL_53:
      v19 = 8;
      goto LABEL_59;
    case 28:
      v23 = strdup(a3);
      v17 = 0;
      a4 = 0;
      v14 = 0;
      v15 = v23 >> 8;
      v20 = (v23 >> 16);
      v13 = HIDWORD(v23);
      v18 = 1;
      v19 = 8;
      goto LABEL_58;
    case 29:
      v23 = strndup(a3, a4);
      v17 = 0;
      a4 = 0;
      v14 = 0;
      v15 = v23 >> 8;
      v20 = (v23 >> 16);
      v13 = HIDWORD(v23);
      v18 = 1;
      v19 = 8;
      goto LABEL_58;
    case 30:
      v21 = *(*(a6 + 1) + 24);
      if (!v21)
      {
        goto LABEL_8;
      }

      Value = CFDictionaryGetValue(v21, a4);
      v14 = Value;
      if (!Value)
      {
        goto LABEL_105;
      }

      v23 = CFRetain(Value);
      v19 = 0;
      a4 = 0;
      v15 = v23 >> 8;
      v20 = (v23 >> 16);
      v13 = HIDWORD(v23);
      v18 = 16;
      v17 = 1;
LABEL_58:
      LOBYTE(a3) = v23;
LABEL_59:
      v40 = *a6;
      if (*a6 > 3)
      {
        if (v40 == 4)
        {
          if (v17)
          {
            CFArrayAppendValue(*(a6 + 2), (a3 | (v15 << 8) | (v20 << 16) | (v13 << 32)));
            CFRelease((a3 | (v15 << 8) | (v20 << 16) | (v13 << 32)));
          }

          goto LABEL_105;
        }

        if (v40 != 5)
        {
LABEL_72:
          a6[8] = a3 | (v15 << 8) | (v20 << 16);
          a6[9] = v13;
          *(a6 + 6) = 0;
          *(a6 + 7) = 0;
          *(a6 + 5) = a4;
          a6[6] = v18;
          goto LABEL_105;
        }

        v43 = a6[4];
        if (*(a6 + 4) == v43)
        {
          if (v43)
          {
            v44 = 2 * v43;
            *(a6 + 4) = v44;
            *(a6 + 5) = malloc_type_realloc(*(a6 + 5), v44 * v19, 0xE3FA53CCuLL);
            if (a6[16] != v18)
            {
              sub_100063B2C();
            }
          }

          else
          {
            *(a6 + 4) = 4;
            *(a6 + 5) = malloc_type_malloc(4 * v19, 0xBEE88035uLL);
            a6[16] = v18;
          }
        }

        if (v18 > 8)
        {
          if (v18 <= 11)
          {
            if (v18 == 9)
            {
              goto LABEL_92;
            }

            if (v18 == 10)
            {
LABEL_91:
              v46 = *(a6 + 5);
              v47 = a6[4];
              a6[4] = v47 + 1;
              *(v46 + v47) = a3;
              goto LABEL_105;
            }

            goto LABEL_100;
          }

          if ((v18 - 12) >= 2)
          {
            if (v18 == 14)
            {
LABEL_109:
              v58 = *(a6 + 5);
              v59 = a6[4];
              a6[4] = v59 + 1;
              *(v58 + v59) = a3 & 1;
            }

            goto LABEL_105;
          }
        }

        else
        {
          if (v18 > 3)
          {
            if (v18 <= 6)
            {
              if (v18 != 4)
              {
                if (v18 != 5)
                {
                  goto LABEL_105;
                }

                goto LABEL_91;
              }

LABEL_92:
              v48 = *(a6 + 5);
              v49 = a6[4];
              a6[4] = v49 + 1;
              *(v48 + 2 * v49) = a3 | (v15 << 8);
              goto LABEL_105;
            }

            if (v18 != 7)
            {
LABEL_100:
              v52 = *(a6 + 5);
              v53 = a6[4];
              a6[4] = v53 + 1;
              *(v52 + 4 * v53) = a3 | (v15 << 8) | (v20 << 16);
              goto LABEL_105;
            }

LABEL_101:
            v54 = *(a6 + 5);
            v55 = a6[4];
            a6[4] = v55 + 1;
            v56 = (v54 + 8 * v55);
            *v56 = a3 | (v15 << 8) | (v20 << 16);
            v56[1] = v13;
            goto LABEL_105;
          }

          if (v18 != 1)
          {
            if (v18 != 2)
            {
              if (v18 != 3)
              {
                goto LABEL_105;
              }

              goto LABEL_100;
            }

            goto LABEL_101;
          }
        }

LABEL_98:
        v50 = *(a6 + 5);
        v51 = a6[4];
        a6[4] = v51 + 1;
        *(v50 + 8 * v51) = a3 | (v15 << 8) | (v20 << 16) | (v13 << 32);
        goto LABEL_105;
      }

      if (v40 != 2)
      {
        if (v40 == 3)
        {
          v41 = a6[4];
          if (*(a6 + 4) == v41)
          {
            if (v41)
            {
              v42 = 2 * v41;
              *(a6 + 4) = v42;
              *(a6 + 5) = malloc_type_realloc(*(a6 + 5), v42 * v19, 0x944C7475uLL);
              if (a6[16] != v18)
              {
                sub_100063B58();
              }
            }

            else
            {
              *(a6 + 4) = 4;
              *(a6 + 5) = malloc_type_malloc(4 * v19, 0xFC6CF1D0uLL);
              a6[16] = v18;
            }
          }

          switch(v18)
          {
            case 1:
            case 12:
            case 13:
              goto LABEL_98;
            case 2:
            case 7:
              goto LABEL_101;
            case 3:
            case 8:
            case 11:
              goto LABEL_100;
            case 4:
            case 9:
              goto LABEL_92;
            case 5:
            case 10:
              goto LABEL_91;
            case 14:
              goto LABEL_109;
            case 15:
              sub_100063B84();
            default:
              goto LABEL_105;
          }
        }

        goto LABEL_72;
      }

      v45 = a3 | (v15 << 8) | (v20 << 16);
      if (*(a6 + 20) == 1)
      {
        a6[20] = v45;
        a6[21] = v13;
        *(a6 + 12) = 0;
        *(a6 + 13) = 0;
        *(a6 + 11) = a4;
        a6[28] = v18;
      }

      else
      {
        a6[8] = v45;
        a6[9] = v13;
        *(a6 + 6) = 0;
        *(a6 + 7) = 0;
        *(a6 + 5) = a4;
        a6[16] = v18;
        *(a6 + 20) = 1;
      }

LABEL_105:
      objc_autoreleasePoolPop(v12);
      return v14;
    case 31:
      a3 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
      CFDictionarySetValue(*(*(a6 + 1) + 24), a4, a3);
      v19 = 0;
      a4 = 0;
      v14 = 0;
      v15 = a3 >> 8;
      v20 = (a3 >> 16);
      v13 = HIDWORD(a3);
      v18 = 16;
      v17 = 1;
      goto LABEL_59;
    case 32:
      v39 = CFDictionaryGetValue(*(*(a6 + 1) + 32), a4);
      v14 = v39;
      if (!v39)
      {
        goto LABEL_105;
      }

      v23 = CFRetain(v39);
      v19 = 0;
      v17 = 0;
      a4 = 0;
      v15 = v23 >> 8;
      v20 = (v23 >> 16);
      v13 = HIDWORD(v23);
      v18 = 17;
      goto LABEL_58;
    case 33:
      v13 = HIDWORD(a4);
      v68 = a4;
      v15 = a4 >> 8;
      v16 = a4 >> 16;
      v20 = malloc_type_malloc(a4, 0x15940C90uLL);
      memcpy(v20, a3, a4);
      v17 = 0;
      v14 = 0;
      v18 = 15;
      v19 = 8;
      a4 = v20;
      LODWORD(v20) = v16;
      LOBYTE(a3) = v68;
      goto LABEL_59;
    default:
LABEL_8:
      v19 = 0;
      v17 = 0;
      v18 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v20) = 0;
      LOWORD(v15) = 0;
      LOBYTE(a3) = 0;
      v14 = 0;
      goto LABEL_59;
  }
}