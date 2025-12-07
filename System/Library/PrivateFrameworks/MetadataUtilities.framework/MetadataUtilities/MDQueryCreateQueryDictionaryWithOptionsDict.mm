@interface MDQueryCreateQueryDictionaryWithOptionsDict
@end

@implementation MDQueryCreateQueryDictionaryWithOptionsDict

CFAttributedStringRef ____MDQueryCreateQueryDictionaryWithOptionsDict_block_invoke(void *a1, const __CFDictionary *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v4 = getkQPParseResultQUOutputKeySymbolLoc_ptr;
  v80 = getkQPParseResultQUOutputKeySymbolLoc_ptr;
  if (!getkQPParseResultQUOutputKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v73 = 0x40000000;
    v74 = __getkQPParseResultQUOutputKeySymbolLoc_block_invoke;
    v75 = &unk_1E7B25E50;
    v76 = &v77;
    ParserLibrary = QueryParserLibrary();
    v78[3] = dlsym(ParserLibrary, "kQPParseResultQUOutputKey");
    getkQPParseResultQUOutputKeySymbolLoc_ptr = *(v76[1] + 24);
    v4 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v4)
  {
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_100:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_101:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_102:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_103:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_104:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_105:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
LABEL_106:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
    goto LABEL_107;
  }

  v6 = *v4;
  if (*v4)
  {
    v7 = CFDictionaryContainsKey(a2, *v4) != 0;
  }

  else
  {
    v7 = 0;
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v8 = getkQPParseResultConfidenceKeySymbolLoc_ptr;
  v80 = getkQPParseResultConfidenceKeySymbolLoc_ptr;
  if (!getkQPParseResultConfidenceKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v73 = 0x40000000;
    v74 = __getkQPParseResultConfidenceKeySymbolLoc_block_invoke;
    v75 = &unk_1E7B25E78;
    v76 = &v77;
    v9 = QueryParserLibrary();
    v78[3] = dlsym(v9, "kQPParseResultConfidenceKey");
    getkQPParseResultConfidenceKeySymbolLoc_ptr = *(v76[1] + 24);
    v8 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v8)
  {
    goto LABEL_100;
  }

  v10 = *v8;
  if (*v8)
  {
    if (CFDictionaryContainsKey(a2, *v8))
    {
      Value = CFDictionaryGetValue(a2, v10);
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      v12 = *(a1[4] + 8);
      if (valuePtr > *(v12 + 24))
      {
        *(v12 + 24) = valuePtr;
      }
    }
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v13 = getkQPParseResultDescriptionKeySymbolLoc_ptr;
  v80 = getkQPParseResultDescriptionKeySymbolLoc_ptr;
  if (!getkQPParseResultDescriptionKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v73 = 0x40000000;
    v74 = __getkQPParseResultDescriptionKeySymbolLoc_block_invoke;
    v75 = &unk_1E7B25EA0;
    v76 = &v77;
    v14 = QueryParserLibrary();
    v15 = dlsym(v14, "kQPParseResultDescriptionKey");
    *(v76[1] + 24) = v15;
    getkQPParseResultDescriptionKeySymbolLoc_ptr = *(v76[1] + 24);
    v13 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v13)
  {
    goto LABEL_101;
  }

  v16 = *v13;
  if (*v13)
  {
    v17 = v7;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) != 0 || !CFDictionaryContainsKey(a2, *v13))
  {
    v18 = 0;
  }

  else
  {
    v18 = CFDictionaryGetValue(a2, v16);
    if (CFStringGetLength(v18))
    {
      if (CFStringGetLength(*(*(a1[5] + 8) + 24)))
      {
        CFStringAppend(*(*(a1[5] + 8) + 24), @" || ");
      }

      CFStringAppend(*(*(a1[5] + 8) + 24), v18);
      ++*(*(a1[6] + 8) + 24);
      v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, (*(a1[6] + 8) + 24));
      if (v19)
      {
        v20 = v19;
        CFDictionarySetValue(*(*(a1[7] + 8) + 24), v18, v19);
        CFRelease(v20);
      }
    }
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v21 = getkQPParseResultAttributedParseKeySymbolLoc_ptr;
  v80 = getkQPParseResultAttributedParseKeySymbolLoc_ptr;
  if (!getkQPParseResultAttributedParseKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v73 = 0x40000000;
    v74 = __getkQPParseResultAttributedParseKeySymbolLoc_block_invoke;
    v75 = &unk_1E7B25EC8;
    v76 = &v77;
    v22 = QueryParserLibrary();
    v23 = dlsym(v22, "kQPParseResultAttributedParseKey");
    *(v76[1] + 24) = v23;
    getkQPParseResultAttributedParseKeySymbolLoc_ptr = *(v76[1] + 24);
    v21 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v21)
  {
    goto LABEL_102;
  }

  v24 = *v21;
  if (v24)
  {
    if (CFDictionaryContainsKey(a2, v24))
    {
      v24 = CFDictionaryGetValue(a2, v24);
      CFArrayAppendValue(*(*(a1[8] + 8) + 24), v24);
      if (v7)
      {
        v25 = @"kMDUserQueryDictionaryAttributedInputSourceU2Based";
      }

      else
      {
        v25 = @"kMDUserQueryDictionaryAttributedInputSourceRuleBased";
      }

      CFArrayAppendValue(*(*(a1[9] + 8) + 24), v25);
    }

    else
    {
      v24 = 0;
    }
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v26 = getkQPParseResultRankCategoriesKeySymbolLoc_ptr;
  v80 = getkQPParseResultRankCategoriesKeySymbolLoc_ptr;
  if (!getkQPParseResultRankCategoriesKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v73 = 0x40000000;
    v74 = __getkQPParseResultRankCategoriesKeySymbolLoc_block_invoke;
    v75 = &unk_1E7B25EF0;
    v76 = &v77;
    v27 = QueryParserLibrary();
    v28 = dlsym(v27, "kQPParseResultRankCategoriesKey");
    *(v76[1] + 24) = v28;
    getkQPParseResultRankCategoriesKeySymbolLoc_ptr = *(v76[1] + 24);
    v26 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v26)
  {
    goto LABEL_103;
  }

  v29 = *v26;
  if (CFDictionaryContainsKey(a2, v29))
  {
    v71 = v24;
    v30 = a2;
    v31 = CFDictionaryGetValue(a2, v29);
    Count = CFDictionaryGetCount(v31);
    MEMORY[0x1EEE9AC00](Count);
    v33 = (&v70 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v33, 8 * Count);
    MEMORY[0x1EEE9AC00](v34);
    v35 = v33;
    bzero(v33, 8 * Count);
    CFDictionaryGetKeysAndValues(v31, v33, v33);
    if (Count >= 1)
    {
      do
      {
        v37 = *v33++;
        v36 = v37;
        v38 = *v35++;
        CFDictionarySetValue(*(*(a1[10] + 8) + 24), v36, v38);
        --Count;
      }

      while (Count);
    }

    v24 = v71;
  }

  else
  {
    v30 = a2;
    v31 = 0;
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v39 = getkQPParseResultSortModifierKeySymbolLoc_ptr;
  v80 = getkQPParseResultSortModifierKeySymbolLoc_ptr;
  if (!getkQPParseResultSortModifierKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v73 = 0x40000000;
    v74 = __getkQPParseResultSortModifierKeySymbolLoc_block_invoke;
    v75 = &unk_1E7B25F18;
    v76 = &v77;
    v40 = QueryParserLibrary();
    v41 = dlsym(v40, "kQPParseResultSortModifierKey");
    *(v76[1] + 24) = v41;
    getkQPParseResultSortModifierKeySymbolLoc_ptr = *(v76[1] + 24);
    v39 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v39)
  {
    goto LABEL_104;
  }

  v42 = *v39;
  if (*(*(a1[11] + 8) + 24))
  {
    v43 = 1;
  }

  else
  {
    v43 = v42 == 0;
  }

  if (!v43 && CFDictionaryContainsKey(v30, v42))
  {
    *(*(a1[11] + 8) + 24) = CFDictionaryGetValue(v30, v42);
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v44 = getkQPParseResultTokenCountKeySymbolLoc_ptr;
  v80 = getkQPParseResultTokenCountKeySymbolLoc_ptr;
  if (!getkQPParseResultTokenCountKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v73 = 0x40000000;
    v74 = __getkQPParseResultTokenCountKeySymbolLoc_block_invoke;
    v75 = &unk_1E7B25F40;
    v76 = &v77;
    v45 = QueryParserLibrary();
    v46 = dlsym(v45, "kQPParseResultTokenCountKey");
    *(v76[1] + 24) = v46;
    getkQPParseResultTokenCountKeySymbolLoc_ptr = *(v76[1] + 24);
    v44 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v44)
  {
    goto LABEL_105;
  }

  v47 = 0;
  if ((*(*(a1[12] + 8) + 24) & 0x8000000000000000) != 0)
  {
    v48 = *v44;
    if (v48)
    {
      if (CFDictionaryContainsKey(v30, v48))
      {
        v47 = CFDictionaryGetValue(v30, v48);
        CFNumberGetValue(v47, kCFNumberCFIndexType, (*(a1[12] + 8) + 24));
      }

      else
      {
        v47 = 0;
      }
    }
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v49 = getkQPParseResultSuggestionKeySymbolLoc_ptr;
  v80 = getkQPParseResultSuggestionKeySymbolLoc_ptr;
  if (!getkQPParseResultSuggestionKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v73 = 0x40000000;
    v74 = __getkQPParseResultSuggestionKeySymbolLoc_block_invoke;
    v75 = &unk_1E7B25F68;
    v76 = &v77;
    v50 = QueryParserLibrary();
    v51 = dlsym(v50, "kQPParseResultSuggestionKey");
    *(v76[1] + 24) = v51;
    getkQPParseResultSuggestionKeySymbolLoc_ptr = *(v76[1] + 24);
    v49 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v49)
  {
    goto LABEL_106;
  }

  v52 = *v49;
  if (!v52)
  {
    goto LABEL_86;
  }

  if (!CFDictionaryContainsKey(v30, v52))
  {
    goto LABEL_86;
  }

  v53 = CFDictionaryGetValue(v30, v52);
  Length = CFStringGetLength(v53);
  if (!v18 || !Length || !CFStringGetLength(v18))
  {
    goto LABEL_86;
  }

  v71 = v30;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v55 = getkQPParseResultAttributeCountKeySymbolLoc_ptr;
  v80 = getkQPParseResultAttributeCountKeySymbolLoc_ptr;
  if (!getkQPParseResultAttributeCountKeySymbolLoc_ptr)
  {
    valuePtr = MEMORY[0x1E69E9820];
    v73 = 0x40000000;
    v74 = __getkQPParseResultAttributeCountKeySymbolLoc_block_invoke;
    v75 = &unk_1E7B25F90;
    v76 = &v77;
    v56 = QueryParserLibrary();
    v57 = dlsym(v56, "kQPParseResultAttributeCountKey");
    *(v76[1] + 24) = v57;
    getkQPParseResultAttributeCountKeySymbolLoc_ptr = *(v76[1] + 24);
    v55 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v55)
  {
LABEL_107:
    __MDQueryCreateQueryDictionaryWithOptionsDict_cold_1();
  }

  v58 = *v55;
  if (v58)
  {
    v59 = v71;
    v60 = v18;
    if (CFDictionaryContainsKey(v71, v58))
    {
      v58 = CFDictionaryGetValue(v59, v58);
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v60 = v18;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"suggestion", v53);
  CFDictionarySetValue(Mutable, @"query", v60);
  if (v31)
  {
    CFDictionarySetValue(Mutable, @"categories", v31);
  }

  if (v47)
  {
    CFDictionarySetValue(Mutable, @"tokenCount", v47);
  }

  if (v58)
  {
    CFDictionarySetValue(Mutable, @"attributeCount", v58);
  }

  CFArrayAppendValue(*(*(a1[13] + 8) + 24), Mutable);
  CFRelease(Mutable);
  v30 = v71;
LABEL_86:
  if (v6 && CFDictionaryContainsKey(v30, v6))
  {
    v62 = CFDictionaryGetValue(v30, v6);
    v63 = v62;
    if (v24)
    {
      v64 = CFDictionaryGetCount(v62);
      v65 = *MEMORY[0x1E695E480];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], v64 + 2, v63);
      CFDictionaryAddValue(MutableCopy, @"attributedParse", v24);
      v67 = *MEMORY[0x1E695E4D0];
      if (qpLLMQueryUnderstanding && CFNumberCompare(qpLLMQueryUnderstanding, *MEMORY[0x1E695E4D0], 0) == kCFCompareEqualTo)
      {
        v68 = @"useLLMParse";
      }

      else
      {
        v68 = @"u2Enabled";
      }

      CFDictionaryAddValue(MutableCopy, v68, v67);
      *(*(a1[14] + 8) + 24) = CFDictionaryCreateCopy(v65, MutableCopy);
      CFRelease(MutableCopy);
    }

    else
    {
      *(*(a1[14] + 8) + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v62);
    }
  }

  result = CFDictionaryContainsKey(v30, @"isEntitySearchKey");
  if (v24)
  {
    if (result)
    {
      result = CFAttributedStringCreateCopy(*MEMORY[0x1E695E480], v24);
      *(*(a1[15] + 8) + 24) = result;
    }
  }

  return result;
}

void ____MDQueryCreateQueryDictionaryWithOptionsDict_block_invoke_2(uint64_t a1, const void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);

  CFArrayAppendValue(v2, a2);
}

@end