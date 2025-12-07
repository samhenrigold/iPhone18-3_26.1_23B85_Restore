uint64_t getFlagsFromAttributes(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v47 = *MEMORY[0x1E69E9840];
  v5 = buffer;
  bzero(buffer, 0x1000uLL);
  CString = CFStringGetCString(v2, buffer, 4096, 0x8000100u);
  if (!CString)
  {
    v5 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v7 = strcmp(v5, "kMDItemTextVector");
    if (v7)
    {
      result = 0;
    }

    else
    {
      result = 20528;
    }

    if (!v7 || !CString)
    {
      return result;
    }
  }

  else if (!CString)
  {
    return 0;
  }

  *buf = *v4;
  *&buf[16] = *(v4 + 16);
  result = _MDPlistDictionaryGetPlistObjectForKey();
  if (result)
  {
    memset(buf, 0, sizeof(buf));
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      memset(buf, 0, sizeof(buf));
      PlistObjectType = _MDPlistGetPlistObjectType();
      if (PlistObjectType == 225)
      {
        memset(buf, 0, sizeof(buf));
        v10 = 16 * (_MDPlistBooleanGetValue() != 0);
      }

      else
      {
        v11 = PlistObjectType;
        v12 = *__error();
        v13 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 134;
          *&buf[18] = 1024;
          *&buf[20] = v11;
          v42 = 2080;
          v43 = "uniqued";
          _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s", buf, 0x22u);
        }

        v10 = 0;
        *__error() = v12;
      }
    }

    else
    {
      v10 = 0;
    }

    memset(buf, 0, sizeof(buf));
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      memset(buf, 0, sizeof(buf));
      v14 = _MDPlistGetPlistObjectType();
      if (v14 == 225)
      {
        memset(buf, 0, sizeof(buf));
        v15 = _MDPlistBooleanGetValue() != 0;
      }

      else
      {
        v16 = v14;
        v17 = *__error();
        v18 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 142;
          *&buf[18] = 1024;
          *&buf[20] = v16;
          v42 = 2080;
          v43 = "multivalued";
          _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s", buf, 0x22u);
        }

        v15 = 0;
        *__error() = v17;
      }
    }

    else
    {
      v15 = 0;
    }

    memset(buf, 0, sizeof(buf));
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      memset(buf, 0, sizeof(buf));
      v19 = _MDPlistGetPlistObjectType();
      if (v19 == 225)
      {
        memset(buf, 0, sizeof(buf));
        v20 = _MDPlistBooleanGetValue() != 0;
      }

      else
      {
        v21 = v19;
        v22 = *__error();
        v23 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 150;
          *&buf[18] = 1024;
          *&buf[20] = v21;
          v42 = 2080;
          v43 = "nosearch";
          _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s", buf, 0x22u);
        }

        v20 = 0;
        *__error() = v22;
      }
    }

    else
    {
      v20 = 0;
    }

    if (_os_feature_enabled_impl() && (memset(buf, 0, sizeof(buf)), _MDPlistDictionaryGetPlistObjectForKey()))
    {
      memset(buf, 0, sizeof(buf));
      v24 = _MDPlistGetPlistObjectType();
      if (v24 == 225)
      {
        memset(buf, 0, sizeof(buf));
        v25 = _MDPlistBooleanGetValue() != 0;
      }

      else
      {
        v38 = v24;
        v39 = *__error();
        v40 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 159;
          *&buf[18] = 1024;
          *&buf[20] = v38;
          v42 = 2080;
          v43 = "vector";
          v44 = 2112;
          v45 = v2;
          _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s %@", buf, 0x2Cu);
        }

        v25 = 0;
        *__error() = v39;
      }
    }

    else
    {
      v25 = 0;
    }

    memset(buf, 0, sizeof(buf));
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      memset(buf, 0, sizeof(buf));
      v26 = _MDPlistGetPlistObjectType();
      if (v26 == 225)
      {
        memset(buf, 0, sizeof(buf));
        v27 = _MDPlistBooleanGetValue() != 0;
      }

      else
      {
        v28 = v26;
        v29 = *__error();
        v30 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 168;
          *&buf[18] = 1024;
          *&buf[20] = v28;
          v42 = 2080;
          v43 = "noindex";
          _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s", buf, 0x22u);
        }

        v27 = 0;
        *__error() = v29;
      }
    }

    else
    {
      v27 = 0;
    }

    memset(buf, 0, sizeof(buf));
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      memset(buf, 0, sizeof(buf));
      v31 = _MDPlistGetPlistObjectType();
      if (v31 == 225)
      {
        memset(buf, 0, sizeof(buf));
        v32 = _MDPlistBooleanGetValue() != 0;
      }

      else
      {
        v33 = v31;
        v34 = *__error();
        v35 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "getFlagsFromAttributes";
          *&buf[12] = 1024;
          *&buf[14] = 175;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          v42 = 2080;
          v43 = "notokenize";
          _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: Invalid type:%d for schema field:%s", buf, 0x22u);
        }

        v36 = __error();
        v32 = 0;
        *v36 = v34;
      }
    }

    else
    {
      v32 = 0;
    }

    v37 = v10 | 0x20;
    if (!v15)
    {
      v37 = v10;
    }

    if (v20)
    {
      v37 |= 0x100u;
    }

    if (v25)
    {
      v37 |= 0x5030u;
    }

    if (v27)
    {
      v37 |= 0x2000u;
    }

    if (v32)
    {
      return v37 | 0x4000;
    }

    else
    {
      return v37;
    }
  }

  return result;
}

void setOneFieldLocked(const __CFString *a1, char *a2, const __CFArray *a3, int *a4, uint64_t *a5, unsigned int a6, int a7, int a8)
{
  LODWORD(v159) = a8;
  LODWORD(v158) = a7;
  v8 = a6;
  v161 = a5;
  v162 = a3;
  v10 = a2;
  v181 = *MEMORY[0x1E69E9840];
  v169 = a6;
  if (dword_1EBF46ADC >= 5)
  {
    v115 = *__error();
    v116 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      *v171 = 138412546;
      *&v171[4] = a1;
      *&v171[12] = 2112;
      *&v171[14] = v162;
      _os_log_impl(&dword_1C278D000, v116, OS_LOG_TYPE_DEFAULT, "Trying to store %@ = %@", v171, 0x16u);
    }

    *__error() = v115;
    v10 = a2;
  }

  v168 = 0;
  v12 = db_corespotlight_store(a4);
  v14 = v12;
  if ((v8 & 0x800) != 0 && v12)
  {
    v104 = __si_assert_copy_extra_332();
    v30 = v104;
    v112 = "";
    if (v104)
    {
      v112 = v104;
    }

    *&v154 = "((flags & DB_FIELD_EXTENDED_ATTR) && isCoreSpotlight) == 0";
    *(&v154 + 1) = v112;
    v113 = 504;
    goto LABEL_211;
  }

  v157 = &v155;
  v167 = 0;
  MEMORY[0x1EEE9AC00](v13);
  v154 = 0u;
  v152 = 0u;
  memset(v153, 0, sizeof(v153));
  memset(v151, 0, sizeof(v151));
  v150 = 0u;
  v148 = 0u;
  memset(v149, 0, sizeof(v149));
  memset(v147, 0, sizeof(v147));
  v146 = 0u;
  memset(v145, 0, sizeof(v145));
  if (!v10)
  {
    v10 = fasterUTF8String(a1, &v167, v145, 256, &v168);
  }

  v15 = *v10;
  v156 = a4;
  if (v15 == 58)
  {
    LODWORD(v160) = 0;
    v16 = 0;
    v17 = v10;
    while (!strncmp(v17, ":EA:", 4uLL))
    {
      v17 += 4;
      if (v14)
      {
        goto LABEL_18;
      }

      v8 |= 0x800u;
LABEL_20:
      v169 = v8;
LABEL_21:
      if (*v17 != 58)
      {
LABEL_22:
        v18 = v8 & 0x800;
        a4 = v156;
        goto LABEL_24;
      }
    }

    if (strncmp(v17, ":PR:", 4uLL))
    {
      if (v17[1] == 65 && v17[2] == 58)
      {
        v17 += 3;
        LODWORD(v160) = 1;
      }

      else
      {
        if (strncmp(v17, ":INC:", 5uLL))
        {
          goto LABEL_22;
        }

        v17 += 5;
        v16 = 1;
      }

      goto LABEL_21;
    }

    v17 += 4;
    if (!v14)
    {
      v8 |= 0x804u;
      goto LABEL_20;
    }

LABEL_18:
    v8 &= ~0x200u;
    goto LABEL_20;
  }

  v16 = 0;
  LODWORD(v160) = 0;
  v18 = v8 & 0x800;
  v17 = v10;
LABEL_24:
  v94 = v18 == 0;
  v19 = v14 ^ 1;
  if (v94)
  {
    v19 = 1;
  }

  v20 = v162;
  if ((v19 & 1) == 0)
  {
    v117 = __si_assert_copy_extra_332();
    v30 = v117;
    v125 = "";
    if (v117)
    {
      v125 = v117;
    }

    __message_assert_336(v117, v118, v119, v120, v121, v122, v123, v124, "SIIndexInternals.cpp", 563, "((flags & DB_FIELD_EXTENDED_ATTR) && isCoreSpotlight) == 0", v125, v145[0], *&v145[1], *(&v145[1] + 8), *(&v145[2] + 1), v146, *&v147[0], *(v147 + 8), *(&v147[1] + 1), v148, *&v149[0], *(v149 + 8), *(&v149[1] + 1), v150, *&v151[0], *(v151 + 8), *(&v151[1] + 1), v152, *&v153[0], *(v153 + 8), *(&v153[1] + 1), v154);
    goto LABEL_212;
  }

  if (strncmp(v17, "_kMD", 4uLL))
  {
    goto LABEL_29;
  }

  if (!strcmp(v17, "_kMDItemExternalID"))
  {
    v8 = 8968;
LABEL_67:
    v169 = v8;
    goto LABEL_68;
  }

  if (!strcmp(v17, "_kMDItemBundleID"))
  {
    v8 = 17176;
    goto LABEL_67;
  }

  if (!strcmp(v17, "_kMDItemOwnerUserID"))
  {
    v8 = 776;
    goto LABEL_67;
  }

  if (!strcmp(v17, "_kMDItemRelatedObjects") || !strcmp(v17, "_kMDItemRelatedObjectsWithBundle"))
  {
    v32 = 0;
    v8 = 8480;
LABEL_140:
    v169 = v8;
    goto LABEL_93;
  }

  if (!strcmp(v17, "_kMDItemRankingLaunchStrings") || !strcmp(v17, "_kMDItemActivityLaunchDates") || !strcmp(v17, "_kMDItemRankingLaunchDates"))
  {
    v32 = 0;
    v8 = 32;
    goto LABEL_140;
  }

  if (!strcmp(v17, "_kMDItemOutgoingCounts") || !strcmp(v17, "_kMDItemIncomingCounts") || !strcmp(v17, "_kMDItemOutgoingMailCounts") || !strcmp(v17, "_kMDItemIncomingMailCounts") || !strcmp(v17, "_kMDItemOutgoingSMSCounts") || !strcmp(v17, "_kMDItemIncomingSMSCounts") || !strcmp(v17, "_kMDItemOutgoingCalendarCounts") || !strcmp(v17, "_kMDItemIncomingCalendarCounts") || !strcmp(v17, "_kMDItemOutgoingFileProviderCounts") || !strcmp(v17, "_kMDItemIncomingFileProviderCounts") || !strcmp(v17, "_kMDItemIncomingVideoCallDates") || !strcmp(v17, "_kMDItemOutgoingVideoCallDates") || !strcmp(v17, "_kMDItemIncomingAudioCallDates") || !strcmp(v17, "_kMDItemOutgoingAudioCallDates"))
  {
    v32 = 0;
    v8 = 288;
    goto LABEL_140;
  }

  if (!strcmp(v17, "_kMDItemLaunchString"))
  {
    v32 = 0;
    v8 = 256;
    v169 = 256;
    a4 = v156;
    v20 = v162;
    goto LABEL_93;
  }

  if (strcmp(v17, "_kMDItemPrimaryTextEmbedding") && strcmp(v17, "_kMDItemSecondaryTextEmbedding") && strcmp(v17, "_kMDItemPhotoEmbedding"))
  {
    v8 |= 0x108u;
    v169 = v8;
  }

  a4 = v156;
  v20 = v162;
LABEL_29:
  v21 = v14 ^ 1;
  if ((v8 & 0x800) == 0)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v22 = __si_assert_copy_extra_332();
    v30 = v22;
    v31 = "";
    if (v22)
    {
      v31 = v22;
    }

    __message_assert_336(v22, v23, v24, v25, v26, v27, v28, v29, "SIIndexInternals.cpp", 602, "((flags & DB_FIELD_EXTENDED_ATTR) && isCoreSpotlight) == 0", v31, v145[0], *&v145[1], *(&v145[1] + 8), *(&v145[2] + 1), v146, *&v147[0], *(v147 + 8), *(&v147[1] + 1), v148, *&v149[0], *(v149 + 8), *(&v149[1] + 1), v150, *&v151[0], *(v151 + 8), *(&v151[1] + 1), v152, *&v153[0], *(v153 + 8), *(&v153[1] + 1), v154);
    goto LABEL_212;
  }

LABEL_68:
  if ((v8 & 0x200) != 0)
  {
    v33 = v14 ^ 1;
  }

  else
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0 && (!strncmp(v17, "kMDItemLastUsedDate", 0x13uLL) || !strcmp(v17, "kMDItemLastUsedDate_Ranking") || !strcmp(v17, "_kMDItemShortcutLastUsedDate") || !strcmp(v17, "kMDItemUsedDates") || !strcmp(v17, "_kMDItemRecentSpotlightEngagementDates") || !strcmp(v17, "_kMDItemRecentSpotlightEngagementQueries") || !strcmp(v17, "_kMDItemRecentSpotlightEngagementRenderPositions") || !strcmp(v17, "_kMDItemRecentSpotlightEngagementDatesNonUnique") || !strcmp(v17, "_kMDItemRecentSpotlightEngagementQueriesNonUnique") || !strcmp(v17, "_kMDItemRecentSpotlightEngagementRenderPositionsNonUnique") || !strcmp(v17, "_kMDItemRecentAppSearchEngagementDates") || !strcmp(v17, "_kMDItemRecentAppSearchEngagementQueries") || !strcmp(v17, "_kMDItemRecentAppSearchEngagementRenderPositions") || !strcmp(v17, "_kMDItemRecentOutOfSpotlightEngagementDates") || !strcmp(v17, "_kMDItemEmbeddingsError") || !strcmp(v17, "_kMDItemKeyphrasesError")))
  {
    v8 &= ~0x200u;
    v169 = v8;
  }

  v32 = v8 & 0x800;
  if ((v8 & 0x800) != 0)
  {
    v34 = v14 ^ 1;
  }

  else
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
    v104 = __si_assert_copy_extra_332();
    v30 = v104;
    v126 = "";
    if (v104)
    {
      v126 = v104;
    }

    v143 = "((flags & DB_FIELD_EXTENDED_ATTR) && isCoreSpotlight) == 0";
    v144 = v126;
    v113 = 622;
LABEL_211:
    __message_assert_336(v104, v105, v106, v107, v108, v109, v110, v111, "SIIndexInternals.cpp", v113, v143, v144, v145[0], *&v145[1], *(&v145[1] + 8), *(&v145[2] + 1), v146, *&v147[0], *(v147 + 8), *(&v147[1] + 1), v148, *&v149[0], *(v149 + 8), *(&v149[1] + 1), v150, *&v151[0], *(v151 + 8), *(&v151[1] + 1), v152, *&v153[0], *(v153 + 8), *(&v153[1] + 1), v154);
    goto LABEL_212;
  }

LABEL_93:
  v35 = v158 | v159;
  if (!v20 || CFEqual(v20, *MEMORY[0x1E695E738]))
  {
    db_delete_field_weak(a4, v161, v17, v35 | v14);
    goto LABEL_96;
  }

  v155 = v10;
  v36 = CFGetTypeID(v20);
  if (v36 != CFArrayGetTypeID())
  {
    if (v16)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v20))
      {
        *v171 = 0;
        v175[0] = 0;
        *valuePtr = 0;
        CFNumberGetValue(v162, kCFNumberLongLongType, valuePtr);
        if (!db_get_field(a4, *v161, v17, v175, v171) && *v175[0] == 7)
        {
          *valuePtr += **v171;
        }

        v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, valuePtr);
        v32 = v169 & 0x800;
      }
    }

    v49 = v14 ^ 1;
    if (!v32)
    {
      v49 = 1;
    }

    if (v49)
    {
      bzero(&v171[8], 0x418uLL);
      *v171 = &unk_1F4282720;
      *&v171[8] = fastFieldFromCFType(v20, 0, &v173, v174, &v171[16], v172);
      if (*&v171[8])
      {
        v50 = computeFlags(v17, &v169, v14, v158, v159);
        db_add_field(a4, v161, v50, v17, 0, v169 | v174[0], v173, *&v171[8], v51, *&v171[16]);
      }

      v10 = v155;
      if (v20 != v162)
      {
        CFRelease(v20);
      }

      *v171 = &unk_1F4282740;
      if (*&v171[8] != v172)
      {
        free(*&v171[8]);
      }

      goto LABEL_96;
    }

    v128 = __si_assert_copy_extra_332();
    v30 = v128;
    v136 = "";
    if (v128)
    {
      v136 = v128;
    }

    __message_assert_336(v128, v129, v130, v131, v132, v133, v134, v135, "SIIndexInternals.cpp", 653, "((flags & DB_FIELD_EXTENDED_ATTR) && isCoreSpotlight) == 0", v136, v145[0], *&v145[1], *(&v145[1] + 8), *(&v145[2] + 1), v146, *&v147[0], *(v147 + 8), *(&v147[1] + 1), v148, *&v149[0], *(v149 + 8), *(&v149[1] + 1), v150, *&v151[0], *(v151 + 8), *(&v151[1] + 1), v152, *&v153[0], *(v153 + 8), *(&v153[1] + 1), v154);
LABEL_212:
    free(v30);
    if (__valid_fs(-1))
    {
      v127 = 2989;
    }

    else
    {
      v127 = 3072;
    }

    *v127 = -559038737;
    abort();
  }

  v37 = _os_feature_enabled_impl();
  v10 = v155;
  if ((~v8 & 0x5020) == 0 && v37)
  {
    Count = CFArrayGetCount(v20);
    if (Count)
    {
      v39 = v20;
      v40 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v39, 0);
      *v171 = 0;
      v175[0] = 4096;
      v42 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      *valuePtr = v42;
      v166 = 0;
      v170 = 0;
      v165 = 0;
      if (isVectorDictionary(ValueAtIndex, &v166 + 1, &v166, &v165, &v170))
      {
        v43 = BYTE4(v166);
        v44 = -1;
        if (SHIDWORD(v166) <= 2 && v166 <= 2)
        {
          v44 = (vector_dimension_vec_sizes_15424[HIDWORD(v166)] * vector_size_elem_sizes_15423[v166]);
        }

        *v171 = 4;
        *v42 = v166;
        v42[1] = v43;
        *(v42 + 1) = v165;
        appendVector(v44, v171, valuePtr, v175, v170);
        v163 = 0;
        v164 = 0;
        v169 = v8 | 0x5030;
        if (v40 >= 2)
        {
          for (i = 1; i != v40; ++i)
          {
            v46 = CFArrayGetValueAtIndex(v162, i);
            if (isVectorDictionary(v46, &v164, &v163, &v165, &v170))
            {
              appendVector(v44, v171, valuePtr, v175, v170);
            }
          }
        }

        v42 = *valuePtr;
        v47 = *v171;
      }

      else
      {
        v47 = 0;
      }

      v69 = computeFlags(v17, &v169, v14, v158, v159);
      db_add_field(v156, v161, v69, v17, 0, v169, 14, v42, v70, v47);
      free(*valuePtr);
      v10 = v155;
    }

    goto LABEL_96;
  }

  if (v160)
  {
    *v171 = 0;
    v175[0] = 0;
    MutableCopy = v20;
    if (!db_get_field(a4, *v161, v17, v175, v171))
    {
      v54 = *MEMORY[0x1E695E480];
      v55 = v20;
      v56 = _decodeSDBField(a4, v175[0], *v171, 0, 0, 0, 0, *MEMORY[0x1E695E480], v52);
      v57 = CFGetTypeID(v56);
      v58 = CFArrayGetTypeID();
      v59 = CFArrayGetCount(v55);
      if (v57 == v58)
      {
        MutableCopy = CFArrayCreateMutableCopy(v54, v59, v56);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(v54, v59 + 1, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(MutableCopy, v56);
      }

      v71 = v162;
      v184.length = CFArrayGetCount(v162);
      v184.location = 0;
      CFArrayAppendArray(MutableCopy, v71, v184);
      v72 = v56;
      v20 = v71;
      CFRelease(v72);
      v10 = v155;
      a4 = v156;
    }
  }

  else
  {
    MutableCopy = v20;
    if (v16)
    {
      *v171 = 0;
      v175[0] = 0;
      MutableCopy = v20;
      if (!db_get_field(a4, *v161, v17, v175, v171))
      {
        v61 = *MEMORY[0x1E695E480];
        v62 = _decodeSDBField(a4, v175[0], *v171, 0, 0, 0, 0, *MEMORY[0x1E695E480], v60);
        v63 = CFGetTypeID(v62);
        v64 = CFArrayGetTypeID();
        v65 = v20;
        v66 = v64;
        v67 = CFArrayGetCount(v65);
        v160 = v61;
        if (v63 == v66)
        {
          Mutable = CFArrayCreateMutableCopy(v61, v67, v62);
        }

        else
        {
          Mutable = CFArrayCreateMutable(v61, v67, MEMORY[0x1E695E9C0]);
        }

        MutableCopy = Mutable;
        v159 = v62;
        for (j = 0; ; ++j)
        {
          v74 = CFArrayGetCount(MutableCopy);
          v75 = v162;
          if (j >= v74 || j >= CFArrayGetCount(v162))
          {
            break;
          }

          v76 = MutableCopy;
          v77 = CFArrayGetValueAtIndex(MutableCopy, j);
          v78 = CFArrayGetValueAtIndex(v75, j);
          v79 = CFGetTypeID(v77);
          if (v79 == CFNumberGetTypeID())
          {
            v80 = CFGetTypeID(v78);
            if (v80 == CFNumberGetTypeID())
            {
              *valuePtr = 0;
              v170 = 0;
              CFNumberGetValue(v77, kCFNumberSInt64Type, valuePtr);
              CFNumberGetValue(v78, kCFNumberSInt64Type, &v170);
              *valuePtr += v170;
              v81 = CFNumberCreate(v160, kCFNumberSInt64Type, valuePtr);
              CFArraySetValueAtIndex(v76, j, v81);
              CFRelease(v81);
            }
          }

          a4 = v156;
          MutableCopy = v76;
        }

        v82 = CFArrayGetCount(MutableCopy);
        v20 = v75;
        v83 = v159;
        while (v82 < CFArrayGetCount(v20))
        {
          v84 = CFArrayGetValueAtIndex(v20, v82);
          CFArraySetValueAtIndex(MutableCopy, v82++, v84);
        }

        CFRelease(v83);
        v10 = v155;
      }
    }
  }

  if (db_delete_field_weak(a4, v161, v17, v35 | v14) != 1)
  {
    v85 = v169;
    v86 = CFArrayGetCount(MutableCopy);
    if (v86 >= 1)
    {
      v87 = v86;
      bzero(v175, 0x400uLL);
      v158 = MutableCopy;
      v160 = v87;
      if (v87 < 0x81)
      {
        v88 = v175;
        v183.location = 0;
        v183.length = v87;
        CFArrayGetValues(MutableCopy, v183, v175);
        if (v87 == 1)
        {
          v89 = v175;
          v90 = 0;
LABEL_176:
          v97 = 0;
          v170 = 0;
          while (1)
          {
            bzero(v171, 0x420uLL);
            v98 = v89[v97];
            *&v171[8] = 0;
            *&v171[16] = 0;
            *v171 = &unk_1F4282720;
            v99 = fastFieldFromCFType(v98, v90, &v173, v174, &v171[16], v172);
            *&v171[8] = v99;
            if (v99)
            {
              v101 = v99;
              v85 |= v174[0];
              if ((v85 & 0x100) == 0 && (*(*v161 + 40) & 2) != 0 && !strcmp(v17, "kMDItemAlternateNames"))
              {
                v85 |= 0x100u;
              }

              if (*v156 != 1685287992)
              {
                v137 = *__error();
                v138 = _SILogForLogForCategory(4);
                if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
                {
                  v139 = *v156;
                  *valuePtr = 136315650;
                  *&valuePtr[4] = "db_add_field_with_cache";
                  v177 = 1024;
                  v178 = 345;
                  v179 = 1024;
                  v180 = v139;
                  _os_log_error_impl(&dword_1C278D000, v138, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", valuePtr, 0x18u);
                }

                *__error() = v137;
                v140 = __si_assert_copy_extra_332();
                v141 = v140;
                if (v140)
                {
                  v142 = v140;
                }

                else
                {
                  v142 = "";
                }

                __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 345, v142);
                free(v141);
                MEMORY[0xBAD] = -559038737;
                abort();
              }

              if (v97)
              {
                v102 = v85;
              }

              else
              {
                v102 = v85 | 0x20;
              }

              if (v97)
              {
                v103 = 2;
              }

              else
              {
                v103 = 1;
              }

              db2_add_field_with_cache(v156, v161, v103, v17, 0, v102, v173, v101, v100, *&v171[16], &v170);
              v99 = *&v171[8];
              *v171 = &unk_1F4282740;
              if (*&v171[8] == v172)
              {
                goto LABEL_193;
              }
            }

            else
            {
              *v171 = &unk_1F4282740;
            }

            free(v99);
LABEL_193:
            if (v160 == ++v97)
            {
              MutableCopy = v158;
              if (v89 != v175)
              {
                free(v89);
              }

              v10 = v155;
              v20 = v162;
              goto LABEL_197;
            }
          }
        }
      }

      else
      {
        v88 = malloc_type_malloc(8 * v87, 0xC0040B8AA526DuLL);
        v182.location = 0;
        v182.length = v87;
        CFArrayGetValues(MutableCopy, v182, v88);
      }

      v90 = 0;
      v91 = 0;
      v159 = &unk_1F4282720;
      do
      {
        bzero(v172, 0x408uLL);
        v89 = v88;
        v92 = v88[v91];
        *&v171[8] = 0;
        *&v171[16] = 0;
        *v171 = v159;
        v93 = fastFieldFromCFType(v92, 0, &v173, v174, &v171[16], v172);
        v94 = v173 <= 10 || (v173 & 0xFFFFFFFD) == 12;
        v95 = !v94;
        if (v90 <= v173)
        {
          v96 = v173;
        }

        else
        {
          v96 = v90;
        }

        *v171 = &unk_1F4282740;
        *&v171[8] = v93;
        if (v93 != v172)
        {
          free(v93);
        }

        if (v95)
        {
          goto LABEL_176;
        }

        v91 = (v91 + 1);
        v90 = v96;
        v88 = v89;
      }

      while (v160 != v91);
      v90 = v96;
      goto LABEL_176;
    }
  }

LABEL_197:
  if (MutableCopy != v20)
  {
    CFRelease(MutableCopy);
  }

LABEL_96:
  if (v168 == 1)
  {
    free(v10);
  }
}

uint64_t computeFlags(const char *__s1, int *a2, int a3, char a4, char a5)
{
  v7 = *a2;
  v8 = *a2 & 0x800;
  result = 8;
  if (a4 & 1) != 0 || (a5)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v10 = a3 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v24 = __si_assert_copy_extra_332();
    v22 = v24;
    v32 = "";
    if (v24)
    {
      v32 = v24;
    }

    __message_assert_336(v24, v25, v26, v27, v28, v29, v30, v31, "SIIndexInternals.cpp", 459, "((flags & DB_FIELD_EXTENDED_ATTR) && isCoreSpotlight) == 0", v32);
    goto LABEL_31;
  }

  if (strcmp(__s1, "kMDItemUserTags"))
  {
    if (!strcmp(__s1, "kMDItemFinderComment"))
    {
      v12 = v7 | 0x800;
      if (a3)
      {
        v12 = v7;
      }

      *a2 = v12 | 0x200;
      v8 = v12 & 0x800;
    }

    else if (strcmp(__s1, "_kMDItemFinderLabel") && strcmp(__s1, "_kMDItemSizingIsNeeded") && strcmp(__s1, "kMDItemSubject"))
    {
      result = 1;
      goto LABEL_19;
    }
  }

  result = 8;
  if (v8 && a3)
  {
    v34 = __si_assert_copy_extra_332();
    v42 = v34;
    v43 = "";
    if (v34)
    {
      v43 = v34;
    }

    __message_assert_336(v34, v35, v36, v37, v38, v39, v40, v41, "SIIndexInternals.cpp", 474, "((flags & DB_FIELD_EXTENDED_ATTR) && isCoreSpotlight) == 0", v43);
    free(v42);
    if (__valid_fs(-1))
    {
      v44 = 2989;
    }

    else
    {
      v44 = 3072;
    }

    *v44 = -559038737;
    abort();
  }

LABEL_19:
  if (v8)
  {
    v13 = a3 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = __si_assert_copy_extra_332();
    v22 = v14;
    v23 = "";
    if (v14)
    {
      v23 = v14;
    }

    __message_assert_336(v14, v15, v16, v17, v18, v19, v20, v21, "SIIndexInternals.cpp", 479, "((flags & DB_FIELD_EXTENDED_ATTR) && isCoreSpotlight) == 0", v23);
LABEL_31:
    free(v22);
    if (__valid_fs(-1))
    {
      v33 = 2989;
    }

    else
    {
      v33 = 3072;
    }

    *v33 = -559038737;
    abort();
  }

  return result;
}

void setAttributeApplier(CFStringRef theString, void *a2, uint64_t a3)
{
  values = a2;
  v6 = (a3 + 24);
  v7 = *(a3 + 20);
  if (!*(a3 + 24))
  {
    goto LABEL_10;
  }

  HasPrefix = CFStringHasPrefix(theString, @":EA:");
  v9 = MEMORY[0x1E695E480];
  if (HasPrefix || CFStringHasPrefix(theString, @":PR:"))
  {
    v10 = *v9;
    v20.length = CFStringGetLength(theString) - 4;
    v20.location = 4;
    v11 = CFStringCreateWithSubstring(v10, theString, v20);
    if (v6->n128_u64[0])
    {
      v17 = *v6;
      v18 = v6[1].n128_u64[0];
      FlagsFromAttributes = getFlagsFromAttributes(v17);
    }

    else
    {
      FlagsFromAttributes = 0;
    }

    CFRelease(v11);
  }

  else
  {
    value = 0;
    v15 = *(a3 + 48);
    if (v15 && CFDictionaryGetValueIfPresent(v15, theString, &value))
    {
      FlagsFromAttributes = value;
    }

    else if (v6->n128_u64[0])
    {
      v17 = *v6;
      v18 = v6[1].n128_u64[0];
      FlagsFromAttributes = getFlagsFromAttributes(v17);
    }

    else
    {
      FlagsFromAttributes = 0;
    }
  }

  v7 |= FlagsFromAttributes;
  if ((v7 & 0x20) != 0 && (v13 = CFGetTypeID(a2), v13 != CFArrayGetTypeID()))
  {
    v14 = CFArrayCreate(*v9, &values, 1, 0);
    setOneFieldLocked(theString, 0, v14, *a3, *(a3 + 8), v7, *(a3 + 56), *(a3 + 57));
    CFRelease(v14);
  }

  else
  {
LABEL_10:
    setOneFieldLocked(theString, 0, a2, *a3, *(a3 + 8), v7, *(a3 + 56), *(a3 + 57));
  }
}

uint64_t candidateForReimport(uint64_t a1, uint64_t *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1192);
  v5 = *a2;
  v11 = 0;
  v12[0] = 0;
  if (!db_get_field(v4, v5, "_kMDItemImporterResult", &v11, v12) && *v12[0])
  {
    return 0;
  }

  v12[0] = *(a1 + 1996);
  v10 = 0;
  v11 = 0;
  if ((!db_get_field_by_id(v4, *a2, v12, &v11, &v10) || !db_get_field(v4, *a2, "kMDItemContentType", &v11, &v10)) && *v11 == 11 && (v11[1] & 0xB0) == 0x10)
  {
    return 0;
  }

  v7 = *(a1 + 1996);
  v8 = 1;
  db_add_field(v4, a2, 0, "kMDItemContentType", v7, 0x310u, 11, "", v6, 1);
  return v8;
}

BOOL setDatastoreAttributes(uint64_t a1, uint64_t a2, const __CFDictionary *a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, char a8)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (db_corespotlight_store(a1) | ((a4 & 0x200) >> 9))
    {
      v16 = 512;
    }

    else
    {
      v16 = 0;
    }

    if (a5)
    {
      v17 = a5;
    }

    else
    {
      v17 = gDefaultSchema;
    }

    if (v17)
    {
      context = xmmword_1E8190DD8;
      v20 = 0;
      _MDPlistContainerGetPlistObjectAtKeyArray();
    }

    v23 = a6;
    *&context = a1;
    *(&context + 1) = a2;
    v20 = __PAIR64__(v16, a4);
    v21 = 0uLL;
    v22 = 0;
    v24 = a7;
    BYTE1(v24) = a8;
    CFDictionaryApplyFunction(a3, setAttributeApplier, &context);
  }

  return a3 != 0;
}

uint64_t db_corespotlight_store(uint64_t a1)
{
  if (*a1 != 1685287992)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 464, v4);
    free(v3);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return (*(a1 + 804) >> 2) & 1;
}

void InsertPreProcessContextAddAttr(uint64_t a1, CFTypeRef cf, CFTypeRef a3, int a4)
{
  if (*(a1 + 392) >= *(a1 + 400))
  {
    if (SIIsAppleInternal_onceToken != -1)
    {
      dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
    }

    if (SIIsAppleInternal_internal)
    {
      if (!atomic_fetch_add_explicit(InsertPreProcessContextAddAttr__crashCount, 1u, memory_order_relaxed))
      {
        v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"attr count %d exceeded %d", *(a1 + 392), *(a1 + 400));
        getpid();
        SISimulateCrashForPid(0, v10);
        if (v10)
        {
          CFRelease(v10);
        }
      }
    }

    *(a1 + 44) = 22;
  }

  else
  {
    v7 = CFRetain(cf);
    v8 = *(a1 + 392);
    *(*(a1 + 376) + 8 * v8) = v7;
    if (a4)
    {
      a3 = CFRetain(a3);
      v8 = *(a1 + 392);
    }

    v9 = *(a1 + 384);
    *(a1 + 392) = v8 + 1;
    *(v9 + 8 * v8) = a3;
  }
}

void si_indexDeleteDeferredItemsIfItemIncluded(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 288);
  if (v3 && RLEOIDArrayContainsOid(v3, a2))
  {
    os_unfair_lock_lock((a1 + 280));
    v5 = *(a1 + 288);
    if (v5 && RLEOIDArrayContainsOid(v5, a2))
    {
      si_indexDeleteByOid(a1, *(a1 + 288));
      __dmb(0xBu);
      v6 = *(a1 + 288);
      *(a1 + 288) = 0;
      *(a1 + 296) = v6;
      RLEOIDArrayClear(v6);
    }

    os_unfair_lock_unlock((a1 + 280));
  }
}

BOOL objectHasContent(int *a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  return !db_get_field(a1, a2, "_kMDItemTextContentIndexExists", &v3, &v4) && *v4 != 0;
}

void preProcess(__CFString *a1, const __CFString *a2, double *a3)
{
  v181 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  v7 = CFGetTypeID(a1);
  if (v7 != CFStringGetTypeID())
  {
    return;
  }

  v8 = CFGetTypeID(a2);
  if (CFDateGetTypeID() != v8)
  {
LABEL_49:
    if (CFEqual(a1, @"kMDItemLastAppSearchEngagementQuery"))
    {
      v19 = 0;
      *(a3 + 71) = CFRetain(a2);
      goto LABEL_57;
    }

    if (CFEqual(a1, @"kMDItemLastAppSearchEngagementRenderPosition"))
    {
      LODWORD(valuePtr[0]) = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, valuePtr))
      {
        *(a3 + 144) = valuePtr[0];
      }

      goto LABEL_54;
    }

    if (CFEqual(a1, @"_kMDItemLastSpotlightEngagementQuery"))
    {
      v19 = 0;
      *(a3 + 73) = CFRetain(a2);
      goto LABEL_57;
    }

    if (CFEqual(a1, @"_kMDItemLastSpotlightEngagementRenderPosition"))
    {
      LODWORD(valuePtr[0]) = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, valuePtr))
      {
        *(a3 + 148) = valuePtr[0];
      }

      goto LABEL_54;
    }

    if (CFEqual(a1, @"_kMDItemLastOutOfSpotlightEngagementDate"))
    {
      v19 = 0;
      *(a3 + 75) = CFRetain(a2);
      goto LABEL_57;
    }

    if (*a3 == -INFINITY && CFStringCompare(a1, @"com_apple_metadata_modtime", 0) == kCFCompareEqualTo)
    {
      if (CFNumberGetTypeID() == v8)
      {
        CFNumberGetValue(a2, kCFNumberDoubleType, a3);
      }

      goto LABEL_54;
    }

    if (!*(a3 + 8) && CFStringCompare(a1, @"_kMDItemIsFromImporter", 0) == kCFCompareEqualTo)
    {
      *(a3 + 8) = a2;
      if (a2)
      {
        v84 = CFGetTypeID(a2);
        if (v84 == CFBooleanGetTypeID())
        {
          v19 = 0;
          *(a3 + 10) = a3[5] & 0xFFFFFFFB | (4 * (CFBooleanGetValue(*(a3 + 8)) & 1));
          goto LABEL_57;
        }
      }

      goto LABEL_54;
    }

    if (!*(a3 + 41) && CFEqual(a1, @"kMDItemTextContent"))
    {
      v19 = 0;
      *(a3 + 41) = CFRetain(a2);
      goto LABEL_57;
    }

    if (CFStringHasPrefix(a1, @"_kMDItemOCRContent"))
    {
      if (v8 == CFStringGetTypeID() && CFStringGetLength(a2))
      {
        if (!*(a3 + 42) && CFEqual(a1, @"_kMDItemOCRContentTitle"))
        {
          v19 = 0;
          *(a3 + 42) = CFRetain(a2);
          goto LABEL_57;
        }

        if (!*(a3 + 43) && CFEqual(a1, @"_kMDItemOCRContentLevel1"))
        {
          v19 = 0;
          *(a3 + 43) = CFRetain(a2);
          goto LABEL_57;
        }

        if (!*(a3 + 44) && CFEqual(a1, @"_kMDItemOCRContentLevel2"))
        {
          v19 = 0;
          *(a3 + 44) = CFRetain(a2);
          goto LABEL_57;
        }

        if (!*(a3 + 45) && CFEqual(a1, @"_kMDItemOCRContentLevel3"))
        {
          v19 = 0;
          *(a3 + 45) = CFRetain(a2);
          goto LABEL_57;
        }
      }

LABEL_54:
      v19 = 0;
      goto LABEL_57;
    }

    if (TypeID == v8)
    {
      if (CFStringCompare(a1, @"kMDItemTextVector", 0))
      {
        InsertPreProcessContextAddLocAttr(a3, a1, a2, 1);
        goto LABEL_54;
      }

      goto LABEL_419;
    }

    if (CFStringCompare(a1, @"kMDItemRecipientEmailAddresses", 0) == kCFCompareEqualTo)
    {
      v19 = 0;
      *(a3 + 57) = CFRetain(a2);
      goto LABEL_57;
    }

    if (CFStringCompare(a1, @"kMDItemPrimaryRecipientEmailAddresses", 0))
    {
      if (CFStringCompare(a1, @"kMDItemAdditionalRecipientEmailAddresses", 0))
      {
        if (CFStringCompare(a1, @"kMDItemHiddenAdditionalRecipientEmailAddresses", 0))
        {
          if (CFStringCompare(a1, @"kMDItemPrimaryRecipients", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemAdditionalRecipients", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemHiddenAdditionalRecipients", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemPrimaryRecipientContactIdentifiers", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemAdditionalRecipientContactIdentifiers", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemHiddenAdditionalRecipientContactIdentifiers", 0) == kCFCompareEqualTo)
          {
            goto LABEL_54;
          }

          if ((*(a3 + 41) & 1) != 0 && CFStringCompare(a1, @"kMDItemThumbnailData", 0) == kCFCompareEqualTo)
          {
            if (v8 != CFDataGetTypeID())
            {
              goto LABEL_54;
            }

            *(a3 + 46) = a2;
            v94 = *MEMORY[0x1E695E4D0];
            v95 = @"_kMDItemThumbnailDataExists";
            v96 = a3;
            v97 = 0;
LABEL_420:
            InsertPreProcessContextAddAttr(v96, v95, v94, v97);
            goto LABEL_54;
          }

          if (CFStringHasPrefix(a1, @"_kMDItemTimeMachinePath"))
          {
            if (*(a3 + 39))
            {
              v85 = *__error();
              v86 = _SILogForLogForCategory(4);
              v87 = dword_1EBF46ADC < 3;
              if (os_log_type_enabled(v86, (dword_1EBF46ADC < 3)))
              {
                v88 = *(a3 + 39);
                LODWORD(valuePtr[0]) = 138412802;
                *(valuePtr + 4) = a1;
                WORD6(valuePtr[0]) = 2112;
                *(valuePtr + 14) = a2;
                WORD3(valuePtr[1]) = 2112;
                *(&valuePtr[1] + 1) = v88;
                _os_log_impl(&dword_1C278D000, v86, v87, "*warn* Skipping %@ %@ already had %@", valuePtr, 0x20u);
              }

              v19 = 0;
              *__error() = v85;
            }

            else
            {
              if (v8 != CFStringGetTypeID())
              {
                goto LABEL_54;
              }

              if ((a3[5] & 0x80) != 0)
              {
                v93 = @"_kMDItemTimeMachinePath";
              }

              else
              {
                v93 = a1;
              }

              *(a3 + 40) = CFRetain(v93);
              if (CFStringGetLength(a2) >= 6 && CFStringGetCharacterAtIndex(a2, 2) != 58 && CFStringGetCharacterAtIndex(a2, 5) != 58)
              {
                *(a3 + 10) |= 0x200u;
              }

              *(a3 + 39) = CFRetain(a2);
              if (dword_1EBF46ADC < 5)
              {
                goto LABEL_54;
              }

              v98 = *__error();
              v99 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                v100 = "Marker";
                v101 = *(a3 + 40);
                if ((a3[5] & 0x80) == 0)
                {
                  v100 = "";
                }

                LODWORD(valuePtr[0]) = 136315650;
                *(valuePtr + 4) = v100;
                WORD6(valuePtr[0]) = 2112;
                *(valuePtr + 14) = v101;
                WORD3(valuePtr[1]) = 2112;
                *(&valuePtr[1] + 1) = a2;
                _os_log_impl(&dword_1C278D000, v99, OS_LOG_TYPE_DEFAULT, "%s%@ = %@", valuePtr, 0x20u);
              }

              v19 = 0;
              *__error() = v98;
            }

LABEL_57:
            if (CFStringCompare(a1, @"kMDItemDisplayName", 0) == kCFCompareEqualTo)
            {
              if (v8 == CFDictionaryGetTypeID())
              {
                Value = CFDictionaryGetValue(a2, &stru_1F4284FD0);
                a2 = Value;
                if (Value)
                {
                  v8 = CFGetTypeID(Value);
                }
              }

              v41 = CFStringGetTypeID();
              if (a2 && v8 == v41 && CFStringGetLength(a2) >= 36 && CFStringGetCharacterAtIndex(a2, 8) == 45)
              {
                v42 = *MEMORY[0x1E695E480];
                v201.location = 0;
                v201.length = 36;
                v43 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a2, v201);
                v44 = CFUUIDCreateFromString(v42, v43);
                if (v44)
                {
                  *(a3 + 10) |= 0x4000u;
                  CFRelease(v44);
                }

                CFRelease(v43);
              }
            }

            if (v19 && v8 == CFArrayGetTypeID())
            {
              *(a3 + 10) |= 0x2000u;
            }

            v20 = *(a3 + 11);
            v21 = *MEMORY[0x1E695E4C0];
            if ((!v20 || v20 == v21) && (a3[5] & 0x280000) == 0x80000 && (CFEqual(a1, @"kMDItemDisplayName") || CFEqual(a1, @"kMDItemAlternateNames") || CFEqual(a1, @"kMDItemAppEntityTitle")))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              v22 = *(a3 + 27);
              if (v22)
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 3;
                v168 = 0uLL;
                v183.length = CFArrayGetCount(v22);
                v183.location = 0;
                CFArrayApplyFunction(v22, v183, mePreprocessNameToken, valuePtr);
              }
            }

            v23 = *(a3 + 11);
            if ((!v23 || v23 == v21) && (*(a3 + 42) & 2) != 0 && (CFEqual(a1, @"kMDItemPhotosPeopleNames") || CFEqual(a1, @"kMDItemPhotosPeopleNamesAlternatives") || CFEqual(a1, @"kMDItemCardUnderName")))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              v24 = *(a3 + 27);
              if (v24)
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 3;
                v168 = 0uLL;
                v184.length = CFArrayGetCount(v24);
                v184.location = 0;
                CFArrayApplyFunction(v24, v184, mePreprocessNameToken, valuePtr);
              }
            }

            v25 = *(a3 + 11);
            if ((!v25 || v25 == v21) && (*(a3 + 42) & 2) != 0 && (CFEqual(a1, @"kMDItemPhotosPeopleNames") || CFEqual(a1, @"kMDItemPhotosPeopleNamesAlternatives") || CFEqual(a1, @"kMDItemCardUnderName")))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              if (*(a3 + 25))
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 3;
                v168 = 0uLL;
                mePreprocessAlias(valuePtr);
              }
            }

            v26 = *(a3 + 12);
            if ((!v26 || v26 == v21) && (*(a3 + 42) & 2) != 0 && CFEqual(a1, @"kMDItemTextContent"))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              v27 = *(a3 + 27);
              if (v27)
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 259;
                v168 = 0uLL;
                v185.length = CFArrayGetCount(v27);
                v185.location = 0;
                CFArrayApplyFunction(v27, v185, mePreprocessNameToken, valuePtr);
              }
            }

            v28 = *(a3 + 12);
            if ((!v28 || v28 == v21) && (*(a3 + 42) & 2) != 0 && CFEqual(a1, @"kMDItemTextContent"))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              if (*(a3 + 25))
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 259;
                v168 = 0uLL;
                mePreprocessAlias(valuePtr);
              }
            }

            v29 = *(a3 + 13);
            if ((!v29 || v29 == v21) && (*(a3 + 42) & 2) != 0 && (CFEqual(a1, @"kMDItemPhotosPeopleNames") || CFEqual(a1, @"kMDItemPhotosPeopleNamesAlternatives")))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              if (*(a3 + 23))
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 4;
                v168 = 0uLL;
                mePreprocessName(valuePtr);
              }
            }

            v30 = *(a3 + 14);
            if ((!v30 || v30 == v21) && (*(a3 + 42) & 2) != 0 && (CFEqual(a1, @"kMDItemPhotosPeopleNames") || CFEqual(a1, @"kMDItemPhotosPeopleNamesAlternatives")))
            {
              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
              }

              v31 = *(a3 + 27);
              if (v31)
              {
                if (a2)
                {
                  if (v8 == CFArrayGetTypeID())
                  {
                    Count = CFArrayGetCount(a2);
                    if (Count >= 1)
                    {
                      v33 = Count;
                      for (i = 0; i < v33; ++i)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
                        if (ValueAtIndex)
                        {
                          v36 = ValueAtIndex;
                          v37 = CFGetTypeID(ValueAtIndex);
                          if (v37 == CFStringGetTypeID())
                          {
                            v38 = CFGetTypeID(v36);
                            *&valuePtr[0] = a3;
                            *(&valuePtr[0] + 1) = v36;
                            *&valuePtr[1] = v38;
                            *(&valuePtr[1] + 1) = 5;
                            v168 = 0uLL;
                            v39 = *(a3 + 27);
                            v186.length = CFArrayGetCount(v39);
                            v186.location = 0;
                            CFArrayApplyFunction(v39, v186, mePreprocessNameTokenAnd, valuePtr);
                            if (*(a3 + 14))
                            {
                              break;
                            }
                          }
                        }
                      }
                    }

                    goto LABEL_148;
                  }

                  v31 = *(a3 + 27);
                }

                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 5;
                v168 = 0uLL;
                v187.length = CFArrayGetCount(v31);
                v187.location = 0;
                CFArrayApplyFunction(v31, v187, mePreprocessNameTokenAnd, valuePtr);
              }
            }

LABEL_148:
            v45 = *(a3 + 15);
            if (v45 && v45 != v21 || (*(a3 + 42) & 2) == 0 || !CFEqual(a1, @"kMDItemTextContent") || (v46 = *(a3 + 28)) == 0 && !*(a3 + 25) && !*(a3 + 29))
            {
LABEL_175:
              v56 = *(a3 + 17);
              if (v56 && v56 != v21)
              {
                goto LABEL_202;
              }

              if ((*(a3 + 42) & 2) == 0)
              {
                goto LABEL_202;
              }

              if (!CFEqual(a1, @"kMDItemCardUnderName"))
              {
                goto LABEL_202;
              }

              v57 = *(a3 + 28);
              if (!v57 && !*(a3 + 25) && !*(a3 + 29))
              {
                goto LABEL_202;
              }

              if ((*(a3 + 42) & 0x40) == 0)
              {
                initContextMe(a3);
                v57 = *(a3 + 28);
              }

              v58 = MEMORY[0x1E695E4D0];
              if (v57)
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 7;
                v168 = 0uLL;
                v190.length = CFArrayGetCount(v57);
                v190.location = 0;
                CFArrayApplyFunction(v57, v190, mePreprocessNameTokenAnd, valuePtr);
                v59 = *(a3 + 17) == *v58;
              }

              else
              {
                v59 = 0;
              }

              if (*(a3 + 25))
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 7;
                v168 = 0uLL;
                mePreprocessAlias(valuePtr);
                v60 = *(a3 + 17) == *v58;
              }

              else
              {
                v60 = 0;
              }

              v61 = *(a3 + 29);
              if (v61)
              {
                *&valuePtr[0] = a3;
                *(&valuePtr[0] + 1) = a2;
                *&valuePtr[1] = v8;
                *(&valuePtr[1] + 1) = 7;
                v168 = 0uLL;
                v191.length = CFArrayGetCount(v61);
                v191.location = 0;
                CFArrayApplyFunction(v61, v191, mePreprocessNameTokenAnd, valuePtr);
                v62 = *(a3 + 17);
                v63 = *v58;
                v64 = v62 != *v58;
                LOBYTE(v61) = v59 || v60;
                if ((v59 || v60) && v62 == v63)
                {
                  goto LABEL_201;
                }
              }

              else
              {
                v61 = (v59 | v60);
                v64 = 1;
              }

              v65 = *(a3 + 28);
              if (v65 && CFArrayGetCount(v65) || *(a3 + 25) != 0 || v64)
              {
                v66 = *(a3 + 29);
                if (v66)
                {
                  v67 = (CFArrayGetCount(v66) == 0) & v61;
                  v63 = v21;
                  if ((v67 & 1) == 0)
                  {
LABEL_201:
                    *(a3 + 17) = v63;
LABEL_202:
                    v68 = *(a3 + 18);
                    if ((!v68 || v68 == v21) && (*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemEventName") || CFEqual(a1, @"kMDItemSubject") || CFEqual(a1, @"kMDItemTitle") || CFEqual(a1, @"kMDItemEventCustomerNames") || CFEqual(a1, @"kMDItemDisplayName") || CFEqual(a1, @"kMDItemAlternateNames") || CFEqual(a1, @"kMDItemOwnerName") || CFEqual(a1, @"kMDItemLastEditorName") || CFEqual(a1, @"kMDItemFilename") || CFEqual(a1, @"FPFilename") || CFEqual(a1, @"kMDItemDescription") || CFEqual(a1, @"_ICItemDisplayName") || CFEqual(a1, @"kMDItemComment") || CFEqual(a1, @"kMDItemCreator") || CFEqual(a1, @"kMDItemAppEntityTitle")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v69 = *(a3 + 27);
                      if (v69)
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 8;
                        v168 = 0uLL;
                        v192.length = CFArrayGetCount(v69);
                        v192.location = 0;
                        CFArrayApplyFunction(v69, v192, mePreprocessNameToken, valuePtr);
                      }
                    }

                    v70 = *(a3 + 19);
                    if ((!v70 || v70 == v21) && v8 == CFStringGetTypeID() && (*(a3 + 42) & 0x20) == 0 && CFEqual(a1, @"kMDItemTextContent"))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v71 = *(a3 + 27);
                      if (v71)
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 264;
                        v168 = 0uLL;
                        v193.length = CFArrayGetCount(v71);
                        v193.location = 0;
                        CFArrayApplyFunction(v71, v193, mePreprocessNameToken, valuePtr);
                      }
                    }

                    v72 = *(a3 + 10);
                    if ((!v72 || v72 == v21) && (*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemAuthors") || CFEqual(a1, @"kMDItemUserSharedSentSender") || CFEqual(a1, @"kMDItemUserSharedReceivedSender")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      if (*(a3 + 23))
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 2;
                        v168 = 0uLL;
                        mePreprocessName(valuePtr);
                      }
                    }

                    v73 = *(a3 + 10);
                    if ((!v73 || v73 == v21) && (*(a3 + 42) & 0x20) == 0 && CFEqual(a1, @"kMDItemAuthorAddresses"))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      if (*(a3 + 23))
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 2;
                        v168 = 0uLL;
                        mePreprocessNamePrefix(valuePtr);
                      }
                    }

                    v74 = *(a3 + 10);
                    if ((!v74 || v74 == v21) && (*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemAuthorAddresses") || CFEqual(a1, @"kMDItemAuthorEmailAddresses") || CFEqual(a1, @"kMDItemUserSharedSentSenderHandle") || CFEqual(a1, @"kMDItemUserSharedReceivedSenderHandle")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v75 = *(a3 + 22);
                      if (v75)
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 2;
                        v168 = 0uLL;
                        CFSetApplyFunction(v75, mePreprocessEmailAddress, valuePtr);
                      }
                    }

                    if ((*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemAuthors") || CFEqual(a1, @"kMDItemAuthorAddresses") || CFEqual(a1, @"kMDItemAuthorEmailAddresses") || CFEqual(a1, @"kMDItemUserSharedReceivedSender") || CFEqual(a1, @"kMDItemUserSharedReceivedSenderHandle") || CFEqual(a1, @"kMDItemUserSharedSentSender") || CFEqual(a1, @"kMDItemUserSharedSentSenderHandle") || CFEqual(a1, @"kMDItemOwnerName") || CFEqual(a1, @"kMDItemLastEditorName") || CFEqual(a1, @"kMDItemAlternateNames")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v76 = *(a3 + 27);
                      if (v76 && *(a3 + 21) < ~(-1 << CFArrayGetCount(v76)))
                      {
                        v168 = 0uLL;
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 9;
                        v168 = CFArrayGetCount(*(a3 + 27));
                        v77 = *(a3 + 27);
                        v194.length = CFArrayGetCount(v77);
                        v194.location = 0;
                        CFArrayApplyFunction(v77, v194, mePreprocessNameToken, valuePtr);
                      }
                    }

                    v78 = *(a3 + 9);
                    if ((!v78 || v78 == v21) && (*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemRecipients") || CFEqual(a1, @"kMDItemPrimaryRecipients") || CFEqual(a1, @"kMDItemUserSharedSentRecipient") || CFEqual(a1, @"kMDItemUserSharedReceivedRecipient")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      if (*(a3 + 23))
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 1;
                        v168 = 0uLL;
                        mePreprocessName(valuePtr);
                      }
                    }

                    v79 = *(a3 + 9);
                    if ((!v79 || v79 == v21) && (*(a3 + 42) & 0x20) == 0 && CFEqual(a1, @"kMDItemRecipientAddresses"))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      if (*(a3 + 23))
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 1;
                        v168 = 0uLL;
                        mePreprocessNamePrefix(valuePtr);
                      }
                    }

                    v80 = *(a3 + 9);
                    if ((!v80 || v80 == v21) && (*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemRecipientAddresses") || CFEqual(a1, @"kMDItemRecipientEmailAddresses") || CFEqual(a1, @"kMDItemUserSharedSentRecipientHandle") || CFEqual(a1, @"kMDItemUserSharedReceivedRecipientHandle")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v81 = *(a3 + 22);
                      if (v81)
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 1;
                        v168 = 0uLL;
                        CFSetApplyFunction(v81, mePreprocessEmailAddress, valuePtr);
                      }
                    }

                    if ((*(a3 + 42) & 0x20) == 0 && (CFEqual(a1, @"kMDItemRecipients") || CFEqual(a1, @"kMDItemPrimaryRecipients") || CFEqual(a1, @"kMDItemRecipientAddresses") || CFEqual(a1, @"kMDItemRecipientEmailAddresses") || CFEqual(a1, @"kMDItemPrimaryRecipientEmailAddresses") || CFEqual(a1, @"kMDItemAdditionalRecipientEmailAddresses") || CFEqual(a1, @"kMDItemUserSharedReceivedRecipient") || CFEqual(a1, @"kMDItemUserSharedReceivedRecipientHandle") || CFEqual(a1, @"kMDItemUserSharedSentRecipient") || CFEqual(a1, @"kMDItemUserSharedSentRecipientHandle") || CFEqual(a1, @"kMDItemOwnerName") || CFEqual(a1, @"kMDItemLastEditorName") || CFEqual(a1, @"kMDItemAlternateNames")))
                    {
                      if ((*(a3 + 42) & 0x40) == 0)
                      {
                        initContextMe(a3);
                      }

                      v82 = *(a3 + 27);
                      if (v82 && *(a3 + 20) < ~(-1 << CFArrayGetCount(v82)))
                      {
                        *&valuePtr[0] = a3;
                        *(&valuePtr[0] + 1) = a2;
                        *&valuePtr[1] = v8;
                        *(&valuePtr[1] + 1) = 10;
                        v168 = CFArrayGetCount(*(a3 + 27));
                        v83 = *(a3 + 27);
                        v195.length = CFArrayGetCount(v83);
                        v195.location = 0;
                        CFArrayApplyFunction(v83, v195, mePreprocessNameToken, valuePtr);
                      }
                    }

                    return;
                  }
                }

                else
                {
                  v63 = v21;
                  if ((v61 & 1) == 0)
                  {
                    goto LABEL_201;
                  }
                }
              }

              v63 = *v58;
              goto LABEL_201;
            }

            if ((*(a3 + 42) & 0x40) == 0)
            {
              initContextMe(a3);
              v46 = *(a3 + 28);
            }

            if (v46)
            {
              *&valuePtr[0] = a3;
              *(&valuePtr[0] + 1) = a2;
              *&valuePtr[1] = v8;
              *(&valuePtr[1] + 1) = 262;
              v168 = 0uLL;
              v188.length = CFArrayGetCount(v46);
              v188.location = 0;
              CFArrayApplyFunction(v46, v188, mePreprocessNameTokenAnd, valuePtr);
              v47 = *(a3 + 15) == *MEMORY[0x1E695E4D0];
            }

            else
            {
              v47 = 0;
            }

            if (*(a3 + 25))
            {
              *&valuePtr[0] = a3;
              *(&valuePtr[0] + 1) = a2;
              *&valuePtr[1] = v8;
              *(&valuePtr[1] + 1) = 262;
              v168 = 0uLL;
              mePreprocessAlias(valuePtr);
              v48 = *(a3 + 15) == *MEMORY[0x1E695E4D0];
            }

            else
            {
              v48 = 0;
            }

            v49 = *(a3 + 29);
            if (v49)
            {
              *&valuePtr[0] = a3;
              *(&valuePtr[0] + 1) = a2;
              *&valuePtr[1] = v8;
              *(&valuePtr[1] + 1) = 262;
              v168 = 0uLL;
              v189.length = CFArrayGetCount(v49);
              v189.location = 0;
              CFArrayApplyFunction(v49, v189, mePreprocessNameTokenAnd, valuePtr);
              v50 = *(a3 + 15);
              v51 = *MEMORY[0x1E695E4D0];
              v52 = v50 != *MEMORY[0x1E695E4D0];
              LOBYTE(v49) = v47 || v48;
              if ((v47 || v48) && v50 == v51)
              {
                goto LABEL_174;
              }
            }

            else
            {
              v49 = (v47 | v48);
              v52 = 1;
            }

            v53 = *(a3 + 28);
            if (v53 && CFArrayGetCount(v53) || *(a3 + 25) != 0 || v52)
            {
              v54 = *(a3 + 29);
              if (v54)
              {
                v55 = (CFArrayGetCount(v54) == 0) & v49;
                v51 = v21;
                if ((v55 & 1) == 0)
                {
LABEL_174:
                  *(a3 + 15) = v51;
                  *(a3 + 16) = v51;
                  goto LABEL_175;
                }
              }

              else
              {
                v51 = v21;
                if ((v49 & 1) == 0)
                {
                  goto LABEL_174;
                }
              }
            }

            v51 = *MEMORY[0x1E695E4D0];
            goto LABEL_174;
          }

          if (CFStringCompare(a1, @"_kMDItemUserTags", 0) == kCFCompareEqualTo)
          {
            *(a3 + 51) = CFRetain(a1);
            v19 = 0;
            *(a3 + 52) = CFRetain(a2);
            goto LABEL_57;
          }

          if (CFStringCompare(a1, @"kMDItemUserTags", 0) == kCFCompareEqualTo && (*(a3 + 41) & 1) == 0 || CFStringCompare(a1, @"kMDItemAttributeChangeDate", 0) == kCFCompareEqualTo)
          {
            goto LABEL_54;
          }

          if (CFStringCompare(a1, @"_kMDItemPersonScore", 0) == kCFCompareEqualTo)
          {
            if (v8 != CFNumberGetTypeID())
            {
              goto LABEL_54;
            }

            CFNumberGetValue(a2, kCFNumberFloatType, a3 + 70);
            goto LABEL_419;
          }

          if (CFStringCompare(a1, @"kMDItemContainerIdentifier", 0) && CFStringCompare(a1, @"kMDItemEmailConversationID", 0))
          {
            if (CFStringCompare(a1, @"_kMDItemDomainIdentifier", 0) == kCFCompareEqualTo)
            {
              InsertPreProcessContextAddAttr(a3, a1, a2, 1);
              v19 = 0;
              *(a3 + 69) = a2;
              goto LABEL_57;
            }

            if ((a3[5] & 8) != 0 || CFStringCompare(a1, @"_kMDItemFinderExcluded", 0))
            {
              if (CFStringCompare(@"kMDItemPlayCount", a1, 0) == kCFCompareEqualTo && CFNumberGetTypeID() == v8)
              {
                InsertPreProcessContextAddAttr(a3, a1, a2, 1);
                v19 = 0;
                *(a3 + 66) = CFRetain(a2);
                goto LABEL_57;
              }

              if (CFStringCompare(a1, @"_kMDItemSupportFileType", 0) == kCFCompareEqualTo)
              {
                v19 = 1;
                goto LABEL_57;
              }

              if (CFStringCompare(a1, @"_kMDItemRequiresImport", 0))
              {
                if (CFStringHasPrefix(a1, @":MD:") || CFStringHasPrefix(a1, @":EA:") || CFStringHasPrefix(a1, @":PR:"))
                {
                  v102 = *MEMORY[0x1E695E480];
                  v202.length = CFStringGetLength(a1) - 4;
                  v202.location = 4;
                  v103 = CFStringCreateWithSubstring(v102, a1, v202);
                  if (CFStringHasPrefix(a1, @":EA:"))
                  {
                    v19 = CFStringCompare(v103, @"_kMDItemSupportFileType", 0) == kCFCompareEqualTo;
                  }

                  else
                  {
                    HasPrefix = CFStringHasPrefix(a1, @":PR:");
                    v19 = CFStringCompare(v103, @"_kMDItemSupportFileType", 0) == kCFCompareEqualTo;
                    if (!HasPrefix)
                    {
                      goto LABEL_462;
                    }
                  }

                  if (CFStringHasPrefix(v103, @"_kMDItemTimeMachinePath"))
                  {
                    v106 = *__error();
                    v107 = _SILogForLogForCategory(4);
                    v108 = 2 * (dword_1EBF46ADC < 4);
                    if (!os_log_type_enabled(v107, v108))
                    {
LABEL_440:
                      *__error() = v106;
LABEL_441:
                      CFRelease(v103);
                      goto LABEL_57;
                    }

                    LODWORD(valuePtr[0]) = 138412546;
                    *(valuePtr + 4) = v103;
                    WORD6(valuePtr[0]) = 2112;
                    *(valuePtr + 14) = a2;
                    v109 = "Skipping :EA:%@ %@";
                    goto LABEL_438;
                  }

                  v113 = *(a3 + 64);
                  if (v113 && CFDictionaryContainsKey(v113, v103) || CFStringCompare(v103, @"kMDItemUserTags", 0) == kCFCompareEqualTo)
                  {
                    goto LABEL_441;
                  }

                  if (CFStringCompare(@"kMDItemLastUsedDate", v103, 0) == kCFCompareEqualTo && CFDateGetTypeID() == v8)
                  {
                    *(a3 + 1) = CFRetain(a2);
                    v114 = *(a3 + 10);
                    v115 = ~(16 * v114) & 0x10;
                    if ((v114 & 2) != 0)
                    {
                      v115 = 0;
                    }

                    *(a3 + 10) = v115 | v114 & 0xFFFFFFEF;
                    if (dword_1EBF46ADC >= 5)
                    {
                      v163 = *__error();
                      v164 = _SILogForLogForCategory(4);
                      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                      {
                        v165 = *(a3 + 1);
                        LODWORD(valuePtr[0]) = 138412290;
                        *(valuePtr + 4) = v165;
                        _os_log_impl(&dword_1C278D000, v164, OS_LOG_TYPE_DEFAULT, "New last used date: %@", valuePtr, 0xCu);
                      }

                      *__error() = v163;
                    }

                    v116 = *(a3 + 68);
                    if (v116 < 4 || v116 == 4 && CFDateCompare(*(a3 + 67), a2, 0) < 0)
                    {
                      v117 = *(a3 + 67);
                      if (v117)
                      {
                        CFRelease(v117);
                      }

                      a3[67] = 0.0;
                      *(a3 + 67) = CFRetain(a2);
                      *(a3 + 68) = 4;
                    }

                    goto LABEL_441;
                  }

                  if (CFStringCompare(v103, @"kMDItemIsUploading", 0) == kCFCompareEqualTo || CFStringCompare(v103, @":MD:kMDItemIsUploading", 0) == kCFCompareEqualTo || CFStringCompare(v103, @"kMDItemIsUploaded", 0) == kCFCompareEqualTo || CFStringCompare(v103, @":MD:kMDItemIsUploaded", 0) == kCFCompareEqualTo)
                  {
                    v124 = @"kMDItemIsUploading";
                    v125 = a3;
                    goto LABEL_468;
                  }

LABEL_462:
                  if (CFStringCompare(v103, @"_kMDItemUserTags", 0) == kCFCompareEqualTo)
                  {
                    if (!*(a3 + 51))
                    {
                      *(a3 + 51) = CFRetain(a1);
                      *(a3 + 52) = CFRetain(a2);
                    }

                    goto LABEL_441;
                  }

                  if (CFStringHasPrefix(v103, @"_kMDItemTimeMachinePath"))
                  {
                    if (!*(a3 + 39))
                    {
                      if (v8 == CFStringGetTypeID())
                      {
                        v132 = (a3[5] & 0x80) != 0 ? @"_kMDItemTimeMachinePath" : v103;
                        *(a3 + 40) = CFRetain(v132);
                        *(a3 + 39) = CFRetain(a2);
                        if (dword_1EBF46ADC >= 5)
                        {
                          v136 = *__error();
                          v137 = _SILogForLogForCategory(4);
                          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                          {
                            v138 = "Marker";
                            v139 = *(a3 + 40);
                            if ((a3[5] & 0x80) == 0)
                            {
                              v138 = "";
                            }

                            LODWORD(valuePtr[0]) = 136315650;
                            *(valuePtr + 4) = v138;
                            WORD6(valuePtr[0]) = 2112;
                            *(valuePtr + 14) = v139;
                            WORD3(valuePtr[1]) = 2112;
                            *(&valuePtr[1] + 1) = a2;
                            _os_log_impl(&dword_1C278D000, v137, OS_LOG_TYPE_DEFAULT, "%s%@ = %@", valuePtr, 0x20u);
                          }

                          *__error() = v136;
                        }
                      }

                      goto LABEL_441;
                    }

                    v106 = *__error();
                    v121 = _SILogForLogForCategory(4);
                    v122 = 2 * (dword_1EBF46ADC < 4);
                    if (!os_log_type_enabled(v121, v122))
                    {
                      goto LABEL_440;
                    }

                    v123 = *(a3 + 39);
                    LODWORD(valuePtr[0]) = 138412802;
                    *(valuePtr + 4) = v103;
                    WORD6(valuePtr[0]) = 2112;
                    *(valuePtr + 14) = a2;
                    WORD3(valuePtr[1]) = 2112;
                    *(&valuePtr[1] + 1) = v123;
                    v109 = "Skipping :MD:%@ %@ already had %@";
                    v110 = v121;
                    v111 = v122;
                    v112 = 32;
                    goto LABEL_439;
                  }

                  if ((a3[5] & 0x80) == 0)
                  {
LABEL_477:
                    if (CFStringHasPrefix(a1, @":MD:"))
                    {
                      v129 = @"_kMDItemBackupMoveMarker";
                      if (CFStringCompare(v103, @"_kMDItemBackupMoveMarker", 0))
                      {
                        v129 = @"_kMDItemBackupNameSpace";
                        if (CFStringCompare(v103, @"_kMDItemBackupNameSpace", 0))
                        {
                          v129 = @"_kMDItemSupportFileType";
                          if (CFStringCompare(v103, @"_kMDItemSupportFileType", 0))
                          {
                            v129 = @"_kMDItemTimeMachineMarkerNeedsFixup";
                            if (CFStringCompare(v103, @"_kMDItemTimeMachineMarkerNeedsFixup", 0))
                            {
                              v129 = @"kMDItemIsUploading";
                              if (CFStringCompare(v103, @"kMDItemIsUploading", 0))
                              {
                                v129 = @"kMDItemIsUploaded";
                                if (CFStringCompare(v103, @"kMDItemIsUploaded", 0))
                                {
                                  if (CFStringCompare(v103, @"kMDItemApproximateModTime", 0) == kCFCompareEqualTo)
                                  {
                                    *&valuePtr[0] = 0;
                                    if (CFNumberGetValue(a2, kCFNumberLongType, valuePtr) && *&valuePtr[0])
                                    {
                                      a3[65] = *valuePtr;
                                    }

                                    goto LABEL_441;
                                  }

                                  if (CFStringCompare(v103, @"kMDItemExpirationDate", 0) == kCFCompareEqualTo)
                                  {
                                    if (v8 == CFDateGetTypeID())
                                    {
                                      *(a3 + 2) = CFRetain(a2);
                                    }

                                    goto LABEL_441;
                                  }

                                  v130 = CFStringCompare(v103, @"kMDItemSeedLastUsedDate", 0);
                                  v131 = *(a3 + 10);
                                  if (v130 == kCFCompareEqualTo)
                                  {
                                    v162 = v131 | 0x800;
                                    goto LABEL_594;
                                  }

                                  if ((v131 & 0x100) == 0 || CFStringCompare(v103, @"kMDItemThumbnailData", 0))
                                  {
                                    if (CFStringCompare(v103, @"kMDPreviewImageData", 0) == kCFCompareEqualTo)
                                    {
                                      if (v8 == CFDataGetTypeID())
                                      {
                                        *(a3 + 46) = a2;
                                      }

                                      goto LABEL_441;
                                    }

                                    if (CFStringCompare(v103, @"kMDItemWorkerHandled", 0))
                                    {
                                      if (CFStringCompare(v103, @"kMDItemPath", 0) == kCFCompareEqualTo || CFStringCompare(v103, @"DeviceId", 0) == kCFCompareEqualTo)
                                      {
                                        goto LABEL_441;
                                      }

                                      if (CFStringCompare(v103, @"_kMDItemOIDParent", 0) == kCFCompareEqualTo)
                                      {
                                        if (v8 == CFNumberGetTypeID())
                                        {
                                          CFNumberGetValue(a2, kCFNumberSInt64Type, a3 + 76);
                                        }

                                        goto LABEL_441;
                                      }

                                      v106 = *__error();
                                      v107 = _SILogForLogForCategory(4);
                                      v108 = 2 * (dword_1EBF46ADC < 4);
                                      if (!os_log_type_enabled(v107, v108))
                                      {
                                        goto LABEL_440;
                                      }

                                      LODWORD(valuePtr[0]) = 138412546;
                                      *(valuePtr + 4) = v103;
                                      WORD6(valuePtr[0]) = 2112;
                                      *(valuePtr + 14) = a2;
                                      v109 = "Skipping :MD:%@ %@";
LABEL_438:
                                      v110 = v107;
                                      v111 = v108;
                                      v112 = 22;
LABEL_439:
                                      _os_log_impl(&dword_1C278D000, v110, v111, v109, valuePtr, v112);
                                      goto LABEL_440;
                                    }

                                    v162 = a3[5] & 0xFFFFFFBF | ((CFBooleanGetValue(a2) & 1) << 6);
LABEL_594:
                                    *(a3 + 10) = v162;
                                    goto LABEL_441;
                                  }

                                  if (v8 != CFDataGetTypeID())
                                  {
                                    goto LABEL_441;
                                  }

                                  *(a3 + 46) = a2;
                                  v126 = *MEMORY[0x1E695E4D0];
                                  v124 = @"_kMDItemThumbnailDataExists";
                                  v125 = a3;
                                  v127 = 0;
LABEL_469:
                                  InsertPreProcessContextAddAttr(v125, v124, v126, v127);
                                  goto LABEL_441;
                                }
                              }
                            }
                          }
                        }
                      }

                      v125 = a3;
                      v124 = v129;
                    }

                    else
                    {
                      if (CFStringCompare(a1, @"kMDItemAttributeChangeDate", 0) == kCFCompareEqualTo)
                      {
                        goto LABEL_441;
                      }

                      v125 = a3;
                      v124 = a1;
                    }

LABEL_468:
                    v126 = a2;
                    v127 = 1;
                    goto LABEL_469;
                  }

                  if (CFStringHasPrefix(v103, @"_kTimeMachineNewestSnapshot"))
                  {
                    Mutable = *(a3 + 6);
                    if (!Mutable)
                    {
                      Mutable = CFArrayCreateMutable(v102, 0, MEMORY[0x1E695E9C0]);
                      *(a3 + 6) = Mutable;
                    }
                  }

                  else
                  {
                    if ((a3[5] & 0x80) == 0 || !CFStringHasPrefix(v103, @"_kTimeMachineOldestSnapshot"))
                    {
                      goto LABEL_477;
                    }

                    Mutable = *(a3 + 7);
                    if (!Mutable)
                    {
                      Mutable = CFArrayCreateMutable(v102, 0, MEMORY[0x1E695E9C0]);
                      *(a3 + 7) = Mutable;
                    }
                  }

                  CFArrayAppendValue(Mutable, a2);
                  goto LABEL_441;
                }

                if ((*(a3 + 42) & 1) != 0 && CFStringCompare(a1, @"kMDItemContentURL", 0) == kCFCompareEqualTo)
                {
                  InsertPreProcessContextAddAttr(a3, @"_kMDItemHasEmailContentURL", *MEMORY[0x1E695E4D0], 1);
                  goto LABEL_419;
                }

                if (CFEqual(@"kMDItemEmailAddresses", a1))
                {
                  v128 = @"_kMDItemEmailAddressesLocalParts";
LABEL_504:
                  generateLocalPartsWithNewFieldName(a3, v128, a2);
                  goto LABEL_419;
                }

                if (CFEqual(@"kMDItemAuthorEmailAddresses", a1))
                {
                  v128 = @"_kMDItemAuthorEmailAddressesLocalParts";
                  goto LABEL_504;
                }

                v134 = *(a3 + 10);
                if ((v134 & 0x1000) == 0)
                {
                  goto LABEL_520;
                }

                if (CFStringCompare(a1, @"kMDItemContentTypeTree", 0))
                {
                  v134 = *(a3 + 10);
LABEL_520:
                  if ((v134 & 0x400) == 0 || CFStringGetTypeID() != v8)
                  {
                    goto LABEL_419;
                  }

                  if (preProcess_onceToken != -1)
                  {
                    dispatch_once(&preProcess_onceToken, &__block_literal_global_1823);
                  }

                  if (!CFSetContainsValue(preProcess_localizeFieldNames, a1))
                  {
                    goto LABEL_419;
                  }

                  CFStringGetLength(a2);
                  theArray = _NLStringTokenizerCopyPossibleStringLanguages();
                  v172 = 0u;
                  v173 = 0u;
                  v170 = 0u;
                  v171 = 0u;
                  v168 = 0u;
                  v169 = 0u;
                  memset(valuePtr, 0, sizeof(valuePtr));
                  if (a2)
                  {
                    Length = CFStringGetLength(a2);
                  }

                  else
                  {
                    Length = 0;
                  }

                  theString = a2;
                  v177 = 0;
                  v178 = Length;
                  CharactersPtr = CFStringGetCharactersPtr(a2);
                  CStringPtr = 0;
                  v175 = CharactersPtr;
                  if (!CharactersPtr)
                  {
                    CStringPtr = CFStringGetCStringPtr(a2, 0x600u);
                  }

                  v179 = 0;
                  v180 = 0;
                  v176 = CStringPtr;
                  if (Length < 1)
                  {
                    v146 = 1;
LABEL_574:
                    if (theArray)
                    {
                      v158 = CFArrayGetCount(theArray);
                    }

                    else
                    {
                      v158 = 0;
                    }

                    if (!v146 || v158 != 0)
                    {
                      v159 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      if (v158 >= 1)
                      {
                        for (j = 0; j != v158; ++j)
                        {
                          v161 = CFArrayGetValueAtIndex(theArray, j);
                          CFDictionaryAddValue(v159, v161, a2);
                        }
                      }

                      if (!v146)
                      {
                        CFDictionaryAddValue(v159, @"en", a2);
                        CFDictionaryAddValue(v159, @"th", a2);
                      }

                      CFDictionaryAddValue(v159, &stru_1F4284FD0, a2);
                      InsertPreProcessContextAddLocAttr(a3, a1, v159, 0);
                    }

                    if (theArray)
                    {
                      CFRelease(theArray);
                    }

                    if (!v146 || v158 != 0)
                    {
                      goto LABEL_54;
                    }

                    goto LABEL_419;
                  }

                  v144 = 0;
                  v145 = 0;
                  v146 = 0;
                  v147 = 0;
                  v148 = 64;
                  while (1)
                  {
                    v149 = v147 >= 4 ? 4 : v147;
                    v150 = v178;
                    if (v178 > v147)
                    {
                      break;
                    }

LABEL_561:
                    v146 = ++v147 >= Length;
                    --v144;
                    ++v148;
                    if (Length == v147)
                    {
                      goto LABEL_574;
                    }
                  }

                  if (v175)
                  {
                    v151 = &v175[v177];
                  }

                  else
                  {
                    if (v176)
                    {
                      v152 = v176[v177 + v147];
LABEL_560:
                      if ((v152 & 0xFF80) == 0xE00)
                      {
                        goto LABEL_574;
                      }

                      goto LABEL_561;
                    }

                    if (v180 <= v147 || v145 > v147)
                    {
                      v154 = v149 + v144;
                      v155 = v148 - v149;
                      v156 = v147 - v149;
                      v157 = v156 + 64;
                      if (v156 + 64 >= v178)
                      {
                        v157 = v178;
                      }

                      v179 = v156;
                      v180 = v157;
                      if (v178 >= v155)
                      {
                        v150 = v155;
                      }

                      v200.location = v156 + v177;
                      v200.length = v150 + v154;
                      CFStringGetCharacters(theString, v200, valuePtr);
                      v145 = v179;
                    }

                    v151 = valuePtr - v145;
                  }

                  v152 = v151[v147];
                  goto LABEL_560;
                }

                if (v8 != CFArrayGetTypeID())
                {
                  goto LABEL_419;
                }

                v140 = *(a3 + 10);
                if ((v140 & 0x100000) == 0)
                {
                  v196.length = CFArrayGetCount(a2);
                  v196.location = 0;
                  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a2, v196, @"public.text");
                  v140 = *(a3 + 10);
                  if (FirstIndexOfValue != -1)
                  {
                    v140 &= ~0x1000u;
                    *(a3 + 10) = v140;
                  }
                }

                if ((v140 & 0x100100) != 0x100)
                {
                  goto LABEL_419;
                }

                v197.length = CFArrayGetCount(a2);
                v197.location = 0;
                if (CFArrayGetFirstIndexOfValue(a2, v197, @"public.image") != -1)
                {
                  goto LABEL_419;
                }

                v198.length = CFArrayGetCount(a2);
                v198.location = 0;
                if (CFArrayGetFirstIndexOfValue(a2, v198, @"com.adobe.pdf") != -1)
                {
                  goto LABEL_419;
                }

                v199.length = CFArrayGetCount(a2);
                v199.location = 0;
                if (CFArrayGetFirstIndexOfValue(a2, v199, @"com.apple.localized-pdf-bundle") != -1)
                {
                  goto LABEL_419;
                }

                v104 = a3[5] & 0xFFFFEFFF;
              }

              else
              {
                v104 = *(a3 + 10) | 0x8000;
              }
            }

            else
            {
              if (v8 != CFBooleanGetTypeID())
              {
                goto LABEL_54;
              }

              v104 = a3[5] & 0xFFFFFFF7 | (8 * (CFBooleanGetValue(a2) & 1));
            }

            *(a3 + 10) = v104;
          }

          else
          {
            *(a3 + 141) = CFHash(a2) % 0xFFFFFFFE + 1;
          }

LABEL_419:
          v96 = a3;
          v95 = a1;
          v94 = a2;
          v97 = 1;
          goto LABEL_420;
        }

        v92 = CFRetain(a2);
        *(a3 + 60) = v92;
        InsertPreProcessContextAddAttr(a3, a1, v92, 1);
        v90 = @"_kMDItemHiddenAdditionalRecipientEmailAddressesLocalParts";
      }

      else
      {
        v91 = CFRetain(a2);
        *(a3 + 59) = v91;
        InsertPreProcessContextAddAttr(a3, a1, v91, 1);
        v90 = @"_kMDItemAdditionalRecipientEmailAddressesLocalParts";
      }
    }

    else
    {
      v89 = CFRetain(a2);
      *(a3 + 58) = v89;
      InsertPreProcessContextAddAttr(a3, a1, v89, 1);
      v90 = @"_kMDItemPrimaryRecipientEmailAddressesLocalParts";
    }

    generateLocalPartsWithNewFieldName(a3, v90, a2);
    goto LABEL_54;
  }

  if (CFEqual(@"kMDItemContentCreationDate", a1))
  {
    v9 = @"kMDItemContentCreationDate";
    v10 = @"kMDItemContentCreationDate_Ranking";
    v11 = a3;
    v12 = a2;
    v13 = 2;
LABEL_18:

    _InsertPreProcessContextAddDateAttr(v11, v9, v12, v10, v13);
    return;
  }

  if (CFEqual(@"kMDItemContentModificationDate", a1))
  {
    v9 = @"kMDItemContentModificationDate";
    v10 = @"kMDItemContentModificationDate_Ranking";
LABEL_7:
    v11 = a3;
    v12 = a2;
    v13 = 3;
    goto LABEL_18;
  }

  if (CFEqual(@"_kMDItemApplicationLastLaunchedDate", a1))
  {
    v9 = @"_kMDItemApplicationLastLaunchedDate";
    v10 = @"_kMDItemApplicationLastLaunchedDate_Ranking";
LABEL_16:
    v11 = a3;
    v12 = a2;
LABEL_17:
    v13 = 4;
    goto LABEL_18;
  }

  if (CFEqual(@"kMDItemStartDate", a1))
  {
    v9 = @"kMDItemStartDate";
    v10 = @"kMDItemStartDate_Ranking";
    goto LABEL_16;
  }

  if (CFEqual(@"kMDItemCompletionDate", a1))
  {
    v9 = @"kMDItemCompletionDate";
    v10 = @"kMDItemCompletionDate_Ranking";
    goto LABEL_16;
  }

  if (CFEqual(@"kMDItemDueDate", a1))
  {
    v9 = @"kMDItemDueDate";
    v10 = @"kMDItemDueDate_Ranking";
    goto LABEL_16;
  }

  if (CFEqual(@"kMDItemDateAdded", a1))
  {
    v9 = @"kMDItemDateAdded";
    v10 = @"kMDItemDateAdded_Ranking";
    v11 = a3;
    v12 = a2;
    v13 = 1;
    goto LABEL_18;
  }

  if (CFEqual(@"_kMDItemRelatedActivityLastLaunchDate", a1))
  {
    v9 = @"_kMDItemRelatedActivityLastLaunchDate";
    v11 = a3;
    v12 = a2;
    v10 = 0;
    goto LABEL_17;
  }

  if (CFEqual(@"com_apple_mail_dateReceived", a1))
  {
    v9 = @"com_apple_mail_dateReceived";
    v10 = @"kMDItemMailDateReceived_Ranking";
    goto LABEL_7;
  }

  if (CFEqual(@"com_apple_mail_dateLastViewed", a1))
  {
    v9 = @"com_apple_mail_dateLastViewed";
    v10 = @"kMDItemMailDateLastViewed_Ranking";
    goto LABEL_7;
  }

  if (CFEqual(@"kMDItemEndDate", a1))
  {
    v9 = @"kMDItemEndDate";
    v11 = a3;
    v12 = a2;
    v10 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  if (!CFEqual(@"kMDItemLastUsedDate", a1))
  {
    if (CFEqual(a1, @"_kMDItemRenderDate"))
    {
      a3[61] = MEMORY[0x1C691E960](a2);
      return;
    }

    if (CFEqual(a1, @"_kMDItemEngagementDate"))
    {
      a3[62] = MEMORY[0x1C691E960](a2);
      return;
    }

    if (CFEqual(a1, @"kMDItemLastAppEngagementDate"))
    {
      a3[63] = MEMORY[0x1C691E960](a2);
      return;
    }

    goto LABEL_49;
  }

  *(a3 + 1) = CFRetain(a2);
  v14 = *(a3 + 10);
  v15 = ~(16 * v14) & 0x10;
  if ((v14 & 2) != 0)
  {
    v15 = 0;
  }

  v16 = v15 | v14 & 0xFFFFFFEF;
  *(a3 + 10) = v16;
  if (dword_1EBF46ADC < 5)
  {
    if ((v16 & 0x10000) != 0)
    {
      return;
    }

    goto LABEL_36;
  }

  v118 = *__error();
  v119 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    v120 = *(a3 + 1);
    LODWORD(valuePtr[0]) = 138412290;
    *(valuePtr + 4) = v120;
    _os_log_impl(&dword_1C278D000, v119, OS_LOG_TYPE_DEFAULT, "New last used date: %@", valuePtr, 0xCu);
  }

  *__error() = v118;
  if ((a3[5] & 0x10000) == 0)
  {
LABEL_36:
    v17 = *(a3 + 68);
    if (v17 <= 3 || v17 == 4 && CFDateCompare(*(a3 + 67), a2, 0) < 0)
    {
      v18 = *(a3 + 67);
      if (v18)
      {
        CFRelease(v18);
      }

      a3[67] = 0.0;
      *(a3 + 67) = CFRetain(a2);
      *(a3 + 68) = 4;
    }
  }
}

_DWORD *db_copy_obj(unsigned int *a1, uint64_t a2)
{
  result = malloc_type_malloc(a1[3] + a2, 0x1000040EED21634uLL);
  if (result)
  {
    v5 = result;
    memcpy(result, a1, a1[3]);
    result = v5;
    v5[2] = a1[3] + a2;
    if (a2)
    {
      v5[10] &= ~0x100u;
    }
  }

  return result;
}

void postPreprocess(uint64_t a1, CFTypeRef cf1)
{
  if (postPreprocess_onceToken != -1)
  {
    dispatch_once(&postPreprocess_onceToken, &__block_literal_global_1855);
  }

  if ((*(a1 + 40) & 0x6100) == 0x4000)
  {
    InsertPreProcessContextAddAttr(a1, @"_kMDItemSupportFileType", postPreprocess_arrSystemFile, 1);
  }

  v4 = *(a1 + 456);
  v5 = *(a1 + 464);
  if (v4)
  {
    if (!v5)
    {
      InsertPreProcessContextAddAttr(a1, @"kMDItemPrimaryRecipientEmailAddresses", v4, 1);
      generateLocalPartsWithNewFieldName(a1, @"_kMDItemPrimaryRecipientEmailAddressesLocalParts", *(a1 + 456));
    }
  }

  else if (v5 || *(a1 + 472) || *(a1 + 480))
  {
    valuePtr = 0;
    p_valuePtr = &valuePtr;
    v42 = 0x2000000000;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 0x40000000;
    v37 = __postPreprocess_block_invoke_2;
    v38 = &unk_1E81923A8;
    v39 = &valuePtr;
    v6 = *(a1 + 464);
    if (v6)
    {
      __postPreprocess_block_invoke_2(v36, v6);
    }

    if (*(a1 + 472))
    {
      (v37)(v36);
    }

    if (*(a1 + 480))
    {
      (v37)(v36);
    }

    if (CFArrayGetCount(p_valuePtr[3]))
    {
      InsertPreProcessContextAddAttr(a1, @"kMDItemRecipientEmailAddresses", p_valuePtr[3], 1);
      generateLocalPartsWithNewFieldName(a1, @"_kMDItemRecipientEmailAddressesLocalParts", p_valuePtr[3]);
    }

    CFRelease(p_valuePtr[3]);
    _Block_object_dispose(&valuePtr, 8);
  }

  if ((*(a1 + 41) & 1) != 0 && !*(a1 + 564) && cf1 && *(a1 + 552) && CFEqual(cf1, @"com.apple.MobileSMS"))
  {
    *(a1 + 564) = CFHash(*(a1 + 552)) % 0xFFFFFFFE + 1;
  }

  v7 = *(a1 + 328);
  v8 = *MEMORY[0x1E695E738];
  v9 = MEMORY[0x1E695E4D0];
  if (v7 == *MEMORY[0x1E695E738])
  {
    InsertPreProcessContextAddAttr(a1, @"_kMDItemTextContentIndexExists", *MEMORY[0x1E695E738], 0);
    InsertPreProcessContextAddAttr(a1, @"_kMDItemTextContentLength", v8, 0);
    InsertPreProcessContextAddAttr(a1, @"_kMDItemSnippet", v8, 0);
    v11 = *v9;
  }

  else
  {
    if (v7)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(*(a1 + 328)))
      {
        valuePtr = CFStringGetLength(*(a1 + 328));
        v11 = *v9;
        if (valuePtr < 1)
        {
          v12 = *MEMORY[0x1E695E4C0];
          v13 = @"_kMDItemTextContentIndexExists";
        }

        else
        {
          v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
          v13 = @"_kMDItemTextContentLength";
        }

        InsertPreProcessContextAddAttr(a1, v13, v12, 0);
        if (v11)
        {
          goto LABEL_39;
        }
      }
    }

    if (*(a1 + 336) || *(a1 + 344) || *(a1 + 352))
    {
      v11 = *v9;
    }

    else
    {
      v11 = *v9;
      if (!*(a1 + 360))
      {
        goto LABEL_40;
      }
    }

    if (v11)
    {
LABEL_39:
      InsertPreProcessContextAddAttr(a1, @"_kMDItemTextContentIndexExists", v11, 0);
      *(a1 + 40) |= 0x20u;
    }
  }

LABEL_40:
  v14 = *(a1 + 88);
  if (v14 && v14 == v11)
  {
    InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMe", v14, 0);
    v15 = *(a1 + 96);
    if (!v15 || v15 != v11)
    {
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  v16 = *(a1 + 240);
  if (v16)
  {
    v17 = CFDictionaryContainsKey(*(a1 + 240), @"_kMDItemDerivedIsMeTextContentMatch") ? CFDictionaryGetValue(v16, @"_kMDItemDerivedIsMeTextContentMatch") : 0;
    if (CFDictionaryContainsKey(v16, @"_kMDItemDerivedIsMe"))
    {
      Value = CFDictionaryGetValue(v16, @"_kMDItemDerivedIsMe");
      if (Value == v11)
      {
        v19 = *MEMORY[0x1E695E4C0];
        if (!v17 || (Value = v11, v17 == v19))
        {
          InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMe", v19, 0);
          Value = v11;
        }
      }
    }

    else
    {
      Value = 0;
    }

    if (v17 && v17 == v11)
    {
      if ((*(a1 + 40) & 0x20) != 0)
      {
        v15 = *MEMORY[0x1E695E4C0];
LABEL_62:
        v20 = @"_kMDItemDerivedIsMeTextContentMatch";
        v21 = a1;
        goto LABEL_63;
      }

      if (!Value || Value == *MEMORY[0x1E695E4C0])
      {
        v20 = @"_kMDItemDerivedIsMe";
        v21 = a1;
        v15 = v11;
LABEL_63:
        InsertPreProcessContextAddAttr(v21, v20, v15, 0);
      }
    }
  }

LABEL_64:
  v22 = *(a1 + 104);
  if (v22 && v22 == v11)
  {
    goto LABEL_66;
  }

  v23 = *(a1 + 240);
  if (v23 && CFDictionaryContainsKey(*(a1 + 240), @"_kMDItemDerivedIsMeRankingSpan") && CFDictionaryGetValue(v23, @"_kMDItemDerivedIsMeRankingSpan") == v11)
  {
    v22 = *MEMORY[0x1E695E4C0];
LABEL_66:
    InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMeRankingSpan", v22, 0);
  }

  v24 = *(a1 + 112);
  if (v24 && v24 == v11)
  {
    goto LABEL_72;
  }

  v25 = *(a1 + 240);
  if (v25 && CFDictionaryContainsKey(*(a1 + 240), @"_kMDItemDerivedIsMeRankingToken") && CFDictionaryGetValue(v25, @"_kMDItemDerivedIsMeRankingToken") == v11)
  {
    v24 = *MEMORY[0x1E695E4C0];
LABEL_72:
    InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMeRankingToken", v24, 0);
  }

  v26 = *(a1 + 120);
  if (v26 && v26 == v11)
  {
    InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMeRankingOCR", v26, 0);
    v27 = *(a1 + 128);
    if (!v27 || v27 != v11)
    {
      goto LABEL_100;
    }

    goto LABEL_98;
  }

  v28 = *(a1 + 240);
  if (v28)
  {
    v29 = CFDictionaryContainsKey(*(a1 + 240), @"_kMDItemDerivedIsMeRankingOCRTextContentMatch") ? CFDictionaryGetValue(v28, @"_kMDItemDerivedIsMeRankingOCRTextContentMatch") : 0;
    if (CFDictionaryContainsKey(v28, @"_kMDItemDerivedIsMeRankingOCR"))
    {
      v30 = CFDictionaryGetValue(v28, @"_kMDItemDerivedIsMeRankingOCR");
      if (v30 == v11)
      {
        v31 = *MEMORY[0x1E695E4C0];
        if (!v29 || (v30 = v11, v29 == v31))
        {
          InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMeRankingOCR", v31, 0);
          v30 = v11;
        }
      }
    }

    else
    {
      v30 = 0;
    }

    if (v29 && v29 == v11)
    {
      if ((*(a1 + 40) & 0x20) != 0)
      {
        v27 = *MEMORY[0x1E695E4C0];
LABEL_98:
        v32 = @"_kMDItemDerivedIsMeRankingOCRTextContentMatch";
        v33 = a1;
        goto LABEL_99;
      }

      if (!v30 || v30 == *MEMORY[0x1E695E4C0])
      {
        v32 = @"_kMDItemDerivedIsMeRankingOCR";
        v33 = a1;
        v27 = v11;
LABEL_99:
        InsertPreProcessContextAddAttr(v33, v32, v27, 0);
      }
    }
  }

LABEL_100:
  v34 = *(a1 + 136);
  if (v34 && v34 == v11)
  {
    goto LABEL_102;
  }

  v35 = *(a1 + 240);
  if (v35 && CFDictionaryContainsKey(*(a1 + 240), @"_kMDItemDerivedIsMeRankingPreExtraction") && CFDictionaryGetValue(v35, @"_kMDItemDerivedIsMeRankingPreExtraction") == v11)
  {
    v34 = *MEMORY[0x1E695E4C0];
LABEL_102:
    InsertPreProcessContextAddAttr(a1, @"_kMDItemDerivedIsMeRankingPreExtraction", v34, 0);
  }
}

void handleUserTags(uint64_t a1)
{
  v2 = *(a1 + 408);
  if (v2)
  {
    HasPrefix = CFStringHasPrefix(v2, @":EA");
    v4 = *(a1 + 416);
    if (v4)
    {
      v5 = CFGetTypeID(*(a1 + 416));
    }

    else
    {
      v5 = 0;
    }

    if (v5 == CFStringGetTypeID())
    {
      Mutable = CopyUserTag(v4);
    }

    else if (v5 == CFArrayGetTypeID())
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
          v11 = CopyUserTag(ValueAtIndex);
          CFArrayAppendValue(Mutable, v11);
          CFRelease(v11);
        }
      }
    }

    else
    {
      Mutable = *MEMORY[0x1E695E738];
    }

    InsertPreProcessContextAddAttr(a1, @"kMDItemUserTags", Mutable, 0);
    v12 = *(a1 + 416);
    if (HasPrefix)
    {
      v13 = @":EA:_kMDItemUserTags";
    }

    else
    {
      v13 = @"_kMDItemUserTags";
    }

    InsertPreProcessContextAddAttr(a1, v13, v12, 1);
  }
}

void si_enqueue_barrier_for_job(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[5] = a1;
    block[6] = a2;
    block[2] = __si_enqueue_barrier_for_job_block_invoke;
    block[3] = &__block_descriptor_tmp_4_1429;
    block[4] = v6;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v7, block);
  }

  else
  {

    a2(a3, 1);
  }
}

void delayed_op_prop0(void *a1, int a2)
{
  if (a2)
  {
    (a1[2])(*a1);

    free(a1);
  }

  else
  {
    v3 = *(a1[1] + 1160);

    si_enqueue_barrier_for_job(v3, delayed_op_prop1, a1, 0);
  }
}

void __si_enqueue_barrier_for_job_block_invoke(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  if (!v1)
  {
    v17 = __si_assert_copy_extra_661(-1);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 931, "queue", v19);
    free(v18);
    if (__valid_fs(-1))
    {
      v20 = 2989;
    }

    else
    {
      v20 = 3072;
    }

    *v20 = -559038737;
    abort();
  }

  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = *v1;
  v7 = v2 == 0;
  if (v5)
  {
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 132), 1u, memory_order_relaxed);
    }

    v27 = v3;
    atomic_fetch_add(v5, 1u);
    goto LABEL_6;
  }

  if (v2 && (!v6 || !*(v6 + 104) && *(v6 + 64) != 1))
  {
    v27 = a1[6];
    v7 = 0;
    v5 = 0;
    atomic_fetch_add_explicit((v2 + 132), 1u, memory_order_relaxed);
LABEL_6:
    v8 = v1[2];
    *(v1 + 7) = vaddq_s64(*(v1 + 7), vdupq_n_s64(1uLL));
    v9 = malloc_type_malloc(0x48uLL, 0x10A0040047F2C8DuLL);
    v9[3] = v27;
    v9[4] = v4;
    v9[5] = v5;
    v9[6] = 0;
    v9[7] = v4 ^ v27 ^ v5;
    if (v7)
    {
      v21 = __si_assert_copy_extra_661(-1);
      v22 = v21;
      v23 = "";
      if (v21)
      {
        v23 = v21;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 876, "root", v23);
      free(v22);
      if (__valid_fs(-1))
      {
        v24 = 2989;
      }

      else
      {
        v24 = 3072;
      }

      *v24 = -559038737;
      abort();
    }

    *v9 = v2;
    v9[1] = v6;
    v9[2] = v1;
    v10 = *(v2 + 136) == 1 && (v1[7] & 0xF) == 0;
    *(v9 + 64) = v10;
    v12 = qos_class_self();
    v13 = v12;
    if (*(v6 + 192) && *(v6 + 216) < v12)
    {
      pthread_mutex_lock(*(v6 + 8));
      v14 = *(v6 + 192);
      if (v14)
      {
        if (*(v6 + 216) < v13)
        {
          v15 = *(v6 + 208);
          *(v6 + 208) = pthread_override_qos_class_start_np(v14, v13, 0);
          *(v6 + 216) = v13;
          if (v15)
          {
            pthread_override_qos_class_end_np(v15);
          }
        }
      }

      pthread_mutex_unlock(*(v6 + 8));
    }

    if (dword_1EBF46B00 >= 5)
    {
      v25 = *__error();
      v26 = _SILogForLogForCategory(13);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(block) = 67109376;
        HIDWORD(block) = v13;
        LOWORD(v29) = 2048;
        *(&v29 + 2) = v9;
        _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "QOS enqueue_work: %d %p", &block, 0x12u);
      }

      *__error() = v25;
    }

    block = MEMORY[0x1E69E9820];
    *&v29 = 0x40000000;
    *(&v29 + 1) = __enqueue_barrier_block_invoke;
    v30 = &__block_descriptor_tmp_60;
    v31 = v9;
    v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, &block);
    dispatch_barrier_async(v8, v16);
    _Block_release(v16);
    return;
  }

  v11 = a1[7];

  v3(v11, 1);
}

void delayed_op_prop1(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(a1 + 16))(*a1);

    free(a1);
  }

  else
  {
    if (*(a1 + 24) == 2)
    {
      v3 = delayed_op_final;
    }

    else
    {
      v3 = delayed_op_prop2;
    }

    v4 = *(*(a1 + 8) + 1048);

    si_enqueue_barrier_with_qos(v4, 5, v3, a1);
  }
}

void qp_string_id_cache_free(void *a1)
{
  if (a1)
  {
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

    v4 = a1[4];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[5];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[7];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[8];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[10];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = a1[11];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = a1[13];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = a1[14];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = a1[16];
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = a1[17];
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = a1[19];
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = a1[20];
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = a1[22];
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = a1[23];
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = a1[25];
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = a1[26];
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = a1[28];
    if (v20)
    {
      CFRelease(v20);
    }

    v21 = a1[29];
    if (v21)
    {
      CFRelease(v21);
    }

    v22 = a1[31];
    if (v22)
    {
      CFRelease(v22);
    }

    v23 = a1[32];
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = a1[34];
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = a1[35];
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = a1[37];
    if (v26)
    {
      CFRelease(v26);
    }

    v27 = a1[38];
    if (v27)
    {
      CFRelease(v27);
    }

    v28 = a1[40];
    if (v28)
    {
      CFRelease(v28);
    }

    v29 = a1[41];
    if (v29)
    {
      CFRelease(v29);
    }

    v30 = a1[43];
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = a1[44];
    if (v31)
    {
      CFRelease(v31);
    }

    v32 = a1[46];
    if (v32)
    {
      CFRelease(v32);
    }

    v33 = a1[47];
    if (v33)
    {
      CFRelease(v33);
    }

    free(a1);
  }
}

void delayed_op_final(void (**a1)(void))
{
  a1[2](*a1);

  free(a1);
}

uint64_t __si_peek_queue_for_tags_block_invoke(uint64_t result)
{
  v1 = result;
  v30 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v1 + 40);
      v16 = *(v1 + 48);
      label = dispatch_queue_get_label(*(v16 + 16));
      v18 = *(v16 + 72);
      *buf = 134218498;
      v25 = v15;
      v26 = 2080;
      v27 = label;
      v28 = 2048;
      v29 = v18;
      _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "Peek for  %p on queue %s with tagbag %p", buf, 0x20u);
    }

    result = __error();
    *result = v13;
  }

  if (*(*(v1 + 48) + 72))
  {
    result = CFArrayGetCount(*(v1 + 40));
    if ((*(*(*(v1 + 32) + 8) + 24) & 1) == 0)
    {
      v2 = result;
      if (result >= 1)
      {
        v3 = 1;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 40), v3 - 1);
          result = CFDictionaryGetValue(*(*(v1 + 48) + 72), ValueAtIndex);
          if (!result)
          {
            break;
          }

          result = MEMORY[0x1C691E5D0]();
          if (result)
          {
            *(*(*(v1 + 32) + 8) + 24) = 1;
            if (dword_1EBF46AD0 < 5)
            {
              goto LABEL_15;
            }

            v23 = *__error();
            log = _SILogForLogForCategory(1);
            if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_22;
            }

            v5 = dispatch_queue_get_label(*(*(v1 + 48) + 16));
            *buf = 134218242;
            v25 = ValueAtIndex;
            v26 = 2080;
            v27 = v5;
            v6 = log;
            v7 = "Found oid bag for %p on queue %s";
LABEL_20:
            v10 = 22;
LABEL_21:
            _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, v10);
            goto LABEL_22;
          }

          if (dword_1EBF46AD0 < 5)
          {
            goto LABEL_15;
          }

          v23 = *__error();
          logb = _SILogForLogForCategory(1);
          if (os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT))
          {
            v12 = dispatch_queue_get_label(*(*(v1 + 48) + 16));
            *buf = 134218242;
            v25 = ValueAtIndex;
            v26 = 2080;
            v27 = v12;
            v6 = logb;
            v7 = "Empty oid bag for %p on queue %s";
            goto LABEL_20;
          }

LABEL_22:
          result = __error();
          *result = v23;
LABEL_15:
          if ((*(*(*(v1 + 32) + 8) + 24) & 1) == 0 && v3++ < v2)
          {
            continue;
          }

          return result;
        }

        if (dword_1EBF46AD0 < 5)
        {
          goto LABEL_15;
        }

        v23 = *__error();
        loga = _SILogForLogForCategory(1);
        if (!os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v19 = *(v1 + 48);
        v8 = dispatch_queue_get_label(*(v19 + 16));
        v6 = loga;
        v9 = *(v19 + 72);
        *buf = 134218498;
        v25 = ValueAtIndex;
        v26 = 2080;
        v27 = v8;
        v28 = 2048;
        v29 = v9;
        v7 = "No oid bag for %p on queue %s with tags %p";
        v10 = 32;
        goto LABEL_21;
      }
    }
  }

  return result;
}

unsigned int *SIQueryCreateWithItems(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  v13[0] = 1;
  v13[1] = a1;
  v13[2] = 0;
  v13[3] = 0;
  v13[5] = 0;
  v14 = 0uLL;
  v13[4] = a2;
  v15 = 0uLL;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  *(&v20 + 1) = atomic_fetch_add(&gInternalQueryID, 1uLL);
  v21 = a7;
  *&v22[0] = a8;
  *(v22 + 8) = a9;
  *(&v22[1] + 1) = a10;
  *&v22[2] = a11;
  memset(&v22[2] + 8, 0, 48);
  v23 = 0u;
  v24 = 0u;
  LOWORD(v25) = 0;
  *(&v25 + 1) = 0;
  *&v26 = 0;
  BYTE8(v26) = 0;
  v27 = 0u;
  v28 = 0u;
  *(v29 + 15) = 0;
  v29[0] = a12;
  return SIQueryCreateWithParameters(v13);
}

void background_query_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

uint64_t si_peek_queue_for_tags(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (dword_1EBF46AD0 >= 5)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      label = dispatch_queue_get_label(*(a1 + 16));
      *buf = 134218242;
      v21 = a2;
      v22 = 2080;
      v23 = label;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "Peek tags for %p on queue %s", buf, 0x16u);
    }

    *__error() = v7;
  }

  v4 = *(a1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __si_peek_queue_for_tags_block_invoke;
  block[3] = &unk_1E8192F30;
  block[5] = a2;
  block[6] = a1;
  block[4] = &v16;
  dispatch_sync(v4, block);
  if (*(v17 + 24) != 1)
  {
    if (dword_1EBF46AD0 < 5)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v10 = *__error();
    v11 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = dispatch_queue_get_label(*(a1 + 16));
      *buf = 134218242;
      v21 = a2;
      v22 = 2080;
      v23 = v14;
      v13 = "No tags for %p on queue %s";
      goto LABEL_15;
    }

LABEL_16:
    *__error() = v10;
    v5 = *(v17 + 24);
    goto LABEL_7;
  }

  if (dword_1EBF46AD0 >= 5)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = dispatch_queue_get_label(*(a1 + 16));
      *buf = 134218242;
      v21 = a2;
      v22 = 2080;
      v23 = v12;
      v13 = "Found tags for %p on queue %s";
LABEL_15:
      _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v5 = 1;
LABEL_7:
  _Block_object_dispose(&v16, 8);
  return v5 & 1;
}

uint64_t _splitAndGroupBySource(int *a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v55 = 0u;
  v56 = 0u;
  if (!a1)
  {
    return 0;
  }

  *(a1 + 12) = 0;
  v2 = *a1;
  if (*a1 < 2)
  {
    MEMORY[0x1EEE9AC00](0);
    v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    if (*(a1 + 3) < 1)
    {
      v5 = 0;
    }

    else
    {
      v8 = 0;
      LODWORD(v5) = 0;
      v9 = *(a1 + 4);
      v10 = v7;
      do
      {
        v11 = _splitAndGroupBySource(*(v9 + 8 * v8));
        if (!v11)
        {
          v44 = __si_assert_copy_extra_332();
          v45 = v44;
          v46 = "";
          if (v44)
          {
            v46 = v44;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 365, "s!=NONE", v46);
          free(v45);
          if (__valid_fs(-1))
          {
            v47 = 2989;
          }

          else
          {
            v47 = 3072;
          }

          *v47 = -559038737;
          abort();
        }

        v12 = bucket[v11];
        ++*(&v55 + v12);
        v5 = v11 | v5;
        v13 = *(a1 + 3);
        v9 = *(a1 + 4);
        v14 = *(a1 + 13) | *(*(v9 + 8 * v8) + 13);
        *v10 = v12;
        v10[1] = v8;
        v10 += 2;
        *(a1 + 13) = v14;
        ++v8;
      }

      while (v13 > v8);
    }

    if ((0xE8uLL >> v5))
    {
      v54 = &v52;
      v53 = DWORD1(v55);
      if (DWORD1(v55))
      {
        v17 = clone_node_copyingkind(a1, 1, v7, DWORD1(v55));
      }

      else
      {
        v17 = 0;
      }

      v52 = DWORD2(v55);
      if (DWORD2(v55))
      {
        v18 = clone_node_copyingkind(a1, 2, v7, DWORD2(v55));
      }

      else
      {
        v18 = 0;
      }

      v19 = HIDWORD(v55);
      if (HIDWORD(v55))
      {
        v20 = clone_node_copyingkind(a1, 3, v7, HIDWORD(v55));
      }

      else
      {
        v20 = 0;
      }

      v21 = v56;
      if (v56)
      {
        v22 = clone_node_copyingkind(a1, 4, v7, v56);
        v23 = v22;
        v24 = *a1;
        if (*a1)
        {
          *(a1 + 13) |= *(v22 + 13);
          if (v24 == 1)
          {
            v25 = *(v22 + 15);
            if ((v25 & 1) == 0)
            {
              v25 = *(a1 + 15);
            }

            *(a1 + 15) = v25;
          }
        }

        else
        {
          *(a1 + 12) = 1;
          *(a1 + 13) |= *(v22 + 13);
        }
      }

      else
      {
        v23 = 0;
      }

      v26 = HIDWORD(v56);
      if (HIDWORD(v56))
      {
        v27 = clone_node_copyingkind(a1, 7, v7, HIDWORD(v56));
        v28 = *a1;
        if (*a1)
        {
          *(a1 + 13) |= *(v27 + 13);
          if (v28 == 1)
          {
            v29 = *(v27 + 15);
            if ((v29 & 1) == 0)
            {
              v29 = *(a1 + 15);
            }

            *(a1 + 15) = v29;
          }
        }

        else
        {
          *(a1 + 12) = 1;
          *(a1 + 13) |= *(v27 + 13);
        }
      }

      else
      {
        v27 = 0;
      }

      *(a1 + 3) = 0;
      if (v17)
      {
        v30 = *(a1 + 4);
        *(a1 + 3) = 1;
        *v30 = v17;
        v31 = *(a1 + 3);
      }

      else
      {
        v31 = 0;
      }

      if (v18)
      {
        v32 = *(a1 + 4);
        *(a1 + 3) = v31 + 1;
        *(v32 + 8 * v31) = v18;
        v31 = *(a1 + 3);
      }

      if (v20)
      {
        v33 = *(a1 + 4);
        *(a1 + 3) = v31 + 1;
        *(v33 + 8 * v31) = v20;
        v31 = *(a1 + 3);
      }

      if (v23)
      {
        v34 = *(a1 + 4);
        *(a1 + 3) = v31 + 1;
        *(v34 + 8 * v31) = v23;
        v31 = *(a1 + 3);
      }

      if (v27)
      {
        v35 = *(a1 + 4);
        *(a1 + 3) = v31 + 1;
        *(v35 + 8 * v31) = v27;
        v31 = *(a1 + 3);
      }

      if (v31 == 1)
      {
        v36 = *(a1 + 4);
        v37 = *v36;
        v38 = *(*v36 + 4);
        v39 = (*v36)[1];
        *a1 = **v36;
        *(a1 + 1) = v39;
        *(a1 + 4) = v38;
        free(v37);
        free(v36);
      }

      else
      {
        if (!*a1)
        {
          goto LABEL_93;
        }

        if (v31 >= 1)
        {
          v40 = *(a1 + 4);
          do
          {
            if (*(*v40 + 15) == 1)
            {
              *(a1 + 15) = 1;
            }

            v40 += 8;
            --v31;
          }

          while (v31);
        }

        if (!(v52 | v53 | v19))
        {
LABEL_93:
          if (v26 | v21)
          {
            *(a1 + 12) = 1;
          }
        }
      }
    }

    a1[1] = v5;
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v3 = *(*(a1 + 3) + 16);
        if (!v3)
        {
          goto LABEL_8;
        }

        v4 = *(v3 + 32);
        if ((v4 & 0x400) != 0)
        {
          v5 = 1;
          goto LABEL_36;
        }

        if ((v4 & 0x800) == 0)
        {
LABEL_8:
          v5 = 2;
LABEL_36:
          a1[1] = v5;
          return v5;
        }

        v5 = 4;
        a1[1] = 4;
        if (strcmp(*v3, "kMDItemFSInvisible"))
        {
          return v5;
        }

        v42 = *(v3 + 72);
        v43 = *v42;
        if (v43 == 48)
        {
          if ((v42[1] == 0) == (*(v3 + 24) != 5))
          {
            return 4;
          }
        }

        else if (v43 == 42 && !v42[1] || *(v3 + 24) == 5)
        {
          return 4;
        }

        *(a1 + 13) = 1;
        *(a1 + 15) = 1;
        return 4;
      }

      return 0;
    }

    v15 = _splitAndGroupBySource(*(a1 + 3));
    if (!v15)
    {
      v48 = __si_assert_copy_extra_332();
      v49 = v48;
      v50 = "";
      if (v48)
      {
        v50 = v48;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 410, "source!=NONE", v50);
      free(v49);
      if (__valid_fs(-1))
      {
        v51 = 2989;
      }

      else
      {
        v51 = 3072;
      }

      *v51 = -559038737;
      abort();
    }

    v5 = v15;
    a1[1] = v15;
    v16 = *(a1 + 3);
    *(a1 + 13) = *(v16 + 13);
    *(a1 + 15) = *(v16 + 15);
  }

  return v5;
}

uint64_t rewriteForSources(int *a1, uint64_t **a2, int a3)
{
  v6 = _splitAndGroupBySource(a1);
  *a2 = 0;
  if (!v6)
  {
    v54 = __si_assert_copy_extra_332();
    v55 = v54;
    v56 = "";
    if (v54)
    {
      v56 = v54;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 787, "s!=NONE", v56);
    free(v55);
    if (__valid_fs(-1))
    {
      v57 = 2989;
    }

    else
    {
      v57 = 3072;
    }

    *v57 = -559038737;
    abort();
  }

  calculateCost(a1);
  v58 = 0;
  v59 = 0;
  v7 = rewriteForFSSearching(a1, &v58, &v59);
  v8 = malloc_type_malloc(16 * v7, 0x20040A4A59CD2uLL);
  v10 = v58;
  v9 = v59;
  if (v7 < 1)
  {
    v19 = 0;
  }

  else
  {
    v11 = a3;
    v12 = 0;
    v13 = v7;
    do
    {
      if (v10)
      {
        v14 = v9[v12];
        if (v14)
        {
          v15 = v10[v12];
          if (v15)
          {
            v16 = v14[1];
            if ((v16 & 3) != 0 && (*(v15 + 4) & 3) != 0 && (*(v15 + 15) & 1) == 0)
            {
              if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
              {
                ++sTotal_4940;
              }

              v14 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
              if (!v14)
              {
                _log_fault_for_malloc_failure();
              }

              *v14 = 1;
              v14[1] = *(v10[v12] + 4) | *(v9[v12] + 4);
              *(v14 + 3) = 2;
              v17 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
              *(v14 + 4) = v17;
              *v17 = v9[v12];
              *(*(v14 + 4) + 8) = v10[v12];
              v10[v12] = 0;
              v9[v12] = v14;
              v16 = v14[1];
            }

            if ((v16 & 3) == 0)
            {
              v18 = v10[v12];
              if (v18)
              {
                if ((*(v18 + 4) & 3) != 0 && (*(v14 + 15) & 1) == 0)
                {
                  v10[v12] = v14;
                  v9[v12] = v18;
                }
              }
            }
          }
        }
      }

      ++v12;
    }

    while (v7 != v12);
    v19 = 0;
    v20 = v9;
    v21 = v10;
    a3 = v11;
    do
    {
      if (v9)
      {
        v22 = *v20;
      }

      else
      {
        v22 = 0;
      }

      v23 = &v8[2 * v19];
      *v23 = v22;
      if (v10)
      {
        v24 = *v21;
      }

      else
      {
        v24 = 0;
      }

      v23[1] = v24;
      if (v22)
      {
        ++v19;
      }

      ++v21;
      ++v20;
      --v13;
    }

    while (v13);
  }

  free(v10);
  free(v9);
  qsort_b(v8, v19, 0x10uLL, &__block_literal_global_4941);
  v25 = v19 - 1;
  if (v19 > 1)
  {
    v26 = v8 + 3;
    v27 = 1;
    do
    {
      v28 = *(v26 - 3);
      if (*(v28 + 4) != 4)
      {
        goto LABEL_45;
      }

      v29 = *(v26 - 1);
      if (*(v29 + 4) != 4 || siquerynode_compare(v28, v29))
      {
        goto LABEL_45;
      }

      v30 = *(v26 - 2);
      if (v30)
      {
        v31 = *v26;
        if (*v26)
        {
          v32 = &v8[2 * v27 - 1];
          if (siquerynode_compare(*(v26 - 2), *v26))
          {
            *v26 = si_querynode_add(v30, v31);
          }

          else
          {
            siquerynode_release(v30);
          }

          goto LABEL_44;
        }

        siquerynode_release(*(v26 - 2));
      }

      siquerynode_release(*v26);
      *(v26 - 2) = 0;
      v32 = v26;
LABEL_44:
      *v32 = 0;
      siquerynode_release(*(v26 - 3));
      *(v26 - 3) = 0;
LABEL_45:
      ++v27;
      v26 += 2;
      --v25;
    }

    while (v25);
  }

  if (v19 < 1)
  {
    goto LABEL_79;
  }

  v33 = 0;
  v34 = 0;
  v35 = v8;
  do
  {
    if (*v35)
    {
      LOBYTE(v59) = 0;
      *&v8[2 * v34] = *v35;
      v33 |= catSearchSupportsOneAttribute(*v35, &v59) ^ 1;
      ++v34;
    }

    v35 += 2;
    --v19;
  }

  while (v19);
  if ((v34 > 6) | (v33 | a3) & 1)
  {
    v36 = v34 - 1;
    if (v34 > 1)
    {
      v37 = v8 + 2;
      while (1)
      {
        v38 = *(v37 - 2);
        if (*(v38 + 4) != 4)
        {
          goto LABEL_72;
        }

        v39 = *v37;
        if (*(*v37 + 4) != 4)
        {
          goto LABEL_72;
        }

        v40 = *(v37 - 1);
        v41 = v37[1];
        if (v40)
        {
          break;
        }

        if (v41)
        {
          Node = cloneQueryNode(*v37, 0);
          v47 = si_querynode_join(Node, v37[1]);
          v48 = *(v37 - 2);
          if (!v48)
          {
            goto LABEL_66;
          }

LABEL_68:
          v49 = cloneQueryNode(v48, 0);
LABEL_69:
          v37[1] = si_querynode_add(v47, v49);
        }

LABEL_71:
        v51 = si_querynode_add(*v37, *(v37 - 2));
        *v37 = v51;
        *(v51 + 1) = 4;
        *(v37 - 2) = 0;
        *(v37 - 1) = 0;
LABEL_72:
        v37 += 2;
        if (!--v36)
        {
          goto LABEL_73;
        }
      }

      if (v41)
      {
        if (siquerynode_compare(*(v37 - 1), v41))
        {
          v42 = cloneQueryNode(v39, 0);
          v43 = si_querynode_join(v42, v37[1]);
          v44 = *(v37 - 2);
          if (v44)
          {
            v44 = cloneQueryNode(v44, 0);
          }

          v45 = si_querynode_join(v44, *(v37 - 1));
          si_querynode_add(v43, v45);
        }

        else
        {
          siquerynode_release(v40);
        }

        goto LABEL_71;
      }

      v50 = cloneQueryNode(v38, 0);
      v47 = si_querynode_join(v50, *(v37 - 1));
      v48 = *v37;
      if (*v37)
      {
        goto LABEL_68;
      }

LABEL_66:
      v49 = 0;
      goto LABEL_69;
    }
  }

LABEL_73:
  if (v34 < 1)
  {
LABEL_79:
    result = 0;
  }

  else
  {
    result = 0;
    v53 = v8;
    do
    {
      if (*v53)
      {
        *&v8[2 * result++] = *v53;
      }

      v53 += 2;
      --v34;
    }

    while (v34);
  }

  *a2 = v8;
  return result;
}

uint64_t calculateCost(uint64_t a1)
{
  v2 = *a1;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      *(a1 + 8) = calculateCost(*(a1 + 24));
    }

    else if (v2 == 3)
    {
      v9 = *(*(a1 + 24) + 16);
      if (v9)
      {
        LODWORD(v9) = *(v9 + 48);
      }

      *(a1 + 8) = v9;
    }
  }

  else
  {
    if (!v2)
    {
      *(a1 + 8) = 0;
      v3 = *(a1 + 24);
      if (v3 >= 1)
      {
        for (i = 0; i < v3; ++i)
        {
          *(a1 + 8) += calculateCost(*(*(a1 + 32) + 8 * i));
          v3 = *(a1 + 24);
        }
      }

      goto LABEL_22;
    }

    if (v2 == 1)
    {
      *(a1 + 8) = 0x7FFFFFFF;
      v3 = *(a1 + 24);
      if (v3 > 0)
      {
        v4 = 0;
        v5 = *(a1 + 32);
        do
        {
          v6 = calculateCost(v5[v4]);
          v5 = *(a1 + 32);
          if (*(a1 + 8) <= v6)
          {
            v7 = v5[v4];
          }

          else
          {
            *(a1 + 8) = v6;
            v7 = v5[v4];
            v8 = (*(v7 + 14) & 1) != 0 || *(v7 + 4) == 4;
            *(a1 + 14) = v8;
          }

          *(a1 + 15) |= *(v7 + 15);
          ++v4;
          v3 = *(a1 + 24);
        }

        while (v4 < v3);
        goto LABEL_23;
      }

LABEL_22:
      v5 = *(a1 + 32);
LABEL_23:
      qsort(v5, v3, 8uLL, compare_node_cost);
    }
  }

  return *(a1 + 8);
}

uint64_t rewriteForFSSearching(int *a1, uint64_t **a2, void **a3)
{
  v5 = a1[1];
  if ((v5 & 4) == 0 && *(a1 + 13) != 1)
  {
    goto LABEL_57;
  }

  if ((a1[3] & 1) == 0 && (*(a1 + 13) & 1) == 0)
  {
    if ((v5 & 4) != 0 && !*a1)
    {
LABEL_35:
      v25 = *(a1 + 3);
      v26 = 8 * v25;
      v27 = MEMORY[0x1E69E9AC8];
      if (((v25 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v26 > *MEMORY[0x1E69E9AC8])
      {
        ++sTotal_4940;
      }

      v28 = malloc_type_zone_calloc(queryZone, 1uLL, v26, 0x5BAF1CEAuLL);
      if (!v28)
      {
        _log_fault_for_malloc_failure();
      }

      v29 = *(a1 + 3);
      v30 = 8 * v29;
      if (((v29 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v30 > *v27)
      {
        ++sTotal_4940;
      }

      v31 = malloc_type_zone_calloc(queryZone, 1uLL, v30, 0x5BAF1CEAuLL);
      if (!v31)
      {
        _log_fault_for_malloc_failure();
      }

      v32 = malloc_size(v28);
      if (*(a1 + 3) < 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0;
        v33 = 0;
        v34 = v32 >> 3;
        do
        {
          v54 = 0;
          v55 = 0;
          v35 = rewriteForFSSearching(*(*(a1 + 4) + 8 * v33), &v55, &v54);
          if (v34 <= v35 + v24)
          {
            v36 = v34;
            do
            {
              v34 = 2 * v36;
              v37 = 16 * v36;
              v28 = malloc_type_realloc(v28, 16 * v36, 0x2004093837F09uLL);
              v31 = malloc_type_realloc(v31, v37, 0x2004093837F09uLL);
              v36 = v34;
            }

            while (v34 <= v35 + v24);
          }

          if (v35 >= 1)
          {
            v38 = 0;
            v24 = v24;
            do
            {
              *(v28 + v24) = *(v54 + v38);
              v39 = v55;
              if (v55)
              {
                v39 = *(v55 + v38);
              }

              *(v31 + v24++) = v39;
              ++v38;
            }

            while (v35 != v38);
          }

          free(v55);
          free(v54);
          ++v33;
        }

        while (v33 < *(a1 + 3));
      }

      *a2 = v31;
      *a3 = v28;
      return v24;
    }

LABEL_57:
    *a2 = 0;
    *a3 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
    **a3 = cloneQueryNode(a1, 0);
    return 1;
  }

  v6 = *a1;
  if (*a1 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a1 + 3);
        v8 = *(a1 + 4);
        v9 = *v8;
        if (v7 >= 2)
        {
          v10 = v7 - 1;
          v11 = v8 + 1;
          do
          {
            if ((*v11)[2] < v9[2] || *(*v11 + 13) == 1)
            {
              v9 = *v11;
            }

            ++v11;
            --v10;
          }

          while (v10);
        }

        v54 = 0;
        v55 = 0;
        v12 = rewriteForFSSearching(v9, &v55, &v54);
        v13 = v12;
        v14 = v55;
        if (!v55)
        {
          v15 = 8 * v12;
          if (((v12 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v15 > *MEMORY[0x1E69E9AC8])
          {
            ++sTotal_4940;
          }

          v14 = malloc_type_zone_calloc(queryZone, 1uLL, v15, 0x5BAF1CEAuLL);
          if (!v14)
          {
            _log_fault_for_malloc_failure();
          }
        }

        if (v13 >= 1)
        {
          v16 = v14;
          v17 = v13;
          do
          {
            Node = cloneQueryNode(a1, v9);
            if (v14)
            {
              v19 = Node;
              if (*v16)
              {
                if (*Node == 3)
                {
                  v19 = si_querynode_join(Node, *v16);
                }

                else
                {
                  v20 = malloc_type_realloc(*(Node + 4), (8 * *(Node + 3)) | 1, 0x2004093837F09uLL);
                  v19[4] = v20;
                  v21 = *v16;
                  v22 = v19[3];
                  v19[3] = v22 + 1;
                  v20[v22] = v21;
                }
              }

              *v16 = v19;
            }

            ++v16;
            --v17;
          }

          while (v17);
        }

        v23 = v54;
        *a2 = v14;
        *a3 = v23;
        return v13;
      }

LABEL_32:
      v24 = 0;
      MEMORY[0xBAD] = -559038737;
      return v24;
    }

    goto LABEL_35;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

  v54 = 0;
  v55 = 0;
  v40 = rewriteForFSSearching(*(a1 + 3), &v55, &v54);
  v24 = v40;
  v48 = v55;
  v50 = v54;
  if (v40 >= 1)
  {
    v41 = MEMORY[0x1E69E9AC8];
    v42 = v55;
    v43 = v54;
    v44 = v40;
    do
    {
      if (*v41 <= 0x27uLL)
      {
        ++sTotal_4940;
      }

      v45 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
      if (!v45)
      {
        _log_fault_for_malloc_failure();
      }

      *v45 = 2;
      v45[3] = *v43;
      *v43 = v45;
      if (*v41 <= 0x27uLL)
      {
        ++sTotal_4940;
      }

      v46 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
      if (!v46)
      {
        _log_fault_for_malloc_failure();
      }

      *v46 = 2;
      v46[3] = *v42;
      *v42++ = v46;
      ++v43;
      --v44;
    }

    while (v44);
  }

  *a3 = v50;
  *a2 = v48;
  return v24;
}

_OWORD *cloneQueryNode(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A2040E651BF2BuLL);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v6;
  *(v4 + 4) = v5;
  v7 = *v4;
  if (*v4 < 2u)
  {
    v10 = malloc_type_calloc(1uLL, 8 * *(a1 + 24), 0x2004093837F09uLL);
    *(v4 + 3) = 0;
    *(v4 + 4) = v10;
    v11 = *(a1 + 24);
    if (v11 >= 1)
    {
      v12 = 0;
      for (i = 0; i < v11; ++i)
      {
        v14 = *(*(a1 + 32) + 8 * i);
        if (v14 != a2)
        {
          *(*(v4 + 4) + 8 * *(v4 + 3)) = cloneQueryNode(v14, 0);
          v12 = *(v4 + 3) + 1;
          *(v4 + 3) = v12;
          v11 = *(a1 + 24);
        }
      }

      if (v12 == 1)
      {
        v15 = *(v4 + 4);
        v16 = *v15;
        free(v15);
        free(v4);
        v4 = v16;
      }
    }
  }

  else
  {
    if (v7 == 2)
    {
      Node = cloneQueryNode(*(a1 + 24), 0);
      goto LABEL_13;
    }

    if (v7 == 3)
    {
      v8 = *(a1 + 24);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __db_query_tree_apply_block_block_invoke;
      v18[3] = &unk_1E8198ED0;
      v18[4] = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v8, v18, &__block_literal_global_25_15416);
LABEL_13:
      *(v4 + 3) = Node;
    }
  }

  *(v4 + 15) = *(a1 + 15);
  return v4;
}

void siquerynode_release(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1 < 2)
    {
      if (*(a1 + 3) >= 1)
      {
        v3 = 0;
        do
        {
          siquerynode_release(*(*(a1 + 4) + 8 * v3++));
        }

        while (*(a1 + 3) > v3);
      }

      free(*(a1 + 4));
    }

    else if (v2 == 2)
    {
      siquerynode_release(*(a1 + 3));
    }

    else if (v2 == 3)
    {
      db_free_query_node(*(a1 + 3));
    }

    free(a1);
  }
}

void free_qp(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    if (*(a1 + 40) >= 1)
    {
      v3 = 0;
      do
      {
        free(*(*(a1 + 168) + 8 * v3++));
      }

      while (v3 < *(a1 + 40));
      v2 = *(a1 + 168);
    }

    free(v2);
    *(a1 + 168) = 0;
    v4 = *(a1 + 272);
    if (v4)
    {
      free(v4);
      *(a1 + 272) = 0;
    }
  }

  v5 = *(a1 + 296);
  if (v5)
  {
    free(v5);
    *(a1 + 296) = 0;
  }

  v6 = *(a1 + 288);
  if (v6)
  {
    free(v6);
    *(a1 + 288) = 0;
  }

  if (*a1)
  {
    free(*a1);
  }

  *a1 = 0;
  v7 = *(a1 + 136);
  if (v7)
  {
    free(v7);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v8 = *(a1 + 72);
  if (v8)
  {
    free(v8);
  }

  *(a1 + 72) = 0;
  v9 = *(a1 + 88);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 104);
  if ((*(a1 + 24) - 13) > 1)
  {
    icu_ctx_release();
LABEL_28:
    if (!*(a1 + 120))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = *(a1 + 40);
  if (v11 >= 1)
  {
    for (i = 0; i < v11; ++i)
    {
      if (*(*(a1 + 104) + 8 * i))
      {
        icu_ctx_release();
        v11 = *(a1 + 40);
      }
    }

    v10 = *(a1 + 104);
  }

  free(v10);
  if (*(a1 + 120))
  {
LABEL_32:
    v13 = *(a1 + 128);
    if (v13)
    {
      v13();
      *(a1 + 120) = 0;
    }
  }

LABEL_34:
  qp_string_id_cache_free(*(a1 + 112));

  free(a1);
}

uint64_t catSearchSupportsOneAttribute(int *a1, _BYTE *a2)
{
  v4 = *a1;
  if (!*a1)
  {
    if (*(a1 + 3) >= 1)
    {
      v10 = 0;
      do
      {
        catSearchSupportsOneAttribute(*(*(a1 + 4) + 8 * v10++), a2);
      }

      while (*(a1 + 3) > v10);
    }

    return 0;
  }

  if (v4 == 3)
  {
    v6 = *(*(a1 + 3) + 16);
    if (!v6)
    {
      return 0;
    }

    v7 = *(v6 + 32);
    if ((v7 & 0x800) == 0)
    {
      return 0;
    }

    v8 = *v6;
    result = strcmp(*v6, "kMDItemFSInvisible");
    if (result)
    {
      if (strcmp(v8, "kMDItemFSName"))
      {
        result = strcmp(v8, "_kMDItemFSContentType");
        if (result)
        {
          result = strcmp(v8, "_kMDItemFSContentTypeTree");
          if (result)
          {
            result = strcmp(v8, "_kMDItemFSDisplayKind");
            if (result)
            {
              return strcmp(v8, "_kMDItemFSGroupId") != 0;
            }
          }
        }

        return result;
      }

      v12 = *(v6 + 72);
      if (!v12 || *v12 != 46)
      {
        return 0;
      }

      result = 0;
      if ((v7 & 0x40) != 0)
      {
        return result;
      }

      v11 = *(v6 + 24);
      if (v11 != 1)
      {
        return result;
      }

      result = 0;
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    *a2 = v11;
    return result;
  }

  if (v4 != 1 || *(a1 + 3) < 1)
  {
    return 0;
  }

  v5 = 0;
  while (!catSearchSupportsOneAttribute(*(*(a1 + 4) + 8 * v5), a2) || *a2 == 1)
  {
    if (*(a1 + 3) <= ++v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t doExecuteCracked(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((_os_feature_enabled_impl() & 1) == 0 && a3 && CFArrayGetCount(a3) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(a3, 0), v17 = CFGetTypeID(ValueAtIndex), v17 == CFStringGetTypeID()) && (bzero(buffer, 0x400uLL), CFStringGetFileSystemRepresentation(ValueAtIndex, buffer, 1024)) && (v33[1] = 0x200000000, v33[2] = 0, v32 = 0, *buf = 0, v33[0] = 0x800000005, !getattrlist(buffer, v33, buf, 0xCuLL, 0x200u)))
  {
    LOBYTE(v22) = 0;
    v25 = *&buf[4] == 2 && v32 == 0;
    if (v25 || !a6)
    {
      return v22 & 1;
    }
  }

  else if (!a6)
  {
    LOBYTE(v22) = 0;
    return v22 & 1;
  }

  if (a6 < 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = (a5 + 16);
    v20 = 1;
    do
    {
      v21 = *v19;
      v19 += 2;
      if (*(*(a5 + 16 * v18) + 8) > *(v21 + 8))
      {
        v18 = v20;
      }

      ++v20;
    }

    while (a6 != v20);
  }

  v23 = 0x1EBF46000uLL;
  if (!*(a5 + 16 * v18))
  {
    v22 = 0;
    if (a6 < 2)
    {
      return v22 & 1;
    }

    goto LABEL_21;
  }

  *buffer = 0;
  v33[0] = 0;
  si_query_copy_grouping(a1, buffer, v33);
  if (dword_1EBF46AD0 >= 5)
  {
    log = *__error();
    v27 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "We do have a primary query", buf, 2u);
    }

    *__error() = log;
  }

  v22 = executeOneCracked(a1, *(a5 + 16 * v18), *(a5 + 16 * v18 + 8), a2, a3, a4, a7, a8, *buffer, v33[0]);
  v23 = 0x1EBF46000;
  if (a6 >= 2)
  {
LABEL_21:
    if (*(v23 + 2768) >= 5)
    {
      v30 = *__error();
      loga = _SILogForLogForCategory(1);
      if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
      {
        *buffer = 67109120;
        *&buffer[4] = 0;
        _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "We do have %d secondary queries", buffer, 8u);
      }

      *__error() = v30;
    }

    v24 = (a5 + 8);
    do
    {
      *buffer = 0;
      v33[0] = 0;
      if (v18)
      {
        si_query_copy_grouping(a1, buffer, v33);
        v22 |= executeOneCracked(a1, *(v24 - 1), *v24, a2, a3, a4, a7, a8, *buffer, v33[0]);
      }

      v24 += 2;
      --v18;
      --a6;
    }

    while (a6);
  }

  return v22 & 1;
}

uint64_t executeOneCracked(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  if (*(a8 + 96))
  {
    goto LABEL_5;
  }

  v10 = a8;
  do
  {
    v11 = v10;
    v10 = *(v10 + 80);
  }

  while (v10);
  if (*(*(v11 + 8) + 12))
  {
    goto LABEL_5;
  }

  v14 = *(a2 + 4);
  v15 = *(a1 + 576);
  if ((v14 & 4) == 0)
  {
    if (v14 == 2 && v15 != 0)
    {
LABEL_19:
      operator new();
    }

    if (*(a4 + 1192))
    {
      operator new();
    }
  }

  if (v15)
  {
    goto LABEL_19;
  }

  if ((v14 & 3) != 0 && *(a4 + 1192) && (*(a2 + 14) & 1) == 0 && (*(a2 + 15) & 1) == 0)
  {
    operator new();
  }

LABEL_5:
  if (a10 >= 1)
  {
    for (i = 0; i != a10; ++i)
    {
      v13 = a9[i];
      if (v13)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 0x40000000;
        v18[2] = __db_query_tree_apply_block_block_invoke;
        v18[3] = &unk_1E8198ED0;
        v18[4] = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v13, v18, 0);
      }
    }
  }

  free(a9);
  return 0;
}

uint64_t __free_tree_block_invoke(int a1, void *a2)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    v4 = *(a2 + 5);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v7 = v5++;
        v6 = *(a2 + 3);
        if (v4[v5] >= 1 && *(v6 + 8 * v7))
        {
          v8 = 0;
          do
          {
            v9 = *(*(a2 + 3) + 8 * v7);
            if (v9)
            {
              v10 = *(v9 + 8 * v8);
              if (v10)
              {
                if (atomic_fetch_add((v10 + 32), 0xFFFFFFFF) == 1)
                {
                  free(*v10);
                  free(v10);
                }

                *(*(*(a2 + 3) + 8 * v7) + 8 * v8) = 0;
                v4 = *(a2 + 5);
              }
            }

            ++v8;
          }

          while (v8 < v4[v5]);
          v6 = *(a2 + 3);
        }

        free(*(v6 + 8 * v7));
        *(*(a2 + 3) + 8 * v7) = 0;
        v4 = *(a2 + 5);
      }

      while (v5 < *v4);
      v3 = *(a2 + 3);
    }

    free(v3);
    free(*(a2 + 5));
    *(a2 + 3) = 0;
    *(a2 + 5) = 0;
  }

  v11 = *(a2 + 2);
  if (v11)
  {
    free_qp(v11);
  }

  free(a2);
  return 0;
}

void si_query_copy_grouping(uint64_t result, uint64_t *a2, size_t *a3)
{
  *a2 = 0;
  v5 = *(result + 248);
  v4 = *(result + 256);
  *a3 = v4;
  if (v5)
  {
    if (((v4 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && 8 * v4 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_9528;
    }

    v8 = malloc_type_zone_calloc(queryZone, v4, 8uLL, 0x5BAF1CEAuLL);
    if (!v8)
    {
      _log_fault_for_malloc_failure();
    }

    *a2 = v8;
    if (*(result + 256) >= 1)
    {
      v9 = 0;
      v10 = MEMORY[0x1E69E9820];
      do
      {
        v11 = *(*(result + 248) + 8 * v9);
        v13[0] = v10;
        v13[1] = 0x40000000;
        v13[2] = __db_query_tree_apply_block_block_invoke;
        v13[3] = &unk_1E8198ED0;
        v13[4] = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v11, v13, &__block_literal_global_25_15416);
        *(*a2 + 8 * v9++) = v12;
      }

      while (v9 < *(result + 256));
    }
  }
}

void db_free_query_node(void *result)
{
  if (result)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 0x40000000;
    v1[2] = __db_query_tree_apply_block_block_invoke;
    v1[3] = &unk_1E8198ED0;
    v1[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(result, v1, 0);
  }
}

void si_querypipe_release(uint64_t a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      si_querypipe_release(v3);
    }

    else
    {
      SIResultQueueRelease(*(a1 + 8));
      CFRelease(*(a1 + 40));
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      dispatch_semaphore_signal(v5);
      dispatch_release(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      si_release_qid(v6);
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      CFRelease(v7);
    }

    free(a1);
  }
}

void *___queryGoCracked_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  return result;
}

int *siquery_addactivetime(uint64_t a1, double a2)
{
  v15 = *MEMORY[0x1E69E9840];
  *(a1 + 456) = *(a1 + 456) + a2;
  v4 = *__error();
  v5 = _SILogForLogForCategory(1);
  v6 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(a1 + 456);
    v9 = 134218496;
    v10 = a2;
    v11 = 2048;
    v12 = v7;
    v13 = 1024;
    v14 = qos_class_self();
    _os_log_impl(&dword_1C278D000, v5, v6, "siquery_addactivetime %g seconds to %g seconds 0x%x\n", &v9, 0x1Cu);
  }

  result = __error();
  *result = v4;
  return result;
}

uint64_t __si_setup_run_stubquery_block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 >= 2)
  {
    v5 = *(a2 + 48);
    if ((v5 & 0xFFFFFFF7) == 1)
    {
      v6 = (a3 | a4) == 0;
    }

    else
    {
      if ((v5 & 0xFFFFFFF7) != 2)
      {
        return 1;
      }

      if (a3)
      {
        v6 = a4 == 0;
      }

      else
      {
        v6 = 1;
      }
    }

    v7 = !v6;
    return v7 ^ ((v5 & 8) >> 3);
  }

  return result;
}

void *__queryRemapFieldsForStore_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 48) != 4)
  {
    return v2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = *v3;
  if (!*v3)
  {
    return v2;
  }

  v5 = *(v3 + 72);
  if (!v5 || (*(v3 + 24) | 4) != 5 || strncmp(*v3, "_kMDItemQueryPath", 0x11uLL))
  {
    return v2;
  }

  v7 = v4 + 17;
  if (v4[17])
  {
    if (v4[17] == 79 && v4[18] == 73 && v4[19] == 68)
    {
      v7 = v4 + 20;
    }

    strncmp(v7, "Flat", 4uLL);
  }

  __endptr = 0;
  if (!strcmp(v5, "kMDQueryConstantOrphanOID"))
  {
    v10 = *(a1 + 32);
    if (v10 && *(v10 + 2072) == 1)
    {
      atomic_load((v10 + 2080));
    }

    v9 = (v5 + 25);
LABEL_20:
    if (!*v9)
    {
      PathNodeForOid = createPathNodeForOid(v8);
      if (!PathNodeForOid)
      {
        return v2;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  strtoll(v5, &__endptr, 0);
  v9 = __endptr;
  if (__endptr != v5)
  {
    goto LABEL_20;
  }

LABEL_21:
  PathNodeForOid = createPathNodeForPath(v8);
  if (PathNodeForOid)
  {
LABEL_22:
    v12 = PathNodeForOid;
    db_free_query_node(v2);
    return v12;
  }

  return v2;
}

uint64_t __queryRemapFieldsForStore_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) == 4)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      if (sSIQueryCSFieldNameCallback)
      {
        v4 = sSIQueryCSFieldNameCallback(*v3);
        if (v4)
        {
          memset(v8, 0, sizeof(v8));
          if (CFStringGetCString(v4, v8, 256, 0x8000100u))
          {
            v5 = strdup(v8);
            if (v5)
            {
              v6 = v5;
              free(*v3);
              *v3 = v6;
            }
          }
        }
      }
    }
  }

  return a2;
}

void si_querypipe_remove_process(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL4 a4)
{
  v4 = a3;
  v6 = a1;
  v97 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit((a1 + 64), 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit == 1 || add_explicit == 2 && *(a1 + 100) == 1)
  {
    if ((*(a2 + 201) & 0x20) != 0)
    {
      v10 = *MEMORY[0x1E695E480];
      v77 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, (a2 + 416));
      v76 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 400));
      v75 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 392));
      v74 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 408));
      v73 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 552));
      v72 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 536));
      v71 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 528));
      v70 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 544));
      v69 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 368));
      valuePtr = CFAbsoluteTimeGetCurrent();
      v68 = CFNumberCreate(v10, kCFNumberDoubleType, &valuePtr);
      v67 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 376));
      v66 = CFNumberCreate(v10, kCFNumberLongType, (a2 + 464));
      v65 = CFNumberCreate(v10, kCFNumberLongType, (a2 + 472));
      v64 = CFNumberCreate(v10, kCFNumberLongType, (a2 + 480));
      v63 = CFNumberCreate(v10, kCFNumberLongType, (a2 + 488));
      v62 = CFNumberCreate(v10, kCFNumberLongType, (a2 + 496));
      v61 = CFNumberCreate(v10, kCFNumberLongType, (a2 + 504));
      v60 = CFNumberCreate(v10, kCFNumberLongType, (a2 + 512));
      v59 = CFNumberCreate(v10, kCFNumberLongType, (a2 + 520));
      v58 = CFNumberCreate(v10, kCFNumberLongLongType, (a2 + 608));
      v57 = CFNumberCreate(v10, kCFNumberLongType, (a2 + 152));
      v56 = CFNumberCreate(v10, kCFNumberIntType, (a2 + 156));
      v80 = qos_class_self();
      v55 = CFNumberCreate(v10, kCFNumberLongType, &v80);
      v54 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 448));
      v53 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 456));
      v52 = CFNumberCreate(v10, kCFNumberDoubleType, (a2 + 384));
      v11 = *(a2 + 656);
      v12 = v80;
      v13 = *(a2 + 152);
      v14 = *(a2 + 156);
      v15 = valuePtr - *(a2 + 368);
      v16 = *(a2 + 392);
      v17 = valuePtr - *(a2 + 384);
      v18 = *(a2 + 448);
      v19 = *(a2 + 456);
      v20 = *(a2 + 408);
      v21 = *(a2 + 416);
      v22 = *(a2 + 400);
      value = *(a2 + 504);
      v45 = *(a2 + 496);
      v46 = *(a2 + 512);
      v47 = *(a2 + 480);
      v48 = *(a2 + 488);
      v49 = *(a2 + 464);
      v50 = *(a2 + 472);
      v51 = *(a2 + 520);
      empty = xpc_dictionary_create_empty();
      if (v11)
      {
        CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
        if (CStringPtr)
        {
          xpc_dictionary_set_string(empty, "client", CStringPtr);
        }

        else
        {
          Length = CFStringGetLength(v11);
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          v27 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
          if (v27)
          {
            v28 = v27;
            if (CFStringGetCString(v11, v27, MaximumSizeForEncoding + 1, 0x8000100u))
            {
              xpc_dictionary_set_string(empty, "client", v28);
            }

            free(v28);
          }
        }
      }

      xpc_dictionary_set_uint64(empty, "kind", v13);
      xpc_dictionary_set_uint64(empty, "qosLevel", v12);
      xpc_dictionary_set_uint64(empty, "protectionClass", v14);
      xpc_dictionary_set_double(empty, "totalTime", v15);
      xpc_dictionary_set_double(empty, "totalExecutionTime", v17);
      xpc_dictionary_set_double(empty, "activeTime", v19);
      xpc_dictionary_set_double(empty, "waitTime", v18);
      xpc_dictionary_set_double(empty, "setupTime", v16);
      xpc_dictionary_set_double(empty, "attributeTime", v21);
      xpc_dictionary_set_double(empty, "termTime", v22);
      xpc_dictionary_set_double(empty, "postTime", v20);
      xpc_dictionary_set_uint64(empty, "matchesCollected", value);
      xpc_dictionary_set_uint64(empty, "matchesDiscarded", v45);
      xpc_dictionary_set_uint64(empty, "matchesChecked", v46);
      xpc_dictionary_set_uint64(empty, "sdbIteratorCount", v47);
      xpc_dictionary_set_uint64(empty, "sdbObjectCount", v48);
      xpc_dictionary_set_uint64(empty, "sdbPageCount", v49);
      xpc_dictionary_set_uint64(empty, "sdbCacheHits", v50);
      xpc_dictionary_set_uint64(empty, "plistObjects", v51);
      xpc_dictionary_set_BOOL(empty, "canceled", a4);
      analytics_send_event();
      xpc_release(empty);
      v93 = xmmword_1E8196258;
      v94 = *&off_1E8196268;
      v95 = xmmword_1E8196278;
      v96 = @"kSICanceled";
      v89 = xmmword_1E8196218;
      v90 = *&off_1E8196228;
      v91 = xmmword_1E8196238;
      v92 = *&off_1E8196248;
      v85 = xmmword_1E81961D8;
      v86 = *&off_1E81961E8;
      v87 = xmmword_1E81961F8;
      v88 = *&off_1E8196208;
      *keys = xmmword_1E81961B8;
      v84 = *&off_1E81961C8;
      values[0] = v75;
      values[1] = v76;
      values[2] = v74;
      values[3] = v77;
      values[4] = v71;
      values[5] = v72;
      values[6] = v70;
      values[7] = v58;
      values[8] = v57;
      values[9] = v56;
      values[10] = v73;
      values[11] = v69;
      values[12] = v68;
      values[13] = v67;
      values[14] = v66;
      values[15] = v64;
      values[16] = v63;
      values[17] = v65;
      values[18] = v55;
      values[19] = v54;
      values[20] = v53;
      values[21] = v61;
      values[22] = v60;
      values[23] = v62;
      values[24] = v59;
      values[25] = v52;
      v29 = MEMORY[0x1E695E4D0];
      if (!a4)
      {
        v29 = MEMORY[0x1E695E4C0];
      }

      values[26] = *v29;
      v8 = CFDictionaryCreate(v10, keys, values, 27, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      for (i = 0; i != 27; ++i)
      {
        CFRelease(values[i]);
      }

      v4 = a3;
    }

    else
    {
      v8 = 0;
    }

    if (*(v6 + 80))
    {
      if (v4)
      {
        v31 = v6;
        do
        {
          v32 = v31;
          v31 = *(v31 + 80);
        }

        while (v31);
        if (!si_resultqueue_enqueue(*(v32 + 8), v4))
        {
          SIResultBatchFree(v4);
        }
      }

      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_47;
    }

    *keys = *(v6 + 48);
    v33 = *(v6 + 8);
    v34 = malloc_type_calloc(1uLL, 0x40uLL, 0x10720403C4CCC75uLL);
    v35 = *__error();
    v36 = _SILogForLogForCategory(1);
    v37 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v36, v37))
    {
      LOWORD(values[0]) = 0;
      _os_log_impl(&dword_1C278D000, v36, v37, "Passing up out of results", values, 2u);
    }

    *__error() = v35;
    v34[1] = *keys;
    v38 = 4;
    if (add_explicit == 2)
    {
      if (*(v6 + 100))
      {
        v38 = 5;
      }

      else
      {
        v38 = 4;
      }
    }

    *v34 = v38;
    *(v34 + 1) = si_querypipe_copy_jobid(v6);
    *(v34 + 5) = v8;
    if (v4)
    {
      v39 = countForBatch(v4);
      v40 = countForBatch(v34);
      pthread_mutex_lock((*v33 + 8));
      if ((*(v33 + 12) & 1) == 0)
      {
        v33[9] += v40 + v39;
        si_enqueue_locked(*v33, v4);
        si_enqueue_locked(*v33, v34);
        v41 = v33[6];
        if (v41 && !*(v33 + 21))
        {
          v42 = v33[7];
          v33[6] = 0;
          v33[7] = 0;
          pthread_mutex_unlock((*v33 + 8));
          v41(v42, 0);
        }

        else
        {
          pthread_mutex_unlock((*v33 + 8));
        }

LABEL_47:
        v43 = *(v6 + 16);
        if (v43)
        {
          dispatch_semaphore_signal(v43);
          dispatch_release(*(v6 + 16));
          *(v6 + 16) = 0;
          if (atomic_fetch_add(&gActiveQueries, 0xFFFFFFFFFFFFFFFFLL) == 1 && gMemoryPressureCritical == 1)
          {
            si_flushCaches(2);
          }
        }

        *(v6 + 97) = 1;
        return;
      }

      pthread_mutex_unlock((*v33 + 8));
      SIResultBatchFree(v34);
      v34 = v4;
    }

    else if (si_resultqueue_enqueue(v33, v34))
    {
      goto LABEL_47;
    }

    SIResultBatchFree(v34);
    goto LABEL_47;
  }

  if (a3)
  {
    do
    {
      v9 = v6;
      v6 = *(v6 + 80);
    }

    while (v6);
    if (!si_resultqueue_enqueue(*(v9 + 8), a3))
    {

      SIResultBatchFree(v4);
    }
  }
}

uint64_t __si_setup_run_stubquery_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) & 0xFFF7) != 4)
  {
    return 1;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ((*v4 != 42 || v4[1]) && (*(v3 + 33) & 0x2C0C) == 0)
      {
        v5 = db_copy_field_ids_with_buffer(*(**(a1 + 32) + 1192), v4, 0, 0);
        if (v5)
        {
          free(v5);
        }

        else if ((*(a2 + 48) & 8) == 0)
        {
          v7 = *(a2 + 16);
          if ((*(v7 + 24) - 5) >= 2)
          {
            if (strncmp(*v7, "_kMDItemQuery", 0xDuLL))
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t *__queryRemapFieldsForStore_block_invoke_4(int a1, uint64_t *a2, void *a3, void *a4)
{
  v5 = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else
  {
    if (a3)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a3, &v7, 0);
    }

    if (a4)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a4, &v7, 0);
    }

    free(v5);
    return 0;
  }

  return v5;
}

char *si_fileProvidersPsid_oid_to_path(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, const __CFString *a5, const __CFString *a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a5 || a2 != 2 || a7)
  {
    v15 = *(a1 + 16);
    v27 = -1;
    if (!a5)
    {
      goto LABEL_26;
    }

    if (!a7)
    {
      goto LABEL_26;
    }

    v16 = (*(copyFPItemAllParentsBlock + 16))(copyFPItemAllParentsBlock, a5, a6, a7, a8);
    if (!v16)
    {
      goto LABEL_26;
    }

    v17 = v16;
    Count = CFArrayGetCount(v16);
    if (!Count)
    {
      goto LABEL_26;
    }

    v19 = Count;
    if (Count < 1)
    {
      a3 = 0;
    }

    else
    {
      v20 = 0;
      a3 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
        si_get_object_for_identifier_createParentDBO(*v15, a5, ValueAtIndex, a6, 1, &v27, 0, 1);
        *__str = 0;
        v29 = 0;
        v30 = 0;
        snprintf(__str, 0x14uLL, "%lld", v27);
        __str[strlen(__str)] = 0;
        if (a3)
        {
          v22 = strlen(a3);
          v23 = strlen(__str);
          v26 = &v26;
          MEMORY[0x1EEE9AC00](v24);
          bzero(&v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
          strcpy(&v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
          free(a3);
          a3 = malloc_type_malloc(v22 + v23 + 1, 0x100004077774924uLL);
          strcpy(a3, &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
        }

        else
        {
          v23 = strlen(__str);
          a3 = malloc_type_malloc(v23 + 1, 0x100004077774924uLL);
          v22 = 0;
        }

        strcat(a3, __str);
        a3[v22 + v23] = 0;
        ++v20;
      }

      while (v19 != v20);
    }

    if (!*a3)
    {
      goto LABEL_26;
    }

    a3[strlen(a3)] = 0;
    return a3;
  }

  v11 = CFCopyHomeDirectoryURLForUser();
  if (!v11)
  {
LABEL_26:
    a3 = 0;
    *__error() = 2;
    return a3;
  }

  v12 = v11;
  v13 = CFURLCopyFileSystemPath(v11, kCFURLPOSIXPathStyle);
  if (!v13)
  {
    CFRelease(v12);
    goto LABEL_26;
  }

  v14 = v13;
  if (CFStringGetCString(v13, a3, 1024, 0x8000100u))
  {
    strcat(a3, "/Library/CloudStorage/iCloud Drive");
  }

  else
  {
    a3 = 0;
  }

  CFRelease(v14);
  CFRelease(v12);
  if (!a3)
  {
    goto LABEL_26;
  }

  return a3;
}

void processScopeTerms(uint64_t result, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v5 = *(result + 1416);
  if (v5)
  {
    v6 = *(result + 2072);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __processScopeTerms_block_invoke;
    v7[3] = &__block_descriptor_tmp_648;
    v9 = v6;
    v7[4] = a5;
    v7[5] = a2;
    v8 = a3;
    v7[6] = v5;
    v7[7] = result;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __db_query_tree_apply_block_block_invoke;
    v10[3] = &unk_1E8198ED0;
    v10[4] = v7;
    db_query_tree_apply_block_with_meta(a4, v10, 0);
  }
}

uint64_t __processScopeTerms_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (*(v3 + 33) & 4) == 0 && !strcmp(*v3, *(a1 + 32)))
  {
    if ((*(a1 + 68) & 1) == 0)
    {
      v5 = *(v3 + 72);
      if (v5)
      {
        if (*(a1 + 40))
        {
          v6 = strlen(*(v3 + 72));
          if (v6 >= 1)
          {
            if (v6 != 1)
            {
              v7 = &v5[v6];
              if (v5[v6 - 1] == 42 && *(v7 - 2) == 47)
              {
                *(v7 - 1) = 0;
                v3 = *(a2 + 16);
                v5 = *(v3 + 72);
              }
            }

            v8 = *v5;
            v9 = v8 == 42 ? v5 + 1 : v5;
            if (*v9 == 47)
            {
              if (v8 == 42)
              {
                v10 = *(a1 + 40);
                v22[0] = 0;
                asprintf(v22, "%s/%s", v10, v5 + 1);
                v11 = v22[0];
              }

              else
              {
                v11 = strdup(v5);
              }

              remove_escaped_chars(v11);
              v12 = strlen(*(a1 + 40));
              if (!strncmp(*(a1 + 40), v11, v12))
              {
                if (SIPersistentIDStoreVetPath(*(a1 + 48), v11, *(a1 + 64)))
                {
                  v14 = addNodeForCPath(v13);
                  if (v14)
                  {
                    v15 = *(a2 + 48);
                    v24 = *(a2 + 32);
                    v25 = v15;
                    v26 = *(a2 + 64);
                    v16 = *(a2 + 16);
                    *v22 = *a2;
                    v23 = v16;
                    *a2 = *v14;
                    v17 = *(v14 + 4);
                    v19 = *(v14 + 1);
                    v18 = *(v14 + 2);
                    *(a2 + 48) = *(v14 + 3);
                    *(a2 + 64) = v17;
                    *(a2 + 16) = v19;
                    *(a2 + 32) = v18;
                    *v14 = *v22;
                    *(v14 + 4) = v26;
                    *(v14 + 3) = v25;
                    *(v14 + 2) = v24;
                    *(v14 + 1) = v23;
                    db_free_query_node(v14);
                    free(v11);
                    return a2;
                  }
                }
              }

              free(v11);
              v3 = *(a2 + 16);
            }
          }
        }
      }
    }

    if (*(v3 + 24) == 5)
    {
      v20 = 32;
    }

    else
    {
      v20 = 16;
    }

    free_qp(v3);
    *(a2 + 16) = 0;
    *(a2 + 48) = v20;
  }

  return a2;
}

const void *si_opt_cache_init(CFMutableSetRef *a1, uint64_t a2)
{
  a1[2] = 0;
  v4 = *MEMORY[0x1E695E480];
  *a1 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &kCStringSetCallBacks);
  a1[1] = CFSetCreateMutable(v4, 0, &kCStringSetCallBacks);
  if (a2 && (v5 = *(a2 + 112)) != 0)
  {
    result = CFArrayGetCount(v5);
    if (result)
    {
      result = CFArrayGetValueAtIndex(v5, 0);
      if (result)
      {
        result = CFRetain(result);
      }
    }
  }

  else
  {
    result = 0;
  }

  a1[4] = result;
  return result;
}

void si_query_prepare_lifting(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a2 + 288) && (*(a2 + 296) & 1) == 0)
  {
    *(a2 + 296) = 1;
    bzero(v34, 0x400uLL);
    v5 = *(a1 + 1416);
    if (v5 && !*(v5 + 240))
    {
      v20 = (*(v5 + 40))(v5, 2, v34, 0, 0, 0, 0, -1);
    }

    else
    {
      v20 = 0;
    }

    if (dword_1EBF46AD0 >= 5)
    {
      v18 = *__error();
      v19 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "Preparing lifting rules", buf, 2u);
      }

      *__error() = v18;
    }

    v6 = *(a2 + 288);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = *(a2 + 264);
      do
      {
        v9 = (v8 + 24 * v7);
        if (v9[1] >= 1)
        {
          v10 = 0;
          do
          {
            processScopeTerms(a1, v20, *(a1 + 1992), *(*v9 + 8 * v10), "_kMDQueryItemInScopeForRankingOnly");
            translateSDBQuery(*(*(*(a2 + 264) + 24 * v7) + 8 * v10));
            v12 = v11;
            v13 = compileToIndexQuery(v11, *(a2 + 360));
            siquerynode_release(v12);
            db_free_query_node(*(*(*(a2 + 264) + 24 * v7) + 8 * v10));
            v14 = optimizeLiftingQuery(a1, v13, a3);
            v15 = v14;
            if (*(v14 + 48) == 16 || (v29 = 0, v30 = &v29, v31 = 0x2000000000, v32 = 0, v16 = (*(a1 + 6584) >> 25) & 3, *buf = MEMORY[0x1E69E9820], v23 = 0x40000000, v24 = __queryIsUnpalatable_block_invoke, v25 = &unk_1E8196540, v26 = &v29, v27 = a1, v28 = v16, v33[0] = MEMORY[0x1E69E9820], v33[1] = 0x40000000, v33[2] = __db_query_tree_apply_block_block_invoke, v33[3] = &unk_1E8198ED0, v33[4] = buf, db_query_tree_apply_block_with_meta(v14, v33, 0), v17 = *(v30 + 24), _Block_object_dispose(&v29, 8), (v17 & 1) != 0))
            {
              *(*(*(a2 + 264) + 24 * v7) + 8 * v10) = 0;
              *buf = MEMORY[0x1E69E9820];
              v23 = 0x40000000;
              v24 = __db_query_tree_apply_block_block_invoke;
              v25 = &unk_1E8198ED0;
              v26 = &__block_literal_global_174;
              db_query_tree_apply_block_with_meta(v15, buf, 0);
            }

            else
            {
              *(*(*(a2 + 264) + 24 * v7) + 8 * v10) = v15;
            }

            ++v10;
            v8 = *(a2 + 264);
            v9 = (v8 + 24 * v7);
          }

          while (v9[1] > v10);
          v6 = *(a2 + 288);
        }

        ++v7;
      }

      while (v7 < v6);
    }
  }
}

void si_opt_cache_destroy(uint64_t a1)
{
  if (*(a1 + 16))
  {
    SILocalizationRelease();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 8) = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 32) = 0;
}

uint64_t db_count_query_tree(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_count_query_tree_block_invoke;
  v3[3] = &unk_1E8199040;
  v3[4] = &v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __db_query_tree_apply_block_block_invoke;
  v8[3] = &unk_1E8198ED0;
  v8[4] = v3;
  db_query_tree_apply_block_with_meta(a1, v8, 0);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t db_get_object_count(int *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 136315650;
      v14 = "db_get_object_count";
      v15 = 1024;
      v16 = 242;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v7;
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 242, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (db_read_lock((a1 + 146)))
  {
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15163);
  }

  v2 = *(a1 + 5);
  v3 = *(*(a1 + 124) + 40);
  v4 = pthread_mutex_lock((a1 + 146));
  v5 = a1[195] - 1;
  a1[195] = v5;
  if (!v5)
  {
    db_rwlock_wakeup((a1 + 146), 0, 0);
  }

  pthread_mutex_unlock((a1 + 146));
  if (v4)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15165);
  }

  return v3 + v2;
}

uint64_t RLEOIDArrayCreateMutable(uint64_t a1)
{
  if (!__kRLEOIDArrayTypeID)
  {
    __kRLEOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 216) = 0;
  *(Instance + 224) = 0;
  *(Instance + 240) = 0;
  *(Instance + 248) = a1;
  v3 = MEMORY[0x1C691E420](a1, 8072, 0xA00408091C53FLL, 0);
  bzero(v3, 0x1F88uLL);
  *(Instance + 232) = v3;
  *(Instance + 256) = 0u;
  *(Instance + 272) = 0u;
  *(Instance + 288) = 0u;
  *(Instance + 304) = 0u;
  *(Instance + 320) = 0u;
  *(Instance + 336) = 0u;
  *(Instance + 352) = 0u;
  *(Instance + 368) = 0u;
  *(Instance + 384) = 1;
  return Instance;
}

uint64_t __expandFunctions_block_invoke(int a1, char *__str, size_t __size, double a4)
{
  if (trunc(a4) == a4)
  {
    return snprintf(__str, __size, "%lld");
  }

  else
  {
    return snprintf(__str, __size, "%f");
  }
}

BOOL SIQueryAddResultFilter(uint64_t a1, const void *a2, __n128 a3)
{
  v21 = *MEMORY[0x1E69E9840];
  a3.n128_u64[0] = *(a1 + 360);
  queryFromCFString(a3);
  v6 = v5;
  if (dword_1EBF46AD0 >= 5)
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 8);
      *buf = 138412546;
      *&buf[4] = a2;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "Adding filter %@ to query %@", buf, 0x16u);
    }

    *__error() = v16;
  }

  v7 = v6 != 0;
  if (v6)
  {
    if (*(a1 + 672) == 1)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&buf[24] = &unk_1E8198ED0;
      v20 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v6, buf, &__block_literal_global_25_15416);
      *buf = v8;
      if (v8)
      {
        decorateExpandingFunctions(v8, *a1, *(a1 + 656), *(a1 + 360));
        db_optimize_query_tree(buf);
        Mutable = *(a1 + 728);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
          *(a1 + 728) = Mutable;
        }

        CFArrayAppendValue(Mutable, a2);
        Count = CFArrayGetCount(*(a1 + 728));
        v11 = malloc_type_realloc(*(a1 + 736), 8 * Count, 0x80040B8603338uLL);
        *(a1 + 736) = v11;
        v11[Count - 1] = *buf;
      }
    }

    v12 = *(a1 + 80);
    if (v12)
    {
      v6 = makeAndNode(v12, v6, 1, 1);
    }

    *(a1 + 80) = v6;
  }

  else
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "SIQueryAddResultFilter";
      *&buf[12] = 1024;
      *&buf[14] = 1014;
      *&buf[18] = 2112;
      *&buf[20] = a2;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Failed adding filter: %@", buf, 0x1Cu);
    }

    *__error() = v13;
  }

  return v7;
}

void *makeAndNode(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = *(a1 + 48);
  if (v8 == 32)
  {
    if (a3)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 0x40000000;
      v18 = __db_query_tree_apply_block_block_invoke;
      v19 = &unk_1E8198ED0;
      v20 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a1, &v16, 0);
    }

    if (v4)
    {
      return v6;
    }

    goto LABEL_20;
  }

  v10 = *(a2 + 48);
  if (v10 == 32)
  {
    if (a4)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 0x40000000;
      v18 = __db_query_tree_apply_block_block_invoke;
      v19 = &unk_1E8198ED0;
      v20 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a2, &v16, 0);
    }

    if (v5)
    {
      return v7;
    }

LABEL_15:
    v16 = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = &__block_literal_global_21_15415;
    v11 = v7;
LABEL_21:
    db_query_tree_apply_block_with_meta(v11, &v16, &__block_literal_global_25_15416);
    return v12;
  }

  if (v8 == 16)
  {
    if (a4)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 0x40000000;
      v18 = __db_query_tree_apply_block_block_invoke;
      v19 = &unk_1E8198ED0;
      v20 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a2, &v16, 0);
    }

    if (v5)
    {
      return v7;
    }

    goto LABEL_15;
  }

  if (v10 == 16)
  {
    if (a3)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 0x40000000;
      v18 = __db_query_tree_apply_block_block_invoke;
      v19 = &unk_1E8198ED0;
      v20 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a1, &v16, 0);
    }

    if (v4)
    {
      return v6;
    }

LABEL_20:
    v16 = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = &__block_literal_global_21_15415;
    v11 = v6;
    goto LABEL_21;
  }

  v9 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F2040772A17BAuLL);
  if ((v5 & 1) == 0)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v7, &v16, &__block_literal_global_25_15416);
    v7 = v14;
  }

  *v9 = v7;
  if ((v4 & 1) == 0)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = __db_query_tree_apply_block_block_invoke;
    v19 = &unk_1E8198ED0;
    v20 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v6, &v16, &__block_literal_global_25_15416);
    v6 = v15;
  }

  v9[1] = v6;
  *(v9 + 24) = 2;
  return v9;
}

void si_routine_suggestions(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void userinitiated_query_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void si_querypipe_set_semaphore(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    v6 = *(a1 + 16);
    v5 = (a1 + 16);
    v4 = v6;
    if (!v6)
    {
      atomic_fetch_add(&gActiveQueries, 1uLL);
      goto LABEL_9;
    }
  }

  else
  {
    v5 = (a1 + 16);
    v4 = *(a1 + 16);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  dispatch_semaphore_signal(v4);
  dispatch_release(*v5);
  *v5 = 0;
  if (!object && atomic_fetch_add(&gActiveQueries, 0xFFFFFFFFFFFFFFFFLL) == 1 && gMemoryPressureCritical == 1)
  {
    si_flushCaches(2);
  }

LABEL_9:
  *v5 = object;
}

void _queryGoCracked(uint64_t a1, uint64_t a2, CFArrayRef cf, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46AD0 >= 5)
  {
    v35 = *__error();
    v36 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1 + 608);
      v38 = *(a1 + 616);
      v39 = (*(a2 + 60) & 0xFFFFFFFD) == 1;
      Length = *(a1 + 32);
      if (Length)
      {
        Length = CFStringGetLength(Length);
      }

      *block = 134218752;
      *&block[4] = v37;
      *&block[12] = 2048;
      *&block[14] = v38;
      *&block[22] = 1024;
      *&block[24] = v39;
      *&block[28] = 2048;
      *&block[30] = Length;
      _os_log_impl(&dword_1C278D000, v36, OS_LOG_TYPE_DEFAULT, "Start execution: qid=(%lld,%lld), pc=%d, uql=%ld", block, 0x26u);
    }

    *__error() = v35;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else if (a1)
  {
LABEL_3:
    *(a1 + 384) = CFAbsoluteTimeGetCurrent();
  }

  if (*(a4 + 96))
  {
    return;
  }

  v7 = a4;
  do
  {
    v8 = v7;
    v7 = *(v7 + 80);
  }

  while (v7);
  if (*(*(v8 + 8) + 12) & 1) != 0 || (*(a4 + 97))
  {
    return;
  }

  if (cf || (cf = *(a1 + 176)) != 0 || (cf = *(a1 + 184)) != 0)
  {
    CFRetain(cf);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  if ((*(a1 + 696) & 1) == 0)
  {
    memset(block, 0, 40);
    si_opt_cache_init(block, *(a4 + 88));
    si_query_prepare_lifting(a2, a1, block);
    si_opt_cache_destroy(block);
  }

  if ((*(a1 + 201) & 2) != 0)
  {
    if ((v9 & 1) == 0)
    {
      if (CFArrayGetCount(cf))
      {
        goto LABEL_28;
      }

      CFRelease(cf);
    }

    bzero(block, 0x400uLL);
    v10 = *(a2 + 48);
    if (v10 == -1)
    {
      v13 = "/";
    }

    else
    {
      v11 = fcntl(v10, 50, block);
      if (block[0])
      {
        v12 = v11 < 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = block;
      }
    }

    v14 = *MEMORY[0x1E695E480];
    values[0] = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x1E695E480], v13);
    cf = CFArrayCreate(v14, values, 1, MEMORY[0x1E695E9C0]);
    CFRelease(values[0]);
  }

LABEL_28:
  v15 = *(a1 + 200);
  if ((v15 & 0x1000000) == 0 && (*(a2 + 828) & 0x28) != 0)
  {
    *(a1 + 200) = v15 | 0x1000000;
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    if (!cf)
    {
      goto LABEL_35;
    }

    if (CFArrayGetCount(cf))
    {
      v16 = *(a1 + 72);
LABEL_35:
      values[0] = 0;
      values[1] = values;
      values[2] = 0x2000000000;
      v49 = 0;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 0x40000000;
      v47[2] = ___queryGoCracked_block_invoke;
      v47[3] = &unk_1E8196688;
      v47[4] = values;
      v47[5] = a2;
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 0x40000000;
      *&block[16] = __db_query_tree_apply_block_block_invoke;
      *&block[24] = &unk_1E8198ED0;
      *&block[32] = v47;
      db_query_tree_apply_block_with_meta(v16, block, &__block_literal_global_451);
      *(a1 + 72) = v17;
      v18 = *(a1 + 144);
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 0x40000000;
      *&block[16] = __query_once_block_invoke;
      *&block[24] = &__block_descriptor_tmp_518;
      *&block[32] = a1;
      if (v18 != -1)
      {
        dispatch_once((a1 + 144), block);
      }

      v19 = *(a1 + 200);
      if (*(a1 + 152) == 1 && (v19 & 0x80) != 0)
      {
        if ((_getByGroupGroupingQueries_initialized & 1) == 0)
        {
          for (i = 0; i != 17; ++i)
          {
            if (!grouping_queryByGroupNodes[i])
            {
              query_node_with_ann = db_make_query_node_with_ann(grouping_queryByGroupStrings[i], 0);
              v22 = 0;
              atomic_compare_exchange_strong_explicit(&grouping_queryByGroupNodes[i], &v22, query_node_with_ann, memory_order_relaxed, memory_order_relaxed);
              if (v22)
              {
                db_free_query_node(query_node_with_ann);
              }
            }
          }

          __dmb(0xBu);
          _getByGroupGroupingQueries_initialized = 1;
        }

        for (j = 0; j != 17; ++j)
        {
          v24 = makeAndNode(grouping_queryByGroupNodes[j], *(a1 + 72), 0, 0);
          translateSDBQuery(v24);
          v26 = v25;
          *block = 0;
          if (cf)
          {
            v27 = CFArrayGetCount(cf) != 0;
          }

          else
          {
            v27 = 0;
          }

          v28 = rewriteForSources(v26, block, v27);
          siquerynode_release(v26);
          v29 = doExecuteCracked(a1, a2, cf, *(a1 + 200) & 0xFFFFFFFFFFFFBFFFLL, *block, v28, *(a1 + 16), a4);
          if (dword_1EBF46AD0 >= 5)
          {
            v33 = *__error();
            v34 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "Started normal (grouping) query threadlet.", buf, 2u);
            }

            *__error() = v33;
          }

          v30 = *block;
          if (v28 >= 1)
          {
            v31 = (*block + 8);
            do
            {
              v32 = *(v31 - 1);
              if (v32)
              {
                siquerynode_release(v32);
              }

              if (*v31)
              {
                siquerynode_release(*v31);
              }

              v31 += 2;
              --v28;
            }

            while (v28);
          }

          free(v30);
          db_free_query_node(v24);
        }
      }

      else
      {
        v29 = doExecuteCracked(a1, a2, cf, v19, *(a1 + 128), *(a1 + 136), *(a1 + 16), a4);
        if (dword_1EBF46AD0 >= 5)
        {
          v43 = *__error();
          v44 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *block = 0;
            _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "Started normal query threadlet.", block, 2u);
          }

          *__error() = v43;
        }
      }

      _Block_object_dispose(values, 8);
      if (v29)
      {
LABEL_66:
        if (!cf)
        {
          return;
        }

        goto LABEL_67;
      }
    }
  }

  if (dword_1EBF46AD0 < 5)
  {
    goto LABEL_66;
  }

  v41 = *__error();
  v42 = _SILogForLogForCategory(1);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *block = 134217984;
    *&block[4] = a2;
    _os_log_impl(&dword_1C278D000, v42, OS_LOG_TYPE_DEFAULT, "Could not execute query for %p (!)", block, 0xCu);
  }

  *__error() = v41;
  if (cf)
  {
LABEL_67:
    CFRelease(cf);
  }
}

void *___queryGoCracked_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v42 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) != 4)
  {
    return v2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = v3[4];
  if ((v4 & 0x1008000) != 0x1000000)
  {
    return v2;
  }

  v5 = *v3;
  if (!*v3)
  {
    return v2;
  }

  if (*v5 == 42)
  {
    v7 = *(v5 + 1) == 0;
    if ((v4 & 0x400) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    if ((v4 & 0x400) != 0)
    {
      goto LABEL_15;
    }
  }

  if (!v7 && strcmp(v5, "kMDItemTextContent"))
  {
    if (!strncmp(v5, "_kMDItemOCRContent", 0x12uLL))
    {
      v9 = 0;
      v8 = 1;
    }

    else if (!strcmp(v5, "kMDItemDisplayName") || !strcmp(v5, "kMDItemSubject"))
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = strcmp(v5, "kMDItemTitle") == 0;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
  v8 = !v7;
LABEL_16:
  v39 = (v4 >> 26) & 2;
  v38 = 0;
  if (((v7 | v8) & 1) != 0 || v9)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(1);
    v12 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v2[2];
      v14 = *v13;
      v15 = v13[9];
      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = v15;
      _os_log_impl(&dword_1C278D000, v11, v12, "Segmenting %s %s", buf, 0x16u);
    }

    *__error() = v10;
    v37 = *(v2[2] + 72);
    *buf = 0;
    *&buf[8] = buf;
    v16.n128_u64[0] = 0x2000000000;
    *&buf[16] = 0x2000000000;
    v41 = 0;
    if ((v8 & 1) == 0 && *(*(a1 + 40) + 6648))
    {
      _CITermUpdateSetFindTokens(v16);
    }

    v17 = *(a1 + 40);
    v18 = *(v17 + 1392);
    v19 = *(v17 + 1384);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v29 = ___queryGoCracked_block_invoke_445;
    v30 = &unk_1E8196660;
    v36 = v8;
    v33 = &v39;
    v34 = &v38;
    v35 = v17;
    v31 = buf;
    v32 = &v37;
    if (v19)
    {
      v20 = *(v19 + 8);
      while (v20 >= 1)
      {
        v21 = v20 - 1;
        v22 = (v29)(v28, *(*v19 + 8 * v20 - 8), 1);
        v20 = v21;
        if (!v22)
        {
          goto LABEL_32;
        }
      }
    }

    if (v18)
    {
      v23 = *(v18 + 8);
      do
      {
        if (v23 < 1)
        {
          break;
        }

        v24 = v23 - 1;
        v25 = (v29)(v28, *(*v18 + 8 * v23 - 8), 0);
        v23 = v24;
      }

      while (v25);
    }

LABEL_32:
    _Block_object_dispose(buf, 8);
    if (v38)
    {
      if (*(v38 + 24))
      {
        node_from_token_data = query_node_from_token_data(v38, v2);
        if (node_from_token_data != v2)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          v2 = node_from_token_data;
        }
      }
    }
  }

  TokenDataDispose(v38);
  return v2;
}

void si_routine_protectionClassC(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void queryGo(uint64_t *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v4 = a1[2];
    if ((*(v4 + 96) & 1) == 0)
    {
      v5 = a1[2];
      do
      {
        v6 = v5;
        v5 = *(v5 + 80);
      }

      while (v5);
      if ((*(*(v6 + 8) + 12) & 1) == 0 && (*(v4 + 97) & 1) == 0)
      {
        v7 = *a1;
        v8 = *(v7 + 8 * query_priority(a1[1]) + 832);
        if (*(a1[2] + 16) == v8)
        {
          v9 = *__error();
          v10 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v14 = 136315394;
            v15 = "queryGo";
            v16 = 1024;
            v17 = 4393;
            _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: queryGo attempted to wait on already held semaphore", &v14, 0x12u);
          }

          *__error() = v9;
        }

        else
        {
          dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
          si_querypipe_set_semaphore(a1[2], v8);
        }

        _queryGoCracked(a1[1], *a1, 0, a1[2]);
      }
    }
  }

  si_querypipe_remove_process(a1[2], a1[1], 0, a2 != 0);
  v11 = a1[1];
  if ((*(v11 + 202) & 4) == 0)
  {
    si_querypipe_remove_process(a1[2], v11, 0, a2 != 0);
  }

  v12 = a1[4];
  if (v12)
  {
    CFRelease(v12);
  }

  a1[4] = 0;
  v13 = a1[1];
  if (atomic_fetch_add((v13 + 584), 0xFFFFFFFF) == 1)
  {
    si_query_free(v13);
  }

  si_querypipe_release(a1[2]);
  free(a1);
}

atomic_uint *si_querypipe_copy_jobid(uint64_t a1)
{
  do
  {
    v1 = a1;
    a1 = *(a1 + 80);
  }

  while (a1);
  pthread_mutex_lock(&jobsLock);
  v2 = *(v1 + 32);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  pthread_mutex_unlock(&jobsLock);
  return v2;
}

void si_release_qid(uint64_t a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    pthread_mutex_destroy((a1 + 48));
    v3 = *(a1 + 24);
    if (v3)
    {
      si_querypipe_release(v3);
    }

    free(a1);
  }
}

void __query_once_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  if ((v3 & 0x600000) == 0 || (v3 & 0x600000) == 0x600000)
  {
    goto LABEL_8;
  }

  if ((v3 & 0x400000) != 0)
  {
    v4 = "kMDItemContentType!='com.apple.ical.ics.todo' || _kMDItemFinderExcluded!=1";
  }

  else
  {
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    v4 = "_kMDItemGroupId!=6 || (kMDItemContentType=='com.apple.ical.ics.todo' || _kMDItemFinderExcluded!=1)";
  }

  v5 = *(v2 + 72);
  query_node_with_ann = db_make_query_node_with_ann(v4, 0);
  v7 = makeAndNode(v5, query_node_with_ann, 1, 1);
  v2 = *(a1 + 32);
  *(v2 + 72) = v7;
LABEL_8:
  v8 = *(v2 + 72);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = __db_query_tree_apply_block_block_invoke;
  v15[3] = &unk_1E8198ED0;
  v15[4] = &__block_literal_global_33_4954;
  db_query_tree_apply_block_with_meta(v8, v15, &__block_literal_global_37_4955);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    *(v9 + 16) = *(v8 + 56) & 1;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 176);
  if (v13)
  {
    v14 = CFArrayGetCount(v13) != 0;
  }

  else
  {
    v14 = 0;
  }

  *(*(a1 + 32) + 136) = rewriteForSources(v10, (v12 + 128), v14);

  siquerynode_release(v10);
}

_BYTE *___translateSDBQuery_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(a2 + 48) & 0xFFF7u) > 0x20)
  {
LABEL_13:
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    v8 = "";
    if (v6)
    {
      v8 = v6;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Unexpected node type %x", "siquerynode.c", 445, "0", v8, *(a2 + 48));
    free(v7);
    if (__valid_fs(-1))
    {
      v9 = 2989;
    }

    else
    {
      v9 = 3072;
    }

    *v9 = -559038737;
    abort();
  }

  if (((1 << (*(a2 + 48) & 0xF7)) & 0x100010010) == 0)
  {
    if (((1 << (*(a2 + 48) & 0xF7)) & 6) != 0)
    {
      return a2;
    }

    goto LABEL_13;
  }

  if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
  {
    ++sTotal_4940;
  }

  v3 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
  if (!v3)
  {
    _log_fault_for_malloc_failure();
  }

  *v3 = 3;
  v3[17] = (*(a2 + 56) & 0x200) != 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __db_query_tree_apply_block_block_invoke;
  v10[3] = &unk_1E8198ED0;
  v10[4] = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(a2, v10, &__block_literal_global_25_15416);
  *(v3 + 3) = v4;
  return v3;
}

_BYTE *___translateSDBQuery_block_invoke_2(void *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v7 = *(a2 + 48) & 0xFFF7;
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    if (v7 != 2)
    {
      v24 = __si_assert_copy_extra_332();
      v21 = v24;
      v25 = "";
      if (v24)
      {
        v25 = v24;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 468, "0", v25);
      goto LABEL_24;
    }

    v8 = 1;
  }

  v9 = 0;
  if (a3 && a4)
  {
    v10 = *a3;
    if (v8 == *a4)
    {
      if (v8 != v10)
      {
        v15 = *(a4 + 4);
        v16 = *(a4 + 3) + 1;
        *(a4 + 3) = v16;
        v17 = malloc_type_realloc(v15, 8 * v16, 0x2004093837F09uLL);
        *(a4 + 4) = v17;
        v17[*(a4 + 3) - 1] = a3;
        v9 = a4;
        goto LABEL_19;
      }

      v11 = malloc_type_realloc(a3[4], 8 * (*(a4 + 3) + a3[3]), 0x2004093837F09uLL);
      a3[4] = v11;
      memcpy(&v11[8 * a3[3]], *(a4 + 4), 8 * *(a4 + 3));
      a3[3] += *(a4 + 3);
      free(*(a4 + 4));
      free(a4);
    }

    else
    {
      if (v8 != v10)
      {
        if (*MEMORY[0x1E69E9AC8] <= 0x27uLL)
        {
          ++sTotal_4940;
        }

        v9 = malloc_type_zone_calloc(queryZone, 1uLL, 0x28uLL, 0x5BAF1CEAuLL);
        if (!v9)
        {
          _log_fault_for_malloc_failure();
        }

        *v9 = v8;
        *(v9 + 17) = (*(a2 + 56) & 0x200) != 0;
        v9[3] = 2;
        v18 = malloc_type_calloc(1uLL, 0x10uLL, 0x2004093837F09uLL);
        v9[4] = v18;
        *v18 = a3;
        *(v9[4] + 8) = a4;
        goto LABEL_19;
      }

      v12 = a3[4];
      v13 = a3[3] + 1;
      a3[3] = v13;
      v14 = malloc_type_realloc(v12, 8 * v13, 0x2004093837F09uLL);
      a3[4] = v14;
      v14[a3[3] - 1] = a4;
    }

    v9 = a3;
LABEL_19:
    if (v9[3] > 1)
    {
      return v9;
    }

    v20 = __si_assert_copy_extra_332();
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "siquerynode.c", 501, "sinode->node.mnode.nodeCount>=2", v22);
LABEL_24:
    free(v21);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  return v9;
}

uint64_t si_dglock_rdunlock(uint64_t a1)
{
  v2 = pthread_mutex_lock(a1);
  v3 = *(a1 + 196) - 1;
  *(a1 + 196) = v3;
  if (!v3)
  {
    db_rwlock_wakeup(a1, 0, 0);
  }

  pthread_mutex_unlock(a1);
  return v2;
}

unsigned int *processNodes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, unint64_t a6)
{
  v65 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 368);
  v12 = *(*(a1 + 24) + 6640);
  if (v12 && CFSetContainsValue(v12, *(a2 + 56)))
  {
    v56 = *(*(a1 + 24) + 6632);
  }

  else
  {
    v56 = 0;
  }

  if (((a6 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && 8 * a6 > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal;
  }

  v57 = malloc_type_zone_calloc(queryZone, 1uLL, 8 * a6, 0x5BAF1CEAuLL);
  if (!v57)
  {
    _log_fault_for_malloc_failure();
  }

  keyCallBacks = *byte_1F427CC10;
  v13 = CFDictionaryCreateMutable(kCIQueryZoneAllocator, a6, &keyCallBacks, 0);
  v14 = 0;
  if (a6)
  {
    v15 = a4;
    v16 = a6;
    do
    {
      v17 = CFDictionaryContainsKey(v13, *v11);
      v18 = *v11;
      if (v17)
      {
        *v15 = CFDictionaryGetValue(v13, v18);
      }

      else
      {
        CFDictionaryAddValue(v13, v18, v14);
        *v15 = v14;
        v57[v14++] = *v11;
      }

      ++v15;
      ++v11;
      --v16;
    }

    while (v16);
  }

  CFRelease(v13);
  v19 = 0;
  v20 = 8 * a6;
  do
  {
    v21 = *(a1 + 104);
    if (*(v21 + 96))
    {
      break;
    }

    do
    {
      v22 = v21;
      v21 = *(v21 + 80);
    }

    while (v21);
    if (*(*(v22 + 8) + 12))
    {
      break;
    }

    if (v19 && dword_1EBF46B00 >= 5)
    {
      v29 = *__error();
      v30 = _SILogForLogForCategory(13);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v63) = 134217984;
        *(&v63 + 4) = v19;
        _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "Looping %ld", &v63, 0xCu);
      }

      *__error() = v29;
    }

    bzero(a5, v20);
    v23 = *(a2 + 8);
    v24 = *(a1 + 8);
    v25 = v24[82];
    *&v63 = v24[4];
    *(&v63 + 1) = v25;
    v64 = v24[9];
    NodesLazy = __CIMatchQueryNodesLazy(a2, v56, v14, v57, a5, 0, HIBYTE(*(*(a1 + 24) + 6584)) & 1, 0, (*(a1 + 104) + 96), &v63);
    if (v23 == 1 && (*(a2 + 8) & 1) == 0)
    {
      v27 = *__error();
      v28 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v60 = "processNodes";
        v61 = 1024;
        v62 = 323;
        _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: Index became unavailable", buf, 0x12u);
      }

      *__error() = v27;
      *(a1 + 1193) = 1;
      v20 = 8 * a6;
    }

    if (NodesLazy)
    {
      goto LABEL_34;
    }

    ++v19;
  }

  while (v19 != 5);
  NodesLazy = 0;
LABEL_34:
  free(v57);
  v31 = *(a1 + 104);
  if (*(v31 + 96))
  {
    v34 = NodesLazy != 0;
    v32 = a3;
LABEL_72:
    v51 = *(a1 + 832);
    if (v51)
    {
      for (i = 0; i < v51; ++i)
      {
        v53 = *(v32 + 8 * i);
        if (v53)
        {
          ContentIndexDocSetCleanupBorrowedChildren(v53);
          ContentIndexDocSetDispose(*(v32 + 8 * i));
          v51 = *(a1 + 832);
        }

        *(v32 + 8 * i) = 0;
      }
    }

    if (v34)
    {
      ContentIndexDocSetContextRelease(NodesLazy);
      for (; v14; --v14)
      {
        if (*a5)
        {
          ContentIndexDocSetCleanupBorrowedChildren(*a5);
          ContentIndexDocSetDispose(*a5);
        }

        ++a5;
      }
    }

    if (a6)
    {
      bzero(a4, v20);
    }

    return 0;
  }

  v32 = a3;
  do
  {
    v33 = v31;
    v31 = *(v31 + 80);
  }

  while (v31);
  v34 = NodesLazy != 0;
  if ((*(*(v33 + 8) + 12) & 1) != 0 || !NodesLazy)
  {
    goto LABEL_72;
  }

  if (a6)
  {
    while (v14 > *a4)
    {
      v35 = a5[*a4];
      if (!v35)
      {
        v48 = __si_assert_copy_extra_332();
        v46 = v48;
        v49 = "";
        if (v48)
        {
          v49 = v48;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 357, "cidocs[(size_t)docs[i]]", v49);
        goto LABEL_67;
      }

      atomic_fetch_add(v35, 1u);
      *a4++ = v35;
      if (!--a6)
      {
        goto LABEL_45;
      }
    }

    v45 = __si_assert_copy_extra_332();
    v46 = v45;
    v47 = "";
    if (v45)
    {
      v47 = v45;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 356, "(size_t)docs[i]<j", v47);
LABEL_67:
    free(v46);
    if (__valid_fs(-1))
    {
      v50 = 2989;
    }

    else
    {
      v50 = 3072;
    }

    *v50 = -559038737;
    abort();
  }

  for (; v14; --v14)
  {
LABEL_45:
    ContentIndexDocSetDispose(*a5);
    *a5++ = 0;
  }

  v36 = *(a1 + 832);
  if (v36)
  {
    v37 = 0;
    for (j = 0; j < v36; ++j)
    {
      v39 = *(a3 + 8 * j);
      if (!v39 || !*(v39 + 48))
      {
        v40 = *(a1 + 840);
        v41 = *(v40 + v37);
        if (v41)
        {
          clear_node_field_caches(v41);
          v40 = *(a1 + 840);
        }

        v42 = *(v40 + v37 + 8);
        if (v42)
        {
          clear_node_field_caches(v42);
          v40 = *(a1 + 840);
        }

        v43 = *(v40 + v37 + 16);
        if (v43)
        {
          clear_node_field_caches(v43);
          v40 = *(a1 + 840);
        }

        v44 = *(v40 + v37 + 24);
        if (v44)
        {
          clear_node_field_caches(v44);
        }

        *(a1 + 643) = 0;
        v36 = *(a1 + 832);
      }

      v37 += 48;
    }
  }

  return NodesLazy;
}

double findTermIDsInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a10 + 24) = a3;
  *(a10 + 32) = a4;
  *(a10 + 8) = a1;
  *(a10 + 16) = a2;
  *(a10 + 48) = *(a1 + 4584);
  v10 = *(a1 + 32);
  *(a10 + 64) = (*(a1 + 144) + 1);
  *(a10 + 72) = v10;
  *(a10 + 80) = *(a1 + 392);
  LODWORD(v10) = *a1 >> 1;
  v11 = *a1 >> 3;
  v12 = (*a1 & 7) << 32;
  if ((*a1 & 3) == 1)
  {
    v12 = 0x100000000;
    v11 = *a1 >> 2;
  }

  if (*a1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (*a1)
  {
    v10 = v11;
  }

  else
  {
    v10 = v10;
  }

  *(a10 + 52) = v13 | v10;
  *(a10 + 1160) = a8;
  *(a10 + 1168) = a9;
  *a10 = a5;
  *(a10 + 88) = 0;
  *(a10 + 1140) = 0;
  *(a10 + 1144) = a7;
  *(a10 + 1152) = a6;
  *(a10 + 1288) = 0;
  if (a6)
  {
    v14 = a6;
    v15 = a7 + 16;
    while ((*(v15 + 2) & 1) == 0)
    {
      v15 += 64;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    *(a10 + 1288) = 1;
  }

LABEL_15:
  *(a10 + 1176) = 0;
  *(a10 + 1289) = 0;
  *(a10 + 1264) = 0u;
  v22 = 0;
  v16 = MEMORY[0x1E69E9AC8];
  v17 = *MEMORY[0x1E69E9AC8];
  v18 = 0;
  if (!my_vm_allocate(&v22, *MEMORY[0x1E69E9AC8], 0xF8000001))
  {
    v18 = v22;
    v19 = v22 + 24;
    *v22 = 0;
    *(v18 + 1) = v19;
    *(v18 + 2) = &v18[v17];
    madvise(v19, *v16, 3);
  }

  *(a10 + 1208) = v18;
  *(a10 + 1180) = 1024;
  v20 = malloc_type_zone_malloc(queryZone, 0x2000uLL, 0xA4971684uLL);
  if (!v20)
  {
    _log_fault_for_malloc_failure();
  }

  *(a10 + 40) = v20;
  *(a10 + 1284) = 0;
  result = 0.0;
  *(a10 + 1192) = 0u;
  return result;
}

unsigned int *__CIMatchQueryNodesLazy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, unsigned int a7, char a8, _BYTE *a9, uint64_t a10)
{
  v10 = 0;
  v404 = *MEMORY[0x1E69E9840];
  v399 = 0;
  v400 = 0;
  v398 = 0;
  if (*(a1 + 8) != 1)
  {
    return v10;
  }

  v13 = a5;
  v15 = a3;
  if (a3 < 1)
  {
    v31 = 0;
    v33 = 0;
    v32 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v19) = 0;
    do
    {
      v20 = v16;
      v21 = v17;
      v22 = *(a4 + 8 * v17);
      v19 = v19 || (v22[1] & 0x3080) != 0;
      v23 = *v22;
      v24 = v23;
      if (v23 < 1)
      {
        v29 = 0;
      }

      else
      {
        v25 = (v22 + 6);
        v26 = 0;
        do
        {
          v27 = *v25;
          v25 += 4;
          v28 = v27 - 1;
          if (v27 <= 1)
          {
            v28 = 0;
          }

          v26 += v28;
          v29 = v26;
          --v23;
        }

        while (v23);
      }

      v30 = v24 + v20;
      v31 = v29 + v18;
      a5[v21] = 0;
      v17 = v21 + 1;
      v32 = v19;
      v18 += v29;
      v16 = v30;
      v33 = v30;
    }

    while (v17 != a3);
  }

  v34 = v33;
  v35 = v31;
  v367 = v32;
  v397 = v33;
  if (v33 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v33;
  }

  v365 = malloc_type_malloc(8 * v36, 0x2004093837F09uLL);
  v37 = v34 + v35;
  v366 = malloc_type_zone_malloc(queryZone, v37 << 6, 0xA4971684uLL);
  if (!v366)
  {
    _log_fault_for_malloc_failure();
  }

  v364 = v34;
  v382 = v34;
  v381 = malloc_type_zone_malloc(queryZone, 72 * v34, 0xA4971684uLL);
  if (!v381)
  {
    _log_fault_for_malloc_failure();
  }

  v385 = a4;
  v38 = malloc_type_zone_malloc(queryZone, 8 * v37, 0xA4971684uLL);
  if (!v38)
  {
    _log_fault_for_malloc_failure();
  }

  v39 = malloc_type_zone_malloc(queryZone, 8 * v37, 0xA4971684uLL);
  if (!v39)
  {
    _log_fault_for_malloc_failure();
  }

  size = v37;
  v40 = v382;
  if (v367)
  {
    v41 = &qword_1EDD81000;
    if ((((9 * v37) >> 14) & 0x7FFFFFFFFFFFLL) == 0 && (72 * v37) > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_14063;
    }

    v42 = malloc_type_zone_calloc(queryZone, 0x48uLL, v37, 0x5BAF1CEAuLL);
    v43 = a6;
    if (!v42)
    {
      _log_fault_for_malloc_failure();
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
    v41 = &qword_1EDD81000;
    v43 = a6;
  }

  v379 = v42;
  if ((a8 & 1) == 0)
  {
    db_read_lock(a1 + 14720);
  }

  v44 = a1;
  v45 = *(a1 + 14392);
  v46 = *(a1 + 14400);
  v376 = v45;
  if (v45 && (atomic_fetch_add(v45, 1u), v43) && *(v45 + 584) <= v43)
  {
    v47 = 1;
    v46 = 0;
  }

  else
  {
    if (v46)
    {
      atomic_fetch_add(v46, 1u);
    }

    v47 = 0;
  }

  v377 = v47;
  v375 = v46;
  v380 = *(a1 + 60);
  v368 = *(a1 + 9680);
  if ((a8 & 1) == 0)
  {
    db_read_unlock(a1 + 14720);
    v44 = a1;
  }

  v378 = a7;
  v396 = 0;
  if (*(v44 + 8) != 1)
  {
    v55 = a9;
    i = v381;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
      v57 = 0;
      v58 = 0;
      goto LABEL_354;
    }

LABEL_57:
    v58 = 0;
    v57 = 0;
    goto LABEL_354;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v48 = setThreadIdAndInfo(*(v44 + 64), sIndexExceptionCallbacks, v44, 0x20000000, add_explicit + 1);
  v394 = HIDWORD(v48);
  v395 = v48;
  v392 = v50;
  v393 = v49;
  v51 = threadData[9 * v48 + 1] + 320 * HIDWORD(v48);
  *(v51 + 216) = 0;
  v371 = *(v51 + 312);
  v52 = *(v51 + 224);
  v53 = v51;
  i = v381;
  if (v52)
  {
    v52(*(v51 + 288));
  }

  if (_setjmp(v53))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v53 + 312) = v371;
    v55 = a9;
    if ((~*(v53 + 212) & 0xA0000000) == 0)
    {
      v56 = *(v53 + 288);
      if (v56)
      {
        _CIMakeInvalid(v56);
      }
    }

    CIOnThreadCleanUpReset(v392);
    dropThreadId(v395, 1, add_explicit + 1);
    CICleanUpReset(v395, v393);
    goto LABEL_57;
  }

  v59 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v60 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v59 + 1);
  v390 = HIDWORD(v60);
  v391 = v60;
  v389 = v61;
  v388 = v62;
  v63 = threadData[9 * v60 + 1] + 320 * HIDWORD(v60);
  v369 = *(v63 + 312);
  v64 = *(v63 + 224);
  if (v64)
  {
    v64(*(v63 + 288));
  }

  if (_setjmp(v63))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v63 + 312) = v369;
    CIOnThreadCleanUpReset(v388);
    dropThreadId(v391, 1, v59 + 1);
    CICleanUpReset(v391, v389);
    v58 = 0;
    v65 = 0;
    goto LABEL_351;
  }

  v370 = v59;
  v396 = 1;
  v386 = v13;
  v384 = v15;
  if (v15 < 1)
  {
    v132 = 0;
    v133 = v382;
    v70 = a1;
    goto LABEL_214;
  }

  v66 = 0;
  v67 = v382;
  v68 = 0;
  v69 = 0;
  v70 = a1;
  do
  {
    v359 = v68;
    v71 = v66;
    v361 = v69;
    v72 = *(v385 + 8 * v69);
    v73 = v72;
    v360 = v71;
    if (*v72 < 1)
    {
      goto LABEL_120;
    }

    v74 = 0;
    v346 = v72 + 6;
    v347 = v71;
    v75 = v366;
    do
    {
      v76 = v347 + v74;
      v77 = &v75[8 * v76];
      v78 = &v381[72 * v76];
      v79 = &v346[4 * v74];
      v80 = *(v79 + 1);
      v81 = *v80;
      v82 = v80[1];
      v83 = v80[3];
      v77[2] = v80[2];
      v77[3] = v83;
      *v77 = v81;
      v77[1] = v82;
      *v78 = 0;
      *(v78 + 1) = 0u;
      *(v78 + 2) = 0u;
      *(v78 + 44) = 0u;
      *(v78 + 8) = 0xFFFFFFFFLL;
      *(v78 + 2) = 0;
      if ((v73[1] & 0x3080) != 0)
      {
        if (*MEMORY[0x1E69E9AC8] <= 0x47uLL)
        {
          ++sTotal_6326;
        }

        v84 = malloc_type_zone_calloc(queryZone, 1uLL, 0x48uLL, 0x5BAF1CEAuLL);
        if (!v84 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        }

        v379[v76] = v84;
        *v84 = 0;
        v84[1] = 0u;
        v84[2] = 0u;
        *(v84 + 44) = 0u;
        *(v84 + 8) = 0xFFFFFFFFLL;
        *(v84 + 2) = 0;
      }

      v39[v76] = v78;
      if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
      {
        ++sTotal_6326;
      }

      v85 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
      if (!v85 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      atomic_store(1u, v85);
      v85[1] = -1073627135;
      *(v85 + 7) = a1;
      v85[12] = 0;
      *(v85 + 5) = -1;
      v365[v76] = v85;
      v85[13] = v73[2];
      v86 = *MEMORY[0x1E69E9AC8];
      if ((v73[1] & 0x3080) != 0)
      {
        if (v86 <= 0xEF)
        {
          ++sTotal_6326;
        }

        v87 = malloc_type_zone_calloc(queryZone, 1uLL, 0xF0uLL, 0x5BAF1CEAuLL);
        v88 = 8;
        if (v87)
        {
          goto LABEL_85;
        }
      }

      else
      {
        if (v86 <= 0x107)
        {
          ++sTotal_6326;
        }

        v87 = malloc_type_zone_calloc(queryZone, 1uLL, 0x108uLL, 0x5BAF1CEAuLL);
        v88 = 3;
        if (v87)
        {
LABEL_85:
          v89 = v87;
          goto LABEL_92;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      v89 = 0;
LABEL_92:
      *(v365[v76] + 64) = v89;
      v90 = v365[v76];
      *(v90 + 48) = v88;
      v91 = *(v90 + 64);
      v38[v76] = v91;
      *(v91 + 32) = v359;
      if (*v79 < 2)
      {
        v101 = v67;
        v75 = v366;
      }

      else
      {
        v75 = v366;
        v92 = &v366[8 * v67];
        v93 = v67;
        v94 = 1;
        v95 = 64;
        do
        {
          v38[v93] = v38[v76];
          v96 = (*(v79 + 1) + v95);
          v97 = *v96;
          v98 = v96[1];
          v99 = v96[3];
          v92[2] = v96[2];
          v92[3] = v99;
          *v92 = v97;
          v92[1] = v98;
          v92 += 4;
          v39[v93] = v39[v76];
          v100 = v93 + 1;
          ++v94;
          v95 += 64;
          ++v93;
        }

        while (v94 < *v79);
        v101 = v100;
      }

      ++v74;
      v102 = *v73;
      v67 = v101;
    }

    while (v74 < v102);
    v103 = v102;
    if (v102 == 1)
    {
      v104 = v365[v347];
      LODWORD(v105) = 1;
      v106 = v101;
      v70 = a1;
      v41 = &qword_1EDD81000;
      v40 = v382;
      i = v381;
      goto LABEL_126;
    }

    v107 = v102;
    v70 = a1;
    v41 = &qword_1EDD81000;
    v40 = v382;
    i = v381;
    if (v102 < 2)
    {
      v67 = v101;
LABEL_120:
      v120 = v70;
      if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
      {
        ++sTotal_6326;
      }

      v121 = malloc_type_zone_calloc(v41[58], 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
      if (!v121 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      atomic_store(1u, v121);
      v121[1] = -1073627135;
      v70 = v120;
      *(v121 + 7) = v120;
      v121[12] = 0;
      *(v121 + 5) = -1;
      v121[5] = 0;
      LODWORD(v105) = *v73;
      v106 = v67;
      v104 = v121;
      goto LABEL_126;
    }

    v108 = v73[1];
    if ((v108 & 0x80) != 0)
    {
      v124 = &v365[v347];
      v125 = v124;
      v102 = v102;
      v126 = 0;
      while (1)
      {
        v127 = *v125;
        if (!*v125)
        {
          goto LABEL_151;
        }

        v128 = *(v127 + 48);
        if (!v128)
        {
          break;
        }

        if (v128 == 1)
        {
          v129 = v126 + 1;
        }

        else
        {
          v129 = v126;
        }

        v126 = v129;
        ++v125;
        if (!--v102)
        {
          v130 = *v124;
          if (v129 == v103)
          {
            if (v130)
            {
              atomic_fetch_add(v130, 1u);
              v119 = v130;
              goto LABEL_187;
            }

LABEL_151:
            v119 = 0;
            goto LABEL_187;
          }

          if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
          {
            ++sTotal_6326;
          }

          v145 = *(v130 + 56);
          v146 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
          if (!v146)
          {
            _log_fault_for_malloc_failure();
          }

          atomic_store(1u, v146);
          v146[1] = -1073627135;
          *(v146 + 7) = v145;
          v146[12] = 9;
          v147 = 8 * v103;
          *(v146 + 5) = -1;
          if (!(v103 >> 14) && *MEMORY[0x1E69E9AC8] < v147)
          {
            ++sTotal_6326;
          }

          v41 = &qword_1EDD81000;
          v148 = malloc_type_zone_calloc(queryZone, 1uLL, v147, 0x5BAF1CEAuLL);
          if (!v148)
          {
            _log_fault_for_malloc_failure();
          }

          *(v146 + 9) = v148;
          v149 = &v365[v347];
          v150 = v107;
          v70 = a1;
          while (2)
          {
            v151 = *v149;
            if (*v149)
            {
              if (v151[12] != 1)
              {
                atomic_fetch_add(v151, 1u);
                goto LABEL_184;
              }
            }

            else
            {
LABEL_184:
              v152 = *(v146 + 9);
              v153 = v146[24];
              v146[24] = v153 + 1;
              *(v152 + 8 * v153) = v151;
            }

            ++v149;
            if (!--v150)
            {
              v119 = v146;
              i = v381;
              goto LABEL_187;
            }

            continue;
          }
        }
      }

      if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
      {
        ++sTotal_6326;
      }

      v136 = *(v127 + 56);
      v137 = *(v127 + 16);
      v138 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
      if (!v138)
      {
        _log_fault_for_malloc_failure();
        v138 = 0;
      }

      atomic_store(1u, v138);
      v138[1] = -1073627135;
      *(v138 + 7) = v136;
      v138[12] = 0;
      *(v138 + 5) = -1;
      v138[5] = v137;
      v119 = v138;
      v70 = a1;
LABEL_187:
      LODWORD(v105) = *v73;
      if (*v73 < 1)
      {
        goto LABEL_212;
      }

      v154 = v70;
      v155 = 0;
      do
      {
        v156 = v155;
        ContentIndexDocSetDispose(v124[v155]);
        v155 = v156 + 1;
        v105 = *v73;
      }

      while (v156 + 1 < v105);
LABEL_211:
      v106 = v101;
      v104 = v119;
      v70 = v154;
      v41 = &qword_1EDD81000;
    }

    else if ((v108 & 0x3000) != 0)
    {
      v109 = &v365[v347];
      if ((v108 & 0x1000) != 0)
      {
        v110 = 2;
      }

      else
      {
        v110 = (v108 >> 13) & 1;
      }

      if ((~v108 & 0x3000) != 0)
      {
        v111 = v110;
      }

      else
      {
        v111 = 3;
      }

      v112 = &v365[v347];
      v113 = v103;
      v114 = 0;
      while (1)
      {
        v115 = *v112;
        if (!*v112)
        {
          goto LABEL_159;
        }

        v116 = *(v115 + 48);
        if (!v116)
        {
          break;
        }

        if (v116 == 1)
        {
          v117 = v114 + 1;
        }

        else
        {
          v117 = v114;
        }

        v114 = v117;
        ++v112;
        if (!--v113)
        {
          v118 = *v109;
          if (v117 == v103)
          {
            if (v118)
            {
              atomic_fetch_add(v118, 1u);
              v119 = v118;
              goto LABEL_207;
            }

LABEL_159:
            v119 = 0;
            goto LABEL_207;
          }

          if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
          {
            ++sTotal_6326;
          }

          v157 = *(v118 + 56);
          v158 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
          if (!v158)
          {
            _log_fault_for_malloc_failure();
          }

          atomic_store(1u, v158);
          v158[1] = -1073627135;
          *(v158 + 7) = v157;
          v158[12] = 9;
          *(v158 + 5) = -1;
          v159 = 8 * v103;
          v158[9] = v111;
          if (!(v103 >> 14) && *MEMORY[0x1E69E9AC8] < v159)
          {
            ++sTotal_6326;
          }

          v41 = &qword_1EDD81000;
          v160 = malloc_type_zone_calloc(queryZone, 1uLL, v159, 0x5BAF1CEAuLL);
          if (!v160)
          {
            _log_fault_for_malloc_failure();
          }

          *(v158 + 9) = v160;
          v161 = &v365[v347];
          v162 = v103;
          v70 = a1;
          while (2)
          {
            v163 = *v161;
            if (*v161)
            {
              if (v163[12] != 1)
              {
                atomic_fetch_add(v163, 1u);
                goto LABEL_204;
              }
            }

            else
            {
LABEL_204:
              v164 = *(v158 + 9);
              v165 = v158[24];
              v158[24] = v165 + 1;
              *(v164 + 8 * v165) = v163;
            }

            ++v161;
            if (!--v162)
            {
              v119 = v158;
              i = v381;
              goto LABEL_207;
            }

            continue;
          }
        }
      }

      if (*MEMORY[0x1E69E9AC8] <= 0x97uLL)
      {
        ++sTotal_6326;
      }

      v139 = *(v115 + 56);
      v140 = *(v115 + 16);
      v141 = malloc_type_zone_calloc(queryZone, 1uLL, 0x98uLL, 0x5BAF1CEAuLL);
      if (!v141)
      {
        _log_fault_for_malloc_failure();
        v141 = 0;
      }

      atomic_store(1u, v141);
      v141[1] = -1073627135;
      *(v141 + 7) = v139;
      v141[12] = 0;
      *(v141 + 5) = -1;
      v141[5] = v140;
      v119 = v141;
      v70 = a1;
LABEL_207:
      LODWORD(v105) = *v73;
      if (*v73 >= 1)
      {
        v154 = v70;
        v166 = 0;
        do
        {
          v167 = v166;
          ContentIndexDocSetDispose(v109[v166]);
          v166 = v167 + 1;
        }

        while (v167 + 1 < *v73);
        LODWORD(v105) = *v73;
        goto LABEL_211;
      }

LABEL_212:
      v106 = v101;
      v104 = v119;
    }

    else
    {
      v134 = &v365[v347];
      if ((v108 & 0x400000) != 0)
      {
        v135 = ContentIndexDocSetUnionLazy(v102, v134, 0.0);
      }

      else
      {
        v135 = ContentIndexDocSetIntersectionLazy(v102, v134, 0.0);
      }

      v142 = v135;
      LODWORD(v105) = *v73;
      if (*v73 >= 1)
      {
        v143 = 0;
        do
        {
          v144 = v143;
          ContentIndexDocSetDispose(v365[v347 + v143]);
          v143 = v144 + 1;
        }

        while (v144 + 1 < *v73);
        LODWORD(v105) = *v73;
      }

      v106 = v101;
      v104 = v142;
      v70 = a1;
    }

LABEL_126:
    v13 = v386;
    v386[v361] = v104;
    v122 = v359;
    v15 = v384;
    if (v361)
    {
      goto LABEL_149;
    }

    v123 = v104[12];
    if (v123 <= 3)
    {
      if (v123 < 3)
      {
        v122 = 0;
        goto LABEL_149;
      }

      if (v123 != 3)
      {
        goto LABEL_435;
      }

LABEL_146:
      v131 = *(v104 + 8);
      if (v131)
      {
        v122 = (v131 + 88);
      }

      else
      {
        v122 = 0;
      }

      goto LABEL_149;
    }

    if ((v123 - 4) < 4)
    {
      goto LABEL_129;
    }

    if (v123 == 8)
    {
      goto LABEL_146;
    }

    if (v123 != 9)
    {
LABEL_435:
      assert_invalid_doc_type(v104);
    }

LABEL_129:
    v122 = v104 + 20;
LABEL_149:
    v68 = v122;
    v132 = v360 + v105;
    v69 = v361 + 1;
    v66 = v360 + v105;
    v133 = v106;
    v67 = v106;
  }

  while (v361 + 1 != v384);
LABEL_214:
  v168 = v133;
  v397 = 0;
  if (v40 > v132)
  {
    if (v40 < v133)
    {
      v169 = v364;
      v170 = 16 * v364 - 8 * v132;
      v171 = v133 - v364;
      do
      {
        v172 = &v366[v169 * 8];
        v173 = &v366[v170];
        v174 = *v173;
        v175 = v173[1];
        v176 = v173[3];
        v172[2] = v173[2];
        v172[3] = v176;
        *v172 = v174;
        v172[1] = v175;
        v38[v169++] = *(v38 + v170);
        v170 += 8;
        --v171;
      }

      while (v171);
    }

    v168 = v133 - (v40 - v132);
  }

  if (*a9)
  {
    v177 = 0;
    v58 = 0;
    goto LABEL_348;
  }

  v340 = v132;
  v178 = v70;
  v179 = CICleanUpThreadLoc();
  v180 = 0;
  v339 = v179;
  v338 = threadData[9 * v179 + 4];
  if (v367)
  {
    v180 = &v399;
  }

  v362 = v168;
  indexFindBulk(v178, a2, v168, v366, v39, v379, v377, v378, a9, &v400, v180, &v398, a10);
  v363 = *(v178 + 68);
  v181 = v376;
  if (v340 < 1)
  {
    goto LABEL_327;
  }

  v182 = v178;
  v183 = 0;
  v184 = 0;
  v185 = v379;
  do
  {
    v348 = v184;
    v186 = v183;
    if (v185 && v185[v183])
    {
      v358 = v183;
      v187 = malloc_type_zone_malloc(queryZone, 0x48uLL, 0xA4971684uLL);
      v357 = v187;
      v345 = v187;
      if (v187)
      {
        v188 = v187;
      }

      else
      {
        _log_fault_for_malloc_failure();
        v188 = 0;
      }

      v199 = CICleanUpPush(v339, MEMORY[0x1E69E9B38], v188);
      v200 = malloc_type_zone_malloc(queryZone, 0x40uLL, 0xA4971684uLL);
      if (v200)
      {
        v201 = MEMORY[0x1E69E9B38];
        v202 = v339;
        v203 = v200;
      }

      else
      {
        _log_fault_for_malloc_failure();
        v203 = 0;
        v201 = MEMORY[0x1E69E9B38];
        v202 = v339;
      }

      v354 = CICleanUpPush(v202, v201, v203);
      v355 = v200;
      v204 = v357;
      v205 = &i[72 * v358];
      v206 = *(v205 + 4);
      *v357 = 0;
      v357[4] = 0;
      v351 = v357 + 4;
      v357[5] = 0;
      v207 = v206 + 2;
      v357[3] = v206 + 2;
      if (v206 == -2)
      {
        v209 = 0;
      }

      else
      {
        v208 = malloc_type_zone_malloc(queryZone, 16 * v207, 0xA4971684uLL);
        v204 = v357;
        v209 = v208;
        if (!v208)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          }

          v209 = 0;
          v204 = v357;
        }
      }

      *(v204 + 16) = v209;
      v350 = (v204 + 16);
      *(v204 + 48) = 0;
      *(v204 + 56) = 0;
      *(v204 + 64) = 0xFFFFFFFFLL;
      *(v204 + 8) = 0;
      v352 = CICleanUpPush(v339, oqdispose_PositionOffset_t, v204);
      *(v200 + 3) = 0;
      *(v200 + 4) = 0;
      *(v200 + 2) = v207;
      if (v206 == -2)
      {
        v210 = 0;
        v211 = v379;
      }

      else
      {
        v210 = malloc_type_zone_malloc(queryZone, 56 * v207, 0xA4971684uLL);
        v211 = v379;
        if (!v210)
        {
          _log_fault_for_malloc_failure();
          v210 = 0;
        }
      }

      *(v200 + 1) = v210;
      *(v200 + 5) = 0;
      v349 = &i[72 * v358];
      *(v200 + 12) = 0;
      *(v200 + 7) = 0xFFFFFFFFLL;
      *v200 = 0;
      v356 = v199;
      v353 = CICleanUpPush(v339, oqdispose_AnnotatedPositionOffset_t, v200);
      if ((*a9 & 1) == 0)
      {
        if (v206 != *(v211[v358] + 32))
        {
          v330 = __si_assert_copy_extra_332();
          v318 = v330;
          v331 = "";
          if (v330)
          {
            v331 = v330;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 1043, "payloadQCount == oqcount(positions[i])", v331);
LABEL_403:
          free(v318);
          if (__valid_fs(-1))
          {
            v322 = 2989;
          }

          else
          {
            v322 = 3072;
          }

          *v322 = -559038737;
          abort();
        }

        if (*v205)
        {
          if ((*v357 & 1) == 0)
          {
            if (*v351)
            {
              v332 = __si_assert_copy_extra_332();
              v315 = v332;
              v333 = "";
              if (v332)
              {
                v333 = v332;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 702, "queue->just_offsets.count == 0", v333);
              goto LABEL_415;
            }

            oqdispose_JustPositionOffset_t(v345 + 8);
            *(v350 + 28) = 0u;
            *v350 = 0u;
            v350[1] = 0u;
            v357[8] = 0xFFFFFFFFLL;
            *(v357 + 2) = 0;
          }

          if (v206 >= 1)
          {
            v226 = 0;
            v227 = 0;
            v228 = v206;
            v229 = v348;
            v213 = v211;
            while (1)
            {
              v230 = v228;
              v231 = v213[v358];
              v232 = *v231;
              v233 = *(v231 + 2);
              if (v232)
              {
                v234 = v226;
              }

              else
              {
                v234 = v227;
              }

              if (*(v233 + v234))
              {
                v235 = CIIndexSetCreateWithRange(0, v363, 1);
                if (*v349)
                {
                  v236 = v226;
                }

                else
                {
                  v236 = v227;
                }

                if ((*v349 & 1) == 0)
                {
                  v317 = __si_assert_copy_extra_332();
                  v318 = v317;
                  v319 = "";
                  if (v317)
                  {
                    v319 = v317;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 323, "oqueue->has_meta", v319);
                  goto LABEL_403;
                }

                v342 = v229;
                v237 = v213;
                v238 = v235;
                v239 = *(v349 + 2);
                v240 = *(v239 + v236);
                v241 = *(v239 + 16 * v358 + 8);
                v242 = v237[v358];
                LODWORD(v239) = *v242;
                v243 = *(v242 + 2);
                if (v239)
                {
                  v244 = v226;
                }

                else
                {
                  v244 = v227;
                }

                v245 = *(v243 + v244);
                v246 = instr_retain(v235);
                if ((*v357 & 1) == 0)
                {
                  v320 = __si_assert_copy_extra_332();
                  v318 = v320;
                  v321 = "";
                  if (v320)
                  {
                    v321 = v320;
                  }

                  __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 589, "oqueue->has_meta", v321);
                  goto LABEL_403;
                }

                v247 = v246;
                v344 = v230;
                if (*(v357 + 14))
                {
                  if (v357[8] < v240)
                  {
                    v326 = __si_assert_copy_extra_332();
                    v315 = v326;
                    v327 = "";
                    if (v326)
                    {
                      v327 = v326;
                    }

                    v328 = "!queue->split || queue->splitPoint >= PositionOffsetWithMeta_t_GET_VALUE(value)";
LABEL_414:
                    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 509, v328, v327);
LABEL_415:
                    free(v315);
                    if (__valid_fs(-1))
                    {
                      v329 = 2989;
                    }

                    else
                    {
                      v329 = 3072;
                    }

                    *v329 = -559038737;
                    abort();
                  }

                  if (v357[4] >= v357[3])
                  {
                    v337 = __si_assert_copy_extra_332();
                    v315 = v337;
                    v327 = "";
                    if (v337)
                    {
                      v327 = v337;
                    }

                    v328 = "!queue->split";
                    goto LABEL_414;
                  }

                  v248 = *v350;
                  v249 = v357[4];
                }

                else
                {
                  v251 = v357[3];
                  v252 = v357[2];
                  if (v357[4] >= v251)
                  {
                    v253 = 2 * v251;
                    v254 = v251 == 0;
                    v255 = 4;
                    if (!v254)
                    {
                      v255 = v253;
                    }

                    v357[3] = v255;
                    v256 = 24 * v255;
                    if (v252)
                    {
                      v257 = malloc_type_zone_realloc(queryZone, v252, v256, 0xA1A7ADA0uLL);
                    }

                    else
                    {
                      v257 = malloc_type_zone_malloc(queryZone, v256, 0x566E289CuLL);
                    }

                    v248 = v257;
                    if (!v257)
                    {
                      _log_fault_for_malloc_failure();
                    }

                    *v350 = v248;
                    v249 = *v351;
                  }

                  else
                  {
                    v249 = v357[4];
                    v248 = v357[2];
                  }
                }

                *v351 = v249 + 1;
                v258 = &v248[24 * v249];
                *v258 = v240;
                *(v258 + 1) = v238;
                *(v258 + 2) = v241;
                *buf = v245;
                *&buf[8] = v247;
                *&buf[16] = 0u;
                v402 = 0u;
                v403 = 0;
                oqpush_AnnotatedPositionOffset_t(v355, buf);
                v250 = v342 + 1;
                v15 = v384;
                v213 = v379;
                v230 = v344;
              }

              else
              {
                v250 = v229;
              }

              v229 = v250;
              v227 += 8;
              v226 += 16;
              v212 = v250;
              v228 = v230 - 1;
              if (v230 == 1)
              {
                goto LABEL_249;
              }
            }
          }
        }

        else if (v206 >= 1)
        {
          v259 = 0;
          v260 = 0;
          v261 = v206;
          v262 = v348;
          v213 = v211;
          while (1)
          {
            v263 = v261;
            v264 = v260;
            v265 = v213[v358];
            v266 = *v265;
            v267 = *(v265 + 2);
            if (v266)
            {
              v268 = v260;
            }

            else
            {
              v268 = v259;
            }

            if (*(v267 + v268))
            {
              v269 = CIIndexSetCreateWithRange(0, v363, 1);
              v270 = v213;
              v271 = v269;
              if (*v349)
              {
                v272 = v260;
              }

              else
              {
                v272 = v259;
              }

              v273 = *(*(v349 + 2) + v272);
              v274 = v270;
              v275 = v270[v358];
              v276 = *v275;
              v277 = *(v275 + 2);
              v343 = v264;
              if (v276)
              {
                v278 = v264;
              }

              else
              {
                v278 = v259;
              }

              v279 = *(v277 + v278);
              v280 = instr_retain(v269);
              if (*v357 == 1)
              {
                v314 = __si_assert_copy_extra_332();
                v315 = v314;
                v316 = "";
                if (v314)
                {
                  v316 = v314;
                }

                __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 583, "!oqueue->has_meta", v316);
                goto LABEL_415;
              }

              v281 = v280;
              if (*(v357 + 14))
              {
                if (v357[8] < v273)
                {
                  v323 = __si_assert_copy_extra_332();
                  v315 = v323;
                  v324 = "";
                  if (v323)
                  {
                    v324 = v323;
                  }

                  v325 = "!queue->split || queue->splitPoint >= JustPositionOffset_t_GET_VALUE(value)";
                  goto LABEL_410;
                }

                if (v357[4] >= v357[3])
                {
                  v336 = __si_assert_copy_extra_332();
                  v315 = v336;
                  v324 = "";
                  if (v336)
                  {
                    v324 = v336;
                  }

                  v325 = "!queue->split";
LABEL_410:
                  __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 500, v325, v324);
                  goto LABEL_415;
                }

                v282 = *v350;
                v283 = v357[4];
              }

              else
              {
                v284 = v357[3];
                v282 = v357[2];
                if (v357[4] >= v284)
                {
                  v341 = v262;
                  v285 = 2 * v284;
                  v254 = v284 == 0;
                  v286 = 4;
                  if (!v254)
                  {
                    v286 = v285;
                  }

                  v357[3] = v286;
                  v287 = 16 * v286;
                  if (v282)
                  {
                    v288 = malloc_type_zone_realloc(queryZone, v282, v287, 0xA1A7ADA0uLL);
                  }

                  else
                  {
                    v288 = malloc_type_zone_malloc(queryZone, v287, 0x566E289CuLL);
                  }

                  v289 = v288;
                  if (!v288)
                  {
                    _log_fault_for_malloc_failure();
                  }

                  *v350 = v289;
                  v283 = *v351;
                  v282 = v289;
                  v274 = v379;
                  v262 = v341;
                }

                else
                {
                  v283 = v357[4];
                }
              }

              *v351 = v283 + 1;
              v290 = &v282[16 * v283];
              *v290 = v273;
              *(v290 + 1) = v271;
              ++v262;
              *buf = v279;
              *&buf[8] = v281;
              *&buf[16] = 0u;
              v402 = 0u;
              v403 = 0;
              oqpush_AnnotatedPositionOffset_t(v355, buf);
              v15 = v384;
              v213 = v274;
              v264 = v343;
            }

            v259 += 8;
            v260 = v264 + 16;
            v212 = v262;
            v261 = v263 - 1;
            if (v263 == 1)
            {
              goto LABEL_249;
            }
          }
        }
      }

      v212 = v348;
      v213 = v211;
LABEL_249:
      free(*(v349 + 2));
      free(*(v213[v358] + 16));
      free(v213[v358]);
      v213[v358] = 0;
      v214 = *(v365[v358] + 64);
      v215 = *(a1 + 80);
      v216 = atomic_load((a1 + 36));
      *(v214 + 120) = *v357;
      v217 = *(v357 + 1);
      v218 = *(v357 + 2);
      v219 = *(v357 + 3);
      *(v214 + 184) = v357[8];
      *(v214 + 168) = v219;
      *(v214 + 152) = v218;
      *(v214 + 136) = v217;
      *(v214 + 192) = 0;
      *(v214 + 208) = xmmword_1C2BFA690;
      v220 = malloc_type_zone_malloc(queryZone, 0x120uLL, 0xA4971684uLL);
      if (!v220 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(v214 + 200) = v220;
      *v220 = 0;
      v220[1] = 0;
      *(v214 + 40) = PayloadIterate__Positions;
      *(v214 + 48) = 0;
      *(v214 + 56) = PayloadIterator__Positions_UpdateSet;
      *(v214 + 224) = 0;
      *(v214 + 232) = 0;
      *(v214 + 80) = (v216 & 4) != 0;
      *(v214 + 8) = 0;
      *(v214 + 16) = 0;
      *v214 = 0;
      *(v214 + 96) = 0;
      *(v214 + 104) = v215;
      *(v214 + 88) = CIIndexSetCreateWithRange(0, v363, 0);
      *(v214 + 81) = 0;
      CICleanUpClearItem(v339, v352);
      v221 = malloc_type_zone_malloc(queryZone, 0xC8uLL, 0xA4971684uLL);
      v13 = v386;
      if (!v221)
      {
        _log_fault_for_malloc_failure();
      }

      *(v365[v358] + 72) = v221;
      v222 = *(v365[v358] + 72);
      v223 = *v355;
      v224 = v355[1];
      v225 = v355[2];
      *(v222 + 104) = v355[3];
      *(v222 + 88) = v225;
      *(v222 + 72) = v224;
      *(v222 + 56) = v223;
      *(v222 + 128) = xmmword_1C2BF7A50;
      *(v222 + 120) = 0;
      *v222 = xmmword_1C2BFA6A0;
      *(v222 + 144) = 0;
      *(v222 + 40) = 0;
      *(v222 + 148) = 0;
      *(v222 + 48) = 0;
      *(v222 + 160) = 0;
      *(v222 + 168) = 0;
      *(v222 + 16) = 0;
      *(v222 + 24) = 0;
      *(v222 + 176) = 0;
      *(v222 + 184) = 0;
      *(*(v365[v358] + 72) + 192) = v368;
      CICleanUpClearItem(v339, v353);
      v397 = v358 + 1;
      free(v357);
      free(v355);
      CICleanUpClearItem(v339, v356);
      CICleanUpClearItem(v339, v354);
      CICleanUpReset(v339, v338);
      v183 = v358 + 1;
      v198 = v212;
      v182 = a1;
      v40 = v382;
      i = v381;
      v185 = v379;
    }

    else
    {
      v189 = i;
      v190 = *(v365[v183] + 64);
      v191 = &v189[72 * v183];
      v192 = *(v182 + 80);
      v193 = atomic_load((v182 + 36));
      *(v190 + 160) = *v191;
      v194 = *(v191 + 1);
      v195 = *(v191 + 2);
      v196 = *(v191 + 3);
      *(v190 + 224) = *(v191 + 8);
      *(v190 + 192) = v195;
      *(v190 + 208) = v196;
      *(v190 + 176) = v194;
      *(v190 + 232) = 0;
      *(v190 + 248) = xmmword_1C2BFA370;
      v197 = malloc_type_zone_malloc(queryZone, 0x110uLL, 0xA4971684uLL);
      if (!v197 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(v190 + 240) = v197;
      *v197 = 0;
      *(v190 + 40) = PayloadIterate;
      *(v190 + 48) = PayloadIterator_ConsumeUpdates;
      *(v190 + 56) = PayloadIterate_UpdateSet;
      *(v190 + 112) = v192;
      *(v190 + 80) = (v193 & 4) != 0;
      *(v190 + 8) = 0;
      *(v190 + 16) = 0;
      *v190 = 0;
      *(v190 + 88) = CIIndexSetCreateWithRange(0, v363, 0);
      *(v190 + 96) = CIIndexSetCreateWithRange(0, v363, 0);
      *(v190 + 104) = 0;
      *(v190 + 81) = 0;
      *(v190 + 64) = 0;
      *(v190 + 128) = 0u;
      *(v190 + 144) = 0u;
      v183 = v186 + 1;
      v198 = v348;
      v397 = v186 + 1;
      i = v381;
      v185 = v379;
      v182 = a1;
    }

    v184 = v198;
    v181 = v376;
  }

  while (v183 < v340);
  v41 = &qword_1EDD81000;
  if (v198 && (*a9 & 1) == 0 && dword_1EBF46AD0 >= 5)
  {
    v334 = *__error();
    v335 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v335, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = v198;
      _os_log_impl(&dword_1C278D000, v335, OS_LOG_TYPE_DEFAULT, "### position index set count %p %ld", buf, 0x16u);
    }

    *__error() = v334;
    v13 = v386;
    v15 = v384;
    v40 = v382;
    i = v381;
    v181 = v376;
    if (!v376)
    {
      goto LABEL_339;
    }

LABEL_328:
    if (*a9)
    {
      goto LABEL_339;
    }

    if (v377)
    {
      v291 = a6;
    }

    else
    {
      v291 = 0;
    }

    if ((termUpdateSetResolveQueryInfo(v181, v362, v366, v38, 0, v291, 0) & 1) == 0)
    {
      if (v40 >= 1)
      {
        v293 = v40;
        v294 = v365;
        do
        {
          if (*(*v294 + 48) == 8)
          {
            atomic_fetch_add(v376, 1u);
            *(*v294 + 80) = v376;
            *(*v294 + 96) = TermUpdateSetRelease;
          }

          ++v294;
          --v293;
        }

        while (v293);
      }

      goto LABEL_339;
    }

    v292 = 1;
  }

  else
  {
LABEL_327:
    if (v181)
    {
      goto LABEL_328;
    }

LABEL_339:
    v292 = 0;
  }

  if (v375)
  {
    if ((*a9 & 1) == 0)
    {
      termUpdateSetResolveQueryInfo(v375, v362, v366, v38, 1, 0, 0);
      if (v40 >= 1)
      {
        v295 = v40;
        v296 = v365;
        do
        {
          if (*(*v296 + 48) == 8)
          {
            atomic_fetch_add(v375, 1u);
            *(*v296 + 88) = v375;
            *(*v296 + 96) = TermUpdateSetRelease;
          }

          ++v296;
          --v295;
        }

        while (v295);
      }
    }
  }

  v177 = v363;
  v58 = v292;
LABEL_348:
  v65 = v177;
  v297 = threadData[9 * v391 + 1] + 320 * v390;
  *(v297 + 312) = v369;
  v298 = *(v297 + 232);
  if (v298)
  {
    v298(*(v297 + 288));
  }

  dropThreadId(v391, 0, v370 + 1);
LABEL_351:
  v299 = threadData[9 * v395 + 1] + 320 * v394;
  *(v299 + 312) = v371;
  v300 = *(v299 + 232);
  if (v300)
  {
    v300(*(v299 + 288));
  }

  dropThreadId(v395, 0, add_explicit + 1);
  v57 = v65;
  v55 = a9;
LABEL_354:
  free(v365);
  if ((*v55 & 1) != 0 || v58 & 1 | ((v396 & 1) == 0))
  {
    v396 = 0;
    if (v15 >= 1)
    {
      v301 = v13;
      v302 = v15;
      do
      {
        if (*v301)
        {
          ContentIndexDocSetDispose(*v301);
          *v301 = 0;
        }

        ++v301;
        --v302;
      }

      while (v302);
    }

    if (v379 && size >= 1)
    {
      v303 = size;
      v304 = v379;
      do
      {
        if (*v304)
        {
          free(*(*v304 + 2));
          free(*v304);
          *v304 = 0;
        }

        ++v304;
        --v303;
      }

      while (v303);
    }

    for (i = v381; v397 < v40; ++v397)
    {
      free(*&v381[72 * v397 + 16]);
    }

    v55 = a9;
    if (v400)
    {
      finalizePayloadData(v400);
      v400 = 0;
    }

    if (v399)
    {
      finalizePayloadData(v399);
      v399 = 0;
    }

    if (v398)
    {
      posreadunlock(v398);
    }

    v398 = 0;
  }

  if (v376)
  {
    TermUpdateSetRelease(v376);
  }

  if (v375)
  {
    TermUpdateSetRelease(v375);
  }

  free(v379);
  free(v39);
  free(v38);
  free(i);
  free(v366);
  if (v396 != 1)
  {
    return 0;
  }

  if (v58)
  {
    return __CIMatchQueryNodesLazy(a1, a2, v15, v385, v13, 0, v378, 0, v55, a10);
  }

  v307 = v41;
  v309 = v399;
  v308 = v400;
  v310 = v398;
  v305 = malloc_type_zone_malloc(v307[58], 0x30uLL, 0xA4971684uLL);
  if (!v305 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  atomic_store(1u, v305);
  *(v305 + 1) = v308;
  *(v305 + 2) = v309;
  *(v305 + 3) = v310;
  v305[8] = v380;
  v305[9] = v57;
  *(v305 + 40) = v377;
  *(v305 + 41) = v378;
  if (!v308 && v57)
  {
    v311 = *__error();
    v312 = _SILogForLogForCategory(10);
    v313 = 2 * (dword_1EBF46AF4 < 4);
    if (os_log_type_enabled(v312, v313))
    {
      *buf = 67109120;
      *&buf[4] = v57;
      _os_log_impl(&dword_1C278D000, v312, v313, "null payloadData with payloadCount %u", buf, 8u);
    }

    *__error() = v311;
  }

  return v305;
}