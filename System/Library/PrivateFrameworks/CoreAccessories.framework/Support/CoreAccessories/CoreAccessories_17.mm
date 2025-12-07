uint64_t iap2_externalAccessory_sendOutgoingEAData(uint64_t a1, const __CFDictionary *a2)
{
  v2 = a1;
  if (a1)
  {
    if (*(a1 + 32) && iap2_endpoint_isInitialized(a1) && (v4 = *(v2 + 32)) != 0 && (v5 = *(v4 + 24)) != 0)
    {
      v6 = kCFACCExternalAccessorySessionIDKey;
      Value = CFDictionaryGetValue(a2, kCFACCExternalAccessorySessionIDKey);
      valuePtr = -21846;
      CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
      key = kCFACCExternalAccessorySessionDataKey;
      v8 = CFDictionaryGetValue(a2, kCFACCExternalAccessorySessionDataKey);
      Length = CFDataGetLength(v8);
      v10 = kCFACCExternalAccessorySessionUUIDKey;
      v11 = CFDictionaryGetValue(a2, kCFACCExternalAccessorySessionUUIDKey);
      Copy = CFStringCreateCopy(kCFAllocatorDefault, v11);
      HIDWORD(v243) = iAP2LinkGetSessionForService(v5, 2);
      if (v11)
      {
        Copy = CFStringCreateCopy(kCFAllocatorDefault, v11);
      }

      allocator = kCFAllocatorDefault;
      v13 = OUTLINED_FUNCTION_44_6();
      v14 = &off_1001C3000;
      v250 = v5;
      if (v13 && CFDictionaryGetValue(*(v13 + 24), Copy))
      {
        v15 = gLogObjects;
        v16 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 30)
        {
          v17 = *(gLogObjects + 232);
        }

        else
        {
          v17 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *buf = 134218240;
            *v254 = v15;
            OUTLINED_FUNCTION_17_3();
            *&v254[10] = v16;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v198, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v254 = Copy;
          OUTLINED_FUNCTION_30_7(&_mh_execute_header, v17, v25, "has EA Session dictionary for eaSessionUUID %@", buf);
        }
      }

      else
      {
        *buf = valuePtr;
        v239 = OUTLINED_FUNCTION_44_6();
        if (v239)
        {
          v18 = Copy;
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v20 = v2;
          v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, buf);
          CFDictionaryAddValue(Mutable, v6, v21);
          v22 = v21;
          v2 = v20;
          v5 = v250;
          CFRelease(v22);
          v23 = CFStringCreateCopy(kCFAllocatorDefault, *(v2 + 8));
          CFDictionaryAddValue(Mutable, kCFACCExternalAccessoryProtocolEndpointUUIDKey, v23);
          CFRelease(v23);
          CFDictionaryAddValue(Mutable, v10, v18);
          CFDictionaryAddValue(*(v239 + 24), v18, Mutable);
          CFDictionaryAddValue(_gActiveEASessions, v18, Mutable);
          v24 = Mutable;
          Copy = v18;
          v14 = &off_1001C3000;
          CFRelease(v24);
        }
      }

      v26 = OUTLINED_FUNCTION_44_6();
      if (!v26 || (v27 = CFDictionaryGetValue(*(v26 + 24), Copy)) == 0 || (v28 = CFDictionaryGetValue(v27, key)) == 0 || !CFDataGetLength(v28))
      {
        v29 = OUTLINED_FUNCTION_44_6();
        cf = Copy;
        if (v29)
        {
          v240 = CFDictionaryGetValue(*(v29 + 24), v11);
        }

        else
        {
          v240 = 0;
        }

        v30 = (iap2_endpoint_getMaxSendPayloadSize(v2) - 2);
        if (Length % v30)
        {
          v31 = Length / v30 + 1;
        }

        else
        {
          v31 = Length / v30;
        }

        keya = CFDataGetBytePtr(v8);
        if (!v31)
        {
          LOBYTE(v2) = 0;
          Copy = cf;
          goto LABEL_108;
        }

        v208 = v2;
        v211 = Length;
        v33 = 0;
        LOBYTE(v2) = 0;
        v34 = 0;
        v35 = 0;
        if (Length >= v30)
        {
          v36 = v30;
        }

        else
        {
          v36 = 0;
        }

        if (Length % v30)
        {
          v36 = Length % v30;
        }

        __n = v30;
        v236 = v36;
        v37 = (v36 + 2);
        v38 = (v30 + 2);
        *&v32 = *(v14 + 71);
        v214 = v32;
        *&v32 = 67109632;
        v225 = v32;
        while (1)
        {
          if (v31 - v33 < 2)
          {
            OUTLINED_FUNCTION_18_13();
            v64 = malloc_type_calloc(v61, v62, v63);
            if (!v64)
            {
              v90 = gLogObjects;
              v91 = gNumLogObjects;
              if (gLogObjects)
              {
                v92 = gNumLogObjects < 30;
              }

              else
              {
                v92 = 1;
              }

              if (v92)
              {
                v30 = &_os_log_default;
                if (OUTLINED_FUNCTION_18())
                {
                  *buf = v214;
                  *v254 = v90;
                  OUTLINED_FUNCTION_17_3();
                  *&v254[10] = v91;
                  OUTLINED_FUNCTION_28();
                  _os_log_error_impl(v93, v94, v95, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v96, 0x12u);
                }
              }

              else
              {
                v30 = *(gLogObjects + 232);
              }

              if (!OUTLINED_FUNCTION_18())
              {
                goto LABEL_78;
              }

LABEL_100:
              *buf = 0;
              OUTLINED_FUNCTION_28();
              _os_log_error_impl(v169, v170, v171, "dataBuf is NULL!", v172, 2u);
LABEL_78:
              v97 = 0;
              goto LABEL_97;
            }

            v72 = OUTLINED_FUNCTION_26_8(v64, v65, v66, v67, v68, v69, v70, v71, v208, v211, v214, *(&v214 + 1), allocator, cf, v225, *(&v225 + 1), v230, __n, v236, v240, v243, keya, v250, *v251, *&v251[4], valuePtr);
            memcpy(v72, v73, v238);
            OUTLINED_FUNCTION_3_27();
            v79 = OUTLINED_FUNCTION_42_3(v5, v30, v37, v74, v75, v76, v77, v78, v210, v213, v216, v218, allocatorb, cfb, v227, v229, v232, __nb, v238, v242, v245, v247);
            LOBYTE(v2) = v79;
            if (gLogObjects)
            {
              v80 = gNumLogObjects <= 29;
            }

            else
            {
              v80 = 1;
            }

            v81 = !v80;
            if (v79)
            {
              if (v81)
              {
                v82 = *(gLogObjects + 232);
              }

              else
              {
                v82 = &_os_log_default;
                v115 = OUTLINED_FUNCTION_19_0();
                if (v115)
                {
                  OUTLINED_FUNCTION_1_22(v115, v116, v117, v118, v119, v120, v121, v122, v208, v211, v214);
                  OUTLINED_FUNCTION_11_11();
                  _os_log_error_impl(v177, v178, v179, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v180, 0x12u);
                }
              }

              v123 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
              if (v123)
              {
                OUTLINED_FUNCTION_9_18(v123, v124, v125, v126, v127, v128, v129, v130, v208, v211, v214, *(&v214 + 1), allocator, cf, v225);
                *v254 = v236;
                OUTLINED_FUNCTION_4_26();
                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "queued %d ea bytes for LAST packet %d, eaSession %d", v131, 0x14u);
              }

              v34 += v236;
              goto LABEL_96;
            }

            if (!v81)
            {
              v153 = OUTLINED_FUNCTION_19_0();
              if (v153)
              {
                OUTLINED_FUNCTION_1_22(v153, v154, v155, v156, v157, v158, v159, v160, v208, v211, v214);
                OUTLINED_FUNCTION_11_11();
                _os_log_error_impl(v185, v186, v187, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v188, 0x12u);
              }
            }

            v161 = OUTLINED_FUNCTION_19_0();
            if (!v161)
            {
              goto LABEL_96;
            }

            OUTLINED_FUNCTION_9_18(v161, v162, v163, v164, v165, v166, v167, v168, v208, v211, v214, *(&v214 + 1), allocator, cf, v225);
            *v254 = v236;
            OUTLINED_FUNCTION_4_26();
            OUTLINED_FUNCTION_11_11();
            v152 = "unable to queue %d ea bytes for LAST packet %d, eaSession %d";
          }

          else
          {
            OUTLINED_FUNCTION_18_13();
            v42 = malloc_type_calloc(v39, v40, v41);
            if (!v42)
            {
              v83 = gLogObjects;
              v84 = gNumLogObjects;
              if (gLogObjects)
              {
                v85 = gNumLogObjects < 30;
              }

              else
              {
                v85 = 1;
              }

              if (v85)
              {
                v30 = &_os_log_default;
                if (OUTLINED_FUNCTION_18())
                {
                  *buf = v214;
                  *v254 = v83;
                  OUTLINED_FUNCTION_17_3();
                  *&v254[10] = v84;
                  OUTLINED_FUNCTION_28();
                  _os_log_error_impl(v86, v87, v88, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v89, 0x12u);
                }
              }

              else
              {
                v30 = *(gLogObjects + 232);
              }

              if (OUTLINED_FUNCTION_18())
              {
                goto LABEL_100;
              }

              goto LABEL_78;
            }

            v50 = OUTLINED_FUNCTION_26_8(v42, v43, v44, v45, v46, v47, v48, v49, v208, v211, v214, *(&v214 + 1), allocator, cf, v225, *(&v225 + 1), v230, __n, v236, v240, v243, keya, v250, *v251, *&v251[4], valuePtr);
            memcpy(v50, v51, __na);
            OUTLINED_FUNCTION_3_27();
            v57 = OUTLINED_FUNCTION_42_3(v5, v30, v38, v52, v53, v54, v55, v56, v209, v212, v215, v217, allocatora, cfa, v226, v228, v231, __na, v237, v241, v244, v246);
            LOBYTE(v2) = v57;
            if (gLogObjects)
            {
              v58 = gNumLogObjects <= 29;
            }

            else
            {
              v58 = 1;
            }

            v59 = !v58;
            if (v57)
            {
              if (v59)
              {
                v60 = *(gLogObjects + 232);
              }

              else
              {
                v60 = &_os_log_default;
                v98 = OUTLINED_FUNCTION_19_0();
                if (v98)
                {
                  OUTLINED_FUNCTION_1_22(v98, v99, v100, v101, v102, v103, v104, v105, v208, v211, v214);
                  OUTLINED_FUNCTION_11_11();
                  _os_log_error_impl(v173, v174, v175, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v176, 0x12u);
                }
              }

              v106 = os_log_type_enabled(v60, OS_LOG_TYPE_INFO);
              if (v106)
              {
                OUTLINED_FUNCTION_9_18(v106, v107, v108, v109, v110, v111, v112, v113, v208, v211, v214, *(&v214 + 1), allocator, cf, v225);
                *v254 = __n;
                OUTLINED_FUNCTION_4_26();
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "queued %d ea bytes for packet %d, eaSession %d", v114, 0x14u);
              }

              v34 += __n;
              goto LABEL_96;
            }

            if (!v59)
            {
              v132 = OUTLINED_FUNCTION_19_0();
              if (v132)
              {
                OUTLINED_FUNCTION_1_22(v132, v133, v134, v135, v136, v137, v138, v139, v208, v211, v214);
                OUTLINED_FUNCTION_11_11();
                _os_log_error_impl(v181, v182, v183, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v184, 0x12u);
              }
            }

            v140 = OUTLINED_FUNCTION_19_0();
            if (!v140)
            {
              goto LABEL_96;
            }

            OUTLINED_FUNCTION_9_18(v140, v141, v142, v143, v144, v145, v146, v147, v208, v211, v214, *(&v214 + 1), allocator, cf, v225);
            *v254 = __n;
            OUTLINED_FUNCTION_4_26();
            OUTLINED_FUNCTION_11_11();
            v152 = "Unable to queue %d ea bytes for packet %d, eaSession %d";
          }

          _os_log_error_impl(v148, v149, v150, v152, v151, 0x14u);
LABEL_96:
          v5 = v250;
          v97 = v2 ^ 1;
          free(v30);
LABEL_97:
          if (v31 > ++v35)
          {
            v33 = v35;
            if ((v97 & 1) == 0)
            {
              continue;
            }
          }

          Copy = cf;
          if (v97)
          {
            v189 = gLogObjects;
            v190 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 30)
            {
              v191 = *(gLogObjects + 232);
              v192 = allocator;
            }

            else
            {
              v191 = &_os_log_default;
              v192 = allocator;
              if (OUTLINED_FUNCTION_13())
              {
                *buf = v214;
                *v254 = v189;
                OUTLINED_FUNCTION_17_3();
                *&v254[10] = v190;
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v199, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
              }
            }

            if (OUTLINED_FUNCTION_13())
            {
              *buf = 67109888;
              *v254 = valuePtr;
              *&v254[4] = 2048;
              *&v254[6] = v34;
              v255 = 1024;
              v256 = v211 - v34;
              v257 = 1024;
              v258 = v211;
              _os_log_error_impl(&_mh_execute_header, v191, OS_LOG_TYPE_ERROR, "Queue overrun encountered for eaSession %d. byteCounter = %llu, remainingBytes = %d, originalLen was %d", buf, 0x1Eu);
            }

            v200 = CFDataCreateWithBytesNoCopy(v192, &keya[v34], (v211 - v34), kCFAllocatorNull);
            _queueOutgoingDataForEASessionUUID(v208, cf, v200);
            CFRelease(v200);
          }

          goto LABEL_108;
        }
      }

      v194 = v8;
      v195 = gLogObjects;
      v196 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 30)
      {
        v197 = *(gLogObjects + 232);
      }

      else
      {
        v197 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          *buf = *(v14 + 71);
          *v254 = v195;
          OUTLINED_FUNCTION_17_3();
          *&v254[10] = v196;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v201, v202, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEBUG, "has pending outgoing EA data in the eaSessionDictionary", buf, 2u);
      }

      _queueOutgoingDataForEASessionUUID(v2, Copy, v194);
      v203 = gLogObjects;
      v204 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 30)
      {
        v205 = *(gLogObjects + 232);
      }

      else
      {
        v205 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          *buf = *(v14 + 71);
          *v254 = v203;
          OUTLINED_FUNCTION_17_3();
          *&v254[10] = v204;
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v206, v207, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (OUTLINED_FUNCTION_65())
      {
        *buf = 67109378;
        *v254 = valuePtr;
        *&v254[4] = 2112;
        *&v254[6] = v11;
        _os_log_debug_impl(&_mh_execute_header, v205, OS_LOG_TYPE_DEBUG, "Queued all bytes for future send for eaSession %d (sessionUUID %@)", buf, 0x12u);
      }

      LOBYTE(v2) = 1;
LABEL_108:
      if (Copy)
      {
        CFRelease(Copy);
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

void _queueOutgoingDataForEASessionUUID(uint64_t a1, const void *a2, const __CFData *a3)
{
  if (a1)
  {
    Feature = iap2_feature_getFeature(a1, 0xAu);
    if (Feature)
    {
      v6 = Feature;
      Length = CFDataGetLength(a3);
      Value = CFDictionaryGetValue(*(v6 + 24), a2);
      if (Value)
      {
        v9 = Value;
        v10 = kCFACCExternalAccessorySessionDataKey;
        v11 = CFDictionaryGetValue(Value, kCFACCExternalAccessorySessionDataKey);
        if (v11)
        {
          Mutable = v11;
        }

        else
        {
          Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
          CFDictionaryAddValue(v9, v10, Mutable);
          CFRelease(Mutable);
          if (!Mutable)
          {
            return;
          }
        }

        if (CFDataGetLength(Mutable) + Length <= 0x500000)
        {
          BytePtr = CFDataGetBytePtr(a3);
          CFDataAppendBytes(Mutable, BytePtr, Length);
          if (gLogObjects && gNumLogObjects >= 30)
          {
            v14 = *(gLogObjects + 232);
          }

          else
          {
            v14 = &_os_log_default;
            if (OUTLINED_FUNCTION_13())
            {
              OUTLINED_FUNCTION_2_3();
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v22);
            }
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v22[0] = 67109120;
            v22[1] = Length;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "queueOutgoingData: Queued %d bytes in cache", v22, 8u);
          }
        }

        else
        {
          if ((!gLogObjects || gNumLogObjects < 30) && OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v19, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v22);
          }

          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_38_8();
            OUTLINED_FUNCTION_15_1();
            _os_log_error_impl(v15, v16, OS_LOG_TYPE_ERROR, v17, v18, 0xCu);
          }
        }
      }
    }
  }
}

void _eaDataQueuedCB(int a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return;
  }

  Value = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionUUIDKey);
  if (Value && CFDictionaryContainsKey(_gActiveEASessions, Value))
  {
    v4 = kCFACCExternalAccessorySessionDataKey;
    v5 = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionDataKey);
    if (v5)
    {
      Length = CFDataGetLength(v5);
      if (Length)
      {
        v7 = CFDictionaryGetValue(theDict, kCFACCExternalAccessoryProtocolEndpointUUIDKey);
        v8 = gLogObjects;
        v9 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 30)
        {
          v10 = *(gLogObjects + 232);
        }

        else
        {
          v10 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            *buf = 134218240;
            *v92 = v8;
            OUTLINED_FUNCTION_2_1();
            v93 = v9;
            OUTLINED_FUNCTION_11_11();
            _os_log_error_impl(v59, v60, v61, v62, v63, 0x12u);
          }
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_2_1();
          v93 = Length;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "_eaDataQueuedCB: Have more data to send in cache, eaSessionUUID %@, pendingDataLength = %d", buf, 0x12u);
        }

        EndpointWithUUID = acc_manager_getEndpointWithUUID(v7);
        if (EndpointWithUUID)
        {
          v19 = EndpointWithUUID[7];
          v20 = *(v19 + 32);
          if (v20)
          {
            v21 = *(v20 + 24);
            if (v21)
            {
              SessionForService = iAP2LinkGetSessionForService(*(v20 + 24), 2);
              v23 = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionIDKey);
              if (v23)
              {
                valuePtr = -21846;
                CFNumberGetValue(v23, kCFNumberSInt16Type, &valuePtr);
                v24 = CFDictionaryGetValue(theDict, v4);
                if (v24)
                {
                  v25 = v24;
                  v26 = CFDataGetLength(v24);
                  v27 = iap2_endpoint_getMaxSendPayloadSize(v19) - 2;
                  v89 = v26;
                  if (v26 > v27)
                  {
                    LOWORD(v26) = v27;
                  }

                  BytePtr = CFDataGetBytePtr(v25);
                  v29 = v26 + 2;
                  OUTLINED_FUNCTION_18_13();
                  v31 = malloc_type_calloc(1uLL, v29, v30);
                  if (v31)
                  {
                    v32 = v31;
                    *v31 = bswap32(valuePtr) >> 16;
                    memcpy(v31 + 2, BytePtr, v26);
                    OUTLINED_FUNCTION_3_27();
                    v34 = iAP2LinkQueueSendData(v21, v32, v29, SessionForService, theDict, v33, 0, 0);
                    v35 = gLogObjects;
                    v36 = gNumLogObjects;
                    if (gLogObjects)
                    {
                      v37 = gNumLogObjects <= 29;
                    }

                    else
                    {
                      v37 = 1;
                    }

                    v38 = !v37;
                    if (v34)
                    {
                      if (!v38 && OUTLINED_FUNCTION_17())
                      {
                        *buf = 134218240;
                        *v92 = v35;
                        OUTLINED_FUNCTION_2_1();
                        v93 = v36;
                        OUTLINED_FUNCTION_35(&_mh_execute_header, v82, v83, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                      }

                      if (OUTLINED_FUNCTION_82())
                      {
                        OUTLINED_FUNCTION_28_7();
                        OUTLINED_FUNCTION_27_1();
                        _os_log_impl(v49, v50, OS_LOG_TYPE_INFO, v51, v52, 0xEu);
                      }

                      v53 = gLogObjects;
                      v54 = gNumLogObjects;
                      if ((!gLogObjects || gNumLogObjects < 30) && OUTLINED_FUNCTION_17())
                      {
                        *buf = 134218240;
                        *v92 = v53;
                        OUTLINED_FUNCTION_2_1();
                        v93 = v54;
                        OUTLINED_FUNCTION_35(&_mh_execute_header, v79, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                      }

                      if (OUTLINED_FUNCTION_75_0())
                      {
                        *buf = 67109120;
                        *v92 = v26;
                        OUTLINED_FUNCTION_27_1();
                        _os_log_debug_impl(v69, v70, OS_LOG_TYPE_DEBUG, v71, v72, 8u);
                      }

                      v94.length = v26;
                      v94.location = 0;
                      CFDataDeleteBytes(v25, v94);
                      v55 = CFDataGetLength(v25);
                      v56 = gLogObjects;
                      v57 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 30)
                      {
                        v58 = *(gLogObjects + 232);
                      }

                      else
                      {
                        v58 = &_os_log_default;
                        if (OUTLINED_FUNCTION_27())
                        {
                          *buf = 134218240;
                          *v92 = v56;
                          OUTLINED_FUNCTION_2_1();
                          v93 = v57;
                          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v81, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                        }
                      }

                      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 67109376;
                        *v92 = v89;
                        *&v92[4] = 1024;
                        *&v92[6] = v55;
                        _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "Old cache length was %d, new length is %d", buf, 0xEu);
                      }
                    }

                    else
                    {
                      if (!v38 && OUTLINED_FUNCTION_21())
                      {
                        *buf = 134218240;
                        *v92 = v35;
                        OUTLINED_FUNCTION_2_1();
                        v93 = v36;
                        OUTLINED_FUNCTION_7_17();
                        _os_log_error_impl(v84, v85, v86, v87, v88, 0x12u);
                      }

                      if (OUTLINED_FUNCTION_21())
                      {
                        OUTLINED_FUNCTION_28_7();
                        OUTLINED_FUNCTION_7_17();
                        _os_log_error_impl(v73, v74, v75, v76, v77, 0xEu);
                      }
                    }

                    free(v32);
                    return;
                  }

                  v46 = gLogObjects;
                  v47 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 30)
                  {
                    v48 = *(gLogObjects + 232);
                  }

                  else
                  {
                    v48 = &_os_log_default;
                    if (OUTLINED_FUNCTION_13())
                    {
                      *buf = 134218240;
                      *v92 = v46;
                      OUTLINED_FUNCTION_2_1();
                      v93 = v47;
                      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v78, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                    }
                  }

                  if (OUTLINED_FUNCTION_13())
                  {
                    *buf = 0;
                    v40 = &_mh_execute_header;
                    v43 = "dataBuf is NULL!";
                    v44 = buf;
                    v41 = v48;
                    v42 = OS_LOG_TYPE_ERROR;
                    v45 = 2;
                    goto LABEL_47;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 30)
      {
        v17 = *(gLogObjects + 232);
      }

      else
      {
        v17 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_13_1();
          OUTLINED_FUNCTION_7_17();
          _os_log_error_impl(v64, v65, v66, v67, v68, 0x12u);
        }
      }

      if (OUTLINED_FUNCTION_65())
      {
        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_30_7(&_mh_execute_header, v17, v39, "_eaDataQueuedCB No pending data for sessionUUID %@", buf);
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 30;
    }

    else
    {
      v11 = 1;
    }

    if (v11 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_17();
      _os_log_error_impl(v12, v13, v14, v15, v16, 0x12u);
    }

    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_7_17();
      v45 = 12;
LABEL_47:
      _os_log_error_impl(v40, v41, v42, v43, v44, v45);
    }
  }
}

void *_createEAFeature(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = malloc_type_calloc(1uLL, 0x28uLL, 0x600409743DB05uLL);
  v2 = v1;
  if (v1)
  {
    v1[4] = 0;
    *v1 = 0u;
    *(v1 + 1) = 0u;
    if (_createEAFeature_onceToken != -1)
    {
      dispatch_once(&_createEAFeature_onceToken, &__block_literal_global_21);
    }
  }

  return v2;
}

uint64_t _destroyEAFeature(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *result;
    if (*result)
    {
      platform_externalAccessory_removeEAASessionCountForConnection(*(a2 + 16));
      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }

      v4 = *(v3 + 1);
      if (v4)
      {
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v6 = Count;
          for (i = 0; i != v6; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 1), i);
            v9 = ValueAtIndex[1];
            if (v9)
            {
              CFRelease(v9);
            }

            free(ValueAtIndex);
          }
        }

        v10 = *(v3 + 1);
        if (v10)
        {
          CFRelease(v10);
          *(v3 + 1) = 0;
        }
      }

      v11 = *(v3 + 2);
      if (v11)
      {
        CFDictionaryRemoveAllValues(v11);
        v12 = *(v3 + 2);
        if (v12)
        {
          CFRelease(v12);
          *(v3 + 2) = 0;
        }
      }

      v13 = *(v3 + 3);
      if (v13)
      {
        CFDictionaryApplyFunction(v13, _CFDictionaryApplierFunction_deactiveEASession, 0);
        CFDictionaryRemoveAllValues(*(v3 + 3));
        v14 = *(v3 + 3);
        if (v14)
        {
          CFRelease(v14);
          *(v3 + 3) = 0;
        }
      }

      pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
      v15 = *(v3 + 4);
      if (v15)
      {
        CFDictionaryApplyFunction(v15, _CFDictionaryApplierFunction_deactiveEASessionStruct, 0);
        CFDictionaryRemoveAllValues(*(v3 + 4));
        v16 = *(v3 + 4);
        if (v16)
        {
          CFRelease(v16);
          *(v3 + 4) = 0;
        }
      }

      pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
      if (*v2)
      {
        free(*v2);
        *v2 = 0;
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

void _CFDictionaryApplierFunction_deactiveEASession(int a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kCFACCExternalAccessorySessionUUIDKey);
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 30;
    }

    else
    {
      v3 = 1;
    }

    if (v3 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v11);
    }

    if (OUTLINED_FUNCTION_65())
    {
      OUTLINED_FUNCTION_38_8();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_30_7(v6, v7, v8, v9, v10);
    }

    CFDictionaryRemoveValue(_gActiveEASessions, Value);
  }
}

void _CFDictionaryApplierFunction_deactiveEASessionStruct(const void *a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 30;
    }

    else
    {
      v6 = 1;
    }

    if (v6 && OUTLINED_FUNCTION_17())
    {
      v13 = 134218240;
      v14 = v4;
      OUTLINED_FUNCTION_3();
      v15 = v5;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v13);
    }

    if (OUTLINED_FUNCTION_82())
    {
      v13 = 138412290;
      v14 = a1;
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, 0xCu);
    }

    CFDictionaryRemoveValue(__gActiveEASessionStructs, a1);
    _iap2_externalAccessory_cleanupEASessionStruct(a2);
    free(a2);
  }
}

void _iap2_externalAccessory_cleanupEASessionStruct(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    a1[3] = 0;
    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    a1[1] = 0;
    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    a1[2] = 0;
  }
}

uint64_t _iap2_externalAccessory_eaDataQueuedCB(uint64_t a1, const void *a2)
{
  pthread_mutex_lock(&__giAP2ExternalAccessoryLock);
  if (a2)
  {
    Value = CFDictionaryGetValue(__gActiveEASessionStructs, a2);
    if (Value)
    {
      v4 = Value;
      EndpointWithUUID = acc_manager_getEndpointWithUUID(Value[3]);
      if (EndpointWithUUID)
      {
        if (EndpointWithUUID[7])
        {
          v6 = v4[2];
          if (v6)
          {
            if (v4[1])
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
              CFArrayAppendValue(v4[1], ValueAtIndex);
              CFArrayRemoveValueAtIndex(v4[2], 0);
            }
          }
        }

        v8 = v4[1];
        if (v8 && CFArrayGetCount(v8) >= 1)
        {
          if ((!gLogObjects || gNumLogObjects < 30) && OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v15, v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v17);
          }

          if (OUTLINED_FUNCTION_65())
          {
            OUTLINED_FUNCTION_38_8();
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_30_7(v10, v11, v12, v13, v14);
          }

          platform_externalAccessory_startIncomingDataNotificationsForEASessionUUID(a2);
        }
      }
    }
  }

  CFRelease(a2);
  return pthread_mutex_unlock(&__giAP2ExternalAccessoryLock);
}

void iap2_externalAccessory_openEASession_cold_2(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 138412290;
  v4 = a1;
  OUTLINED_FUNCTION_30_7(&_mh_execute_header, a2, a3, "Creating mutable copy of sessionUUID string %@", &v3);
}

void _parseIdentificationSupportedEAProtocol_cold_3(unsigned __int8 *a1, CFStringRef theString, NSObject *a3)
{
  v4 = *a1;
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2080;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  OUTLINED_FUNCTION_10(&_mh_execute_header, a3, v5, "Already have an ea protocol for ID %d (protocol %s)", v6);
}

_BYTE *_createFeature_15(_BYTE *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

id _destroyFeature_15(void **a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*a2 && (v5 = a2[1]) != 0 && *a1)
    {
      if ((platform_usb_set_mode_monitoring(v5, 0) & 1) == 0)
      {
        v6 = gLogObjects;
        v7 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 34) && OUTLINED_FUNCTION_21())
        {
          v23 = 134218240;
          v24 = v6;
          OUTLINED_FUNCTION_3();
          v25 = v7;
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v17, v18, v19, v20, v21, 0x12u);
        }

        if (OUTLINED_FUNCTION_21())
        {
          LOWORD(v23) = 0;
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v12, v13, v14, v15, v16, 2u);
        }
      }

      v2 = platform_usb_set_fault_monitoring(a2[1], 0);
      if ((v2 & 1) == 0)
      {
        v8 = gLogObjects;
        v9 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 34)
        {
          v10 = *(gLogObjects + 264);
        }

        else
        {
          v10 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            v23 = 134218240;
            v24 = v8;
            OUTLINED_FUNCTION_3();
            v25 = v9;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v23);
          }
        }

        if (OUTLINED_FUNCTION_17())
        {
          LOWORD(v23) = 0;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to disable usb fault monitoring!!", &v23, 2u);
        }
      }

      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _startFeatureFromDevice_11(uint64_t *a1)
{
  if (a1 && *a1 && a1[1])
  {
    if (iap2_identification_isIdentifiedForOutgoingMessageID(a1, 0x7E01u))
    {
      OUTLINED_FUNCTION_8_15();
      if (*a1)
      {
        mode = platform_usb_get_mode(a1[1]);
        if (mode)
        {
          if (mode != 1)
          {
            goto LABEL_26;
          }

          v3 = 1;
        }

        else
        {
          v3 = 0;
        }

        iAP2MsgAddVoidParam((a1 + 15), 0, v3);
        if (iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15)))
        {
          v5 = 1;
LABEL_27:
          platform_usb_set_mode_monitoring(a1[1], 1);
          return v5;
        }

        v6 = gLogObjects;
        v7 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 34) && OUTLINED_FUNCTION_21())
        {
          v24 = 134218240;
          v25 = v6;
          OUTLINED_FUNCTION_3();
          v26 = v7;
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v19, v20, v21, v22, v23, 0x12u);
        }

        if (OUTLINED_FUNCTION_21())
        {
          LOWORD(v24) = 0;
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v14, v15, v16, v17, v18, 2u);
        }

LABEL_26:
        v5 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 34)
      {
        v4 = *(gLogObjects + 264);
      }

      else
      {
        v4 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_5_9();
          OUTLINED_FUNCTION_40_1();
          _os_log_error_impl(v9, v10, v11, v12, v13, 0x12u);
        }
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v24) = 0;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "_startFeatureFromDevice: Not identified for message USBModeNotification", &v24, 2u);
      }
    }
  }

  return 0;
}

uint64_t _checkIdentificationInfo_21(uint64_t *a1)
{
  v33 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo__kMsgUSBHostModeList, 3, &v33);
  if (v2)
  {
    return v2;
  }

  if (v33 != 1)
  {
    v26 = 0;
    goto LABEL_43;
  }

  if (*a1 && (acc_endpoint_getTransportType(*a1) == 6 || !acc_endpoint_getTransportType(*a1) || acc_endpoint_getTransportType(*a1) == 7 || acc_endpoint_getTransportType(*a1) == 1 || acc_endpoint_getTransportType(*a1) == 5))
  {
    v3 = iap2_identification_transportComponents(a1);
    if (v3)
    {
      v4 = v3;
      Count = CFDictionaryGetCount(v3);
      if (Count)
      {
        v6 = Count;
        __chkstk_darwin(Count);
        v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        memset(v8, 170, v7);
        CFDictionaryGetKeysAndValues(v4, 0, v8);
        if (v6 < 1)
        {
          v26 = 12;
        }

        else
        {
          *&v9 = 134218240;
          v32 = v9;
          do
          {
            if (*v8)
            {
              if (*(*v8 + 20) == 2)
              {
                v23 = OUTLINED_FUNCTION_12_14();
                iap2_features_createFeature(v23, v24);
                v25 = OUTLINED_FUNCTION_12_14();
                iap2_identification_setIdentifiedForFeature(v25);
                v26 = 0;
                goto LABEL_43;
              }
            }

            else
            {
              v10 = gLogObjects;
              v11 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 34)
              {
                v12 = *(gLogObjects + 264);
              }

              else
              {
                v12 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = v32;
                  v35 = v10;
                  v36 = 1024;
                  v37 = v11;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  v12 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "transportComponent is NULL", buf, 2u);
              }
            }

            v8 += 8;
            --v6;
          }

          while (v6);
          v26 = 12;
        }

        goto LABEL_43;
      }
    }

    v14 = gLogObjects;
    v15 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 34)
    {
      v16 = *(gLogObjects + 264);
    }

    else
    {
      v16 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v35 = v14;
        v36 = 1024;
        v37 = v15;
        OUTLINED_FUNCTION_32(&_mh_execute_header, v21, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v18 = "Identified for USB Host Mode without identifying for a usbHost transportComponent";
    v19 = v16;
    v20 = 2;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 34)
    {
      v13 = *(gLogObjects + 264);
    }

    else
    {
      v13 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_9_19(3.8521e-34);
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    TransportType = acc_endpoint_getTransportType(*a1);
    *buf = 67109120;
    LODWORD(v35) = TransportType;
    v18 = "Identified for USB Host Mode from non invalide connection (type=%d)";
    v19 = v13;
    v20 = 8;
  }

  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v18, buf, v20);
LABEL_41:
  v26 = 12;
LABEL_43:
  if (v33 == 1)
  {
    if (gLogObjects && gNumLogObjects >= 34)
    {
      v27 = *(gLogObjects + 264);
    }

    else
    {
      v27 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        OUTLINED_FUNCTION_9_19(3.8521e-34);
        OUTLINED_FUNCTION_32(&_mh_execute_header, v29, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Identified for USB Host Mode", buf, 2u);
    }
  }

  return v26;
}

uint64_t iap2_usbHostMode_StartUSBHostModeHandler(uint64_t *a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 34)
  {
    v6 = *(gLogObjects + 264);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v32 = v4;
      *&v32[8] = 1024;
      v33 = v5;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      v8 = *a1;
      if (*a1)
      {
        v8 = a1[1];
      }
    }

    else
    {
      v8 = 0;
    }

    *buf = 138412290;
    *v32 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "startUSBHostMode: %@", buf, 0xCu);
  }

  if (!a1 || !*a1)
  {
    return 0;
  }

  v9 = 0;
  if (a2 && a1[1])
  {
    v10 = OUTLINED_FUNCTION_12_14();
    Feature = iap2_feature_getFeature(v10, v11);
    if (!Feature)
    {
      if (gLogObjects && gNumLogObjects >= 34)
      {
        v22 = *(gLogObjects + 264);
      }

      else
      {
        v22 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_23();
          OUTLINED_FUNCTION_32(&_mh_execute_header, v25, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (!OUTLINED_FUNCTION_13())
      {
        return 0;
      }

      *buf = 0;
      v23 = "Failed to get feature pointer!!";
      goto LABEL_56;
    }

    v13 = Feature;
    FirstParam = iAP2MsgGetFirstParam(a2, 0);
    if (FirstParam)
    {
      NextParam = FirstParam;
      do
      {
        ParamID = iAP2MsgGetParamID(NextParam);
        if (ParamID == 2)
        {
          *v13 = 1;
        }

        else
        {
          v17 = ParamID;
          v18 = gLogObjects;
          v19 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 34)
          {
            v20 = *(gLogObjects + 264);
          }

          else
          {
            v20 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v32 = v18;
              *&v32[8] = 1024;
              v33 = v19;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              v20 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            MsgID = iAP2MsgGetMsgID(a2);
            *buf = 67109376;
            *v32 = v17;
            *&v32[4] = 1024;
            *&v32[6] = MsgID;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
          }
        }

        NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
      }

      while (NextParam);
    }

    if ((platform_usb_set_mode(a1[1], 1) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 34)
      {
        v22 = *(gLogObjects + 264);
      }

      else
      {
        v22 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_23();
          OUTLINED_FUNCTION_32(&_mh_execute_header, v27, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (!OUTLINED_FUNCTION_13())
      {
        return 0;
      }

      *buf = 0;
      v23 = "Failed to set usb host mode!!";
      goto LABEL_56;
    }

    if (*v13 != 1)
    {
      return 1;
    }

    v9 = 1;
    if ((platform_usb_set_fault_monitoring(a1[1], 1) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 34)
      {
        v22 = *(gLogObjects + 264);
      }

      else
      {
        v22 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_23();
          OUTLINED_FUNCTION_32(&_mh_execute_header, v29, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (!OUTLINED_FUNCTION_13())
      {
        return 0;
      }

      *buf = 0;
      v23 = "Failed to set usb fault detection!!";
LABEL_56:
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
      return 0;
    }
  }

  return v9;
}

uint64_t iap2_usbHostMode_StopUSBHostModeHandler(uint64_t *a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 34)
  {
    v6 = *(gLogObjects + 264);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v46 = 134218240;
      v47 = v4;
      OUTLINED_FUNCTION_3();
      v48 = v5;
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v16, v17, v18, v19, v20, 0x12u);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      v7 = *a1;
      if (*a1)
      {
        v7 = a1[1];
      }
    }

    else
    {
      v7 = 0;
    }

    v46 = 138412290;
    v47 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "stopUSBHostMode: %@", &v46, 0xCu);
  }

  if (!a1 || !*a1)
  {
    return 0;
  }

  v8 = 0;
  if (!a2 || !a1[1])
  {
    return v8;
  }

  v9 = OUTLINED_FUNCTION_12_14();
  Feature = iap2_feature_getFeature(v9, v10);
  if (!Feature)
  {
    if ((!gLogObjects || gNumLogObjects < 34) && OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_40_1();
      _os_log_error_impl(v26, v27, v28, v29, v30, 0x12u);
    }

    if (!OUTLINED_FUNCTION_13())
    {
      return 0;
    }

    LOWORD(v46) = 0;
    goto LABEL_45;
  }

  v12 = Feature;
  if ((platform_usb_set_mode(a1[1], 0) & 1) == 0)
  {
    if ((!gLogObjects || gNumLogObjects < 34) && OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_40_1();
      _os_log_error_impl(v31, v32, v33, v34, v35, 0x12u);
    }

    if (!OUTLINED_FUNCTION_13())
    {
      return 0;
    }

    LOWORD(v46) = 0;
LABEL_45:
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v21, v22, v23, v24, v25, 2u);
    return 0;
  }

  if (*v12 != 1)
  {
    return 1;
  }

  v8 = platform_usb_set_fault_monitoring(a1[1], 0);
  if ((v8 & 1) == 0)
  {
    v13 = gLogObjects;
    v14 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 34) && OUTLINED_FUNCTION_13())
    {
      v46 = 134218240;
      v47 = v13;
      OUTLINED_FUNCTION_3();
      v48 = v14;
      OUTLINED_FUNCTION_40_1();
      _os_log_error_impl(v41, v42, v43, v44, v45, 0x12u);
    }

    if (OUTLINED_FUNCTION_13())
    {
      LOWORD(v46) = 0;
      OUTLINED_FUNCTION_40_1();
      _os_log_error_impl(v36, v37, v38, v39, v40, 2u);
    }
  }

  *v12 = 0;
  return v8;
}

const __CFNumber *iap2_usbHostMode_USBModeChangeNotification(uint64_t *a1, const __CFDictionary *a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 34)
  {
    v6 = *(gLogObjects + 264);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      v24 = v4;
      OUTLINED_FUNCTION_2_1();
      LODWORD(v26) = v5;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      v7 = *a1;
      if (*a1)
      {
        v7 = a1[1];
      }
    }

    else
    {
      v7 = 0;
    }

    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "USBModeChangeNotification: %@ attributes=%@", buf, 0x16u);
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(a2, @"USBMode");
      valuePtr = -1;
      if (result)
      {
        result = CFNumberGetValue(result, kCFNumberCharType, &valuePtr);
        if (result)
        {
          OUTLINED_FUNCTION_8_15();
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 34)
          {
            v11 = *(gLogObjects + 264);
          }

          else
          {
            v11 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              *buf = 134218240;
              v24 = v9;
              OUTLINED_FUNCTION_2_1();
              LODWORD(v26) = v10;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = a1[1];
            *buf = 138412546;
            v24 = v12;
            OUTLINED_FUNCTION_2_1();
            LODWORD(v26) = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "USBModeChangeNotification: %@ usbMode=%d", buf, 0x12u);
          }

          if (valuePtr)
          {
            if (valuePtr != 1)
            {
              return 0;
            }

            v14 = 1;
          }

          else
          {
            v14 = 0;
          }

          iAP2MsgAddVoidParam((a1 + 15), 0, v14);
          if (iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15)))
          {
            return 1;
          }

          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 34)
          {
            v17 = *(gLogObjects + 264);
          }

          else
          {
            v17 = &_os_log_default;
            if (OUTLINED_FUNCTION_13())
            {
              *buf = 134218240;
              v24 = v15;
              OUTLINED_FUNCTION_2_1();
              LODWORD(v26) = v16;
              OUTLINED_FUNCTION_32(&_mh_execute_header, v20, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          result = OUTLINED_FUNCTION_13();
          if (result)
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to send usb mode notification!!", buf, 2u);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _requestAppLaunchHandler(void *a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  if (!*a1)
  {
    return 0;
  }

  if (!**a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 2u);
  if (!Feature)
  {
    return 0;
  }

  v6 = gNumLogObjects;
  v54 = Feature;
  if (gLogObjects && gNumLogObjects >= 29)
  {
    v7 = *(gLogObjects + 224);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0_18(3.8521e-34);
      v63 = v6;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    MsgID = iAP2MsgGetMsgID(a2);
    *buf = 67109120;
    *&buf[4] = MsgID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received Request App Launch message (0x%04X)!", buf, 8u);
  }

  v55 = a1;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (FirstParam)
  {
    NextParam = FirstParam;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      ParamID = iAP2MsgGetParamID(NextParam);
      v14 = gLogObjects;
      v15 = gNumLogObjects;
      if (gLogObjects)
      {
        v16 = gNumLogObjects < 29;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v14;
          v62 = 1024;
          v63 = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v17 = &_os_log_default;
        }
      }

      else
      {
        v17 = *(gLogObjects + 224);
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = ParamID;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
      }

      if (ParamID == 1)
      {
        v60 = -1431655766;
        DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v60);
        if (v60)
        {
          v46 = logObjectForModule_2(0x1Cu);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_85;
          }

          v51 = iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          *&buf[4] = 1;
          OUTLINED_FUNCTION_3_25(v51);
          goto LABEL_94;
        }

        if (DataAsU8 <= 1)
        {
          v12 = DataAsU8;
        }

        else
        {
          v12 = 0;
        }
      }

      else if (ParamID)
      {
        v19 = gLogObjects;
        v20 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v21 = *(gLogObjects + 248);
        }

        else
        {
          v21 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v19;
            v62 = 1024;
            v63 = v20;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v21 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          *&buf[4] = ParamID;
          OUTLINED_FUNCTION_3_25(v22);
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }
      }

      else
      {
        v60 = -1431655766;
        if (v11)
        {
          CFRelease(v11);
        }

        v11 = iAP2MsgCopyDataAsCFString(NextParam, &v60);
        if (v60)
        {
          v46 = logObjectForModule_2(0x1Cu);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v48 = iAP2MsgGetMsgID(a2);
            *buf = 67109376;
            OUTLINED_FUNCTION_3_25(v48);
LABEL_94:
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
          }

LABEL_85:
          v27 = 0;
LABEL_86:
          v2 = 0;
          if (v11)
          {
            goto LABEL_87;
          }

          if (!v27)
          {
            return v2;
          }

LABEL_88:
          CFRelease(v27);
          return v2;
        }
      }

      NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
      if (!NextParam)
      {
        goto LABEL_44;
      }
    }
  }

  v12 = 0;
  v11 = 0;
LABEL_44:
  v23 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 29)
  {
    v24 = *(gLogObjects + 224);
    v25 = v55;
    v26 = v12;
  }

  else
  {
    v24 = &_os_log_default;
    v25 = v55;
    v26 = v12;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0_18(3.8521e-34);
      v63 = v23;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v11;
    v62 = 1024;
    v63 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Request app launch for %@: %{coreacc:iAP2ParamID_RequestAppLaunch_AppLaunchMethod_t}d!", buf, 0x12u);
  }

  if (!v11)
  {
    v50 = logObjectForModule_2(0x1Cu);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Missing AppBundleID - ignoring message", buf, 2u);
    }

    return 0;
  }

  v27 = SBSCopyFrontmostApplicationDisplayIdentifier();
  if (v27 && CFStringCompare(v11, v27, 0) == kCFCompareEqualTo)
  {
    v29 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 29)
    {
      v30 = *(gLogObjects + 224);
    }

    else
    {
      v30 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_0_18(3.8521e-34);
        v63 = v29;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    v26 = 1;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Application already in foreground (%@), launching without dialog...", buf, 0xCu);
    }

    v28 = 1;
  }

  else if (v26)
  {
    v28 = 0;
  }

  else
  {
    if (*v54 == 1)
    {
      v52 = logObjectForModule_2(0x1Cu);
      v2 = 1;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = v25[1];
        *buf = 138412290;
        *&buf[4] = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "App Launch dialog is already active, ignoring app launch request for endpoint %@...", buf, 0xCu);
      }

      goto LABEL_87;
    }

    v26 = 0;
    v28 = 0;
    *v54 = 1;
  }

  v31 = platform_externalAccessory_copyEAProtocolsForEndpointUUID(v25[1]);
  if (v31)
  {
    v32 = v31;
    Count = CFArrayGetCount(v31);
    if (Count < 1)
    {
      v36 = 0;
    }

    else
    {
      v34 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v32, 0);
      v36 = 1;
      if (CFStringCompare(ValueAtIndex, @"com.apple.mfi.launch_notify_previous", 1uLL))
      {
        v37 = 1;
        do
        {
          v38 = v37;
          if (v34 == v37)
          {
            break;
          }

          v39 = CFArrayGetValueAtIndex(v32, v37);
          v40 = CFStringCompare(v39, @"com.apple.mfi.launch_notify_previous", 1uLL);
          v37 = v38 + 1;
        }

        while (v40);
        v36 = v38 < v34;
      }
    }

    CFRelease(v32);
  }

  else
  {
    v36 = 0;
  }

  v41 = v25[1];
  if (!v41)
  {
    goto LABEL_86;
  }

  v2 = CFRetain(v41);
  if (v2)
  {
    CFRetain(v11);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___requestAppLaunchHandler_block_invoke;
    block[3] = &__block_descriptor_tmp_20_1;
    v57 = v26;
    v58 = v28;
    v59 = v36;
    block[4] = v11;
    block[5] = v2;
    block[6] = v25;
    dispatch_async(global_queue, block);
    v2 = 1;
  }

LABEL_87:
  CFRelease(v11);
  if (v27)
  {
    goto LABEL_88;
  }

  return v2;
}

void ___requestAppLaunchHandler_block_invoke(uint64_t a1)
{
  if (platform_system_isAppInstalledWithBundleID(*(a1 + 32)))
  {
    if (*(a1 + 56) == 1)
    {
      v2 = platform_system_isLockScreenUIDisplayed();
      if (v2)
      {
        v3 = *(a1 + 60) ^ 1;
      }

      else
      {
        v3 = 0;
      }

      v12 = gLogObjects;
      v13 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 29)
      {
        v14 = *(gLogObjects + 224);
      }

      else
      {
        v14 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v60 = v12;
          v61 = 1024;
          LODWORD(v62) = v13;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = "NO";
        if (v3)
        {
          v17 = "YES";
        }

        else
        {
          v17 = "NO";
        }

        v18 = *(a1 + 60);
        if (v2)
        {
          v19 = "YES";
        }

        else
        {
          v19 = "NO";
        }

        *buf = 136315650;
        v60 = v17;
        v61 = 2080;
        v62 = v19;
        if (v18)
        {
          v16 = "YES";
        }

        v63 = 2080;
        v64 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "launchToBackground: %s (lockScreenDisplayed: %s, alreadyInForeground: %s)", buf, 0x20u);
      }

      if (v3)
      {
        if ((!gLogObjects || gNumLogObjects < 29) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_4_27();
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        if (OUTLINED_FUNCTION_93())
        {
          v33 = *(a1 + 32);
          *buf = 138412290;
          v60 = v33;
          OUTLINED_FUNCTION_15();
          _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
        }

        platform_system_launchApplicationToBackground(*(a1 + 32));
      }

      else if ((*(a1 + 60) & 1) == 0)
      {
        if ((!gLogObjects || gNumLogObjects < 29) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_4_27();
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v50, v51, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        if (OUTLINED_FUNCTION_93())
        {
          v39 = *(a1 + 32);
          v40 = *(a1 + 61);
          *buf = 138412546;
          v60 = v39;
          v61 = 1024;
          LODWORD(v62) = v40;
          OUTLINED_FUNCTION_15();
          _os_log_impl(v41, v42, v43, v44, v45, 0x12u);
        }

        platform_system_launchApplication(*(a1 + 32), *(a1 + 61));
      }
    }

    else
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(*(a1 + 40));
      if (EndpointWithUUID)
      {
        AccessoryInfo = acc_endpoint_getAccessoryInfo(EndpointWithUUID);
        v6 = platform_system_copyAppNameForBundleID(*(a1 + 32));
        v7 = acc_strings_copyPlaceholder_Unknown();
        v8 = acc_accInfo_retainedProperty(AccessoryInfo, 1, v7);
        v9 = acc_strings_copyPlaceholder_Unknown();
        v10 = acc_accInfo_retainedProperty(AccessoryInfo, 0, v9);
        if (v6)
        {
          v11 = CFRetain(v6);
        }

        else
        {
          v11 = 0;
        }

        v20 = acc_strings_bundleCF();
        v21 = CFBundleCopyLocalizedString(v20, @"%@ would like to communicate with the %@ %@.", @"%@ would like to communicate with the %@ %@.", 0);
        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v21, v6, v8, v10);
        v23 = acc_strings_bundleCF();
        v24 = CFBundleCopyLocalizedString(v23, @"Allow", @"Allow", 0);
        v25 = acc_strings_bundleCF();
        v26 = CFBundleCopyLocalizedString(v25, @"Ignore", @"Ignore", 0);
        cf = acc_userNotifications_createIdentifier(@"app-launch", *(*(a1 + 48) + 8));
        if (v6)
        {
          v53 = v10;
          v54 = v8;
          v52 = v11;
          v27 = ACCUNCreate(1, v11, v22, v24, v26, 0, 1, cf, 0.0, *(*(a1 + 48) + 16));
          CFRetain(*(a1 + 32));
          CFRetain(*(a1 + 40));
          v28 = gLogObjects;
          v29 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 29)
          {
            v30 = *(gLogObjects + 224);
          }

          else
          {
            v30 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v60 = v28;
              v61 = 1024;
              LODWORD(v62) = v29;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 32);
            *buf = 138412290;
            v60 = v32;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Prompting user to launch application: %@...", buf, 0xCu);
          }

          v56[0] = _NSConcreteStackBlock;
          v56[1] = 0x40000000;
          v56[2] = ___requestAppLaunchHandler_block_invoke_15;
          v56[3] = &__block_descriptor_tmp_19_0;
          v58 = *(a1 + 61);
          v57 = *(a1 + 32);
          ACCUNManagerPresentNotification(v27, v56);
          v10 = v53;
          v8 = v54;
          v11 = v52;
          if (v27)
          {
            CFRelease(v27);
          }
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (v6)
        {
          CFRelease(v6);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  v46 = *(a1 + 32);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(a1 + 40);
  if (v47)
  {
    CFRelease(v47);
  }
}

void ___requestAppLaunchHandler_block_invoke_15(uint64_t a1, int a2)
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 28;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (a2)
  {
    if (!v4 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v24, v25, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v29);
    }

    if (OUTLINED_FUNCTION_93())
    {
      v5 = *(a1 + 32);
      v29 = 138412290;
      v30 = v5;
      OUTLINED_FUNCTION_15();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  else
  {
    if (!v4 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v26, v27, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v29);
    }

    if (OUTLINED_FUNCTION_93())
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v29 = 138412546;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      OUTLINED_FUNCTION_15();
      _os_log_impl(v13, v14, v15, v16, v17, 0x12u);
    }

    platform_system_launchApplication(*(a1 + 32), *(a1 + 48));
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(*(a1 + 40));
  if (EndpointWithUUID)
  {
    v19 = EndpointWithUUID;
    if (acc_endpoint_getProtocol(EndpointWithUUID) == 4)
    {
      v20 = v19[7];
      if (v20)
      {
        v21 = *(v20 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = ___requestAppLaunchHandler_block_invoke_16;
        block[3] = &__block_descriptor_tmp_12;
        block[4] = v20;
        dispatch_sync(v21, block);
      }
    }
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    CFRelease(v23);
  }
}

_BYTE *_createFeature_16(_BYTE *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

BOOL _destroyFeature_16(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return a1 != 0;
}

void *accSNTPTimeSync_endpoint_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200403C432F0CuLL);
    if (v2)
    {
      v3 = dispatch_queue_create("ACCSNTPTimeSyncQ", 0);
      v2[3] = v3;
      if (v3)
      {
        *v2 = a1;
        _accSNTPTimeSync_endpoint_initSession(v2);
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, platform_timeSync_getAccessoryTime, @"com.apple.coreaccessories.ACCTimeSyncTest", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        platform_timeSync_startServer();
      }
    }
  }

  else
  {
    v6 = logObjectForModule_25();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "pProtocolEndpoint = NULL", v7, 2u);
    }

    return 0;
  }

  return v2;
}

uint64_t accSNTPTimeSync_endpoint_publish(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      Protocol = acc_endpoint_getProtocol(result);
      if (gLogObjects && gNumLogObjects >= 59)
      {
        v3 = *(gLogObjects + 464);
      }

      else
      {
        v3 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_16_0();
          OUTLINED_FUNCTION_6_0();
          _os_log_error_impl(v8, v9, OS_LOG_TYPE_ERROR, v10, v11, 0x12u);
        }
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_6_0();
        _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 8u);
      }

      if (Protocol == 15)
      {
        if (acc_endpoint_isPublished(*v1))
        {
          _accSNTPTimeSync_endpoint_cleanupSession();
          _accSNTPTimeSync_endpoint_initSession(v1);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t accSNTPTimeSync_endpoint_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      _accSNTPTimeSync_endpoint_cleanupSession();
      dispatch_sync(*(*v1 + 3), &__block_literal_global_22);
      dispatch_release(*(*v1 + 3));
      *(*v1 + 3) = 0;
      if (*v1)
      {
        free(*v1);
        *v1 = 0;
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

uint64_t accSNTPTimeSync_endpoint_processIncomingData(uint64_t result, CFTypeRef cf)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (cf)
    {
      if (*v3)
      {
        CFRetain(cf);
        v4 = v3[3];
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 0x40000000;
        v5[2] = __accSNTPTimeSync_endpoint_processIncomingData_block_invoke;
        v5[3] = &__block_descriptor_tmp_3_1;
        v5[4] = v3;
        v5[5] = cf;
        dispatch_async(v4, v5);
        return 1;
      }
    }
  }

  return result;
}

BOOL _accSNTPTimeSync_endpoint_processIncomingData(_BOOL8 result, CFDataRef theData)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = 0;
  if (!theData || !*v3)
  {
    return result;
  }

  if (!**v3)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr)
  {
    v15 = logObjectForModule_25();
    result = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    return 0;
  }

  if (Length != 48)
  {
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 59)
  {
    v6 = *(gLogObjects + 464);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v7, v8, OS_LOG_TYPE_ERROR, v9, v10, 0x12u);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_debug_impl(v11, v12, OS_LOG_TYPE_DEBUG, v13, v14, 0x12u);
  }

  platform_timeSync_setSystemTime(theData);
  return 1;
}

uint64_t accSNTPTimeSync_endpoint_sendOutgoingData(uint64_t *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  acc_platform_packetLogging_logSNTPTimeSyncMsg(*a1, a2, 0);

  return acc_endpoint_sendOutgoingData(v3, a2);
}

void accSNTPTimeSync_endpoint_getAccessoryTime_cold_1(UInt8 *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_1_24(a1, a2, 12289);
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 50);
  if (Mutable)
  {
    v8 = Mutable;
    CFDataAppendBytes(Mutable, a1, 50);
    v9 = accSNTPTimeSync_endpoint_sendOutgoingData(a3, v8);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;

  free(a1);
}

void accSNTPTimeSync_endpoint_getAccessoryTime_cold_2()
{
  v0 = logObjectForModule_25();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void accSNTPTimeSync_endpoint_sendAccessoryTime_cold_1(UInt8 *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_1_24(a1, a2, 12291);
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 50);
  if (Mutable)
  {
    v8 = Mutable;
    CFDataAppendBytes(Mutable, a1, 50);
    v9 = accSNTPTimeSync_endpoint_sendOutgoingData(a3, v8);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;

  free(a1);
}

void accSNTPTimeSync_endpoint_sendAccessoryTime_cold_2()
{
  v0 = logObjectForModule_25();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void ___presentShareWiFiCredentialsNotification_block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "userDeclinedWiFiNetworkSharing WiFi Configuration Information %@", &v2, 0xCu);
}

void ___presentShareWiFiCredentialsNotification_block_invoke_cold_6(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "device WiFi Configuration Information %@", &v2, 0xCu);
}

uint64_t iap2_appLinks_start(void *a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  Feature = iap2_feature_getFeature(a1, 0x18u);
  if (!Feature || (*(Feature + 104) & 1) != 0)
  {
    return 0;
  }

  v167 = Feature;
  v162 = a1;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
    v10 = 0;
    Mutable = 0;
LABEL_76:
    if (Mutable | v10)
    {
      _removeSubscribers(v162, v167);
      if (*v167)
      {
        CFRelease(*v167);
        *v167 = 0;
      }

      if (Mutable)
      {
        *v167 = CFRetain(Mutable);
        if (CFSetGetCount(Mutable))
        {
          *(v167 + 20) = 1;
        }
      }

      else
      {
        *v167 = 0;
      }

      v123 = *(v167 + 24);
      if (v123)
      {
        CFRelease(v123);
        *(v167 + 24) = 0;
      }

      if (v10)
      {
        *(v167 + 24) = CFRetain(v10);
        if (CFSetGetCount(v10))
        {
          *(v167 + 44) = 1;
        }
      }

      else
      {
        *(v167 + 24) = 0;
      }

      if (*v162)
      {
        if (*(v167 + 20) == 1 && *v167 && CFSetGetCount(*v167) >= 1)
        {
          v124 = iap2_accAuthentication_copyCertificateSerial(v162);
          if (!v124)
          {
            v125 = 0;
            goto LABEL_111;
          }

          v125 = platform_appLinks_addSubscriberForSubFeature(v162[1], 0, *v167, *(v167 + 18), v124);
          CFRelease(v124);
        }

        else
        {
          v125 = 0;
        }

        if (*(v167 + 44) == 1)
        {
          v126 = *(v167 + 24);
          if (v126)
          {
            if (CFSetGetCount(v126) >= 1)
            {
              v127 = iap2_accAuthentication_copyCertificateSerial(v162);
              if (v127)
              {
                v128 = v127;
                LOBYTE(v124) = platform_appLinks_addSubscriberForSubFeature(v162[1], 1, *(v167 + 24), *(v167 + 42), v127);
                CFRelease(v128);
LABEL_111:
                *(v167 + 104) = v125 | v124;
                v138 = gLogObjects;
                v139 = gNumLogObjects;
                if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_27())
                {
                  *buf = 134218240;
                  *v173 = v138;
                  *&v173[8] = 1024;
                  v174[0] = v139;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v140, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }

                v2 = 1;
                if (OUTLINED_FUNCTION_76_1())
                {
                  v141 = v162[1];
                  *buf = 138412290;
                  *v173 = v141;
                  OUTLINED_FUNCTION_40_5();
                  _os_log_impl(v142, v143, v144, v145, v146, 0xCu);
                }

                goto LABEL_117;
              }
            }
          }
        }
      }

      else
      {
        v125 = 0;
      }

      LOBYTE(v124) = 0;
      goto LABEL_111;
    }

    return 0;
  }

  v8 = FirstParam;
  v165 = 0;
  v166 = 0;
  Mutable = 0;
  v10 = 0;
  *&v7 = 67109120;
  v168 = v7;
  *&v7 = 67109376;
  v160 = v7;
  *&v7 = 134218240;
  v163 = v7;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(v8);
    v171 = 0;
    if (!gLogObjects || gNumLogObjects < 50)
    {
      v12 = OUTLINED_FUNCTION_75();
      if (v12)
      {
        OUTLINED_FUNCTION_2_31(v12, v13, v14, v15, v16, v17, v18, v19, v160, *(&v160 + 1), v161, v162, v163);
        OUTLINED_FUNCTION_39_5();
        _os_log_error_impl(v115, v116, v117, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v118, 0x12u);
      }
    }

    v20 = OUTLINED_FUNCTION_106();
    if (v20)
    {
      *buf = v168;
      *v173 = ParamID;
      OUTLINED_FUNCTION_74_0();
      _os_log_debug_impl(v111, v112, v113, "msgParamID: %d", v114, 8u);
    }

    switch(ParamID)
    {
      case 0:
        if (Mutable)
        {
          goto LABEL_104;
        }

        v28 = OUTLINED_FUNCTION_47_4();
        v30 = iAP2MsgGetFirstParam(v28, v29);
        if (!v30)
        {
          Mutable = 0;
          break;
        }

        NextParam = v30;
        Mutable = 0;
        while (1)
        {
          HIWORD(v170) = iAP2MsgGetParamID(NextParam);
          if (!gLogObjects || gNumLogObjects < 50)
          {
            v32 = OUTLINED_FUNCTION_75();
            if (v32)
            {
              OUTLINED_FUNCTION_2_31(v32, v33, v34, v35, v36, v37, v38, v39, v160, *(&v160 + 1), v161, v162, v163);
              OUTLINED_FUNCTION_39_5();
              _os_log_error_impl(v55, v56, v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v58, 0x12u);
            }
          }

          v40 = OUTLINED_FUNCTION_106();
          if (v40)
          {
            OUTLINED_FUNCTION_31_8(v40, v41, v42, v43, v44, v45, v46, v47, v160, *(&v160 + 1), v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
            OUTLINED_FUNCTION_74_0();
            _os_log_debug_impl(v51, v52, v53, "msgSubParamID: %d", v54, 8u);
          }

          if (!iAP2MsgIsDataVoid(NextParam))
          {
            break;
          }

          v48 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &v170 + 2);
          if (Mutable || (Mutable = CFSetCreateMutable(kCFAllocatorDefault, 1, &kCFTypeSetCallBacks)) != 0)
          {
            CFSetAddValue(Mutable, v48);
          }

          if (v48)
          {
            CFRelease(v48);
          }

          v49 = OUTLINED_FUNCTION_47_4();
          NextParam = iAP2MsgGetNextParam(v49, v50, NextParam);
          if (!NextParam)
          {
            goto LABEL_73;
          }
        }

        v133 = logObjectForModule_26();
        if (!OUTLINED_FUNCTION_13_9(v133))
        {
          goto LABEL_104;
        }

        iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_43_6();
        *&v173[6] = 0;
        LOWORD(v174[0]) = v134;
        *(v174 + 2) = v135;
        v132 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
        goto LABEL_106;
      case 1:
        if ((v166 & 0x100000000) != 0)
        {
          goto LABEL_59;
        }

        v91 = OUTLINED_FUNCTION_50_3(v20, v21, v22, v23, v24, v25, v26, v27, v160, *(&v160 + 1), v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171);
        if (v171)
        {
          v149 = logObjectForModule_26();
          if (!OUTLINED_FUNCTION_13_9(v149))
          {
            goto LABEL_104;
          }

LABEL_129:
          MsgID = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_28_8(MsgID, v153, v154, v155, v156, v157, v158, v159, v160);
          OUTLINED_FUNCTION_8_16();
          v132 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
          v136 = ParamID;
          v137 = 14;
          goto LABEL_107;
        }

        *(v167 + 16) = v91;
LABEL_59:
        HIDWORD(v166) = 1;
        break;
      case 2:
        if (v166)
        {
          goto LABEL_38;
        }

        v60 = OUTLINED_FUNCTION_50_3(v20, v21, v22, v23, v24, v25, v26, v27, v160, *(&v160 + 1), v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171);
        if (v171)
        {
          v150 = logObjectForModule_26();
          if (!OUTLINED_FUNCTION_13_9(v150))
          {
            goto LABEL_104;
          }

          goto LABEL_129;
        }

        *(v167 + 18) = v60;
LABEL_38:
        LODWORD(v166) = 1;
        break;
      case 3:
        if (v10)
        {
          goto LABEL_104;
        }

        v61 = OUTLINED_FUNCTION_47_4();
        v63 = iAP2MsgGetFirstParam(v61, v62);
        if (v63)
        {
          NextParam = v63;
          v10 = 0;
          while (1)
          {
            HIWORD(v170) = iAP2MsgGetParamID(NextParam);
            if (!gLogObjects || gNumLogObjects < 50)
            {
              v64 = OUTLINED_FUNCTION_75();
              if (v64)
              {
                OUTLINED_FUNCTION_2_31(v64, v65, v66, v67, v68, v69, v70, v71, v160, *(&v160 + 1), v161, v162, v163);
                OUTLINED_FUNCTION_39_5();
                _os_log_error_impl(v87, v88, v89, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v90, 0x12u);
              }
            }

            v72 = OUTLINED_FUNCTION_106();
            if (v72)
            {
              OUTLINED_FUNCTION_31_8(v72, v73, v74, v75, v76, v77, v78, v79, v160, *(&v160 + 1), v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168);
              OUTLINED_FUNCTION_74_0();
              _os_log_debug_impl(v83, v84, v85, "msgSubParamID: %d", v86, 8u);
            }

            if (!iAP2MsgIsDataVoid(NextParam))
            {
              break;
            }

            v80 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &v170 + 2);
            if (v10 || (v10 = CFSetCreateMutable(kCFAllocatorDefault, 1, &kCFTypeSetCallBacks)) != 0)
            {
              CFSetAddValue(v10, v80);
            }

            if (v80)
            {
              CFRelease(v80);
            }

            v81 = OUTLINED_FUNCTION_47_4();
            NextParam = iAP2MsgGetNextParam(v81, v82, NextParam);
            if (!NextParam)
            {
              goto LABEL_73;
            }
          }

          v129 = logObjectForModule_26();
          if (!OUTLINED_FUNCTION_13_9(v129))
          {
            goto LABEL_104;
          }

          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_43_6();
          *&v173[6] = 3;
          LOWORD(v174[0]) = v130;
          *(v174 + 2) = v131;
          v132 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
LABEL_106:
          v136 = NextParam;
          v137 = 20;
LABEL_107:
          _os_log_error_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, v132, buf, v137);
          goto LABEL_104;
        }

        v10 = 0;
        break;
      case 4:
        if ((v165 & 0x100000000) != 0)
        {
          goto LABEL_34;
        }

        v59 = OUTLINED_FUNCTION_50_3(v20, v21, v22, v23, v24, v25, v26, v27, v160, *(&v160 + 1), v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171);
        if (v171)
        {
          v148 = logObjectForModule_26();
          if (!OUTLINED_FUNCTION_13_9(v148))
          {
            goto LABEL_104;
          }

          goto LABEL_129;
        }

        *(v167 + 40) = v59;
LABEL_34:
        HIDWORD(v165) = 1;
        break;
      case 5:
        if (v165)
        {
          goto LABEL_63;
        }

        v92 = OUTLINED_FUNCTION_50_3(v20, v21, v22, v23, v24, v25, v26, v27, v160, *(&v160 + 1), v161, v162, v163, *(&v163 + 1), v164, v165, v166, v167, v168, *(&v168 + 1), v169, v170, v171);
        if (!v171)
        {
          *(v167 + 42) = v92;
LABEL_63:
          LODWORD(v165) = 1;
          break;
        }

        v151 = logObjectForModule_26();
        if (OUTLINED_FUNCTION_13_9(v151))
        {
          goto LABEL_129;
        }

LABEL_104:
        v2 = 0;
LABEL_117:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        return v2;
      default:
        if (gLogObjects && gNumLogObjects >= 50)
        {
          v93 = *(gLogObjects + 392);
        }

        else
        {
          v94 = OUTLINED_FUNCTION_75();
          v93 = &_os_log_default;
          if (v94)
          {
            OUTLINED_FUNCTION_2_31(v94, v95, v96, v97, v98, v99, v100, v101, v160, *(&v160 + 1), v161, v162, v163);
            OUTLINED_FUNCTION_39_5();
            _os_log_error_impl(v119, v120, v121, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v122, 0x12u);
            v93 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          v102 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_28_8(v102, v103, v104, v105, v106, v107, v108, v109, v160);
          *v173 = ParamID;
          *&v173[4] = 1024;
          *&v173[6] = v110;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }

        break;
    }

LABEL_73:
    v8 = iAP2MsgGetNextParam(a2, 0, v8);
    if (!v8)
    {
      goto LABEL_76;
    }
  }
}

id _removeSubscribers(void *a1, CFSetRef *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (!a2 || !*a1)
  {
    return v3;
  }

  v3 = *a2 && CFSetGetCount(*a2) >= 1 ? platform_appLinks_removeSubscriberForSubFeature(a1[1], 0) : 0;
  v5 = a2[3];
  if (!v5 || CFSetGetCount(v5) < 1)
  {
    return v3;
  }

  v6 = a1[1];

  return platform_appLinks_removeSubscriberForSubFeature(v6, 1);
}

id iap2_appLinks_stop(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 0x18u);
    if (Feature && (v5 = Feature, OUTLINED_FUNCTION_32_5(), v6))
    {
      *(v5 + 104) = 0;
      *(v5 + 20) = 0;
      *(v5 + 44) = 0;
      v2 = _removeSubscribers(a1, v5);
      v7 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_3();
        v24 = v7;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v22);
      }

      if (OUTLINED_FUNCTION_76_1())
      {
        v8 = a1[1];
        v22 = 138412290;
        v23 = v8;
        OUTLINED_FUNCTION_40_5();
        _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      }

      if (*v5)
      {
        CFRelease(*v5);
        *v5 = 0;
      }

      v14 = *(v5 + 24);
      if (v14)
      {
        CFRelease(v14);
        *(v5 + 24) = 0;
      }

      v15 = *(v5 + 80);
      if (v15)
      {
        CFRelease(v15);
        *(v5 + 80) = 0;
      }

      v16 = *(v5 + 72);
      if (v16)
      {
        CFRelease(v16);
        *(v5 + 72) = 0;
      }

      v17 = *(v5 + 96);
      if (v17)
      {
        CFRelease(v17);
        *(v5 + 96) = 0;
      }

      v18 = *(v5 + 56);
      if (v18)
      {
        CFRelease(v18);
        *(v5 + 56) = 0;
      }

      v19 = *(v5 + 64);
      if (v19)
      {
        CFRelease(v19);
        *(v5 + 64) = 0;
      }

      *(v5 + 90) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

unsigned __int16 *iap2_appLinks_requestAppIcons(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v5 = OUTLINED_FUNCTION_21_7();
  result = iap2_feature_getFeature(v5, v6);
  if (!result)
  {
    return result;
  }

  v7 = result;
  OUTLINED_FUNCTION_32_5();
  if (!v8)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_26_1();
  result = iAP2MsgGetFirstParam(v9, v10);
  if (!result)
  {
    return result;
  }

  NextParam = result;
  v83 = a1;
  v84 = v7;
  v13 = 0;
  *&v11 = 134218240;
  v85 = v11;
  do
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    valuePtr = ParamID;
    v86 = 0;
    v15 = gLogObjects;
    if (!gLogObjects || gNumLogObjects < 50)
    {
      v16 = OUTLINED_FUNCTION_75();
      if (v16)
      {
        OUTLINED_FUNCTION_32_3(v16, v17, v18, v19, v20, v21, v22, v23, v83, v84, v85);
        *v89 = v15;
        OUTLINED_FUNCTION_17_14();
        OUTLINED_FUNCTION_39_5();
        _os_log_error_impl(v56, v57, v58, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v59, 0x12u);
        ParamID = valuePtr;
      }
    }

    if (OUTLINED_FUNCTION_106())
    {
      *buf = 67109120;
      *v89 = ParamID;
      OUTLINED_FUNCTION_74_0();
      _os_log_debug_impl(v52, v53, v54, "msgParamID: %d", v55, 8u);
      ParamID = valuePtr;
    }

    if (ParamID > 1)
    {
      v27 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 50)
      {
        v28 = *(gLogObjects + 392);
      }

      else
      {
        v29 = OUTLINED_FUNCTION_75();
        v28 = &_os_log_default;
        if (v29)
        {
          OUTLINED_FUNCTION_32_3(v29, v30, v31, v32, v33, v34, v35, v36, v83, v84, v85);
          *v89 = v27;
          OUTLINED_FUNCTION_17_14();
          OUTLINED_FUNCTION_39_5();
          _os_log_error_impl(v60, v61, v62, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v63, 0x12u);
          v28 = &_os_log_default;
        }
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v37 = valuePtr;
        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        *v89 = v37;
        *&v89[4] = 1024;
        *&v89[6] = MsgID;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
      }
    }

    else
    {
      v24 = iAP2MsgCopyDataAsCFString(NextParam, &v86);
      if (!v86)
      {
        goto LABEL_29;
      }

      v25 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 50)
      {
        v26 = *(gLogObjects + 392);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_75();
        v26 = &_os_log_default;
        if (v39)
        {
          OUTLINED_FUNCTION_32_3(v39, v40, v41, v42, v43, v44, v45, v46, v83, v84, v85);
          *v89 = v25;
          OUTLINED_FUNCTION_17_14();
          OUTLINED_FUNCTION_39_5();
          _os_log_error_impl(v64, v65, v66, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v67, 0x12u);
          v26 = &_os_log_default;
        }
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        if (!v24)
        {
          goto LABEL_40;
        }

LABEL_30:
        if (v13 || (v13 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks)) != 0)
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v48 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &valuePtr);
          v49 = v48;
          if (Mutable && v48)
          {
            CFDictionaryAddValue(Mutable, @"CARApplicationBundleIdentifierKey", v24);
            CFDictionaryAddValue(Mutable, @"appLinksSubFeature", v49);
            CFArrayAppendValue(v13, Mutable);
            goto LABEL_36;
          }

          if (Mutable)
          {
LABEL_36:
            CFRelease(Mutable);
          }

          if (v49)
          {
            CFRelease(v49);
          }
        }

        CFRelease(v24);
        goto LABEL_40;
      }

      *buf = 67109120;
      *v89 = v86;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "iAP2MsgCopyDataAsCFString failed with err: %x", buf, 8u);
      if (v24)
      {
        goto LABEL_30;
      }
    }

LABEL_40:
    v50 = OUTLINED_FUNCTION_26_1();
    NextParam = iAP2MsgGetNextParam(v50, v51, NextParam);
  }

  while (NextParam);
  v68 = v84;
  if (!v13)
  {
    return 0;
  }

  result = CFArrayGetCount(v13);
  if (result)
  {
    v69 = *(v84 + 72);
    if (v69)
    {
      CFRelease(v69);
    }

    *(v84 + 72) = v13;
    v70 = gLogObjects;
    v71 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v72 = *(gLogObjects + 392);
    }

    else
    {
      v72 = &_os_log_default;
      v73 = OUTLINED_FUNCTION_13();
      if (v73)
      {
        OUTLINED_FUNCTION_32_3(v73, v74, v75, v76, v77, v78, v79, v80, v83, v84, v85);
        *v89 = v70;
        *&v89[8] = 1024;
        LODWORD(v90) = v71;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v82, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        v13 = *(v68 + 72);
      }
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v81 = *(v83 + 8);
      *buf = 138412546;
      *v89 = v81;
      *&v89[8] = 2112;
      v90 = v13;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "EndpointUUID: %@ received app icon list: %@", buf, 0x16u);
      v13 = *(v68 + 72);
    }

    return platform_appLinks_requestAppIcons(*(v83 + 8), v13);
  }

  return result;
}

uint64_t iap2_appLinks_appLinksUpdateHandler(void *a1, CFDictionaryRef theDict)
{
  v204 = 0;
  valuePtr = 0;
  if (!a1)
  {
    return 0;
  }

  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"appLinksState");
  theArray = CFDictionaryGetValue(theDict, @"appList");
  v5 = CFDictionaryGetValue(theDict, @"appLinksSubFeature");
  if (!Value)
  {
    return 0;
  }

  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  if (!theArray)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
  CFNumberGetValue(v6, kCFNumberIntType, &v204);
  v7 = OUTLINED_FUNCTION_21_7();
  Feature = iap2_feature_getFeature(v7, v8);
  if (!Feature)
  {
    return 0;
  }

  v10 = v204;
  if (v204 == 1)
  {
    *(Feature + 32) = valuePtr;
    v11 = 1;
  }

  else if (v204)
  {
    v12 = gLogObjects;
    if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v206 = v12;
      OUTLINED_FUNCTION_5_27();
      OUTLINED_FUNCTION_35(&_mh_execute_header, v163, v164, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    if (OUTLINED_FUNCTION_17())
    {
      *buf = 136315394;
      *v206 = "_setStateForSubFeature";
      OUTLINED_FUNCTION_17_0();
      v207[0] = v10;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v159, v160, "%s Invalid subFeature: %d", buf);
    }

    v11 = v204;
  }

  else
  {
    v11 = 0;
    *(Feature + 8) = valuePtr;
  }

  if (!*a1)
  {
    return 0;
  }

  v13 = gLogObjects;
  if (gLogObjects)
  {
    v14 = gNumLogObjects <= 49;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (v11 == 1)
  {
    if (!v15 && OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v206 = v13;
      OUTLINED_FUNCTION_5_27();
      OUTLINED_FUNCTION_35(&_mh_execute_header, v167, v168, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v31 = OUTLINED_FUNCTION_9_3();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = a1[1];
      *buf = 138412290;
      *v206 = v33;
      OUTLINED_FUNCTION_33_5();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    }

    v39 = OUTLINED_FUNCTION_21_7();
    v41 = iap2_feature_getFeature(v39, v40);
    if (!v41)
    {
      return 0;
    }

    v42 = v41;
    OUTLINED_FUNCTION_32_5();
    if (!v90 || *(v42 + 44) != 1)
    {
      return 0;
    }

    v43 = gLogObjects;
    if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      *v206 = v43;
      OUTLINED_FUNCTION_5_27();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v170, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    if (OUTLINED_FUNCTION_76_1())
    {
      Count = CFArrayGetCount(theArray);
      *buf = 134217984;
      *v206 = Count;
      OUTLINED_FUNCTION_40_5();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
    }

    if (CFArrayGetCount(theArray))
    {
      v161 = OUTLINED_FUNCTION_9_3();
      LODWORD(v197) = _calculateListCap(v161, v162, theArray);
    }

    else
    {
      LODWORD(v197) = 0;
    }

    OUTLINED_FUNCTION_3_28();
    v51 = OUTLINED_FUNCTION_6_11();
    v54 = iAP2MsgAddU8Param(v51, v52, 3, v53);
    v55 = v54;
    if (*(v42 + 32) == 2)
    {
      v56 = OUTLINED_FUNCTION_6_11();
      if (!(iAP2MsgAddU16Param(v56, v57, 5, v197) | v55))
      {
LABEL_72:
        if (!CFArrayGetCount(theArray))
        {
          return 0;
        }

        v200 = _iAP2MessageCutoffSize(a1);
        OUTLINED_FUNCTION_3_28();
        if (!v197)
        {
          return 0;
        }

        v59 = 0;
        HIDWORD(v196) = 0;
        v60 = 0;
        allocator = kCFAllocatorDefault;
        v61 = (v197 - 1);
        v195 = v61;
        v62 = v197;
        *&v58 = 67109376;
        *v184 = v58;
        *&v58 = 67109632;
        v190 = v58;
        *&v58 = 134218240;
        *cfa = v58;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v59);
          if (!ValueAtIndex)
          {
            goto LABEL_106;
          }

          v64 = ValueAtIndex;
          v65 = iAP2MsgAddGroupParam((a1 + 15), 4);
          if (v65)
          {
            ++v60;
          }

          iAP2MsgAddU16Param((a1 + 15), v65, 0, v59);
          CFDictionaryGetValue(v64, @"CARApplicationBundleIdentifierKey");
          OUTLINED_FUNCTION_46_3();
          OUTLINED_FUNCTION_40_5();
          iAP2MsgAddCFStringParam(v66, v67, v68, v69);
          CFDictionaryGetValue(v64, @"CARApplicationLocalizedNameKey");
          v70 = OUTLINED_FUNCTION_46_3();
          iAP2MsgAddCFStringParam(v70, v65, 2, v71);
          if (*(v42 + 42))
          {
            v72 = CFDictionaryGetValue(v64, @"iconDataHash");
            if (v72)
            {
              v73 = v72;
              BytePtr = CFDataGetBytePtr(v72);
              Length = CFDataGetLength(v73);
              iAP2MsgAddDataParam((a1 + 15), v65, 4, BytePtr, Length);
            }

            Mutable = *(v42 + 64);
            if (!Mutable)
            {
              Mutable = CFSetCreateMutable(allocator, 1, &kCFTypeSetCallBacks);
              *(v42 + 64) = Mutable;
            }

            v77 = CFDictionaryGetValue(v64, @"CARApplicationBundleIdentifierKey");
            CFSetAddValue(Mutable, v77);
          }

          MsgLen = iAP2MsgGetMsgLen((a1 + 15));
          v79 = gLogObjects;
          v80 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 50)
          {
            v81 = *(gLogObjects + 392);
          }

          else
          {
            v81 = &_os_log_default;
            if (OUTLINED_FUNCTION_27())
            {
              *buf = cfa[0];
              *v206 = v79;
              OUTLINED_FUNCTION_17_0();
              v207[0] = v80;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }
          }

          v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG);
          if (v82)
          {
            *buf = v184[0];
            *v206 = MsgLen;
            OUTLINED_FUNCTION_30_8(v82, v83, v84, v85, v86, v87, v88, v89, v175, v177, v178, v180, cfa[0], cfa[1], v184[0], v184[1], allocator, allocator_8, v190, *(&v190 + 1), v193, v195, v196, v197, v199, v200);
            _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "messageSize: %d bytes, messageCutoffSize: %d bytes", v98, 0xEu);
          }

          v90 = MsgLen > v200 || v61 == v59;
          if (!v90)
          {
            goto LABEL_106;
          }

          v91 = gLogObjects;
          v92 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_27())
          {
            *buf = cfa[0];
            *v206 = v91;
            OUTLINED_FUNCTION_17_0();
            v207[0] = v92;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          if (OUTLINED_FUNCTION_76_1())
          {
            OUTLINED_FUNCTION_33_7(WORD2(v196), *&v190);
            *&v206[6] = v59 + 1;
            LOWORD(v207[0]) = v93;
            *(v207 + 2) = v197;
            OUTLINED_FUNCTION_40_5();
            _os_log_impl(v94, v95, v96, "Sending AppLinksUpdate message (%d, entry: %d/%d)", v97, 0x14u);
            ++HIDWORD(v196);
          }

          if (!v60)
          {
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_53_2();
          if (v59 < v195)
          {
            break;
          }

LABEL_106:
          if (v62 == ++v59)
          {
            return 0;
          }
        }

        OUTLINED_FUNCTION_3_28();
LABEL_105:
        v60 = 0;
        goto LABEL_106;
      }
    }

    else if (!v54)
    {
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_53_2();
    goto LABEL_72;
  }

  if (v11)
  {
    if (v15)
    {
      v16 = *(gLogObjects + 392);
    }

    else
    {
      v16 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        *v206 = v13;
        OUTLINED_FUNCTION_5_27();
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v169, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (OUTLINED_FUNCTION_13())
    {
      *buf = 136315394;
      *v206 = "_sendAppLinksUpdateForSubFeature";
      OUTLINED_FUNCTION_17_0();
      v207[0] = v11;
      OUTLINED_FUNCTION_10(&_mh_execute_header, v16, v44, "%s Invalid subFeature: %d", buf);
    }
  }

  else
  {
    if (!v15 && OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v206 = v13;
      OUTLINED_FUNCTION_5_27();
      OUTLINED_FUNCTION_35(&_mh_execute_header, v165, v166, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v17 = OUTLINED_FUNCTION_9_3();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = a1[1];
      *buf = 138412290;
      *v206 = v19;
      OUTLINED_FUNCTION_33_5();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    }

    v25 = OUTLINED_FUNCTION_21_7();
    v27 = iap2_feature_getFeature(v25, v26);
    if (v27)
    {
      v28 = v27;
      OUTLINED_FUNCTION_32_5();
      if (v90 && *(v28 + 20) == 1)
      {
        v29 = iap2_accAuthentication_copyCertificateSerial(a1);
        if (v29)
        {
          cf = v29;
          if ((platform_CarPlay_isCarPlayPairedWithCertSerial(v29) & 1) == 0)
          {
            v173 = logObjectForModule_26();
            if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "Accessory is not paired to CarPlay, app links are unavailable!", buf, 2u);
            }

LABEL_183:
            CFRelease(cf);
            return 0;
          }

          v30 = gLogObjects;
          if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_17())
          {
            *buf = 134218240;
            *v206 = v30;
            OUTLINED_FUNCTION_5_27();
            OUTLINED_FUNCTION_35(&_mh_execute_header, v171, v172, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }

          v99 = OUTLINED_FUNCTION_9_3();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = CFArrayGetCount(theArray);
            *buf = 134217984;
            *v206 = v101;
            OUTLINED_FUNCTION_33_5();
            _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
          }

          if (CFArrayGetCount(theArray))
          {
            HIDWORD(v196) = _calculateListCap(v28, 0, theArray);
          }

          else
          {
            HIDWORD(v196) = 0;
          }

          OUTLINED_FUNCTION_3_28();
          v107 = OUTLINED_FUNCTION_6_11();
          v110 = iAP2MsgAddU8Param(v107, v108, 0, v109);
          v111 = v110;
          if (*(v28 + 8) == 2)
          {
            v112 = OUTLINED_FUNCTION_6_11();
            if (!(iAP2MsgAddU16Param(v112, v113, 2, HIDWORD(v196)) | v111))
            {
              goto LABEL_119;
            }
          }

          else if (!v110)
          {
LABEL_119:
            if (CFArrayGetCount(theArray))
            {
              v201 = _iAP2MessageCutoffSize(a1);
              OUTLINED_FUNCTION_3_28();
              if (HIDWORD(v196))
              {
                v115 = 0;
                LODWORD(v194) = 0;
                v116 = 0;
                v185 = kCFAllocatorDefault;
                v198 = (HIDWORD(v196) - 1);
                v191 = v198;
                v117 = HIDWORD(v196);
                *&v114 = 67109376;
                v179 = v114;
                *&v114 = 67109632;
                *allocatora = v114;
                *&v114 = 134218240;
                v176 = v114;
                while (1)
                {
                  v118 = CFArrayGetValueAtIndex(theArray, v115);
                  if (v118)
                  {
                    v119 = v118;
                    v120 = iAP2MsgAddGroupParam((a1 + 15), 1);
                    if (v120)
                    {
                      ++v116;
                    }

                    v121 = CFDictionaryGetValue(v119, @"CARApplicationCategoryKey");
                    if (!v121)
                    {
                      goto LABEL_183;
                    }

                    v122 = v121;
                    iAP2MsgAddU16Param((a1 + 15), v120, 0, v115);
                    if (CFStringCompare(v122, @"audio", 0))
                    {
                      if (CFStringCompare(v122, @"calling", 0))
                      {
                        if (CFStringCompare(v122, @"messaging", 0))
                        {
                          if (CFStringCompare(v122, @"navigation", 0))
                          {
                            if (CFStringCompare(v122, @"automaker", 0))
                            {
                              if (CFStringCompare(v122, @"quick ordering", 0))
                              {
                                if (CFStringCompare(v122, @"charging", 0))
                                {
                                  if (CFStringCompare(v122, @"parking", 0))
                                  {
                                    if (CFStringCompare(v122, @"productivity", 0))
                                    {
                                      if (CFStringCompare(v122, @"fueling", 0))
                                      {
                                        if (CFStringCompare(v122, @"driving task", 0))
                                        {
                                          v123 = 0;
                                        }

                                        else
                                        {
                                          v123 = 12;
                                        }
                                      }

                                      else
                                      {
                                        v123 = 11;
                                      }
                                    }

                                    else
                                    {
                                      v123 = 10;
                                    }
                                  }

                                  else
                                  {
                                    v123 = 9;
                                  }
                                }

                                else
                                {
                                  v123 = 8;
                                }
                              }

                              else
                              {
                                v123 = 7;
                              }
                            }

                            else
                            {
                              v123 = 5;
                            }
                          }

                          else
                          {
                            v123 = 3;
                          }
                        }

                        else
                        {
                          v123 = 1;
                        }
                      }

                      else
                      {
                        v123 = 2;
                      }
                    }

                    else
                    {
                      v123 = 4;
                    }

                    iAP2MsgAddU16Param((a1 + 15), v120, 3, v123);
                    CFDictionaryGetValue(v119, @"CARApplicationBundleIdentifierKey");
                    OUTLINED_FUNCTION_46_3();
                    OUTLINED_FUNCTION_33_5();
                    iAP2MsgAddCFStringParam(v124, v125, v126, v127);
                    CFDictionaryGetValue(v119, @"CARApplicationLocalizedNameKey");
                    v128 = OUTLINED_FUNCTION_46_3();
                    iAP2MsgAddCFStringParam(v128, v120, 2, v129);
                    if (*(v28 + 18))
                    {
                      v130 = CFDictionaryGetValue(v119, @"iconDataHash");
                      if (v130)
                      {
                        v131 = v130;
                        v132 = CFDataGetBytePtr(v130);
                        v133 = CFDataGetLength(v131);
                        iAP2MsgAddDataParam((a1 + 15), v120, 4, v132, v133);
                      }

                      v134 = *(v28 + 56);
                      if (!v134)
                      {
                        v134 = CFSetCreateMutable(v185, 1, &kCFTypeSetCallBacks);
                        *(v28 + 56) = v134;
                      }

                      v135 = CFDictionaryGetValue(v119, @"CARApplicationBundleIdentifierKey");
                      CFSetAddValue(v134, v135);
                    }

                    v136 = iAP2MsgGetMsgLen((a1 + 15));
                    v137 = gLogObjects;
                    v138 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 50)
                    {
                      v139 = *(gLogObjects + 392);
                    }

                    else
                    {
                      v139 = &_os_log_default;
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        *buf = v176;
                        *v206 = v137;
                        OUTLINED_FUNCTION_17_0();
                        v207[0] = v138;
                        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                      }
                    }

                    v140 = os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG);
                    if (v140)
                    {
                      *buf = v179;
                      *v206 = v136;
                      OUTLINED_FUNCTION_30_8(v140, v141, v142, v143, v144, v145, v146, v147, v176, *(&v176 + 1), v179, *(&v179 + 1), cf, cf_8, v185, v186, allocatora[0], allocatora[1], v191, v192, v193, v194, v196, v198, v199, v201);
                      _os_log_debug_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEBUG, "messageSize: %d bytes, messageCutoffSize: %d bytes", v158, 0xEu);
                    }

                    if (v136 > v201 || v198 == v115)
                    {
                      v149 = gLogObjects;
                      v150 = gNumLogObjects;
                      if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_17())
                      {
                        *buf = v176;
                        *v206 = v149;
                        OUTLINED_FUNCTION_17_0();
                        v207[0] = v150;
                        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                      }

                      v151 = OUTLINED_FUNCTION_9_3();
                      if (os_log_type_enabled(v151, v152))
                      {
                        OUTLINED_FUNCTION_33_7(v194, *allocatora);
                        *&v206[6] = v115 + 1;
                        LOWORD(v207[0]) = v153;
                        *(v207 + 2) = HIDWORD(v196);
                        OUTLINED_FUNCTION_33_5();
                        _os_log_impl(v154, v155, v156, "Sending AppLinksUpdate message (%d, entry: %d/%d)", v157, 0x14u);
                        LODWORD(v194) = v194 + 1;
                      }

                      if (!v116)
                      {
                        goto LABEL_176;
                      }

                      OUTLINED_FUNCTION_53_2();
                      if (v115 < v191)
                      {
                        break;
                      }
                    }
                  }

LABEL_177:
                  if (v117 == ++v115)
                  {
                    goto LABEL_183;
                  }
                }

                OUTLINED_FUNCTION_3_28();
LABEL_176:
                v116 = 0;
                goto LABEL_177;
              }
            }

            goto LABEL_183;
          }

          OUTLINED_FUNCTION_53_2();
          goto LABEL_119;
        }
      }
    }
  }

  return 0;
}

uint64_t iap2_appLinks_appLinksAppIconHandler(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = OUTLINED_FUNCTION_21_7();
      result = iap2_feature_getFeature(v5, v6);
      if (result)
      {
        v7 = result;
        Mutable = *(result + 96);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          *(v7 + 96) = Mutable;
        }

        CFArrayAppendValue(Mutable, a2);
        _appLinksProcessAppIcon(a1);
        return 1;
      }
    }
  }

  return result;
}

uint64_t _appLinksProcessAppIcon(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = iap2_feature_getFeature(result, 0x18u);
    if (result)
    {
      v2 = result;
      pthread_mutex_lock(&_gIconLock);
      if (CFArrayGetCount(*(v2 + 96)) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 96), 0);
        v4 = CFRetain(ValueAtIndex);
        CFArrayRemoveValueAtIndex(*(v2 + 96), 0);
        v5 = *(v2 + 48);
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 0x40000000;
        v6[2] = ___appLinksProcessAppIcon_block_invoke;
        v6[3] = &__block_descriptor_tmp_14;
        v6[4] = v1;
        v6[5] = v4;
        dispatch_async(v5, v6);
      }

      return pthread_mutex_unlock(&_gIconLock);
    }
  }

  return result;
}

_BYTE *_createFeature_17(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x10600409A92A957uLL);
  v3 = v2;
  if (v2)
  {
    v2[104] = 0;
    v2[20] = 0;
    *v2 = 0;
    *(v2 + 4) = 0;
    v2[44] = 0;
    *(v2 + 3) = 0;
    *(v2 + 10) = 0;
    v4 = dispatch_queue_create("com.apple.accessoryd.appLinks.iconQueue", 0);
    *(v3 + 7) = 0;
    *(v3 + 8) = 0;
    *(v3 + 6) = v4;
    *(v3 + 10) = 0;
    *(v3 + 22) = 0;
    iAP2LinkRegisterEventCallback(*(*(a1 + 32) + 24), 1u, _appLinksiAP2LinkEventNotifyHandler);
  }

  return v3;
}

uint64_t _destroyFeature_17(CFSetRef **a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *a1;
    if (*a1)
    {
      if (*(v5 + 104) == 1)
      {
        _removeSubscribers(a2, *a1);
      }

      if (*(v5 + 89) == 1)
      {
        TransferEntry = iap2_sessionFileTransfer_findTransferEntry(a2, *(v5 + 90));
        if (TransferEntry)
        {
          v7 = TransferEntry;
          v8 = *(TransferEntry + 8);
          if (v8)
          {
            iap2_sessionFileTransfer_removeTransferForFeature(a2, 24, v8);
            v9 = *(*(v7 + 8) + 64);
            if (v9)
            {
              free(v9);
              *(*(v7 + 8) + 64) = 0;
            }
          }
        }

        pthread_mutex_lock(&_gIconLock);
        *(v5 + 89) = 0;
        pthread_mutex_unlock(&_gIconLock);
      }

      v10 = v5[10];
      if (v10)
      {
        CFRelease(v10);
        v5[10] = 0;
      }

      *(v5 + 45) = 0;
      if (*v5)
      {
        CFRelease(*v5);
        *v5 = 0;
      }

      v11 = v5[3];
      if (v11)
      {
        CFRelease(v11);
        v5[3] = 0;
      }

      v12 = v5[9];
      if (v12)
      {
        CFRelease(v12);
        v5[9] = 0;
      }

      v13 = v5[12];
      if (v13)
      {
        CFRelease(v13);
        v5[12] = 0;
      }

      v14 = v5[7];
      if (v14)
      {
        CFRelease(v14);
        v5[7] = 0;
      }

      v15 = v5[8];
      if (v15)
      {
        CFRelease(v15);
        v5[8] = 0;
      }

      v16 = v5[6];
      if (v16)
      {
        dispatch_release(v16);
        v5[6] = 0;
      }

      if (*a1)
      {
        free(*a1);
        *a1 = 0;
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

void _appLinksiAP2LinkEventNotifyHandler(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1 || a2 != 1)
  {
    return;
  }

  if (a3)
  {
    v5 = *(a3 + 64);
  }

  else
  {
    v5 = 0;
  }

  if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v25, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v27, v28, v29, v30);
  }

  if (!OUTLINED_FUNCTION_75_0())
  {
    if (!a3)
    {
      return;
    }

LABEL_12:
    if (!*(a3 + 64))
    {
      return;
    }

    if (*(a3 + 112) != 8)
    {
      return;
    }

    v6 = *(a1 + 176);
    if (!v6)
    {
      return;
    }

    v7 = *(v6 + 16);
    if (!v7 || !v5)
    {
      return;
    }

    v8 = *(a3 + 104);
    if (v8 == 2)
    {
      if (v5[2] != 1)
      {
LABEL_38:
        if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_20_2();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v39, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41, v42, v43, v44);
        }

        v9 = OUTLINED_FUNCTION_75_0();
        v10 = *(a3 + 104);
        if (v9)
        {
          OUTLINED_FUNCTION_6_0();
          _os_log_debug_impl(v35, v36, OS_LOG_TYPE_DEBUG, v37, v38, 0x20u);
          v10 = *(a3 + 104);
        }

        v5[1] = v10 == 1;
        if (*v5 == 1)
        {
          if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v47, v48, v49, v50);
          }

          v11 = OUTLINED_FUNCTION_9_3();
          if (os_log_type_enabled(v11, v12))
          {
            OUTLINED_FUNCTION_12_15();
            OUTLINED_FUNCTION_0_19();
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v20, v21, OS_LOG_TYPE_INFO, v22, v23, 0x14u);
          }

          *v5 = 0;
          iAP2FileTransferCancel(a3, v13, v14, v15, v16, v17, v18, v19);
          iap2_sessionFileTransfer_removeTransferForFeature(v7, 24, a3);
          v24 = *(a3 + 64);
          if (v24)
          {
            free(v24);
            *(a3 + 64) = 0;
          }
        }

        return;
      }

      if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_20_2();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v59, v60, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v61, v62, v63, v64);
        v8 = *(a3 + 104);
      }

      else
      {
        v8 = 2;
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        OUTLINED_FUNCTION_0_19();
        OUTLINED_FUNCTION_6_0();
        _os_log_debug_impl(v51, v52, OS_LOG_TYPE_DEBUG, v53, v54, 0x20u);
        v8 = *(a3 + 104);
      }

      v5[3] = 1;
    }

    if (v8 == 3 && v5[1] == 1)
    {
      if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_20_2();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v65, v66, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v67, v68, v69, v70);
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        OUTLINED_FUNCTION_12_15();
        OUTLINED_FUNCTION_0_19();
        OUTLINED_FUNCTION_6_0();
        _os_log_debug_impl(v55, v56, OS_LOG_TYPE_DEBUG, v57, v58, 0x20u);
      }

      v5[2] = 1;
    }

    goto LABEL_38;
  }

  obfuscatedPointer(a3);
  if (a3)
  {
    obfuscatedPointer(*(a3 + 64));
  }

  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v31, v32, OS_LOG_TYPE_DEBUG, v33, v34, 0x3Au);
  if (a3)
  {
    goto LABEL_12;
  }
}

uint64_t _calculateListCap(uint64_t a1, int a2, CFArrayRef theArray)
{
  v3 = 0;
  if (a1 && theArray)
  {
    v4 = 40;
    if (!a2)
    {
      v4 = 16;
    }

    v5 = *(a1 + v4);
    Count = CFArrayGetCount(theArray);
    v7 = Count;
    if (Count <= v5 || v5 == 0)
    {
      v3 = Count;
    }

    else
    {
      v3 = v5;
    }

    v9 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v10 = *(gLogObjects + 392);
    }

    else
    {
      v10 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_3();
        HIDWORD(v20) = v9;
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v12, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17);
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18[0] = 67109888;
      v18[1] = v3;
      v19 = 2048;
      v20 = v7;
      v21 = 1024;
      v22 = 0;
      v23 = 1024;
      v24 = v5;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "listCap: %d (listCount: %ld, hardCap: %d, listMax: %d)", v18, 0x1Eu);
    }
  }

  return v3;
}

void _appLinksAppIconResponse(uint64_t *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  if (!*a1)
  {
    return;
  }

  v4 = OUTLINED_FUNCTION_21_7();
  Feature = iap2_feature_getFeature(v4, v5);
  if (!Feature)
  {
    return;
  }

  v7 = Feature;
  OUTLINED_FUNCTION_32_5();
  if (!v8)
  {
    return;
  }

  Count = CFDictionaryGetCount(a2);
  if (!Count)
  {
    return;
  }

  v10 = 8 * Count;
  __chkstk_darwin(Count);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = memset(v11, 170, v10);
  __chkstk_darwin(v12);
  memset(v11, 170, v10);
  CFDictionaryGetKeysAndValues(a2, v11, v11);
  v13 = *v11;
  if (!*v11)
  {
    return;
  }

  v14 = *v11;
  Value = CFDictionaryGetValue(*v11, @"iconData");
  v16 = CFDictionaryGetValue(v14, @"iconDataHash");
  v17 = *(v7 + 56);
  if ((v17 && CFSetContainsValue(v17, v13) || (v18 = *(v7 + 64)) != 0 && CFSetContainsValue(v18, v13)) && Value && v16 && CFDataGetLength(Value) && CFDataGetLength(v16))
  {
    if (*(v7 + 88))
    {
      CFArrayInsertValueAtIndex(*(v7 + 96), 0, a2);
      return;
    }

    v25 = OUTLINED_FUNCTION_6_7();
    v26 = malloc_type_malloc(0xFFFFuLL, 0x1E209B37uLL);
    pthread_mutex_lock(&_gIconLock);
    *(v7 + 88) = 1;
    pthread_mutex_unlock(&_gIconLock);
    if (*(v7 + 89) == 1)
    {
      TransferEntry = iap2_sessionFileTransfer_findTransferEntry(a1, *(v7 + 90));
      if (TransferEntry)
      {
        v28 = *(TransferEntry + 8);
        if (v28)
        {
          _cancelPendingTransfer(v28);
        }
      }

      pthread_mutex_lock(&_gIconLock);
      *(v7 + 89) = 0;
      pthread_mutex_unlock(&_gIconLock);
    }

    v29 = a1[4];
    if (!v29 || (v30 = *(v29 + 24)) == 0)
    {
LABEL_54:
      pthread_mutex_lock(&_gIconLock);
      *(v7 + 88) = 0;
      pthread_mutex_unlock(&_gIconLock);
      if (v25)
      {
        free(v25);
      }

      if (v26)
      {
        free(v26);
      }

      return;
    }

    v31 = v25;
    v32 = v26;
    SessionForService = iAP2LinkGetSessionForService(v30, 1);
    pthread_mutex_lock(&_gIconLock);
    BufferID = iAP2FileTransferAllocateBufferID(*(a1[4] + 24), SessionForService, (v7 + 90));
    pthread_mutex_unlock(&_gIconLock);
    if (BufferID)
    {
      pthread_mutex_lock(&_gIconLock);
      *(v7 + 89) = 1;
      pthread_mutex_unlock(&_gIconLock);
      v35 = *(v7 + 80);
      if (v35)
      {
        CFRelease(v35);
        *(v7 + 80) = 0;
      }

      *(v7 + 80) = CFRetain(Value);
      *(v7 + 91) = 8;
      v36 = malloc_type_malloc(0x138uLL, 0x10B00402C7498C8uLL);
      v26 = v32;
      v25 = v31;
      if (v36)
      {
        v37 = v36;
        iAP2FileTransferCreate(*(a1[4] + 24), SessionForService, *(v7 + 90), 0, 0, 0, v36, iap2_sessionFileTransfer_deleteFileTransfer);
        memset(buf, 170, 0xA8uLL);
        *buf = CFStringGetLength(v13) + 1;
        CFStringGetCString(v13, &buf[8], *buf, 0x8000100u);
        buf[162] = 0;
        iAP2FileTransferTypeData(v37, 8u, buf);
        v38 = OUTLINED_FUNCTION_21_7();
        if (iap2_sessionFileTransfer_addTransferForFeature(v38, v39, v37, 0))
        {
          v40 = malloc_type_malloc(0x10uLL, 0x102004075F474C6uLL);
          *v40 = a1;
          v40[8] = *(v7 + 90);
          *(v40 + 3) = 8;
          v41 = logObjectForModule_26();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = a1[1];
            v68 = 136315650;
            v69 = "_appLinksAppIconResponse";
            v70 = 1024;
            v71 = 1674;
            v72 = 2112;
            v73 = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s:%d - iAP2MsgInit with cleanupCB - _appIconFileTransferIDSent endpointUUID: %@", &v68, 0x1Cu);
          }

          OUTLINED_FUNCTION_15_16();
          iAP2MsgInit(v31, 44292, v26, 0xFFFF, v43, v40);
          v44 = OUTLINED_FUNCTION_26_1();
          iAP2MsgAddCFStringParam(v44, v45, 0, v13);
          v46 = OUTLINED_FUNCTION_26_1();
          iAP2MsgAddU8Param(v46, v47, 1, 1);
          v48 = OUTLINED_FUNCTION_26_1();
          iAP2MsgAddU8Param(v48, v49, 2, v50);
          BytePtr = CFDataGetBytePtr(v16);
          CFDataGetLength(v16);
          v52 = OUTLINED_FUNCTION_26_1();
          iAP2MsgAddDataParam(v52, v53, 3, BytePtr, v54);
          if ((iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(a1, v31) & 1) == 0)
          {
            iAP2FileTransferCancel(v37, v55, v56, v57, v58, v59, v60, v61);
          }

          return;
        }

        v66 = logObjectForModule_26();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v68) = 0;
          _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "#App Links Failed to add file transfer!", &v68, 2u);
        }

        iAP2FileTransferRelease(v37);
      }

      goto LABEL_54;
    }

    v63 = gLogObjects;
    v64 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v65 = *(gLogObjects + 392);
    }

    else
    {
      v65 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        *&buf[4] = v63;
        OUTLINED_FUNCTION_27_6();
        *&buf[14] = v64;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v67, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (OUTLINED_FUNCTION_13())
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "#App Links Failed to allocate file transfer buffer ID!", buf, 2u);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_6_7();
    v20 = malloc_type_malloc(0xFFFFuLL, 0xCB883CF4uLL);
    v21 = gLogObjects;
    v22 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v23 = *(gLogObjects + 392);
    }

    else
    {
      v23 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v21;
        OUTLINED_FUNCTION_27_6();
        *&buf[14] = v22;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v62, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "_appLinksAppIconResponse";
      OUTLINED_FUNCTION_27_6();
      *&buf[14] = 1727;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s:%d - iAP2MsgInit with cleanupCB - _appIconFileTransferIDSent", buf, 0x12u);
    }

    OUTLINED_FUNCTION_15_16();
    iAP2MsgInit(v19, 44292, v20, 0xFFFF, v24, 0);
    iAP2MsgAddCFStringParam(v19, 0, 0, v13);
    iAP2MsgAddU8Param(v19, 0, 1, 0);
    iap2_sessionControl_sendOutgoingMessage(a1, v19);
  }
}

void _cancelPendingTransfer(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 50)
  {
    v2 = *(gLogObjects + 392);
  }

  else
  {
    v2 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v39, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v41, v42, v43, v44);
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_0_19();
    WORD1(v59) = v3;
    OUTLINED_FUNCTION_49_4(&_mh_execute_header, v4, v5, "_cancelPendingTransfer fileXfer(ID=%u type=%d state=%d)", v6, v7, v8, v9);
  }

  v10 = *(*a1 + 176);
  if (v10)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(a1 + 64);
      if (v12)
      {
        *v12 = 1;
        v13 = *(a1 + 104);
        if (v13 != 2 && v12[3] != 1)
        {
LABEL_13:
          if (v13)
          {
            if (v13 == 5)
            {
              if (v12)
              {
                *v12 = 0;
              }
            }
          }

          else
          {
            v30 = gLogObjects;
            v31 = HIWORD(gNumLogObjects);
            if (gLogObjects && gNumLogObjects >= 50)
            {
              v32 = *(gLogObjects + 392);
            }

            else
            {
              v32 = &_os_log_default;
              if (OUTLINED_FUNCTION_21())
              {
                LODWORD(v58) = 134218240;
                HIDWORD(v58) = v30;
                OUTLINED_FUNCTION_3();
                LOWORD(v59) = v31;
                OUTLINED_FUNCTION_26_0(&_mh_execute_header, v51, v52, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v53, v54, v55, v56, v58, HIDWORD(v30), v59);
              }
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              OUTLINED_FUNCTION_12_15();
              OUTLINED_FUNCTION_0_19();
              OUTLINED_FUNCTION_49_4(&_mh_execute_header, v33, v34, "_cancelPendingTransfer: Call Start fileXfer(ID=%u type=%d state=%d)", v35, v36, v37, v38);
            }

            iAP2FileTransferStart(a1, 0, 0, 0, _appIconFileTransferEndHandler, 0, 0, 0);
          }

          return;
        }
      }

      else
      {
        v13 = *(a1 + 104);
        if (v13 != 2)
        {
          goto LABEL_13;
        }
      }

      v14 = gLogObjects;
      v15 = HIWORD(gNumLogObjects);
      if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_17())
      {
        LODWORD(v57) = 134218240;
        HIDWORD(v57) = v14;
        OUTLINED_FUNCTION_3();
        LOWORD(v59) = v15;
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v47, v48, v49, v50, v57, HIDWORD(v14), v59);
      }

      v16 = OUTLINED_FUNCTION_9_3();
      if (os_log_type_enabled(v16, v17))
      {
        OUTLINED_FUNCTION_12_15();
        OUTLINED_FUNCTION_0_19();
        OUTLINED_FUNCTION_6_0();
        _os_log_impl(v25, v26, OS_LOG_TYPE_INFO, v27, v28, 0x14u);
      }

      if (v12)
      {
        *v12 = 0;
      }

      iAP2FileTransferCancel(a1, v18, v19, v20, v21, v22, v23, v24);
      iap2_sessionFileTransfer_removeTransferForFeature(v11, 24, a1);
      v29 = *(a1 + 64);
      if (v29)
      {
        free(v29);
        *(a1 + 64) = 0;
      }
    }
  }
}

BOOL _appIconFileTransferEndHandler(uint64_t a1, void *a2)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v4 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    *v89 = v4;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v43, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v45, v46, v47, v48);
  }

  v5 = OUTLINED_FUNCTION_9_3();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(a1 + 104);
    v86 = 67109120;
    LODWORD(v87) = v7;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v8, v9, OS_LOG_TYPE_INFO, v10, v11, 8u);
  }

  v12 = *(*a1 + 176);
  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(v13, 0x18u);
  if (!Feature || !*a1)
  {
    return 0;
  }

  v15 = Feature;
  v16 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_3();
    *v89 = v16;
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v86);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_70();
    v88 = 1024;
    *v89 = v17;
    *&v89[4] = 1024;
    *&v89[6] = v18;
    v90 = 2048;
    v91 = v19;
    v92 = 1024;
    OUTLINED_FUNCTION_42_4();
    v97 = v20;
    OUTLINED_FUNCTION_40_5();
    _os_log_impl(v21, v22, v23, v24, v25, 0x34u);
  }

  v26 = *(a1 + 104);
  if (v26 > 7 || ((1 << v26) & 0xD0) == 0)
  {
    v33 = gLogObjects;
    v34 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 50) && OUTLINED_FUNCTION_21())
    {
      v86 = 134218240;
      v87 = v33;
      OUTLINED_FUNCTION_3();
      *v89 = v34;
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v80, v81, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v82, v83, v84, v85);
    }

    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_70();
      v88 = 1024;
      *v89 = v63;
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v64, v65, "%{public}@ _appIconFileTransferEndHandler called with unexpected state: %d!", v66, v67, v68, v69);
    }

    return 0;
  }

  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  v27 = *(*a1 + 176);
  if (!v27)
  {
    return 0;
  }

  v28 = *(v27 + 16);
  if (!v28)
  {
    return 0;
  }

  v29 = iap2_sessionFileTransfer_removeTransferForFeature(*(v27 + 16), 24, a1);
  if (!v29)
  {
    v30 = gLogObjects;
    v31 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v32 = *(gLogObjects + 392);
    }

    else
    {
      v32 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v86 = 134218240;
        v87 = v30;
        OUTLINED_FUNCTION_3();
        *v89 = v31;
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_10(v75, v76, v77, v78, v79);
      }
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v86 = 138543362;
      v87 = @"#AppIcon";
      OUTLINED_FUNCTION_40();
      _os_log_error_impl(v59, v60, OS_LOG_TYPE_ERROR, v61, v62, 0xCu);
    }
  }

  v35 = *(a1 + 109);
  v36 = *(a1 + 64);
  if (v36 == a2)
  {
    if (a2)
    {
      free(v36);
      *(a1 + 64) = 0;
    }
  }

  else
  {
    v37 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v38 = *(gLogObjects + 392);
    }

    else
    {
      v38 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_20_2();
        *v89 = v37;
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_10(v70, v71, v72, v73, v74);
      }
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      v86 = 138545154;
      v87 = @"#AppIcon";
      v88 = 2080;
      *v89 = "_handleFileTransferEnd";
      OUTLINED_FUNCTION_24_8();
      v93 = v50;
      v94 = v51;
      v95 = v52;
      v96 = v51;
      v97 = v53;
      v98 = v51;
      v99 = v54;
      OUTLINED_FUNCTION_40();
      _os_log_fault_impl(v55, v56, OS_LOG_TYPE_FAULT, v57, v58, 0x3Au);
    }
  }

  v39 = iap2_feature_getFeature(v28, 0x18u);
  if (v39)
  {
    v40 = v39;
    pthread_mutex_lock(&_gIconLock);
    if (*(v15 + 89) == 1 && v35 == *(v15 + 90))
    {
      v41 = *(v15 + 80);
      if (v41)
      {
        CFRelease(v41);
        *(v15 + 80) = 0;
      }

      *(v15 + 91) = 0;
      *(v15 + 89) = 0;
    }

    *(v40 + 88) = 0;
    pthread_mutex_unlock(&_gIconLock);
    _appLinksProcessAppIcon(v28);
  }

  return v29;
}

void _appIconFileTransferIDSent_cold_4(uint64_t a1, int *a2, os_log_t log)
{
  v3 = *(a1 + 109);
  v4 = *a2;
  v5 = 138544130;
  v6 = @"#AppIcon";
  v7 = 2048;
  v8 = a1;
  v9 = 1024;
  v10 = v3;
  v11 = 1024;
  v12 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}@ ignore starting transfer in non-idle state, transfer (%p id=%d state=%d)", &v5, 0x22u);
}

void _appIconFileTransferIDSent_cold_7()
{
  OUTLINED_FUNCTION_0_19();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Call Start pTransfer(ID=%u type=%d state=%d)", v2, 0x14u);
}

void _appIconFileTransferIDSent_cold_8(os_log_t log)
{
  v1 = 138543362;
  v2 = @"#AppIcon";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to start file transfer!", &v1, 0xCu);
}

void __init_logging_signpost_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
}

void platform_connectionInfo_accessoryConnectionAttached(void *a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = HIWORD(gNumLogObjects);
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 9;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v23) = 134218240;
      HIDWORD(v23) = v4;
      OUTLINED_FUNCTION_3();
      LOWORD(v24) = v5;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v19, v20, v21, v22, v23, HIDWORD(v4), v24);
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0x12u);
  }

  if (a1)
  {
    v14 = +[ACCConnectionInfoServer sharedServer];
    [v14 incrementUserCount];

    v15 = platform_connectionInfo_accessoryInfoForConnection(a1);
    v16 = platform_connectionInfo_accessoryPropertiesForConnection(a1);
    v17 = +[ACCConnectionInfoServer sharedServer];
    [v17 accessoryConnectionAttached:a1 type:a2 info:v15 properties:v16];
  }
}

void platform_connectionInfo_accessoryConnectionDetached(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 9;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17);
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(v18) = 138412290;
    HIDWORD(v18) = a1;
    OUTLINED_FUNCTION_14_12(&_mh_execute_header, v5, v6, "connectionInfo accessoryConnectionDetached: %@", v7, v8, v9, v10, v18, HIDWORD(a1));
  }

  if (a1)
  {
    v11 = +[ACCConnectionInfoServer sharedServer];
    [v11 accessoryConnectionDetached:a1];

    v12 = +[ACCConnectionInfoServer sharedServer];
    [v12 decrementUserCount];
  }
}

void platform_connectionInfo_accessoryEndpointAttached(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = gLogObjects;
  v9 = gNumLogObjects;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 9;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v20 = 134218240;
      *&v20[4] = v8;
      OUTLINED_FUNCTION_3();
      *&v20[14] = v9;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v16, v17, v18, v19, *v20, *&v20[16]);
    }

    v12 = &_os_log_default;
    v11 = &_os_log_default;
  }

  else
  {
    v12 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_83();
    *&v20[12] = 2112;
    *&v20[14] = a2;
    *&v20[22] = 1024;
    v21 = a3;
    v22 = 1024;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "connectionInfo accessoryEndpointAttached: %@ - %@ transport=%{coreacc:ACCEndpoint_TransportType_t}d protocol=%{coreacc:ACCEndpoint_Protocol_t}d", v20, 0x22u);
  }

  if (a1)
  {
    v13 = platform_connectionInfo_accessoryPropertiesForEndpoint(a1, a2);
    v14 = +[ACCConnectionInfoServer sharedServer];
    [v14 accessoryEndpointAttached:a2 transportType:a3 protocol:a4 properties:v13 forConnection:a1];
  }
}

void platform_connectionInfo_accessoryEndpointDetached()
{
  OUTLINED_FUNCTION_25();
  v2 = gLogObjects;
  v3 = HIWORD(gNumLogObjects);
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v18) = 134218240;
      HIDWORD(v18) = v2;
      OUTLINED_FUNCTION_3();
      LOWORD(v19) = v3;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, v18, HIDWORD(v2), v19);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  if (v0)
  {
    v12 = +[ACCConnectionInfoServer sharedServer];
    [v12 accessoryEndpointDetached:v1 forConnection:v0];
  }
}

void platform_connectionInfo_accessoryEndpointProtocolUpdate(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = gLogObjects;
  v7 = gNumLogObjects;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 9;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v18 = 134218240;
      *&v18[4] = v6;
      OUTLINED_FUNCTION_3();
      *&v18[14] = v7;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, *v18, *&v18[16]);
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_10_15();
    *&v18[14] = a2;
    *&v18[22] = 1024;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "connectionInfo accessoryEndpointProtocolUpdate: %@ - %@ protocol=%{coreacc:ACCEndpoint_Protocol_t}d", v18, 0x1Cu);
  }

  if (a1)
  {
    v11 = platform_connectionInfo_accessoryPropertiesForEndpoint(a1, a2);
    v12 = +[ACCConnectionInfoServer sharedServer];
    [v12 accessoryEndpointUpdate:a2 protocol:a3 properties:v11 forConnection:a1];
  }
}

void platform_connectionInfo_accessoryConnectionInfoPropertyChanged(void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 9;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17);
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(v18) = 138412290;
    HIDWORD(v18) = a1;
    OUTLINED_FUNCTION_14_12(&_mh_execute_header, v5, v6, "connectionInfo accessoryConnectionInfoPropertyChanged: %@", v7, v8, v9, v10, v18, HIDWORD(a1));
  }

  if (a1)
  {
    v11 = platform_connectionInfo_accessoryPropertiesForConnection(a1);
    v12 = +[ACCConnectionInfoServer sharedServer];
    [v12 accessoryConnectionInfoPropertyChanged:a1 properties:v11];
  }
}

void platform_connectionInfo_accessoryEndpointInfoPropertyChanged()
{
  OUTLINED_FUNCTION_25();
  v2 = gLogObjects;
  v3 = HIWORD(gNumLogObjects);
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v19) = 134218240;
      HIDWORD(v19) = v2;
      OUTLINED_FUNCTION_3();
      LOWORD(v20) = v3;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v19, HIDWORD(v2), v20);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  if (v0)
  {
    if (v1)
    {
      v12 = platform_connectionInfo_accessoryPropertiesForEndpoint(v0, v1);
      v13 = +[ACCConnectionInfoServer sharedServer];
      [v13 accessoryEndpointInfoPropertyChanged:v1 properties:v12 forConnection:v0];
    }
  }
}

CFSetRef platform_connectionInfo_accessoryEndpoints(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  ConnectionWithUUID = acc_manager_getConnectionWithUUID(a1);
  if (!ConnectionWithUUID || (ConnectionWithUUID[142] & 1) != 0)
  {
    return 0;
  }

  return acc_connection_copyEndpointUUIDs(ConnectionWithUUID);
}

uint64_t platform_connectionInfo_accessoryConnectionType(const void *a1)
{
  if (!a1)
  {
    return 11;
  }

  ConnectionWithUUID = acc_manager_getConnectionWithUUID(a1);
  if (ConnectionWithUUID)
  {
    return ConnectionWithUUID[2];
  }

  else
  {
    return 11;
  }
}

uint64_t platform_connectionInfo_endpointTransportType(uint64_t a1, const void *a2)
{
  result = 18;
  if (a1 && a2)
  {
    EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
    if (EndpointWithUUID)
    {
      return EndpointWithUUID[6];
    }

    else
    {
      return 18;
    }
  }

  return result;
}

unsigned int *platform_connectionInfo_endpointProtocol(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = acc_manager_getEndpointWithUUID(a2);
    if (result)
    {
      return result[7];
    }
  }

  return result;
}

CFDictionaryRef platform_connectionInfo_accessoryInfoForEndpoint(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
  if (!EndpointWithUUID || (EndpointWithUUID[120] & 1) != 0)
  {
    return 0;
  }

  AccessoryInfo = acc_endpoint_getAccessoryInfo(EndpointWithUUID);

  return acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
}

uint64_t platform_connectionInfo_accessoryPropertyForConnection(const void *a1, void *a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      ConnectionWithUUID = acc_manager_getConnectionWithUUID(a1);
      v2 = ConnectionWithUUID;
      if (ConnectionWithUUID)
      {
        if (ConnectionWithUUID[142])
        {
          return 0;
        }

        v5 = a2;
        if ([v5 isEqualToString:kACCExternalAccessoryMacAddressKey])
        {
          if (*(v2 + 8) != 2 || (v6 = *(v2 + 16)) == 0)
          {
            v2 = 0;
LABEL_24:

            return v2;
          }

          Copy = CFStringCreateCopy(kCFAllocatorDefault, v6);
        }

        else if ([v5 isEqualToString:kACCExternalAccessoryCertSerialNumberKey])
        {
          Copy = acc_authInfo_copyCertSerial(v2 + 48);
        }

        else if ([v5 isEqualToString:kACCExternalAccessoryCertDataKey])
        {
          Copy = acc_authInfo_copyCertData(v2 + 48);
        }

        else if ([v5 isEqualToString:kACCExternalAccessoryAuthStatusKey])
        {
          valuePtr = acc_connection_getAuthStatus(v2, 0);
          if (!valuePtr)
          {
            valuePtr = acc_connection_getAuthStatus(v2, 1u);
            if (!valuePtr)
            {
              valuePtr = acc_connection_getAuthStatus(v2, 2u);
              if (!valuePtr)
              {
                valuePtr = acc_connection_getAuthStatus(v2, 3u);
                if (!valuePtr)
                {
                  valuePtr = acc_connection_getAuthStatus(v2, 4u);
                }
              }
            }
          }

          Copy = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        }

        else
        {
          Copy = acc_connection_copyProperty(v2, v5);
        }

        v2 = Copy;
        goto LABEL_24;
      }
    }
  }

  return v2;
}

const void *platform_connectionInfo_accessoryPropertyForEndpoint(uint64_t a1, const void *a2, void *a3)
{
  v3 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
        v3 = EndpointWithUUID;
        if (EndpointWithUUID)
        {
          if (*(EndpointWithUUID + 120))
          {
            return 0;
          }

          v6 = a3;
          if ([v6 isEqualToString:kACCExternalAccessoryMacAddressKey])
          {
            if ((*(v3 + 6) & 0xFFFFFFFE) == 2)
            {
              v7 = *(v3 + 4);
              if (v7)
              {
                Copy = CFStringCreateCopy(kCFAllocatorDefault, v7);
LABEL_25:
                v3 = Copy;
                goto LABEL_26;
              }
            }
          }

          else
          {
            if ([v6 isEqualToString:kACCExternalAccessoryCertSerialNumberKey])
            {
              Copy = acc_authInfo_copyCertSerial(*v3 + 48);
              goto LABEL_25;
            }

            if ([v6 isEqualToString:kACCExternalAccessoryCertDataKey])
            {
              Copy = acc_authInfo_copyCertData(*v3 + 48);
              goto LABEL_25;
            }

            if (![v6 isEqualToString:kACCExternalAccessoryAuthStatusKey])
            {
              Copy = acc_endpoint_copyProperty(v3);
              goto LABEL_25;
            }

            if (*v3)
            {
              valuePtr = acc_connection_getAuthStatus(*v3, 0);
              if (!valuePtr)
              {
                valuePtr = acc_connection_getAuthStatus(*v3, 1u);
                if (!valuePtr)
                {
                  valuePtr = acc_connection_getAuthStatus(*v3, 2u);
                  if (!valuePtr)
                  {
                    valuePtr = acc_connection_getAuthStatus(*v3, 3u);
                    if (!valuePtr)
                    {
                      valuePtr = acc_connection_getAuthStatus(*v3, 4u);
                    }
                  }
                }
              }

              Copy = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
              goto LABEL_25;
            }
          }

          v3 = 0;
LABEL_26:
        }
      }
    }
  }

  return v3;
}

const __CFDictionary *_platform_connectionInfo_addAuthInfo(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = theDict;
  if (a1)
  {
    if (theDict)
    {
      Count = CFDictionaryGetCount(theDict);
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, Count + 2, v2);
      if (MutableCopy)
      {
        v6 = MutableCopy;
        v7 = acc_authInfo_copyCertData(a1 + 48);
        if (v7)
        {
          v8 = v7;
          CFDictionaryAddValue(v6, kACCExternalAccessoryCertDataKey, v7);
          CFRelease(v8);
        }

        v9 = acc_authInfo_copyCertSerial(a1 + 48);
        if (v9)
        {
          v10 = v9;
          CFDictionaryAddValue(v6, kACCExternalAccessoryCertSerialNumberKey, v9);
          CFRelease(v10);
        }

        valuePtr = acc_connection_getAuthStatus(a1, 0);
        if (!valuePtr)
        {
          valuePtr = acc_connection_getAuthStatus(a1, 1u);
          if (!valuePtr)
          {
            valuePtr = acc_connection_getAuthStatus(a1, 2u);
            if (!valuePtr)
            {
              valuePtr = acc_connection_getAuthStatus(a1, 3u);
              if (!valuePtr)
              {
                valuePtr = acc_connection_getAuthStatus(a1, 4u);
              }
            }
          }
        }

        v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        if (v11)
        {
          v12 = v11;
          CFDictionaryAddValue(v6, kACCExternalAccessoryAuthStatusKey, v11);
          v2 = v6;
        }

        else
        {
          v12 = v6;
        }

        CFRelease(v12);
      }
    }
  }

  return v2;
}

_DWORD *platform_connectionInfo_getPairingStatus()
{
  OUTLINED_FUNCTION_25();
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v44 = 134218240;
      *&v44[4] = v2;
      OUTLINED_FUNCTION_3();
      *&v44[14] = v3;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v24, v25, v26, v27, *v44, *&v44[16]);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v44 = 0;
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v7, v8, "platform_connectionInfo_getPairingStatus", v9, v10, v11, v12, *v44);
  }

  result = 0;
  if (v0)
  {
    if (v1)
    {
      result = acc_manager_getEndpointWithUUID(v1);
      if (result)
      {
        v14 = result;
        if ((result[30] & 1) == 0)
        {
          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects)
          {
            v17 = gNumLogObjects <= 8;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          if (result[7] == 14)
          {
            if (v18)
            {
              v19 = *(gLogObjects + 64);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *v44 = 134218240;
                *&v44[4] = v15;
                OUTLINED_FUNCTION_3();
                *&v44[14] = v16;
                OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v35, v36, v37, v38, *v44, *&v44[8]);
              }

              v19 = &_os_log_default;
              v21 = &_os_log_default;
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *v44 = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_getPairingStatus", v44, 2u);
            }

            result = acc_manager_getConnectionWithUUID(v0);
            if (result)
            {
              return acc_connection_getPairingStatus(result);
            }

            return result;
          }

          if (v18)
          {
            v20 = *(gLogObjects + 64);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *v44 = 134218240;
              *&v44[4] = v15;
              OUTLINED_FUNCTION_3();
              *&v44[14] = v16;
              OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v39, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v40, v41, v42, v43, *v44, *&v44[8]);
            }

            v20 = &_os_log_default;
            v22 = &_os_log_default;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            acc_endpoint_getProtocolString(v14);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_2_5(&_mh_execute_header, v28, v29, "platform_connectionInfo_getPairingStatus: unexpected protocol: %s", v30, v31, v32, v33);
          }
        }

        return 0;
      }
    }
  }

  return result;
}

void platform_connectionInfo_setupInterceptForEndpoint(uint64_t a1, const void *a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
      if (EndpointWithUUID)
      {
        if ((EndpointWithUUID[15] & 1) == 0 && *(EndpointWithUUID + 7) == 10)
        {
          v5 = EndpointWithUUID[7];

          accAuthProtocol_endpoint_setIncomingIntercept(v5, a3);
        }
      }
    }
  }
}

uint64_t platform_connectionInfo_getInterceptCountForEndpoint(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
  if (!EndpointWithUUID || (EndpointWithUUID[120] & 1) != 0 || *(EndpointWithUUID + 7) != 10)
  {
    return 0;
  }

  v3 = *(EndpointWithUUID + 7);

  return accAuthProtocol_endpoint_getIncomingInterceptCount(v3);
}

void platform_connectionInfo_handleInterceptData(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a1 && a2 && a3 && acc_manager_getEndpointWithUUID(a2))
  {
    v6 = +[ACCConnectionInfoServer sharedServer];
    [v6 handleInterceptData:a3 forEndpoint:a2 connection:a1];
  }
}

void platform_connectionInfo_sendDataForEndpoint(uint64_t a1, const void *a2, const __CFData *a3)
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  if (!a3)
  {
    return;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
  if (!EndpointWithUUID || (EndpointWithUUID[120] & 1) != 0)
  {
    return;
  }

  v7 = *(EndpointWithUUID + 7);
  if (v7 == 4)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v12 = *(EndpointWithUUID + 7);
    if (v12)
    {
      v13 = *(v12 + 32);
      if (v13)
      {
        if ((*(v13 + 44) & 1) == 0 && *(v12 + 24))
        {
          OUTLINED_FUNCTION_8_17();
          *&v25[4] = 3221225472;
          v11 = ___platform_connectionInfo_sendDataForiAP2Endpoint_block_invoke;
LABEL_16:
          *&v25[12] = v11;
          v26 = &unk_100228E00;
          v27 = &v20;
          v28 = v10;
          v29 = a3;
          dispatch_sync(v9, &block);
          v14 = *(v21 + 24);
          _Block_object_dispose(&v20, 8);
          if (v14)
          {
            return;
          }

          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    if (v7 != 10)
    {
      if (acc_endpoint_sendOutgoingData(EndpointWithUUID, a3))
      {
        return;
      }

      goto LABEL_19;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v8 = *(EndpointWithUUID + 7);
    if (v8 && *(v8 + 56))
    {
      OUTLINED_FUNCTION_8_17();
      *&v25[4] = 3221225472;
      v11 = ___platform_connectionInfo_sendDataForAuthProtocolEndpoint_block_invoke;
      goto LABEL_16;
    }
  }

  _Block_object_dispose(&v20, 8);
LABEL_19:
  v15 = gLogObjects;
  v16 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 9)
  {
    v17 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      block = 134218240;
      *v25 = v15;
      *&v25[8] = 1024;
      *&v25[10] = v16;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &block, 0x12u);
    }

    v17 = &_os_log_default;
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    Length = CFDataGetLength(a3);
    block = 138412802;
    *v25 = a1;
    *&v25[8] = 2112;
    *&v25[10] = a2;
    *&v25[18] = 2048;
    v26 = Length;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "connectionInfo sendDataForEndpoint: %@ - %@, %ld bytes Failed! ", &block, 0x20u);
  }
}

void platform_connectionInfo_setAccessoryUserName_cold_3(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_setAccessoryUserName: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_getAccessoryUserName_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_getAccessoryUserName: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_provisionPairing_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_provisionPairing: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_resetPairing_cold_3(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_resetPairing: unexpected protocol: %s", v3, v4, v5, v6);
}

uint64_t platform_connectionInfo_resetPairing_cold_5()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    v13 = 0;
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_resetPairing: destroyingEndpoint", v5, v6, v7, v8, v13);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_3_29();
  return v11(v10);
}

uint64_t platform_connectionInfo_resetPairing_cold_6()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    v13 = 0;
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_resetPairing: !pEndpoint", v5, v6, v7, v8, v13);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_3_29();
  return v11(v10);
}

uint64_t platform_connectionInfo_resetPairing_cold_7()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    v13 = 0;
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_resetPairing: !accessoryEndpointUUID", v5, v6, v7, v8, v13);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_3_29();
  return v11(v10);
}

uint64_t platform_connectionInfo_resetPairing_cold_8()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    v13 = 0;
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_resetPairing: !accessoryConnectionUUID", v5, v6, v7, v8, v13);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_3_29();
  return v11(v10);
}

void platform_connectionInfo_getPublicNvmKeyValues_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_getPublicNvmKeyValues: unexpected protocol: %s", v3, v4, v5, v6);
}

uint64_t platform_connectionInfo_getPublicNvmKeyValues_cold_3()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    v13 = 0;
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_getPublicNvmKeyValues: !pEndpoint", v5, v6, v7, v8, v13);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_2_32();
  return v11(v10);
}

uint64_t platform_connectionInfo_getPublicNvmKeyValues_cold_5()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    v13 = 0;
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_getPublicNvmKeyValues: !accessoryEndpointUUID", v5, v6, v7, v8, v13);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_2_32();
  return v11(v10);
}

uint64_t platform_connectionInfo_getPublicNvmKeyValues_cold_6()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    v13 = 0;
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_getPublicNvmKeyValues: !accessoryConnectionUUID", v5, v6, v7, v8, v13);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_2_32();
  return v11(v10);
}

void platform_connectionInfo_setPublicNvmKeyValues_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_setPublicNvmKeyValues: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_getPrivateNvmKeyValues_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_getPrivateNvmKeyValues: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_setPrivateNvmKeyValues_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_setPrivateNvmKeyValues: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_beginVendorKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_beginVendorKeyErase: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_continueVendorKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_continueVendorKeyErase: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_cancelVendorKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_cancelVendorKeyErase: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_beginUserKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_beginUserKeyErase: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_continueUserKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_continueUserKeyErase: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_cancelUserKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_cancelUserKeyErase: unexpected protocol: %s", v3, v4, v5, v6);
}

void platform_connectionInfo_copyUserPrivateKey_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_copyUserPrivateKey: unexpected protocol: %s", v3, v4, v5, v6);
}

void _acc_sysdiagnose_authFailure_cold_1(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create sysdiagnose: %@\n", &v1, 0xCu);
}

void _acc_auth_protocol_isBusySessionID_cold_2(char a1, int a2, os_log_t log)
{
  v3[0] = 67109632;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1 & 1;
  v6 = 1024;
  v7 = __availableSessionIDs;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[AccAuth] _isBusySessionID: sessionID %d, isBusySessionID %d, __availableSessionIDs %#04x \n", v3, 0x14u);
}

void _acc_auth_protocol_cleanupCertificateInfo_cold_2()
{
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void _acc_auth_protocol_validatePeerCertificateChain_cold_2()
{
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _acc_auth_protocol_decompressCerts_cold_2()
{
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _acc_auth_protocol_decompressCerts_cold_4()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void _acc_auth_protocol_decompressCerts_cold_6()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _acc_auth_protocol_validateCertificateChain_cold_2()
{
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _acc_auth_protocol_validateCertificateChain_cold_4()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void _acc_auth_protocol_validateCertificateChain_cold_6(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[AccAuth] _validateCertificateChain: certList.count %lu \n", &v3, 0xCu);
}

void _acc_auth_protocol_validateCertificateChain_cold_8()
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void _acc_auth_protocol_decompressCert_cold_5()
{
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void _acc_auth_protocol_decompressCert_cold_6()
{
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void iap2_assistiveTouch_startAssistiveTouchHandler()
{
  OUTLINED_FUNCTION_17_15();
  if (v3 && v4)
  {
    v5 = v3;
    OUTLINED_FUNCTION_2_4();
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v2 < 21;
    }

    if (v7)
    {
      v14 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13);
      }
    }

    else
    {
      v14 = *(v1 + 160);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    }

    if (OUTLINED_FUNCTION_13_13())
    {
      OUTLINED_FUNCTION_10_17();
      if ((!v1 || v0 < 35) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v25, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v27, v28, v29, v30);
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        OUTLINED_FUNCTION_1_26();
        OUTLINED_FUNCTION_3_30();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_15_17(v20, v21, v22, v23, v24);
      }

      *v14 = 1;
      platform_assistiveTouch_setState(*(v5 + 8), 1);
    }
  }

  OUTLINED_FUNCTION_16_14();
}

void iap2_assistiveTouch_stopAssistiveTouchHandler()
{
  OUTLINED_FUNCTION_17_15();
  v5 = v4;
  if (v4 && v3)
  {
    OUTLINED_FUNCTION_2_4();
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v2 < 21;
    }

    if (v7)
    {
      v14 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13);
      }
    }

    else
    {
      v14 = *(v1 + 160);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    }

    if (OUTLINED_FUNCTION_13_13())
    {
      OUTLINED_FUNCTION_10_17();
      if ((!v1 || v0 < 35) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v25, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v27, v28, v29, v30);
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        OUTLINED_FUNCTION_1_26();
        OUTLINED_FUNCTION_3_30();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_15_17(v20, v21, v22, v23, v24);
      }

      *v14 = 0;
      platform_assistiveTouch_setState(*(v5 + 8), 0);
    }
  }

  OUTLINED_FUNCTION_16_14();
}

void iap2_assistiveTouch_startAssistiveTouchUpdateHandler()
{
  OUTLINED_FUNCTION_17_15();
  if (v3 && v4)
  {
    v5 = v3;
    OUTLINED_FUNCTION_2_4();
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v2 < 21;
    }

    if (v7)
    {
      v14 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13);
      }
    }

    else
    {
      v14 = *(v1 + 160);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    }

    if (OUTLINED_FUNCTION_13_13())
    {
      OUTLINED_FUNCTION_10_17();
      if ((!v1 || v0 < 35) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v25, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v27, v28, v29, v30);
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        OUTLINED_FUNCTION_1_26();
        OUTLINED_FUNCTION_3_30();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_15_17(v20, v21, v22, v23, v24);
      }

      v14[1] = 1;
      platform_assistiveTouch_requestStatus(*(v5 + 8));
    }
  }

  OUTLINED_FUNCTION_16_14();
}

void iap2_assistiveTouch_stopAssistiveTouchUpdateHandler()
{
  OUTLINED_FUNCTION_17_15();
  if (v4 && v3)
  {
    OUTLINED_FUNCTION_2_4();
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 < 21;
    }

    if (v6)
    {
      v13 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v9, v10, v11, v12);
      }
    }

    else
    {
      v13 = *(v1 + 160);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    }

    if (OUTLINED_FUNCTION_13_13())
    {
      OUTLINED_FUNCTION_10_17();
      if ((!v1 || v0 < 35) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v24, v25, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v26, v27, v28, v29);
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        OUTLINED_FUNCTION_1_26();
        OUTLINED_FUNCTION_3_30();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_15_17(v19, v20, v21, v22, v23);
      }

      v13[1] = 0;
    }
  }

  OUTLINED_FUNCTION_16_14();
}

uint64_t iap2_assistiveTouch_notifyStatusUpdateHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2 != 0;
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 35)
    {
      v7 = *(gLogObjects + 272);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v33 = 134218240;
        v34 = v5;
        OUTLINED_FUNCTION_3();
        v36 = v6;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v33, 0x12u);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v3[1];
      v33 = 138412546;
      v34 = v8;
      v35 = 1024;
      v36 = a2 != 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "iAP2AssistiveTouch notifyStatusUpdate: %@ state=%d", &v33, 0x12u);
    }

    result = OUTLINED_FUNCTION_13_13();
    if (result)
    {
      v9 = result;
      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 35)
      {
        v12 = *(gLogObjects + 272);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v33 = 134218240;
          v34 = v10;
          OUTLINED_FUNCTION_3();
          v36 = v11;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v33, 0x12u);
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_3();
        v36 = v23;
        v37 = v24;
        v38 = v25;
        OUTLINED_FUNCTION_3_30();
        v39 = v9;
        OUTLINED_FUNCTION_15_17(&_mh_execute_header, v12, v26, "iAP2AssistiveTouch notifyStatusUpdate: %@ infoRequested %d, state=%d pEndpoint=%p assistiveTouch=%p", &v33);
      }

      if (*(v9 + 1) == 1)
      {
        v13 = iAP2MsgInit((v3 + 15), 21507, v3[24], 0xFFFF, 0, 0);
        result = iAP2MsgAddU8Param(v13, 0, 0, v4);
        if (result)
        {
          v14 = gLogObjects;
          v15 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 35) && OUTLINED_FUNCTION_21())
          {
            v33 = 134218240;
            v34 = v14;
            OUTLINED_FUNCTION_3();
            v36 = v15;
            OUTLINED_FUNCTION_26_0(&_mh_execute_header, v27, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29, v30, v31, v32);
          }

          if (OUTLINED_FUNCTION_76())
          {
            v16 = v3[1];
            iAP2MsgGetMsgID(v13);
            v33 = 138412546;
            v34 = v16;
            OUTLINED_FUNCTION_3();
            v36 = v17;
            OUTLINED_FUNCTION_24_1();
            _os_log_impl(v18, v19, v20, v21, v22, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(v3, v13);
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

_WORD *_createFeature_18(_WORD *result)
{
  if (result)
  {
    v1 = gLogObjects;
    v2 = HIWORD(gNumLogObjects);
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 21;
    }

    else
    {
      v3 = 1;
    }

    if (v3 && OUTLINED_FUNCTION_21())
    {
      LODWORD(v15) = 134218240;
      HIDWORD(v15) = v1;
      OUTLINED_FUNCTION_3();
      LOWORD(v16) = v2;
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9, v15, HIDWORD(v1), v16);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    }

    result = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_18(void **a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = gLogObjects;
    v6 = HIWORD(gNumLogObjects);
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 21;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v14 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        LODWORD(v19) = 134218240;
        HIDWORD(v19) = v5;
        OUTLINED_FUNCTION_3();
        LOWORD(v20) = v6;
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13, v19, HIDWORD(v5), v20);
      }
    }

    else
    {
      v14 = *(gLogObjects + 160);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v15, v16, OS_LOG_TYPE_INFO, v17, v18, 0xCu);
    }

    if (*a1)
    {
      if (**a1 == 1)
      {
        platform_assistiveTouch_accessoryDetached(*(a2 + 8));
      }

      platform_assistiveTouch_decrementUserCount();
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
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

uint64_t _startFeatureFromDevice_12(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = gLogObjects;
    v3 = gNumLogObjects;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 21;
    }

    else
    {
      v4 = 1;
    }

    if (v4 && OUTLINED_FUNCTION_21())
    {
      *v16 = 134218240;
      *&v16[4] = v2;
      OUTLINED_FUNCTION_3();
      *&v16[14] = v3;
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v5, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v7, v8, v9, v10, *v16, *&v16[16]);
    }

    if (OUTLINED_FUNCTION_76())
    {
      *v16 = 0;
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
    }

    result = OUTLINED_FUNCTION_13_13();
    if (result)
    {
      v16[0] = 0;
      if (iap2_identification_checkRequiredMsgIDs(v1, &gskMsgAssistiveTouchList, 5, v16))
      {
        platform_assistiveTouch_incrementUserCount();
        platform_assistiveTouch_accessoryAttached(*(v1 + 8));
      }

      return 1;
    }
  }

  return result;
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_7()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_9()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_11()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_19()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_23()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_25()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_7()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_9()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_13()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_15()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_17()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_19()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_21()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelaySucceeded_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelaySucceeded_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelaySucceeded_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayFailed_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayFailed_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayFailed_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_StartRelayForType_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void mfi4Auth_relay_StartRelayForType_cold_5()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void mfi4Auth_relay_StartRelayForType_cold_7()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_StartRelayForType_cold_13()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_setSecureTunnelDataReceiveTypeHandler_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void mfi4Auth_protocol_setSecureTunnelDataReceiveTypeHandler_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_11()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_13()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_15()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote_TypeData_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void acc_platform_packetLogging_logEventVA_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

void acc_platform_packetLogging_logGenericMFiTLV_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@", &v2, 0xCu);
}

void iap2_nowPlaying_mediaItemAttributesUpdateHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_43_1();
  a20 = v22;
  a21 = v24;
  if (v25)
  {
    v26 = v23;
    if (v23)
    {
      OUTLINED_FUNCTION_50();
      if (v27)
      {
        v28 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_10_0();
          *(&a9 + 14) = v28;
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v53, v54, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v55, v56, v57, v58);
        }

        v29 = OUTLINED_FUNCTION_9_3();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = v21[1];
          LODWORD(a9) = 138412290;
          *(&a9 + 4) = v31;
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v32, v33, OS_LOG_TYPE_INFO, v34, v35, 0xCu);
        }

        v36 = OUTLINED_FUNCTION_69_3();
        Feature = iap2_feature_getFeature(v36, v37);
        v39 = Feature;
        if (Feature && *Feature == 1)
        {
          v40 = OUTLINED_FUNCTION_6_7();
          malloc_type_malloc(0xFFFFuLL, 0x81E4B80BuLL);
          v41 = OUTLINED_FUNCTION_52_5();
          iAP2MsgInit(v41, v42, v43, v44, v45, 0);
          v46 = OUTLINED_FUNCTION_76_5();
          v48 = iAP2MsgAddGroupParam(v46, v47);
          if (_addMediaItemAttributesToMessage(v40, v48, v39, v26))
          {
            iap2_sessionControl_sendOutgoingMessage(v21, v40);
          }

          else
          {
            v49 = gLogObjects;
            if (gLogObjects && gNumLogObjects >= 32)
            {
              v50 = *(gLogObjects + 248);
            }

            else
            {
              v50 = &_os_log_default;
              if (OUTLINED_FUNCTION_13())
              {
                LODWORD(a9) = 134218240;
                *(&a9 + 4) = v49;
                OUTLINED_FUNCTION_2_21();
                OUTLINED_FUNCTION_6_26();
                _os_log_error_impl(v59, v60, v61, v62, v63, v64);
              }
            }

            if (OUTLINED_FUNCTION_24())
            {
              LODWORD(a9) = 136315138;
              *(&a9 + 4) = "iap2_nowPlaying_mediaItemAttributesUpdateHandler";
              OUTLINED_FUNCTION_79_0(&_mh_execute_header, v50, v51, "%s: no parameters added! cleaning up pOutMsg", &a9);
            }

            v52 = OUTLINED_FUNCTION_9_3();
            iAP2MsgCleanup(v52);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_44_2();
}

void _mediaItemAttributesUpdateSentCB(uint64_t a1)
{
  if (a1)
  {
    v3 = OUTLINED_FUNCTION_71_1(a1);
    if (v3)
    {
      Feature = iap2_feature_getFeature(v3, 0xEu);
      if (Feature)
      {
        if ((*Feature & 1) == 0)
        {
          v7 = logObjectForModule_30();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_101_1(v8, v9, v10, v11, v12);
          }
        }
      }
    }

    if (v2)
    {
      v5 = v1[6];
      if (v5)
      {
        free(v5);
        v1[6] = 0;
      }

      v6 = v1[3];
      if (v6)
      {
        free(v6);
      }

      free(v1);
    }
  }
}

uint64_t _addMediaItemAttributesToMessage(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  v4 = 0;
  if (!a1 || !a3 || !a4)
  {
    return v4;
  }

  v7 = *(a3 + 8);
  if (!v7)
  {
    return 0;
  }

  Count = CFArrayGetCount(v7);
  v82 = &v69;
  v9 = __chkstk_darwin(Count);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v9)
  {
    memset(&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v10);
  }

  v87.location = 0;
  v87.length = Count;
  CFArrayGetValues(*(a3 + 8), v87, v11);
  if (gLogObjects && gNumLogObjects >= 32)
  {
    v12 = *(gLogObjects + 248);
  }

  else
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_11())
    {
      OUTLINED_FUNCTION_74_2(3.8521e-34);
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v39, v40, v41, v42, v43, v44);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    RawValuesString = CFArrayCreateRawValuesString(*(a3 + 8), 0);
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v14 = *(gLogObjects + 248);
    }

    else
    {
      v14 = &_os_log_default;
      if (OUTLINED_FUNCTION_11())
      {
        OUTLINED_FUNCTION_74_2(3.8521e-34);
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v57, v58, v59, v60, v61, v62);
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v83 = 138412290;
      v84 = RawValuesString;
      OUTLINED_FUNCTION_45_6();
      _os_log_debug_impl(v45, v46, v47, v48, v49, v50);
      if (!RawValuesString)
      {
LABEL_21:
        v15 = gLogObjects;
        v16 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v17 = *(gLogObjects + 248);
        }

        else
        {
          v17 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            v83 = 134218240;
            v84 = v15;
            v85 = 1024;
            v86 = v16;
            OUTLINED_FUNCTION_4_21();
            _os_log_error_impl(v63, v64, v65, v66, v67, v68);
          }
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v83 = 138412290;
          v84 = a4;
          OUTLINED_FUNCTION_45_6();
          _os_log_debug_impl(v51, v52, v53, v54, v55, v56);
        }

        goto LABEL_28;
      }
    }

    else if (!RawValuesString)
    {
      goto LABEL_21;
    }

    CFRelease(RawValuesString);
    goto LABEL_21;
  }

LABEL_28:
  if (Count < 1)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    v81 = @"ChapterCount";
    v80 = @"IsBanned";
    v79 = @"IsLiked";
    v78 = @"IsBanSupported";
    v77 = @"IsLikeSupported";
    v76 = @"Composer";
    v75 = @"Genre";
    v74 = @"Artist";
    v73 = @"AlbumDiscCount";
    v72 = @"AlbumDiscNum";
    v71 = @"AlbumTrackCount";
    v70 = @"AlbumTrackNum";
    do
    {
      v18 = *v11++;
      switch(v18)
      {
        case 0:
          CFDictionaryGetValue(a4, @"PersistentID");
          v19 = OUTLINED_FUNCTION_7_20();
          v22 = iAP2MsgAddCFU64Param(v19, v20, 0, v21);
          goto LABEL_50;
        case 1:
          CFDictionaryGetValue(a4, @"Title");
          v27 = OUTLINED_FUNCTION_7_20();
          v30 = 1;
          goto LABEL_49;
        case 4:
          CFDictionaryGetValue(a4, @"PlaybackDurationMS");
          v31 = OUTLINED_FUNCTION_7_20();
          v22 = iAP2MsgAddCFU32Param(v31, v32, 4, v33);
          goto LABEL_50;
        case 6:
          CFDictionaryGetValue(a4, @"AlbumTitle");
          v27 = OUTLINED_FUNCTION_7_20();
          v30 = 6;
          goto LABEL_49;
        case 7:
          CFDictionaryGetValue(a4, v70);
          v34 = OUTLINED_FUNCTION_7_20();
          v37 = 7;
          goto LABEL_46;
        case 8:
          CFDictionaryGetValue(a4, v71);
          v34 = OUTLINED_FUNCTION_7_20();
          v37 = 8;
          goto LABEL_46;
        case 9:
          CFDictionaryGetValue(a4, v72);
          v34 = OUTLINED_FUNCTION_7_20();
          v37 = 9;
          goto LABEL_46;
        case 10:
          CFDictionaryGetValue(a4, v73);
          v34 = OUTLINED_FUNCTION_7_20();
          v37 = 10;
          goto LABEL_46;
        case 12:
          CFDictionaryGetValue(a4, v74);
          v27 = OUTLINED_FUNCTION_7_20();
          v30 = 12;
          goto LABEL_49;
        case 16:
          CFDictionaryGetValue(a4, v75);
          v27 = OUTLINED_FUNCTION_7_20();
          v30 = 16;
          goto LABEL_49;
        case 18:
          CFDictionaryGetValue(a4, v76);
          v27 = OUTLINED_FUNCTION_7_20();
          v30 = 18;
LABEL_49:
          v22 = iAP2MsgAddCFStringParam(v27, v28, v30, v29);
          goto LABEL_50;
        case 21:
          CFDictionaryGetValue(a4, v77);
          v23 = OUTLINED_FUNCTION_7_20();
          v26 = 21;
          goto LABEL_42;
        case 22:
          CFDictionaryGetValue(a4, v78);
          v23 = OUTLINED_FUNCTION_7_20();
          v26 = 22;
          goto LABEL_42;
        case 23:
          CFDictionaryGetValue(a4, v79);
          v23 = OUTLINED_FUNCTION_7_20();
          v26 = 23;
          goto LABEL_42;
        case 24:
          CFDictionaryGetValue(a4, v80);
          v23 = OUTLINED_FUNCTION_7_20();
          v26 = 24;
LABEL_42:
          v22 = iAP2MsgAddCFBooleanParam(v23, v24, v26, v25);
          goto LABEL_50;
        case 27:
          CFDictionaryGetValue(a4, v81);
          v34 = OUTLINED_FUNCTION_7_20();
          v37 = 27;
LABEL_46:
          v22 = iAP2MsgAddCFU16Param(v34, v35, v37, v36);
LABEL_50:
          if (v22)
          {
            ++v4;
          }

          break;
        default:
          break;
      }

      --Count;
    }

    while (Count);
  }

  return v4;
}

void iap2_nowPlaying_mediaItemArtworkUpdateHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v25;
  a24 = v26;
  if (!v27)
  {
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_50();
  if (!v29)
  {
    goto LABEL_68;
  }

  v30 = v28;
  v31 = gNumLogObjects;
  v32 = &off_1001C3000;
  if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    *(&a9 + 14) = v31;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v98, v99, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v100, v101, v102, v103);
  }

  v33 = OUTLINED_FUNCTION_9_3();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v24[1];
    LODWORD(a9) = 138412290;
    *(&a9 + 4) = v35;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v36, v37, OS_LOG_TYPE_INFO, v38, v39, 0xCu);
  }

  v40 = gNumLogObjects;
  if (gLogObjects)
  {
    v41 = gNumLogObjects <= 31;
  }

  else
  {
    v41 = 1;
  }

  v42 = !v41;
  if (v30)
  {
    if (!v42 && OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_7();
      *(&a9 + 14) = v40;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v104, v105, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v106, v107, v108, v109);
    }

    if (!OUTLINED_FUNCTION_75_0())
    {
      goto LABEL_27;
    }

    CFDataGetLength(v30);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_19_11();
    v48 = 12;
  }

  else
  {
    if (!v42 && OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_7();
      *(&a9 + 14) = v40;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v122, v123, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v124, v125, v126, v127);
    }

    if (!OUTLINED_FUNCTION_75_0())
    {
      goto LABEL_27;
    }

    LOWORD(a9) = 0;
    OUTLINED_FUNCTION_19_11();
    v48 = 2;
  }

  _os_log_debug_impl(v43, v44, v45, v46, v47, v48);
LABEL_27:
  v49 = OUTLINED_FUNCTION_69_3();
  Feature = iap2_feature_getFeature(v49, v50);
  if (Feature)
  {
    v52 = Feature;
    OUTLINED_FUNCTION_89_3();
    if (v53)
    {
      if (_isSubscribingForMediaItemAttribute(v52))
      {
        if (*(v52 + 64) == 1)
        {
          TransferEntry = iap2_sessionFileTransfer_findTransferEntry(v24, *(v52 + 65));
          if (TransferEntry && *(TransferEntry + 8))
          {
            v110 = gNumLogObjects;
            if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_18())
            {
              OUTLINED_FUNCTION_6();
              *(&a9 + 14) = v110;
              OUTLINED_FUNCTION_36();
              OUTLINED_FUNCTION_4_21();
              _os_log_error_impl(v128, v129, v130, v131, v132, v133);
            }

            v134 = OUTLINED_FUNCTION_66_2();
            if (os_log_type_enabled(v134, v135))
            {
              OUTLINED_FUNCTION_14_6();
              OUTLINED_FUNCTION_67_5();
              WORD2(a10) = v136;
              *(&a10 + 6) = v137;
              WORD5(a10) = v136;
              HIDWORD(a10) = v138;
              OUTLINED_FUNCTION_36();
              _os_log_impl(v139, v140, OS_LOG_TYPE_INFO, v141, v142, 0x20u);
            }

            v32 = &off_1001C3000;
            _cancelPendingTransfer_0();
          }

          *(v52 + 64) = 0;
        }

        v55 = v24[4];
        if (v55)
        {
          v56 = *(v55 + 24);
          if (v56)
          {
            SessionForService = iAP2LinkGetSessionForService(v56, 1);
            if (iAP2FileTransferAllocateBufferID(*(v24[4] + 24), SessionForService, (v52 + 65)))
            {
              *(v52 + 64) = 1;
              v58 = OUTLINED_FUNCTION_54_0();
              if (v58)
              {
                v59 = v58;
                OUTLINED_FUNCTION_40_6();
                OUTLINED_FUNCTION_72_3();
                iAP2FileTransferCreate(v60, v61, v62, v63, v64, v65, v59, v66);
                v67 = OUTLINED_FUNCTION_53_3();
                iAP2FileTransferTypeData(v67, v68, 0);
                v69 = OUTLINED_FUNCTION_69_3();
                if (iap2_sessionFileTransfer_addTransferForFeature(v69, v70, v59, 0))
                {
                  v71 = OUTLINED_FUNCTION_6_7();
                  v72 = malloc_type_malloc(0xFFFFuLL, 0xE0353388uLL);
                  v73 = OUTLINED_FUNCTION_51_2();
                  *v73 = v24;
                  v73[8] = *(v52 + 65);
                  *(v73 + 3) = 2;
                  if (gLogObjects && gNumLogObjects >= 32)
                  {
                    v74 = *(gLogObjects + 248);
                  }

                  else
                  {
                    v74 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      OUTLINED_FUNCTION_23_7();
                      OUTLINED_FUNCTION_4_21();
                      _os_log_error_impl(v143, v144, v145, v146, v147, v148);
                    }
                  }

                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                  {
                    v84 = v24[1];
                    LODWORD(a9) = 136315650;
                    *(&a9 + 4) = "iap2_nowPlaying_mediaItemArtworkUpdateHandler";
                    WORD6(a9) = 1024;
                    *(&a9 + 14) = 665;
                    WORD1(a10) = 2112;
                    *(&a10 + 4) = v84;
                    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%s:%d - iAP2MsgInit with cleanupCB - _artworkFileTransferIDSent endpointUUID: %@", &a9, 0x1Cu);
                  }

                  v85 = OUTLINED_FUNCTION_38_9();
                  iAP2MsgInit(v85, v86, v72, 0xFFFF, v87, v73);
                  v88 = iAP2MsgAddGroupParam(v71, 0);
                  iAP2MsgAddU8Param(v71, v88, 26, *(v52 + 65));
                  if (v30)
                  {
                    *(v52 + 72) = CFRetain(v30);
                    v89 = 2;
                  }

                  else
                  {
                    v90 = *(v52 + 72);
                    if (v90)
                    {
                      CFRelease(v90);
                      v89 = 0;
                      *(v52 + 72) = 0;
                    }

                    else
                    {
                      v89 = 0;
                    }
                  }

                  *(v52 + 66) = v89;
                  if ((iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(v24, v71) & 1) == 0)
                  {
                    iAP2FileTransferCancel(v59, v91, v92, v93, v94, v95, v96, v97);
                  }
                }

                else
                {
                  v82 = gLogObjects;
                  v83 = gNumLogObjects;
                  if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
                  {
                    LODWORD(a9) = *(v32 + 71);
                    *(&a9 + 4) = v82;
                    OUTLINED_FUNCTION_3();
                    *(&a9 + 14) = v83;
                    OUTLINED_FUNCTION_6_26();
                    _os_log_error_impl(v149, v150, v151, v152, v153, v154);
                  }

                  if (OUTLINED_FUNCTION_13())
                  {
                    LOWORD(a9) = 0;
                    OUTLINED_FUNCTION_13_0();
                    _os_log_error_impl(v117, v118, v119, v120, v121, 2u);
                  }

                  iAP2FileTransferRelease(v59);
                }
              }
            }

            else
            {
              v75 = gLogObjects;
              v76 = gNumLogObjects;
              if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
              {
                LODWORD(a9) = *(v32 + 71);
                *(&a9 + 4) = v75;
                OUTLINED_FUNCTION_3();
                *(&a9 + 14) = v76;
                OUTLINED_FUNCTION_6_26();
                _os_log_error_impl(v111, v112, v113, v114, v115, v116);
              }

              if (OUTLINED_FUNCTION_13())
              {
                LOWORD(a9) = 0;
                OUTLINED_FUNCTION_13_0();
                _os_log_error_impl(v77, v78, v79, v80, v81, 2u);
              }
            }
          }
        }
      }
    }
  }

LABEL_68:
  OUTLINED_FUNCTION_56();
}

void _cancelPendingTransfer_0()
{
  OUTLINED_FUNCTION_43_1();
  if (v0)
  {
    v1 = v0;
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v31, v32, v33, v34, v35, v36);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_12_15();
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_84_3(v2, v3, v4, v5, v6);
    }

    v7 = *(*v1 + 176);
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = *(v1 + 64);
        if (v9)
        {
          *v9 = 1;
          v10 = *(v1 + 104);
          if (v10 != 2 && v9[3] != 1)
          {
LABEL_13:
            if (v10)
            {
              if (v10 == 5 && v9)
              {
                *v9 = 0;
              }
            }

            else
            {
              if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_21())
              {
                OUTLINED_FUNCTION_3();
                OUTLINED_FUNCTION_15_1();
                OUTLINED_FUNCTION_4_21();
                _os_log_error_impl(v43, v44, v45, v46, v47, v48);
              }

              if (OUTLINED_FUNCTION_76())
              {
                OUTLINED_FUNCTION_12_15();
                OUTLINED_FUNCTION_14_6();
                OUTLINED_FUNCTION_67_5();
                OUTLINED_FUNCTION_15_1();
                OUTLINED_FUNCTION_84_3(v26, v27, v28, v29, v30);
              }

              iAP2FileTransferStart(v1, 0, 0, 0, _artworkFileTransferEndHandler, 0, 0, 0);
            }

            goto LABEL_35;
          }
        }

        else
        {
          v10 = *(v1 + 104);
          if (v10 != 2)
          {
            goto LABEL_13;
          }
        }

        if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v37, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v39, v40, v41, v42);
        }

        v11 = OUTLINED_FUNCTION_9_3();
        if (os_log_type_enabled(v11, v12))
        {
          OUTLINED_FUNCTION_12_15();
          OUTLINED_FUNCTION_14_6();
          OUTLINED_FUNCTION_67_5();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_84_3(v20, v21, v22, v23, v24);
        }

        if (v9)
        {
          *v9 = 0;
        }

        iAP2FileTransferCancel(v1, v13, v14, v15, v16, v17, v18, v19);
        iap2_sessionFileTransfer_removeTransferForFeature(v8, 14, v1);
        v25 = *(v1 + 64);
        if (v25)
        {
          free(v25);
          *(v1 + 64) = 0;
        }
      }
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_44_2();
}

void _playbackAttributesUpdateSentCB(uint64_t a1)
{
  if (a1)
  {
    v3 = OUTLINED_FUNCTION_71_1(a1);
    if (v3)
    {
      Feature = iap2_feature_getFeature(v3, 0xEu);
      if (Feature)
      {
        if ((*Feature & 1) == 0)
        {
          v7 = logObjectForModule_30();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_101_1(v8, v9, v10, v11, v12);
          }
        }
      }
    }

    if (v2)
    {
      v5 = v1[6];
      if (v5)
      {
        free(v5);
        v1[6] = 0;
      }

      v6 = v1[3];
      if (v6)
      {
        free(v6);
      }

      free(v1);
    }
  }
}

uint64_t _addplaybackAttributesToMessage(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, _BYTE *a5, int a6)
{
  v126 = a6;
  v127 = a5;
  v128 = a2;
  v9 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 32)
  {
    v10 = *(gLogObjects + 248);
  }

  else
  {
    v10 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_50_4(3.8521e-34);
      LODWORD(v132) = v9;
      OUTLINED_FUNCTION_6_26();
      _os_log_error_impl(v72, v73, v74, v75, v76, v77);
    }
  }

  if (OUTLINED_FUNCTION_108())
  {
    valuePtr = 134219010;
    v130 = obfuscatedPointer(a1);
    v131 = 2048;
    v132 = obfuscatedPointer(v128);
    v133 = 2048;
    v134 = obfuscatedPointer(a3);
    v135 = 1024;
    v136 = v126;
    v137 = 2112;
    v138 = a4;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "_addplaybackAttributesToMessage: pMessage=%p pGroupParam=%p pFeature=%p initialSend=%d playbackAttributes=%@", &valuePtr, 0x30u);
  }

  LOWORD(v11) = 0;
  if (a1 && a3 && a4)
  {
    v12 = *(a3 + 16);
    if (!v12)
    {
      LOWORD(v11) = 0;
      return v11;
    }

    Count = CFArrayGetCount(v12);
    v124 = &v107;
    v14 = __chkstk_darwin(Count);
    v16 = (&v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v14)
    {
      memset(&v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v15);
    }

    v139.location = 0;
    v139.length = Count;
    CFArrayGetValues(*(a3 + 16), v139, v16);
    v17 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_50_4(3.8521e-34);
      LODWORD(v132) = v17;
      OUTLINED_FUNCTION_6_26();
      _os_log_error_impl(v78, v79, v80, v81, v82, v83);
    }

    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_32;
    }

    RawValuesString = CFArrayCreateRawValuesString(*(a3 + 16), 0);
    v20 = gLogObjects;
    v21 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_21())
    {
      valuePtr = 134218240;
      v130 = v20;
      v131 = 1024;
      LODWORD(v132) = v21;
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v95, v96, v97, v98, v99, v100);
    }

    v22 = OUTLINED_FUNCTION_94();
    if (os_log_type_enabled(v22, v23))
    {
      valuePtr = 138412290;
      v130 = RawValuesString;
      OUTLINED_FUNCTION_33_6();
      _os_log_debug_impl(v84, v85, v86, v87, v88, 0xCu);
      if (!RawValuesString)
      {
        goto LABEL_26;
      }
    }

    else if (!RawValuesString)
    {
LABEL_26:
      v24 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
      {
        OUTLINED_FUNCTION_50_4(3.8521e-34);
        LODWORD(v132) = v24;
        OUTLINED_FUNCTION_6_26();
        _os_log_error_impl(v101, v102, v103, v104, v105, v106);
      }

      if (OUTLINED_FUNCTION_108())
      {
        valuePtr = 138412290;
        v130 = a4;
        OUTLINED_FUNCTION_45_6();
        _os_log_debug_impl(v89, v90, v91, v92, v93, v94);
      }

LABEL_32:
      if (v127)
      {
        *v127 = 0;
      }

      if (Count >= 1)
      {
        v125 = a3;
        v11 = 0;
        v123 = @"AppBundleID";
        v122 = @"SetElapsedTimeAvailable";
        v121 = @"PlaybackSpeed";
        v120 = @"iTunesRadioStationMediaPlaylistPersistentID";
        v119 = @"iTunesRadioStation";
        v118 = @"iTunesRadioAd";
        v117 = @"MediaLibraryUID";
        v116 = @"AppName";
        v115 = @"RepeatMode";
        v114 = @"ShuffleMode";
        v113 = @"QueueChapterIndex";
        v112 = @"QueueCount";
        v111 = @"QueueIndex";
        v110 = @"ElapsedTimeMS";
        v109 = @"Status";
        *&v18 = 67109120;
        v108 = v18;
        *&v18 = 134218240;
        v107 = v18;
        while (2)
        {
          v26 = *v16++;
          v25 = v26;
          v27 = gLogObjects;
          v28 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 32) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            valuePtr = v107;
            v130 = v27;
            v131 = 1024;
            LODWORD(v132) = v28;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr, 0x12u);
          }

          v29 = OUTLINED_FUNCTION_94();
          if (os_log_type_enabled(v29, v30))
          {
            valuePtr = v108;
            LODWORD(v130) = v25;
            OUTLINED_FUNCTION_33_6();
            _os_log_debug_impl(v67, v68, v69, "_addplaybackAttributesToMessage: paramID=%d", v70, 8u);
          }

          switch(v25)
          {
            case 0u:
              CFDictionaryGetValue(a4, v109);
              v31 = OUTLINED_FUNCTION_11_14();
              v34 = 0;
              goto LABEL_58;
            case 1u:
              Value = CFDictionaryGetValue(a4, v110);
              valuePtr = -1431655766;
              if (Value)
              {
                if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
                {
                  v55 = OUTLINED_FUNCTION_35_5();
                  if (iAP2MsgAddU32Param(v55, v56, 1, v57))
                  {
                    ++v11;
                    if (v127)
                    {
                      *v127 = 1;
                    }
                  }
                }
              }

              goto LABEL_75;
            case 2u:
              v47 = CFDictionaryGetValue(a4, v111);
              if (!v47)
              {
                goto LABEL_75;
              }

              v48 = v47;
              v49 = OUTLINED_FUNCTION_35_5();
              if (!iAP2MsgAddCFU32Param(v49, v50, 2, v48))
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_97_2();
              *(v125 + 28) = valuePtr;
              goto LABEL_67;
            case 3u:
              v60 = CFDictionaryGetValue(a4, v112);
              if (!v60)
              {
                goto LABEL_75;
              }

              v61 = v60;
              v62 = OUTLINED_FUNCTION_35_5();
              if (!iAP2MsgAddCFU32Param(v62, v63, 3, v61))
              {
                goto LABEL_75;
              }

              OUTLINED_FUNCTION_97_2();
              *(v125 + 32) = valuePtr;
LABEL_67:
              ++v11;
              goto LABEL_75;
            case 4u:
              CFDictionaryGetValue(a4, v113);
              v64 = OUTLINED_FUNCTION_11_14();
              v46 = iAP2MsgAddCFU32Param(v64, v65, 4, v66);
              goto LABEL_73;
            case 5u:
              CFDictionaryGetValue(a4, v114);
              v31 = OUTLINED_FUNCTION_11_14();
              v34 = 5;
              goto LABEL_58;
            case 6u:
              CFDictionaryGetValue(a4, v115);
              v31 = OUTLINED_FUNCTION_11_14();
              v34 = 6;
LABEL_58:
              v46 = iAP2MsgAddCFU8Param(v31, v32, v34, v33);
              goto LABEL_73;
            case 7u:
              CFDictionaryGetValue(a4, v116);
              v39 = OUTLINED_FUNCTION_11_14();
              v42 = 7;
              goto LABEL_72;
            case 8u:
              CFDictionaryGetValue(a4, v117);
              v39 = OUTLINED_FUNCTION_11_14();
              v42 = 8;
              goto LABEL_72;
            case 9u:
              CFDictionaryGetValue(a4, v118);
              v35 = OUTLINED_FUNCTION_11_14();
              v38 = 9;
              goto LABEL_70;
            case 0xAu:
              CFDictionaryGetValue(a4, v119);
              v39 = OUTLINED_FUNCTION_11_14();
              v42 = 10;
              goto LABEL_72;
            case 0xBu:
              CFDictionaryGetValue(a4, v120);
              v51 = OUTLINED_FUNCTION_11_14();
              v46 = iAP2MsgAddCFU64Param(v51, v52, 11, v53);
              goto LABEL_73;
            case 0xCu:
              CFDictionaryGetValue(a4, v121);
              v43 = OUTLINED_FUNCTION_11_14();
              v46 = iAP2MsgAddCFU16Param(v43, v44, 12, v45);
              goto LABEL_73;
            case 0xDu:
              CFDictionaryGetValue(a4, v122);
              v35 = OUTLINED_FUNCTION_11_14();
              v38 = 13;
LABEL_70:
              v46 = iAP2MsgAddCFBooleanParam(v35, v36, v38, v37);
              goto LABEL_73;
            case 0xEu:
              if (!v126 || *(v125 + 82) != 1)
              {
                goto LABEL_75;
              }

              v58 = OUTLINED_FUNCTION_35_5();
              v46 = iAP2MsgAddU8Param(v58, v59, 14, 0);
LABEL_73:
              if (v46)
              {
                ++v11;
              }

LABEL_75:
              if (!--Count)
              {
                return v11;
              }

              continue;
            case 0x10u:
              CFDictionaryGetValue(a4, v123);
              v39 = OUTLINED_FUNCTION_11_14();
              v42 = 16;
LABEL_72:
              v46 = iAP2MsgAddCFStringParam(v39, v40, v42, v41);
              goto LABEL_73;
            default:
              goto LABEL_75;
          }
        }
      }

      LOWORD(v11) = 0;
      return v11;
    }

    CFRelease(RawValuesString);
    goto LABEL_26;
  }

  return v11;
}

void iap2_nowPlaying_playbackQueueListChangedHandler()
{
  OUTLINED_FUNCTION_43_1();
  if (v1)
  {
    OUTLINED_FUNCTION_50();
    if (v3)
    {
      v4 = v2;
      if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v32, v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v34, v35, v36, v37);
      }

      v5 = OUTLINED_FUNCTION_76_5();
      if (os_log_type_enabled(v5, v6))
      {
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_101_1(v7, v8, v9, v10, v11);
      }

      v12 = OUTLINED_FUNCTION_69_3();
      Feature = iap2_feature_getFeature(v12, v13);
      if (Feature)
      {
        v15 = Feature;
        OUTLINED_FUNCTION_89_3();
        if (v16)
        {
          if ((*(v15 + 80) & 1) != 0 || *(v15 + 81) == 1)
          {
            if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_27())
            {
              OUTLINED_FUNCTION_6();
              OUTLINED_FUNCTION_14_3();
              OUTLINED_FUNCTION_4_21();
              _os_log_error_impl(v38, v39, v40, v41, v42, v43);
            }

            v17 = OUTLINED_FUNCTION_53_3();
            if (os_log_type_enabled(v17, v18))
            {
              OUTLINED_FUNCTION_84();
              OUTLINED_FUNCTION_14_3();
              _os_log_debug_impl(v28, v29, OS_LOG_TYPE_DEBUG, v30, v31, 8u);
            }

            _checkMoveWindowAndRequestPBQList(v4 != 0, *(v15 + 84), v0, v15);
            v19 = OUTLINED_FUNCTION_6_7();
            malloc_type_malloc(0xFFFFuLL, 0x31996405uLL);
            v20 = OUTLINED_FUNCTION_52_5();
            iAP2MsgInit(v20, v21, v22, v23, v24, 0);
            v25 = OUTLINED_FUNCTION_9_3();
            v27 = iAP2MsgAddGroupParam(v25, v26);
            iAP2MsgAddU8Param(v19, v27, 14, 0);
            iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(v0, v19);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_44_2();
}

void _playbackQueueListChangedSentCB(uint64_t a1)
{
  if (a1)
  {
    v3 = OUTLINED_FUNCTION_71_1(a1);
    if (v3)
    {
      Feature = iap2_feature_getFeature(v3, 0xEu);
      if (Feature)
      {
        if ((*(Feature + 80) & 1) == 0 && (*(Feature + 81) & 1) == 0)
        {
          v7 = logObjectForModule_30();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v8, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 0x1Eu);
          }
        }
      }
    }

    if (v2)
    {
      v5 = v1[6];
      if (v5)
      {
        free(v5);
        v1[6] = 0;
      }

      v6 = v1[3];
      if (v6)
      {
        free(v6);
      }

      free(v1);
    }
  }
}

uint64_t iap2_nowPlaying_playbackQueueListInfoResponseHandler(const __CFDictionary *a1, const __CFDictionary *a2)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v4 = &audioProductCerts_endpoint_publish_onceToken;
  if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_1_27();
    OUTLINED_FUNCTION_4_32();
    _os_log_error_impl(v174, v175, v176, v177, v178, v179);
  }

  if (OUTLINED_FUNCTION_24())
  {
    v5 = *(a1 + 1);
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"RequestID");
    }

    else
    {
      Value = @"(nil)";
    }

    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = Value;
    OUTLINED_FUNCTION_33_8();
    _os_log_impl(v7, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 0x16u);
  }

  Feature = iap2_feature_getFeature(a1, 0xEu);
  if (!Feature)
  {
    return 0;
  }

  v12 = Feature;
  OUTLINED_FUNCTION_89_3();
  if (!v13)
  {
    return 0;
  }

  v14 = *(a1 + 4);
  if (!v14 || !*(v14 + 24))
  {
    return 0;
  }

  v288 = a1;
  v15 = CFDictionaryGetValue(a2, @"StartIndex");
  v16 = CFDictionaryGetValue(a2, @"Count");
  v17 = CFDictionaryGetValue(a2, @"NonLibrary");
  v18 = CFDictionaryGetValue(a2, @"Available");
  valuePtr = 0;
  HIWORD(v299) = 0;
  if (!v18)
  {
    v265 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v265))
    {
      return 0;
    }

    *buf = 0;
    goto LABEL_194;
  }

  if (a2)
  {
    v19 = v18;
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberIntType, &valuePtr + 4);
    }

    if (v16)
    {
      CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
    }

    if (v17)
    {
      CFNumberGetValue(v17, kCFNumberSInt8Type, &v299 + 7);
    }

    CFNumberGetValue(v19, kCFNumberSInt8Type, &v299 + 6);
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_1_27();
      OUTLINED_FUNCTION_4_32();
      _os_log_error_impl(v186, v187, v188, v189, v190, v191);
    }

    if (OUTLINED_FUNCTION_80_2())
    {
      OUTLINED_FUNCTION_9_20();
      *&buf[20] = v20;
      *&buf[22] = v21;
LABEL_39:
      OUTLINED_FUNCTION_33_8();
      _os_log_impl(v24, v25, OS_LOG_TYPE_INFO, v26, v27, 0x1Au);
    }
  }

  else
  {
    if ((!gLogObjects || gNumLogObjects < 32) && OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_1_27();
      OUTLINED_FUNCTION_4_32();
      _os_log_error_impl(v203, v204, v205, v206, v207, v208);
    }

    if (OUTLINED_FUNCTION_80_2())
    {
      OUTLINED_FUNCTION_9_20();
      *&buf[20] = v22;
      *&buf[22] = v23;
      goto LABEL_39;
    }
  }

  v28 = CFDictionaryGetValue(a2, @"RequestID");
  if (!v28)
  {
    v266 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v266))
    {
      return 0;
    }

    *buf = 0;
    goto LABEL_194;
  }

  v29 = v28;
  v30 = *(v12 + 96);
  if (!v30)
  {
    v267 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v267))
    {
      return 0;
    }

    *buf = 0;
    goto LABEL_194;
  }

  if (!CFEqual(v30, v29))
  {
    v268 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v268))
    {
      return 0;
    }

    *buf = 0;
    goto LABEL_194;
  }

  if ((*(v12 + 80) & 1) == 0 && (*(v12 + 81) & 1) == 0)
  {
    v278 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v278))
    {
      return 0;
    }

    *buf = 0;
LABEL_194:
    OUTLINED_FUNCTION_8_20();
    v185 = 2;
LABEL_195:
    _os_log_error_impl(v180, v181, v182, v183, v184, v185);
    return 0;
  }

  v31 = OUTLINED_FUNCTION_86_3();
  iAP2LinkGetSessionForService(v31, 1);
  v32 = OUTLINED_FUNCTION_86_3();
  SessionInfo = iAP2LinkGetSessionInfo(v32, v33);
  if (!SessionInfo)
  {
    CFDictionaryGetValue(a2, @"List");
    v41 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v41))
    {
      return 0;
    }

    *buf = 0;
    goto LABEL_194;
  }

  v35 = SessionInfo[2];
  v36 = *(v12 + 80);
  if (v35 <= 1)
  {
    v38 = OUTLINED_FUNCTION_98_1(&kCFACCNowPlaying_PlaybackQueueContentInfo_List, v279, v281, v283, v286);
    v37 = 0;
    v39 = 0;
    v40 = &audioProductCerts_endpoint_publish_onceToken;
    if ((v36 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v37 = *(v12 + 81);
  v38 = OUTLINED_FUNCTION_98_1(&kCFACCNowPlaying_PlaybackQueueContentInfo_List, v279, v281, v283, v286);
  if (v37)
  {
    v39 = 6;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0x100246000;
  if (v36)
  {
LABEL_55:
    v39 = 3;
  }

LABEL_56:
  v43 = valuePtr;
  if (v38)
  {
    Count = CFArrayGetCount(v38);
  }

  else
  {
    Count = 0;
  }

  theArray = v38;
  if (Count != v43)
  {
    v269 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v269))
    {
      return 0;
    }

    v270 = valuePtr;
    if (v38)
    {
      v271 = CFArrayGetCount(v38);
    }

    else
    {
      v271 = 0;
    }

    *buf = 67109376;
    *&buf[4] = v270;
    *&buf[8] = 2048;
    *&buf[10] = v271;
    OUTLINED_FUNCTION_4_32();
    goto LABEL_195;
  }

  LODWORD(v284) = v35;
  v45 = gLogObjects;
  v46 = *(v40 + 3936);
  if ((!gLogObjects || v46 < 32) && OUTLINED_FUNCTION_13())
  {
    *buf = 134218240;
    *&buf[4] = v45;
    OUTLINED_FUNCTION_17_3();
    *&buf[14] = v46;
    OUTLINED_FUNCTION_4_32();
    _os_log_error_impl(v192, v193, v194, v195, v196, v197);
  }

  if (OUTLINED_FUNCTION_80_2())
  {
    *buf = 67109888;
    *&buf[4] = HIBYTE(v299);
    *&buf[8] = 1024;
    *&buf[10] = v36;
    *&buf[14] = 1024;
    *&buf[16] = v37;
    *&buf[20] = 1024;
    *&buf[22] = valuePtr;
    OUTLINED_FUNCTION_33_8();
    _os_log_impl(v47, v48, OS_LOG_TYPE_INFO, v49, v50, 0x1Au);
  }

  v51 = v288;
  if (((HIBYTE(v299) == 0) & v36) == 1)
  {
    v285 = 1;
    v52 = 8 * valuePtr;
    v39 = 3;
    goto LABEL_95;
  }

  if (!v37)
  {
    if ((!gLogObjects || *(v40 + 3936) < 32) && OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_1_27();
      OUTLINED_FUNCTION_4_32();
      _os_log_error_impl(v247, v248, v249, v250, v251, v252);
    }

    if (OUTLINED_FUNCTION_80_2())
    {
      *buf = 0;
      OUTLINED_FUNCTION_33_8();
      _os_log_impl(v143, v144, OS_LOG_TYPE_INFO, v145, v146, 2u);
    }

    BYTE6(v299) = 0;
    if ((v287 & 1) == 0)
    {
      v142 = 0;
      v52 = 0;
      goto LABEL_158;
    }

LABEL_192:
    v42 = 1;
    _sendPBQTransferTypeAndAvailability(v51);
    return v42;
  }

  v285 = (HIBYTE(v299) == 0) & v36;
  if (valuePtr >= 1)
  {
    v53 = 0;
    v40 = @"AlbumArtist";
    v52 = 22;
    v297 = v12;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v53);
      v55 = v52;
      if (ValueAtIndex && *v12 == 1)
      {
        v51 = ValueAtIndex;
        v56 = 0;
        v57 = *(v12 + 92);
        v58 = 4;
        while (1)
        {
          if ((v57 >> v56))
          {
            switch(v56)
            {
              case 12:
                v59 = OUTLINED_FUNCTION_44_7();
                goto LABEL_87;
              case 13:
              case 15:
              case 17:
                break;
              case 14:
                v59 = v51;
                v60 = @"AlbumArtist";
                goto LABEL_87;
              case 16:
                v59 = v51;
                v60 = @"Genre";
                goto LABEL_87;
              case 18:
                v59 = v51;
                v60 = @"Composer";
                goto LABEL_87;
              default:
                if (v56 == 6)
                {
                  v59 = v51;
                  v60 = @"AlbumTitle";
                  goto LABEL_87;
                }

                if (v56 == 1)
                {
                  v59 = v51;
                  v60 = @"Title";
LABEL_87:
                  v61 = CFDictionaryGetValue(v59, v60);
                  v58 += _calculateStrParamSize(v61);
                  break;
                }

                if (!v56 && CFDictionaryGetValue(v51, @"PersistentID"))
                {
                  v58 += 12;
                }

                break;
            }
          }

          if (++v56 == 19)
          {
            goto LABEL_89;
          }
        }
      }

      v58 = 0;
LABEL_89:
      v52 = v58 + v55;
      ++v53;
      v12 = v297;
    }

    while (v53 < valuePtr);
    v39 = 6;
    OUTLINED_FUNCTION_85_3();
    v4 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_95:
    OUTLINED_FUNCTION_75_5();
    if ((v63 & 1) == 0)
    {
      if (v52)
      {
        v51 = v62;
        goto LABEL_98;
      }

      v142 = 0;
LABEL_158:
      key = 0;
      goto LABEL_159;
    }

    goto LABEL_192;
  }

  OUTLINED_FUNCTION_75_5();
  v39 = 6;
  if (v173)
  {
    goto LABEL_192;
  }

  v51 = v172;
  v52 = 22;
LABEL_98:
  v64 = malloc_type_malloc(v52, 0x3BFF376uLL);
  if ((!gLogObjects || *(v40 + 3936) < 32) && OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_1_27();
    OUTLINED_FUNCTION_4_32();
    _os_log_error_impl(v210, v211, v212, v213, v214, v215);
  }

  if (OUTLINED_FUNCTION_80_2())
  {
    v65 = obfuscatedPointer(v64);
    *buf = 67109376;
    *&buf[4] = v52;
    *&buf[8] = 2048;
    *&buf[10] = v65;
    OUTLINED_FUNCTION_33_8();
    _os_log_impl(v66, v67, OS_LOG_TYPE_INFO, v68, v69, 0x12u);
  }

  HIDWORD(v282) = v39;
  v298 = v12;
  key = v64;
  if (!v285)
  {
    v305 = 0xAAAAAAAAAAAAAAAALL;
    *&v82 = 0xAAAAAAAAAAAAAAAALL;
    *(&v82 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v303 = v82;
    v304 = v82;
    *buf = v82;
    *&buf[16] = v82;
    HIDWORD(v284) = v52;
    iAP2MsgInit(buf, 0, v64, v52, 0, 0);
    iAP2MsgAddU32Param(buf, 0, 0, valuePtr);
    iAP2MsgAddU32Param(buf, 0, 1, HIDWORD(valuePtr));
    if (valuePtr < 1)
    {
LABEL_149:
      v142 = 1;
      OUTLINED_FUNCTION_85_3();
      v4 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_151:
      v12 = v298;
      v39 = HIDWORD(v282);
      v52 = HIDWORD(v284);
      goto LABEL_159;
    }

    v83 = 0;
    v40 = @"Artist";
    v292 = @"AlbumTitle";
    v290 = @"Title";
    v84 = *v51;
    while (1)
    {
      v85 = CFArrayGetValueAtIndex(theArray, v83);
      if (v85)
      {
        v86 = *(v298 + 92);
        if (v86)
        {
          if (*v298 == 1)
          {
            break;
          }
        }
      }

LABEL_148:
      if (++v83 >= valuePtr)
      {
        goto LABEL_149;
      }
    }

    v87 = v85;
    v51 = iAP2MsgAddGroupParam(buf, 2);
    v88 = 0;
    while (1)
    {
      if ((v86 >> v88))
      {
        switch(v88)
        {
          case 12:
            v89 = CFDictionaryGetValue(v87, @"Artist");
            if (v89)
            {
              v97 = OUTLINED_FUNCTION_31_9(v89, v90, v91, v92, v93, v94, v95, v96, v280, v282, v284, v287, v288, key, v290, v291, v292, v293, v294, theArray, v298, v299, valuePtr, v301, buf[0]);
              v100 = 12;
              goto LABEL_146;
            }

            break;
          case 13:
          case 15:
          case 17:
            break;
          case 14:
            v102 = CFDictionaryGetValue(v87, @"AlbumArtist");
            if (v102)
            {
              v97 = OUTLINED_FUNCTION_31_9(v102, v103, v104, v105, v106, v107, v108, v109, v280, v282, v284, v287, v288, key, v290, v291, v292, v293, v294, theArray, v298, v299, valuePtr, v301, buf[0]);
              v100 = 14;
              goto LABEL_146;
            }

            break;
          case 16:
            v118 = CFDictionaryGetValue(v87, @"Genre");
            if (v118)
            {
              v97 = OUTLINED_FUNCTION_31_9(v118, v119, v120, v121, v122, v123, v124, v125, v280, v282, v284, v287, v288, key, v290, v291, v292, v293, v294, theArray, v298, v299, valuePtr, v301, buf[0]);
              v100 = 16;
              goto LABEL_146;
            }

            break;
          case 18:
            v110 = CFDictionaryGetValue(v87, @"Composer");
            if (v110)
            {
              v97 = OUTLINED_FUNCTION_31_9(v110, v111, v112, v113, v114, v115, v116, v117, v280, v282, v284, v287, v288, key, v290, v291, v292, v293, v294, theArray, v298, v299, valuePtr, v301, buf[0]);
              v100 = 18;
              goto LABEL_146;
            }

            break;
          default:
            if (v88 == 6)
            {
              v134 = CFDictionaryGetValue(v87, v292);
              if (v134)
              {
                v97 = OUTLINED_FUNCTION_31_9(v134, v135, v136, v137, v138, v139, v140, v141, v280, v282, v284, v287, v288, key, v290, v291, v292, v293, v294, theArray, v298, v299, valuePtr, v301, buf[0]);
                v100 = 6;
                goto LABEL_146;
              }
            }

            else
            {
              if (v88 != 1)
              {
                if (!v88)
                {
                  v101 = CFDictionaryGetValue(v87, v84);
                  v301 = 0;
                  if (v101)
                  {
                    if (CFNumberGetValue(v101, kCFNumberSInt64Type, &v301))
                    {
                      iAP2MsgAddU64Param(buf, v51, 0, v301);
                    }
                  }
                }

                break;
              }

              v126 = CFDictionaryGetValue(v87, v290);
              if (v126)
              {
                v97 = OUTLINED_FUNCTION_31_9(v126, v127, v128, v129, v130, v131, v132, v133, v280, v282, v284, v287, v288, key, v290, v291, v292, v293, v294, theArray, v298, v299, valuePtr, v301, buf[0]);
                v100 = 1;
LABEL_146:
                iAP2MsgAddCFStringParam(v97, v98, v100, v99);
                break;
              }
            }

            break;
        }
      }

      if (++v88 == 19)
      {
        goto LABEL_148;
      }
    }
  }

  if (valuePtr >= 1)
  {
    HIDWORD(v284) = v52;
    v70 = 0;
    v71 = *v51;
    v51 = &_os_log_default;
    v40 = v64;
    v72 = theArray;
    do
    {
      v73 = CFArrayGetValueAtIndex(v72, v70);
      v74 = CFDictionaryGetValue(v73, v71);
      v301 = 0;
      if (v74 && CFNumberGetValue(v74, kCFNumberSInt64Type, &v301))
      {
        *v40 = HIBYTE(v301);
        *(v40 + 1) = BYTE6(v301);
        *(v40 + 2) = BYTE5(v301);
        *(v40 + 3) = BYTE4(v301);
        *(v40 + 4) = BYTE3(v301);
        *(v40 + 5) = BYTE2(v301);
        *(v40 + 6) = BYTE1(v301);
        *(v40 + 7) = v301;
      }

      else
      {
        v75 = v4;
        v76 = v4[491];
        v77 = gNumLogObjects;
        if (v76 && gNumLogObjects >= 32)
        {
          v78 = *(v76 + 248);
        }

        else
        {
          v78 = &_os_log_default;
          if (OUTLINED_FUNCTION_18())
          {
            *buf = 134218240;
            *&buf[4] = v76;
            *&buf[12] = 1024;
            *&buf[14] = v77;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v78 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v79 = valuePtr;
          v80 = obfuscatedPointer(v40);
          v81 = *(v298 + 92);
          *buf = 67110146;
          *&buf[4] = v70;
          *&buf[8] = 1024;
          *&buf[10] = v79;
          *&buf[14] = 2048;
          *&buf[16] = v80;
          *&buf[24] = 1024;
          *&buf[26] = v81;
          *&buf[30] = 2112;
          *&v303 = v73;
          _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "#PlaybackQueueList fill in pid list, failed to retrieve pid from item: i=%d / %d, p=%p infoMask=0x%x item=%@", buf, 0x28u);
        }

        *v40 = 0;
        v4 = v75;
        v72 = theArray;
      }

      ++v70;
      v40 += 8;
    }

    while (v70 < valuePtr);
    v142 = 1;
    OUTLINED_FUNCTION_85_3();
    goto LABEL_151;
  }

  v142 = 1;
  v51 = v288;
LABEL_159:
  if (*(v12 + 120) == 1)
  {
    TransferEntry = iap2_sessionFileTransfer_findTransferEntry(v51, *(v12 + 121));
    if (TransferEntry && *(TransferEntry + 8))
    {
      v51 = v4[491];
      v40 = *(v40 + 3936);
      if (v51 && v40 >= 32)
      {
        v209 = *(v51 + 31);
      }

      else
      {
        v209 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          *buf = 134218240;
          *&buf[4] = v51;
          OUTLINED_FUNCTION_17_3();
          *&buf[14] = v40;
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v238, v239, v240, v241, v242, v243);
        }
      }

      if (OUTLINED_FUNCTION_76())
      {
        OUTLINED_FUNCTION_9_20();
        *&buf[20] = v244;
        *&buf[22] = v245;
        *&buf[26] = v244;
        *&buf[28] = v246;
        _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_INFO, "#PlaybackQueueList cancel previous transfer: id=%d(%d) type=%d(%d) state=%d", buf, 0x20u);
      }

      OUTLINED_FUNCTION_85_3();
      _cancelPendingTransfer_0();
    }

    *(v12 + 120) = 0;
  }

  v148 = OUTLINED_FUNCTION_86_3();
  if (iAP2FileTransferAllocateBufferID(v148, HIDWORD(v287), (v12 + 121)))
  {
    v149 = v52;
    v150 = v4;
    *(v12 + 120) = 1;
    v151 = OUTLINED_FUNCTION_54_0();
    if (!v151)
    {
      v42 = 0;
      v165 = key;
      if (!key)
      {
        return v42;
      }

      goto LABEL_187;
    }

    v152 = v151;
    OUTLINED_FUNCTION_86_3();
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_72_3();
    iAP2FileTransferCreate(v153, v154, v155, v156, v157, v158, v152, v159);
    iAP2FileTransferTypeData(v152, v39, 0);
    v160 = iap2_sessionFileTransfer_addTransferForFeature(v51, 14, v152, 0);
    v161 = v150[491];
    v162 = *(v40 + 3936);
    if (v161)
    {
      v163 = v162 <= 31;
    }

    else
    {
      v163 = 1;
    }

    v164 = !v163;
    if (v160)
    {
      if (v164)
      {
        theArraya = *(v161 + 248);
      }

      else
      {
        theArraya = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v161;
          OUTLINED_FUNCTION_17_3();
          *&buf[14] = v162;
          theArraya = &_os_log_default;
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v222, v223, v224, v225, v226, v227);
        }
      }

      if (OUTLINED_FUNCTION_76())
      {
        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_84_3(&_mh_execute_header, theArraya, v228, "#PlaybackQueueList added transfer for feature and set type: id=%d type=%d state=%d", buf);
      }

      v229 = *(v12 + 128);
      if (v229)
      {
        CFRelease(v229);
        *(v12 + 128) = 0;
      }

      v230 = v142 ^ 1;
      if (!key)
      {
        v230 = 1;
      }

      if (v230)
      {
        v231 = 0;
      }

      else
      {
        v231 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, key, v149, kCFAllocatorDefault);
      }

      *(v12 + 128) = v231;
      *(v12 + 122) = v39;
      if ((_sendPBQTransferTypeAndAvailability(v51) & 1) == 0)
      {
        if ((!v150[491] || *(v40 + 3936) < 32) && OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_27();
          OUTLINED_FUNCTION_4_32();
          _os_log_error_impl(v272, v273, v274, v275, v276, v277);
        }

        if (OUTLINED_FUNCTION_13())
        {
          *buf = 0;
          OUTLINED_FUNCTION_8_20();
          _os_log_error_impl(v260, v261, v262, v263, v264, 2u);
        }

        iAP2FileTransferCancel(v152, v253, v254, v255, v256, v257, v258, v259);
      }

      return 1;
    }

    if (v164)
    {
      v165 = key;
    }

    else
    {
      v165 = key;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        *&buf[4] = v161;
        OUTLINED_FUNCTION_17_3();
        *&buf[14] = v162;
        OUTLINED_FUNCTION_4_32();
        _os_log_error_impl(v232, v233, v234, v235, v236, v237);
      }
    }

    if (OUTLINED_FUNCTION_13())
    {
      *buf = 0;
      OUTLINED_FUNCTION_8_20();
      _os_log_error_impl(v198, v199, v200, v201, v202, 2u);
    }

    iAP2FileTransferRelease(v152);
  }

  else
  {
    if (v4[491] && *(v40 + 3936) >= 32)
    {
      v165 = key;
    }

    else
    {
      v165 = key;
      if (OUTLINED_FUNCTION_13())
      {
        OUTLINED_FUNCTION_1_27();
        OUTLINED_FUNCTION_4_32();
        _os_log_error_impl(v216, v217, v218, v219, v220, v221);
      }
    }

    if (OUTLINED_FUNCTION_13())
    {
      *buf = 0;
      OUTLINED_FUNCTION_8_20();
      _os_log_error_impl(v166, v167, v168, v169, v170, 2u);
    }
  }

  v42 = 1;
  if (v165)
  {
LABEL_187:
    free(v165);
  }

  return v42;
}