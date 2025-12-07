void normalizeParseTreePrepend(int **a1, const void *a2)
{
  if (!a1)
  {
    return;
  }

  v3 = a1;
  while (1)
  {
    v4 = *(v3 + 2);
    if (v4 > 3)
    {
      break;
    }

    if (v4 <= 1)
    {
      if (v4)
      {
        if (v4 == 1)
        {

          nodeAppend(v3, a2);
        }

        return;
      }

      goto LABEL_15;
    }

    if (v4 == 2)
    {
      normalizeParseTreePrepend(v3[3], a2);
LABEL_15:
      v5 = v3[2];
      goto LABEL_16;
    }

    v5 = v3[2];
    if (!v5)
    {
      v5 = v3[3];
      if (!v5)
      {
        goto LABEL_26;
      }
    }

LABEL_16:
    v3 = v5;
    if (!v5)
    {
      return;
    }
  }

  if (v4 != 4)
  {
    if (v4 != 5)
    {
      if ((v4 - 6) >= 2)
      {
        return;
      }

LABEL_26:

      nodePrepend(v3, a2);
      return;
    }

    goto LABEL_15;
  }

  v5 = v3[2];
  if (v5)
  {
    goto LABEL_16;
  }

  v5 = v3[3];
  if (v5)
  {
    goto LABEL_16;
  }

  v6 = **v3;
  if (v6 == 10)
  {
    v8 = malloc_type_malloc(0x20uLL, 0x1060040C3D0B2E6uLL);
    v8[12] = 1;
    *(v8 + 1) = 0;
    *v8 = 0;
    *(v8 + 1) = CFRetain(a2);
    *v8 = 0;
    v9 = *(*v3 + 1);

    CFArrayInsertValueAtIndex(v9, 0, v8);
  }

  else if (!v6)
  {
    v7 = *(*v3 + 1);
    *(*v3 + 1) = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%@", a2, v7);

    CFRelease(v7);
  }
}

CFStringRef __MDQueryStringCreateForRanking(const __CFString *a1, const __CFString *a2, int a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v22[0] = 0;
  if (a1)
  {
    CStringFromString = _createCStringFromString(a1);
  }

  else
  {
    CStringFromString = 0;
  }

  v6 = _MDQueryNodeCreate(a2, v22);
  if (v6)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = ____MDQueryStringCreateForRanking_block_invoke;
    v15[3] = &unk_1E7B25C20;
    v15[4] = &v17;
    v15[5] = CStringFromString;
    v16 = a3;
    db_query_tree_apply_block(v6, v15, &__block_literal_global_101);
    v8 = v7;
    v21 = v7;
    free(CStringFromString);
    if ((v18[3] & 1) != 0 && (cStr = malloc_type_malloc(0x400uLL, 0x79A10863uLL)) != 0)
    {
      tree = _db_render_query_tree(&v21);
      v10 = MEMORY[0x1E695E480];
      if (tree)
      {
        v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
      }

      else
      {
        v11 = 0;
      }

      free(cStr);
      db_free_query_node(v21);
      if ((a3 & 0x10000) != 0 && v11)
      {
        v13 = CFStringCreateWithFormat(*v10, 0, @"!(%@)", v11);
        CFRelease(v11);
        v11 = v13;
      }
    }

    else
    {
      db_free_query_node(v8);
      v11 = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    free(CStringFromString);
    return 0;
  }

  return v11;
}

void *_createCStringFromString(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x62D37149uLL);
  if (!CFStringGetCString(a1, v4, MaximumSizeForEncoding, 0x8000100u))
  {
    free(v4);
    return 0;
  }

  return v4;
}

void *_MDQueryNodeCreate(const __CFString *a1, const char **a2)
{
  CStringFromString = _createCStringFromString(a1);
  if (!CStringFromString)
  {
    return 0;
  }

  v4 = CStringFromString;
  v5 = *CStringFromString;
  v6 = "$";
  v7 = 1;
  v8 = "@";
  if (v5 != 64)
  {
    v8 = 0;
  }

  if (v5 != 36)
  {
    v7 = v5 == 64;
    v6 = v8;
  }

  v9 = v5 == 35;
  v10 = v5 == 35 || v7;
  if (v9)
  {
    v11 = "#";
  }

  else
  {
    v11 = v6;
  }

  query_node = db_make_query_node(&CStringFromString[v10]);
  free(v4);
  if (query_node && a2)
  {
    *a2 = v11;
  }

  return query_node;
}

void remove_outside_stars(const char **a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = strlen(*a1);
    if (v3 >= 2)
    {
      v4 = &v2[v3];
      if (v2[v3 - 1] == 42 && *(v4 - 2) != 92)
      {
        *(v4 - 1) = 0;
      }
    }
  }

  remove_leading_star(a1);
}

void add_trailing_star(char **a1)
{
  v2 = *a1;
  v3 = strlen(*a1);
  if (v3 < 2 || v2[v3 - 1] != 42 || v2[v3 - 2] == 92)
  {
    v2[v3] = 42;
    v2 = *a1;
  }

  v4 = strndup(v2, v3 + 1);
  free(v2);
  *a1 = v4;
}

void remove_leading_star(char **a1)
{
  v1 = *a1;
  if (*a1 && *v1 == 42)
  {
    if (v1[1])
    {
      v3 = strdup(v1 + 1);
      free(v1);
      *a1 = v3;
    }
  }
}

CFMutableStringRef __MDQueryStringCopyUserInput(const __CFString *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v1 = _MDQueryNodeCreate(a1, v9);
  Mutable = v1;
  if (v1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2000000000;
    v8 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ____MDQueryStringCopyUserInput_block_invoke;
    v4[3] = &unk_1E7B25C68;
    v4[4] = &v5;
    db_query_tree_apply_block(v1, v4, 0);
    db_free_query_node(Mutable);
    if (v6[3])
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      CFStringAppendCString(Mutable, v6[3], 0x8000100u);
      CFStringTrim(Mutable, @"*");
      free(v6[3]);
    }

    else
    {
      Mutable = 0;
    }

    _Block_object_dispose(&v5, 8);
  }

  return Mutable;
}

__CFDictionary *__MDQueryCreateQueryDictionaryWithOptionsDict(const __CFString *a1, CFStringRef theString, __CFString *a3, unsigned int a4, uint64_t a5, uint64_t (*a6)())
{
  v160 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  v13 = MEMORY[0x1E695E480];
  v87 = Length;
  if (Length < 2049)
  {
    v93 = theString;
  }

  else
  {
    v161.location = 0;
    v161.length = 2048;
    v93 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v161);
  }

  v94 = a3;
  v14 = 0;
  v15 = 0;
  v155 = 0;
  v16 = 1;
  v85 = a1;
  v86 = a6;
  if (a1)
  {
    v89 = 0;
    v90 = 0;
    v17 = 0;
    v91 = 0;
    v92 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v89 = 0;
    v90 = 0;
    v17 = 0;
    v91 = 0;
    v92 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if ((a4 & 0x10) == 0)
    {
      _init_parser(v94);
      if (gQueryParserEnabled == 1)
      {
        _qpUpdateParserOptions(v94, 1);
        v23 = pthread_mutex_lock(&gQueryParserLock);
        v81 = a5;
        if (gQueryParser)
        {
          rescheduleAutomaticCooldown_Locked(v23);
          v24 = (a4 >> 12) & 1;
          if (qpEntitySearch)
          {
            v24 = 1;
          }

          LODWORD(v97) = v24;
          v151 = 0;
          v152 = &v151;
          v153 = 0x2000000000;
          v25 = *v13;
          Mutable = CFStringCreateMutable(*v13, 0);
          v147 = 0;
          v148 = &v147;
          v149 = 0x2000000000;
          v26 = MEMORY[0x1E695E9C0];
          v150 = CFArrayCreateMutable(v25, 0, MEMORY[0x1E695E9C0]);
          v143 = 0;
          v144 = &v143;
          v145 = 0x2000000000;
          v146 = CFArrayCreateMutable(v25, 0, v26);
          v139 = 0;
          v140 = &v139;
          v141 = 0x2000000000;
          v142 = CFArrayCreateMutable(v25, 0, v26);
          v135 = 0;
          v136 = &v135;
          v137 = 0x2000000000;
          v138 = CFArrayCreateMutable(v25, 0, v26);
          v131 = 0;
          v132 = &v131;
          v133 = 0x2000000000;
          v27 = MEMORY[0x1E695E9D8];
          v28 = MEMORY[0x1E695E9E8];
          v134 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v127 = 0;
          v128 = &v127;
          v129 = 0x2000000000;
          v130 = CFDictionaryCreateMutable(v25, 0, v27, v28);
          v123 = 0;
          v124 = &v123;
          v125 = 0x2000000000;
          v126 = 0;
          v119 = 0;
          v120 = &v119;
          v121 = 0x2000000000;
          v122 = -1;
          v118[0] = 0;
          v118[1] = v118;
          v118[2] = 0x2000000000;
          v118[3] = 100;
          v114 = 0;
          v115 = &v114;
          v116 = 0x2000000000;
          v117 = 0;
          v110 = 0;
          v111 = &v110;
          v112 = 0x2000000000;
          v113 = 0;
          v106 = 0;
          v107 = &v106;
          v108 = 0x2000000000;
          v109 = 0;
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 0x40000000;
          v105[2] = ____MDQueryCreateQueryDictionaryWithOptionsDict_block_invoke;
          v105[3] = &unk_1E7B25C90;
          v105[4] = &v114;
          v105[5] = &v151;
          v105[6] = v118;
          v105[7] = &v131;
          v105[8] = &v139;
          v105[9] = &v135;
          v105[10] = &v127;
          v105[11] = &v123;
          v105[12] = &v119;
          v105[13] = &v147;
          v105[14] = &v110;
          v105[15] = &v106;
          v104[0] = MEMORY[0x1E69E9820];
          v104[1] = 0x40000000;
          v104[2] = ____MDQueryCreateQueryDictionaryWithOptionsDict_block_invoke_2;
          v104[3] = &unk_1E7B25CB8;
          v104[4] = &v143;
          v29 = gQueryParser;
          if (v97)
          {
            v30 = 0;
          }

          else
          {
            v30 = v104;
          }

          valuePtr = 0;
          p_valuePtr = &valuePtr;
          v158 = 0x2000000000;
          v31 = getQPQueryParserParseSymbolLoc_ptr;
          v159 = getQPQueryParserParseSymbolLoc_ptr;
          if (!getQPQueryParserParseSymbolLoc_ptr)
          {
            v98 = MEMORY[0x1E69E9820];
            v99 = 0x40000000;
            v100 = __getQPQueryParserParseSymbolLoc_block_invoke;
            *&v101 = &unk_1E7B25FB8;
            *(&v101 + 1) = &valuePtr;
            ParserLibrary = QueryParserLibrary();
            p_valuePtr[3] = dlsym(ParserLibrary, "QPQueryParserParse");
            getQPQueryParserParseSymbolLoc_ptr = *(*(*(&v101 + 1) + 8) + 24);
            v31 = p_valuePtr[3];
          }

          _Block_object_dispose(&valuePtr, 8);
          if (!v31)
          {
            __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
          }

          v14 = (v31)(v29, v94, v93, v105, v30);
          v22 = v152[3];
          v95 = v148[3];
          v33 = v144[3];
          v90 = v140[3];
          v91 = v136[3];
          v92 = v33;
          v34 = v132[3];
          v20 = v128[3];
          v35 = v124[3];
          v155 = v120[3];
          v15 = *(v115 + 6);
          v16 = v15 == 0;
          v36 = v111[3];
          v37 = v107[3];
          v88 = v35;
          v89 = v37;
          _Block_object_dispose(&v106, 8);
          _Block_object_dispose(&v110, 8);
          _Block_object_dispose(&v114, 8);
          _Block_object_dispose(v118, 8);
          _Block_object_dispose(&v119, 8);
          _Block_object_dispose(&v123, 8);
          _Block_object_dispose(&v127, 8);
          _Block_object_dispose(&v131, 8);
          _Block_object_dispose(&v135, 8);
          _Block_object_dispose(&v139, 8);
          _Block_object_dispose(&v143, 8);
          _Block_object_dispose(&v147, 8);
          _Block_object_dispose(&v151, 8);
          v13 = MEMORY[0x1E695E480];
        }

        else
        {
          v16 = 1;
          v15 = 0;
          v14 = 0;
          v88 = 0;
          v89 = 0;
          v36 = 0;
          v91 = 0;
          v92 = 0;
          v95 = 0;
          v20 = 0;
          v34 = 0;
          v90 = 0;
          v22 = 0;
        }

        pthread_mutex_unlock(&gQueryParserLock);
        v18 = v95;
        v21 = v34;
        a5 = v81;
        v19 = v88;
        v17 = v36;
      }

      else
      {
        v15 = 0;
        v14 = 0;
        v89 = 0;
        v90 = 0;
        v17 = 0;
        v91 = 0;
        v92 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v16 = 1;
      }
    }
  }

  v82 = v17;
  v88 = v19;
  v83 = v16;
  v96 = v21;
  v97 = v20;
  v95 = v18;
  v38 = __MDCopyTokensFromString(v93);
  v39 = parseUserQuery(v38, a5);
  CFRelease(v38);
  v40 = normalizeParseTree(v39);
  PTNodeDestroy(v39);
  v41 = *v13;
  v42 = CFStringCreateMutable(v41, 0);
  v102 = 0u;
  v103 = 0u;
  BYTE8(v103) = a4 & 1;
  BYTE9(v103) = (a4 & 2) != 0;
  BYTE10(v103) = (a4 & 4) != 0;
  BYTE11(v103) = (a4 & 8) != 0;
  v101 = 0u;
  BYTE12(v103) = (a4 & 0x80000) != 0;
  v98 = v85;
  v99 = a5;
  v100 = v86;
  *&v101 = CFArrayCreateMutable(v41, 0, MEMORY[0x1E695E9C0]);
  v43 = v22;
  if (v94)
  {
    Value = CFDictionaryGetValue(v94, @"kMDQueryOptionFinderLabelsDict");
    if (Value)
    {
      *&v102 = Value;
    }

    v45 = CFDictionaryGetValue(v94, @"kMDQueryOptionFinderLabelsDictLocale");
    if (v45)
    {
      *(&v102 + 1) = v45;
    }
  }

  renderParseTreeToQuery(v40, v42, &v98);
  PTNodeDestroy(v40);
  if (*(&v101 + 1))
  {
    CFRelease(*(&v101 + 1));
  }

  v46 = CFDictionaryCreateMutable(v41, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v47 = v15;
  if (v87 < 2049)
  {
    if (v43)
    {
      goto LABEL_30;
    }

LABEL_44:
    v43 = CFRetain(v42);
    if (!v14)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  CFRelease(v93);
  if (!v43)
  {
    goto LABEL_44;
  }

LABEL_30:
  if (v14)
  {
LABEL_31:
    CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryInputAttributesKey", v14);
    CFRelease(v14);
  }

LABEL_32:
  CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryNLPStringKey", v43);
  CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryDefaultStringKey", v42);
  if ((BYTE13(v103) & 1) != 0 || CFArrayGetCount(v101))
  {
    CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryKindKey", @"kMDQueryAdvancedSyntaxQuery");
  }

  if (CFArrayGetCount(v101))
  {
    CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryAdvancedComponentsKey", v101);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  v84 = v15;
  v48 = @"kMDUserQueryDictionaryQueryStringKey";
  v49 = v46;
  if (v15 < 2)
  {
    v51 = v42;
LABEL_57:
    CFDictionarySetValue(v49, v48, v51);
    goto LABEL_58;
  }

  CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryStringKey", v43);
  v50 = v96;
  if (!v96)
  {
    v96 = 0;
    if (v47 != 3 || !v43)
    {
      goto LABEL_52;
    }

    v52 = CFDictionaryCreateMutable(v41, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    valuePtr = 0;
    v53 = CFNumberCreate(v41, kCFNumberCFIndexType, &valuePtr);
    if (!v53 || (v54 = v53, CFDictionarySetValue(v52, v43, v53), CFRelease(v54), (v50 = v52) == 0))
    {
      v96 = 0;
      goto LABEL_52;
    }
  }

  v96 = v50;
  if (CFDictionaryGetCount(v50))
  {
    CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryRankingTermsKey", v50);
  }

LABEL_52:
  if (v97 && CFDictionaryGetCount(v97))
  {
    CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryRankingCategoriesKey", v97);
  }

  v51 = v95;
  if (v95)
  {
    v48 = @"kMDUserQueryDictionaryQuerySuggestionsKey";
    v49 = v46;
    goto LABEL_57;
  }

LABEL_58:
  v55 = MEMORY[0x1E695E4D0];
  v56 = MEMORY[0x1E695E4C0];
  if (!qpOnDeviceQueryUnderstanding || (v57 = *MEMORY[0x1E695E4D0], CFNumberCompare(qpOnDeviceQueryUnderstanding, *MEMORY[0x1E695E4D0], 0)))
  {
    v57 = *v56;
  }

  v94 = v42;
  if (qpLLMQueryUnderstanding && (v58 = *v55, CFNumberCompare(qpLLMQueryUnderstanding, *v55, 0) == kCFCompareEqualTo))
  {
    v59 = v56;
  }

  else
  {
    v59 = v56;
    v58 = *v56;
  }

  v60 = v43;
  if (CFBooleanGetValue(v57))
  {
    v61 = 1;
  }

  else
  {
    v61 = CFBooleanGetValue(v58) != 0;
  }

  v62 = v82;
  if (!v82 && v61)
  {
    v62 = CFDictionaryCreateMutable(v41, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (v62)
  {
    if (v61)
    {
      v63 = v41;
      v64 = v62;
      Count = CFDictionaryGetCount(v62);
      MutableCopy = CFDictionaryCreateMutableCopy(v63, Count + 2, v64);
      v67 = v64;
      v41 = v63;
      CFRelease(v67);
      CFDictionaryAddValue(MutableCopy, @"u2Enabled", v57);
      CFDictionaryAddValue(MutableCopy, @"useLLMParse", v58);
      Copy = CFDictionaryCreateCopy(v63, MutableCopy);
      CFRelease(MutableCopy);
    }

    else
    {
      Copy = v62;
    }

    CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryUnderstandingOutputKey", Copy);
    CFRelease(Copy);
    if (v97)
    {
      if (CFDictionaryGetCount(v97))
      {
        CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryRankingCategoriesKey", v97);
      }
    }
  }

  if (v92)
  {
    CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryUniversalSuggestionsKey", v92);
  }

  CFRelease(v60);
  CFRelease(v94);
  if (v83)
  {
    v69 = v59;
  }

  else
  {
    v69 = v55;
  }

  CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryLanguageSupportedKey", *v69);
  if (v89)
  {
    CFDictionarySetValue(v46, @"kMDUserQueryDictionaryEntitySearchParseKey", v89);
    CFRelease(v89);
  }

  v70 = CFNumberCreate(v41, kCFNumberCFIndexType, &v155);
  CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryTokenCountKey", v70);
  CFRelease(v70);
  v71 = v88;
  if (v90)
  {
    if (CFArrayGetCount(v90))
    {
      CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryAttributedInputKey", v90);
    }

    CFRelease(v90);
  }

  if (v91)
  {
    if (CFArrayGetCount(v91))
    {
      CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryAttributedInputSourcesKey", v91);
    }

    CFRelease(v91);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v84 - 1 > 2)
  {
    v72 = @"kMDUserQueryDictionaryQueryConfidenceNoneValue";
  }

  else
  {
    v72 = off_1E7B260D0[v84 - 1];
  }

  CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryConfidenceKey", v72);
  if (v88)
  {
    v73 = CFDictionaryCreateMutable(v41, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v74 = CFDictionaryGetCount(v88);
    MEMORY[0x1EEE9AC00](v74);
    v76 = (&v80 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v76, v75);
    CFDictionaryGetKeysAndValues(v71, v76, 0);
    if (v74 >= 1)
    {
      do
      {
        v77 = *v76;
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v77, kCFNumberIntType, &valuePtr))
        {
          if (valuePtr == 2)
          {
            v78 = @"kMDUserQueryDictionaryQueryDisplayCriteriaSortOrderMaxValue";
            goto LABEL_111;
          }

          if (valuePtr == 1)
          {
            v78 = @"kMDUserQueryDictionaryQueryDisplayCriteriaSortOrderMinValue";
LABEL_111:
            CFDictionarySetValue(v73, @"kMDUserQueryDictionaryQueryDisplayCriteriaSortOrderKey", v78);
          }
        }

        ++v76;
        --v74;
      }

      while (v74);
    }

    if (CFDictionaryGetCount(v73))
    {
      CFDictionarySetValue(v73, @"kMDUserQueryDictionaryQueryDisplayCriteriaSortFieldKey", @"kMDUserQueryDictionaryQueryDisplayCriteriaSortFieldDateValue");
      CFDictionarySetValue(v46, @"kMDUserQueryDictionaryQueryDisplayCriteriaKey", v73);
    }

    CFRelease(v71);
    CFRelease(v73);
  }

  return v46;
}

void _init_parser(uint64_t a1)
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = ___init_parser_block_invoke;
  v1[3] = &__block_descriptor_tmp_388;
  v1[4] = a1;
  if (_init_parser_once != -1)
  {
    dispatch_once(&_init_parser_once, v1);
  }
}

uint64_t _qpUpdateParserOptions(const __CFDictionary *a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&gQueryParserOptionsLock);
  if (a1 && CFDictionaryContainsKey(a1, @"kMDQueryOptionContextIdentifier"))
  {
    Value = CFDictionaryGetValue(a1, @"kMDQueryOptionContextIdentifier");
    if (!Value)
    {
LABEL_6:
      if (getClientBundleIdentifier_once != -1)
      {
        _qpUpdateParserOptions_cold_1();
      }

      Value = getClientBundleIdentifier_identifier;
      if (!getClientBundleIdentifier_identifier)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    Value = qpContextIdentifier;
    if (!qpContextIdentifier)
    {
      goto LABEL_6;
    }
  }

  if (!qpContextIdentifier)
  {
LABEL_13:
    qpContextIdentifier = CFRetain(Value);
    if (!a1)
    {
LABEL_115:
      v38 = sQPQueryParserCopyDefaultOptionsForContext(qpContextIdentifier);
      if (v38)
      {
        v39 = v38;
        if (gQueryParserOptions)
        {
          CFRelease(gQueryParserOptions);
          gQueryParserOptions = 0;
        }

        v40 = *MEMORY[0x1E695E480];
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v39);
        v42 = MutableCopy;
        if (qpTimeZoneReference)
        {
          CFDictionarySetValue(MutableCopy, @"referenceTimezone", qpTimeZoneReference);
        }

        if (qpDateReference)
        {
          CFDictionarySetValue(v42, @"referenceDate", qpDateReference);
        }

        if (qpPrivateParsing)
        {
          CFDictionarySetValue(v42, @"privateParsing", qpPrivateParsing);
        }

        if (qpEmbeddingGeneration)
        {
          CFDictionarySetValue(v42, @"embeddingsEnabled", qpEmbeddingGeneration);
        }

        if (qpEmbeddingGenerationTimeout)
        {
          CFDictionarySetValue(v42, @"embeddingGenerationTimeout", qpEmbeddingGenerationTimeout);
        }

        if (qpCustomFieldSpecifications)
        {
          CFDictionarySetValue(v42, @"customFieldSpecifications", qpCustomFieldSpecifications);
        }

        if (qpOnDeviceQueryUnderstanding)
        {
          CFDictionarySetValue(v42, @"u2Enabled", qpOnDeviceQueryUnderstanding);
        }

        if (qpLLMQueryUnderstanding)
        {
          CFDictionarySetValue(v42, @"useLLMParse", qpLLMQueryUnderstanding);
        }

        if (qpEntitySearch)
        {
          CFDictionarySetValue(v42, @"isEntitySearch", qpEntitySearch);
        }

        if (qpForTesting)
        {
          CFDictionarySetValue(v42, @"forTesting", qpForTesting);
        }

        if (qpCustomResourceDirectory)
        {
          v43 = CFURLCreateWithString(v40, qpCustomResourceDirectory, 0);
          CFDictionarySetValue(v42, @"customResourceDirectory", v43);
        }

        if (qpLoadAnnotations)
        {
          CFDictionarySetValue(v42, @"loadAnnotations", qpLoadAnnotations);
        }

        if (qpResolveDatesInPast)
        {
          CFDictionarySetValue(v42, @"resolveDatesInPast", qpResolveDatesInPast);
        }

        if (qpResolveDatesInFuture)
        {
          CFDictionarySetValue(v42, @"resolveDatesInFuture", qpResolveDatesInFuture);
        }

        if (qpIgnorePastDates)
        {
          CFDictionarySetValue(v42, @"ignorePastDates", qpIgnorePastDates);
        }

        if (qpIgnoreFutureDates)
        {
          CFDictionarySetValue(v42, @"ignoreFutureDates", qpIgnoreFutureDates);
        }

        gQueryParserOptions = v42;
        CFRelease(v39);
      }

      result = pthread_mutex_unlock(&gQueryParserOptionsLock);
      if (a2)
      {
        pthread_mutex_lock(&gQueryParserLock);
        if (gQueryParser)
        {
          pthread_mutex_lock(&gQueryParserOptionsLock);
          v45 = gQueryParserOptions;
          if (gQueryParserOptions)
          {
            v46 = gQueryParser;
            v49 = 0;
            v50 = &v49;
            v51 = 0x2000000000;
            v47 = getQPQueryParserSetOptionsSymbolLoc_ptr;
            v52 = getQPQueryParserSetOptionsSymbolLoc_ptr;
            if (!getQPQueryParserSetOptionsSymbolLoc_ptr)
            {
              ParserLibrary = QueryParserLibrary();
              v50[3] = dlsym(ParserLibrary, "QPQueryParserSetOptions");
              getQPQueryParserSetOptionsSymbolLoc_ptr = v50[3];
              v47 = v50[3];
            }

            _Block_object_dispose(&v49, 8);
            if (!v47)
            {
              __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
            }

            v47(v46, v45);
          }

          pthread_mutex_unlock(&gQueryParserOptionsLock);
        }

        return pthread_mutex_unlock(&gQueryParserLock);
      }

      return result;
    }

    v5 = 1;
    goto LABEL_18;
  }

  if (CFStringCompare(Value, qpContextIdentifier, 0))
  {
    if (qpContextIdentifier)
    {
      CFRelease(qpContextIdentifier);
      qpContextIdentifier = 0;
    }

    goto LABEL_13;
  }

LABEL_15:
  if (!a1 || !CFDictionaryGetCount(a1))
  {
    goto LABEL_161;
  }

  v5 = 0;
LABEL_18:
  v6 = CFDictionaryGetValue(a1, @"kQPQueryParserOptionReferenceTimezoneKey");
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  if (qpTimeZoneReference)
  {
    if (CFEqual(v6, qpTimeZoneReference))
    {
      goto LABEL_24;
    }

    if (qpTimeZoneReference)
    {
      CFRelease(qpTimeZoneReference);
      qpTimeZoneReference = 0;
    }
  }

  qpTimeZoneReference = CFRetain(v7);
  v5 = 1;
LABEL_24:
  v8 = CFDictionaryGetValue(a1, @"kMDQueryOptionCustomFieldSpecifications");
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = v8;
  if (qpCustomFieldSpecifications)
  {
    if (CFEqual(v8, qpCustomFieldSpecifications))
    {
      goto LABEL_30;
    }

    if (qpCustomFieldSpecifications)
    {
      CFRelease(qpCustomFieldSpecifications);
      qpCustomFieldSpecifications = 0;
    }
  }

  qpCustomFieldSpecifications = CFRetain(v9);
  v5 = 1;
LABEL_30:
  v10 = CFDictionaryGetValue(a1, @"kMDQueryOptionPrivateParsingKey");
  if (!v10)
  {
    goto LABEL_36;
  }

  v11 = v10;
  if (qpPrivateParsing)
  {
    if (CFNumberCompare(v10, qpPrivateParsing, 0) == kCFCompareEqualTo)
    {
      goto LABEL_36;
    }

    if (qpPrivateParsing)
    {
      CFRelease(qpPrivateParsing);
      qpPrivateParsing = 0;
    }
  }

  qpPrivateParsing = CFRetain(v11);
  v5 = 1;
LABEL_36:
  v12 = CFDictionaryGetValue(a1, @"kMDQueryOptionEmbeddingEnabledKey");
  if (!v12)
  {
    goto LABEL_42;
  }

  v13 = v12;
  if (qpEmbeddingGeneration)
  {
    if (CFNumberCompare(v12, qpEmbeddingGeneration, 0) == kCFCompareEqualTo)
    {
      goto LABEL_42;
    }

    if (qpEmbeddingGeneration)
    {
      CFRelease(qpEmbeddingGeneration);
      qpEmbeddingGeneration = 0;
    }
  }

  qpEmbeddingGeneration = CFRetain(v13);
  v5 = 1;
LABEL_42:
  v14 = CFDictionaryGetValue(a1, @"kMDQueryOptionEmbeddingGenerationTimeout");
  if (!v14)
  {
    goto LABEL_48;
  }

  v15 = v14;
  if (qpEmbeddingGenerationTimeout)
  {
    if (CFNumberCompare(v14, qpEmbeddingGenerationTimeout, 0) == kCFCompareEqualTo)
    {
      goto LABEL_48;
    }

    if (qpEmbeddingGenerationTimeout)
    {
      CFRelease(qpEmbeddingGenerationTimeout);
      qpEmbeddingGenerationTimeout = 0;
    }
  }

  qpEmbeddingGenerationTimeout = CFRetain(v15);
  v5 = 1;
LABEL_48:
  v16 = CFDictionaryGetValue(a1, @"loadAnnotations");
  if (!v16)
  {
    goto LABEL_54;
  }

  v17 = v16;
  if (qpLoadAnnotations)
  {
    if (CFNumberCompare(v16, qpLoadAnnotations, 0) == kCFCompareEqualTo)
    {
      goto LABEL_54;
    }

    if (qpLoadAnnotations)
    {
      CFRelease(qpLoadAnnotations);
      qpLoadAnnotations = 0;
    }
  }

  qpLoadAnnotations = CFRetain(v17);
  v5 = 1;
LABEL_54:
  v18 = CFDictionaryGetValue(a1, @"u2Enabled");
  if (!v18)
  {
    goto LABEL_60;
  }

  v19 = v18;
  if (qpOnDeviceQueryUnderstanding)
  {
    if (CFNumberCompare(v18, qpOnDeviceQueryUnderstanding, 0) == kCFCompareEqualTo)
    {
      goto LABEL_60;
    }

    if (qpOnDeviceQueryUnderstanding)
    {
      CFRelease(qpOnDeviceQueryUnderstanding);
      qpOnDeviceQueryUnderstanding = 0;
    }
  }

  qpOnDeviceQueryUnderstanding = CFRetain(v19);
  v5 = 1;
LABEL_60:
  v20 = CFDictionaryGetValue(a1, @"useLLMParse");
  if (!v20)
  {
    goto LABEL_66;
  }

  v21 = v20;
  if (qpLLMQueryUnderstanding)
  {
    if (CFNumberCompare(v20, qpLLMQueryUnderstanding, 0) == kCFCompareEqualTo)
    {
      goto LABEL_66;
    }

    if (qpLLMQueryUnderstanding)
    {
      CFRelease(qpLLMQueryUnderstanding);
      qpLLMQueryUnderstanding = 0;
    }
  }

  qpLLMQueryUnderstanding = CFRetain(v21);
  v5 = 1;
LABEL_66:
  v22 = CFDictionaryGetValue(a1, @"kMDQueryOptionEntitySearch");
  if (!v22)
  {
    goto LABEL_72;
  }

  v23 = v22;
  if (qpEntitySearch)
  {
    if (CFNumberCompare(v22, qpEntitySearch, 0) == kCFCompareEqualTo)
    {
      goto LABEL_72;
    }

    if (qpEntitySearch)
    {
      CFRelease(qpEntitySearch);
      qpEntitySearch = 0;
    }
  }

  qpEntitySearch = CFRetain(v23);
  v5 = 1;
LABEL_72:
  v24 = CFDictionaryGetValue(a1, @"forTesting");
  if (!v24)
  {
    goto LABEL_78;
  }

  v25 = v24;
  if (qpForTesting)
  {
    if (CFNumberCompare(v24, qpForTesting, 0) == kCFCompareEqualTo)
    {
      goto LABEL_78;
    }

    if (qpForTesting)
    {
      CFRelease(qpForTesting);
      qpForTesting = 0;
    }
  }

  qpForTesting = CFRetain(v25);
  v5 = 1;
LABEL_78:
  v26 = CFDictionaryGetValue(a1, @"resolveDatesInFuture");
  if (!v26)
  {
    goto LABEL_84;
  }

  v27 = v26;
  if (qpResolveDatesInFuture)
  {
    if (CFNumberCompare(v26, qpResolveDatesInFuture, 0) == kCFCompareEqualTo)
    {
      goto LABEL_84;
    }

    if (qpResolveDatesInFuture)
    {
      CFRelease(qpResolveDatesInFuture);
      qpResolveDatesInFuture = 0;
    }
  }

  qpResolveDatesInFuture = CFRetain(v27);
  v5 = 1;
LABEL_84:
  v28 = CFDictionaryGetValue(a1, @"resolveDatesInPast");
  if (!v28)
  {
    goto LABEL_90;
  }

  v29 = v28;
  if (qpResolveDatesInPast)
  {
    if (CFNumberCompare(v28, qpResolveDatesInPast, 0) == kCFCompareEqualTo)
    {
      goto LABEL_90;
    }

    if (qpResolveDatesInPast)
    {
      CFRelease(qpResolveDatesInPast);
      qpResolveDatesInPast = 0;
    }
  }

  qpResolveDatesInPast = CFRetain(v29);
  v5 = 1;
LABEL_90:
  v30 = CFDictionaryGetValue(a1, @"ignorePastDates");
  if (!v30)
  {
    goto LABEL_96;
  }

  v31 = v30;
  if (qpIgnorePastDates)
  {
    if (CFNumberCompare(v30, qpIgnorePastDates, 0) == kCFCompareEqualTo)
    {
      goto LABEL_96;
    }

    if (qpIgnorePastDates)
    {
      CFRelease(qpIgnorePastDates);
      qpIgnorePastDates = 0;
    }
  }

  qpIgnorePastDates = CFRetain(v31);
  v5 = 1;
LABEL_96:
  v32 = CFDictionaryGetValue(a1, @"ignoreFutureDates");
  if (!v32)
  {
    goto LABEL_102;
  }

  v33 = v32;
  if (qpIgnoreFutureDates)
  {
    if (CFNumberCompare(v32, qpIgnoreFutureDates, 0) == kCFCompareEqualTo)
    {
      goto LABEL_102;
    }

    if (qpIgnoreFutureDates)
    {
      CFRelease(qpIgnoreFutureDates);
      qpIgnoreFutureDates = 0;
    }
  }

  qpIgnoreFutureDates = CFRetain(v33);
  v5 = 1;
LABEL_102:
  v34 = CFDictionaryGetValue(a1, @"customResourceDirectory");
  if (v34)
  {
    v35 = v34;
    if (!qpCustomResourceDirectory)
    {
LABEL_107:
      qpCustomResourceDirectory = CFRetain(v35);
      v5 = 1;
      goto LABEL_108;
    }

    if (CFStringCompare(v34, qpCustomResourceDirectory, 0))
    {
      if (qpCustomResourceDirectory)
      {
        CFRelease(qpCustomResourceDirectory);
        qpCustomResourceDirectory = 0;
      }

      goto LABEL_107;
    }
  }

LABEL_108:
  v36 = CFDictionaryGetValue(a1, @"date");
  if (v36)
  {
    v37 = v36;
    if (!qpDateReference)
    {
LABEL_113:
      qpDateReference = CFRetain(v37);
      goto LABEL_115;
    }

    if (CFDateCompare(v36, qpDateReference, 0))
    {
      if (qpDateReference)
      {
        CFRelease(qpDateReference);
        qpDateReference = 0;
      }

      goto LABEL_113;
    }
  }

  if (v5)
  {
    goto LABEL_115;
  }

LABEL_161:

  return pthread_mutex_unlock(&gQueryParserOptionsLock);
}

void rescheduleAutomaticCooldown_Locked(uint64_t locked)
{
  if (rescheduleAutomaticCooldown_Locked_automaticCooldownEnabledOnceToken != -1)
  {
    rescheduleAutomaticCooldown_Locked_cold_1();
  }

  if (rescheduleAutomaticCooldown_Locked_automaticCooldownEnabled == 1)
  {
    if (rescheduleAutomaticCooldown_Locked_onceToken != -1)
    {
      rescheduleAutomaticCooldown_Locked_cold_2();
    }

    if (gQueryParserAutomaticCoolDownBlock)
    {
      dispatch_block_cancel(gQueryParserAutomaticCoolDownBlock);
      _Block_release(gQueryParserAutomaticCoolDownBlock);
      gQueryParserAutomaticCoolDownBlock = 0;
    }

    gQueryParserAutomaticCoolDownBlock = dispatch_block_create(0, &__block_literal_global_481);
    v1 = dispatch_time(0, 120000000000);
    global_queue = dispatch_get_global_queue(17, 0);
    v3 = gQueryParserAutomaticCoolDownBlock;

    dispatch_after(v1, global_queue, v3);
  }
}

void *__MDQueryCreateQueryStringWithOptionsDict(const __CFString *a1, const __CFString *a2, __CFString *a3, unsigned int a4, uint64_t a5, uint64_t (*a6)())
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  QueryDictionaryWithOptionsDict = __MDQueryCreateQueryDictionaryWithOptionsDict(a1, a2, a3, a4, a5, a6);
  Value = CFDictionaryGetValue(QueryDictionaryWithOptionsDict, @"kMDUserQueryDictionaryQueryStringKey");
  v8 = CFDictionaryGetValue(QueryDictionaryWithOptionsDict, @"kMDUserQueryDictionaryQueryDefaultStringKey");
  v9 = CFDictionaryGetValue(QueryDictionaryWithOptionsDict, @"kMDUserQueryDictionaryQueryConfidenceKey");
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"kMDUserQueryDictionaryQueryConfidenceNoneValue";
  }

  v11 = CFDictionaryGetValue(QueryDictionaryWithOptionsDict, @"kMDUserQueryDictionaryQueryTokenCountKey");
  valuePtr[0] = 0;
  if (v11 && (CFNumberGetValue(v11, kCFNumberCFIndexType, valuePtr), valuePtr[0] >= 2) && CFStringCompare(v10, @"kMDUserQueryDictionaryQueryConfidenceNoneValue", 0) && CFStringCompare(v10, @"kMDUserQueryDictionaryQueryConfidenceLowValue", 0) || CFStringCompare(Value, v8, 0) == kCFCompareEqualTo)
  {
    v12 = CFRetain(Value);
  }

  else
  {
    v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@ || %@", Value, v8);
    if (CFPreferencesGetAppBooleanValue(@"QPQueryLoggingEnabled", *MEMORY[0x1E695E890], 0))
    {
      CFLog();
    }
  }

  CFRelease(QueryDictionaryWithOptionsDict);
  return v12;
}

void *__MDQueryCreateQueryStringToMatchAttributeWithOptions(const __CFString *a1, const __CFString *a2, unsigned int a3, uint64_t a4, uint64_t (*a5)())
{

  return __MDQueryCreateQueryStringWithOptionsDict(a2, a1, 0, a3, a4, a5);
}

CFStringRef __MDQueryCopyTextTerms(const __CFString *a1, uint64_t a2, const __CFSet *a3)
{
  v5 = a1;
  Length = CFStringGetLength(a1);
  v7 = *MEMORY[0x1E695E480];
  if (Length >= 2049)
  {
    v14.location = 0;
    v14.length = 2048;
    v5 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v5, v14);
  }

  v8 = __MDCopyTokensFromString(v5);
  v9 = parseUserQuery(v8, a2);
  CFRelease(v8);
  v10 = normalizeParseTree(v9);
  PTNodeDestroy(v9);
  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (a3)
  {
    a3 = (a3)();
  }

  getListOfTermText(v10, Mutable, a3);
  v12 = CFStringCreateByCombiningStrings(v7, Mutable, @" ");
  CFRelease(Mutable);
  PTNodeDestroy(v10);
  if (a3)
  {
    CFRelease(a3);
  }

  if (Length >= 2049)
  {
    CFRelease(v5);
  }

  return v12;
}

void getListOfTermText(uint64_t *a1, __CFArray *a2, const __CFSet *a3)
{
  if (!a3)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  v4 = a1;
  if (!a1)
  {
    return;
  }

  while (1)
  {
    v6 = *(v4 + 2);
    if (v6 > 3)
    {
      break;
    }

    if (v6 != 3)
    {
      goto LABEL_21;
    }

    if (!*v4)
    {
      return;
    }

    if (**v4 != 8)
    {
      return;
    }

    v9 = v4[2];
    if (!v9)
    {
      return;
    }

    v10 = *v9;
    if (!v10)
    {
      return;
    }

    v13 = v4[3];
    v12 = (v4 + 3);
    v11 = v13;
    if (!v13 || !*v11 || *v10 || !CFSetContainsValue(a3, *(v10 + 8)))
    {
      return;
    }

LABEL_23:
    v4 = *v12;
    if (!v4)
    {
      return;
    }
  }

  if (v6 == 4)
  {
    getListOfTermText(v4[2], a2, a3);
    v7 = *v4;
    if (*v4)
    {
      if (!*v7)
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, *(v7 + 8), @" ");
        v24.length = CFArrayGetCount(ArrayBySeparatingStrings);
        v24.location = 0;
        CFArrayAppendArray(a2, ArrayBySeparatingStrings, v24);
        CFRelease(ArrayBySeparatingStrings);
      }
    }

    goto LABEL_22;
  }

  if (v6 != 7)
  {
    if (v6 == 8)
    {
      if (!*v4 || !*(*v4 + 8))
      {
        return;
      }

      v21 = CFStringCreateWithFormat(0, 0, @"%@", *(*v4 + 8));
      goto LABEL_40;
    }

LABEL_21:
    getListOfTermText(v4[2], a2, a3);
LABEL_22:
    v12 = (v4 + 3);
    goto LABEL_23;
  }

  v14 = v4[2];
  if (v14 && (v15 = v4[3]) != 0)
  {
    if (!*v4)
    {
      return;
    }

    v16 = *(*v4 + 8);
    if (!v16)
    {
      return;
    }

    v17 = *v14;
    if (!v17)
    {
      return;
    }

    v18 = *(v17 + 8);
    if (!v18)
    {
      return;
    }

    v19 = *v15;
    if (!v19)
    {
      return;
    }

    v20 = *(v19 + 8);
    if (!v20)
    {
      return;
    }

    v21 = CFStringCreateWithFormat(0, 0, @"%@%@%@", v16, v18, v20);
  }

  else
  {
    if (!*v4 || !*(*v4 + 8))
    {
      return;
    }

    v21 = CFStringCreateWithFormat(0, 0, @"%@", *(*v4 + 8));
  }

LABEL_40:
  v22 = v21;
  CFArrayAppendValue(a2, v21);

  CFRelease(v22);
}

void __MDQueryUserStringFacetsApplyDoWhileBlock(CFStringRef theString, CFRange range, uint64_t a3, uint64_t a4)
{
  location = range.location;
  v15 = *MEMORY[0x1E69E9840];
  if (range.length >= 2048)
  {
    length = 2048;
  }

  else
  {
    length = range.length;
  }

  if (range.location || length != CFStringGetLength(theString))
  {
    v16.location = location;
    v16.length = length;
    v10 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v16);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v10 = theString;
  }

  v11 = __MDCopyTokensFromString(v10);
  v12 = parseUserQuery(v11, a4);
  CFRelease(v11);
  v13 = normalizeParseTree(v12);
  PTNodeDestroy(v12);
  v14.location = location;
  v14.length = length;
  _parseTreeFacetsApplyDoWhileBlock(v13, theString, &v14, a3);
  PTNodeDestroy(v13);
  if (v9)
  {
    CFRelease(v10);
  }
}

CFStringRef __MDQueryCreateStringByAddingBackslashEscapes(const __CFString *a1)
{
  v1 = mutableEscapedCopy(a1);
  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
  CFRelease(v1);
  return Copy;
}

uint64_t __MDQueryParserCancelWithReferenceDict(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  _init_parser(0);
  v2 = gQueryParser;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v3 = getQPQueryParserCancelSymbolLoc_ptr;
  v9 = getQPQueryParserCancelSymbolLoc_ptr;
  if (!getQPQueryParserCancelSymbolLoc_ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v7[3] = dlsym(ParserLibrary, "QPQueryParserCancel");
    getQPQueryParserCancelSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
  }

  return v3(v2, a1);
}

uint64_t __MDQueryParserPreheatWithOptionsDict(uint64_t a1)
{
  _init_parser(a1);
  pthread_mutex_lock(&gQueryParserLock);
  v1 = sQPQueryParserPreheat(gQueryParser);
  rescheduleAutomaticCooldown_Locked(v1);

  return pthread_mutex_unlock(&gQueryParserLock);
}

uint64_t sQPQueryParserPreheat(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v2 = getQPQueryParserPreheatSymbolLoc_ptr;
  v8 = getQPQueryParserPreheatSymbolLoc_ptr;
  if (!getQPQueryParserPreheatSymbolLoc_ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v6[3] = dlsym(ParserLibrary, "QPQueryParserPreheat");
    getQPQueryParserPreheatSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
  }

  return v2(a1);
}

uint64_t __MDQueryParserPreheat()
{
  _init_parser(0);
  pthread_mutex_lock(&gQueryParserLock);
  v0 = sQPQueryParserPreheat(gQueryParser);
  rescheduleAutomaticCooldown_Locked(v0);

  return pthread_mutex_unlock(&gQueryParserLock);
}

uint64_t __MDQueryParserCooldown()
{
  pthread_mutex_lock(&gQueryParserLock);
  sQPQueryParserCooldown(gQueryParser);

  return pthread_mutex_unlock(&gQueryParserLock);
}

uint64_t sQPQueryParserCooldown(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v2 = getQPQueryParserCooldownSymbolLoc_ptr;
  v8 = getQPQueryParserCooldownSymbolLoc_ptr;
  if (!getQPQueryParserCooldownSymbolLoc_ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v6[3] = dlsym(ParserLibrary, "QPQueryParserCooldown");
    getQPQueryParserCooldownSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
  }

  return v2(a1);
}

uint64_t __MDQueryParserCopyResourcesInfo()
{
  v8 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&gQueryParserLock);
  v0 = gQueryParser;
  if (gQueryParser)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v1 = getQPQueryParserCopyResourcesInfoSymbolLoc_ptr;
    v7 = getQPQueryParserCopyResourcesInfoSymbolLoc_ptr;
    if (!getQPQueryParserCopyResourcesInfoSymbolLoc_ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v5[3] = dlsym(ParserLibrary, "QPQueryParserCopyResourcesInfo");
      getQPQueryParserCopyResourcesInfoSymbolLoc_ptr = v5[3];
      v1 = v5[3];
    }

    _Block_object_dispose(&v4, 8);
    if (!v1)
    {
      __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
    }

    return v1(v0);
  }

  else
  {
    pthread_mutex_unlock(&gQueryParserLock);
    return 0;
  }
}

void renderQueryPredicateForDateRange(__CFString *a1, uint64_t a2, double a3, double a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = trunc(a3) == a3;
  if (trunc(a4) != a4)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4)
    {
      v5 = @"(InRange(%@,$time.absolute(%.lf),$time.absolute(%.lf)))";
    }

    else
    {
      v5 = @"(InRange(%@,$time.absolute(%lf),$time.absolute(%lf)))";
    }

    CFStringAppendFormat(a1, 0, v5, a2, *&a3, *&a4, v7);
  }

  else if (v4)
  {
    CFStringAppendFormat(a1, 0, @"(InRange(*,$time.absolute(%.lf),$time.absolute(%.lf)))", *&a3, *&a4, v6, v7);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"(InRange(*,$time.absolute(%lf),$time.absolute(%lf)))", *&a3, *&a4, v6, v7);
  }
}

void renderQueryPredicateForDate(__CFString *a1, unsigned int a2, uint64_t a3, double a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 > 3)
  {
    v4 = @"=";
  }

  else
  {
    v4 = off_1E7B260E8[a2];
  }

  v5 = trunc(a4);
  if (a3)
  {
    v6 = @"(%@ %@ $time.absolute(%lf))";
    if (v5 == a4)
    {
      v6 = @"(%@ %@ $time.absolute(%.lf))";
    }

    CFStringAppendFormat(a1, 0, v6, a3, v4, *&a4, v9);
  }

  else
  {
    if (v5 == a4)
    {
      v7 = @"(* %@ $time.absolute(%.lf))";
    }

    else
    {
      v7 = @"(* %@ $time.absolute(%lf))";
    }

    CFStringAppendFormat(a1, 0, v7, v4, *&a4, v8, v9);
  }
}

void renderQueryPredicateForText(__CFString *a1, CFStringRef theString, __CFString *a3, int a4, int a5, int a6, uint64_t a7)
{
  v41[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  v15 = @"*";
  if (!a4)
  {
    v15 = &stru_1F29A61D0;
  }

  v37 = v15;
  v40 = 0;
  v39 = 0;
  v38 = 25699;
  if (a6)
  {
    v16 = &v39;
  }

  else
  {
    v16 = &v39 + 1;
    LOBYTE(v39) = 119;
  }

  if (*(a7 + 66) == 1)
  {
    *v16++ = 106;
  }

  if (*(a7 + 67) == 1)
  {
    *v16++ = 115;
  }

  if (*(a7 + 68) == 1)
  {
    *v16 = 808923238;
    v16 += 4;
  }

  if (a5)
  {
    goto LABEL_13;
  }

  if (CFStringFind(theString, @" ", 0).length)
  {
    *v16++ = 116;
  }

  if ((*(a7 + 67) & 1) != 0 || Length < 2)
  {
LABEL_13:
    *v16 = 0;
    if (!Length)
    {
      if (a3)
      {
        CFStringAppendFormat(a1, 0, @"(%@ = *)", a3);
      }

      else
      {

        CFStringAppend(a1, @"(true)");
      }

      return;
    }
  }

  else
  {
    v17 = 0;
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v17);
      if (CharacterAtIndex >> 8 >= 0x11 && ((CharacterAtIndex & 0xFF00) == 0x1100 || (CharacterAtIndex - 11904) >> 7 < 0x197 || CharacterAtIndex - 65376 <= 0x4F))
      {
        break;
      }

      if (Length == ++v17)
      {
        goto LABEL_31;
      }
    }

    *v16++ = 115;
LABEL_31:
    *v16 = 0;
  }

  if (!a3)
  {
    a3 = @"**";
  }

  v19 = CFStringGetLength(a1);
  CFStringAppendFormat(a1, 0, @"(%@ = "), a3;
  v20 = mutableEscapedCopy(theString);
  CFStringAppend(a1, v20);
  CFRelease(v20);
  CFStringAppendFormat(a1, 0, @"%@%s"), v37, &v38);
  if (a7 && *(a7 + 40) && (CFEqual(a3, @"*") || CFEqual(a3, @"**") || CFEqual(a3, @"kMDItemUserTags")))
  {
    v21 = 0;
    v41[0] = 0;
    v22 = v41;
    v23 = &v38;
LABEL_40:
    v23 = (v23 + 1);
    do
    {
      v24 = *(v23 - 1);
      if (v24 == 116)
      {
        v21 = 1;
        goto LABEL_40;
      }

      v23 = (v23 + 1);
      *v22++ = v24;
    }

    while (v24);
    if (v21)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @" ");
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
      v27 = malloc_type_calloc(Count, 8uLL, 0x100004000313F17uLL);
      if (Count >= 1)
      {
        v28 = 0;
        v29 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v28);
          v31 = finderLabelForText(ValueAtIndex, *(a7 + 48), *(a7 + 40));
          v27[v28] = v31;
          if (v31)
          {
            v29 = 1;
          }

          ++v28;
        }

        while (Count != v28);
        if (v29)
        {
          CFStringInsert(a1, v19, @"(");
          CFStringAppend(a1, @" || (");
          for (i = 0; i != Count; ++i)
          {
            if (i)
            {
              CFStringAppend(a1, @" && ");
            }

            CFStringAppendFormat(a1, 0, @"(%@ = "), a3;
            v33 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, i);
            v34 = mutableEscapedCopy(v33);
            CFStringAppend(a1, v34);
            CFRelease(v34);
            CFStringAppendFormat(a1, 0, @"%@%s", v37, v41);
            if (v27[i])
            {
              CFStringAppendFormat(a1, 0, @" || (_kMDItemFinderLabel = %u && kMDItemUserTags != *)"), v27[i]);
            }

            else
            {
              CFStringAppend(a1, @""));
            }
          }

          CFStringAppend(a1, @")"));
        }
      }

      free(v27);
      CFRelease(ArrayBySeparatingStrings);
    }

    else
    {
      v35 = finderLabelForText(theString, *(a7 + 48), *(a7 + 40));
      if (v35)
      {
        v36 = v35;
        CFStringInsert(a1, v19, @"(");
        CFStringAppendFormat(a1, 0, @" || (_kMDItemFinderLabel = %u && kMDItemUserTags != *)"), v36);
      }
    }
  }
}

uint64_t getNumberFormatter()
{
  if (!getNumberFormatter_sNumberFormatter)
  {
    v0 = *MEMORY[0x1E695E480];
    Locale = getLocale();
    v2 = CFNumberFormatterCreate(v0, Locale, kCFNumberFormatterScientificStyle);
    v3 = 0;
    atomic_compare_exchange_strong(&getNumberFormatter_sNumberFormatter, &v3, v2);
    if (v3)
    {
      CFRelease(v2);
    }
  }

  return getNumberFormatter_sNumberFormatter;
}

uint64_t getLocale()
{
  if (!getLocale_sLocale)
  {
    v0 = CFLocaleCopyCurrent();
    v1 = 0;
    atomic_compare_exchange_strong(&getLocale_sLocale, &v1, v0);
    if (v1)
    {
      CFRelease(v0);
    }
  }

  return getLocale_sLocale;
}

uint64_t finderLabelForText(CFStringRef theString, const __CFLocale *a2, const __CFDictionary *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  if (!a3)
  {
    return 0;
  }

  Locale = a2;
  if (!a2)
  {
    Locale = getLocale();
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  CFStringFold(MutableCopy, 0x181uLL, Locale);
  Value = CFDictionaryGetValue(a3, MutableCopy);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberCFIndexType, v9);
  }

  CFRelease(MutableCopy);
  return v9[0];
}

uint64_t GetAbsoluteTimeFromString(const __CFString *a1, CFRange *a2, CFAbsoluteTime *a3)
{
  pthread_mutex_lock(&GetAbsoluteTimeFromString__dateFormatterLock);
  if (!getDateFormatter_sDateFormatter)
  {
    v6 = *MEMORY[0x1E695E480];
    Locale = getLocale();
    v8 = CFDateFormatterCreate(v6, Locale, kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);
    v9 = 0;
    atomic_compare_exchange_strong(&getDateFormatter_sDateFormatter, &v9, v8);
    if (v9)
    {
      CFRelease(v8);
    }
  }

  AbsoluteTimeFromString = CFDateFormatterGetAbsoluteTimeFromString(getDateFormatter_sDateFormatter, a1, a2, a3);
  pthread_mutex_unlock(&GetAbsoluteTimeFromString__dateFormatterLock);
  return AbsoluteTimeFromString;
}

void *ParseAnd(uint64_t *a1)
{
  v2 = ParseNot(a1);
  if (v2)
  {
    v3 = ParseAnd2(a1);
    if (v3)
    {
      v4 = v3;
      v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
      v5[2] = v2;
      v5[3] = v4;
      *(v5 + 2) = 0;
      return v5;
    }
  }

  return v2;
}

_DWORD *ParseOr2(uint64_t *a1)
{
  if (!TokenListGetTokenAtOffset(*a1, 0) || *TokenListGetTokenAtOffset(*a1, 0) != 3)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
  v2[2] = 2;
  TokenAtOffset = TokenListGetTokenAtOffset(*a1, 0);
  ++TokenAtOffset[12];
  *v2 = TokenAtOffset;
  v4 = *a1;
  *(v4 + 8) = *(*a1 + 8) + 1;
  TokenListGetTokenAtOffset(v4, 0);
  v5 = ParseAnd(a1);
  *(v2 + 2) = v5;
  if (v5)
  {
    *(v2 + 3) = ParseOr2(a1);
  }

  return v2;
}

_DWORD *ParseNot(uint64_t *a1)
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (!TokenListGetTokenAtOffset(*a1, 0) || *TokenListGetTokenAtOffset(*a1, 0) != 5 || !TokenListGetTokenAtOffset(*a1, 1) || (v2 = 1, *TokenListGetTokenAtOffset(*a1, 1) == 1))
  {
    if (!TokenListGetTokenAtOffset(*a1, 0))
    {
      v3 = 0;
      LOBYTE(v2) = 0;
      goto LABEL_10;
    }

    v2 = 0;
    if (*TokenListGetTokenAtOffset(*a1, 0) != 4)
    {
      v3 = 0;
      goto LABEL_10;
    }
  }

  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
  TokenAtOffset = TokenListGetTokenAtOffset(*a1, 0);
  ++TokenAtOffset[12];
  *v3 = TokenAtOffset;
  v5 = *a1;
  *(v5 + 8) = *(*a1 + 8) + 1;
  TokenListGetTokenAtOffset(v5, 0);
  v3[2] = v2;
LABEL_10:
  if (TokenListGetTokenAtOffset(*a1, 0) && *TokenListGetTokenAtOffset(*a1, 0) == 6)
  {
    v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
    *(v6 + 8) = 6;
    v7 = TokenListGetTokenAtOffset(*a1, 0);
    ++v7[12];
    *v6 = v7;
    v8 = *a1;
    *(v8 + 8) = *(*a1 + 8) + 1;
    TokenListGetTokenAtOffset(v8, 0);
    *(v6 + 16) = ParseOr(a1);
    if (!TokenListGetTokenAtOffset(*a1, 0) || *TokenListGetTokenAtOffset(*a1, 0) != 7)
    {
      goto LABEL_26;
    }

    v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
    *(v9 + 8) = 6;
    v10 = TokenListGetTokenAtOffset(*a1, 0);
    ++v10[12];
    *v9 = v10;
    v11 = *a1;
    *(v11 + 8) = *(*a1 + 8) + 1;
    TokenListGetTokenAtOffset(v11, 0);
    goto LABEL_25;
  }

  if (!TokenListGetTokenAtOffset(*a1, 0))
  {
    return v3;
  }

  if (*TokenListGetTokenAtOffset(*a1, 0) == 10)
  {
    v12 = TokenListGetTokenAtOffset(*a1, 0);
    v23[1] = 0;
    v13 = v12[1];
    v22[0] = v23;
    v22[1] = 0;
    v22[2] = a1[2];
    v23[0] = v13;
    v14 = ParseSpace(v22);
    v15 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
    ++*(v12 + 12);
    *v15 = v12;
    v15[2] = 4;
    v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
    *(v6 + 16) = v14;
    *(v6 + 24) = v15;
    *(v6 + 8) = 2;
    v16 = *a1;
    *(v16 + 8) = *(*a1 + 8) + 1;
    TokenListGetTokenAtOffset(v16, 0);
  }

  else
  {
    v6 = ParseAtom(a1, 0, v2);
    if (!v6)
    {
      return v3;
    }
  }

  if (TokenListGetTokenAtOffset(*a1, 0) && *TokenListGetTokenAtOffset(*a1, 0) == 8)
  {
    v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
    v17[2] = 3;
    *(v17 + 2) = v6;
    v18 = TokenListGetTokenAtOffset(*a1, 0);
    ++v18[12];
    *v17 = v18;
    v19 = *a1;
    *(v19 + 8) = *(*a1 + 8) + 1;
    TokenListGetTokenAtOffset(v19, 0);
    if (TokenListGetTokenAtOffset(*a1, 0) && *TokenListGetTokenAtOffset(*a1, 0) == 1)
    {
      v20 = *a1;
      *(v20 + 8) = *(*a1 + 8) + 1;
      TokenListGetTokenAtOffset(v20, 0);
    }

    v9 = ParseAtom(a1, *(*v6 + 8), v2);
    v6 = v17;
LABEL_25:
    *(v6 + 24) = v9;
  }

LABEL_26:
  if (!v3)
  {
    return v6;
  }

  *(v3 + 2) = v6;
  return v3;
}

_DWORD *ParseAnd2(uint64_t *a1)
{
  if (!TokenListGetTokenAtOffset(*a1, 0) || *TokenListGetTokenAtOffset(*a1, 0) != 1 && *TokenListGetTokenAtOffset(*a1, 0) != 2 && *TokenListGetTokenAtOffset(*a1, 0) != 6)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
  v2[2] = 0;
  if (*TokenListGetTokenAtOffset(*a1, 0) == 1 || *TokenListGetTokenAtOffset(*a1, 0) == 2)
  {
    TokenAtOffset = TokenListGetTokenAtOffset(*a1, 0);
    ++TokenAtOffset[12];
    *v2 = TokenAtOffset;
    v4 = *a1;
    *(v4 + 8) = *(*a1 + 8) + 1;
    TokenListGetTokenAtOffset(v4, 0);
  }

  v5 = ParseNot(a1);
  *(v2 + 2) = v5;
  if (v5)
  {
    *(v2 + 3) = ParseAnd2(a1);
  }

  return v2;
}

uint64_t ParseAtom(uint64_t *a1, const __CFString *a2, char a3)
{
  v5 = a1;
  v69 = *MEMORY[0x1E69E9840];
  TokenAtOffset = TokenListGetTokenAtOffset(*a1, 0);
  v7 = 0;
  if (!TokenAtOffset)
  {
    return v7;
  }

  v8 = *TokenAtOffset;
  if (*TokenAtOffset <= 7)
  {
    if (v8)
    {
      v9 = v8 == 5;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      return v7;
    }
  }

  else if (v8 != 8)
  {
    if (v8 == 9)
    {
      v45 = TokenListGetTokenAtOffset(*v5, 0);
      v46 = *v45;
      v47 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
      v7 = v47;
      v48 = v47;
      if (v46 == 9)
      {
        ++v45[12];
        *v47 = v45;
        v47[2] = 7;
        v49 = *v5;
        *(v49 + 8) = *(*v5 + 8) + 1;
        TokenListGetTokenAtOffset(v49, 0);
        v48 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
        *(v7 + 16) = v48;
      }

      v50 = malloc_type_malloc(0x20uLL, 0x1060040C3D0B2E6uLL);
      v50[12] = 1;
      *(v50 + 1) = 0;
      *v50 = 0;
      *v48 = v50;
      v48[2] = 4;
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      *(*v48 + 8) = Mutable;
      **v48 = 0;
      while (TokenListGetTokenAtOffset(*v5, 0) && *TokenListGetTokenAtOffset(*v5, 0) != 9)
      {
        v52 = TokenListGetTokenAtOffset(*v5, 0);
        CFStringAppend(Mutable, v52[1]);
        v53 = *v5;
        *(v53 + 8) = *(*v5 + 8) + 1;
        TokenListGetTokenAtOffset(v53, 0);
      }

      if (!TokenListGetTokenAtOffset(*v5, 0))
      {
        return v7;
      }

      *(v7 + 24) = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
      v54 = TokenListGetTokenAtOffset(*v5, 0);
      ++v54[12];
      v55 = *(v7 + 24);
      *v55 = v54;
      *(v55 + 8) = 7;
    }

    else
    {
      if (v8 != 10)
      {
        return v7;
      }

      v65 = 0;
      *chars = *(TokenAtOffset + 1);
      v66 = chars;
      v67 = 0;
      v68 = v5[2];
      v7 = ParseSpace(&v66);
    }

    v56 = *v5;
    *(v56 + 8) = *(*v5 + 8) + 1;
    TokenListGetTokenAtOffset(v56, 0);
    return v7;
  }

  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
  *(v7 + 8) = 4;
  alloc = *MEMORY[0x1E695E480];
  v10 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v11 = malloc_type_malloc(0x20uLL, 0x1060040C3D0B2E6uLL);
  v12 = 0;
  v13 = 0;
  v11[12] = 1;
  *v11 = 0;
  *v7 = v11;
  *(v11 + 1) = v10;
  **v7 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  do
  {
    if (v13)
    {
      return v7;
    }

    v14 = TokenListGetTokenAtOffset(*v5, 0);
    if (!v14)
    {
      return v7;
    }

    v15 = v14;
    v16 = 0;
    while (1)
    {
      v17 = *v15;
      if (*v15 <= 7)
      {
        break;
      }

      if (v17 == 8)
      {
        if (v12 & 1) == 0 && (StringIsShortcutWithContext(v10, v5))
        {
          v12 = 0;
          goto LABEL_76;
        }

        goto LABEL_38;
      }

      if (v17 == 9)
      {
        CFStringAppend(v10, *(v15 + 1));
        do
        {
          v22 = *v5;
          *(v22 + 8) = *(*v5 + 8) + 1;
          TokenListGetTokenAtOffset(v22, 0);
          v23 = TokenListGetTokenAtOffset(*v5, 0);
          if (!v23)
          {
            break;
          }

          v24 = *v23;
          CFStringAppend(v10, v23[1]);
        }

        while (v24 != 9);
        goto LABEL_39;
      }

      if (v17 != 10)
      {
        goto LABEL_38;
      }

      *chars = 0;
      v65 = 0;
      *chars = *(v15 + 1);
      v19 = v5[2];
      v66 = chars;
      v67 = 0;
      v68 = v19;
      v20 = *v5;
      *(v20 + 8) = *(*v5 + 8) + 1;
      TokenListGetTokenAtOffset(v20, 0);
      v16 = v5;
      v5 = &v66;
LABEL_46:
      v15 = TokenListGetTokenAtOffset(*v5, 0);
      if (!v15)
      {
        v13 = 0;
        goto LABEL_77;
      }
    }

    if (v17 != 1)
    {
      v13 = 1;
      if ((v17 - 2) < 2 || (v17 - 6) < 2)
      {
        goto LABEL_77;
      }

LABEL_38:
      CFStringAppend(v10, *(v15 + 1));
LABEL_39:
      v21 = *v5;
      *(v21 + 8) = *(*v5 + 8) + 1;
      TokenListGetTokenAtOffset(v21, 0);
      goto LABEL_46;
    }

    if (!a2)
    {
      if (a3)
      {
        goto LABEL_76;
      }

      v13 = 1;
      if (!TokenListGetTokenAtOffset(*v5, 1) || *TokenListGetTokenAtOffset(*v5, 1) && (*TokenListGetTokenAtOffset(*v5, 1) != 5 || TokenListGetTokenAtOffset(*v5, 2) && *TokenListGetTokenAtOffset(*v5, 2) != 1))
      {
        goto LABEL_77;
      }

      if (TokenListGetTokenAtOffset(*v5, 2))
      {
        v18 = *TokenListGetTokenAtOffset(*v5, 2);
        if (v18 == 8)
        {
          v25 = TokenListGetTokenAtOffset(*v5, 1);
          if (StringIsShortcutWithContext(v25[1], v5))
          {
            goto LABEL_77;
          }
        }

        else if ((v18 - 6) < 2)
        {
          goto LABEL_77;
        }
      }

      CFStringAppend(v10, @" ");
      v26 = *v5;
      *(v26 + 8) = *(*v5 + 8) + 1;
      TokenListGetTokenAtOffset(v26, 0);
      v27 = TokenListGetTokenAtOffset(*v5, 0);
      CFStringAppend(v10, v27[1]);
      v28 = *v5;
      *(v28 + 8) = *(*v5 + 8) + 1;
      TokenListGetTokenAtOffset(v28, 0);
      v12 = 1;
      goto LABEL_46;
    }

    v62 = *v7;
    v29 = *(*v7 + 8);
    v30 = CFStringCreateWithFormat(alloc, 0, @"%@:%@", a2, v29);
    v12 = 0;
    if (_fieldPairToMaxWordCountDictionary && v30)
    {
      cf = v29;
      Value = CFDictionaryGetValue(_fieldPairToMaxWordCountDictionary, v30);
      if (Value < 2)
      {
        goto LABEL_67;
      }

      v32 = Value;
      v61 = v30;
      v33 = 1;
      v34 = 1;
      while (TokenListGetTokenAtOffset(*v5, v33 - 1) && *TokenListGetTokenAtOffset(*v5, v33 - 1) == 1 && TokenListGetTokenAtOffset(*v5, v33) && !*TokenListGetTokenAtOffset(*v5, v33))
      {
        ++v34;
        v33 += 2;
        if (v32 == v34)
        {
          v34 = v32;
          break;
        }
      }

      v30 = v61;
      if (v34 < 2)
      {
LABEL_67:
        v12 = 0;
      }

      else
      {
        v59 = v7;
        v35 = malloc_type_calloc(v34, 8uLL, 0x100004000313F17uLL);
        MutableCopy = CFStringCreateMutableCopy(alloc, 0, v61);
        *v35 = CFStringGetLength(MutableCopy);
        chars[0] = 32;
        v37 = 1;
        for (i = 1; i != v34; ++i)
        {
          CFStringAppendCharacters(MutableCopy, chars, 1);
          v39 = TokenListGetTokenAtOffset(*v5, v37);
          CFStringAppend(MutableCopy, v39[1]);
          v35[i] = CFStringGetLength(MutableCopy);
          v37 += 2;
        }

        v58 = v35;
        v40 = &v35[v34 - 1];
        v41 = v34 - 1;
        while (!_keywordsDictionary || !CFDictionaryContainsKey(_keywordsDictionary, MutableCopy))
        {
          --v34;
          v70.location = *(v40 - 1);
          v70.length = *v40 - v70.location;
          CFStringDelete(MutableCopy, v70);
          --v41;
          --v40;
          if (v34 + 1 <= 2)
          {
            v12 = 0;
LABEL_73:
            v42 = v58;
            v7 = v59;
            goto LABEL_74;
          }
        }

        v71.location = CFStringGetLength(a2) + 1;
        v71.length = *v40 - v71.location;
        *(v62 + 8) = CFStringCreateWithSubstring(alloc, MutableCopy, v71);
        CFRelease(cf);
        if (v34 < 2)
        {
          v12 = 1;
          goto LABEL_73;
        }

        v42 = v58;
        v7 = v59;
        do
        {
          v43 = *v5;
          *(v43 + 8) = *(*v5 + 8) + 1;
          TokenListGetTokenAtOffset(v43, 0);
          v44 = *v5;
          *(v44 + 8) = *(*v5 + 8) + 1;
          TokenListGetTokenAtOffset(v44, 0);
          --v41;
        }

        while (v41);
        v12 = 1;
LABEL_74:
        CFRelease(MutableCopy);
        free(v42);
        v30 = v61;
      }
    }

    CFRelease(v30);
LABEL_76:
    v13 = 1;
LABEL_77:
    v5 = v16;
  }

  while (v16);
  return v7;
}

CFIndex StringIsShortcutWithContext(const __CFString *a1, uint64_t a2)
{
  result = CFStringGetLength(a1);
  if (result)
  {
    v5 = *(a2 + 16);
    if (!v5)
    {
      v6 = *(a2 + 8);
      if (v6)
      {
        v5 = v6();
        *(a2 + 16) = v5;
      }

      else
      {
        v5 = 0;
      }
    }

    v7 = *(a2 + 8);
    result = CFStringGetLength(a1);
    if (result)
    {
      v8 = result;
      v9 = 0;
      if (!v5 && v7)
      {
        v5 = v7();
        v9 = v5 != 0;
      }

      if ((!v5 || !CFDictionaryContainsKey(v5, a1)) && (v8 < 7 || (v11.location = 0, v11.length = 7, CFStringCompareWithOptions(a1, @"kMDItem", v11, 0)) && (v8 == 7 || (v12.location = 0, v12.length = 8, CFStringCompareWithOptions(a1, @"_kMDItem", v12, 0)))))
      {
        v10 = 0;
        result = 0;
        if (!v9)
        {
          return result;
        }
      }

      else
      {
        v10 = 1;
        result = 1;
        if (!v9)
        {
          return result;
        }
      }

      CFRelease(v5);
      return v10;
    }
  }

  return result;
}

CFTypeRef nodeAppend(uint64_t a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
  v5 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *a1 = 0;
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
  *(a1 + 24) = v6;
  v6[2] = 4;
  v7 = malloc_type_malloc(0x20uLL, 0x1060040C3D0B2E6uLL);
  v7[12] = 1;
  *(v7 + 1) = 0;
  *v7 = 0;
  **(a1 + 24) = v7;
  result = CFRetain(a2);
  *(**(a1 + 24) + 8) = result;
  ***(a1 + 24) = 0;
  return result;
}

CFTypeRef nodePrepend(uint64_t a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
  v5 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v5;
  *(a1 + 8) = 0;
  *(a1 + 24) = v4;
  *a1 = 0;
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
  *(a1 + 16) = v6;
  v6[2] = 4;
  v7 = malloc_type_malloc(0x20uLL, 0x1060040C3D0B2E6uLL);
  v7[12] = 1;
  *(v7 + 1) = 0;
  *v7 = 0;
  **(a1 + 16) = v7;
  result = CFRetain(a2);
  *(**(a1 + 16) + 8) = result;
  ***(a1 + 16) = 0;
  return result;
}

void ___init_parser_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  CFPreferencesGetAppBooleanValue(@"QPQueryParserLoggingEnabled", *MEMORY[0x1E695E890], 0);
  gQueryParserEnabled = 1;
  _qpUpdateParserOptions(*(a1 + 32), 0);
  v2 = sQPQueryParserCopyDefaultOptionsForContext(qpContextIdentifier);
  if (v2)
  {
    v3 = v2;
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v4 = getQPQueryParserCreateSymbolLoc_ptr;
    v9 = getQPQueryParserCreateSymbolLoc_ptr;
    if (!getQPQueryParserCreateSymbolLoc_ptr)
    {
      ParserLibrary = QueryParserLibrary();
      v7[3] = dlsym(ParserLibrary, "QPQueryParserCreate");
      getQPQueryParserCreateSymbolLoc_ptr = v7[3];
      v4 = v7[3];
    }

    _Block_object_dispose(&v6, 8);
    if (!v4)
    {
      __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
    }

    gQueryParser = v4(v3);
    _qpUpdateParserOptions(v3, 1);
    CFRelease(v3);
  }
}

uint64_t sQPQueryParserCopyDefaultOptionsForContext(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v2 = getQPQueryParserCopyDefaultOptionsForContextSymbolLoc_ptr;
  v8 = getQPQueryParserCopyDefaultOptionsForContextSymbolLoc_ptr;
  if (!getQPQueryParserCopyDefaultOptionsForContextSymbolLoc_ptr)
  {
    ParserLibrary = QueryParserLibrary();
    v6[3] = dlsym(ParserLibrary, "QPQueryParserCopyDefaultOptionsForContext");
    getQPQueryParserCopyDefaultOptionsForContextSymbolLoc_ptr = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
  }

  return v2(a1);
}

void *__getQPQueryParserCopyDefaultOptionsForContextSymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "QPQueryParserCopyDefaultOptionsForContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQPQueryParserCopyDefaultOptionsForContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t QueryParserLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!QueryParserLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 0x40000000;
    v3[3] = __QueryParserLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_tmp_392;
    v3[5] = v3;
    v4 = xmmword_1E7B25D20;
    v5 = 0;
    QueryParserLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = QueryParserLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!QueryParserLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __QueryParserLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  QueryParserLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getQPQueryParserCreateSymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "QPQueryParserCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQPQueryParserCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

CFStringRef __getClientBundleIdentifier_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    result = CFBundleGetIdentifier(MainBundle);
    getClientBundleIdentifier_identifier = result;
    if (result)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = getClientBundleIdentifier_identifier;
  if (!getClientBundleIdentifier_identifier)
  {
LABEL_3:
    getClientBundleIdentifier_identifier = @"com.apple.query.search";
  }

  return result;
}

void *__getQPQueryParserSetOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "QPQueryParserSetOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQPQueryParserSetOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t handleDidEnterBackgroundNotification()
{
  v3 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&gQueryParserLock);
  v0 = gQueryParserAutomaticCoolDownBlock;
  if (gQueryParserAutomaticCoolDownBlock)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B238B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[automatic cooldown] immediately cooling down due to didEnterBackground", v2, 2u);
      v0 = gQueryParserAutomaticCoolDownBlock;
    }

    dispatch_block_cancel(v0);
    _Block_release(gQueryParserAutomaticCoolDownBlock);
    gQueryParserAutomaticCoolDownBlock = 0;
    sQPQueryParserCooldown(gQueryParser);
  }

  return pthread_mutex_unlock(&gQueryParserLock);
}

uint64_t __isSearchToolClientBundleIdentifier_block_invoke()
{
  if (getClientBundleIdentifier_once != -1)
  {
    _qpUpdateParserOptions_cold_1();
  }

  v0 = getClientBundleIdentifier_identifier;
  result = CFStringHasPrefix(getClientBundleIdentifier_identifier, @"com.apple.omniSearch");
  if (result || (result = CFStringHasPrefix(v0, @"com.apple.intelligenceflow"), result))
  {
    v2 = 1;
  }

  else
  {
    result = CFStringHasPrefix(v0, @"com.apple.ondeviceeval");
    v2 = result != 0;
  }

  isSearchToolClientBundleIdentifier_isSearchTool = v2;
  return result;
}

void *__getkQPParseResultQUOutputKeySymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseResultQUOutputKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseResultQUOutputKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkQPParseResultConfidenceKeySymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseResultConfidenceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseResultConfidenceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkQPParseResultDescriptionKeySymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseResultDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseResultDescriptionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkQPParseResultAttributedParseKeySymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseResultAttributedParseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseResultAttributedParseKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkQPParseResultRankCategoriesKeySymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseResultRankCategoriesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseResultRankCategoriesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkQPParseResultSortModifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseResultSortModifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseResultSortModifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkQPParseResultTokenCountKeySymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseResultTokenCountKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseResultTokenCountKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkQPParseResultSuggestionKeySymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseResultSuggestionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseResultSuggestionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkQPParseResultAttributeCountKeySymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "kQPParseResultAttributeCountKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkQPParseResultAttributeCountKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getQPQueryParserParseSymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "QPQueryParserParse");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQPQueryParserParseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _parseTreeFacetsApplyDoWhileBlock(uint64_t *a1, const __CFString *a2, CFRange *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  v8 = *(a1 + 2);
  if (v8 == 4)
  {
    result = _parseTreeFacetsApplyDoWhileBlock(a1[2], a2, &a3->location, a4);
    if (!result)
    {
      return result;
    }

    location = a3->location;
    v18.location = a3->location;
    v14 = *a1;
    if (*a1)
    {
      v15 = location;
      if (*v14 != 10)
      {
        _skipText(*(v14 + 8), a2, a3);
        v15 = a3->location;
      }
    }

    else
    {
      v15 = location;
    }

    v18.length = v15 - location;
    _trimWhitespaceFromRange(a2, &v18);
    return (v18.length < 1 || ((*(a4 + 16))(a4, -1, 0, v18.location) & 1) != 0) && (_parseTreeFacetsApplyDoWhileBlock(a1[3], a2, &a3->location, a4) & 1) != 0;
  }

  if (v8 == 3)
  {
    v18.location = a3->location;
    _skipParseTree(a1[2], a2, a3);
    v18.length = a3->location - v18.location;
    _trimWhitespaceFromRange(a2, &v18);
    v9 = *a1;
    if (*a1 && *v9 != 10)
    {
      _skipText(*(v9 + 8), a2, a3);
    }

    v17.location = a3->location;
    _skipParseTree(a1[3], a2, a3);
    v17.length = a3->location - v17.location;
    _trimWhitespaceFromRange(a2, &v17);
    if (v18.length >= 1 && v17.length >= 1)
    {
      v10 = *(a4 + 16);
      v11 = v18.location;

      return v10(a4, v11);
    }

    return 1;
  }

  v16 = *a1;
  if (*a1 && *v16 != 10)
  {
    _skipText(*(v16 + 8), a2, a3);
  }

  result = _parseTreeFacetsApplyDoWhileBlock(a1[2], a2, &a3->location, a4);
  if (result)
  {
    result = _parseTreeFacetsApplyDoWhileBlock(a1[3], a2, &a3->location, a4);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t _skipParseTree(uint64_t result, const __CFString *a2, int64x2_t *a3)
{
  if (result)
  {
    v5 = result;
    do
    {
      result = _skipParseTree(*(v5 + 16), a2, a3);
      if (*(v5 + 8) == 7)
      {
        result = _skipOptionalQuote(a2, a3);
      }

      if (*v5)
      {
        result = _skipText(*(*v5 + 8), a2, a3);
      }

      if (*(v5 + 8) == 7)
      {
        result = _skipOptionalQuote(a2, a3);
      }

      v5 = *(v5 + 24);
    }

    while (v5);
  }

  return result;
}

uint64_t _trimWhitespaceFromRange(const __CFString *a1, CFRange *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  if (CFStringFindCharacterFromSet(a1, Predefined, *a2, 8uLL, &result))
  {
    v5.location = result.length + result.location;
    v5.length = a2->length - result.length;
    a2->location = result.length + result.location;
    a2->length = v5.length;
  }

  else
  {
    v5 = *a2;
  }

  CharacterFromSet = CFStringFindCharacterFromSet(a1, Predefined, v5, 0xCuLL, &result);
  if (CharacterFromSet)
  {
    a2->length -= result.length;
  }

  return CharacterFromSet;
}

uint64_t _skipText(CFStringRef stringToFind, CFStringRef theString, CFRange *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  v4 = CFStringFindWithOptions(theString, stringToFind, *a3, 0x10uLL, &result);
  if (v4)
  {
    v5 = a3->location - (result.length + result.location) + a3->length;
    a3->location = result.length + result.location;
    a3->length = v5;
  }

  return v4;
}

const __CFString *_skipOptionalQuote(const __CFString *result, int64x2_t *a2)
{
  if (a2->i64[1] >= 1)
  {
    result = CFStringGetCharacterAtIndex(result, a2->i64[0]);
    if ((result - 8220) < 2 || result == 34)
    {
      *a2 = vaddq_s64(*a2, xmmword_1B23E4140);
    }
  }

  return result;
}

void *__getQPQueryParserCancelSymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "QPQueryParserCancel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQPQueryParserCancelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getQPQueryParserPreheatSymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "QPQueryParserPreheat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQPQueryParserPreheatSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getQPQueryParserCooldownSymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "QPQueryParserCooldown");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQPQueryParserCooldownSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getQPQueryParserCopyResourcesInfoSymbolLoc_block_invoke(uint64_t a1)
{
  ParserLibrary = QueryParserLibrary();
  result = dlsym(ParserLibrary, "QPQueryParserCopyResourcesInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQPQueryParserCopyResourcesInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MDTokenizerCreate()
{

  return CIRetainIndexingTokenizer(3u);
}

void MDTokenizerDispose(uint64_t a1)
{

  CIReleaseIndexingTokenizer(a1);
}

void MDPurgeTokenizers(int a1)
{

  CIPurgeTokenizers(a1);
}

void MDTokenizerGetTokenRangesWithTranscriptionOptional(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v9[1] = 0;
  v9[2] = a5;
  v9[3] = a6;
  if (a7)
  {
    v7 = (32 * ((a4 >> 1) & 1)) | 2;
  }

  else
  {
    v7 = (16 * a4) & 0x20;
  }

  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = _MDTokenizerGetSubTokens;
  }

  CITokenizerGetTokensNew(a1, a2, a3, v7, 0, _MDTokenizerGetTokens, v8, 0, 0, v9);
}

uint64_t _MDTokenizerGetTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v10 = 0uLL;
  v11 = 0;
  MatchState = CITokenizerGetMatchState(*a4, &v10);
  v8 = *(a4 + 8);
  if (v8)
  {
    v8(a1, a2, 0, *(a4 + 24), &v12, MatchState);
  }

  else
  {
    (*(a4 + 16))(a1, a2, 0, v10.n128_u64[0], v10.n128_u64[1], v11, *(a4 + 24), &v12, MatchState);
  }

  return v12;
}

uint64_t _MDTokenizerGetSubTokens(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v12 = 0uLL;
  v13 = 0;
  MatchState = CITokenizerGetMatchState(*a4, &v12);
  if (a3 == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(a4 + 8);
  if (v10)
  {
    v10(a1, a2, v9, *(a4 + 24), &v14, MatchState);
  }

  else
  {
    (*(a4 + 16))(a1, a2, v9, v12.n128_u64[0], v12.n128_u64[1], v13, *(a4 + 24), &v14, MatchState);
  }

  return v14;
}

void MDTokenizerGetTokenRanges(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = a1;
  v7[1] = 0;
  v7[2] = a5;
  v7[3] = a6;
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = _MDTokenizerGetSubTokens;
  }

  CITokenizerGetTokensNew(a1, a2, a3, (16 * a4) & 0x20, 0, _MDTokenizerGetTokens, v6, 0, 0, v7);
}

void MDTokenizerGetTokens(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = a1;
  v7[1] = a5;
  v7[2] = 0;
  v7[3] = a6;
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = _MDTokenizerGetSubTokens;
  }

  CITokenizerGetTokensNew(a1, a2, a3, (16 * a4) & 0x20, 0, _MDTokenizerGetTokens, v6, 0, 0, v7);
}

_BYTE *faccurate_realpath(int a1, _BYTE *a2)
{
  v2 = a2;
  if (fcntl(a1, 50, a2) < 0 || !*v2)
  {
    return 0;
  }

  return v2;
}

uint64_t nosymlink_open(char *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  if ((a2 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return x_openat(-1, a1, a2 | 0x20000000u, a4, a5, a6, a7, a8, v9);
}

uint64_t x_openat(int a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  if ((a3 & 0x200) != 0)
  {
    v12 = a9;
  }

  else
  {
    v12 = 0;
  }

  result = openat(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  if (result == -1)
  {
    v14 = __error();
    result = 0xFFFFFFFFLL;
    if ((a3 & 0x20000000) != 0 && *v14 == 22)
    {
      return openat(a1, a2, a3 & 0xDFFFFFFF, v12);
    }
  }

  return result;
}

uint64_t md_fstat_real(int a1, stat *a2)
{
  v4 = fstatat(a1, 0, a2, 1536);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstat(a1, a2);
}

void _log_fault_for_malloc_failure()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    _log_fault_for_malloc_failure_cold_1();
  }
}

uint64_t QueryTokens(CFStringRef str, CFRange range, uint64_t (*a3)(void, void, void, void), uint64_t a4)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], str, range);
  MutableCopy = CFStringCreateMutableCopy(v6, 0, v7);
  CFRelease(v7);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
  Length = CFStringGetLength(MutableCopy);
  LODWORD(v7) = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  pthread_mutex_lock(&sQueryMutex);
  __gQueryCallback = a3;
  __gQueryContext = a4;
  __gTermBufferLen = 0;
  __gTermBuffer = 0;
  v10 = v7 + 1;
  sInputBuffer = malloc_type_malloc(v10, 0xE388CDA3uLL);
  if (sInputBuffer)
  {
    __gTermBuffer = malloc_type_malloc(v10, 0x45E66A82uLL);
    if (__gTermBuffer)
    {
      if (CFStringGetCString(MutableCopy, sInputBuffer, v10, 0x8000100u))
      {
        sInputBufferLength = strlen(sInputBuffer);
        sInputBufferPosition = 0;
        QueryScannerReset();
          ;
        }
      }
    }
  }

  CFRelease(MutableCopy);
  if (sInputBuffer)
  {
    free(sInputBuffer);
  }

  if (__gTermBuffer)
  {
    free(__gTermBuffer);
  }

  sInputBuffer = 0;
  sInputBufferLength = 0;
  sInputBufferPosition = 0;
  __gQueryCallback = 0;
  __gQueryContext = 0;
  __gTermBuffer = 0;
  __gTermBufferLen = 0;

  return pthread_mutex_unlock(&sQueryMutex);
}

size_t QueryScannerReadChars(void *a1, unsigned int a2)
{
  if (!sInputBuffer)
  {
    return 0;
  }

  v2 = sInputBufferPosition;
  if ((sInputBufferPosition + a2) <= sInputBufferLength)
  {
    v3 = a2;
  }

  else
  {
    v3 = (sInputBufferLength - sInputBufferPosition);
  }

  if (v3)
  {
    memcpy(a1, (sInputBuffer + sInputBufferPosition), v3);
    sInputBufferPosition = v3 + v2;
  }

  return v3;
}

void db_query_tree_apply_block_with_meta(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v6 = a1;
  v37 = 0;
  v39 = 0;
  v40 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  ptr = 0;
  v42 = 0;
  do
  {
    v43[0] = a4;
    v13 = *v6;
    v12 = v6[1];
    v14 = (*(a2 + 16))(a2);
    v20 = v14;
    if (!a3)
    {
      if (!v12)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    if (v9 >= v39)
    {
      if (v39)
      {
        v21 = 2 * v39;
      }

      else
      {
        v21 = 4;
      }

      v14 = malloc_type_realloc(ptr, 8 * v21, 0xDFA1FB26uLL);
      ptr = v14;
      if (!v14)
      {
LABEL_59:
        _log_fault_for_malloc_failure();
        __break(1u);
        return;
      }

      v39 = v21;
    }

    v22 = v9 + 1;
    *&ptr[8 * v9] = v20;
    if (v12)
    {
      if (v8 >= v37)
      {
        if (v37)
        {
          v23 = 2 * v37;
        }

        else
        {
          v23 = 4;
        }

        v14 = malloc_type_realloc(v11, 8 * v23, 0xDFA1FB26uLL);
        if (!v14)
        {
          goto LABEL_59;
        }

        v11 = v14;
        v37 = v23;
      }

      *&v11[8 * v8++] = v10;
      v9 = v22;
      a2 = v40;
LABEL_19:
      if (v10 >= v7)
      {
        if (v7)
        {
          v7 *= 2;
        }

        else
        {
          v7 = 4;
        }

        v14 = malloc_type_realloc(v42, 16 * v7, 0xDFA1FB26uLL);
        v42 = v14;
        if (!v14)
        {
          goto LABEL_59;
        }
      }

      v24 = &v42[16 * v10];
      v25 = v43[0];
      ++v10;
      *v24 = v12;
      *(v24 + 1) = v25;
LABEL_25:
      if (v13)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    ++v9;
    a2 = v40;
    if (v13)
    {
LABEL_26:
      v26 = v43;
      goto LABEL_40;
    }

LABEL_28:
    v38 = v11;
    if (v8)
    {
      if (*&v11[8 * v8 - 8] == v10)
      {
        v27 = v11 - 16;
        v28 = &ptr[8 * v9 - 24];
        v29 = v9;
        while (1)
        {
          v9 = v29 - 2;
          if (v29 <= 2)
          {
            db_query_tree_apply_block_with_meta_cold_1(v14, v6, v15, a4, v16, v17, v18, v19);
          }

          v14 = (*(a3 + 16))(a3, *v28, *(v28 + 1), *(v28 + 2));
          *v28 = v14;
          v30 = v8 - 1;
          if (v8 == 1)
          {
            break;
          }

          v31 = *&v27[8 * v8];
          v28 -= 16;
          --v8;
          v29 -= 2;
          if (v31 != v10)
          {
            goto LABEL_38;
          }
        }

        v9 = v29 - 3;
        if (!v10)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v30 = v8;
LABEL_38:
        if (!v10)
        {
LABEL_43:
          LOBYTE(v34) = 1;
          v11 = v38;
          if (!v30)
          {
            goto LABEL_51;
          }

          goto LABEL_46;
        }
      }
    }

    else
    {
      v30 = 0;
      if (!v10)
      {
        goto LABEL_43;
      }
    }

    --v10;
    v32 = &v42[16 * v10];
    v33 = *v32;
    v26 = (v32 + 8);
    v13 = v33;
    v8 = v30;
    v11 = v38;
    a2 = v40;
LABEL_40:
    a4 = *v26;
    v6 = v13;
  }

  while (v13);
  v34 = v10 == 0;
  v30 = v8;
  if (!v8)
  {
    goto LABEL_51;
  }

LABEL_46:
  v35 = &ptr[8 * v9 - 24];
  do
  {
    v36 = v9 > 2;
    v9 -= 2;
    if (!v36)
    {
      db_query_tree_apply_block_with_meta_cold_2(v14, v6, v15, a4, v16, v17, v18, v19);
    }

    --v30;
    v14 = (*(a3 + 16))(a3, *v35, *(v35 + 1), *(v35 + 2));
    *v35 = v14;
    v35 -= 16;
  }

  while (v30);
  --v9;
LABEL_51:
  if (v11)
  {
    if (v9)
    {
      db_query_tree_apply_block_with_meta_cold_3(v14, v6, v15, a4, v16, v17, v18, v19);
    }

    if (!v34)
    {
      db_query_tree_apply_block_with_meta_cold_4(v14, v6, v15, a4, v16, v17, v18, v19);
    }
  }

  free(v42);
  free(ptr);
  free(v11);
}

void db_query_tree_apply_block(void *a1, void *a2, uint64_t a3)
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    a2 = v4;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __db_query_tree_apply_block_block_invoke;
    v4[3] = &unk_1E7B26110;
    v4[4] = v3;
  }

  db_query_tree_apply_block_with_meta(a1, a2, a3, 0);
}

uint64_t __db_query_tree_apply_block_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);

  return v1();
}

uint64_t __apply_demorgans_law_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2 <= 3)
  {
    if (v2 == 1)
    {
      v3 = 2;
      goto LABEL_13;
    }

    if (v2 == 2)
    {
      v3 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    switch(v2)
    {
      case 4u:
        v4 = *(a2 + 16);
        v5 = *(v4 + 24);
        if ((v5 - 16) >= 0xFFFFFFF1)
        {
          v6 = dword_1B23E4150[v5];
        }

        else
        {
          v6 = 0;
        }

        *(v4 + 24) = v6;
        break;
      case 0x10u:
        v3 = 32;
        goto LABEL_13;
      case 0x20u:
        v3 = 16;
LABEL_13:
        *(a2 + 48) = v3;
        break;
    }
  }

  return a2;
}

void db_free_qp(int *a1)
{

  free_qp(a1);
}

void free_qp(int *a1)
{
  v2 = *(a1 + 21);
  if (v2)
  {
    if (a1[10] >= 1)
    {
      v3 = 0;
      do
      {
        free(*(*(a1 + 21) + 8 * v3++));
      }

      while (v3 < a1[10]);
      v2 = *(a1 + 21);
    }

    free(v2);
    *(a1 + 21) = 0;
    v4 = *(a1 + 34);
    if (v4)
    {
      free(v4);
      *(a1 + 34) = 0;
    }
  }

  v5 = *(a1 + 37);
  if (v5)
  {
    free(v5);
    *(a1 + 37) = 0;
  }

  v6 = *(a1 + 36);
  if (v6)
  {
    free(v6);
    *(a1 + 36) = 0;
  }

  if (*a1)
  {
    free(*a1);
  }

  *a1 = 0;
  v7 = *(a1 + 17);
  if (v7)
  {
    free(v7);
  }

  *(a1 + 17) = 0;
  a1[36] = 0;
  v8 = *(a1 + 9);
  if (v8)
  {
    free(v8);
  }

  *(a1 + 9) = 0;
  v9 = *(a1 + 11);
  if (v9)
  {
    free(v9);
  }

  if (*(a1 + 15))
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v10();
      *(a1 + 15) = 0;
    }
  }

  v11 = *(a1 + 14);
  if (v11)
  {
    for (i = 0; i != 384; i += 24)
    {
      v13 = *&v11[i + 8];
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = *&v11[i + 16];
      if (v14)
      {
        CFRelease(v14);
      }
    }

    free(v11);
  }

  free(a1);
}

void db_free_query_node(void *result)
{
  v1[5] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 0x40000000;
    v1[2] = __db_query_tree_apply_block_block_invoke;
    v1[3] = &unk_1E7B26110;
    v1[4] = &__block_literal_global_183;
    db_query_tree_apply_block_with_meta(result, v1, 0, 0);
  }
}

uint64_t db_count_query_tree(void *a1)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_count_query_tree_block_invoke;
  v3[3] = &unk_1E7B26158;
  v3[4] = &v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __db_query_tree_apply_block_block_invoke;
  v8[3] = &unk_1E7B26110;
  v8[4] = v3;
  db_query_tree_apply_block_with_meta(a1, v8, 0, 0);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void db_optimize_query_tree(void **a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __db_query_tree_apply_block_block_invoke;
  v7[3] = &unk_1E7B26110;
  v7[4] = &__block_literal_global_41;
  db_query_tree_apply_block_with_meta(v2, v7, &__block_literal_global_44, 0);
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 48);
    if (v5 == 32 || v5 == 16)
    {
      cleanup_children(v3);
    }
  }

  *a1 = v4;
}

uint64_t __db_optimize_query_tree_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 == 32)
  {
    v8 = *(a2 + 16);
    v9 = v8 + 13;
    if (!v8)
    {
      v9 = (a2 + 72);
    }

    *(a2 + 72) = *v9;
    if (v8)
    {
      free_qp(v8);
      *(a2 + 16) = 0;
    }

    cleanup_children(a2);
  }

  else if (v3 == 16)
  {
    v4 = *(a2 + 16);
    v5 = (a2 + 72);
    if (v4)
    {
      v6 = (v4 + 56);
    }

    else
    {
      v6 = (a2 + 72);
    }

    *(a2 + 72) = *v6;
    cleanup_children(a2);
    v7 = *(a2 + 16);
    if (v7)
    {
      free_qp(v7);
      *(a2 + 16) = 0;
    }

    if (*v5 != 0.0)
    {
      *(a2 + 48) = 32;
    }
  }

  return a2;
}

void cleanup_children(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2)
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 0x40000000;
    v6 = __db_query_tree_apply_block_block_invoke;
    v7 = &unk_1E7B26110;
    v8 = &__block_literal_global_183;
    db_query_tree_apply_block_with_meta(v2, &v4, 0, 0);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 0x40000000;
    v6 = __db_query_tree_apply_block_block_invoke;
    v7 = &unk_1E7B26110;
    v8 = &__block_literal_global_183;
    db_query_tree_apply_block_with_meta(v3, &v4, 0, 0);
    *(a1 + 8) = 0;
  }
}

uint64_t __db_optimize_query_tree_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v40 = *MEMORY[0x1E69E9840];
  *a2 = a3;
  *(a2 + 8) = a4;
  v7 = *(a2 + 48);
  if (v7 == 2)
  {
    if (a3)
    {
      if (a4)
      {
        v9 = *(a3 + 48);
        if (v9 != 16)
        {
          v10 = *(a4 + 48);
          if (v10 != 16)
          {
            if (v9 != 32 || v10 != 32)
            {
              if (v9 == 32)
              {
                v27 = *(a3 + 16);
                if (v27)
                {
                  v28 = (v27 + 52);
                }

                else
                {
                  v28 = (a3 + 72);
                }

                v29 = *(a2 + 72) + *v28;
                *(a2 + 8) = 0;
                db_free_query_node(a2);
                *&v30 = v29;
                add_bias(a4, v30);
                return a4;
              }

              if (v10 != 32)
              {
                return v6;
              }

              v31 = *(a4 + 16);
              if (v31)
              {
                v32 = (v31 + 52);
              }

              else
              {
                v32 = (a4 + 72);
              }

              v33 = *(a2 + 72) + *v32;
              *a2 = 0;
              db_free_query_node(a2);
              *&v34 = v33;
              add_bias(a3, v34);
              return a3;
            }

            v20 = *(a2 + 72);
            if (v20 == 0.0)
            {
              v20 = 0.0;
            }

            v21 = *(a3 + 16);
            if (v21)
            {
              v22 = (v21 + 52);
            }

            else
            {
              v22 = (a3 + 72);
            }

            v23 = v20 + *v22;
            v24 = *(a4 + 16);
            if (v24)
            {
              v25 = (v24 + 52);
            }

            else
            {
              v25 = (a4 + 72);
            }

            v26 = v23 + *v25;
            *(a2 + 48) = 32;
            cleanup_children(a2);
            *(v6 + 72) = v26;
            return v6;
          }
        }
      }
    }

    goto LABEL_15;
  }

  if (v7 != 1)
  {
    return v6;
  }

  if (!a3 || (v8 = *(a3 + 48), v8 == 16))
  {
    if (a4 && *(a4 + 48) != 16)
    {
      if (!a3 || (v8 = *(a3 + 48), v8 == 16))
      {
        *(a2 + 8) = 0;
        v35 = MEMORY[0x1E69E9820];
        v36 = 0x40000000;
        v37 = __db_query_tree_apply_block_block_invoke;
        v38 = &unk_1E7B26110;
        v39 = &__block_literal_global_183;
        db_query_tree_apply_block_with_meta(a2, &v35, 0, 0);
        return a4;
      }

      goto LABEL_19;
    }

LABEL_15:
    *(a2 + 48) = 16;
LABEL_16:
    cleanup_children(v6);
    return v6;
  }

  if (!a4)
  {
LABEL_20:
    *a2 = 0;
    v35 = MEMORY[0x1E69E9820];
    v36 = 0x40000000;
    v37 = __db_query_tree_apply_block_block_invoke;
    v38 = &unk_1E7B26110;
    v39 = &__block_literal_global_183;
    db_query_tree_apply_block_with_meta(a2, &v35, 0, 0);
    return a3;
  }

LABEL_19:
  v12 = *(a4 + 48);
  if (v12 == 16)
  {
    goto LABEL_20;
  }

  if (v8 == 32 && ((v13 = *(a3 + 16)) != 0 ? (v14 = (v13 + 52)) : (v14 = (a3 + 72)), v15 = *v14, node_max_bias(a4), v15 >= v16) || v12 == 32 && ((v17 = *(a4 + 16)) != 0 ? (v18 = (v17 + 52)) : (v18 = (a4 + 72)), v15 = *v18, node_max_bias(a3), v15 >= v19))
  {
    *(v6 + 48) = 32;
    *(v6 + 72) = v15;
    goto LABEL_16;
  }

  return v6;
}

void node_max_bias(uint64_t **a1)
{
  v2 = a1[6] & 0xFFF7;
  if (v2 != 32)
  {
    if (v2 == 2)
    {
      v4 = *a1;
      if (*a1)
      {
        node_max_bias(v4);
      }

      v5 = a1[1];
      if (v5)
      {
        goto LABEL_13;
      }
    }

    else if (v2 == 1)
    {
      v3 = *a1;
      if (*a1)
      {
        node_max_bias(v3);
      }

      v5 = a1[1];
      if (v5)
      {
LABEL_13:
        node_max_bias(v5);
      }
    }
  }
}

uint64_t add_bias(uint64_t result, double a2)
{
  if (*&a2 != 0.0)
  {
    v2 = *(result + 16);
    if (v2)
    {
      *(v2 + 52) = vadd_f32(*(v2 + 52), vdup_lane_s32(*&a2, 0));
    }

    else
    {
      v3 = *(result + 72);
      if (v3 == 0.0)
      {
        *(result + 72) = LODWORD(a2);
      }

      else
      {
        *(result + 72) = v3 + *&a2;
      }
    }
  }

  return result;
}

void *query_strdup(const char *a1)
{
  v2 = strlen(a1);
  v3 = malloc_type_malloc(v2 + 1, 0x48C7CD27uLL);
  if (!v3)
  {
    _log_fault_for_malloc_failure();
  }

  memcpy(v3, a1, v2);
  *(v3 + v2) = 0;
  return v3;
}

void *db_make_query_node(char *a1)
{

  return db_make_query_node_with_ann(a1, 0);
}

void *db_make_query_node_with_ann(char *__s, const __CFDictionary *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (__s && !*__s)
  {
    return 0;
  }

  v31 = 0;
  v32 = 0;
  v4 = strlen(__s);
  v5 = check_and_decompose_string(__s, v4 + 1, &v32, &v31);
  if (v5)
  {
    v6 = v5;
    v7 = *__error();
    v8 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      db_make_query_node_with_ann_cold_1(__s, v6, v8);
    }

    v9 = 0;
    *__error() = v7;
    return v9;
  }

  v10 = v32;
  v29 = 3;
  valuePtr = 3;
  v28 = 0;
  if (!a2 || !CFDictionaryContainsKey(a2, @"vectors"))
  {
    Value = 0;
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(a2, @"vectors");
  v12 = CFDictionaryGetValue(a2, @"vec_data_format");
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
  }

  v13 = CFDictionaryGetValue(a2, @"vec_dimensions");
  if (v13)
  {
    CFNumberGetValue(v13, kCFNumberIntType, &v29);
  }

  v14 = CFDictionaryGetValue(a2, @"vec_version");
  if (!v14)
  {
    goto LABEL_17;
  }

  CFNumberGetValue(v14, kCFNumberSInt32Type, &v28);
  v15 = v28;
LABEL_18:
  v27 = 0;
  v26 = v10;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = __db_make_query_node_with_ann_block_invoke;
  v22[3] = &__block_descriptor_tmp_65;
  v23 = valuePtr;
  v24 = v29;
  v25 = v15;
  v22[4] = Value;
  v22[5] = v31;
  v9 = or_expr(&v26, 1, &v27, v22);
  if (v9)
  {
    v16 = (v26 - v10);
    if (v26 - v10 != v31 - 1)
    {
      v17 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "db_make_query_node_with_ann";
        *&buf[12] = 1024;
        *&buf[14] = 6238;
        *&buf[18] = 2048;
        *&buf[20] = v16;
        *&buf[28] = 2048;
        *&buf[30] = v31;
        *&buf[38] = 2080;
        v34 = v10;
        _os_log_error_impl(&dword_1B238B000, v18, OS_LOG_TYPE_ERROR, "%s:%d: query used %ld of %ld - %s", buf, 0x30u);
      }

      *__error() = v17;
    }

    if (db_count_query_tree(v9) >= 0x801)
    {
      v19 = *__error();
      v20 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        db_make_query_node_with_ann_cold_2(v9, __s, v20);
      }

      *__error() = v19;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&buf[24] = &unk_1E7B26110;
      *&buf[32] = &__block_literal_global_183;
      db_query_tree_apply_block_with_meta(v9, buf, 0, 0);
      v9 = 0;
    }
  }

  if (v10 != __s)
  {
    free(v32);
  }

  return v9;
}

void *or_expr(char **a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (*a1)
  {
    while (1)
    {
      v9 = *v8;
      v10 = v9 > 0x20;
      v11 = (1 << v9) & 0x100001600;
      if (v10 || v11 == 0)
      {
        break;
      }

      ++v8;
    }
  }

  *a1 = v8;
  result = and_expr(a1, a2, a3, a4);
  if (result)
  {
    v14 = result;
    for (i = *a1; ; ++i)
    {
      v16 = *i;
      v10 = v16 > 0x20;
      v17 = (1 << v16) & 0x100001600;
      if (v10 || v17 == 0)
      {
        break;
      }
    }

    *a1 = i;
    if (*i == 124)
    {
      v37 = 0;
      v19 = 0;
      while (1)
      {
        *a1 = i + 1;
        if (i[1] != 124)
        {
          if (v37)
          {
            v38 = MEMORY[0x1E69E9820];
            v39 = 0x40000000;
            v40 = __db_query_tree_apply_block_block_invoke;
            v41 = &unk_1E7B26110;
            v42 = &__block_literal_global_183;
            db_query_tree_apply_block_with_meta(v37, &v38, 0, 0);
          }

          if (v14)
          {
            v38 = MEMORY[0x1E69E9820];
            v39 = 0x40000000;
            v40 = __db_query_tree_apply_block_block_invoke;
            v41 = &unk_1E7B26110;
            v42 = &__block_literal_global_183;
            goto LABEL_50;
          }

          return 0;
        }

        for (j = (i + 2); ; ++j)
        {
          v21 = *j;
          v10 = v21 > 0x20;
          v22 = (1 << v21) & 0x100001600;
          if (v10 || v22 == 0)
          {
            break;
          }
        }

        *a1 = j;
        v24 = and_expr(a1, a2, a3, a4);
        v25 = v24;
        v26 = *a1;
        if (*a1)
        {
          while (1)
          {
            v27 = *v26;
            v10 = v27 > 0x20;
            v28 = (1 << v27) & 0x100001600;
            if (v10 || v28 == 0)
            {
              break;
            }

            ++v26;
          }
        }

        *a1 = v26;
        if (!v24)
        {
          break;
        }

        v30 = (*a3)++;
        if (v30 >= 2049)
        {
          if (v37)
          {
            v38 = MEMORY[0x1E69E9820];
            v39 = 0x40000000;
            v40 = __db_query_tree_apply_block_block_invoke;
            v41 = &unk_1E7B26110;
            v42 = &__block_literal_global_183;
            db_query_tree_apply_block_with_meta(v37, &v38, 0, 0);
          }

          if (!v14)
          {
            goto LABEL_60;
          }

LABEL_58:
          v38 = MEMORY[0x1E69E9820];
          v39 = 0x40000000;
          v40 = __db_query_tree_apply_block_block_invoke;
          v41 = &unk_1E7B26110;
          v42 = &__block_literal_global_183;
          v36 = v14;
          goto LABEL_59;
        }

        if (v19)
        {
          v31 = v14;
          v32 = v19[1];
          v33 = malloc_type_calloc(1uLL, 0x50uLL, 0xC5B733F2uLL);
          if (!v33)
          {
            _log_fault_for_malloc_failure();
            v19[1] = 0;
            v36 = v37;
            if (!v37)
            {
              goto LABEL_60;
            }

            v38 = MEMORY[0x1E69E9820];
            v39 = 0x40000000;
            v40 = __db_query_tree_apply_block_block_invoke;
            v41 = &unk_1E7B26110;
            v42 = &__block_literal_global_183;
LABEL_59:
            db_query_tree_apply_block_with_meta(v36, &v38, 0, 0);
            goto LABEL_60;
          }

          v19[1] = v33;
          *v33 = v32;
          v19 = v33;
          v14 = v31;
        }

        else
        {
          v34 = malloc_type_calloc(1uLL, 0x50uLL, 0xC5B733F2uLL);
          if (!v34)
          {
            _log_fault_for_malloc_failure();
            if (v14)
            {
              goto LABEL_58;
            }

LABEL_60:
            v38 = MEMORY[0x1E69E9820];
            v39 = 0x40000000;
            v40 = __db_query_tree_apply_block_block_invoke;
            v41 = &unk_1E7B26110;
            v42 = &__block_literal_global_183;
            v35 = v25;
            goto LABEL_61;
          }

          v19 = v34;
          *v34 = v14;
          v37 = v34;
          v14 = 0;
        }

        *(v19 + 24) = 1;
        v19[1] = v25;
        i = *a1;
        if (**a1 != 124)
        {
          goto LABEL_39;
        }
      }

      if (v37)
      {
        v38 = MEMORY[0x1E69E9820];
        v39 = 0x40000000;
        v40 = __db_query_tree_apply_block_block_invoke;
        v41 = &unk_1E7B26110;
        v42 = &__block_literal_global_183;
        db_query_tree_apply_block_with_meta(v37, &v38, 0, 0);
      }

      if (v14)
      {
        v38 = MEMORY[0x1E69E9820];
        v39 = 0x40000000;
        v40 = __db_query_tree_apply_block_block_invoke;
        v41 = &unk_1E7B26110;
        v42 = &__block_literal_global_183;
LABEL_50:
        v35 = v14;
LABEL_61:
        db_query_tree_apply_block_with_meta(v35, &v38, 0, 0);
      }

      return 0;
    }

    else
    {
      v37 = 0;
LABEL_39:
      if (v37)
      {
        return v37;
      }

      else
      {
        return v14;
      }
    }
  }

  return result;
}

const __CFArray *__db_make_query_node_with_ann_block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (CFArrayGetCount(result) <= a3)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), a3);
    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    v9 = *(a2 + 60) & 0xFFFFFFF3 | (4 * (*(a1 + 48) & 3));
    *(a2 + 60) = v9;
    v10 = v9 & 0xFFFFFFFC | *(a1 + 52) & 3;
    *(a2 + 60) = v10;
    *(a2 + 60) = v10 & 0x1FFFFFF | (*(a1 + 56) << 25);
    v11 = *(a1 + 52);
    v12 = -1;
    if (v11 <= 2)
    {
      v13 = *(a1 + 48);
      if (v13 <= 2)
      {
        v12 = (vector_dimension_vec_sizes[v11] * vector_size_elem_sizes[v13]);
      }
    }

    if (*(a1 + 40) == -1)
    {
      return 0;
    }

    else
    {
      v14 = malloc_type_malloc(v12, 0x81A54655uLL);
      *(a2 + 296) = v14;
      *(a2 + 160) |= 0x10000u;
      memcpy(v14, BytePtr, v12);
      return 1;
    }
  }

  return result;
}

size_t render_qp(uint64_t a1, void **a2, size_t a3, size_t *a4, _DWORD *a5, int a6)
{
  v60 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 24);
  if (v11 <= 12)
  {
    if (v11 != 11)
    {
      if (v11 != 12)
      {
LABEL_31:
        v32 = render_field_name(a1, a2, a3, a4, a5);
        v33 = *(a1 + 24);
        if ((v33 - 9) >= 0xFFFFFFF8)
        {
          v34 = off_1E7B261D8[v33];
        }

        else
        {
          v34 = "bad op";
        }

        v35 = render_string(v34, a2, v32, a4);
        v36 = render_string("", a2, v35, a4);
        if (a6)
        {
          v37 = render_string("...", a2, v36, a4);
        }

        else
        {
          v37 = render_string_protecting_char(*(a1 + 72), a2, v36, a4);
        }

        v38 = render_string("", a2, v37, a4);
        v39 = *(a1 + 32);
        if ((v39 & 0x10) != 0)
        {
          v38 = render_string("c", a2, v38, a4);
          v39 = *(a1 + 32);
          if ((v39 & 0x800000) == 0)
          {
LABEL_39:
            if ((v39 & 0x20) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_58;
          }
        }

        else if ((v39 & 0x800000) == 0)
        {
          goto LABEL_39;
        }

        v47 = render_string("f", a2, v38, a4);
        v48 = *(a1 + 28);
        __str[0] = (v48 / 0x64u) | 0x30;
        __str[1] = (v48 / 0xAu - 10 * ((26 * (v48 / 0xAu)) >> 8)) | 0x30;
        __str[2] = (v48 % 0xAu) | 0x30;
        __str[3] = 0;
        v38 = render_string(__str, a2, v47, a4);
        v39 = *(a1 + 32);
        if ((v39 & 0x20) == 0)
        {
LABEL_40:
          if ((v39 & 0x40) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_59;
        }

LABEL_58:
        v38 = render_string("d", a2, v38, a4);
        v39 = *(a1 + 32);
        if ((v39 & 0x40) == 0)
        {
LABEL_41:
          if ((v39 & 2) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_60;
        }

LABEL_59:
        v38 = render_string("w", a2, v38, a4);
        v39 = *(a1 + 32);
        if ((v39 & 2) == 0)
        {
LABEL_42:
          if ((v39 & 4) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_61;
        }

LABEL_60:
        v38 = render_string("r", a2, v38, a4);
        v39 = *(a1 + 32);
        if ((v39 & 4) == 0)
        {
LABEL_43:
          if ((v39 & 8) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_62;
        }

LABEL_61:
        v38 = render_string("t", a2, v38, a4);
        v39 = *(a1 + 32);
        if ((v39 & 8) == 0)
        {
LABEL_44:
          if ((v39 & 0x1000000) == 0)
          {
LABEL_46:
            if (*(a1 + 52) != 0.0 || *(a1 + 56) != 0.0)
            {
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              *__str = 0u;
              v53 = 0u;
              v40 = render_string("W(", a2, v38, a4);
              snprintf(__str, 0x80uLL, "%.6g", *(a1 + 52));
              v41 = render_string(__str, a2, v40, a4);
              if (*(a1 + 56) != 0.0)
              {
                v42 = render_string(",", a2, v41, a4);
                snprintf(__str, 0x80uLL, "%.6g", *(a1 + 56));
                v41 = render_string(__str, a2, v42, a4);
              }

              v38 = render_string(")", a2, v41, a4);
            }

            if (*(a1 + 60))
            {
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              *__str = 0u;
              v53 = 0u;
              v43 = render_string("L(", a2, v38, a4);
              snprintf(__str, 0x80uLL, "%u", *(a1 + 60));
              v44 = render_string(__str, a2, v43, a4);
              v38 = render_string(")", a2, v44, a4);
            }

            v45 = (*(a1 + 32) >> 37) & 3;
            if (v45 > 1)
            {
              if (v45 == 2)
              {
                v46 = "o";
              }

              else
              {
                v46 = "a";
              }
            }

            else
            {
              if (!v45)
              {
                return v38;
              }

              v46 = "n";
            }

            v38 = render_string(v46, a2, v38, a4);
            if (*(a1 + 96))
            {
              v54 = 0u;
              v55 = 0u;
              *__str = 0u;
              v53 = 0u;
              v49 = render_string("(", a2, v38, a4);
              snprintf(__str, 0x40uLL, "%d", **(a1 + 88));
              v26 = render_string(__str, a2, v49, a4);
              if (*(a1 + 96) >= 2u)
              {
                v50 = 1;
                do
                {
                  v51 = render_string(",", a2, v26, a4);
                  snprintf(__str, 0x40uLL, "%d", *(*(a1 + 88) + 4 * v50));
                  v26 = render_string(__str, a2, v51, a4);
                  ++v50;
                }

                while (v50 < *(a1 + 96));
              }

              goto LABEL_28;
            }

            return v38;
          }

LABEL_45:
          v38 = render_string("s", a2, v38, a4);
          goto LABEL_46;
        }

LABEL_62:
        v38 = render_string("j", a2, v38, a4);
        if ((*(a1 + 32) & 0x1000000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      a3 = render_string("!", a2, a3, a4);
    }

    v20 = render_string("InRange(", a2, a3, a4);
    v21 = render_field_name(a1, a2, v20, a4, a5);
    v22 = render_string(",", a2, v21, a4);
    if (a6)
    {
      v23 = "...";
    }

    else
    {
      v23 = **(a1 + 168);
    }

    v30 = render_string(v23, a2, v22, a4);
    v18 = render_string(",", a2, v30, a4);
    if (a6)
    {
      v19 = "...";
    }

    else
    {
      v19 = *(*(a1 + 168) + 8);
    }

    goto LABEL_27;
  }

  if (v11 == 13)
  {
LABEL_14:
    v24 = render_string("FieldMatch(", a2, a3, a4);
    v25 = render_field_name(a1, a2, v24, a4, a5);
    v26 = render_string(",", a2, v25, a4);
    if (*(a1 + 40) >= 1)
    {
      v27 = 0;
      do
      {
        if (v27)
        {
          v26 = render_string(",", a2, v26, a4);
        }

        v28 = render_string("", a2, v26, a4);
        if (a6)
        {
          v29 = render_string("...", a2, v28, a4);
        }

        else
        {
          v29 = render_string_protecting_char(*(*(a1 + 168) + 8 * v27), a2, v28, a4);
        }

        v26 = render_string("", a2, v29, a4);
        ++v27;
      }

      while (v27 < *(a1 + 40));
    }

    goto LABEL_28;
  }

  if (v11 == 14)
  {
    a3 = render_string("!", a2, a3, a4);
    goto LABEL_14;
  }

  if (v11 != 15)
  {
    goto LABEL_31;
  }

  v12 = render_string("aNN.data(", a2, a3, a4);
  v13 = render_field_name(a1, a2, v12, a4, a5);
  v14 = render_string(",0,", a2, v13, a4);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *__str = 0u;
  v53 = 0u;
  snprintf(__str, 0x80uLL, "%u", (*(a1 + 60) >> 4) & 0xFFFFF);
  v15 = render_string(__str, a2, v14, a4);
  v16 = render_string(",", a2, v15, a4);
  snprintf(__str, 0x80uLL, "%g", *(a1 + 64));
  v17 = render_string(__str, a2, v16, a4);
  v18 = render_string(",", a2, v17, a4);
  if ((*(a1 + 60) & 0x1000000) != 0)
  {
    v19 = "1";
  }

  else
  {
    v19 = "0";
  }

LABEL_27:
  v26 = render_string(v19, a2, v18, a4);
LABEL_28:

  return render_string(")", a2, v26, a4);
}

unint64_t render_end(void **a1, uint64_t a2, size_t *a3)
{
  v5 = a2 + 1;
  v6 = *a3;
  if (v5 <= *a3)
  {
    v8 = *a1;
  }

  else
  {
    do
    {
      v7 = v5 > 2 * v6;
      v6 *= 2;
    }

    while (v7);
    *a3 = v6;
    v8 = malloc_type_realloc(*a1, v6, 0x93E4E095uLL);
    *a1 = v8;
  }

  *(v8 + a2) = 0;
  return v5;
}

uint64_t *_db_render_query_tree(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v51[2047] = *MEMORY[0x1E69E9840];
  v48 = v7;
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    return 0;
  }

  v10 = v6;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  if (v5)
  {
    db_optimize_query_tree(result);
    v9 = *v8;
  }

  v43 = v10;
  if (v11)
  {
    v11 = render_string(v11, v13, 0, &v48);
  }

  memset(v49, 0, 124);
  bzero(v51, 0x3FF8uLL);
  v14 = v12 - 1;
  v15 = 1024;
  __ptr = v9;
  v16 = 1;
  p_ptr = &__ptr;
  v46 = v14;
  v47 = v13;
  while (v14 >= v48)
  {
    v18 = v16 - 1;
    v19 = &p_ptr[2 * v16 - 2];
    v20 = *(v19 + 5);
    if ((v20 & 2) != 0)
    {
      v25 = "(";
      goto LABEL_16;
    }

    if ((v20 & 4) != 0)
    {
      v25 = ")";
      goto LABEL_16;
    }

    v21 = *v19;
    v22 = *(*v19 + 48);
    v23 = v22 & 0xFFFFFFFFFFFFFFF7;
    if ((v22 & 0xFFFFFFF7) > 7)
    {
      v24 = 0;
      if (v20)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v24 = binding_str[v23];
      if (v20)
      {
        goto LABEL_28;
      }
    }

    v27 = *(v19 + 4);
    v28 = *(v19 + 3);
    if (v21[1] || *v21)
    {
      v29 = 3;
      if (v24 < v27)
      {
        v29 = 5;
      }

      if (v29 + v18 > v15)
      {
        v44 = v28;
        v45 = v27;
        if (p_ptr == &__ptr)
        {
          p_ptr = malloc_type_malloc(32 * v15, 0x10200403A5D3213uLL);
          memcpy(p_ptr, &__ptr, 16 * v18);
        }

        else
        {
          p_ptr = reallocf(p_ptr, 32 * v15);
        }

        v27 = v45;
        v15 *= 2;
        v28 = v44;
      }

      if (v24 < v27)
      {
        v31 = &p_ptr[2 * v18];
        *v31 = 0;
        *(v31 + 2) = 0x40000;
        v18 = v16;
      }

      if ((v22 & 8) != 0 && (v23 - 1) <= 1)
      {
        v13 = v47;
        v32 = v11;
        v33 = v27;
        v34 = v28;
        v35 = render_string("!", v47, v32, &v48);
        v36 = render_string("(", v47, v35, &v48);
        v28 = v34;
        v27 = v33;
        v11 = v36;
        v37 = &p_ptr[2 * v18];
        *v37 = 0;
        *(v37 + 2) = 0x40000;
        ++v18;
      }

      else
      {
        v13 = v47;
      }

      v38 = v21[1];
      if (v38)
      {
        v39 = &p_ptr[2 * v18];
        *v39 = v38;
        *(v39 + 4) = v24;
        *(v39 + 5) = 0;
        ++v18;
      }

      v40 = &p_ptr[2 * v18];
      *v40 = v21;
      *(v40 + 4) = v27;
      *(v40 + 5) = v20 | 1;
      *(v40 + 3) = v28;
      if (*v21)
      {
        v41 = &p_ptr[2 * v18 + 2];
        *v41 = *v21;
        *(v41 + 4) = v24;
        *(v41 + 5) = 0;
        v18 += 2;
      }

      else
      {
        ++v18;
      }

      if (v24 < v27)
      {
        v42 = &p_ptr[2 * v18];
        *v42 = 0;
        *(v42 + 2) = 0x20000;
        ++v18;
      }

      v14 = v46;
      goto LABEL_18;
    }

LABEL_28:
    v30 = v22 & 0xFFF7;
    if (v30 > 3)
    {
      v14 = v46;
      v13 = v47;
      if (v30 == 4)
      {
        v26 = render_qp(v21[2], v47, v11, &v48, v49, v43);
        goto LABEL_17;
      }

      if (v30 != 32)
      {
        goto LABEL_35;
      }

      v25 = "true";
    }

    else
    {
      v14 = v46;
      v13 = v47;
      if (v30 == 1)
      {
        v25 = "||";
        goto LABEL_16;
      }

      if (v30 != 2)
      {
LABEL_35:
        v25 = "false";
        goto LABEL_16;
      }

      v25 = "&&";
    }

LABEL_16:
    v26 = render_string(v25, v13, v11, &v48);
LABEL_17:
    v11 = v26;
LABEL_18:
    v16 = v18;
    if (!v18)
    {
      break;
    }
  }

  if (p_ptr != &__ptr)
  {
    free(p_ptr);
  }

  return render_end(v13, v11, &v48);
}

size_t render_string(const char *a1, void **a2, uint64_t a3, size_t *a4)
{
  v8 = strlen(a1);
  v9 = *a4;
  if (v8 + a3 <= *a4)
  {
    v11 = *a2;
  }

  else
  {
    do
    {
      v10 = v8 + a3 > 2 * v9;
      v9 *= 2;
    }

    while (v10);
    *a4 = v9;
    v11 = malloc_type_realloc(*a2, v9, 0xDAC6A741uLL);
    *a2 = v11;
  }

  memcpy(&v11[a3], a1, v8);
  return v8 + a3;
}

void *and_expr(char **a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v6 = a2;
  v39 = *MEMORY[0x1E69E9840];
  result = factor(a1, a2, a3, a4);
  if (result)
  {
    v9 = result;
    for (i = *a1; ; ++i)
    {
      v11 = *i;
      v12 = v11 > 0x20;
      v13 = (1 << v11) & 0x100001600;
      if (v12 || v13 == 0)
      {
        break;
      }
    }

    *a1 = i;
    if (*i == 38)
    {
      v33 = 0;
      v15 = 0;
      while (1)
      {
        *a1 = i + 1;
        if (i[1] != 38)
        {
          if (v33)
          {
            v34 = MEMORY[0x1E69E9820];
            v35 = 0x40000000;
            v36 = __db_query_tree_apply_block_block_invoke;
            v37 = &unk_1E7B26110;
            v38 = &__block_literal_global_183;
            db_query_tree_apply_block_with_meta(v33, &v34, 0, 0);
          }

          if (v9)
          {
            v34 = MEMORY[0x1E69E9820];
            v35 = 0x40000000;
            v36 = __db_query_tree_apply_block_block_invoke;
            v37 = &unk_1E7B26110;
            v38 = &__block_literal_global_183;
            goto LABEL_44;
          }

          return 0;
        }

        for (j = (i + 2); ; ++j)
        {
          v17 = *j;
          v12 = v17 > 0x20;
          v18 = (1 << v17) & 0x100001600;
          if (v12 || v18 == 0)
          {
            break;
          }
        }

        *a1 = j;
        v20 = factor(a1, v6, a3, a4);
        v21 = v20;
        v22 = *a1;
        if (*a1)
        {
          while (1)
          {
            v23 = *v22;
            v12 = v23 > 0x20;
            v24 = (1 << v23) & 0x100001600;
            if (v12 || v24 == 0)
            {
              break;
            }

            ++v22;
          }
        }

        *a1 = v22;
        if (!v20)
        {
          break;
        }

        v26 = (*a3)++;
        if (v26 >= 2049)
        {
          if (v33)
          {
            v34 = MEMORY[0x1E69E9820];
            v35 = 0x40000000;
            v36 = __db_query_tree_apply_block_block_invoke;
            v37 = &unk_1E7B26110;
            v38 = &__block_literal_global_183;
            db_query_tree_apply_block_with_meta(v33, &v34, 0, 0);
          }

          if (!v9)
          {
            goto LABEL_54;
          }

LABEL_52:
          v34 = MEMORY[0x1E69E9820];
          v35 = 0x40000000;
          v36 = __db_query_tree_apply_block_block_invoke;
          v37 = &unk_1E7B26110;
          v38 = &__block_literal_global_183;
          v32 = v9;
          goto LABEL_53;
        }

        if (v15)
        {
          v27 = v9;
          v28 = v15[1];
          v29 = malloc_type_calloc(1uLL, 0x50uLL, 0xC5B733F2uLL);
          if (!v29)
          {
            _log_fault_for_malloc_failure();
            v15[1] = 0;
            v32 = v33;
            if (!v33)
            {
              goto LABEL_54;
            }

            v34 = MEMORY[0x1E69E9820];
            v35 = 0x40000000;
            v36 = __db_query_tree_apply_block_block_invoke;
            v37 = &unk_1E7B26110;
            v38 = &__block_literal_global_183;
LABEL_53:
            db_query_tree_apply_block_with_meta(v32, &v34, 0, 0);
            goto LABEL_54;
          }

          v15[1] = v29;
          *v29 = v28;
          v15 = v29;
          v9 = v27;
        }

        else
        {
          v30 = malloc_type_calloc(1uLL, 0x50uLL, 0xC5B733F2uLL);
          if (!v30)
          {
            _log_fault_for_malloc_failure();
            if (v9)
            {
              goto LABEL_52;
            }

LABEL_54:
            v34 = MEMORY[0x1E69E9820];
            v35 = 0x40000000;
            v36 = __db_query_tree_apply_block_block_invoke;
            v37 = &unk_1E7B26110;
            v38 = &__block_literal_global_183;
            v31 = v21;
            goto LABEL_55;
          }

          v15 = v30;
          *v30 = v9;
          v33 = v30;
          v9 = 0;
        }

        *(v15 + 24) = 2;
        v15[1] = v21;
        i = *a1;
        if (**a1 != 38)
        {
          goto LABEL_33;
        }
      }

      if (v33)
      {
        v34 = MEMORY[0x1E69E9820];
        v35 = 0x40000000;
        v36 = __db_query_tree_apply_block_block_invoke;
        v37 = &unk_1E7B26110;
        v38 = &__block_literal_global_183;
        db_query_tree_apply_block_with_meta(v33, &v34, 0, 0);
      }

      if (v9)
      {
        v34 = MEMORY[0x1E69E9820];
        v35 = 0x40000000;
        v36 = __db_query_tree_apply_block_block_invoke;
        v37 = &unk_1E7B26110;
        v38 = &__block_literal_global_183;
LABEL_44:
        v31 = v9;
LABEL_55:
        db_query_tree_apply_block_with_meta(v31, &v34, 0, 0);
      }

      return 0;
    }

    else
    {
      v33 = 0;
LABEL_33:
      if (v33)
      {
        return v33;
      }

      else
      {
        return v9;
      }
    }
  }

  return result;
}

void *factor(char **a1, int a2, _DWORD *a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *v6;
  if (v7 == 33)
  {
    ++v6;
    while (1)
    {
      v8 = *v6;
      v9 = v8 > 0x20;
      v10 = (1 << v8) & 0x100001600;
      if (v9 || v10 == 0)
      {
        break;
      }

      ++v6;
    }

    *a1 = v6;
    v12 = *v6;
  }

  else
  {
    v12 = *v6;
  }

  if (v12 != 40)
  {
    query_piece = get_query_piece(v6, a1, a4);
    if (!query_piece)
    {
      return 0;
    }

    v18 = query_piece;
    v19 = *a1;
    if (*a1)
    {
      while (1)
      {
        v20 = *v19;
        v9 = v20 > 0x20;
        v21 = (1 << v20) & 0x100001600;
        if (v9 || v21 == 0)
        {
          break;
        }

        ++v19;
      }
    }

    *a1 = v19;
    v25 = (*a3)++;
    if (v25 >= 2049)
    {
      free_qp(query_piece);
      return 0;
    }

    v26 = malloc_type_calloc(1uLL, 0x50uLL, 0xC5B733F2uLL);
    v24 = v26;
    if (!v26)
    {
      _log_fault_for_malloc_failure();
      free_qp(v18);
      return v24;
    }

    v27 = v18[6];
    if (v27 == 9)
    {
      free_qp(v18);
      v28 = v7 == 33;
      v29 = 16;
      v30 = 32;
    }

    else
    {
      if (v27 != 10)
      {
        v26[24] = 4;
        *(v26 + 2) = v18;
        if (v7 == 33)
        {
          if ((v27 - 16) >= 0xFFFFFFF1)
          {
            v32 = dword_1B23E4150[v27];
          }

          else
          {
            v32 = 0;
          }

          v18[6] = v32;
        }

        return v24;
      }

      free_qp(v18);
      v28 = v7 == 33;
      v29 = 32;
      v30 = 16;
    }

    if (v28)
    {
      v29 = v30;
    }

    *(v24 + 24) = v29;
    return v24;
  }

  for (i = (v6 + 1); ; ++i)
  {
    v14 = *i;
    v9 = v14 > 0x20;
    v15 = (1 << v14) & 0x100001600;
    if (v9 || v15 == 0)
    {
      break;
    }
  }

  *a1 = i;
  if (a2 > 99)
  {
    return 0;
  }

  v23 = or_expr(a1, (a2 + 1), a3, a4);
  v24 = v23;
  if (v23)
  {
    if (v7 == 33)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 0x40000000;
      v35 = __db_query_tree_apply_block_block_invoke;
      v36 = &unk_1E7B26110;
      v37 = &__block_literal_global_12;
      db_query_tree_apply_block_with_meta(v23, &v33, 0, 0);
    }

    if (**a1 == 41)
    {
      ++*a1;
      return v24;
    }

    v33 = MEMORY[0x1E69E9820];
    v34 = 0x40000000;
    v35 = __db_query_tree_apply_block_block_invoke;
    v36 = &unk_1E7B26110;
    v37 = &__block_literal_global_183;
    db_query_tree_apply_block_with_meta(v24, &v33, 0, 0);
    return 0;
  }

  return v24;
}

float *get_query_piece(char *a1, char **a2, uint64_t a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x130uLL, 0xC5B733F2uLL);
  if (!v6)
  {
    _log_fault_for_malloc_failure();
    return v6;
  }

  v7 = *a1;
  if (*a1)
  {
    v8 = MEMORY[0x1E69E9830];
    do
    {
      if (v7 < 0)
      {
        if (!__maskrune(v7, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v8 + 4 * v7 + 60) & 0x4000) == 0)
      {
        break;
      }

      v9 = *++a1;
      v7 = v9;
    }

    while (v9);
  }

  v101 = 0;
  bzero(__s1, 0x420uLL);
  __str = a1;
  if (!*a1)
  {
    goto LABEL_194;
  }

  __str = parse_string_piece(a1, __s1, 1056, &v101);
  v10 = process_qp_field_name(v6, __s1, v101);
  if (!v10)
  {
    goto LABEL_194;
  }

  v11 = v10;
  *v6 = v10;
  v12 = *__str;
  if (*__str)
  {
    v13 = __str + 1;
    v14 = MEMORY[0x1E69E9830];
    do
    {
      if (v12 < 0)
      {
        if (!__maskrune(v12, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v14 + 4 * v12 + 60) & 0x4000) == 0)
      {
        break;
      }

      __str = v13;
      v15 = *v13++;
      v12 = v15;
    }

    while (v15);
    v11 = *v6;
  }

  if (!strcasecmp(v11, "true"))
  {
    v22 = 10;
LABEL_38:
    *(v6 + 6) = v22;
    if (v11)
    {
      free(v11);
    }

    *v6 = 0;
    goto LABEL_41;
  }

  if (!strcasecmp(v11, "false"))
  {
    v22 = 9;
    goto LABEL_38;
  }

  v16 = __str;
  v17 = *__str;
  if (v17 != 40)
  {
    goto LABEL_30;
  }

  if (_os_feature_enabled_impl() && !strcmp("aNN.data", *v6))
  {
    *(v6 + 6) = 15;
    v26 = __str + 1;
    v27 = MEMORY[0x1E69E9830];
    do
    {
      __str = v26;
      v28 = *v26;
      if (!*v26)
      {
        break;
      }

      v29 = (v28 & 0x80000000) != 0 ? __maskrune(v28, 0x4000uLL) : *(v27 + 4 * v28 + 60) & 0x4000;
      ++v26;
    }

    while (v29);
    free(*v6);
    __str = parse_string_piece(__str, __s1, 1056, &v101);
    *v6 = process_qp_field_name(v6, __s1, v101);
    if (!parse_comma(__str, &__str))
    {
      goto LABEL_194;
    }

    v99 = 0;
    v30 = strtol(__str, &v99, 0);
    v31 = v99;
    if (!v99)
    {
      goto LABEL_194;
    }

    if (v99 == __str)
    {
      goto LABEL_194;
    }

    v99 = 0;
    __str = v31;
    if (!parse_comma(v31, &__str))
    {
      goto LABEL_194;
    }

    v32 = strtol(__str, &v99, 0);
    v33 = v99;
    if (!v99 || v99 == __str)
    {
      goto LABEL_194;
    }

    v34 = *(v6 + 15);
    v35 = v34 & 0xFF00000F | (16 * v32);
    v36 = v34 | 0xFFFFF0;
    v37 = v32 >> 20 ? v36 : v35;
    *(v6 + 15) = v37;
    v99 = 0;
    __str = v33;
    ++*(v6 + 10);
    if (!parse_comma(v33, &__str))
    {
      goto LABEL_194;
    }

    v38 = strtof(__str, &v99);
    v39 = v99;
    if (!v99)
    {
      goto LABEL_194;
    }

    if (v99 == __str)
    {
      goto LABEL_194;
    }

    v6[16] = v38;
    ++*(v6 + 10);
    __str = v39;
    if (!parse_comma(v39, &__str))
    {
      goto LABEL_194;
    }

    *(v6 + 40) |= 0x10000u;
    if (((*(a3 + 16))(a3, v6, v30) & 1) == 0)
    {
      *(v6 + 15) &= 0xFF00000F;
    }

    *(v6 + 10) += 3;
    v40 = __str;
    v41 = *__str;
    switch(v41)
    {
      case '1':
LABEL_191:
        v94 = v40 + 1;
        __str = v40 + 1;
        v95 = *(v6 + 15) | 0x1000000;
        break;
      case '0':
LABEL_190:
        v94 = v40 + 1;
        __str = v40 + 1;
        v95 = v6[15] & 0xFEFFFFFF;
        break;
      case ')':
        v42 = __str + 1;
LABEL_78:
        __str = v42;
        *(v6 + 15) &= ~0x1000000u;
        goto LABEL_41;
      default:
        goto LABEL_194;
    }

    *(v6 + 15) = v95;
    v96 = parse_whitespace(v94);
    __str = v96;
    if (*v96 != 41)
    {
      goto LABEL_194;
    }

    __str = v96 + 1;
LABEL_41:
    *a2 = __str;
    return v6;
  }

  v18 = _os_feature_enabled_impl();
  v19 = *v6;
  if (!v18 || strcmp("aNN", *v6))
  {
    if (!strcmp("InRange", v19))
    {
      v25 = 11;
    }

    else
    {
      if (strcmp("FieldMatch", v19))
      {
        v16 = __str;
        if (!*(v6 + 6))
        {
          v17 = *__str;
LABEL_30:
          if (v17 > 60)
          {
            if (v17 == 62)
            {
              v20 = (v16 + 1);
              __str = v16 + 1;
              if (v16[1] == 61)
              {
                v21 = 4;
                goto LABEL_52;
              }

              v24 = 8;
            }

            else
            {
              if (v17 != 61)
              {
                goto LABEL_194;
              }

              *(v6 + 6) = 1;
              v20 = (v16 + 1);
              __str = v16 + 1;
              v23 = v16[1];
              if (v23 != 61)
              {
                goto LABEL_108;
              }

              v20 = (v16 + 2);
              __str = v16 + 2;
              v23 = v16[2];
              if (v23 != 61)
              {
                goto LABEL_108;
              }

              v20 = (v16 + 3);
              __str = v16 + 3;
              v24 = 2;
            }
          }

          else
          {
            if (v17 == 33)
            {
              if (v16[1] != 61)
              {
                goto LABEL_194;
              }

              v21 = 5;
              goto LABEL_52;
            }

            if (v17 != 60)
            {
              goto LABEL_194;
            }

            v20 = (v16 + 1);
            __str = v16 + 1;
            if (v16[1] == 61)
            {
              v21 = 3;
LABEL_52:
              *(v6 + 6) = v21;
              v20 = (v16 + 2);
              __str = v16 + 2;
LABEL_107:
              v23 = *v20;
LABEL_108:
              if (!v23)
              {
                goto LABEL_194;
              }

              v57 = (v20 + 1);
              v58 = MEMORY[0x1E69E9830];
              while (1)
              {
                if ((v23 & 0x80) != 0)
                {
                  if (!__maskrune(v23, 0x4000uLL))
                  {
LABEL_116:
                    if (*__str)
                    {
                      __str = parse_string_piece(__str, __s1, 1056, &v101);
                      *(v6 + 9) = query_strdup(__s1);
                      while (1)
                      {
                        v60 = __str;
                        switch(*__str)
                        {
                          case 'W':
                            v61 = ++__str;
                            if (v60[1] == 40)
                            {
                              get_weights(v6, v61, &__str);
                            }

                            continue;
                          case 'X':
                          case 'Y':
                          case 'Z':
                          case '[':
                          case '\\':
                          case ']':
                          case '^':
                          case '_':
                          case 'e':
                          case 'g':
                          case 'h':
                          case 'k':
                          case 'l':
                          case 'm':
                          case 'q':
                          case 'u':
                          case 'v':
                          case 'y':
                            goto LABEL_41;
                          case 'a':
                            v64 = *(v6 + 4) | 0x6000000000;
                            goto LABEL_141;
                          case 'b':
                            v63 = *(v6 + 4) | 0x20000000;
                            goto LABEL_138;
                          case 'c':
                            v63 = *(v6 + 4) | 0x10;
                            goto LABEL_138;
                          case 'd':
                            v63 = *(v6 + 4) | 0x20;
                            goto LABEL_138;
                          case 'f':
                            *(v6 + 4) |= 0x800000uLL;
                            __str = v60 + 2;
                            v65 = 100 * __maskrune(v60[1], 0xFuLL);
                            v66 = __str++;
                            LOBYTE(v65) = v65 + 10 * __maskrune(*v66, 0xFuLL);
                            v67 = __str++;
                            *(v6 + 28) = (v65 + __maskrune(*v67, 0xFuLL)) & 0x7F;
                            continue;
                          case 'i':
                            v63 = *(v6 + 4) | 0x200000000;
                            goto LABEL_138;
                          case 'j':
                            v63 = *(v6 + 4) | 8;
                            goto LABEL_138;
                          case 'n':
                            v64 = *(v6 + 4) | 0x2000000000;
                            goto LABEL_141;
                          case 'o':
                            v64 = *(v6 + 4) | 0x4000000000;
LABEL_141:
                            *(v6 + 4) = v64;
                            __str = v60 + 1;
                            if (v60[1] == 40)
                            {
                              get_proximities(v6, v60 + 1, &__str);
                            }

                            continue;
                          case 'p':
                            v63 = *(v6 + 4) | 0x40000000;
                            goto LABEL_138;
                          case 'r':
                            v63 = *(v6 + 4) | 2;
                            goto LABEL_138;
                          case 's':
                            v63 = *(v6 + 4) | 0x1000000;
                            goto LABEL_138;
                          case 't':
                            v63 = *(v6 + 4) | 4;
                            goto LABEL_138;
                          case 'w':
                            v63 = *(v6 + 4) | 0x40;
                            goto LABEL_138;
                          case 'x':
                            v63 = *(v6 + 4) | 0x100000000;
                            goto LABEL_138;
                          case 'z':
                            v63 = *(v6 + 4) | 0x80000000;
LABEL_138:
                            *(v6 + 4) = v63;
                            __str = v60 + 1;
                            continue;
                          default:
                            if (*__str != 76)
                            {
                              goto LABEL_41;
                            }

                            v62 = ++__str;
                            if (v60[1] == 40)
                            {
                              get_wildcard_limit(v6, v62, &__str);
                            }

                            break;
                        }
                      }
                    }

                    goto LABEL_194;
                  }
                }

                else if ((*(v58 + 4 * v23 + 60) & 0x4000) == 0)
                {
                  goto LABEL_116;
                }

                __str = v57;
                v59 = *v57++;
                LOBYTE(v23) = v59;
                if (!v59)
                {
                  goto LABEL_194;
                }
              }
            }

            v24 = 7;
          }

          *(v6 + 6) = v24;
          goto LABEL_107;
        }

        goto LABEL_81;
      }

      v25 = 13;
    }

    *(v6 + 6) = v25;
    v16 = __str;
LABEL_81:
    v43 = v16 + 1;
    v44 = MEMORY[0x1E69E9830];
    do
    {
      __str = v43;
      v45 = *v43;
      if (!*v43)
      {
        break;
      }

      v46 = (v45 & 0x80000000) != 0 ? __maskrune(v45, 0x4000uLL) : *(v44 + 4 * v45 + 60) & 0x4000;
      ++v43;
    }

    while (v46);
    free(*v6);
    __str = parse_string_piece(__str, __s1, 1056, &v101);
    *v6 = process_qp_field_name(v6, __s1, v101);
    parse_comma(__str, &__str);
    get_args(v6);
    v47 = *(v6 + 6);
    if (v47 == 13)
    {
      if (*(v6 + 10) < 1)
      {
        goto LABEL_194;
      }
    }

    else if (v47 == 11 && *(v6 + 10) != 2)
    {
      goto LABEL_194;
    }

    goto LABEL_41;
  }

  *(v6 + 6) = 15;
  v48 = __str + 1;
  v49 = MEMORY[0x1E69E9830];
  do
  {
    __str = v48;
    v50 = *v48;
    if (!*v48)
    {
      break;
    }

    v51 = (v50 & 0x80000000) != 0 ? __maskrune(v50, 0x4000uLL) : *(v49 + 4 * v50 + 60) & 0x4000;
    ++v48;
  }

  while (v51);
  free(*v6);
  __str = parse_string_piece(__str, __s1, 1056, &v101);
  *v6 = process_qp_field_name(v6, __s1, v101);
  if (parse_comma(__str, &__str))
  {
    v52 = __str;
    v53 = *__str;
    if (v53 == 52)
    {
      v54 = 0;
      v52 = ++__str;
      *(v6 + 15) &= 0xFFFFFFF3;
      v55 = 1;
      v56 = 4;
    }

    else if (v53 == 50)
    {
      v55 = 0;
      v52 = ++__str;
      *(v6 + 15) = v6[15] & 0xFFFFFFF3 | 4;
      v54 = 1;
      v56 = 2;
    }

    else
    {
      v54 = 0;
      v55 = 0;
      if (v53 == 49)
      {
        v52 = ++__str;
        *(v6 + 15) = v6[15] & 0xFFFFFFF3 | 8;
        v56 = 1;
      }

      else
      {
        v56 = 0;
      }
    }

    ++*(v6 + 10);
    if (parse_comma(v52, &__str))
    {
      v99 = 0;
      v68 = strtol(__str, &v99, 0);
      v69 = v99;
      if (v99)
      {
        if (v99 != __str)
        {
          switch(v68)
          {
            case 0x100u:
              v70 = v6[15] & 0xFFFFFFFC;
              break;
            case 0x200u:
              v70 = v6[15] & 0xFFFFFFFC | 1;
              break;
            case 0x300u:
              v70 = v6[15] & 0xFFFFFFFC | 2;
              break;
            default:
              goto LABEL_194;
          }

          *(v6 + 15) = v70;
          ++*(v6 + 10);
          __str = v69;
          if (parse_comma(v69, &__str))
          {
            v71 = __str;
            if (*__str == 118)
            {
              *(v6 + 15) = v6[15] & 0x1FFFFFF | (strtoul(++__str, &v99, 0) << 25);
              __str = v99;
              if (!parse_comma(v99, &__str))
              {
                goto LABEL_194;
              }

              v71 = __str;
            }

            else
            {
              *(v6 + 15) &= 0x1FFFFFFu;
            }

            if (*v71 == 105)
            {
              __str = v71 + 1;
              if (v71[1] == 120)
              {
                v72 = v71 + 2;
                v73 = -1;
              }

              else
              {
                v74 = strtol(v71 + 1, &v99, 0);
                if (v74 > 2)
                {
                  v73 = -1;
                }

                else
                {
                  v73 = v74;
                }

                v72 = v99;
              }

              *(v6 + 20) = v73;
              __str = v72;
              if ((parse_comma(v72, &__str) & 1) == 0)
              {
                goto LABEL_194;
              }
            }

            else
            {
              v6[20] = 0.0;
            }

            v75 = malloc_type_malloc(v68 * v56, 0xC33CA856uLL);
            v76 = 0;
            *(v6 + 37) = v75;
            *(v6 + 40) |= 0x10000u;
            v77 = __str;
            while (1)
            {
              v99 = 0;
              _S0 = strtof(v77, &v99);
              if (v54)
              {
                __asm { FCVT            H0, S0 }

                *(*(v6 + 37) + 2 * v76) = _H0;
              }

              else
              {
                if (!v55)
                {
                  break;
                }

                *(*(v6 + 37) + 4 * v76) = _S0;
              }

              if (!v99)
              {
                break;
              }

              __str = v99;
              v77 = parse_whitespace(v99);
              __str = v77;
              if (v68 == ++v76)
              {
                ++*(v6 + 10);
                if (!parse_comma(v77, &__str))
                {
                  break;
                }

                v99 = 0;
                v84 = strtol(__str, &v99, 0);
                v85 = v99;
                if (!v99 || v99 == __str)
                {
                  break;
                }

                v86 = *(v6 + 15);
                v87 = v86 & 0xFF00000F | (16 * v84);
                v88 = v86 | 0xFFFFF0;
                v89 = v84 >> 20 ? v88 : v87;
                *(v6 + 15) = v89;
                __str = v85;
                ++*(v6 + 10);
                if (!parse_comma(v85, &__str))
                {
                  break;
                }

                v90 = strtof(__str, &v99);
                v91 = v99;
                if (!v99 || v99 == __str)
                {
                  break;
                }

                v6[16] = v90;
                ++*(v6 + 10);
                __str = v91;
                v92 = parse_whitespace(v91);
                __str = v92;
                if (*v92 == 41)
                {
                  v42 = v92 + 1;
                  goto LABEL_78;
                }

                if (!parse_comma(v92, &__str))
                {
                  break;
                }

                v40 = __str;
                v93 = *__str;
                if (v93 != 49)
                {
                  if (v93 != 48)
                  {
                    break;
                  }

                  goto LABEL_190;
                }

                goto LABEL_191;
              }
            }
          }
        }
      }
    }
  }

LABEL_194:
  if (*v6)
  {
    free(*v6);
    *v6 = 0;
  }

  v97 = *(v6 + 9);
  if (v97)
  {
    free(v97);
  }

  free(v6);
  return 0;
}

unsigned __int8 *parse_string_piece(uint64_t a1, _BYTE *a2, int a3, _DWORD *a4)
{
  v5 = a2;
  v6 = &a2[a3 - 1];
  for (i = (a1 + 1); ; ++i)
  {
    v8 = *(i - 1);
    if (v8 > 0x27)
    {
      goto LABEL_27;
    }

    if (((1 << v8) & 0x100000600) == 0)
    {
      break;
    }
  }

  if (((1 << v8) & 0x8400000000) != 0)
  {
    v9 = *i;
    if (!*i)
    {
      v10 = a2;
      goto LABEL_64;
    }

    v10 = a2;
    while (1)
    {
      if (v9 == v8)
      {
        ++i;
        goto LABEL_64;
      }

      if (v9 == 92)
      {
        v11 = i + 1;
        v9 = i[1];
        if (v9 != 34 && v9 != 39)
        {
          if (v9 == 92)
          {
            if (v10 < v6)
            {
              *v10++ = 92;
            }

            v12 = 5u;
LABEL_19:
            i = v11;
          }

          else
          {
            v12 = 5;
          }

          v13 = utf8_byte_length_utf8_len_table_1[v12];
          v14 = &v10[v13];
          if (&v10[v13] >= v6)
          {
            v6 = v10;
          }

          else
          {
            memcpy(v10, i, utf8_byte_length_utf8_len_table_1[v12]);
            v10 = v14;
          }

          i += v13;
          goto LABEL_24;
        }
      }

      else
      {
        v11 = i;
      }

      v12 = v9 >> 4;
      if ((v12 & 0xC) != 8)
      {
        goto LABEL_19;
      }

      i = v11 + 1;
LABEL_24:
      v9 = *i;
      if (!*i)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_27:
  if (v8 == 36)
  {
    *a2 = 36;
    v10 = a2 + 1;
    v15 = *i;
    if (!*i)
    {
      goto LABEL_64;
    }
  }

  else
  {
    --i;
    v15 = v8;
    v10 = a2;
    if (!v8)
    {
      goto LABEL_64;
    }
  }

  v16 = 0;
  v17 = 1;
  while (1)
  {
    v18 = i + 1;
    if (v15 <= 0x3E)
    {
      if (((1 << v15) & 0x7000104300000600) != 0)
      {
        goto LABEL_36;
      }

      if (v15 == 40)
      {
        if (v8 != 36)
        {
          goto LABEL_63;
        }

        v16 += v8 == 36;
        v15 = 40;
        goto LABEL_37;
      }

      if (v15 == 41)
      {
        break;
      }
    }

    if (v15 != 92)
    {
      if (v15 == 124)
      {
LABEL_36:
        if (!v16)
        {
          goto LABEL_63;
        }
      }

LABEL_37:
      i = v18;
      goto LABEL_38;
    }

    v15 = *v18;
    if (v15 != 39 && v15 != 34)
    {
      v19 = i[2];
      i += 2;
      if (v19 == 92)
      {
        if (v10 < v6)
        {
          *v10++ = 92;
          v15 = *v18;
        }

        goto LABEL_38;
      }

      v15 = 92;
      goto LABEL_37;
    }

    i += 2;
LABEL_38:
    if (v15 && v10 < v6)
    {
      *v10++ = v15;
    }

    v15 = *i;
    if (!*i)
    {
      goto LABEL_64;
    }
  }

  if (!v16)
  {
    goto LABEL_63;
  }

  if (--v16)
  {
    v15 = 41;
    goto LABEL_37;
  }

  if (v10 < v6)
  {
    *v10++ = 41;
  }

  v17 = 2;
LABEL_63:
  i = &i[v17 - 1];
LABEL_64:
  *v10 = 0;
  if (a4)
  {
    *a4 = v10 - v5;
  }

  return i;
}

void *process_qp_field_name(uint64_t a1, char *__s1, unsigned int a3)
{
  v3 = __s1;
  v4 = a3 - 2;
  if (a3 < 2)
  {
    goto LABEL_35;
  }

  v5 = &__s1[a3];
  if (*(v5 - 1) != 93)
  {
    goto LABEL_35;
  }

  if (a3 <= 3)
  {
    *(a1 + 32) |= 0x2000000uLL;
    *(a1 + 44) = 0;
    goto LABEL_35;
  }

  v7 = 0;
  v8 = 0;
  v9 = v5 - 2;
  v10 = MEMORY[0x1E69E9830];
  while (1)
  {
    v11 = &v3[v4];
    v12 = *v11;
    if (v12 == 36)
    {
      v16 = v8 ^ 1;
      v8 = 1;
      goto LABEL_24;
    }

    if (v12 == 91)
    {
      break;
    }

    v13 = v12;
    if (v12 < 0)
    {
      if (__maskrune(v12, 0x400uLL))
      {
LABEL_12:
        if (v8)
        {
          *(a1 + 32) |= 0x2000000uLL;
          *(a1 + 44) = 0;
          if (v7)
          {
            *(a1 + 44) = atoi(v7);
          }

          return 0;
        }

        v8 = 0;
        if (v7)
        {
          v17 = v7 == v11 + 1;
        }

        else
        {
          v17 = 1;
        }

        v16 = v17;
        if (v17)
        {
          v7 = v9;
        }

        goto LABEL_24;
      }

      v15 = __maskrune(v13, 0x4000uLL);
    }

    else
    {
      v14 = *(v10 + 4 * v12 + 60);
      if ((v14 & 0x400) != 0)
      {
        goto LABEL_12;
      }

      v15 = v14 & 0x4000;
    }

    v16 = v15 != 0;
LABEL_24:
    if (v4 >= 3)
    {
      --v4;
      if (v16)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  *v11 = 0;
  v16 = 1;
LABEL_29:
  v18 = *(a1 + 32);
  if ((v8 & 1) == 0 && v7)
  {
    *(a1 + 32) = v18 | 0x4000000;
    *(a1 + 44) = 0;
    goto LABEL_33;
  }

  *(a1 + 32) = v18 | 0x2000000;
  *(a1 + 44) = 0;
  if (v7)
  {
LABEL_33:
    *(a1 + 44) = atoi(v7);
  }

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v19 = *v3;
  if (v19 > 0x6C)
  {
    if (*v3 > 0x71u)
    {
      if (v19 == 114)
      {
        if (!strncmp(v3, "received.", 9uLL))
        {
          if (!strcmp(v3 + 10, "date"))
          {
            v3 = "kMDItemUserSharedReceivedDate";
          }

          else if (!strcmp(v3 + 10, "sender"))
          {
            v3 = "kMDItemUserSharedReceivedSender";
          }

          else if (!strcmp(v3 + 10, "receivers"))
          {
            v3 = "kMDItemUserSharedReceivedRecipient";
          }

          else if (!strcmp(v3 + 10, "transport"))
          {
            v3 = "kMDItemUserSharedReceivedTransport";
          }

          else if (!strcmp(v3 + 10, "senderHandle"))
          {
            v3 = "kMDItemUserSharedReceivedSenderHandle";
          }

          else if (!strcmp(v3 + 10, "receiverHandles"))
          {
            v3 = "kMDItemUserSharedReceivedRecipientHandle";
          }
        }
      }

      else if (v19 == 115 && !strncmp(v3, "sent.", 5uLL))
      {
        if (!strcmp(v3 + 6, "date"))
        {
          v3 = "kMDItemUserSharedSentDate";
        }

        else if (!strcmp(v3 + 6, "sender"))
        {
          v3 = "kMDItemUserSharedSentSender";
        }

        else if (!strcmp(v3 + 6, "recipients"))
        {
          v3 = "kMDItemUserSharedSentRecipient";
        }

        else if (!strcmp(v3 + 6, "transport"))
        {
          v3 = "kMDItemUserSharedSentTransport";
        }

        else if (!strcmp(v3 + 6, "senderHandle"))
        {
          v3 = "kMDItemUserSharedSentSenderHandle";
        }

        else if (!strcmp(v3 + 6, "recipientHandles"))
        {
          v3 = "kMDItemUserSharedSentRecipientHandle";
        }
      }
    }

    else if (v19 == 109)
    {
      if (!strncmp(v3, "modified.", 9uLL))
      {
        if (!strcmp(v3 + 10, "date"))
        {
          v3 = "kMDItemUserModifiedDate";
        }

        else if (!strcmp(v3 + 10, "user"))
        {
          v3 = "kMDItemUserModifiedUserHandle";
        }
      }
    }

    else if (v19 == 112 && !strncmp(v3, "printed.", 8uLL))
    {
      if (!strcmp(v3 + 9, "date"))
      {
        v3 = "kMDItemUserPrintedDate";
      }

      else if (!strcmp(v3 + 9, "user"))
      {
        v3 = "kMDItemUserPrintedUserHandle";
      }
    }

    goto LABEL_73;
  }

  if (!*v3)
  {
    return 0;
  }

  if (v19 == 99)
  {
    if (!strncmp(v3, "created.", 8uLL))
    {
      if (!strcmp(v3 + 9, "date"))
      {
        v3 = "kMDItemUserCreatedUserHandle";
      }

      else if (!strcmp(v3 + 9, "user"))
      {
        v3 = "kMDItemUserCreatedDate";
      }
    }
  }

  else if (v19 == 100 && !strncmp(v3, "downloaded.", 0xBuLL))
  {
    if (!strcmp(v3 + 12, "date"))
    {
      v3 = "kMDItemUserDownloadedUserHandle";
    }

    else if (!strcmp(v3 + 12, "user"))
    {
      v3 = "kMDItemUserDownloadedDate";
    }
  }

LABEL_73:

  return query_strdup(v3);
}

uint64_t parse_comma(char *a1, char **a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = a1 + 1;
  v5 = MEMORY[0x1E69E9830];
  while ((v2 & 0x80) == 0)
  {
    if ((*(v5 + 4 * v2 + 60) & 0x4000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v6 = *v4++;
    v2 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (__maskrune(v2, 0x4000uLL))
  {
    goto LABEL_7;
  }

LABEL_9:
  if (*(v4 - 1) != 44)
  {
    return 0;
  }

  do
  {
    v7 = v4;
    v8 = *v4;
    if (!*v4)
    {
      break;
    }

    v9 = (v8 & 0x80000000) != 0 ? __maskrune(v8, 0x4000uLL) : *(v5 + 4 * v8 + 60) & 0x4000;
    ++v4;
  }

  while (v9);
  *a2 = v7;
  return 1;
}

_BYTE *parse_whitespace(_BYTE *a1)
{
  v1 = a1;
  v2 = *a1;
  if (*a1)
  {
    do
    {
      if (!isspace(v2))
      {
        break;
      }

      v3 = *++v1;
      v2 = v3;
    }

    while (v3);
  }

  return v1;
}

void get_args(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  __src[1024] = *MEMORY[0x1E69E9840];
  v7 = strlen(v4);
  v8 = *v5;
  if (!*v5)
  {
    goto LABEL_33;
  }

  v9 = &v5[v7];
  v10 = MEMORY[0x1E69E9830];
  while (1)
  {
    if ((v8 & 0x80) == 0)
    {
      if ((*(v10 + 4 * v8 + 60) & 0x4000) == 0)
      {
        break;
      }

      goto LABEL_7;
    }

    if (!__maskrune(v8, 0x4000uLL))
    {
      break;
    }

LABEL_7:
    v11 = *++v5;
    v8 = v11;
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  v12 = *v5;
  if (!*v5)
  {
LABEL_33:
    *(v6 + 40) = 0;
    goto LABEL_34;
  }

  bzero(__src, 0x2000uLL);
  v13 = 0;
  v14 = 0;
LABEL_11:
  if (v12 != 41)
  {
    bzero(v22, 0x400uLL);
    v5 = parse_string_piece(v5, v22, 1024, 0);
    __src[v13] = query_strdup(v22);
    v15 = *v5;
    if (!*v5)
    {
      goto LABEL_29;
    }

    v16 = v5 + 1;
    while (1)
    {
      if (v15 < 0)
      {
        if (!__maskrune(v15, 0x4000uLL))
        {
LABEL_20:
          v18 = *v5 != 44 || v5 >= v9;
          if (!v18)
          {
            do
            {
              v5 = v16;
              v19 = *v16;
              if (!*v16)
              {
                break;
              }

              v20 = (v19 & 0x80000000) != 0 ? __maskrune(v19, 0x4000uLL) : *(v10 + 4 * v19 + 60) & 0x4000;
              ++v16;
            }

            while (v20);
          }

LABEL_29:
          ++v13;
          v12 = *v5;
          if (!*v5 || (v18 = v14 >= 0x3FF, ++v14, v18))
          {
            *(v6 + 40) = v13;
            goto LABEL_36;
          }

          goto LABEL_11;
        }
      }

      else if ((*(v10 + 4 * v15 + 60) & 0x4000) == 0)
      {
        goto LABEL_20;
      }

      v17 = *++v5;
      v15 = v17;
      ++v16;
      if (!v17)
      {
        goto LABEL_29;
      }
    }
  }

  ++v5;
  *(v6 + 40) = v13;
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_36:
  v21 = malloc_type_malloc(8 * v13, 0x48C7CD27uLL);
  if (!v21)
  {
    _log_fault_for_malloc_failure();
  }

  *(v6 + 168) = v21;
  memcpy(v21, __src, 8 * v13);
LABEL_34:
  *v3 = v5;
}

void get_proximities(uint64_t a1, char *a2, char **a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __get_proximities_block_invoke;
  v10[3] = &unk_1E7B26228;
  v10[4] = &v11;
  v6 = _process_proximities(a2, v10);
  *(a1 + 96) = 0;
  v7 = v12[3];
  if (v7)
  {
    v8 = malloc_type_malloc(4 * v7, 0x48C7CD27uLL);
    if (v8)
    {
      *(a1 + 88) = v8;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 0x40000000;
      v9[2] = __get_proximities_block_invoke_2;
      v9[3] = &__block_descriptor_tmp_177;
      v9[4] = a1;
      _process_proximities(a2, v9);
    }

    else
    {
      _log_fault_for_malloc_failure();
      *(a1 + 88) = 0;
    }
  }

  *a3 = v6;
  _Block_object_dispose(&v11, 8);
}

void get_weights(uint64_t a1, char *a2, char **a3)
{
  v4 = a2;
  v21[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v20[3] = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v16 = __get_weights_block_invoke;
  v17 = &unk_1E7B26270;
  v18 = v20;
  v19 = a1;
  if (*a2 == 40)
  {
    v5 = a2 + 1;
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v4 = v5;
      v7 = *v5;
      if (!*v5)
      {
        break;
      }

      v8 = (v7 & 0x80000000) != 0 ? __maskrune(v7, 0x4000uLL) : *(v6 + 4 * v7 + 60) & 0x4000;
      v5 = v4 + 1;
    }

    while (v8);
LABEL_8:
    v21[0] = v4;
LABEL_9:
    v9 = *v4;
    if (*v4)
    {
      ++v4;
      if (v9 != 41)
      {
        while (1)
        {
          if ((v9 & 0x80) != 0)
          {
            if (!__maskrune(v9, 0x4000uLL))
            {
LABEL_17:
              v4 = v21[0];
              LOBYTE(v9) = *v21[0];
LABEL_18:
              if ((v9 - 45) < 2u || (v9 - 48) <= 9)
              {
                v12 = strtof(v4, v21);
                v16(v15, v12);
                v4 = v21[0];
                LOBYTE(v9) = *v21[0];
              }

              if (!v9)
              {
LABEL_32:
                ++v4;
                goto LABEL_8;
              }

              v13 = v4 + 1;
              while (1)
              {
                if ((v9 & 0x80) != 0)
                {
                  if (!__maskrune(v9, 0x4000uLL))
                  {
LABEL_31:
                    v4 = v21[0];
                    if (*v21[0] != 41)
                    {
                      goto LABEL_32;
                    }

                    goto LABEL_9;
                  }
                }

                else if ((*(v6 + 4 * v9 + 60) & 0x4000) == 0)
                {
                  goto LABEL_31;
                }

                v21[0] = v13;
                v14 = *v13++;
                LOBYTE(v9) = v14;
                if (!v14)
                {
                  v4 = v13 - 1;
                  goto LABEL_32;
                }
              }
            }
          }

          else if ((*(v6 + 4 * v9 + 60) & 0x4000) == 0)
          {
            goto LABEL_17;
          }

          v21[0] = v4;
          v10 = *v4++;
          LOBYTE(v9) = v10;
          if (!v10)
          {
            --v4;
            goto LABEL_18;
          }
        }
      }
    }
  }

  *a3 = v4;
  _Block_object_dispose(v20, 8);
}

void get_wildcard_limit(uint64_t a1, char *a2, char **a3)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v4[3] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __get_wildcard_limit_block_invoke;
  v3[3] = &unk_1E7B26298;
  v3[4] = v4;
  v3[5] = a1;
  *a3 = _process_proximities(a2, v3);
  _Block_object_dispose(v4, 8);
}

char *_process_proximities(char *a1, uint64_t a2)
{
  v2 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  if (*a1 == 40)
  {
    v4 = a1 + 1;
    v5 = MEMORY[0x1E69E9830];
    do
    {
      v2 = v4;
      v6 = *v4;
      if (!*v4)
      {
        break;
      }

      v7 = (v6 & 0x80000000) != 0 ? __maskrune(v6, 0x4000uLL) : *(v5 + 4 * v6 + 60) & 0x4000;
      v4 = v2 + 1;
    }

    while (v7);
    for (v16[0] = v2; ; v16[0] = v2)
    {
      while (2)
      {
        while (2)
        {
          v8 = *v2;
          if (!*v2)
          {
            return v2;
          }

          if (v8 == 41)
          {
            return ++v2;
          }

          do
          {
            if ((v8 & 0x80) != 0)
            {
              if (!__maskrune(v8, 0x4000uLL))
              {
                break;
              }
            }

            else if ((*(v5 + 4 * v8 + 60) & 0x4000) == 0)
            {
              break;
            }

            v9 = *++v2;
            LOBYTE(v8) = v9;
          }

          while (v9);
          v16[0] = v2;
          if ((*v2 - 48) > 9)
          {
            v11 = *v2;
            if (!*v2)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v10 = strtol(v2, v16, 0);
            (*(a2 + 16))(a2, v10);
            v2 = v16[0];
            v11 = *v16[0];
            if (!*v16[0])
            {
              goto LABEL_30;
            }
          }

          v12 = v2 + 1;
          while ((v11 & 0x80) == 0)
          {
            if ((*(v5 + 4 * v11 + 60) & 0x4000) == 0)
            {
              goto LABEL_27;
            }

LABEL_25:
            v13 = *v12++;
            v11 = v13;
            if (!v13)
            {
              v2 = v12 - 1;
              goto LABEL_30;
            }
          }

          if (__maskrune(v11, 0x4000uLL))
          {
            goto LABEL_25;
          }

LABEL_27:
          v2 = v12 - 1;
          v16[0] = v12 - 1;
          v14 = *(v12 - 1);
          if (v14 == 41)
          {
            continue;
          }

          break;
        }

        if (v14 == 44)
        {
          v16[0] = v12;
          v2 = v12;
          continue;
        }

        break;
      }

LABEL_30:
      ++v2;
    }
  }

  return v2;
}

uint64_t __get_proximities_block_invoke_2(uint64_t result, int a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 96) = v4 + 1;
  *(v3 + 4 * v4) = a2;
  return result;
}

uint64_t __get_weights_block_invoke(uint64_t result, float a2)
{
  v2 = *(*(*(result + 32) + 8) + 24);
  if (v2 == 1)
  {
    if (a2 == -1.0)
    {
      a2 = 1.1755e-38;
    }

    *(*(result + 40) + 56) = a2;
  }

  else if (!v2)
  {
    if (a2 == -1.0)
    {
      a2 = 1.1755e-38;
    }

    *(*(result + 40) + 52) = a2;
  }

  ++*(*(*(result + 32) + 8) + 24);
  return result;
}

uint64_t __get_wildcard_limit_block_invoke(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  if (!v3)
  {
    *(*(result + 40) + 60) = a2;
  }

  return result;
}

uint64_t __free_tree_block_invoke(int a1, void *a2)
{
  v3 = a2[2];
  if (v3)
  {
    free_qp(v3);
  }

  free(a2);
  return 0;
}

uint64_t render_field_name(uint64_t a1, void **a2, uint64_t a3, size_t *a4, _DWORD *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  result = render_string(*a1, a2, a3, a4);
  v10 = *(a1 + 32);
  if ((v10 & 0x800000) == 0 && (v10 & 0x6000000) != 0)
  {
    v11 = render_string("[", a2, result, a4);
    if ((*(a1 + 35) & 2) != 0)
    {
      v11 = render_string("$", a2, v11, a4);
      v13 = *(a1 + 32);
      *__str = 0u;
      v18 = 0u;
      v12 = *(a1 + 44);
      if (a5 && (v13 & 0x2000000) != 0)
      {
        v14 = *a5;
        if (v14 >= 1)
        {
          for (i = 0; i != v14; ++i)
          {
            if (a5[i + 1] == v12)
            {
              v12 = i;
              goto LABEL_15;
            }
          }

          if (v14 > 29)
          {
            goto LABEL_15;
          }
        }

        a5[v14 + 1] = v12;
        v12 = (*a5)++;
      }
    }

    else
    {
      *__str = 0u;
      v18 = 0u;
      v12 = *(a1 + 44);
    }

LABEL_15:
    snprintf(__str, 0x20uLL, "%d", v12);
    v16 = render_string(__str, a2, v11, a4);

    return render_string("]", a2, v16, a4);
  }

  return result;
}

size_t render_string_protecting_char(char *a1, void **a2, uint64_t a3, size_t *a4)
{
  v7 = a1;
  v8 = strlen(a1);
  v9 = strchr(v7, 34);
  for (i = 0; v9; v9 = strchr(v9 + 1, 34))
  {
    ++i;
  }

  v11 = v8 + a3;
  v12 = v8 + a3 + i;
  v13 = *a4;
  if (v12 > *a4)
  {
    do
    {
      v14 = v12 > 2 * v13;
      v13 *= 2;
    }

    while (v14);
    *a4 = v13;
    *a2 = malloc_type_realloc(*a2, v13, 0x705F6673uLL);
  }

  if (i)
  {
    v15 = strchr(v7, 34);
    if (v15)
    {
      v16 = v15;
      do
      {
        memcpy(*a2 + a3, v7, v16 - v7);
        v17 = v16 - v7 + a3;
        *(*a2 + v17) = 92;
        a3 = v17 + 2;
        *(*a2 + v17 + 1) = 34;
        v8 += ~(v16 - v7);
        v7 = v16 + 1;
        v16 = strchr(v16 + 1, 34);
      }

      while (v16);
      v11 = a3 + v8;
    }
  }

  memcpy(*a2 + a3, v7, v8);
  return v11;
}