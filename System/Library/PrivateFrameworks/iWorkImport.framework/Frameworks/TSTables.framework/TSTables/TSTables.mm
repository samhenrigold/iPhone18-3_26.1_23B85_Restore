void sub_221076F14(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_221077004(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 15) = 0;
  v3 = a2;
  v7 = objc_msgSend_mutableCopy(v3, v4, v5, v6);
  v8 = *a1;
  *a1 = v7;

  return a1;
}

void sub_221077078(uint64_t a1@<X0>, uint64_t a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 15) = 0;
  if (*(a1 + 16) == 1)
  {
    v15 = sub_2210771B0(a1, a3, a4, a5);
    v8 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v15, v15, v7);
    *a2 = 0;
    *(a2 + 8) = v8;
    *(a2 + 16) = 1;
    *(a2 + 17) = *(a1 + 17);
  }

  else
  {
    v9 = sub_2210772BC(a1, a3, a4, a5);
    v13 = objc_msgSend_copy(v9, v10, v11, v12);
    sub_221077004(&v16, v13);
    v14 = v16;
    v16 = 0uLL;
    *a2 = v14;
    *(a2 + 16) = v17;
    *(a2 + 18) = v18;
  }
}

id sub_2210771B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPStorage *TSCERichTextStorage::wpStorage() const", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextStorage.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 85, 0, "can't access TSWPStorage of non-rich rich text storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    v4 = 0;
  }

  return v4;
}

id sub_2210772BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    v4 = sub_2210771B0(a1, a2, a3, a4);
    v8 = objc_msgSend_string(v4, v5, v6, v7);
  }

  else
  {
    v8 = *a1;
  }

  return v8;
}

uint64_t sub_221077330(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    objc_opt_class();
    v1 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_221077390(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a3;
  sub_221077078(a1, a4, v7, v8, v9);
  sub_221077424(a4, a2, v10);
}

void sub_221077400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_221077288(v10);

  _Unwind_Resume(a1);
}

void sub_221077424(uint64_t a1, uint64_t a2, void *a3)
{
  v168 = a3;
  if (*(a1 + 16) != 1)
  {
    if (*(a2 + 16))
    {
      v25 = *(a2 + 8);
      v11 = v25;
      if (v25 && objc_msgSend_length(v25, v26, v27, v28))
      {
        v32 = objc_msgSend_calcEngine(v168, v29, v30, v31);
        v36 = objc_msgSend_containingTable(v168, v33, v34, v35);
        v39 = objc_msgSend_tableResolverForTableUID_(v32, v37, v36, v38);

        v167 = v39;
        if (v39)
        {
          v43 = objc_msgSend_containingCell(v168, v40, v41, v42);
          v166 = objc_msgSend_cellTextStyle_(v39, v44, v43, v45);
        }

        else
        {
          v166 = 0;
        }

        v99 = sub_2210772BC(a1, v40, v41, v42);
        if (objc_msgSend_length(v99, v100, v101, v102))
        {
          v105 = [TSCEUnpersistedStorage alloc];
          v109 = objc_msgSend_context(v11, v106, v107, v108);
          v113 = objc_msgSend_wpKind(v11, v110, v111, v112);
          v117 = objc_msgSend_stylesheet(v11, v114, v115, v116);
          v121 = objc_msgSend_stylesheet(v11, v118, v119, v120);
          v125 = objc_msgSend_defaultListStyle(v121, v122, v123, v124);
          v127 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v105, v126, v109, v99, v113, v117, v166, v125, 0, 0);

          v133 = objc_msgSend_length(v127, v128, v129, v130);
          if (*(a2 + 17) == 1)
          {
            objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v127, v131, v11, v133, 0, 0);
          }

          else
          {
            v136 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v131, v11, v132);
            sub_221077B14(v136, 0);
            objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v127, v137, v136, v133, 0, 0);
          }

          objc_storeStrong((a1 + 8), v127);
          *(a1 + 16) = 1;
          v141 = 1;
          if ((*(a2 + 18) & 1) == 0)
          {
            v141 = objc_msgSend_paragraphCount(v11, v138, v139, v140) == 1;
          }

          *(a1 + 18) = v141;
          *(a1 + 17) = 1;
        }

        else
        {
          v134 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v103, v11, v104);
          v135 = *(a1 + 8);
          *(a1 + 8) = v134;

          *(a1 + 16) = 1;
          *(a1 + 17) = *(a2 + 17);
        }
      }
    }

    else
    {
      v81 = sub_2210772BC(a1, v5, v6, v7);

      if (v81)
      {
        v85 = sub_2210772BC(a2, v82, v83, v84);

        if (!v85)
        {
          goto LABEL_57;
        }

        v89 = *a1;
        v11 = sub_2210772BC(a2, v86, v87, v88);
        objc_msgSend_appendString_(v89, v90, v11, v91);
      }

      else
      {
        v11 = sub_2210772BC(a2, v82, v83, v84);
        v97 = objc_msgSend_mutableCopy(v11, v94, v95, v96);
        v98 = *a1;
        *a1 = v97;
      }
    }

    goto LABEL_56;
  }

  v8 = *(a1 + 8);
  if (!*(a2 + 16))
  {
    v46 = v8;
    v11 = v46;
    if (v46 && objc_msgSend_length(v46, v47, v48, v49))
    {
      v16 = sub_2210772BC(a2, v50, v51, v52);
      if (v16)
      {
        if ((*(a1 + 18) & 1) == 0)
        {
          v56 = objc_msgSend_paragraphCount(v11, v53, v54, v55) - 1;
          v59 = objc_msgSend_textRangeForParagraphAtIndex_(v11, v57, v56, v58);
          v61 = v60;
          sub_221077B14(v11, v56);
          v65 = objc_msgSend_calcEngine(v168, v62, v63, v64);
          v69 = objc_msgSend_containingTable(v168, v66, v67, v68);
          v72 = objc_msgSend_tableResolverForTableUID_(v65, v70, v69, v71);

          if (v72)
          {
            v76 = objc_msgSend_containingCell(v168, v73, v74, v75);
            v79 = objc_msgSend_cellTextStyle_(v72, v77, v76, v78);
            objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v11, v80, v79, v59, v61, 0);
          }

          else
          {
            v79 = 0;
            objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v11, v73, 0, v59, v61, 0);
          }
        }

        v154 = 1;
        *(a1 + 18) = 1;
        if ((*(a1 + 17) & 1) == 0)
        {
          v154 = objc_msgSend_paragraphCount(v11, v53, v54, v55) == 1;
        }

        *(a1 + 17) = v154;
        v155 = sub_2210772BC(a2, v53, v54, v55);
        v159 = objc_msgSend_length(v11, v156, v157, v158);
        objc_msgSend_insertString_atCharIndex_undoTransaction_(v11, v160, v155, v159, 0);
        v164 = objc_msgSend_length(v155, v161, v162, v163);
        objc_msgSend_setCharacterStyle_range_undoTransaction_(v11, v165, 0, v159, v164, 0);
      }

      goto LABEL_55;
    }

    *(a1 + 16) = 0;
    objc_storeStrong(a1, *a2);
    v93 = *(a1 + 8);
    *(a1 + 8) = 0;

    *(a1 + 17) = 0;
LABEL_56:

    goto LABEL_57;
  }

  if (!v8 || !objc_msgSend_length(v8, v5, v6, v7))
  {
    v92 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v5, *(a2 + 8), v7);
    v11 = *(a1 + 8);
    *(a1 + 8) = v92;
    goto LABEL_56;
  }

  v10 = *(a2 + 8);
  if (v10 && objc_msgSend_length(v10, v5, v9, v7))
  {
    v11 = *(a1 + 8);
    v15 = objc_msgSend_paragraphCount(v11, v12, v13, v14);
    v16 = *(a2 + 8);
    v23 = objc_msgSend_length(v11, v17, v18, v19);
    if (*(a2 + 17))
    {
      v24 = 0;
    }

    else
    {
      v24 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v20, v16, v22);
      sub_221077B14(v24, 0);
    }

    if ((*(a1 + 18) & 1) == 0)
    {
      v142 = objc_msgSend_paragraphCount(v11, v20, v21, v22);
      sub_221077B14(v11, v142 - 1);
    }

    if (v24)
    {
      v143 = v24;
    }

    else
    {
      v143 = v16;
    }

    v144 = v143;
    objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v11, v145, v144, v23, 0, 0);
    if (objc_msgSend_paragraphCount(v11, v146, v147, v148) == 1)
    {
      v152 = 1;
      *(a1 + 17) = 1;
    }

    else
    {
      v153 = *(a1 + 17);
      if (v15 <= 1)
      {
        v153 = 0;
      }

      *(a1 + 17) = v153;
      v152 = *(a2 + 18) == 1 && objc_msgSend_paragraphCount(v16, v149, v150, v151) > 1;
    }

    *(a1 + 18) = v152;

LABEL_55:
    goto LABEL_56;
  }

LABEL_57:
}

void sub_221077B14(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v45.location = 0;
  v45.length = 0;
  v43 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v3, v5, a2, &v45);
  v9 = objc_msgSend_propertyMap(v43, v6, v7, v8);
  v42 = objc_msgSend_properties(MEMORY[0x277D80DB0], v10, v11, v12);
  objc_msgSend_filterWithProperties_(v9, v13, v42, v14);
  context = v4;
  location = v45.location;
  length = v45.length;
  v21 = objc_msgSend_context(v3, v17, v18, v19);
  v22 = length + location;
  if (location < v22)
  {
    v23 = 0;
    while (1)
    {
      v44.location = location;
      v44.length = v22 - location;
      v27 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v3, v20, location, &v44);
      if (v27)
      {
        v28 = objc_msgSend_copy(v9, v24, v25, v26);
        v32 = objc_msgSend_propertyMap(v27, v29, v30, v31);
        objc_msgSend_addValuesFromPropertyMap_(v28, v33, v32, v34);

        v35 = objc_alloc(MEMORY[0x277D80DB0]);
        isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v35, v36, v21, 0, v28, 0);

        if (!isVariation)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (!v23)
        {
          v38 = objc_alloc(MEMORY[0x277D80DB0]);
          v23 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v38, v39, v21, 0, v9, 0);
        }

        isVariation = v23;
        v23 = isVariation;
        if (!isVariation)
        {
          goto LABEL_10;
        }
      }

      v40 = NSIntersectionRange(v44, v45);
      objc_msgSend_setCharacterStyle_range_undoTransaction_(v3, v40.length, isVariation, v40.location, v40.length, 0);
LABEL_10:
      location += v44.length;

      if (location >= v22)
      {
        goto LABEL_13;
      }
    }
  }

  v23 = 0;
LABEL_13:

  objc_autoreleasePoolPop(context);
}

void sub_221077D90(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  if (*(a1 + 16) == 1)
  {
    v9 = sub_2210771B0(a1, a2, a3, a4);
    v13 = v9;
    if (v8)
    {
      v14 = sub_2210771B0(a4, v10, v11, v12);
      objc_msgSend_replaceCharactersInRange_withStorage_usePasteRules_dolcContext_undoTransaction_(v13, v15, a2, a3, v14, 1, 0, 0);
    }

    else
    {
      if (!a2 && a3 >= objc_msgSend_length(v9, v10, v11, v12))
      {
        v42 = sub_2210772BC(a4, v10, v11, v12);
        v46 = objc_msgSend_mutableCopy(v42, v43, v44, v45);

        v47 = *a1;
        *a1 = v46;
        v48 = v46;

        v49 = *(a1 + 8);
        *(a1 + 8) = 0;

        *(a1 + 16) = 0;
        goto LABEL_13;
      }

      v14 = sub_2210772BC(a4, v10, v11, v12);
      objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v13, v34, a2, a3, v14, 0);
    }
  }

  else if (*(a4 + 16))
  {
    v13 = sub_2210771B0(a4, a2, a3, a4);
    v14 = sub_2210772BC(a1, v16, v17, v18);
    v23 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v19, v13, v20);
    if (a2)
    {
      v24 = objc_msgSend_substringToIndex_(v14, v21, a2, v22);
      objc_msgSend_insertString_atCharIndex_undoTransaction_(v23, v25, v24, 0, 0);
    }

    v26 = objc_msgSend_substringFromIndex_(v14, v21, &a2[a3], v22);
    v30 = objc_msgSend_length(v23, v27, v28, v29);
    objc_msgSend_insertString_atCharIndex_undoTransaction_(v23, v31, v26, v30, 0);
    v32 = *a1;
    *a1 = 0;

    v33 = *(a1 + 8);
    *(a1 + 8) = v23;

    *(a1 + 16) = 1;
  }

  else
  {
    v13 = *a1;
    v14 = sub_2210772BC(a4, v35, v36, v37);
    objc_msgSend_replaceCharactersInRange_withString_(v13, v38, a2, a3, v14);
  }

LABEL_13:
  sub_221078028(a1, v39, v40, v41);
  *(a1 + 17) = 0;
}

void sub_221078028(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16) == 1)
  {
    v18 = sub_2210771B0(a1, a2, a3, a4);
    if (objc_msgSend_canBeStoredInAStringValueCell(v18, v5, v6, v7))
    {
      v11 = objc_msgSend_string(v18, v8, v9, v10);
      v15 = objc_msgSend_mutableCopy(v11, v12, v13, v14);
      v16 = *a1;
      *a1 = v15;

      v17 = *(a1 + 8);
      *(a1 + 8) = 0;

      *(a1 + 16) = 0;
      *(a1 + 18) = 0;
    }
  }
}

void sub_2210780F0(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (*(a1 + 16) == 1)
  {
    v7 = sub_2210771B0(a1, a2, a4, a5);
    v11 = objc_msgSend_string(v7, v8, v9, v10);
    v13 = objc_msgSend_rangeOfComposedCharacterSequencesForRange_(v11, v12, *a2, *(a2 + 1));
    v15 = v14;
    v18 = objc_msgSend_context(v7, v14, v16, v17);
    v20 = objc_msgSend_newSubstorageWithRange_context_flags_(v7, v19, v13, v15, v18, 1);

    if (objc_msgSend_length(v20, v21, v22, v23))
    {
      v27 = objc_msgSend_string(v20, v24, v25, v26);
      v28 = v27;
      v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);

      if (!v32)
      {
        v33 = MEMORY[0x277D81150];
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "TSCERichTextStorage TSCERichTextStorage::substringWithRange(const NSRange &) const", v26);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextStorage.mm", v36);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 364, 0, "Couldn't convert string obtained from storage to UTF-8 - broke a composed character, perhaps?");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
      }
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 15) = 0;
    if (objc_msgSend_canBeStoredInAStringValueCell(v20, v24, v25, v26))
    {
      v45 = objc_msgSend_string(v20, v42, v43, v44);
      sub_221077004(&v58, v45);
      v46 = v58;
      v58 = 0;
      v47 = *a3;
      *a3 = v46;

      v48 = v59;
      v59 = 0;
      v49 = *(a3 + 8);
      *(a3 + 8) = v48;

      *(a3 + 16) = v60;
      *(a3 + 18) = v61;
    }

    else
    {
      v54 = v20;
      v55 = *a3;
      *a3 = 0;

      v56 = *(a3 + 8);
      *(a3 + 8) = v54;

      *(a3 + 16) = 1;
      *(a3 + 18) = 0;
    }
  }

  else
  {
    v57 = sub_2210772BC(a1, a2, a4, a5);
    v51 = objc_msgSend_rangeOfComposedCharacterSequencesForRange_(v57, v50, *a2, *(a2 + 1));
    v53 = objc_msgSend_substringWithRange_(v57, v52, v51, v52);
    sub_221077004(a3, v53);
  }
}

void sub_2210783E8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = objc_msgSend_length(v3, v5, v6, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2210784F0;
  v12[3] = &unk_27845D7D0;
  v9 = v4;
  v14 = v9;
  v10 = v3;
  v13 = v10;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v10, v11, 0, v8, 1027, v12);
}

void sub_2210784F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v7 = (*(*(a1 + 40) + 16))();
  if ((objc_msgSend_isEqualToString_(v7, v8, v11, v9) & 1) == 0)
  {
    objc_msgSend_replaceCharactersInRange_withString_(*(a1 + 32), v10, a3, a4, v7);
  }
}

void sub_2210785A4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  if (*(a1 + 16) == 1)
  {
    v8 = sub_2210771B0(a1, v5, v6, v7);
    v11 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v9, v8, v10);
    objc_msgSend_uppercaseWithUndoTransaction_locale_(v11, v12, 0, v17);
    *a3 = 0;
    *(a3 + 8) = v11;
    *(a3 + 16) = 1;
    *(a3 + 18) = 0;
  }

  else
  {
    v13 = sub_2210772BC(a1, v5, v6, v7);
    v8 = objc_msgSend_uppercaseString(v13, v14, v15, v16);

    sub_221077004(a3, v8);
  }
}

void sub_2210786B4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  if (*(a1 + 16) == 1)
  {
    v8 = sub_2210771B0(a1, v5, v6, v7);
    v11 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v9, v8, v10);
    objc_msgSend_lowercaseWithUndoTransaction_locale_(v11, v12, 0, v17);
    *a3 = 0;
    *(a3 + 8) = v11;
    *(a3 + 16) = 1;
    *(a3 + 18) = 0;
  }

  else
  {
    v13 = sub_2210772BC(a1, v5, v6, v7);
    v8 = objc_msgSend_lowercaseString(v13, v14, v15, v16);

    sub_221077004(a3, v8);
  }
}

void sub_2210787C4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  if (*(a1 + 16) == 1)
  {
    v8 = sub_2210771B0(a1, v5, v6, v7);
    v11 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v9, v8, v10);
    objc_msgSend_capitalizeWithUndoTransaction_locale_(v11, v12, 0, v17);
    *a3 = 0;
    *(a3 + 8) = v11;
    *(a3 + 16) = 1;
    *(a3 + 18) = 0;
  }

  else
  {
    v13 = sub_2210772BC(a1, v5, v6, v7);
    v8 = objc_msgSend_mutableCopy(v13, v14, v15, v16);

    sub_2210783E8(v8, &unk_2834A1290);
    sub_221077004(a3, v8);
  }
}

id sub_2210788E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_capitalizedString(a2, a2, a3, a4);

  return v4;
}

uint64_t sub_221078910(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16) == 1)
  {
    sub_2210771B0(a1, a2, a3, a4);
  }

  else
  {
    sub_2210772BC(a1, a2, a3, a4);
  }
  v4 = ;
  v8 = objc_msgSend_length(v4, v5, v6, v7);

  return v8;
}

uint64_t sub_22107897C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16) == 1)
  {
    sub_2210771B0(a1, a2, a3, a4);
  }

  else
  {
    sub_2210772BC(a1, a2, a3, a4);
  }
  v5 = ;
  v8 = objc_msgSend_characterAtIndex_(v5, v6, *a2, v7);

  return v8;
}

TSCERichTextValue *sub_2210789F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16) == 1)
  {
    v5 = [TSCERichTextValue alloc];
    ParagraphHadStylesDemoted_lastParagraphHadStylesDemoted = objc_msgSend_initWithStorage_firstParagraphHadStylesDemoted_lastParagraphHadStylesDemoted_(v5, v6, *(a1 + 8), *(a1 + 17), *(a1 + 18));
  }

  else
  {
    v8 = *a1;
    if (!*a1)
    {
      v8 = &stru_2834BADA0;
    }

    ParagraphHadStylesDemoted_lastParagraphHadStylesDemoted = objc_msgSend_stringValue_(TSCEStringValue, a2, v8, a4);
  }

  return ParagraphHadStylesDemoted_lastParagraphHadStylesDemoted;
}

TSTFunctionEndNode *sub_221078A70(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5, void *a6)
{
  v80 = *MEMORY[0x277D85DE8];
  v72 = a3;
  v8 = a4;
  v9 = a6;
  v74 = v8;
  v10 = [TSTFunctionEndNode alloc];
  v14 = objc_msgSend_context(v8, v11, v12, v13);
  Index = objc_msgSend_firstIndex(v72, v15, v16, v17);
  v22 = objc_msgSend_lastIndex(v72, v19, v20, v21);
  Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v10, v23, v14, v8, Index, v22);

  v27 = objc_msgSend_functionNode(v72, v24, v25, v26);
  v31 = objc_msgSend_children(v27, v28, v29, v30);

  v32 = MEMORY[0x277CBEB18];
  v36 = objc_msgSend_count(v31, v33, v34, v35);
  v39 = objc_msgSend_arrayWithCapacity_(v32, v37, v36, v38);
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v40 = v31;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v75, v79, 16);
  if (v45)
  {
    v46 = *v76;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v76 != v46)
        {
          objc_enumerationMutation(v40);
        }

        v48 = *(*(&v75 + 1) + 8 * i);
        v49 = objc_msgSend_tokenAttachment(v48, v42, v43, v44);
        v52 = objc_msgSend_objectForKey_(v9, v50, v49, v51);

        if (v52)
        {
          v58 = objc_msgSend_expressionNode(v52, v53, v54, v55);
        }

        else
        {
          v59 = objc_msgSend_context(v74, v53, v54, v55);
          v58 = objc_msgSend_deepCopyIntoContext_bakeModes_withTokenDict_(v48, v60, v59, a5, v9);
        }

        objc_msgSend_addObject_(v39, v56, v58, v57);
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v42, &v75, v79, 16);
    }

    while (v45);
  }

  v63 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v61, v39, v62);
  v67 = objc_msgSend_functionNode(Index_lastIndex, v64, v65, v66);
  objc_msgSend_setChildren_(v67, v68, v63, v69);

  return Index_lastIndex;
}

uint64_t sub_221078DE0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v10 = a4;
  if (!v10)
  {
    v11 = objc_msgSend_documentRoot(v6, v7, v8, v9);
    v10 = objc_msgSend_stylesheet(v11, v12, v13, v14);
  }

  v17 = 0;
  matched = objc_msgSend_i_copyIntoContext_stylesheet_paragraphStyle_listStyle_bakeModes_resettingHostTableToMatch_referenceColorHelper_disableMenus_(a1, v7, v6, v10, 0, 0, 0, 0, 0, v17);

  return matched;
}

id sub_221078EA0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, char a7, void *a8, void *a9, char a10)
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v76 = a6;
  v74 = a8;
  v72 = a9;
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277D80F28]);
    v23 = objc_msgSend_string(a1, v20, v21, v22);
    v70 = objc_msgSend_writingDirectionForParagraphAtParIndex_(a1, v24, 0, v25);
    v27 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v19, v26, v16, v23, 3, v17, v18, v76, 0, 0, v70, v72, v74);
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277D80F28]);
    v23 = objc_msgSend_string(a1, v29, v30, v31);
    v35 = objc_msgSend_defaultParagraphStyle(v17, v32, v33, v34);
    v39 = objc_msgSend_defaultListStyle(v17, v36, v37, v38);
    v71 = objc_msgSend_writingDirectionForParagraphAtParIndex_(a1, v40, 0, v41);
    v27 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v28, v42, v16, v23, 3, v17, v35, v39, 0, 0, v71, v72, v74);
  }

  v46 = objc_msgSend_length(v27, v43, v44, v45);
  if (v46 != objc_msgSend_length(a1, v47, v48, v49))
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSWPStorage(TSTFormulaAdditions) i_copyIntoContext:stylesheet:paragraphStyle:listStyle:bakeModes:resettingHostTableToMatch:referenceColorHelper:disableMenus:]", v51);
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 114, 0, "Creating a copy of the storage resulted in a smaller storage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
  }

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_221079224;
  v77[3] = &unk_27845D838;
  v77[4] = a1;
  v82 = a7;
  v61 = v16;
  v78 = v61;
  v62 = v75;
  v79 = v62;
  v63 = v73;
  v80 = v63;
  v83 = a10;
  v64 = v27;
  v81 = v64;
  objc_msgSend_performBlockIgnoringModifications_(v64, v65, v77, v66);
  v67 = v81;
  v68 = v64;

  return v68;
}

void sub_221079224(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_range(v5, a2, a3, a4);
  v8 = objc_msgSend_attachmentIndexRangeForTextRange_(v5, v7, v6, v7);
  v10 = v9;
  v11 = objc_alloc(MEMORY[0x277D812B8]);
  v195 = objc_msgSend_initWithCapacity_(v11, v12, v10, v13);
  v14 = objc_alloc(MEMORY[0x277D81258]);
  v20 = objc_msgSend_initWithCapacity_(v14, v15, v10, v16);
  v188 = v8 + v10;
  if (v8 >= v8 + v10)
  {
LABEL_28:
    v191 = 0;
    goto LABEL_33;
  }

  v192 = 0;
  v190 = 0;
  v191 = 1;
  while (1)
  {
    v197 = 0;
    v193 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(*(a1 + 32), v17, v8, &v197);
    objc_opt_class();
    v194 = TSUDynamicCast();
    if (!v193)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPStorage(TSTFormulaAdditions) i_copyIntoContext:stylesheet:paragraphStyle:listStyle:bakeModes:resettingHostTableToMatch:referenceColorHelper:disableMenus:]_block_invoke", v22);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 133, 0, "Found an attachment that wasn't a TSTWPTokenAttachment");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    }

    v35 = objc_msgSend_objectForKey_(v195, v21, v194, v22);
    if (!v35)
    {
      v36 = objc_msgSend_expressionNode(v194, v32, v33, v34);
      v40 = objc_msgSend_tokenType(v36, v37, v38, v39);

      if (v40 == 2)
      {
        objc_opt_class();
        v45 = objc_msgSend_expressionNode(v194, v42, v43, v44);
        v46 = TSUDynamicCast();

        objc_msgSend_removeObject_(v20, v47, v46, v48);
        v52 = objc_msgSend_functionNode(v46, v49, v50, v51);
        v56 = objc_msgSend_tokenAttachment(v52, v53, v54, v55);
        v59 = objc_msgSend_objectForKey_(v195, v57, v56, v58);

        if (!v59)
        {
          v189 = objc_msgSend_copyIntoContext_bakeModes_(v194, v60, *(a1 + 40), *(a1 + 72));
          goto LABEL_20;
        }

        v63 = *(a1 + 32);
        v64 = objc_msgSend_expressionNode(v59, v60, v61, v62);
        v66 = objc_msgSend_p_processEndNode_startNode_bakeModes_tokenDict_(v63, v65, v46, v64, *(a1 + 72), v195);

        v67 = [TSTWPTokenAttachment alloc];
        v189 = objc_msgSend_initWithContext_expressionNode_(v67, v68, *(a1 + 40), v66);
      }

      else
      {
        v189 = objc_msgSend_copyIntoContext_bakeModes_(v194, v41, *(a1 + 40), *(a1 + 72));
        objc_opt_class();
        v72 = objc_msgSend_expressionNode(v189, v69, v70, v71);
        v46 = TSUDynamicCast();

        if (v46)
        {
          if (*(a1 + 48))
          {
            isLocalReference = objc_msgSend_isLocalReference(v46, v73, v74, v75);
            v80 = objc_msgSend_tableUID(*(a1 + 48), v77, v78, v79);
            objc_msgSend_setHostTableUID_(v46, v81, v80, v81);
            if (isLocalReference)
            {
              v83 = objc_msgSend_tableUID(v46, v73, v82, v75);
              v85 = v84;
              if (v83 != objc_msgSend_tableUID(*(a1 + 48), v84, v86, v87) || v85 != v73)
              {
                v89 = objc_msgSend_baseBoundingBox(v46, v73, v88, v75);
                v91 = v90;
                v94 = objc_msgSend_tableUID(*(a1 + 48), v90, v92, v93);
                v196[0] = v89;
                v196[1] = v91;
                v196[2] = v94;
                v196[3] = v95;
                v98 = objc_msgSend_basePreserveFlags(v46, v95, v96, v97);
                objc_msgSend_setBaseRangeRef_preserveFlags_(v46, v99, v196, v98);
              }
            }
          }

          objc_msgSend_setReferenceColorHelper_(v46, v73, *(a1 + 56), v75);
          v190 = objc_msgSend_suppressReferenceOptionsMenu(v46, v100, v101, v102);
        }

        objc_msgSend_setObject_forUncopiedKey_(v195, v73, v189, v194);
        objc_opt_class();
        v106 = objc_msgSend_expressionNode(v194, v103, v104, v105);
        v59 = TSUDynamicCast();

        if (!v59)
        {
          goto LABEL_20;
        }

        v66 = objc_msgSend_functionEndNode(v59, v107, v108, v109);
        objc_msgSend_addObject_(v20, v110, v66, v111);
      }

LABEL_20:
      v35 = v189;
    }

    objc_msgSend_setNeverShowsMenu_(v35, v32, (*(a1 + 73) | v190) & 1, v34);
    v197 += v192;
    v112 = v197;
    if (v112 + 1 > objc_msgSend_length(*(a1 + 64), v113, v114, v115))
    {
      break;
    }

    if (objc_msgSend_characterAtIndex_(*(a1 + 64), v116, v112, v117) != 65532)
    {
      v120 = MEMORY[0x277D81150];
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "[TSWPStorage(TSTFormulaAdditions) i_copyIntoContext:stylesheet:paragraphStyle:listStyle:bakeModes:resettingHostTableToMatch:referenceColorHelper:disableMenus:]_block_invoke", v119);
      v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v123);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v125, v121, v124, 198, 0, "Expected destination storage to have an attachment character at this index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v126, v127, v128);
    }

    objc_msgSend_deleteRange_undoTransaction_(*(a1 + 64), v118, v112, 1, 0);
    objc_opt_class();
    v132 = objc_msgSend_expressionNode(v35, v129, v130, v131);
    v133 = TSUDynamicCast();

    v137 = *(a1 + 64);
    v138 = v197;
    if (v133)
    {
      v139 = objc_msgSend_string(v133, v134, v135, v136);
      objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v137, v140, v138, 0, v139, 0);

      v144 = objc_msgSend_string(v133, v141, v142, v143);
      v192 = v192 + objc_msgSend_length(v144, v145, v146, v147) - 1;
    }

    else
    {
      objc_msgSend_insertAttachmentOrFootnote_range_(*(a1 + 64), v134, v35, v197, 0);
    }

    v191 = ++v8 < v188;
    if (!--v10)
    {
      goto LABEL_28;
    }
  }

  v148 = MEMORY[0x277D81150];
  v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "[TSWPStorage(TSTFormulaAdditions) i_copyIntoContext:stylesheet:paragraphStyle:listStyle:bakeModes:resettingHostTableToMatch:referenceColorHelper:disableMenus:]_block_invoke", v117);
  v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v151);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v148, v153, v149, v152, 190, 0, "attachment character index out of bounds. Bailing.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v154, v155, v156);
LABEL_33:
  while (objc_msgSend_count(v20, v17, v18, v19))
  {
    v157 = objc_msgSend_anyObject(v20, v178, v179, v180);
    objc_msgSend_removeObject_(v20, v158, v157, v159);
    v163 = objc_msgSend_functionNode(v157, v160, v161, v162);
    v167 = objc_msgSend_tokenAttachment(v163, v164, v165, v166);
    v170 = objc_msgSend_objectForKey_(v195, v168, v167, v169);

    if (v170)
    {
      v174 = *(a1 + 32);
      v175 = objc_msgSend_expressionNode(v170, v171, v172, v173);
      v177 = objc_msgSend_p_processEndNode_startNode_bakeModes_tokenDict_(v174, v176, v157, v175, *(a1 + 72), v195);
    }
  }

  if (v191)
  {
    v181 = objc_msgSend_length(*(a1 + 64), v178, v179, v180);
    if (v181)
    {
      v184 = v181 - 1;
      v185 = MEMORY[0x277D81408];
      do
      {
        if (objc_msgSend_characterAtIndex_(*(a1 + 64), v182, v184, v183) == 65532)
        {
          v187 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 64), v182, v184, v183);
          if (!v187)
          {
            if (*v185 != -1)
            {
              sub_2216F6494();
            }

            objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(*(a1 + 64), v186, v184, 1, &stru_2834BADA0, 0);
          }
        }

        --v184;
      }

      while (v184 != -1);
    }
  }
}

void sub_221079B74()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_221079BB8(void *a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = objc_opt_class();
  v6 = objc_msgSend_range(a1, v3, v4, v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221079CA4;
  v10[3] = &unk_27845D860;
  v10[4] = &v11;
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(a1, v7, v2, v6, v7, v10);
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

void sub_221079C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221079CA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = a2;
  v10 = objc_msgSend_expressionNode(v11, v7, v8, v9);
  *(*(*(a1 + 32) + 8) + 24) = v10 == 0;

  *a5 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_221079D30(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPStorage(TSTFormulaAdditions) p_rangeOfString:orNodeClass:range:]", v6);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 281, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: %s", v17, "Do not call method", "[TSWPStorage(TSTFormulaAdditions) p_rangeOfString:orNodeClass:range:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v19, *MEMORY[0x277CBE658], v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

uint64_t sub_221079E54(id a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (a1 == v7)
  {
    goto LABEL_15;
  }

  v8 = objc_msgSend_range(a1, v4, v5, v6);
  v10 = v9;
  isEqualToExpressionNode = 0;
  if (v8 != objc_msgSend_range(v7, v9, v11, v12) || v10 != v13)
  {
    goto LABEL_17;
  }

  v17 = objc_msgSend_string(a1, v13, v14, v15);
  v21 = objc_msgSend_string(v7, v18, v19, v20);
  isEqualToString = objc_msgSend_isEqualToString_(v17, v22, v21, v23);

  if (!isEqualToString || (v28 = objc_msgSend_range(a1, v25, v26, v27), v30 = objc_msgSend_attachmentIndexRangeForTextRange_(a1, v29, v28, v29), v32 = v31, v35 = objc_msgSend_range(v7, v31, v33, v34), v37 = objc_msgSend_attachmentIndexRangeForTextRange_(v7, v36, v35, v36), v32 != v38))
  {
    isEqualToExpressionNode = 0;
    goto LABEL_17;
  }

  v39 = &v32[v30];
  if (v30 >= &v32[v30])
  {
LABEL_15:
    isEqualToExpressionNode = 1;
    goto LABEL_17;
  }

  v40 = v37;
  do
  {
    objc_opt_class();
    v42 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v41, v30, 0);
    v43 = TSUDynamicCast();

    objc_opt_class();
    v45 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v7, v44, v40, 0);
    v46 = TSUDynamicCast();

    if (v43 && v46)
    {
      v50 = objc_msgSend_expressionNode(v43, v47, v48, v49);
      v54 = objc_msgSend_expressionNode(v46, v51, v52, v53);
      isEqualToExpressionNode = objc_msgSend_isEqualToExpressionNode_(v50, v55, v54, v56);
    }

    else
    {
      isEqualToExpressionNode = (v43 == 0) ^ (v46 != 0);
    }

    if (v30 + 1 >= v39)
    {
      break;
    }

    ++v40;
    ++v30;
  }

  while ((isEqualToExpressionNode & 1) != 0);
LABEL_17:

  return isEqualToExpressionNode;
}

uint64_t sub_22107A0E8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], a2, a3, a4);
  v9 = a3 + 1;
  while (v9)
  {
    v10 = objc_msgSend_characterAtIndex_(a1, v6, --v9, v7);
    if ((objc_msgSend_characterIsMember_(v8, v11, v10, v12) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  return v9;
}

unint64_t sub_22107A170(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v9 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], a2, a3, a4);
  while (v4 < objc_msgSend_length(a1, v6, v7, v8))
  {
    v12 = objc_msgSend_characterAtIndex_(a1, v10, v4, v11);
    if ((objc_msgSend_characterIsMember_(v9, v13, v12, v14) & 1) == 0)
    {
      goto LABEL_6;
    }

    ++v4;
  }

  v4 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  return v4;
}

void sub_22107A21C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v17 = a3;
  v6 = a4;
  v13 = objc_msgSend_length(v17, v7, v8, v9);
  if (v13)
  {
    v14 = objc_msgSend_length(a1, v10, v11, v12);
    objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(a1, v15, v14, 0, v17, 0);
    if (v6)
    {
      objc_msgSend_setLanguage_forCharRange_undoTransaction_(a1, v16, v6, v14, v13, 0);
    }
  }
}

void sub_22107A2E4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v17 = a3;
  v10 = a4;
  v14 = objc_msgSend_length(v17, v11, v12, v13);
  objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(a1, v15, a5, a6, v17, 0);
  if (v10)
  {
    objc_msgSend_setLanguage_forCharRange_undoTransaction_(a1, v16, v10, a5, v14, 0);
  }
}

void sub_22107A3B0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v6 = a4;
  v10 = objc_msgSend_length(a1, v7, v8, v9);
  objc_msgSend_insertAttachmentOrFootnote_range_(a1, v11, v13, v10, 0);
  if (v6)
  {
    objc_msgSend_setLanguage_forCharRange_undoTransaction_(a1, v12, v6, v10, 1, 0);
  }
}

uint64_t sub_22107A460(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_range(a1, a2, a3, a4);

  return MEMORY[0x2821F9670](a1, sel_stringWithFormulaPlainTextFromRange_, v6, v5);
}

uint64_t sub_22107A4A8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_range(a1, a2, a3, a4);

  return MEMORY[0x2821F9670](a1, sel_stringWithFormulaDetokenizedTextFromRange_, v6, v5);
}

id sub_22107A4F0(void *a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a4;
  v6 = a3;
  v8 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a4);
  v10 = objc_msgSend_attachmentIndexRangeForTextRange_(a1, v9, v6, v5);
  if (v6 < v6 + v5)
  {
    v13 = v10;
    do
    {
      v14 = objc_msgSend_characterAtIndex_(a1, v11, v6, v12);
      if (v14 == 65532)
      {
        v41 = 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        v18 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v17, v13, &v41);
        v19 = TSUDynamicCast();

        objc_opt_class();
        v23 = TSUDynamicCast();
        if (v6 != v41)
        {
          v24 = MEMORY[0x277D81150];
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPStorage(TSTFormulaAdditions) p_stringWithFormulaAsTextFromRange:returningTokenValues:]", v22);
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v27);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 421, 0, "Attachment index mismatch");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
        }

        if (v23)
        {
          if (a5)
          {
            objc_msgSend_detokenizedText(v23, v20, v21, v22);
          }

          else
          {
            objc_msgSend_formulaPlainText(v23, v20, v21, v22);
          }
          v33 = ;
          if (objc_msgSend_length(v33, v34, v35, v36))
          {
            objc_msgSend_appendString_(v8, v37, v33, v38);
          }
        }

        ++v13;
      }

      else
      {
        objc_msgSend_appendFormat_(v8, v15, @"%C", v16, v14);
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  return v8;
}

void sub_22107A760(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_characterCount(a1, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = objc_msgSend_attachmentIndexRangeForTextRange_(a1, v7, 0, a4);
    if (a4)
    {
      v12 = v9;
      v13 = 0;
      do
      {
        if (v13 < v8 && objc_msgSend_characterAtIndex_(a1, v10, v13, v11) == 65532)
        {
          v46 = 0x7FFFFFFFFFFFFFFFLL;
          objc_opt_class();
          v15 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v14, v12, &v46);
          v16 = TSUDynamicCast();

          if (v13 != v46)
          {
            v20 = MEMORY[0x277D81150];
            v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPStorage(TSTFormulaAdditions) inProgressFunctions:atInsertionPoint:]", v19);
            v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v23);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 448, 0, "Attachment index mismatch");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
          }

          v29 = objc_msgSend_expressionNode(v16, v17, v18, v19);
          v45 = v29;
          if (v29)
          {
            if (objc_msgSend_isFunctionNode(v29, v30, v31, v32))
            {
              sub_22107A9E4(a3, &v45);
            }

            else if (objc_msgSend_isFunctionEndNode(v45, v33, v34, v35))
            {
              objc_opt_class();
              v36 = TSUDynamicCast();
              v37 = a3[1];
              if (*a3 != v37)
              {
                v38 = *(v37 - 8);
                v42 = objc_msgSend_functionNode(v36, v39, v40, v41);

                if (v38 == v42)
                {
                  v43 = a3[1];

                  a3[1] = v43 - 8;
                }
              }
            }
          }

          ++v12;
        }

        ++v13;
      }

      while (a4 != v13);
    }
  }
}

id sub_22107A9E4(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22107AAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id sub_22107AAD8(void *a1, const char *a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  objc_msgSend_inProgressFunctions_atInsertionPoint_(a1, a2, &v5, a3);
  if (v5 == v6)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v6 - 8);
  }

  v8 = &v5;
  sub_22107C2C0(&v8);

  return v3;
}

void sub_22107AB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  sub_22107C2C0(&a12);
  _Unwind_Resume(a1);
}

id sub_22107AB70(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v8 = objc_opt_new();
  v12 = objc_msgSend_characterCount(a1, v9, v10, v11);
  if (!v12)
  {
    goto LABEL_78;
  }

  v13 = [TSTFunctionNode alloc];
  v17 = objc_msgSend_context(a1, v14, v15, v16);
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v13, v18, v17, 104, 0, 0, 0);

  v101 = objc_msgSend_attachmentIndexRangeForTextRange_(a1, v20, a3, a4);
  v24 = objc_msgSend_singleQuoteCharacters(TSTFormula, v21, v22, v23);
  v30 = objc_msgSend_doubleQuoteCharacters(TSTFormula, v25, v26, v27);
  v31 = a3 + a4;
  if (a3 >= a3 + a4)
  {
    v100 = 0;
    v84 = 1;
    goto LABEL_74;
  }

  v99 = Index_lastIndex;
  v100 = 0;
  v103 = 0;
  v104 = 0;
  v32 = v12 - 1;
  do
  {
    if (a3 >= v12)
    {
      v33 = 0;
    }

    else
    {
      v33 = objc_msgSend_characterAtIndex_(a1, v28, a3, v29);
      if (v33 == 65532)
      {
        v105 = 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        v35 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v34, v101, &v105);
        v36 = TSUDynamicCast();

        v40 = objc_msgSend_expressionNode(v36, v37, v38, v39);
        v44 = v40;
        if (!v40)
        {
LABEL_51:
          ++v101;

          goto LABEL_52;
        }

        isFunctionNode = objc_msgSend_isFunctionNode(v40, v41, v42, v43);
        if (v100)
        {
          v49 = 0;
        }

        else
        {
          v49 = isFunctionNode;
        }

        if (v49 == 1)
        {
          v100 = v44;
        }

        else
        {
          if (objc_msgSend_isFunctionNode(v44, v46, v47, v48))
          {
            if (v104 == 1)
            {
              objc_msgSend_addObject_(v8, v68, v99, v70);
            }

            v50 = v104 + 1;
            goto LABEL_50;
          }

          if (objc_msgSend_isFunctionEndNode(v44, v68, v69, v70))
          {
            v50 = v104 - 1;
            if (!v104)
            {
              v50 = 0;
            }

            goto LABEL_50;
          }

          if (v104 != 1)
          {
            goto LABEL_51;
          }

          if ((objc_msgSend_isEmptyNode(v44, v71, v72, v73) & 1) != 0 || objc_msgSend_isArgumentPlaceholderNode(v44, v78, v79, v80))
          {
            objc_msgSend_addObject_(v8, v78, v44, v80);
          }

          else if (objc_msgSend_count(v8, v78, v81, v80) <= v103)
          {
            objc_msgSend_addObject_(v8, v82, v99, v83);
          }
        }

        v50 = 1;
LABEL_50:
        v104 = v50;
        goto LABEL_51;
      }
    }

    if (v33 == a5)
    {
      v51 = v103;
      if (v104 == 1)
      {
        v51 = v103 + 1;
      }

      v103 = v51;
    }

    else if (objc_msgSend_characterIsMember_(v24, v28, v33, v29))
    {
      while (a3 < v32)
      {
        v52 = a3 + 1;
        v53 = objc_msgSend_characterAtIndex_(a1, v28, a3 + 1, v29);
        if (objc_msgSend_characterIsMember_(v24, v54, v53, v55))
        {
          a3 += 2;
          if (a3 >= v12)
          {
            IsMember = objc_msgSend_characterIsMember_(v24, v28, 0, v29);
          }

          else
          {
            v56 = objc_msgSend_characterAtIndex_(a1, v28, a3, v29);
            IsMember = objc_msgSend_characterIsMember_(v24, v57, v56, v58);
          }

          if ((IsMember & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          ++a3;
        }
      }
    }

    else if (objc_msgSend_characterIsMember_(v30, v28, v33, v29))
    {
      while (a3 < v32)
      {
        v52 = a3 + 1;
        v61 = objc_msgSend_characterAtIndex_(a1, v28, a3 + 1, v29);
        if (objc_msgSend_characterIsMember_(v30, v62, v61, v63))
        {
          a3 += 2;
          if (a3 >= v12)
          {
            v67 = objc_msgSend_characterIsMember_(v30, v28, 0, v29);
          }

          else
          {
            v64 = objc_msgSend_characterAtIndex_(a1, v28, a3, v29);
            v67 = objc_msgSend_characterIsMember_(v30, v65, v64, v66);
          }

          if ((v67 & 1) == 0)
          {
LABEL_35:
            a3 = v52;
            break;
          }
        }

        else
        {
          ++a3;
        }
      }
    }

    else
    {
      if (v104 == 1 && objc_msgSend_count(v8, v28, v60, v29) <= v103)
      {
        objc_msgSend_addObject_(v8, v28, v99, v29);
      }

      if (v33 == 40 || v33 == 65288 || v33 == 123)
      {
        ++v104;
      }

      else
      {
        v77 = (v33 == 125 || v33 == 41 || v33 == 65289) && v104 != 0;
        v104 -= v77;
      }
    }

LABEL_52:
    ++a3;
  }

  while (a3 < v31);
  v84 = v103 + 1;
  Index_lastIndex = v99;
LABEL_74:
  v85 = [TSTEmptyExpressionNode alloc];
  v89 = objc_msgSend_context(a1, v86, v87, v88);
  v92 = objc_msgSend_initWithContext_(v85, v90, v89, v91);

  while (objc_msgSend_count(v8, v93, v94, v95) < v84)
  {
    objc_msgSend_addObject_(v8, v96, v92, v97);
  }

LABEL_78:

  return v8;
}

void sub_22107B0CC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  objc_msgSend_inProgressFunctions_atInsertionPoint_(a1, v7, &v32, a4);
  v9 = v32;
  v8 = v33;
  if (v32 != v33)
  {
    v27 = v33;
    do
    {
      v10 = *v9;
      objc_opt_class();
      v11 = TSUDynamicCast();
      v15 = v11;
      if (v11 && ((objc_msgSend_isLetFunction(v11, v12, v13, v14) & 1) != 0 || objc_msgSend_isLambdaFunction(v15, v16, v17, v18)))
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v19 = objc_msgSend_children(v15, v16, v17, v18);
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v28, v36, 16);
        if (v21)
        {
          v22 = *v29;
          do
          {
            v23 = 0;
            do
            {
              if (*v29 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v28 + 1) + 8 * v23);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_addObject_(v6, v25, v24, v26);
              }

              ++v23;
            }

            while (v21 != v23);
            v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, &v28, v36, 16);
          }

          while (v21);
        }

        v8 = v27;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  v35 = &v32;
  sub_22107C2C0(&v35);
}

void sub_22107B29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22)
{
  a22 = &a19;
  sub_22107C2C0(&a22);

  _Unwind_Resume(a1);
}

uint64_t sub_22107B2F4(void *a1, uint64_t a2, void **a3, void *a4)
{
  v47 = a4;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v10 = objc_msgSend_characterCount(a1, v6, v7, v8);
  if (v10 && (v11 = objc_msgSend_attachmentIndexRangeForTextRange_(a1, v9, 0, a3), a3))
  {
    v14 = v11;
    v48 = 0;
    v15 = 0;
    do
    {
      if (v15 < v10 && objc_msgSend_characterAtIndex_(a1, v12, v15, v13) == 65532)
      {
        v53 = 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        v17 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v16, v14, &v53);
        v18 = TSUDynamicCast();

        if (v15 != v53)
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSWPStorage(TSTFormulaAdditions) inProgressArgumentIndexAtInsertionPoint:forFunctionNode:]", v21);
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v25);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 653, 0, "Attachment index mismatch");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
        }

        v31 = objc_msgSend_expressionNode(v18, v19, v20, v21);
        v49 = v31;
        if (v31)
        {
          if (objc_msgSend_isFunctionNode(v31, v32, v33, v34))
          {
            sub_22107A9E4(&v50, &v49);
          }

          else
          {
            if (objc_msgSend_isFunctionEndNode(v49, v35, v36, v37))
            {
              objc_opt_class();
              v38 = TSUDynamicCast();
              if (v50 != v51)
              {
                v39 = *(v51 - 8);
                v43 = objc_msgSend_functionNode(v38, v40, v41, v42);

                if (v39 == v43)
                {
                  v44 = v51 - 8;

                  v51 = v44;
                }
              }
            }

            if (v50 != v51)
            {
              v45 = v48;
              if (*(v51 - 8) == v47)
              {
                v45 = v48 + 1;
              }

              v48 = v45;
            }
          }
        }

        ++v14;
      }

      v15 = (v15 + 1);
    }

    while (a3 != v15);
  }

  else
  {
    v48 = 0;
  }

  v53 = &v50;
  sub_22107C2C0(&v53);

  return v48;
}

void sub_22107B56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, char a13, uint64_t a14, uint64_t a15, char *a16)
{
  a16 = &a13;
  sub_22107C2C0(&a16);

  _Unwind_Resume(a1);
}

uint64_t sub_22107B5F4(void *a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (objc_msgSend_characterCount(a1, a2, a3, a4) <= a3)
  {
    return 0;
  }

  v9 = objc_msgSend_documentRoot(a1, v6, v7, v8);
  v13 = objc_msgSend_documentLocale(v9, v10, v11, v12);
  v17 = objc_msgSend_listSeparator(v13, v14, v15, v16);

  v20 = objc_msgSend_characterAtIndex_(v17, v18, 0, v19);
  v26 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v21, v22, v23);
  while (1)
  {
    isFunctionNode = v4 != 0;
    if (!v4)
    {
      break;
    }

    v30 = objc_msgSend_characterAtIndex_(a1, v24, --v4, v25);
    if (v30 == v20)
    {
      break;
    }

    if ((objc_msgSend_characterIsMember_(v26, v28, v30, v29) & 1) == 0)
    {
      if (v30 == 65532)
      {
        objc_opt_class();
        v33 = objc_msgSend_attachmentAtCharIndex_(a1, v31, v4, v32);
        v34 = TSUDynamicCast();

        v38 = objc_msgSend_expressionNode(v34, v35, v36, v37);
        isFunctionNode = objc_msgSend_isFunctionNode(v38, v39, v40, v41);
      }

      else
      {
        isFunctionNode = 0;
      }

      break;
    }
  }

  return isFunctionNode;
}

uint64_t sub_22107B7AC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_range(a1, a2, a3, a4);

  return MEMORY[0x2821F9670](a1, sel_p_detokenizeEverythingInRange_, v6, v5);
}

void *sub_22107B7EC(void *result, const char *a2, unint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a3 + a4;
    if (a3 + a4 > a3)
    {
      v6 = result;
      do
      {
        result = objc_msgSend_p_detokenizeTokenAtCharIndex_(v6, a2, --v5, a4);
      }

      while (v5 > a3);
    }
  }

  return result;
}

void sub_22107B844(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_characterAtIndex_(a1, a2, a3, a4) == 65532)
  {
    objc_opt_class();
    v8 = objc_msgSend_attachmentAtCharIndex_(a1, v6, a3, v7);
    v23 = TSUDynamicCast();

    if (v23)
    {
      v12 = objc_msgSend_detokenizedText(v23, v9, v10, v11);
      objc_msgSend_p_replaceTokenAtCharIndex_withText_(a1, v13, a3, v12);
    }

    else
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPStorage(TSTFormulaAdditions) p_detokenizeTokenAtCharIndex:]", v11);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 747, 0, "expected only token attachments within the detokenization range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
    }
  }
}

void sub_22107B9CC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v64 = a4;
  objc_opt_class();
  v8 = objc_msgSend_attachmentAtCharIndex_(a1, v6, a3, v7);
  v9 = TSUDynamicCast();

  if (!v9)
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage(TSTFormulaAdditions) p_replaceTokenAtCharIndex:withText:]", v12);
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v47);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v49, v45, v48, 757, 0, "invalid nil value for '%{public}s'", "token");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52);
    if (v64)
    {
      goto LABEL_15;
    }

LABEL_13:
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPStorage(TSTFormulaAdditions) p_replaceTokenAtCharIndex:withText:]", v12);
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_FormulaAdditions.mm", v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 758, 0, "invalid nil value for '%{public}s'", "text");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
    goto LABEL_15;
  }

  if (!v64)
  {
    goto LABEL_13;
  }

  v13 = objc_msgSend_expressionNode(v9, v10, v11, v12);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v63 = objc_msgSend_componentsSeparatedByString_(v64, v15, @":", v16);
    v62 = objc_msgSend_firstObject(v63, v17, v18, v19);
    objc_msgSend_p_replaceUnknownDirectionText_atRange_(a1, v20, v62, a3, 1);
    v24 = objc_msgSend_length(v62, v21, v22, v23);
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v28 = objc_msgSend_count(v63, v25, v26, v27);
    v30 = objc_msgSend_subarrayWithRange_(v63, v29, 1, v28 - 1);
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v65, v69, 16);
    if (v33)
    {
      v34 = v24 + a3;
      v35 = *v66;
      v36 = *MEMORY[0x277D81448];
      do
      {
        v37 = 0;
        do
        {
          if (*v66 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v38 = *(*(&v65 + 1) + 8 * v37);
          objc_msgSend_replaceText_withLanguage_atRange_(a1, v32, @":", v36, v34, 0);
          v39 = v34 + 1;
          objc_msgSend_p_replaceUnknownDirectionText_atRange_(a1, v40, v38, v39, 0);
          v34 = objc_msgSend_length(v38, v41, v42, v43) + v39;
          ++v37;
        }

        while (v33 != v37);
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v65, v69, 16);
      }

      while (v33);
    }
  }

  else
  {
    objc_msgSend_p_replaceMixedDirectionText_atRange_(a1, v15, v64, a3, 1);
  }

LABEL_15:
}

void sub_22107BDCC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  if (TSWPGetDefaultParagraphDirection() == 1)
  {
    objc_msgSend_replaceText_withLanguage_atRange_(a1, v8, v9, @"he", a4, a5);
  }

  else
  {
    objc_msgSend_replaceText_withLanguage_atRange_(a1, v8, v9, @"en", a4, a5);
  }
}

void sub_22107BE64(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v57 = a3;
  v11 = objc_msgSend_mutableCopy(v57, v8, v9, v10);
  v15 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x277CCA900], v12, v13, v14);
  v19 = objc_msgSend_documentRoot(a1, v16, v17, v18);
  v23 = objc_msgSend_documentLocale(v19, v20, v21, v22);
  isLanguageFormulasDirectionRightToLeft = objc_msgSend_isLanguageFormulasDirectionRightToLeft(v23, v24, v25, v26);
  v28 = @"en";
  if (isLanguageFormulasDirectionRightToLeft)
  {
    v28 = @"he";
  }

  v29 = v28;

  if (objc_msgSend_length(v11, v30, v31, v32))
  {
    v36 = *MEMORY[0x277D81448];
    while (objc_msgSend_length(v11, v33, v34, v35))
    {
      v39 = objc_msgSend_characterAtIndex_(v11, v37, 0, v38);
      IsMember = objc_msgSend_characterIsMember_(v15, v40, v39, v41);
      for (i = 1; i < objc_msgSend_length(v11, v42, v43, v44); ++i)
      {
        v47 = objc_msgSend_characterAtIndex_(v11, v42, i, v44);
        if (IsMember != objc_msgSend_characterIsMember_(v15, v48, v47, v49))
        {
          break;
        }
      }

      v51 = objc_msgSend_substringToIndex_(v11, v42, i, v44);
      if (IsMember)
      {
        objc_msgSend_replaceText_withLanguage_atRange_(a1, v50, v51, v29, a4, a5);
      }

      else
      {
        objc_msgSend_replaceText_withLanguage_atRange_(a1, v50, v51, v36, a4, a5);
      }

      v55 = objc_msgSend_length(v51, v52, v53, v54);
      objc_msgSend_deleteCharactersInRange_(v11, v56, 0, i);
      a4 += v55;

      a5 = 0;
    }
  }

  else
  {
    objc_msgSend_replaceText_atRange_(a1, v33, v11, a4, a5);
  }
}

void sub_22107C098(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_22107C160(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22107C1BC(exception, a1);
  __cxa_throw(exception, off_27845D7B8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_22107C1BC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_22107C1F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_22107C238()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_22107C26C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22107C2C0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_22107C800(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_22107C800(a1, *a2);
    sub_22107C800(a1, a2[1]);
    sub_22107C860((a2 + 8), a2[9]);

    operator delete(a2);
  }
}

void sub_22107C860(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_22107C860(a1, *a2);
    sub_22107C860(a1, *(a2 + 1));
    TSUIndexSet::~TSUIndexSet((a2 + 40));

    operator delete(a2);
  }
}

void sub_22107CC64(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_22107DB10(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a2;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v31, v35, 16);
  if (v4)
  {
    v5 = *v32;
    do
    {
      v6 = 0;
      do
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * v6);
        objc_msgSend_setParentNode_(v7, v8, *(a1 + 32), v9);
        v13 = objc_msgSend_groupCellValue(v7, v10, v11, v12);
        v17 = objc_msgSend_canonicalKeyString(v13, v14, v15, v16);

        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = &stru_2834BADA0;
        }

        v20 = *(*(a1 + 32) + 152);
        if (!v20)
        {
          v21 = objc_opt_new();
          v22 = *(a1 + 32);
          v23 = *(v22 + 152);
          *(v22 + 152) = v21;

          v20 = *(*(a1 + 32) + 152);
        }

        objc_msgSend_setObject_forKey_(v20, v18, v7, v19);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_22107DD80;
        v29[3] = &unk_27845D8B0;
        v29[4] = *(a1 + 32);
        v24 = v7;
        v30 = v24;
        objc_msgSend_enumerateRowUidsWithBlock_(v24, v25, v29, v26);

        ++v6;
      }

      while (v4 != v6);
      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v31, v35, 16);
    }

    while (v4);
  }
}

void sub_22107DD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v6;
  v5 = sub_221086FBC((v3 + 248), v6, &unk_2217E0160, &v7);
  objc_storeStrong(v5 + 4, v4);
}

void sub_22107DDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v6;
  v5 = sub_221086FBC((v3 + 248), v6, &unk_2217E0160, &v7);
  objc_storeStrong(v5 + 4, v4);
}

void sub_22107E348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTGroupNode;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22107E4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v6;
  v5 = sub_221086FBC((v3 + 248), v6, &unk_2217E0160, &v7);
  objc_storeStrong(v5 + 4, v4);
}

uint64_t sub_22107E67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_221087578((*(a1 + 32) + 248), v4);
}

uint64_t sub_22107EF30(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11._lower = a2;
  v11._upper = a3;
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 56);
  v6 = *v4;
  if (v5 >= *v4)
  {
    if (v6 != *(v3 + 60))
    {
LABEL_7:
      *v4 = v6 + 1;
      v7 = MEMORY[0x223DA0360](*(v3 + 48));
      v8 = *(v3 + 56);
      v9 = *(v3 + 64) + 8 * v8;
      *(v3 + 56) = v8 + 1;
      *(v9 + 8) = v7;
      return TSKUIDStruct::saveToMessage(&v11, v7);
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 48));
    v4 = *(v3 + 64);
    v6 = *v4;
    goto LABEL_7;
  }

  *(v3 + 56) = v5 + 1;
  v7 = *&v4[2 * v5 + 2];
  return TSKUIDStruct::saveToMessage(&v11, v7);
}

uint64_t sub_22107F2D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v4 = *(a1 + 32);
  objc_msgSend_lookupKeyForRowUID_(*(a1 + 40), a2, v6, a4);
  return TSUIndexSet::addIndex((v4 + 168));
}

void sub_221082084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void *sub_221082180(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  result = objc_msgSend_findKeyForRowUid_(*(a1 + 32), a2, &v7, a4);
  if (result != -1)
  {
    result = TSUIndexSet::containsIndex((*(a1 + 40) + 168));
    if (result)
    {
      TSUIndexSet::removeIndex((*(a1 + 40) + 168));
      return objc_msgSend_addUUID_(*(a1 + 48), v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_221082204(void *a1, const char *a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  *(*(a1[6] + 8) + 24) = (*(*(a1[6] + 8) + 24) | objc_msgSend_mergedFormatChangedByRemovingRowUID_groupBy_(*(a1[4] + 240), a2, &v6, a1[5])) & 1;
  return objc_msgSend_didRemoveRowUID_fromGroup_(a1[5], v4, v6, v7, a1[4]);
}

void sub_221082AA4(_Unwind_Exception *a1, uint64_t a2, __int128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, TSUIndexSet *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__pa, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51)
{
  _Block_object_dispose(&a38, 8);
  if (__pa)
  {
    a45 = __pa;
    operator delete(__pa);
  }

  _Block_object_dispose((v55 - 192), 8);
  sub_221087B80(v55 - 144);

  if (v54)
  {
    operator delete(v54);
  }

  _Unwind_Resume(a1);
}

void sub_221082C98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v10 = objc_msgSend_formulaCoord(v3, v5, v6, v7);
  v11 = &v10;
  v8 = sub_221087C00((v4 + 48), &v10, &unk_2217E0160, &v11);
  v9 = v8[3];
  v8[3] = v3;
}

void sub_221082D18(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_aggNodeForColumnUid_(v3, v4, a1 + 48, v5);
  objc_msgSend_addChild_skipWillModify_(*(a1 + 32), v7, v6, 1);
  v8 = *(*(a1 + 40) + 8);
  v12 = objc_msgSend_formulaCoord(v6, v9, v10, v11);
  sub_221087EC8((v8 + 48), &v12);
}

__n128 sub_221082DB8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221082DDC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221082DF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_hiddenStates(*(a1 + 32), a2, a3, a4);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_referenceToHiddenStateFromRow_toRow_(v6, v7, *a2, *(a2 + 2));
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  if (TSCERangeRef::isValid(&v25))
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = v9[7];
    v11 = v9[8];
    if (v10 >= v11)
    {
      v14 = v9[6];
      v15 = (v10 - v14) >> 5;
      v16 = v15 + 1;
      if ((v15 + 1) >> 59)
      {
        sub_22107C148();
      }

      v17 = v11 - v14;
      if (v17 >> 4 > v16)
      {
        v16 = v17 >> 4;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFE0)
      {
        v18 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        sub_221087FE8((v9 + 6), v18);
      }

      v19 = 32 * v15;
      tableUID = v25._tableUID;
      *v19 = v25.range;
      *(v19 + 16) = tableUID;
      v13 = 32 * v15 + 32;
      v21 = v9[6];
      v22 = v9[7] - v21;
      v23 = 32 * v15 - v22;
      memcpy((v19 - v22), v21, v22);
      v24 = v9[6];
      v9[6] = v23;
      v9[7] = v13;
      v9[8] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      v12 = v25._tableUID;
      *v10 = v25.range;
      *(v10 + 16) = v12;
      v13 = v10 + 32;
    }

    v9[7] = v13;
  }
}

void sub_2210832E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22108332C(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221083350(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221083368(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_221086F74(a1, a2);
    }

    sub_22107C148();
  }
}

void sub_221083408(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *&v6 = objc_msgSend_rowUIDForLookupKey_(*(a1 + 32), a2, a2, a4);
  *(&v6 + 1) = v5;
  sub_221083454(*(*(a1 + 40) + 8) + 48, &v6);
}

void sub_221083454(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_221086F74(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_2210837EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, TSUIndexSet *a13, TSUIndexSet *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  TSUIndexSet::~TSUIndexSet(&a21);

  TSUIndexSet::~TSUIndexSet(&a25);
  _Block_object_dispose((v28 - 120), 8);
  v30 = *(v28 - 72);
  if (v30)
  {
    *(v28 - 64) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_221083890(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *&v6 = objc_msgSend_rowUIDForLookupKey_(*(a1 + 32), a2, a2, a4);
  *(&v6 + 1) = v5;
  sub_221083454(*(*(a1 + 40) + 8) + 48, &v6);
}

void sub_2210838DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *&v6 = objc_msgSend_rowUIDForLookupKey_(*(a1 + 32), a2, a2, a4);
  *(&v6 + 1) = v5;
  sub_221083454(*(*(a1 + 40) + 8) + 48, &v6);
}

uint64_t sub_221083A4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_rowUIDForLookupKey_(*(*(a1 + 32) + 96), a2, a2, a4);
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_221083DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_221083E14(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  result = objc_msgSend_findKeyForRowUid_(*(a1 + 32), a2, v7, a4);
  if (result != -1)
  {
    result = TSUIndexSet::containsIndex((*(a1 + 40) + 168));
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }

  return result;
}

void sub_221086ACC(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

char *sub_221086AF0(void *a1, char *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 4) + 1;
    if (v11 >> 60)
    {
      sub_22107C148();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v27 = a1;
    if (v14)
    {
      sub_221086F74(a1, v14);
    }

    v24 = 0;
    v25 = 16 * v15;
    v26 = (16 * v15);
    sub_221088570(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 16;
  }

  else
  {
    v8 = __src + 16;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 16;
      *v6 = *(v6 - 1);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 16, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_221086C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_221086EBC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_221086F1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221086F38(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_221086F74(a1, a2);
  }

  sub_22107C148();
}

void sub_221086F74(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22107C238();
}

void *sub_221086FBC(float *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = v4 ^ *a2;
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ *a2;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

void sub_221087210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221087224(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_221087270(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_221087360(result, prime);
    }
  }
}

void sub_221087360(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_2210874C4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_221087578(void *a1, void *a2)
{
  result = sub_2210875C4(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_221087224(v4);
    return 1;
  }

  return result;
}

void *sub_2210875C4(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3 ^ *a2;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == *a2 && result[3] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_221087680@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t sub_2210877BC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_221087834(a1, i + 2, (i + 2));
  }

  return a1;
}

void *sub_221087834(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

void sub_221087A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221087AA4(uint64_t a1)
{
  sub_221087AE0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221087AE0(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_221087B24(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_221087AE0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_221087B80(uint64_t a1)
{
  sub_221087BBC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221087BBC(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_221087C00(void *a1, unsigned int *a2, uint64_t a3, void **a4)
{
  v4 = *a2 + 16 * *(a2 + 2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2 + 16 * *(a2 + 2);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  v10 = *a2;
  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
      goto LABEL_23;
    }

LABEL_22:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14)
  {
    goto LABEL_22;
  }

  return v9;
}

void sub_221087E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221087E7C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_221087EC8(void *a1, unsigned int *a2)
{
  result = sub_221087F14(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_221087E7C(v4);
    return 1;
  }

  return result;
}

void *sub_221087F14(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2 + 16 * *(a2 + 2);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    v8 = *a2;
    do
    {
      v9 = result[1];
      if (v9 == v3)
      {
        v10 = result[2];
        v12 = v10 == v8;
        v11 = (v8 ^ v10) & 0x101FFFF00000000;
        v12 = v12 && v11 == 0;
        if (v12)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v9 >= *&v2)
          {
            v9 %= *&v2;
          }
        }

        else
        {
          v9 &= *&v2 - 1;
        }

        if (v9 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_221087FE8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_221088030(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void *sub_2210880A0(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = v4 ^ *a2;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ *a2;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

void sub_2210882F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

void *sub_221088308(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = v4 ^ *a2;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ *a2;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

void sub_22108855C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

__n128 sub_221088570(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      sub_221086F74(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = v5[v7].n128_u64;
    a1[2] = v9->n128_u64 + v10;
  }

  result = *a2;
  *v4 = *a2;
  a1[2] += 16;
  return result;
}

void sub_221088678(uint64_t a1, unint64_t a2, void *a3)
{
  v17 = a3;
  if (a2 >= 3)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSTArgumentAtIndexLocator::setArgumentAt(NSInteger, TSTFormulaPredArg *__strong)", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentAtIndexLocator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 33, 0, "Position %d not supported", a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  else
  {
    objc_storeStrong((a1 + 8 * a2 + 184), a3);
  }
}

TSCEASTNumberElement *sub_22108878C(uint64_t a1, TSCEASTNumberElement *a2)
{
  if (*(a1 + 144) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 1u) == *(a1 + 176))
  {
    v4 = [TSTFormulaPredArg alloc];
    v20._decimal.w[0] = TSCEASTNumberElement::value(a2, a1, v5, v6);
    v20._decimal.w[1] = v7;
    TSUDecimal::doubleValue(&v20);
    v11 = objc_msgSend_initWithDouble_(v4, v8, v9, v10);
    sub_221088678(a1, 1uLL, v11);
LABEL_7:

    return a2;
  }

  if (*(a1 + 148) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 2u) == *(a1 + 176))
  {
    v12 = [TSTFormulaPredArg alloc];
    v20._decimal.w[0] = TSCEASTNumberElement::value(a2, a1, v13, v14);
    v20._decimal.w[1] = v15;
    TSUDecimal::doubleValue(&v20);
    v11 = objc_msgSend_initWithDouble_(v12, v16, v17, v18);
    sub_221088678(a1, 2uLL, v11);
    goto LABEL_7;
  }

  return a2;
}

TSCEASTBooleanElement *sub_2210888B0(uint64_t a1, TSCEASTBooleanElement *a2)
{
  if (*(a1 + 144) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 1u) == *(a1 + 176))
  {
    v4 = [TSTFormulaPredArg alloc];
    v7 = TSCEASTBooleanElement::value(a2, a1, v5, v6);
    v11 = objc_msgSend_initWithDouble_(v4, v8, v9, v10, v7);
    sub_221088678(a1, 1uLL, v11);
LABEL_7:

    return a2;
  }

  if (*(a1 + 148) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 2u) == *(a1 + 176))
  {
    v12 = [TSTFormulaPredArg alloc];
    v15 = TSCEASTBooleanElement::value(a2, a1, v13, v14);
    v11 = objc_msgSend_initWithDouble_(v12, v16, v17, v18, v15);
    sub_221088678(a1, 2uLL, v11);
    goto LABEL_7;
  }

  return a2;
}

TSCEASTStringElement *sub_2210889BC(uint64_t a1, TSCEASTStringElement *a2)
{
  if (*(a1 + 144) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 1u) == *(a1 + 176))
  {
    v4 = [TSTFormulaPredArg alloc];
    v7 = TSCEASTStringElement::string(a2, a1, v5, v6);
    v10 = objc_msgSend_initWithString_(v4, v8, v7, v9);

    sub_221088678(a1, 1uLL, v10);
  }

  return a2;
}

TSCEASTDateElement *sub_221088A78(uint64_t a1, TSCEASTDateElement *a2)
{
  if (*(a1 + 144) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 1u) == *(a1 + 176))
  {
    v4 = [TSTFormulaPredArg alloc];
    v7 = TSCEASTDateElement::value(a2, a1, v5, v6);
    v10 = objc_msgSend_initWithDate_(v4, v8, v7, v9);

    sub_221088678(a1, 1uLL, v10);
LABEL_7:

    return a2;
  }

  if (*(a1 + 148) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 2u) == *(a1 + 176))
  {
    v11 = [TSTFormulaPredArg alloc];
    v14 = TSCEASTDateElement::value(a2, a1, v12, v13);
    v10 = objc_msgSend_initWithDate_(v11, v15, v14, v16);

    sub_221088678(a1, 2uLL, v10);
    goto LABEL_7;
  }

  return a2;
}

TSCEASTDurationElement *sub_221088BAC(uint64_t a1, TSCEASTDurationElement *a2)
{
  if (*(a1 + 144) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 1u) == *(a1 + 176))
  {
    v4 = [TSTFormulaPredArg alloc];
    v7 = TSCEASTDurationElement::unitNum(a2, a1, v5, v6);
    v10 = TSCEASTDurationElement::unit(a2, a1, v8, v9);
    v11 = sub_221387CBC(v10);
    v14 = objc_msgSend_initWithDuration_units_(v4, v12, v11, v13, v7);
    sub_221088678(a1, 1uLL, v14);
LABEL_7:

    return a2;
  }

  if (*(a1 + 148) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), 2u) == *(a1 + 176))
  {
    v15 = [TSTFormulaPredArg alloc];
    v18 = TSCEASTDurationElement::unitNum(a2, a1, v16, v17);
    v21 = TSCEASTDurationElement::unit(a2, a1, v19, v20);
    v22 = sub_221387CBC(v21);
    v14 = objc_msgSend_initWithDuration_units_(v15, v23, v22, v24, v18);
    sub_221088678(a1, 2uLL, v14);
    goto LABEL_7;
  }

  return a2;
}

TSCEASTCategoryRefElement *sub_221088CF0(uint64_t a1, TSCEASTCategoryRefElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = [TSTFormulaPredArg alloc];
      v8 = TSCEASTCategoryRefElement::categoryRef(a2, a1, v6, v7);
      v11 = objc_msgSend_initWithCategoryRef_(v5, v9, v8, v10);

      sub_221088678(a1, i, v11);
    }
  }

  return a2;
}

TSCEASTViewTractRefElement *sub_221088DC8(uint64_t a1, TSCEASTViewTractRefElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = [TSTFormulaPredArg alloc];
      v8 = TSCEASTViewTractRefElement::viewTractRef(a2, a1, v6, v7);
      v11 = objc_msgSend_initWithViewTractRef_(v5, v9, v8, v10);

      sub_221088678(a1, i, v11);
    }
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_221088EA0(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  if (v4)
  {
    sub_221088F08(a1, a2);
  }

  else if ((v4 & 0xC) != 4 && (v4 & 0xC) != 8)
  {
    sub_221089014(a1, a2);
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_221088F08(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = [TSTFormulaPredArg alloc];
      TSCEASTRelativeCoordRefElement::crossTableRef(v15, a2, a1, v6, v7);
      v10 = objc_msgSend_initWithCrossTableRef_(v5, v8, v15, v9);
      if (TSCEASTElement::hasUidTracts(a2, a1))
      {
        v11 = TSCEASTElement::mutableUndoTractList(a2, a1);
        objc_msgSend_setUidTractList_(v10, v12, v11, v13);
      }

      sub_221088678(a1, i, v10);
    }
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_221089014(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v7 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v5, v6);
      v18._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
      tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      v17 = v7;
      TSCERelativeCellCoordinate::setPreserveFlags(&v17, &v18);
      v8 = [TSTFormulaPredArg alloc];
      v11 = objc_msgSend_initWithCrossTableRef_(v8, v9, &tableUID, v10);
      if (TSCEASTElement::hasUidTracts(a2, a1))
      {
        v12 = TSCEASTElement::mutableUndoTractList(a2, a1);
        objc_msgSend_setUidTractList_(v11, v13, v12, v14);
      }

      sub_221088678(a1, i, v11);
    }
  }

  return a2;
}

uint64_t sub_221089154(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 181) = 1;
  do
  {
    if (*(a1 + 4 * v4 + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), v4) == *(a1 + 176))
    {
      v5 = TSCEASTElement::tag(a2, a1);
      if (v5 == 64)
      {
        v17 = (*(*a2 + 136))(a2, a1);
        v29._flags = 0;
        v30 = v17;
        v31 = v18;
        v32 = 0x7FFFFFFFLL;
        TSCERelativeCellCoordinate::setPreserveFlags(&v32, &v29);
        v19 = [TSTFormulaPredArg alloc];
        v22 = objc_msgSend_initWithCrossTableRef_(v19, v20, &v30, v21);
        sub_221088678(a1, v4, v22);
      }

      else
      {
        if (v5 == 65)
        {
          v8 = MEMORY[0x277D81150];
          v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "virtual TSCEASTElement *TSTArgumentAtIndexLocator::linkedRefNode(TSCEASTLinkedRefElement *)", v7);
          v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArgumentAtIndexLocator.mm", v11);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 206, 0, "Never used - now deprecated TSCEASTLinkedRowRefNode");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
          goto LABEL_10;
        }

        v23 = (*(*a2 + 136))(a2, a1);
        v29._flags = 0;
        v30 = v23;
        v31 = v24;
        v32 = 0;
        TSCERelativeCellCoordinate::setPreserveFlags(&v32, &v29);
        v25 = [TSTFormulaPredArg alloc];
        v22 = objc_msgSend_initWithCrossTableRef_(v25, v26, &v30, v27);
        sub_221088678(a1, v4, v22);
      }
    }

LABEL_10:
    ++v4;
  }

  while (v4 != 3);
  return a2;
}

unint64_t sub_221089378(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  sub_2210898C4(a1, a2, a3, a4);
  sub_2210899C8(a2, v6, v7, v8);
  sub_2210898C4(a1, v9, v10, v11);
  sub_2210899C8(a2, v12, v13, v14);
  return a2 | (a1 << 32);
}

uint64_t sub_2210893C4(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27CFB5198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CFB5198))
  {
    v12 = sub_221089378(0x7FFF, 0x7FFFFFFF, v10, v11);
    v13._flags = 0;
    qword_27CFB5180 = 0;
    *algn_27CFB5188 = 0;
    qword_27CFB5190 = v12;
    TSCERelativeCellCoordinate::setPreserveFlags(&qword_27CFB5190, &v13);
    __cxa_guard_release(&qword_27CFB5198);
  }

  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = [TSTFormulaPredArg alloc];
      v8 = objc_msgSend_initWithCrossTableRef_(v5, v6, &qword_27CFB5180, v7);
      sub_221088678(a1, i, v8);
    }
  }

  return a2;
}

TSCEASTElement *sub_2210894F4(uint64_t a1, TSCEASTElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = TSCEASTElement::mutableUndoTractList(a2, a1);
      v16 = 0;
      v17 = 0;
      v16 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v6, v7);
      v17 = v8;
      v9 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
      objc_msgSend_setPreserveFlags_(v5, v10, v9, v11);
      v12 = [TSTFormulaPredArg alloc];
      inited = objc_msgSend_initAsBadRefWithTableUID_uidTractList_(v12, v13, &v16, v5);
      sub_221088678(a1, i, inited);
    }
  }

  return a2;
}

TSCEASTUidReferenceElement *sub_221089604(uint64_t a1, TSCEASTUidReferenceElement *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (*(a1 + 4 * i + 140) != -1 && TSCEASTNodeArgInfo::positionForArg((a1 + 136), i) == *(a1 + 176))
    {
      v5 = (*(*a2 + 96))(a2, a1);
      v13 = 0;
      v14 = 0;
      v13 = TSCEASTUidReferenceElement::tableUID(a2, a1, v6, v7);
      v14 = v8;
      v9 = [TSTFormulaPredArg alloc];
      v11 = objc_msgSend_initWithTableUID_uidTractList_(v9, v10, &v13, v5);
      sub_221088678(a1, i, v11);
    }
  }

  return a2;
}

void sub_221089718(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_221089764(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_221089868(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 180) == 1)
  {
    *(result + 180) = 0;
  }

  else
  {
    result = TSCEASTElement::tag(a2, result);
    if (result != 27)
    {
      ++*(v2 + 176);
    }
  }

  return result;
}

void *sub_2210898C4(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result != 0x7FFF)
  {
    v4 = result;
    if ((result + 999) >= 0x7CFu)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static void TSCERelativeCellCoordinate::assertColumnInMaxRange(TSURelativeColumnIndex)", a4);
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v8);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 45, 0, "TSCERelativeCellCoordinate: column outside valid range: %d", v4);

      v14 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v14, v11, v12, v13);
    }
  }

  return result;
}

void *sub_2210899C8(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result != 0x7FFFFFFF)
  {
    v4 = result;
    if ((result + 999999) >= 0x1E847F)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static void TSCERelativeCellCoordinate::assertRowInMaxRange(TSURelativeRowIndex)", a4);
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v8);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 51, 0, "TSCERelativeCellCoordinate row outside valid range: %d", v4);

      v14 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v14, v11, v12, v13);
    }
  }

  return result;
}

TSCEASTCategoryRefElement *sub_221089AD4(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4);
  if (objc_msgSend_groupByUid(v6, v7, v8, v9) != *(a1 + 17) || v10 != *(a1 + 18))
  {
    goto LABEL_27;
  }

  v16 = objc_msgSend_absoluteGroupUid(v6, v10, v11, v12);
  v17 = v13;
  if (!*(a1 + 19))
  {
    v18 = *(a1 + 17);
    v19 = *(a1 + 18);
    v20 = sub_221089E8C(a1);
    v22 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v21, v18, v19, v20);
    v23 = *(a1 + 19);
    *(a1 + 19) = v22;
  }

  if (!*(a1 + 20))
  {
    v24 = objc_msgSend_tableInfo(*(a1 + 19), v13, v14, v15);
    v28 = objc_msgSend_tableUID(v24, v25, v26, v27);
    v30 = v29;
    v31 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (v28 != v31->var0.var0._tableUID._lower)
    {
LABEL_10:

      goto LABEL_11;
    }

    upper = v31->var0.var0._tableUID._upper;

    if (v30 == upper)
    {
      v33 = objc_msgSend_tableInfo(*(a1 + 19), v13, v14, v15);
      v37 = objc_msgSend_translator(v33, v34, v35, v36);
      v38 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      v41 = objc_msgSend_rowUIDForBaseRowIndex_(v37, v39, v38->var0.var0.coordinate.row, v40);
      v43 = v42;

      if (v41 | v43)
      {
        v44 = *(a1 + 19);
        v45 = objc_msgSend_numberOfLevels(v44, v13, v14, v15);
        v47 = objc_msgSend_groupNodeForRowUid_atLevel_(v44, v46, v41, v43, v45);
        v24 = *(a1 + 20);
        *(a1 + 20) = v47;
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v48 = *(a1 + 19);
  if (!v48 || !*(a1 + 20))
  {
    goto LABEL_27;
  }

  v49 = objc_msgSend_tableInfo(v48, v13, v14, v15);
  v53 = objc_msgSend_tableUID(v49, v50, v51, v52);
  v55 = v54;
  v56 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
  if (v53 != v56->var0.var1._tableUID._lower)
  {
LABEL_26:

    goto LABEL_27;
  }

  v57 = v56->var0.var1._tableUID._upper;

  if (v55 != v57)
  {
    goto LABEL_27;
  }

  v58 = *(a1 + 20);
  for (i = objc_msgSend_groupLevel(v58, v59, v60, v61); ; i = objc_msgSend_groupLevel(v69, v70, v71, v72))
  {
    if (!i)
    {
      v49 = v58;
      goto LABEL_26;
    }

    if (v16 == objc_msgSend_groupUid(v58, v62, v63, v64) && v17 == v66)
    {
      break;
    }

    v69 = objc_msgSend_parentNode(v58, v66, v67, v68);

    v58 = v69;
  }

  v73 = objc_msgSend_tableInfo(*(a1 + 19), v66, v67, v68);
  v77 = objc_msgSend_translator(v73, v74, v75, v76);
  v78 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
  v81 = objc_msgSend_rowUIDForBaseRowIndex_(v77, v79, v78->var0.var1.coordinate.row, v80);
  v83 = v82;

  v84 = *(a1 + 19);
  v88 = objc_msgSend_numberOfLevels(v84, v85, v86, v87);
  v90 = objc_msgSend_groupNodeForRowUid_atLevel_(v84, v89, v81, v83, v88);
  v49 = v90;
  if (!v90)
  {
LABEL_25:

    goto LABEL_26;
  }

  v94 = v90;
  while (objc_msgSend_groupLevel(v94, v91, v92, v93) > i)
  {
    v98 = objc_msgSend_parentNode(v94, v95, v96, v97);

    v94 = v98;
    if (!v98)
    {
      goto LABEL_25;
    }
  }

  v100 = objc_msgSend_groupUid(v94, v95, v96, v97);
  objc_msgSend_setAbsoluteGroupUid_(v6, v101, v100, v101);

  TSCEASTCategoryRefElement::setCategoryRef(this, v6, a1);
LABEL_27:

  return this;
}

TSCEFormulaObject *sub_221089E98(void *a1, TSCEFormulaRewriteContext *a2, __int128 *a3)
{
  v5 = a1;
  v9 = objc_msgSend_astNodeArrayCopy(v5, v6, v7, v8);
  TSCEASTStreamIterator::TSCEASTStreamIterator(v24, v9, a2);
  v24[0] = &unk_2834A1450;
  v27 = *a3;
  v28 = 0;
  v29 = 0;
  TSCEASTStreamIterator::rewrite(v24, v10, v11, v12);
  v13 = v5;
  if (v25 == 1)
  {
    v14 = v26;
    v26 = 0;
    v15 = [TSCEFormulaObject alloc];
    v19 = objc_msgSend_translationFlags(v5, v16, v17, v18);
    v13 = objc_msgSend_initWithNodeArray_translationFlags_(v15, v20, v14, v19);

    TSCEASTNodeArray::freeNodeArray(v14, v21);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v24, v22);

  return v13;
}

void sub_221089FE4(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_22108A098(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_22108A350(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22108A830(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_22108BC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22108BC18(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_hash(v12, v6, v7, v8);
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_hash(v5, v9, v10, v11);
}

void sub_22108BDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108BE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108BF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108BFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108C074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108C11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_22108C1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void *sub_22108CCD0(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
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

uint64_t sub_22108EBB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 3)
  {
    v15 = 2;
    if (a1 != 2)
    {
      v15 = 0;
    }

    if (a1 == 1)
    {
      return 1;
    }

    else
    {
      return v15;
    }
  }

  else if ((a1 - 4) >= 2)
  {
    if (a1 == 7)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSTSelectionType TSTArchivedToNativeSelectionType(const TST::SelectionTypeArchive)", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchiveUtilities.h", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 212, 0, "shouldn't be converting from deprecated archived selection type %d", a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    return 0;
  }
}

uint64_t sub_22108ECBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22108F110(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(v5 + 32);
  v8 = *v6;
  if (v7 < *v6)
  {
    *(v5 + 32) = v7 + 1;
    v9 = *&v6[2 * v7 + 2];
    goto LABEL_8;
  }

  if (v8 == *(v5 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
    v6 = *(v5 + 40);
    v8 = *v6;
  }

  *v6 = v8 + 1;
  v9 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(v5 + 24));
  v10 = *(v5 + 32);
  v11 = *(v5 + 40) + 8 * v10;
  *(v5 + 32) = v10 + 1;
  *(v11 + 8) = v9;
LABEL_8:

  return sub_2211239EC(a2, a3, v9);
}

uint64_t sub_22108F1E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(v5 + 64);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(v5 + 56);
  v8 = *v6;
  if (v7 < *v6)
  {
    *(v5 + 56) = v7 + 1;
    v9 = *&v6[2 * v7 + 2];
    goto LABEL_8;
  }

  if (v8 == *(v5 + 60))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 48));
    v6 = *(v5 + 64);
    v8 = *v6;
  }

  *v6 = v8 + 1;
  v9 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(v5 + 48));
  v10 = *(v5 + 56);
  v11 = *(v5 + 64) + 8 * v10;
  *(v5 + 56) = v10 + 1;
  *(v11 + 8) = v9;
LABEL_8:

  return sub_2211239EC(a2, a3, v9);
}

void sub_22109057C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_2210907D0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2210923D4(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

void sub_2210925FC(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_2210947A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  _Block_object_dispose(&STACK[0x328], 8);

  _Block_object_dispose(&STACK[0x358], 8);
  _Block_object_dispose(&STACK[0x378], 8);

  _Block_object_dispose(&STACK[0x3A8], 8);
  _Block_object_dispose(&STACK[0x3C8], 8);
  _Block_object_dispose(&STACK[0x3E8], 8);

  sub_22107C800(&STACK[0x408], STACK[0x410]);
  _Block_object_dispose(&STACK[0x420], 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221094B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221094B88(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (!*(a1 + 32))
  {
    goto LABEL_13;
  }

  v7 = *(*(*(a1 + 112) + 8) + 40);
  if (!v7)
  {
    v10 = *(a2 + 8);
LABEL_10:
    v12 = *(a1 + 40);
    v92 = v10;
    v13 = objc_msgSend_tableResolverForTableUID_(v12, a2, &v92, a4);
    v14 = *(*(a1 + 112) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    goto LABEL_11;
  }

  v8 = objc_msgSend_tableUID(v7, a2, a3, a4);
  v10 = *(a2 + 8);
  if (v8 != v10 || a2 != *(&v10 + 1))
  {
    goto LABEL_10;
  }

LABEL_11:
  v16 = *(*(*(a1 + 112) + 8) + 40);
  if (v16)
  {
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v19 = objc_msgSend_tableName(v16, a2, v9, a4);
    LOBYTE(v17) = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v17, v20, v18, v19);

    if (v17)
    {
LABEL_13:
      v21 = objc_msgSend_anyRefForRangeForHeaderCell_usePreserveFlags_(*(a1 + 56), a2, a2, *(a1 + 200));
      v23 = objc_msgSend_referenceTextWithCalculationEngine_hostTableUID_(v21, v22, *(a1 + 40), a1 + 168);
      v24 = sub_2211403F8(*(*(a1 + 64) + 8), v23);

      if (objc_msgSend_filterColons(*(a1 + 72), v25, v26, v27) && objc_msgSend_rangeOfString_(v24, v28, @":", v29) != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_53;
      }

      objc_msgSend_addObject_(*(a1 + 80), v28, v21, v29);
      if (*(*(*(a1 + 120) + 8) + 24))
      {
        goto LABEL_53;
      }

      v33 = objc_msgSend_rangeReference(v21, v30, v31, v32);
      v37 = v33;
      if (v33)
      {
        objc_msgSend_rangeRef(v33, v34, v35, v36);
        v38 = v93;
      }

      else
      {
        v38 = 0;
        v92 = 0u;
        v93 = 0u;
      }

      v39 = v38 == *(a1 + 184) && *(&v93 + 1) == *(a1 + 192);

      v40 = *(a1 + 88);
      v44 = objc_msgSend_length(v24, v41, v42, v43);
      v48 = objc_msgSend_length(*(a1 + 88), v45, v46, v47);
      if (v44 >= v48 ? objc_msgSend_compare_options_range_locale_(v24, v49, v40, 393, 0, v48, *(a1 + 96), v92, v93) : objc_msgSend_compare_options_range_locale_(v24, v49, v40, 393, 0, v44, *(a1 + 96), v92, v93))
      {
        goto LABEL_53;
      }

      v54 = *(*(*(a1 + 112) + 8) + 40);
      if (v54)
      {
        v55 = objc_msgSend_tableUID(v54, v51, v52, v53);
        v57 = *(a2 + 8);
        if (__PAIR128__(v51, v55) == v57)
        {
LABEL_31:
          v62 = *(*(*(a1 + 112) + 8) + 40);
          if (v62)
          {
            v63 = objc_msgSend_sheetName(v62, v51, v56, v53);
            objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(v63, v64, *(a1 + 96), v65);
          }

          else
          {
            v63 = 0;
            objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(0, v51, *(a1 + 96), v53);
          }
          v69 = ;
          if (!*(*(*(a1 + 128) + 8) + 40))
          {
            v70 = *(a1 + 104);
            if (v70)
            {
              v71 = objc_msgSend_sheetName(v70, v66, v67, v68);
              v74 = objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(v71, v72, *(a1 + 96), v73);
              v75 = *(*(a1 + 128) + 8);
              v76 = *(v75 + 40);
              *(v75 + 40) = v74;
            }
          }

          if (v39 || (v77 = *(*(a1 + 128) + 8), (v78 = *(v77 + 40)) == 0))
          {
            v81 = 1;
          }

          else if (v69)
          {
            v79 = objc_msgSend_length(*(v77 + 40), v66, v67, v68);
            v81 = objc_msgSend_compare_options_range_locale_(v78, v80, v69, 0, 0, v79, *(a1 + 96)) == 0;
          }

          else
          {
            v81 = 0;
          }

          v82 = *(*(a1 + 136) + 8);
          if ((*(v82 + 24) & 1) == 0)
          {
            *(v82 + 24) = 1;
            objc_storeStrong((*(*(a1 + 144) + 8) + 40), v21);
            if (v39)
            {
              *(*(*(a1 + 152) + 8) + 24) = 1;
            }

            else
            {
              *(*(*(a1 + 160) + 8) + 24) = v81;
            }

            goto LABEL_52;
          }

          v83 = *(*(a1 + 152) + 8);
          if (*(v83 + 24))
          {
            if (v39)
            {
              v84 = *(*(a1 + 144) + 8);
              v85 = *(v84 + 40);
              *(v84 + 40) = 0;

              *(*(*(a1 + 120) + 8) + 24) = 1;
              v89 = objc_msgSend_referencesMatchingInputAsPrefix(*(a1 + 72), v86, v87, v88);

              if (!v89)
              {
                *a3 = 1;
              }
            }

            goto LABEL_52;
          }

          if (v39)
          {
            goto LABEL_50;
          }

          v83 = *(*(a1 + 160) + 8);
          if (*(v83 + 24))
          {
            if (!v81)
            {
              goto LABEL_52;
            }
          }

          else if (v81)
          {
LABEL_50:
            *(v83 + 24) = 1;
            objc_storeStrong((*(*(a1 + 144) + 8) + 40), v21);
LABEL_52:

LABEL_53:
            return;
          }

          v90 = *(*(a1 + 144) + 8);
          v91 = *(v90 + 40);
          *(v90 + 40) = 0;

          goto LABEL_52;
        }
      }

      else
      {
        v57 = *(a2 + 8);
      }

      v58 = *(a1 + 40);
      v92 = v57;
      v59 = objc_msgSend_tableResolverForTableUID_(v58, v51, &v92, v53);
      v60 = *(*(a1 + 112) + 8);
      v61 = *(v60 + 40);
      *(v60 + 40) = v59;

      goto LABEL_31;
    }
  }
}

void sub_221095058(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v7 = objc_msgSend_abortObject(*(a1 + 32), a2, a3, a4);
  isAborted = objc_msgSend_isAborted(v7, v8, v9, v10);

  if (isAborted)
  {
    *a3 = 1;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 40);
    if (v16)
    {
      objc_msgSend_spanningRangeForHeaderCell_(v16, v12, a2, v14);
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    v17 = *(*(*(a1 + 80) + 8) + 40);
    if (!v17 || (objc_msgSend_tableUID(v17, v12, v13, v14) == v61 ? (v19 = v12 == *(&v61 + 1)) : (v19 = 0), !v19))
    {
      v20 = objc_msgSend_tableResolverForTableUID_(*(a1 + 48), v12, &v61, v14);
      v21 = *(*(a1 + 80) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }

    v23 = *(*(*(a1 + 80) + 8) + 40);
    if (v23)
    {
      v24 = objc_msgSend_tableName(v23, v12, v18, v14);
    }

    else
    {
      v24 = 0;
    }

    v25 = objc_msgSend_documentLocale(*(a1 + 48), v12, v18, v14);
    v28 = v25;
    v29 = *(a1 + 56);
    if (!v29 || v24 && objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v25, v26, v29, v24))
    {
      v59._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v59._coordsForOwnerUid.__tree_.__size_ = 0;
      v59._coordsForOwnerUid.__tree_.__begin_node_ = &v59._coordsForOwnerUid.__tree_.__end_node_;
      v30 = *(a1 + 64);
      v31 = *(a1 + 40);
      IsComplete = objc_msgSend_referenceIsComplete(*(a1 + 32), v26, v29, v27);
      v34 = objc_msgSend_subsetForReferenceName_limitToTable_includePrefixes_(v31, v33, v30, &v61, IsComplete ^ 1u);
      if (objc_msgSend_referenceIsComplete(*(a1 + 32), v35, v36, v37))
      {
        if (v34)
        {
          objc_msgSend_headerCellsExactlyMatching_(v34, v38, *(a1 + 64), v40);
        }

        else
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
        }
      }

      else if (objc_msgSend_length(*(a1 + 64), v38, v39, v40))
      {
        if (v34)
        {
          objc_msgSend_headerCellsMatchingPrefix_(v34, v41, *(a1 + 64), v42);
        }

        else
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
        }
      }

      else
      {
        v43 = *(a1 + 40);
        if (v43)
        {
          objc_msgSend_allHeaderCellRefsLimitedToTable_(v43, v41, &v61, v42);
        }

        else
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
        }
      }

      TSCECellRefSet::operator=(&v59, &v56);
      sub_22107C800(&v56, v57);
      if ((TSCECellRefSet::isEmpty(&v59) & 1) == 0)
      {
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3321888768;
        v44[2] = sub_221095430;
        v44[3] = &unk_2834A15B8;
        v45 = *(a1 + 32);
        v49 = a3;
        v46 = *(a1 + 40);
        v50 = v60;
        v51 = v61;
        TSCECellRefSet::TSCECellRefSet(&v52, (a1 + 88));
        v53 = *(a1 + 112);
        v47 = *(a1 + 72);
        v54 = a2;
        v55 = *(a1 + 128);
        v48 = *(a1 + 64);
        TSCECellRefSet::enumerateCellRefsUsingBlock(&v59, v44);

        sub_22107C800(&v52, v52._coordsForOwnerUid.__tree_.__end_node_.__left_);
      }

      sub_22107C800(&v59, v59._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }

    objc_autoreleasePoolPop(v15);
  }
}

void sub_22109538C(_Unwind_Exception *a1)
{
  sub_22107C800(v4 - 136, *(v4 - 128));

  _Unwind_Resume(a1);
}

void sub_221095430(uint64_t a1, const TSCECellRef *a2, _BYTE *a3, uint64_t a4)
{
  v7 = objc_msgSend_abortObject(*(a1 + 32), a2, a3, a4);
  isAborted = objc_msgSend_isAborted(v7, v8, v9, v10);

  if (isAborted)
  {
    *a3 = 1;
    **(a1 + 64) = 1;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 40);
  if (v15)
  {
    objc_msgSend_spanningRangeForHeaderCell_(v15, v12, a2, v13);
    v16 = v125;
  }

  else
  {
    v16 = 0;
    v124 = 0u;
    v125 = 0u;
  }

  if (*(a1 + 88) != __PAIR128__(*(&v125 + 1), v16) || TSCECellRefSet::containsCellRef((a1 + 104), a2) && sub_221494F18(*(a1 + 72), *(a1 + 80), v124.i64[0], v124.i64[1]) != -1)
  {
    goto LABEL_149;
  }

  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  v19 = v124.u32[2];
  v20 = v124.i32[0];
  v21 = v18 & 0xFFFF00000000;
  v22 = v17 & 0xFFFF00000000;
  if (v18 != 0x7FFFFFFFLL && v21 == 0x7FFF00000000 && v22 == 0x7FFF00000000)
  {
    v23 = 0;
    v24 = v17 != 0x7FFFFFFF;
  }

  else
  {
    v24 = 0;
    if (v18 != 0x7FFFFFFFLL || v21 == 0x7FFF00000000)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0;
      if (v22 != 0x7FFF00000000)
      {
        v24 = 0;
        v23 = v17 == 0x7FFFFFFF;
      }
    }
  }

  v25 = v124.i64[0] & 0xFFFF00000000;
  v26 = v124.i64[1] & 0xFFFF00000000;
  v27 = v124.u32[0];
  if (v124.u32[0] != 0x7FFFFFFFLL && v25 == 0x7FFF00000000 && v26 == 0x7FFF00000000)
  {
    v28 = 0;
    v29 = v124.i32[2] != 0x7FFFFFFF;
  }

  else
  {
    v29 = 0;
    if (v124.u32[0] != 0x7FFFFFFFLL || v25 == 0x7FFF00000000)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      if (v26 != 0x7FFF00000000)
      {
        v29 = 0;
        v28 = v124.i32[2] == 0x7FFFFFFF;
      }
    }
  }

  if (v24)
  {
    v21 = 0;
    v22 = 0x3E700000000;
    if (!v29)
    {
LABEL_29:
      if (v28)
      {
        v20 = 0;
        v19 = 999999;
      }

      v27 = v20;
      goto LABEL_36;
    }
  }

  else
  {
    if (v23)
    {
      LODWORD(v18) = 0;
      LODWORD(v17) = 999999;
    }

    if (!v29)
    {
      goto LABEL_29;
    }
  }

  v25 = 0;
  v26 = 0x3E700000000;
LABEL_36:
  v30 = 0x7FFF7FFFFFFFLL;
  v31 = 0x7FFFFFFFLL;
  if (v18 > v19 || v20 > v17)
  {
    v33 = 0x7FFF00000000;
  }

  else
  {
    v32 = HIDWORD(v21);
    v33 = 0x7FFF00000000;
    v31 = 0x7FFFFFFFLL;
    if (HIDWORD(v21) <= HIDWORD(v26))
    {
      v34 = HIDWORD(v22);
      v35 = HIDWORD(v25);
      if (HIDWORD(v25) <= HIDWORD(v22))
      {
        v31 = 0x7FFFFFFFLL;
        if (v18 != 0x7FFFFFFFLL && v21 != 0x7FFF00000000)
        {
          v31 = 0x7FFFFFFFLL;
          if (v17 != 0x7FFFFFFFLL && v22 != 0x7FFF00000000)
          {
            v31 = 0x7FFFFFFFLL;
            if (v34 >= v32 && v18 <= v17)
            {
              v31 = 0x7FFFFFFFLL;
              if (v27 != 0x7FFFFFFF && v25 != 0x7FFF00000000)
              {
                v31 = 0x7FFFFFFFLL;
                if (v19 != 0x7FFFFFFFLL && v26 != 0x7FFF00000000)
                {
                  v31 = 0x7FFFFFFFLL;
                  if (v35 <= HIDWORD(v26) && v20 <= v19)
                  {
                    if (v32 <= v35)
                    {
                      v36 = HIDWORD(v25);
                    }

                    else
                    {
                      v36 = HIDWORD(v21);
                    }

                    if (v18 <= v20)
                    {
                      v18 = v20;
                    }

                    else
                    {
                      v18 = v18;
                    }

                    v37 = v36 << 32;
                    if (v34 >= HIDWORD(v26))
                    {
                      v38 = HIDWORD(v26);
                    }

                    else
                    {
                      v38 = HIDWORD(v22);
                    }

                    if (v17 >= v19)
                    {
                      v17 = v19;
                    }

                    else
                    {
                      v17 = v17;
                    }

                    v39 = v38 << 32;
                    if (v24 && v29)
                    {
                      v39 = 0x7FFF00000000;
                      v33 = 0x7FFF00000000;
                    }

                    else
                    {
                      v33 = v37;
                    }

                    if (v23 && v28)
                    {
                      v17 = 0x7FFFFFFFLL;
                    }

                    v30 = v39 | v17;
                    if (v23 && v28)
                    {
                      v31 = 0x7FFFFFFFLL;
                    }

                    else
                    {
                      v31 = v18;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v40 = v31 | v33;
  v121 = v31 | v33;
  v122 = v30;
  v123 = *(a1 + 88);
  v41 = HIDWORD(v33);
  v42 = HIDWORD(v30);
  v43 = v33 & 0xFFFF00000000;
  if ((v33 & 0xFFFF00000000) == 0x7FFF00000000 || v31 == 0x7FFFFFFF)
  {
    v44 = v30 & 0xFFFF00000000;
  }

  else
  {
    v44 = v30 & 0xFFFF00000000;
    if (v30 != 0x7FFFFFFF && v44 != 0x7FFF00000000 && v41 <= v42 && v40 <= v30)
    {
      goto LABEL_92;
    }
  }

  if (v31 != 0x7FFFFFFF && v43 == 0x7FFF00000000 && v44 == 0x7FFF00000000)
  {
    if (v30 == 0x7FFFFFFF || v40 > v30)
    {
      goto LABEL_149;
    }

LABEL_92:
    v45 = objc_msgSend_referencesMatchingInputAsPrefix(*(a1 + 32), v31, 0x7FFF00000000, v28);
    if (v45 || v123 == *(a1 + 128))
    {
    }

    else if (objc_msgSend_count(*(a1 + 48), v46, v47, v48) >= 2)
    {
      goto LABEL_149;
    }

    v51 = objc_msgSend_stringInHeaderCell_(*(a1 + 40), v49, a2, v50);
    if (objc_msgSend_filterColons(*(a1 + 32), v52, v53, v54) && objc_msgSend_rangeOfString_(v51, v55, @":", v56) != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_148;
    }

    v118 = v51;
    if (v121 == 0x7FFFFFFF || (v121 & 0xFFFF00000000) == 0x7FFF00000000 || v122 == 0x7FFFFFFF || (v122 & 0xFFFF00000000) == 0x7FFF00000000 || WORD2(v121) > WORD2(v122) || v121 > v122 || WORD2(v121) != WORD2(v122) || v121 != v122)
    {
      v63 = [TSCEAnyReference alloc];
      v60 = objc_msgSend_initWithRangeRef_(v63, v64, &v121, v65);
    }

    else
    {
      v57 = [TSCEAnyReference alloc];
      v119 = v121;
      v120 = v123;
      v60 = objc_msgSend_initWithCellRef_(v57, v58, &v119, v59);
    }

    v66 = v60;
    objc_msgSend_setWasConstructedViaNames_(v60, v61, 1, v62);
    if (*(a1 + 152) == 1)
    {
      v69 = *(a1 + 72);
      v70.i64[0] = 0xFFFFFFFFLL;
      v70.i64[1] = 0xFFFFFFFFLL;
      v71 = vandq_s8(v69, v70);
      v72.i64[0] = 0xFFFF00000000;
      v72.i64[1] = 0xFFFF00000000;
      *v69.i8 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v69, v72), vdupq_n_s64(0x7FFF00000000uLL))));
      *v69.i8 = vuzp1_s16(*v69.i8, *v69.i8);
      v69.i32[1] = vuzp1_s16(*&v69, vmovn_s64(vceqq_s64(v71, vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
      if (vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(*v69.i8, 0xFuLL)), 0x8000400020001)) == 15)
      {
        v73 = 5;
      }

      else
      {
        v73 = 10;
      }
    }

    else
    {
      v73 = 0;
    }

    if (*(a1 + 153) == 1)
    {
      v74.i64[0] = 0xFFFFFFFFLL;
      v74.i64[1] = 0xFFFFFFFFLL;
      v75.i64[0] = 0xFFFF00000000;
      v75.i64[1] = 0xFFFF00000000;
      v76 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v124, v75), vdupq_n_s64(0x7FFF00000000uLL))));
      v77 = vuzp1_s16(v76, v76);
      v77.i32[1] = vuzp1_s16(v77, vmovn_s64(vceqq_s64(vandq_s8(v124, v74), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
      if (vminv_u16(v77))
      {
        v78 = 5;
      }

      else
      {
        v78 = 10;
      }

      v73 |= v78;
    }

    objc_msgSend_setPreserveFlags_(v66, v67, v73, v68);
    v81 = objc_msgSend_stringInHeaderCell_(*(a1 + 40), v79, *(a1 + 144), v80);
    objc_msgSend_filterColons(*(a1 + 32), v82, v83, v84);
    v87 = @"$";
    if (*(a1 + 152))
    {
      v88 = @"$";
    }

    else
    {
      v88 = &stru_2834BADA0;
    }

    if (*(a1 + 153))
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v85, @"%@%@ %@%@", v86, v88, v81, @"$", v51);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v85, @"%@%@ %@%@", v86, v88, v81, &stru_2834BADA0, v51);
    }
    v89 = ;
    objc_msgSend_setOverrideText_(v66, v90, v89, v91);

    v95 = MEMORY[0x277CCACA8];
    if (*(a1 + 152))
    {
      v96 = @"$";
    }

    else
    {
      v96 = &stru_2834BADA0;
    }

    v97 = *(a1 + 154);
    v98 = v81;
    if (v97 == 1)
    {
      v98 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapes(v81, v92, v93, v94);
    }

    v102 = objc_msgSend_stringWithFormat_(v95, v92, @"%@%@", v94, v96, v98);
    if (v97)
    {
    }

    if (*(a1 + 155) == 1)
    {
      v103 = MEMORY[0x277CCACA8];
      if (!*(a1 + 153))
      {
        v87 = &stru_2834BADA0;
      }

LABEL_135:
      v104 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapes(v118, v99, v100, v101);
      v105 = 1;
      objc_msgSend_stringWithFormat_(v103, v106, @"%@%@", v107, v87, v104);
      v112 = LABEL_145:;
      if (v105)
      {
      }

      v113 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v110, @"%@ %@", v111, v102, v112);
      objc_msgSend_setOverrideTextAsTyped_(v66, v114, v113, v115);

      objc_msgSend_addObject_(*(a1 + 48), v116, v66, v117);
      v51 = v118;
LABEL_148:

      goto LABEL_149;
    }

    if (objc_msgSend_length(*(a1 + 56), v99, v100, v101))
    {
      v105 = 0;
      v103 = MEMORY[0x277CCACA8];
      if (!*(a1 + 153))
      {
        v87 = &stru_2834BADA0;
      }
    }

    else
    {
      v109 = objc_msgSend_tsce_needsReferenceSingleQuoteEscaping(v118, v99, v108, v101);
      v103 = MEMORY[0x277CCACA8];
      if (!*(a1 + 153))
      {
        v87 = &stru_2834BADA0;
      }

      if (v109)
      {
        goto LABEL_135;
      }

      v105 = 0;
    }

    v104 = v118;
    objc_msgSend_stringWithFormat_(v103, v99, @"%@%@", v101, v87, v118);
    goto LABEL_145;
  }

  if (v31 == 0x7FFFFFFF && v43 != 0x7FFF00000000 && v44 != 0x7FFF00000000 && v30 == 0x7FFFFFFF && v41 <= v42)
  {
    goto LABEL_92;
  }

LABEL_149:
  objc_autoreleasePoolPop(v14);
}

void sub_221098F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_221099028(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_221099038(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_spanningRangeForHeaderCell_(v5, a2, a2, a4);
    v8 = *&v29[4];
    v9 = *v29 != 0x7FFFFFFF || (*v29 & 0xFFFF00000000) == 0x7FFF00000000;
    if (!v9 && v30 == *&v29[4])
    {
      if (*(a1 + 40) && (v31 != *(a1 + 64) || v31 == 0))
      {
        if (*(a1 + 64))
        {
          return;
        }

        if (*(a1 + 72))
        {
          return;
        }

        v21 = objc_msgSend_resolverForTableUID_(*(a1 + 48), v7, v31, *(&v31 + 1));
        v25 = objc_msgSend_tableName(v21, v22, v23, v24);
        isEqualToString = objc_msgSend_isEqualToString_(v25, v26, *(a1 + 40), v27);

        if (!isEqualToString)
        {
          return;
        }

        v8 = *&v29[4];
      }

      v10 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v7, v31, *(&v31 + 1), *(a1 + 48));
      v14 = objc_msgSend_translator(v10, v11, v12, v13);
      v17 = objc_msgSend_columnUIDForBaseColumnIndex_(v14, v15, v8, v16);
      v18 = *(*(a1 + 56) + 8);
      *(v18 + 48) = v17;
      *(v18 + 56) = v19;

      v20 = *(*(a1 + 56) + 8);
      if (*(v20 + 48) || *(v20 + 56))
      {
        *a3 = 1;
      }
    }
  }
}

void sub_22109A8E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_22109AB0C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  objc_opt_class();
  v6 = TSUDynamicCast();
  v10 = v6;
  if (v6)
  {
    v11 = *(*(a1 + 32) + 264);
    if (v11 == objc_msgSend_presetID(v6, v7, v8, v9))
    {
      objc_msgSend_setTableStylePreset_(*(a1 + 32), v12, v10, v13);
      *a4 = 1;
    }
  }
}

void sub_22109B6E8(uint64_t a1)
{
  *(*(a1 + 32) + 744) = *(a1 + 88);
  objc_storeStrong((*(a1 + 32) + 680), *(a1 + 40));
  *(*(a1 + 32) + 288) = *(a1 + 48);
  v5 = objc_msgSend_documentRoot(*(a1 + 56), v2, v3, v4);
  v9 = objc_msgSend_calculationEngine(v5, v6, v7, v8);
  *(*(a1 + 32) + 216) = v9;

  *(*(a1 + 32) + 112) = 0;
  *(*(a1 + 32) + 116) = 0;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  *(*(a1 + 32) + 184) = 0;
  *(*(a1 + 32) + 188) = 0;
  *(*(a1 + 32) + 192) = 0;
  *(*(a1 + 32) + 170) = 0;
  *(*(a1 + 32) + 171) = 0;
  *(*(a1 + 32) + 232) = 0x4036000000000000;
  *(*(a1 + 32) + 240) = 0x4058800000000000;
  v12 = [TSTTableDataStore alloc];
  v15 = objc_msgSend_initWithOwner_(v12, v13, *(a1 + 32), v14);
  v16 = *(a1 + 32);
  v17 = *(v16 + 224);
  *(v16 + 224) = v15;

  objc_msgSend_setStorageParentToInfo_(*(*(a1 + 32) + 224), v18, *(a1 + 48), v19);
  v23 = objc_msgSend_unnamedTableString(*(a1 + 32), v20, v21, v22);
  v24 = *(a1 + 32);
  v25 = *(v24 + 248);
  *(v24 + 248) = v23;

  *(*(a1 + 32) + 172) = objc_msgSend_tableNameEnabledInNewTables(*(a1 + 80), v26, v27, v28);
  *(*(a1 + 32) + 174) = 0;
  *(*(a1 + 32) + 175) = 0;
  v29 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  v30 = *(a1 + 32);
  v31 = *(v30 + 584);
  *(v30 + 584) = v29;

  v32 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  v33 = *(a1 + 32);
  v34 = *(v33 + 592);
  *(v33 + 592) = v32;

  v35 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  v36 = *(a1 + 32);
  v37 = *(v36 + 600);
  *(v36 + 600) = v35;

  v38 = objc_alloc_init(TSTCellDictionary);
  v39 = *(a1 + 32);
  v40 = *(v39 + 568);
  *(v39 + 568) = v38;

  v41 = objc_alloc_init(TSTCellDictionary);
  v42 = *(a1 + 32);
  v43 = *(v42 + 576);
  *(v42 + 576) = v41;

  v44 = [TSTConditionalStyleFormulaOwner alloc];
  v47 = objc_msgSend_initWithTableModel_(v44, v45, *(a1 + 32), v46);
  v48 = *(a1 + 32);
  v49 = *(v48 + 608);
  *(v48 + 608) = v47;

  v50 = [TSTMergeOwner alloc];
  v53 = objc_msgSend_initWithTableModel_(v50, v51, *(a1 + 32), v52);
  v54 = *(a1 + 32);
  v55 = *(v54 + 616);
  *(v54 + 616) = v53;

  v56 = [TSTCategoryOwner alloc];
  v59 = objc_msgSend_initWithBaseTableModel_(v56, v57, *(a1 + 32), v58);
  v60 = *(a1 + 32);
  v61 = *(v60 + 624);
  *(v60 + 624) = v59;

  v62 = [TSTHiddenStatesOwner alloc];
  v65 = objc_msgSend_initWithBaseTable_(v62, v63, *(a1 + 32), v64);
  v66 = *(a1 + 32);
  v67 = *(v66 + 640);
  *(v66 + 640) = v65;

  v68 = [TSTSortRuleReferenceTracker alloc];
  v70 = objc_msgSend_initWithTableInfo_baseTableUID_context_(v68, v69, *(a1 + 48), *(a1 + 32) + 744, *(a1 + 56));
  v71 = *(a1 + 32);
  v72 = *(v71 + 672);
  *(v71 + 672) = v70;

  v73 = [TSTPencilAnnotationOwner alloc];
  v76 = objc_msgSend_initWithTableModel_(v73, v74, *(a1 + 32), v75);
  v77 = *(a1 + 32);
  v78 = *(v77 + 736);
  *(v77 + 736) = v76;

  v79 = [TSCEHauntedOwner alloc];
  v82 = objc_msgSend_initWithBaseTableUID_(v79, v80, *(a1 + 32) + 744, v81);
  v83 = *(a1 + 32);
  v84 = *(v83 + 648);
  *(v83 + 648) = v82;

  v85 = [TSCESpillOwner alloc];
  v88 = objc_msgSend_initWithBaseTableUID_(v85, v86, *(a1 + 32) + 744, v87);
  v89 = *(a1 + 32);
  v90 = *(v89 + 656);
  *(v89 + 656) = v88;

  v91 = [TSTHiddenStateFormulaOwner alloc];
  v92 = *(a1 + 56);
  v137 = sub_2212C4930((*(a1 + 32) + 744), 4, v93, v94);
  v138 = v95;
  v96 = objc_msgSend_initWithContext_ownerUID_(v91, v95, v92, &v137);
  v97 = *(a1 + 32);
  v98 = *(v97 + 64);
  *(v97 + 64) = v96;

  v99 = [TSTHiddenStateFormulaOwner alloc];
  v100 = *(a1 + 56);
  v137 = sub_2212C4930((*(a1 + 32) + 744), 0xB, v101, v102);
  v138 = v103;
  v104 = objc_msgSend_initWithContext_ownerUID_(v99, v103, v100, &v137);
  v105 = *(a1 + 32);
  v106 = *(v105 + 72);
  *(v105 + 72) = v104;

  *(*(a1 + 32) + 200) = 0x300020000000ALL;
  *(*(a1 + 32) + 208) = 0x300020000000ALL;
  *(*(a1 + 32) + 178) = 0;
  v107 = [TSTTableSortOrder alloc];
  v109 = objc_msgSend_initWithRules_type_(v107, v108, MEMORY[0x277CBEBF8], 0);
  v110 = *(a1 + 32);
  v111 = *(v110 + 664);
  *(v110 + 664) = v109;

  v112 = [TSTStrokeSidecar alloc];
  v115 = objc_msgSend_initWithTableModel_(v112, v113, *(a1 + 32), v114);
  v116 = *(a1 + 32);
  v117 = *(v116 + 80);
  *(v116 + 80) = v115;

  if (!(v11 | v10))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Caller must provide preset or styles or both.", "[TSTTableModel initWithContext:tableUID:columnRowUIDMap:styles:stylePreset:tableInfo:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", 636);
    v129 = MEMORY[0x277D81150];
    v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, "[TSTTableModel initWithContext:tableUID:columnRowUIDMap:styles:stylePreset:tableInfo:]_block_invoke", v131);
    v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v133, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v134);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v129, v136, v132, v135, 636, 1, "Caller must provide preset or styles or both.");

    TSUCrashBreakpoint();
    abort();
  }

  if (!v10)
  {
    v10 = objc_msgSend_styleNetwork(v11, v118, v119, v120);
  }

  objc_msgSend_setTableStylePreset_(*(a1 + 32), v118, v11, v120);
  objc_msgSend_setStyleNetwork_(*(a1 + 32), v121, v10, v122);
  if (objc_msgSend_tableSizeClass(*(a1 + 32), v123, v124, v125) >= 2)
  {
    objc_msgSend_setShouldUseWideRows_(*(*(a1 + 32) + 224), v126, 1, v128);
  }

  *(*(a1 + 32) + 179) = 0;
  objc_msgSend_verifySubOwnerUIDsUsed(*(a1 + 32), v126, v127, v128);
}

void sub_22109C3F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *(*(a1 + 32) + 288) = *(a1 + 40);
  v5 = objc_msgSend_tableStylePreset(*(a1 + 48), a2, a3, a4);

  if (!v5)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 272);
    *(v9 + 272) = 0;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v15 = objc_msgSend_fromTableUID(v11, v6, v7, v8);
    v16 = *(a1 + 48);
    if (v15 | v12)
    {
      v17 = objc_msgSend_fromTableUID(v16, v12, v13, v14);
    }

    else
    {
      v17 = objc_msgSend_tableUID(v16, v12, v13, v14);
    }

    v21 = (*(a1 + 32) + 760);
    *v21 = v17;
    v21[1] = v18;
    v25 = objc_msgSend_fromGroupByUID(*(a1 + 48), v18, v19, v20);
    v26 = *(a1 + 48);
    if (v25 | v22)
    {
      v27 = objc_msgSend_fromGroupByUID(v26, v22, v23, v24);
      v28 = (*(a1 + 32) + 776);
      *v28 = v27;
      v28[1] = v6;
    }

    else
    {
      v29 = objc_msgSend_tableInfo(v26, v22, v23, v24);
      v33 = objc_msgSend_groupByUid(v29, v30, v31, v32);
      v34 = (*(a1 + 32) + 776);
      *v34 = v33;
      v34[1] = v35;
    }
  }

  v36 = *(a1 + 80);
  *(*(a1 + 32) + 174) = objc_msgSend_repeatingHeaderRowsEnabled(*(a1 + 48), v6, v7, v8);
  *(*(a1 + 32) + 175) = objc_msgSend_repeatingHeaderColumnsEnabled(*(a1 + 48), v37, v38, v39);
  *(*(a1 + 32) + 170) = objc_msgSend_headerRowsFrozen(*(a1 + 48), v40, v41, v42);
  *(*(a1 + 32) + 171) = objc_msgSend_headerColumnsFrozen(*(a1 + 48), v43, v44, v45);
  v254.origin = objc_msgSend_headerRowRange(*(a1 + 48), v46, v47, v48);
  v254.size = v49;
  sub_2210AFE68(&v254.origin, (a1 + 80));
  *(*(a1 + 32) + 188) = HIDWORD(v50) - (*(a1 + 92) <= HIDWORD(v50));
  v254.origin = objc_msgSend_headerColumnRange(*(a1 + 48), v50, v51, v52);
  v254.size = v53;
  sub_2210AFE68(&v254.origin, (a1 + 80));
  *(*(a1 + 32) + 184) = v54 - (*(a1 + 88) <= v54);
  v254.origin = objc_msgSend_footerRowRange(*(a1 + 48), v54, v55, v56);
  v254.size = v57;
  sub_2210AFE68(&v254.origin, (a1 + 80));
  *(*(a1 + 32) + 192) = HIDWORD(v58) - (*(a1 + 92) <= HIDWORD(v58));
  *(*(a1 + 32) + 172) = objc_msgSend_tableNameEnabled(*(a1 + 48), v58, v59, v60);
  v61 = [TSTStrokeSidecar alloc];
  v64 = objc_msgSend_initWithTableModel_(v61, v62, *(a1 + 32), v63);
  v65 = *(a1 + 32);
  v66 = *(v65 + 80);
  *(v65 + 80) = v64;

  if (*(a1 + 96) == 1)
  {
    v70 = *(a1 + 32);
    v71 = objc_msgSend_tableName(*(a1 + 48), v67, v68, v69);
    objc_msgSend_setTableName_(v70, v72, v71, v73);

    v74 = *(a1 + 32);
    v78 = objc_msgSend_tableNameBorderEnabled(*(a1 + 48), v75, v76, v77);
    objc_msgSend_setTableNameBorderEnabled_(v74, v79, v78, v80);
    v81 = *(a1 + 32);
    objc_msgSend_tableNameHeight(*(a1 + 48), v82, v83, v84);
    objc_msgSend_setTableNameHeight_(v81, v85, v86, v87);
    v88 = *(a1 + 32);
    v92 = objc_msgSend_styleApplyClearsAll(*(a1 + 48), v89, v90, v91);
    objc_msgSend_setStyleApplyClearsAll_(v88, v93, v92, v94);
  }

  v95 = *(a1 + 32);
  objc_msgSend_defaultRowHeight(*(a1 + 48), v67, v68, v69);
  objc_msgSend_setDefaultRowHeight_(v95, v96, v97, v98);
  v99 = *(a1 + 32);
  objc_msgSend_defaultColumnWidth(*(a1 + 48), v100, v101, v102);
  objc_msgSend_setDefaultColumnWidth_(v99, v103, v104, v105);
  v276[0] = MEMORY[0x277D85DD0];
  v276[1] = 3221225472;
  v276[2] = sub_22109D160;
  v276[3] = &unk_27845DBE8;
  v277 = *(a1 + 48);
  v278 = *(a1 + 32);
  v279 = v36;
  sub_22109D0C8((a1 + 80), v276);
  v272[0] = MEMORY[0x277D85DD0];
  v272[1] = 3221225472;
  v272[2] = sub_22109D254;
  v272[3] = &unk_27845DC10;
  v273 = *(a1 + 48);
  v274 = *(a1 + 32);
  v275 = v36;
  sub_22109D1B8(a1 + 80, v272);
  if (*(a1 + 96) == 1)
  {
    v109 = objc_msgSend_sortOrder(*(a1 + 48), v106, v107, v108);
    v113 = objc_msgSend_copy(v109, v110, v111, v112);
    v114 = *(a1 + 32);
    v115 = *(v114 + 664);
    *(v114 + 664) = v113;
  }

  v116 = objc_msgSend_mergeOwner(*(a1 + 48), v106, v107, v108);
  v119 = v116;
  if (v116)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v116, v117, *(a1 + 56), v118);
  }

  else
  {
    v269 = 0;
    v270 = 0;
    v271 = 0;
  }

  v123 = v269;
  v124 = v270;
  while (v123 != v124)
  {
    v254.origin = 0;
    v254.size = 0;
    v125 = v123[1];
    v254.origin = ((*v123 - (*(a1 + 80) & 0xFFFF00000000)) & 0xFFFF00000000 | (*v123 - *(a1 + 80)));
    v254.size = v125;
    v246 = objc_msgSend_tableAreaForBaseCellCoord_(*(a1 + 32), v120, *&v254.origin, v122);
    sub_2210F73F8(&v246);
    v126 = *(a1 + 32);
    v127 = TSUCellRect::bottomRight(&v254);
    v260 = objc_msgSend_tableAreaForBaseCellCoord_(v126, v128, v127, v129);
    sub_2210F73F8(&v260);
    if (v246 != v260)
    {
      v251.origin = objc_msgSend_headerRowRange(*(a1 + 32), v130, v131, v132);
      v251.size = v133;
      origin = v254.origin;
      if (TSUCellRect::contains(&v251, origin))
      {
        *(*(a1 + 32) + 188) = 0;
      }

      v251.origin = objc_msgSend_headerColumnRange(*(a1 + 32), v135, v136, v137);
      v251.size = v138;
      v139 = v254.origin;
      if (TSUCellRect::contains(&v251, v139))
      {
        *(*(a1 + 32) + 184) = 0;
      }

      if (v260 == 4)
      {
        *(*(a1 + 32) + 192) = 0;
      }
    }

    v140 = objc_msgSend_mergeOwner(*(a1 + 32), v130, v131, v132);
    objc_msgSend_insertBaseMergeRange_(v140, v141, *&v254.origin, *&v254.size);

    v123 += 2;
  }

  v142 = objc_msgSend_pencilAnnotationOwner(*(a1 + 48), v120, v121, v122);
  v146 = objc_msgSend_formulaStore(v142, v143, v144, v145);
  v147 = *(a1 + 56);
  v264[0] = MEMORY[0x277D85DD0];
  v264[1] = 3221225472;
  v264[2] = sub_22109D2B0;
  v264[3] = &unk_27845DC38;
  v148 = v146;
  v265 = v148;
  v268 = *(a1 + 80);
  v266 = *(a1 + 32);
  v267 = *(a1 + 40);
  v220 = v148;
  objc_msgSend_enumerateAnnotationsAndFormulasContainedInRegion_withBlock_(v142, v149, v147, v264);
  v156 = objc_msgSend_calcEngine(*(a1 + 48), v150, v151, v152);
  if (!v156)
  {
    v157 = objc_msgSend_documentRoot(*(a1 + 48), v153, v154, v155);
    v156 = objc_msgSend_calculationEngine(v157, v158, v159, v160);
  }

  v263.origin = 0;
  v263.size = 0;
  v263.origin = objc_msgSend_boundingCellRange(*(a1 + 56), v153, v154, v155);
  v263.size = v161;
  v164 = objc_msgSend_tableInfo(*(a1 + 48), v161, v162, v163);
  v165 = TSUCellRect::columns(&v263);
  if (v164)
  {
    objc_msgSend_columnUIDsForColumnRange_(v164, v166, v165, v166);
  }

  else
  {
    v260 = 0;
    v261 = 0;
    v262 = 0;
  }

  v170 = objc_msgSend_tableInfo(*(a1 + 48), v167, v168, v169);
  v171 = TSUCellRect::rows(&v263);
  if (v170)
  {
    objc_msgSend_rowUIDsForRowRange_(v170, v172, v171, v172);
  }

  else
  {
    v257 = 0;
    v258 = 0;
    v259 = 0;
  }

  sub_2210BBBE8(&v254, &v260, &v257);
  *__p = 0u;
  v253 = 0u;
  v251 = 0;
  v173 = [TSTFormulaRewriteSpec alloc];
  v246 = objc_msgSend_tableUID(*(a1 + 48), v174, v175, v176);
  v247 = v177;
  v250[0] = objc_msgSend_tableUID(*(a1 + 32), v177, v178, v179);
  v250[1] = v180;
  v183 = objc_msgSend_tableInfo(*(a1 + 48), v180, v181, v182);
  v187 = objc_msgSend_translator(v183, v184, v185, v186);
  v191 = objc_msgSend_coordinateMapper(v187, v188, v189, v190);
  v193 = objc_msgSend_initForCategorizedTableBaseToChromeRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_(v173, v192, &v246, &v254, v250, &v251, v191);

  v246 = 0;
  v247 = &v246;
  v248 = 0x2020000000;
  v249 = 0;
  v194 = *(a1 + 48);
  v195 = *(a1 + 56);
  v237[0] = MEMORY[0x277D85DD0];
  v237[1] = 3221225472;
  v237[2] = sub_22109D470;
  v237[3] = &unk_27845DC88;
  v245 = v36;
  v238 = *(a1 + 64);
  v196 = *(a1 + 32);
  v197 = *(a1 + 72);
  v239 = v196;
  v244 = v197;
  v240 = *(a1 + 48);
  v198 = v156;
  v241 = v198;
  v199 = v193;
  v242 = v199;
  v243 = &v246;
  objc_msgSend_p_iterateDataStoreCellsInRegion_searchFlags_usingBlock_(v194, v200, v195, 66058240, v237);
  v204 = v247[3];
  if (v204)
  {
    MEMORY[0x223DA1450](v204, 0x1080C405B0C81BELL);
  }

  v205 = objc_msgSend_boundingTopLeftCellID(*(a1 + 56), v201, v202, v203);
  v209 = objc_msgSend_boundingTopLeftCellID(*(a1 + 56), v206, v207, v208);
  v213 = objc_msgSend_strokeSidecar(*(a1 + 48), v210, v211, v212);
  v214 = HIDWORD(v209);
  v215 = *(a1 + 56);
  v233[0] = MEMORY[0x277D85DD0];
  v233[1] = 3221225472;
  v233[2] = sub_22109DAE8;
  v233[3] = &unk_27845DCB0;
  v235 = v205;
  v236 = v214;
  v234 = *(a1 + 32);
  v229[0] = MEMORY[0x277D85DD0];
  v229[1] = 3221225472;
  v229[2] = sub_22109DB1C;
  v229[3] = &unk_27845DCB0;
  v231 = v205;
  v232 = v214;
  v230 = *(a1 + 32);
  v225[0] = MEMORY[0x277D85DD0];
  v225[1] = 3221225472;
  v225[2] = sub_22109DB50;
  v225[3] = &unk_27845DCD8;
  v228 = v214;
  v227 = v205;
  v226 = *(a1 + 32);
  v221[0] = MEMORY[0x277D85DD0];
  v221[1] = 3221225472;
  v221[2] = sub_22109DB84;
  v221[3] = &unk_27845DCD8;
  v224 = v214;
  v223 = v205;
  v222 = *(a1 + 32);
  objc_msgSend_enumerateStrokesInRegion_usingTopStrokeBlock_usingBottomStrokeBlock_usingLeftStrokeBlock_usingRightStrokeBlock_(v213, v216, v215, v233, v229, v225, v221);

  objc_msgSend_flattenStrokeOrder(*(*(a1 + 32) + 80), v217, v218, v219);
  _Block_object_dispose(&v246, 8);

  if (__p[1])
  {
    *&v253 = __p[1];
    operator delete(__p[1]);
  }

  if (v251.origin)
  {
    v251.size = v251.origin;
    operator delete(*&v251.origin);
  }

  if (v255)
  {
    v256 = v255;
    operator delete(v255);
  }

  if (v254.origin)
  {
    v254.size = v254.origin;
    operator delete(*&v254.origin);
  }

  if (v257)
  {
    v258 = v257;
    operator delete(v257);
  }

  if (v260)
  {
    v261 = v260;
    operator delete(v260);
  }

  if (v269)
  {
    v270 = v269;
    operator delete(v269);
  }
}

void sub_22109D0C8(_DWORD *a1, void *a2)
{
  v4 = a2;
  if (a1[3])
  {
    v3 = 0;
    do
    {
      v4[2](v4, v3 + *a1);
      ++v3;
    }

    while (v3 < a1[3]);
  }
}

void *sub_22109D160(uint64_t a1, const char *a2)
{
  v2 = a2;
  v7 = 0;
  result = objc_msgSend_heightOfRowAtIndex_isDefault_(*(a1 + 32), a2, a2, &v7);
  if ((v7 & 1) == 0)
  {
    return objc_msgSend_setHeight_ofRowAtIndex_(*(a1 + 40), v5, (v2 - *(a1 + 48)), v6);
  }

  return result;
}

void sub_22109D1B8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
      v4[2](v4, (*(a1 + 4) + v3++));
    }

    while (*(a1 + 8) > v3);
  }
}

void *sub_22109D254(uint64_t a1, const char *a2)
{
  v2 = a2;
  v7 = 0;
  result = objc_msgSend_widthOfColumnAtIndex_isDefault_(*(a1 + 32), a2, a2, &v7);
  if ((v7 & 1) == 0)
  {
    return objc_msgSend_setWidth_ofColumnAtIndex_(*(a1 + 40), v5, (v2 - *(a1 + 52)), v6);
  }

  return result;
}

void sub_22109D2B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v7 = objc_msgSend_rangeFromFormulaAtIndex_useBoundingRange_(*(a1 + 32), v6, a4, 0);
  v9 = v8;
  v10 = *(a1 + 56);
  v13 = objc_msgSend_pencilAnnotationStorage(v29, v8, v11, v12);
  v17 = objc_msgSend_context(*(a1 + 40), v14, v15, v16);
  v20 = objc_msgSend_copyWithContext_(v13, v18, v17, v19);

  v21 = [TSTPencilAnnotation alloc];
  v26 = objc_msgSend_initWithTableInfo_pencilAnnotationStorage_(v21, v22, *(a1 + 48), v20);
  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F64BC();
  }

  v27 = objc_msgSend_pencilAnnotationOwner(*(a1 + 40), v23, v24, v25);
  objc_msgSend_addAnnotation_withAnchorRange_(v27, v28, v26, (v7 - (v10 & 0xFFFF00000000)) & 0xFFFF00000000 | (v7 - v10), v9);
}

void sub_22109D42C()
{
  v0 = TSULogCreateCategory();
  v1 = TSTPencilCat_log_t;
  TSTPencilCat_log_t = v0;
}

void sub_22109D470(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cell(v3, v4, v5, v6);
  v11 = objc_msgSend_cellID(v3, v8, v9, v10) >> 32;
  v12 = *(a1 + 92);
  v16 = objc_msgSend_cellID(v3, v13, v14, v15);
  if (!v7)
  {
    goto LABEL_30;
  }

  v20 = v16;
  v139 = *(a1 + 88);
  if (objc_msgSend_isEmpty(v7, v17, v18, v19))
  {
    goto LABEL_30;
  }

  objc_msgSend_clearDataListIDs(v7, v21, v22, v23);
  if (objc_msgSend_hasFormulaSyntaxError(v7, v24, v25, v26))
  {
    v30 = objc_msgSend_formulaSyntaxError(v7, v27, v28, v29);
    v31 = *(a1 + 32);
    v35 = objc_msgSend_documentRoot(*(a1 + 40), v32, v33, v34);
    v39 = objc_msgSend_stylesheet(v35, v36, v37, v38);
    v41 = objc_msgSend_i_copyIntoContext_stylesheet_(v30, v40, v31, v39);

    objc_msgSend_setFormulaSyntaxError_(v7, v42, v41, v43);
  }

  if (objc_msgSend_hasRichText(v7, v27, v28, v29))
  {
    v47 = objc_msgSend_richTextValue(v7, v44, v45, v46);
    v50 = objc_msgSend_copyWithContext_(v47, v48, *(a1 + 32), v49);

    objc_msgSend_setRichTextValue_(v7, v51, v50, v52);
  }

  if (objc_msgSend_hasCommentStorage(v7, v44, v45, v46))
  {
    v56 = objc_msgSend_commentStorage(v7, v53, v54, v55);
    v59 = objc_msgSend_copyWithContext_(v56, v57, *(a1 + 32), v58);

    objc_msgSend_setCommentStorage_(v7, v60, v59, v61);
  }

  v62 = objc_msgSend_cellSpec(v7, v53, v54, v55);
  v66 = objc_msgSend_asChooserControlSpec(v62, v63, v64, v65);

  if (v66)
  {
    v70 = objc_msgSend_popupModel(v66, v67, v68, v69);
    v73 = objc_msgSend_copyWithContext_(v70, v71, *(a1 + 32), v72);

    Item = objc_msgSend_startWithFirstItem(v66, v74, v75, v76);
    v79 = objc_msgSend_popupCellSpec_startWithFirstItem_(TSTCellChooserControlSpec, v78, v73, Item);
    objc_msgSend_setCellSpec_(v7, v80, v79, v81);
  }

  v85 = (v20 - v139) | ((v11 - v12) << 32);
  if (objc_msgSend_hasFormula(v7, v67, v68, v69))
  {
    v86 = objc_msgSend_formulaObject(v7, v82, v83, v84);
    if (objc_msgSend_isSpillFormula(v86, v87, v88, v89))
    {
      v93 = objc_msgSend_spillOrigin(v86, v90, v91, v92);
      v94 = 0x7FFF7FFFFFFFLL;
      v95 = *(a1 + 92);
      if (v95 <= WORD2(v93))
      {
        v96 = *(a1 + 88);
        v97 = v93 >= v96;
        v98 = v93 - v96;
        if (v97)
        {
          v94 = v98 | ((WORD2(v93) - v95) << 32);
        }
      }

      v99 = [TSCEFormulaObject alloc];
      v146.var1 = 0;
      v146.var2.var0.var0.coordinate = 0;
      v146.var0 = v94;
      v147.var0._tableUID._lower = 0;
      v147.var0._tableUID._upper = 0;
      v147.var0.coordinate = v85;
      TSCEFormulaCreationMagic::cellRef(&v148, &v146, 3, &v147, v100);
      TSCEFormulaCreationMagic::__SPILL(v149, &v148, v150);
      v103 = objc_msgSend_initWithCreator_(v99, v101, v149, v102);

      objc_msgSend_setFormulaObject_(v7, v104, v103, v105);
    }

    else
    {
      if (!*(a1 + 80))
      {
LABEL_21:

        goto LABEL_22;
      }

      v106 = objc_msgSend_cellID(v3, v90, v91, v92);
      v110 = objc_msgSend_tableUID(*(a1 + 48), v107, v108, v109);
      v146.var0 = v106;
      v146.var1 = v110;
      v146.var2.var0.var0.coordinate = v111;
      sub_2212C7294(&v147, &v146);
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v146, *(a1 + 56), &v147);
      v103 = sub_221491A58(v86, &v146, *(a1 + 64), *(a1 + 80));
      objc_msgSend_setFormulaObject_(v7, v112, v103, v113);
    }

    goto LABEL_21;
  }

LABEL_22:
  if (objc_msgSend_hasConditionalStyle(v7, v82, v83, v84))
  {
    if (*(a1 + 80))
    {
      v117 = objc_msgSend_cellID(v3, v114, v115, v116);
      v121 = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 48), v118, v119, v120);
      v147.var0.coordinate = v117;
      v147.var0._tableUID._lower = v121;
      v147.var0._tableUID._upper = v122;
      sub_2212C7294(&v146, &v147);
      v123 = *(*(*(a1 + 72) + 8) + 24);
      if (!v123)
      {
        operator new();
      }

      v124 = TSCEFormulaRewriteContext::setContainingCell(v123, &v146);
      v131 = objc_msgSend_conditionalStyle(v7, v128, v129, v130, v124);
      v132 = *(*(*(a1 + 72) + 8) + 24);
      v140 = MEMORY[0x277D85DD0];
      v141 = 3221225472;
      v142 = sub_22109DAA8;
      v143 = &unk_27845DC60;
      v133 = *(a1 + 64);
      v134 = *(a1 + 80);
      v144 = v133;
      v145 = v134;
      v136 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v131, v135, v132, &v140);
    }

    else
    {
      v125 = objc_msgSend_conditionalStyle(v7, v114, v115, v116);
      v136 = objc_msgSend_copyWithContext_(v125, v126, *(a1 + 32), v127);
    }

    objc_msgSend_setConditionalStyle_(v7, v137, v136, v138);
  }

  objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_doRichTextDOLC_(*(*(a1 + 40) + 224), v114, v7, v85, *(a1 + 40) + 744, *(*(a1 + 40) + 216), *(*(a1 + 40) + 608), 1, 1, v140, v141, v142, v143);

LABEL_30:
}

void sub_22109D96C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v4, 0x1080C405B0C81BELL);

  _Unwind_Resume(a1);
}

id sub_22109DAA8(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_221491A58(a2, a3, *(a1 + 32), *(a1 + 40));

  return v3;
}

uint64_t sub_22109DBB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_22109E458(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *(*(a1 + 32) + 288) = 0;
  v5 = objc_msgSend_tableName(*(a1 + 40), a2, a3, a4);
  v8 = objc_msgSend_stringByAppendingString_(v5, v6, @" as Pivot Source Table", v7);
  objc_msgSend_setTableName_(*(a1 + 32), v9, v8, v10);

  objc_msgSend_setShouldUseWideRows_(*(a1 + 32), v11, 1, v12);
  *(*(a1 + 32) + 188) = *(a1 + 72);
  *(*(a1 + 32) + 184) = 0;
  *(*(a1 + 32) + 192) = 0;
  v16 = objc_msgSend_tableStylePreset(*(a1 + 40), v13, v14, v15);

  if (!v16)
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 272);
    *(v17 + 272) = 0;
  }

  v19 = [TSTStrokeSidecar alloc];
  v22 = objc_msgSend_initForUpgradeWithTableModel_(v19, v20, *(a1 + 32), v21);
  v23 = *(a1 + 32);
  v24 = *(v23 + 80);
  *(v23 + 80) = v22;

  v25 = *(a1 + 32);
  objc_msgSend_defaultRowHeight(*(a1 + 40), v26, v27, v28);
  objc_msgSend_setDefaultRowHeight_(v25, v29, v30, v31);
  v32 = *(a1 + 32);
  objc_msgSend_defaultColumnWidth(*(a1 + 40), v33, v34, v35);
  objc_msgSend_setDefaultColumnWidth_(v32, v36, v37, v38);
  result = objc_msgSend_p_updateMergesAndCellsAsPivotDataWithSourceModel_sourceRegion_sourceBodyRegion_(*(a1 + 32), v39, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v43 = *(a1 + 64);
  if (v43)
  {
    v44 = *(*(a1 + 32) + 624);

    return objc_msgSend_setCalcEngine_(v44, v41, v43, v42);
  }

  return result;
}

void sub_22109E638(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTTableModel;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id sub_22109E74C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v6 = v3;
  if (v3)
  {
    objc_msgSend_removeValueForProperty_(v3, v4, 901, v5);
    objc_msgSend_removeValueForProperty_(v6, v7, 902, v8);
    objc_msgSend_removeValueForProperty_(v6, v9, 899, v10);
    objc_msgSend_removeValueForProperty_(v6, v11, 900, v12);
  }

  return v2;
}

void sub_22109EBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22109EBF4(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

TSTCellMap *sub_22109EF40(uint64_t a1)
{
  v2 = [TSTCellMap alloc];
  v6 = objc_msgSend_context(*(a1 + 32), v3, v4, v5);
  v8 = objc_msgSend_initWithContext_uidBased_(v2, v7, v6, 0);

  return v8;
}

uint64_t sub_22109EFBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = objc_msgSend_cell(v5, v7, v8, v9);
  v14 = v10;
  if (v10 && objc_msgSend_valueType(v10, v11, v12, v13) && objc_msgSend_valueType(v14, v15, v16, v17) != 8 && (objc_msgSend_isEmpty(v14, v18, v19, v20) & 1) == 0)
  {
    v24 = objc_msgSend_cellID(v5, v21, v22, v23);
    v27 = v24;
    if (*(a1 + 48) == 1)
    {
      LOWORD(v28) = objc_msgSend_mappedIndexForSourceIndex_(*(a1 + 32), v25, WORD2(v24), v26);
    }

    else
    {
      v28 = HIDWORD(v24);
    }

    v29 = v27;
    if (*(a1 + 49) == 1)
    {
      v29 = objc_msgSend_mappedIndexForSourceIndex_(*(a1 + 40), v25, v27, v26);
    }

    objc_msgSend_addCell_andCellID_(v6, v25, v14, (v28 << 32) | v27 & 0xFFFF000000000000 | v29);
  }

  return 0;
}

void sub_22109F0E0(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v9, v13, 16);
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_appendCellMap_precopied_(*(a1 + 32), v5, *(*(&v9 + 1) + 8 * v8++), 1, v9);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v9, v13, 16);
    }

    while (v6);
  }
}

uint64_t sub_22109F7B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_22109F7CC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_clear(*(*(a1[6] + 8) + 40), a2, a3, a4);
  objc_msgSend_inflateFromStorageRef_dataStore_suppressingTransmutation_(*(*(a1[6] + 8) + 40), v7, a2, *(a1[4] + 224), 1);
  v9 = a1[5];
  v10 = *(*(a1[6] + 8) + 40);

  return objc_msgSend_addCell_andCellID_(v9, v8, v10, a3);
}

void sub_2210A0FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a63, 8);
  sub_22107C860(&a65, a66);
  _Block_object_dispose((v67 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2210A124C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return MEMORY[0x2821F9670](v6, sel_showRowAtIndex_forAction_, a2, 1);
}

uint64_t sub_2210A1294(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return MEMORY[0x2821F9670](v6, sel_showColumnAtIndex_forAction_, v4, 1);
}

uint64_t sub_2210A12F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v177 = v5;
  v10 = objc_msgSend_cellID(v5, v7, v8, v9);
  v188 = v10;
  v14 = objc_msgSend_cell(v5, v11, v12, v13);
  v18 = v14;
  if (*(a1 + 72) >= *MEMORY[0x277D80968])
  {
    v31 = 0;
    goto LABEL_19;
  }

  if (objc_msgSend_valueType(v14, v15, v16, v17) != 9)
  {
    v31 = 0;
    goto LABEL_12;
  }

  v22 = objc_msgSend_richTextValue(v18, v19, v20, v21);
  v26 = v22;
  if (!v22)
  {
    objc_msgSend_clearValue(v18, v23, v24, v25);
    objc_msgSend_setCurrentFormat_isExplicit_(v18, v32, 0, 0);
LABEL_10:
    v31 = 1;
    goto LABEL_11;
  }

  v27 = objc_msgSend_documentRoot(v22, v23, v24, v25);

  if (!v27)
  {
    v33 = objc_msgSend_documentRoot(*(a1 + 32), v28, v29, v30);
    objc_sync_enter(v33);
    objc_msgSend_willBeRemovedFromDocumentRoot_(v26, v34, v33, v35);
    objc_msgSend_wasRemovedFromDocumentRoot_(v26, v36, v33, v37);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v26, v38, v33, 0);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v26, v39, v33, 0);
    objc_sync_exit(v33);

    goto LABEL_10;
  }

  v31 = 0;
LABEL_11:

LABEL_12:
  if (objc_msgSend_hasMismatchedFormatAndValue(v18, v19, v20, v21))
  {
    v43 = objc_msgSend_formatType(v18, v40, v41, v42);
    if (v43 == 263)
    {
      objc_msgSend_setBoolValue_(v18, v44, 0, v46);
    }

    else if (v43 == 267)
    {
      objc_msgSend_setNumberDoubleValue_(v18, v44, v45, v46, 0.0);
    }

    else
    {
      objc_msgSend_setDefaultFormatForValue(v18, v44, v45, v46);
    }

    v31 = 1;
  }

LABEL_19:
  v184 = 0;
  v185 = &v184;
  v186 = 0x2020000000;
  v187 = 0;
  v181[0] = MEMORY[0x277D85DD0];
  v181[1] = 3221225472;
  v181[2] = sub_2210A1B88;
  v181[3] = &unk_27845DE88;
  v47 = v18;
  v182 = v47;
  v183 = &v184;
  objc_msgSend_processCustomFormatsWithBlock_(v47, v48, v181, v49);
  v50 = *(v185 + 24);
  if (objc_msgSend_hasMismatchedFormatAndValue(v47, v51, v52, v53))
  {
    objc_msgSend_setDefaultFormatForValue(v47, v54, v55, v56);
    v57 = 1;
  }

  else
  {
    v57 = v31 | v50;
  }

  v58 = *(a1 + 72);
  if (v58 <= 0x2000200000002)
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      v59 = objc_msgSend_removeControlCellSpec(v47, v54, v55, v56);
      v57 |= objc_msgSend_removeControlFormatSpares(v47, v60, v61, v62) | v59;
    }

    v66 = objc_msgSend_cellStyle(v47, v54, v55, v56);
    if (!v66)
    {
LABEL_35:
      v89 = objc_msgSend_textStyle(v47, v63, v64, v65);
      if (!v89)
      {
LABEL_45:

        v58 = *(a1 + 72);
        goto LABEL_46;
      }

      LOBYTE(v178._decimal.w[0]) = 0;
      v93 = objc_msgSend_textStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(*(a1 + 32), v88, v10, &v178);
      if (v89 == v93)
      {
        objc_msgSend_setTextStyle_(v47, v90, 0, v92);
      }

      else
      {
        if (!objc_msgSend_isVariation(v89, v90, v91, v92))
        {
          goto LABEL_44;
        }

        v97 = objc_msgSend_parent(v89, v94, v95, v96);

        if (v97)
        {
          goto LABEL_44;
        }

        if ((v178._decimal.w[0] & 1) == 0)
        {
          v100 = objc_msgSend_defaultTextStyleForBaseCellCoord_(*(a1 + 32), v98, v10, v99);

          v93 = v100;
        }

        v101 = *(a1 + 40);
        objc_sync_enter(v101);
        v102 = *(a1 + 40);
        v106 = objc_msgSend_propertyMap(v89, v103, v104, v105);
        v108 = objc_msgSend_variationOfStyle_propertyMap_(v102, v107, v93, v106);

        objc_msgSend_setTextStyle_(v47, v109, v108, v110);
        objc_sync_exit(v101);
      }

      v57 = 1;
LABEL_44:

      goto LABEL_45;
    }

    LOBYTE(v178._decimal.w[0]) = 0;
    v70 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(*(a1 + 32), v63, v10, &v178);
    if (v66 == v70)
    {
      objc_msgSend_setCellStyle_(v47, v67, 0, v69);
    }

    else
    {
      if (!objc_msgSend_isVariation(v66, v67, v68, v69))
      {
        goto LABEL_34;
      }

      v74 = objc_msgSend_parent(v66, v71, v72, v73);

      if (v74)
      {
        goto LABEL_34;
      }

      if ((v178._decimal.w[0] & 1) == 0)
      {
        v77 = objc_msgSend_defaultCellStyleForBaseCellCoord_(*(a1 + 32), v75, v10, v76);

        v70 = v77;
      }

      v78 = *(a1 + 40);
      objc_sync_enter(v78);
      v79 = *(a1 + 40);
      v83 = objc_msgSend_propertyMap(v66, v80, v81, v82);
      v85 = objc_msgSend_variationOfStyle_propertyMap_(v79, v84, v70, v83);

      objc_msgSend_setCellStyle_(v47, v86, v85, v87);
      objc_sync_exit(v78);
    }

    v57 = 1;
LABEL_34:

    goto LABEL_35;
  }

LABEL_46:
  if (v58 > 0x4000100000002)
  {
    goto LABEL_57;
  }

  if (objc_msgSend_valueType(v47, v54, v55, v56) == 2)
  {
    v178._decimal.w[0] = objc_msgSend_numberDecimalValue(v47, v111, v112, v113);
    v178._decimal.w[1] = v114;
    if (TSUDecimal::reinterpretDoubleAsDecimal(&v178))
    {
      objc_msgSend_setNumberDecimalValue_(v47, v115, v178._decimal.w[0], v178._decimal.w[1]);
LABEL_53:
      v57 = 1;
    }
  }

  else if (objc_msgSend_valueType(v47, v111, v112, v113) == 10)
  {
    v178._decimal.w[0] = objc_msgSend_currencyDecimalValue(v47, v115, v116, v117);
    v178._decimal.w[1] = v118;
    if (TSUDecimal::reinterpretDoubleAsDecimal(&v178))
    {
      objc_msgSend_setCurrencyDecimalValue_(v47, v115, v178._decimal.w[0], v178._decimal.w[1]);
      goto LABEL_53;
    }
  }

  if ((objc_msgSend_hasFormula(v47, v115, v116, v117) & 1) != 0 || objc_msgSend_hasConditionalStyle(v47, v54, v55, v56))
  {
    v57 = 1;
  }

LABEL_57:
  v180 = 0;
  v119 = *(a1 + 72);
  if (v119 < *(a1 + 80))
  {
    if (objc_msgSend_hasFormula(v47, v54, v55, v56))
    {
      v120 = *(a1 + 48);
      v121 = objc_msgSend_formulaObject(v47, v54, v55, v56);
      v125 = objc_msgSend_tableUID(*(a1 + 32), v122, v123, v124);
      v178._decimal.w[0] = v188;
      v178._decimal.w[1] = v125;
      v179 = v126;
      objc_msgSend_addFunctionUsesInFormula_atCellRef_outContainsVolatileFunction_(v120, v126, v121, &v178, &v180);

      if ((objc_msgSend_cellFlags(v47, v127, v128, v129) & 0x200) != 0)
      {
        TSCECellCoordSet::addCellCoord((*(*(a1 + 64) + 8) + 48), &v188);
      }
    }

    v119 = *(a1 + 72);
  }

  if (v119 <= 0xA000000000002)
  {
    if (objc_msgSend_hasFormula(v47, v54, v55, v56))
    {
      v133 = objc_msgSend_formulaObject(v47, v130, v131, v132);
      v135 = objc_msgSend_copyByClearingUids_containingTableUID_(v133, v134, *(a1 + 56), *(a1 + 32) + 744);

      v139 = objc_msgSend_formulaObject(v47, v136, v137, v138);
      v140 = v180;

      if (v135 != v139 || (v140 & 1) != 0)
      {
        objc_msgSend_setFormulaObject_(v47, v141, v135, v142);
        v57 = 1;
      }
    }

    if (objc_msgSend_hasConditionalStyle(v47, v130, v131, v132))
    {
      v143 = objc_msgSend_conditionalStyle(v47, v54, v55, v56);
      v145 = objc_msgSend_copyByClearingUids_containingTableUID_(v143, v144, *(a1 + 56), *(a1 + 32) + 744);

      v149 = objc_msgSend_conditionalStyle(v47, v146, v147, v148);

      if (v145 != v149)
      {
        objc_msgSend_setConditionalStyle_(v47, v150, v145, v151);
        v57 = 1;
      }
    }
  }

  if ((objc_msgSend_validateAndRepair(v47, v54, v55, v56) | v57))
  {
    if (objc_msgSend_isEmpty(v47, v152, v153, v154))
    {
      v158 = objc_msgSend_emptyCellCount(v6, v155, v156, v157);
      objc_msgSend_setEmptyCellCount_(v6, v159, v158 + 1, v160);
    }

    v161 = objc_msgSend_copy(v47, v155, v156, v157);
    v165 = objc_msgSend_sourceRectOrigin(v6, v162, v163, v164);
    row = v188.row;
    column = v188.column;
    objc_msgSend_prepareToAddCells(v6, v168, v169, v170);
    v174 = objc_msgSend_sparseCellList(v6, v171, v172, v173);
    objc_msgSend_addCell_atUidOffset_(v174, v175, v161, (column - WORD2(v165)) | ((row - v165) << 32));
  }

  _Block_object_dispose(&v184, 8);
  return 0;
}

void sub_2210A1A38(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, ...)
{
  va_start(va, a21);

  objc_sync_exit(v21);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_2210A1B88(uint64_t a1, void *a2)
{
  v21 = a2;
  v6 = objc_msgSend_customFormat(v21, v3, v4, v5);

  if (!v6)
  {
    v10 = objc_msgSend_formatType(*(a1 + 32), v7, v8, v9);
    if (v10 == objc_msgSend_formatType(v21, v11, v12, v13) && objc_msgSend_hasValue(*(a1 + 32), v14, v15, v16))
    {
      objc_msgSend_setDefaultFormatForValue(*(a1 + 32), v14, v15, v16);
    }

    else
    {
      v17 = *(a1 + 32);
      v18 = objc_msgSend_formatType(v21, v14, v15, v16);
      objc_msgSend_clearFormatOfType_(v17, v19, v18, v20);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id sub_2210A1C50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_columnRowUIDMap(*(a1 + 32), a2, a3, a4);
  v8 = objc_msgSend_perChunkHelperWithSourceRect_columnRowUIDMap_(TSTTableModelCellModificationHelper, v7, a2, a3, v6);

  return v8;
}

void sub_2210A1CD8(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = a2;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v21, v25, 16);
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = objc_msgSend_sparseCellList(v11, v5, v6, v7, v21);
        v13 = v12 == 0;

        if (!v13)
        {
          v17 = *(a1 + 32);
          v18 = objc_msgSend_sparseCellList(v11, v14, v15, v16);
          objc_msgSend_appendCellList_(v17, v19, v18, v20);
        }

        *(*(*(a1 + 40) + 8) + 24) -= objc_msgSend_emptyCellCount(v11, v14, v15, v16);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v21, v25, 16);
    }

    while (v8);
  }
}

void sub_2210A450C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 696), a2);
  v4 = a2;
  *(*(a1 + 32) + 178) = 1;
}

void *sub_2210A4594(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (!v5[85])
  {
    v6 = [TSTColumnRowUIDMap alloc];
    v10 = objc_msgSend_context(*(a1 + 32), v7, v8, v9);
    v14 = objc_msgSend_nsTableUID(*(a1 + 32), v11, v12, v13);
    v16 = objc_msgSend_initWithContext_tableUUID_numberOfRows_numberOfColumns_(v6, v15, v10, v14, *(a1 + 40), *(a1 + 44));
    v17 = *(a1 + 32);
    v18 = *(v17 + 680);
    *(v17 + 680) = v16;

    v5 = *(a1 + 32);
  }

  v19 = objc_msgSend_documentRoot(v5, a2, a3, a4);
  v23 = objc_msgSend_calculationEngine(v19, v20, v21, v22);
  *(*(a1 + 32) + 216) = v23;

  objc_msgSend_setTableModelDuringUnarchive_(*(*(a1 + 32) + 632), v24, *(a1 + 32), v25);
  v26 = *(a1 + 32);
  if (v26[47] >= objc_msgSend_numberOfRows(v26, v27, v28, v29))
  {
    *(*(a1 + 32) + 188) = objc_msgSend_numberOfRows(*(a1 + 32), v30, v31, v32) - 1;
  }

  v33 = *(a1 + 32);
  if (v33[92] >= objc_msgSend_numberOfColumns(v33, v30, v31, v32))
  {
    *(*(a1 + 32) + 184) = objc_msgSend_numberOfColumns(*(a1 + 32), v34, v35, v36) - 1;
  }

  v37 = *(a1 + 32);
  v38 = objc_msgSend_numberOfRows(v37, v34, v35, v36);
  v41 = *(a1 + 32);
  if (v37[48] >= (v38 - *(v41 + 188)))
  {
    *(*(a1 + 32) + 192) = objc_msgSend_numberOfRows(*(a1 + 32), v39, v41, v40) + ~*(*(a1 + 32) + 188);
    v41 = *(a1 + 32);
  }

  v42 = *(v41 + 624);
  if (v42)
  {
    objc_msgSend_unpackAfterUnarchive_(v42, v39, v41, v40);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(v41, v39, v41, v40);
    v46 = [TSTCategoryOwner alloc];
    v49 = objc_msgSend_initWithBaseTableModel_(v46, v47, *(a1 + 32), v48);
    v50 = *(a1 + 32);
    v51 = *(v50 + 624);
    *(v50 + 624) = v49;
  }

  objc_msgSend_p_upgradeMerges(*(a1 + 32), v43, v44, v45);
  result = objc_msgSend_updateForTableSize_(*(*(a1 + 32) + 80), v52, *(a1 + 44) | (*(a1 + 40) << 32), v53);
  if ((*(a1 + 48) & 1) == 0)
  {
    v57 = *(a1 + 32);

    return objc_msgSend_validateTableStylesInSameStylesheetExpectingDocSS_(v57, v55, 0, v56);
  }

  return result;
}

void sub_2210A9828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2210AAE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 96), 8);

  _Unwind_Resume(a1);
}

void *sub_2210AAE6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = objc_msgSend_cellExistsAtBaseCellCoord_(*(a1 + 32), a2, a2, a4);
  if (a3 && (result & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v10 = *(*(*(a1 + 40) + 8) + 24);
  v11 = *(a1 + 64);
  if (v10 > v11)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1001;
    *a5 = 1;
    v10 = *(*(*(a1 + 40) + 8) + 24);
  }

  if (*(a1 + 56) + ~a4 < v11 - v10)
  {
    *a5 = 1;
  }

  return result;
}

void sub_2210AD254(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  objc_msgSend_heightOfRowAtIndex_isDefault_(*(a1 + 40), a2, a2, 0);
  v9 = objc_msgSend_numberWithDouble_(v2, v4, v5, v6);
  objc_msgSend_addObject_(v3, v7, v9, v8);
}

void sub_2210AD3C4(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  objc_msgSend_widthOfColumnAtIndex_isDefault_(*(a1 + 40), a2, a2, 0);
  v9 = objc_msgSend_numberWithDouble_(v2, v4, v5, v6);
  objc_msgSend_addObject_(v3, v7, v9, v8);
}

void sub_2210AD4BC(uint64_t a1, void *a2, unsigned __int16 a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  objc_msgSend_tsu_CGFloatValue(v5, v7, v8, v9);
  objc_msgSend_setWidth_ofColumnAtIndex_(v6, v10, a3, v11);
}

void sub_2210AD5A4(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  objc_msgSend_tsu_CGFloatValue(v5, v7, v8, v9);
  objc_msgSend_setHeight_ofRowAtIndex_(v6, v10, a3, v11);
}

void sub_2210AE9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210AEA44(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 >= 0xF4240)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 382, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  if (&a2[a1] >= 0xF4241)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 383, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  return a1;
}

void sub_2210AEE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2210AEE74(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = &a2[a1];
  if (a1 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0)
  {
    if (a1 >= 0x3E8)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", a4);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 373, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    }

    if (v5 >= 0x3EA)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", a4);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 374, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }
  }

  return v4 << 32;
}

uint64_t sub_2210AF174(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v13[0] = sub_2210AEA44(a2, a3, a3, a4);
  v13[1] = v5;
  v12[0] = objc_msgSend_range(*(a1 + 32), v5, v6, v7);
  v12[1] = v8;
  v9 = sub_2210AFE68(v13, v12);
  return objc_msgSend__removeAnnotationsFromDeleteRange_(*(a1 + 32), v10, v9, v10);
}

uint64_t sub_2210AF24C(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v13[0] = sub_2210AEE74(a2, a3, a3, a4);
  v13[1] = v5;
  v12[0] = objc_msgSend_range(*(a1 + 32), v5, v6, v7);
  v12[1] = v8;
  v9 = sub_2210AFE68(v13, v12);
  return objc_msgSend__removeAnnotationsFromDeleteRange_(*(a1 + 32), v10, v9, v10);
}

void *sub_2210AF8E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_headerInfo_hidingActionForRowAtIndex_(*(a1 + 32), a2, a2, a4);
  if (result)
  {
    v8 = result;
    v9 = *(a1 + 40);

    return objc_msgSend_hideRowAtIndex_forAction_(v9, v7, a2, v8);
  }

  return result;
}

void *sub_2210AF940(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  result = objc_msgSend_headerInfo_hidingActionForColumnAtIndex_(*(a1 + 32), a2, a2, a4);
  if (result)
  {
    v8 = result;
    v9 = *(a1 + 40);

    return objc_msgSend_hideColumnAtIndex_forAction_(v9, v7, v4, v8);
  }

  return result;
}

void sub_2210AFDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2210AFE2C(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2210AFE50(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

unint64_t sub_2210AFE68(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = 0x7FFFFFFF;
  v4 = *a1 == 0x7FFFFFFF || (*a1 & 0xFFFF00000000) == 0x7FFF00000000;
  if (v4 || ((v5 = a1[1], HIDWORD(v5)) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = 0;
    v8 = 0x7FFFLL;
  }

  else
  {
    v10 = *a2;
    v8 = 0x7FFFLL;
    if (*a2 == 0x7FFFFFFF)
    {
      goto LABEL_54;
    }

    v7 = 0;
    if ((v10 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      return v7 | (v8 << 32) | v3;
    }

    v11 = a2[1];
    v8 = 0x7FFFLL;
    if (!HIDWORD(v11))
    {
LABEL_54:
      v7 = 0;
      return v7 | (v8 << 32) | v3;
    }

    v7 = 0;
    if (v11)
    {
      v3 = *MEMORY[0x277D813C8];
      v8 = *(MEMORY[0x277D813C8] + 4);
      v12 = HIDWORD(v2);
      v13 = HIDWORD(v10);
      if (WORD2(v2) <= WORD2(v10))
      {
        v14 = WORD2(v10);
      }

      else
      {
        v14 = WORD2(v2);
      }

      v15 = v2 + HIDWORD(v5) - 1;
      if (v10 == 0x7FFFFFFF)
      {
        v16 = 0;
      }

      else
      {
        v16 = *a2;
      }

      if (v10 == 0x7FFFFFFF)
      {
        v17 = 0x7FFFFFFF;
      }

      else
      {
        v17 = v10 + HIDWORD(v11) - 1;
      }

      if (v2 == 0x7FFFFFFF)
      {
        v18 = 0;
      }

      else
      {
        v18 = v2;
      }

      if (v2 == 0x7FFFFFFF)
      {
        v15 = 0x7FFFFFFF;
      }

      if (v18 <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v18;
      }

      if (WORD2(v2) == 0x7FFF || v5 == 0)
      {
        v21 = 0x7FFF;
      }

      else
      {
        v21 = v5 + v12 - 1;
      }

      if (WORD2(v10) == 0x7FFF || v11 == 0)
      {
        LOWORD(v11) = 0x7FFF;
      }

      else
      {
        LOWORD(v11) = v11 + v13 - 1;
      }

      if (v21 >= v11)
      {
        LODWORD(v11) = v11;
      }

      else
      {
        LODWORD(v11) = v21;
      }

      if (v15 >= v17)
      {
        v23 = v17;
      }

      else
      {
        v23 = v15;
      }

      if (v23 < v19 || v14 > v11)
      {
        v7 = *(MEMORY[0x277D813C8] + 6) << 48;
      }

      else
      {
        v7 = 0;
        v3 = v19;
        v8 = v14;
      }
    }
  }

  return v7 | (v8 << 32) | v3;
}

void sub_2210AFFEC(uint64_t a1, void *a2)
{
  v29 = a2;
  v6 = objc_msgSend_cell(v29, v3, v4, v5);
  hasValueOrCommentBreakingMergeFragment = objc_msgSend_hasValueOrCommentBreakingMergeFragment(v6, v7, v8, v9);

  if (hasValueOrCommentBreakingMergeFragment)
  {
    v14 = *(*(a1 + 32) + 8);
    v15 = objc_msgSend_cellID(v29, v11, v12, v13);
    v17 = v14[7];
    v16 = v14[8];
    if (v17 >= v16)
    {
      v19 = v14[6];
      v20 = (v17 - v19) >> 3;
      if ((v20 + 1) >> 61)
      {
        sub_22107C148();
      }

      v21 = v16 - v19;
      v22 = v21 >> 2;
      if (v21 >> 2 <= (v20 + 1))
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        sub_2210874C4((v14 + 6), v23);
      }

      v24 = (8 * v20);
      *v24 = v15;
      v18 = 8 * v20 + 8;
      v25 = v14[6];
      v26 = v14[7] - v25;
      v27 = v24 - v26;
      memcpy(v24 - v26, v25, v26);
      v28 = v14[6];
      v14[6] = v27;
      v14[7] = v18;
      v14[8] = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v17 = v15;
      v18 = (v17 + 1);
    }

    v14[7] = v18;
  }
}

void sub_2210B1628(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2210B25EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  *(v64 - 104) = v63;
  sub_22107C2C0((v64 - 104));

  *(v64 - 104) = v62;
  sub_22107C2C0((v64 - 104));

  *(v64 - 104) = &a38;
  sub_22107C2C0((v64 - 104));

  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v64 - 256), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2210B26E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  sub_2212C7250(a1 + 64);

  return TSCEFormulaRewriteContextRecord::operator=(a1 + 64, a2 + 64);
}

id sub_2210B2738(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v17 = 0;
  if (objc_msgSend_isSpillFormula(v5, v6, v7, v8))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v10 = v5;
  }

  else
  {
    v11 = objc_msgSend_copyByRemappingHostCellAgnosticOwnerUIDs_rewriteContext_outError_(v5, v9, *(a1 + 56), *(*(a1 + 48) + 8) + 48, &v17);
    v14 = v11;
    if (v17 == 1)
    {
      objc_msgSend_addIndex_(*(a1 + 32), v12, a3, v13);
    }

    else
    {
      v15 = v11;

      v5 = v15;
    }

    v10 = v5;
  }

  return v10;
}

id sub_2210B2828(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v13 = 0;
  v7 = objc_msgSend_copyByRemappingHostCellAgnosticOwnerUIDsWithMap_rewriteContext_error_(v5, v6, *(a1 + 48), *(*(a1 + 40) + 8) + 48, &v13);
  v10 = v7;
  if (v13 == 1)
  {
    objc_msgSend_addIndex_(*(a1 + 32), v8, a3, v9);
  }

  else
  {
    v11 = v7;

    v5 = v11;
  }

  return v5;
}

void sub_2210B28E0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_2210BC0EC(a1, v5);
  }
}

uint64_t sub_2210B2968(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cell(v3, v4, v5, v6);
  v57 = objc_msgSend_cellID(v3, v8, v9, v10);
  if (objc_msgSend_hasFormula(v7, v11, v12, v13))
  {
    v17 = objc_msgSend_formulaObject(v7, v14, v15, v16);
    v21 = objc_msgSend_formulaID(v7, v18, v19, v20);
    if (v21 && objc_msgSend_containsIndex_(*(a1 + 32), v22, v21, v24))
    {
      if (v17)
      {
        v56 = 0;
        v25 = *(*(a1 + 48) + 8);
        *&v55.var0 = *(v25 + 48);
        sub_2212C7250(&v55.var2);
        TSCEFormulaRewriteContextRecord::operator=(&v55.var2, v25 + 64);
        TSCEFormulaRewriteContext::setContainingCellCoord(&v55, &v57);
        v27 = objc_msgSend_copyByRemappingOwnerUIDs_rewriteContext_outBadRefFound_(v17, v26, *(a1 + 72), &v55, &v56);
        v31 = v27;
        if (v56 == 1 && *(a1 + 104) == 1)
        {
          objc_msgSend_bakeFormulaToValue(v7, v28, v29, v30, v55.var0, v55.var1);
          objc_msgSend_addIndex_(*(*(a1 + 80) + 8 * v57.row), v32, v57.column, v33);
        }

        else
        {
          if (objc_msgSend_isEqualToFormula_(v27, v28, v17, v30, v55.var0, v55.var1))
          {
            v34 = 0;
LABEL_16:

            goto LABEL_17;
          }

          objc_msgSend_setFormulaObject_(v7, v35, v31, v36);
        }

        v34 = 1;
        goto LABEL_16;
      }
    }

    else if (objc_msgSend_isSpillFormula(v17, v22, v23, v24))
    {
      v34 = 1;
      *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_17:

      goto LABEL_18;
    }

    v34 = 0;
    goto LABEL_17;
  }

  v34 = 0;
LABEL_18:
  if (objc_msgSend_hasConditionalStyle(v7, v14, v15, v16))
  {
    v40 = objc_msgSend_conditionalStyleID(v7, v37, v38, v39);
    if (v40)
    {
      if (objc_msgSend_containsIndex_(*(a1 + 40), v41, v40, v42))
      {
        v46 = objc_msgSend_conditionalStyle(v7, v43, v44, v45);
        if (v46)
        {
          v56 = 0;
          v47 = *(*(a1 + 64) + 8);
          *&v55.var0 = *(v47 + 48);
          sub_2212C7250(&v55.var2);
          TSCEFormulaRewriteContextRecord::operator=(&v55.var2, v47 + 64);
          TSCEFormulaRewriteContext::setContainingCellCoord(&v55, &v57);
          v51 = objc_msgSend_copyByRemappingOwnerUIDsWithMap_rewriteContext_error_(v46, v48, *(a1 + 72), &v55, &v56);
          if (v51 != v46)
          {
            objc_msgSend_setConditionalStyle_(v7, v49, v51, v50);
            objc_msgSend_setConditionalStyleAppliedRule_(v7, v52, 15, v53);
            v34 = 1;
          }
        }
      }
    }
  }

  return v34;
}

uint64_t *sub_2210B2C14(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v2 = (a1 + 80);
  v2[2] = 0;
  return sub_2210BC1EC(v2, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
}

void sub_2210B2C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a3;
  if (objc_msgSend_hasFormula(v26, v4, v5, v6))
  {
    v10 = objc_msgSend_formulaObject(v26, v7, v8, v9);
    if (objc_msgSend_isSpillFormula(v10, v11, v12, v13))
    {
      v17 = objc_msgSend_spillOrigin(v10, v14, v15, v16);
      if (objc_msgSend_containsIndex_(*(*(a1 + 32) + 8 * v17), v18, WORD2(v17), v19))
      {
        objc_msgSend_bakeFormulaToValue(v26, v20, v21, v22);
      }

      else
      {
        objc_msgSend_setFormulaObject_(v26, v20, 0, v22);
        objc_msgSend_clearValue(v26, v23, v24, v25);
      }
    }
  }
}

uint64_t *sub_2210B2D3C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = (a1 + 32);
  v2[2] = 0;
  return sub_2210BC1EC(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

uint64_t sub_2210B2E78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cell(a2, a2, a3, a4);
  v8 = objc_msgSend_removeCustomFormatsWithIDs_(v5, v6, *(a1 + 32), v7);

  return v8;
}

void sub_2210B35AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose((v12 - 256), 8);

  _Unwind_Resume(a1);
}

id sub_2210B36BC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_copyByClearingUids_containingTableUID_(a2, a2, *(a1 + 32), a1 + 40);

  return v2;
}

id sub_2210B36F0(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if ((objc_msgSend_translationFlags(v5, v6, v7, v8) & 6) == 0 && objc_msgSend_hasBadRefWithUidInfo(v5, v9, v10, v11))
  {
    objc_msgSend_addIndex_(*(a1 + 32), v12, a3, v13);
  }

  return v5;
}

id sub_2210B3770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11[0] = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 40), v5, v6, v7);
  v11[1] = v8;
  v9 = objc_msgSend_copyByClearingUids_containingTableUID_(v3, v8, v4, v11);

  return v9;
}

id sub_2210B37F0(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if (objc_msgSend_hasBadRefWithUidInfo(v5, v6, v7, v8))
  {
    objc_msgSend_addIndex_(*(a1 + 32), v9, a3, v10);
  }

  return v5;
}

uint64_t sub_2210B385C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cell(v3, v4, v5, v6);
  if (!objc_msgSend_hasFormula(v7, v8, v9, v10))
  {
    v30 = 0;
    goto LABEL_20;
  }

  v14 = objc_msgSend_formulaID(v7, v11, v12, v13);
  v21 = objc_msgSend_formulaObject(v7, v15, v16, v17);
  if ((*(a1 + 88) & 1) == 0 && (*(a1 + 89) & 1) == 0)
  {
    v31 = objc_msgSend_cellID(v3, v18, v19, v20);
    v35 = objc_msgSend_tableUID(*(a1 + 32), v32, v33, v34);
    v132.var0 = v31;
    v132.var1 = v35;
    v132.var2.var0.var0.coordinate = v36;
    sub_2212C7294(&v138, &v132);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v137, *(a1 + 40), &v138);
    v40 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v37, v38, v39);
    v44 = objc_msgSend_supportsCategorization(v40, v41, v42, v43);

    v48 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v45, v46, v47);
    v52 = objc_msgSend_supportsPivotTables(v48, v49, v50, v51);

    if ((v44 & 1) == 0)
    {
      v56 = objc_msgSend_copyByConvertingColonTractToColon_breakUpIntoRefs_(v21, v53, &v137, 1);

      v21 = v56;
    }

    v57 = objc_msgSend_const_astNodeArray(v21, v53, v54, v55);
    v58 = *(*(a1 + 64) + 8);
    v59 = *(a1 + 32);
    v131 = 0uLL;
    sub_22134BFF8(&v132, v57, (v58 + 48), (v59 + 776), &v131);
    v63 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v60, v61, v62);
    v133 = objc_msgSend_supportsCategorization(v63, v64, v65, v66) ^ 1;

    TSCEASTStreamIterator::rewrite(&v132, v67, v68, v69);
    v71 = v134;
    if (((v134 | v44) & 1) == 0)
    {
      v71 = v135;
    }

    if (v71)
    {
      TSCEASTStreamIterator::~TSCEASTStreamIterator(&v132, v70);
    }

    else
    {
      v73 = v136;
      TSCEASTStreamIterator::~TSCEASTStreamIterator(&v132, v70);
      if (v52 & 1 | ((v73 & 1) == 0))
      {
        goto LABEL_4;
      }
    }

    if (objc_msgSend_hasFormulaEvaluationError(v7, v18, v72, v20))
    {
      objc_msgSend_clearValue(v7, v74, v75, v76);
    }

    objc_msgSend_setCellSpec_(v7, v74, 0, v76);
    goto LABEL_18;
  }

LABEL_4:
  if (objc_msgSend_containsIndex_(*(a1 + 48), v18, v14, v20))
  {
    v22 = *(*(a1 + 72) + 8);
    *&v132.var0 = *(v22 + 48);
    sub_2212C7250(&v132.var2);
    TSCEFormulaRewriteContextRecord::operator=(&v132.var2, v22 + 64);
    v137.var0 = objc_msgSend_cellID(v3, v23, v24, v25);
    TSCEFormulaRewriteContext::setContainingCellCoord(&v132, &v137);
    v27 = objc_msgSend_copyByRepairingBadReferences_clearUidHistory_(v21, v26, &v132, 0);
    objc_msgSend_setFormulaObject_(v7, v28, v27, v29);

LABEL_18:
    v30 = 1;
    goto LABEL_19;
  }

  v30 = 0;
LABEL_19:

LABEL_20:
  if (objc_msgSend_hasConditionalStyle(v7, v11, v12, v13))
  {
    v80 = objc_msgSend_conditionalStyleID(v7, v77, v78, v79);
    v84 = objc_msgSend_conditionalStyle(v7, v81, v82, v83);
    v85 = *(*(a1 + 80) + 8);
    *&v132.var0 = *(v85 + 48);
    sub_2212C7250(&v132.var2);
    TSCEFormulaRewriteContextRecord::operator=(&v132.var2, v85 + 64);
    v137.var0 = objc_msgSend_cellID(v3, v86, v87, v88);
    TSCEFormulaRewriteContext::setContainingCellCoord(&v132, &v137);
    v90 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v84, v89, &v132, &unk_2834A16C8);

    v94 = objc_msgSend_conditionalStyle(v7, v91, v92, v93);

    if (v90 != v94)
    {
      objc_msgSend_setConditionalStyle_(v7, v95, v90, v96);
      objc_msgSend_setConditionalStyleAppliedRule_(v7, v97, 15, v98);
      v30 = 1;
    }

    if (objc_msgSend_containsIndex_(*(a1 + 56), v95, v80, v96))
    {
      v137.var0 = objc_msgSend_cellID(v3, v99, v100, v101);
      TSCEFormulaRewriteContext::setContainingCellCoord(&v132, &v137);
      v103 = objc_msgSend_copyByRepairingBadReferences_clearUidHistory_(v90, v102, &v132, 0);

      objc_msgSend_setConditionalStyle_(v7, v104, v103, v105);
      objc_msgSend_setConditionalStyleAppliedRule_(v7, v106, 15, v107);
      v30 = 1;
    }

    else
    {
      v103 = v90;
    }

    v108 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v99, v100, v101);
    v112 = objc_msgSend_supportsPivotTables(v108, v109, v110, v111);

    v116 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v113, v114, v115);
    v120 = objc_msgSend_supportsCategorization(v116, v117, v118, v119);

    if ((v112 & v120 & 1) == 0)
    {
      v137.var0 = 0;
      v137.var1 = &v137;
      v137.var2.var0.var0.coordinate = 0x2020000000;
      LOBYTE(v137.var2.var0.var0._tableUID._lower) = 0;
      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = sub_2210B3E1C;
      v128[3] = &unk_27845E358;
      v122 = *(a1 + 32);
      v129 = v120;
      v128[4] = v122;
      v128[5] = &v137;
      v130 = v112;
      objc_msgSend_iterateFormulasWithContext_block_(v103, v121, &v132, v128);
      if (*(v137.var1 + 24) == 1)
      {

        objc_msgSend_setConditionalStyle_(v7, v123, 0, v124);
        objc_msgSend_setConditionalStyleAppliedRule_(v7, v125, 15, v126);
        v103 = 0;
        v30 = 1;
      }

      _Block_object_dispose(&v137, 8);
    }
  }

  return v30;
}

void sub_2210B3D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, v23);
  _Unwind_Resume(a1);
}

id sub_2210B3DF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_copyByMakingAllCategoryRefsIndirect_(a2, a2, a3, a4);

  return v4;
}

void sub_2210B3E1C(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3, _BYTE *a4)
{
  v7 = objc_msgSend_const_astNodeArray(a2, a2, a3, a4);
  v8 = *(a1 + 32);
  v14 = 0uLL;
  sub_22134BFF8(v15, v7, a3, (v8 + 776), &v14);
  v15[168] = *(a1 + 48) ^ 1;
  TSCEASTStreamIterator::rewrite(v15, v9, v10, v11);
  if ((v15[169] & 1) != 0 || (*(a1 + 48) & 1) == 0 && v15[170] == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v13 = *(*(a1 + 40) + 8);
  if (*(v13 + 24) & 1) != 0 || v15[171] == 1 && (*(a1 + 49) & 1) == 0 && (*(v13 + 24) = 1, (*(*(*(a1 + 40) + 8) + 24)))
  {
    *a4 = 1;
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v15, v12);
}

void sub_2210B3F18(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(va, a2);
  _Unwind_Resume(a1);
}

void sub_2210B3F2C(uint64_t a1, void *a2)
{
  v22 = a2;
  v6 = objc_msgSend_cellID(v22, v3, v4, v5);
  v10 = objc_msgSend_cellID(v22, v7, v8, v9);
  v15 = objc_msgSend_formulaAtCellID_(*(*(a1 + 32) + 224), v11, v6, v12);
  if (v15)
  {
    objc_msgSend_updateCalculationEngineForFormula_inBaseCellCoord_usingCalcEngine_(*(a1 + 32), v13, v15, v10, *(a1 + 40));
  }

  v19 = objc_msgSend_conditionalStyleSetAtCellID_(*(*(a1 + 32) + 224), v13, v6, v14);
  if (v19)
  {
    v20 = objc_msgSend_conditionalStyleFormulaOwner(*(a1 + 32), v16, v17, v18);
    objc_msgSend_replaceFormulaForConditionalStyle_atCellID_(v20, v21, v19, v6);
  }
}

void sub_2210B4050(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a2, v7);
  v24 = v8;
  v12 = objc_msgSend_emptyReferenceSetWrapper(*(a1 + 32), v9, v10, v11);
  v16 = v12;
  if (v12)
  {
    v17 = objc_msgSend_referenceSet(v12, v13, v14, v15);
    v18 = *(a1 + 32);
    *&v23.var0 = v8;
    v23.var6 = *(a1 + 40);
    objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v5, v19, v17, v18, &v23, 0, 0);
  }

  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v23, 0, 1);
  v20 = *(a1 + 32);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v22, &v23);
  objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v20, v21, &v24, a1 + 40, v16, &v22);
}

void sub_2210B46DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a64)
  {
    operator delete(a64);
  }

  sub_22109DBB8(&a65);
  sub_22109DBB8(&STACK[0x200]);
  v68 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v68;
    operator delete(v68);
  }

  v69 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v69;
    operator delete(v69);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210B480C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cell(v3, v4, v5, v6);
  if (!objc_msgSend_cellHasFormula(v3, v8, v9, v10))
  {
    v14 = 0;
    goto LABEL_22;
  }

  if (*(a1 + 272) == 1)
  {
    objc_msgSend_bakeFormulaToValue(v7, v11, v12, v13);
    v14 = 1;
    goto LABEL_22;
  }

  v15 = objc_msgSend_formulaObject(v7, v11, v12, v13);
  if (!objc_msgSend_isSpillFormula(v15, v16, v17, v18))
  {
    v28 = v15;
    v32 = objc_msgSend_cellID(v3, v29, v30, v31);
    if (v28)
    {
      v33 = v32;
      v34 = 0x7FFF7FFFFFFFLL;
      v35 = *(a1 + 264);
      if (v35 + WORD2(v32) <= 0x3E7 && (v35 >> 32) + v32 <= 0xF423F)
      {
        v34 = TSUOffsetColumnRowCoordinate();
      }

      *&v89.var0 = *(a1 + 48);
      sub_2212C7250(&v89.var2);
      TSCEFormulaRewriteContextRecord::operator=(&v89.var2, a1 + 64);
      if (*(a1 + 152))
      {
        v39 = objc_msgSend_tableUID(*(a1 + 32), v36, v37, v38);
        *&v87 = v34;
        *(&v87 + 1) = v39;
        v88 = v40;
        v43 = objc_msgSend_tableUID(*(a1 + 32), v40, v41, v42);
        v84.n128_u64[0] = v33;
        v84.n128_u64[1] = v43;
        v85 = v44;
        sub_2212C726C(&v86, &v87, &v84);
        v45 = v28;
        TSCEFormulaRewriteContext::setContainingCell(&v89, &v86);
        v46 = sub_22149252C(v45, &v89, *(a1 + 40), *(a1 + 152), 0);

        if (v45 == v46)
        {
          v14 = 0;
        }

        else
        {
          objc_msgSend_setFormulaObject_(v7, v47, v46, v48);
          v14 = 1;
        }

        v28 = v46;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v22 = objc_msgSend_spillOrigin(v15, v19, v20, v21);
  if (v22 != 0x7FFFFFFF && (v22 & 0xFFFF00000000) != 0x7FFF00000000)
  {
LABEL_16:
    v14 = 0;
    goto LABEL_21;
  }

  objc_msgSend_setFormulaObject_(v7, v23, 0, v24);
  objc_msgSend_clearValue(v7, v25, v26, v27);
  v14 = 1;
LABEL_21:

LABEL_22:
  if (objc_msgSend_cellHasConditionalStyle(v3, v11, v12, v13))
  {
    v52 = objc_msgSend_conditionalStyle(v7, v49, v50, v51);
    v56 = objc_msgSend_cellID(v3, v53, v54, v55);
    v57 = v56;
    v58 = 0x7FFF7FFFFFFFLL;
    v59 = *(a1 + 264);
    if (v59 + WORD2(v56) <= 0x3E7 && (v59 >> 32) + v56 <= 0xF423F)
    {
      v58 = TSUOffsetColumnRowCoordinate();
    }

    *&v89.var0 = *(a1 + 160);
    sub_2212C7250(&v89.var2);
    TSCEFormulaRewriteContextRecord::operator=(&v89.var2, a1 + 176);
    v60 = v52;
    v64 = v60;
    if (*(a1 + 152))
    {
      objc_msgSend_tableUID(*(a1 + 32), v61, v62, v63);
      v68 = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 32), v65, v66, v67);
      *&v87 = v58;
      *(&v87 + 1) = v68;
      v88 = v69;
      v72 = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 32), v69, v70, v71);
      v84.n128_u64[0] = v57;
      v84.n128_u64[1] = v72;
      v85 = v73;
      sub_2212C726C(&v86, &v87, &v84);
      TSCEFormulaRewriteContext::setContainingCell(&v89, &v86);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = sub_2210B4C58;
      v81[3] = &unk_27845DC60;
      v74 = *(a1 + 40);
      v75 = *(a1 + 152);
      v82 = v74;
      v83 = v75;
      v77 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v64, v76, &v89, v81);

      if (v77 != v64)
      {
        objc_msgSend_setConditionalStyle_(v7, v61, v77, v63);
        v14 = 1;
      }
    }

    else
    {
      v77 = v60;
    }

    if (objc_msgSend_conditionalStyleAppliedRule(v7, v61, v62, v63) != 15)
    {
      objc_msgSend_setConditionalStyleAppliedRule_(v7, v78, 15, v79);
      v14 = 1;
    }
  }

  return v14;
}

id sub_2210B4C58(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_22149252C(a2, a3, *(a1 + 32), *(a1 + 40), 0);

  return v3;
}

uint64_t sub_2210B4C98(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  sub_2212C7250(a1 + 64);
  TSCEFormulaRewriteContextRecord::operator=(a1 + 64, a2 + 64);
  *(a1 + 160) = *(a2 + 160);
  sub_2212C7250(a1 + 176);

  return TSCEFormulaRewriteContextRecord::operator=(a1 + 176, a2 + 176);
}

void sub_2210B4D04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4);
  objc_msgSend_setFormulaCoordSpace_(v6, v4, 0, v5);
}

uint64_t sub_2210B4E8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cell(a2, a2, a3, a4);
  v9 = v5;
  if (*(a1 + 32) == 1)
  {
    v10 = objc_msgSend_removeControlCellSpec(v5, v6, v7, v8);
    v14 = objc_msgSend_removeControlFormatSpares(v9, v11, v12, v13) | v10;
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 33) == 1 && objc_msgSend_hasImportWarningSet(v9, v6, v7, v8))
  {
    objc_msgSend_setImportWarningSet_(v9, v15, 0, v16);
    v14 = 1;
  }

  return v14 & 1;
}

void sub_2210B50D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_2210B5128(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v10 = objc_msgSend_const_astNodeArray(v6, v7, v8, v9);
  sub_22134BFF8(v16, v10, (*(*(a1 + 32) + 8) + 48), (a1 + 48), (a1 + 64));
  TSCEASTStreamIterator::rewrite(v16, v11, v12, v13);
  if ((v16[169] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v16, v14);

  return v6;
}

void sub_2210B51C8(_Unwind_Exception *a1, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(&a9, a2);

  _Unwind_Resume(a1);
}

void sub_2210B52A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_22107C860(v14 + 16, a13);
  sub_22107C860(v13, *v15);
  _Unwind_Resume(a1);
}

id sub_2210B587C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4 == 1)
  {
    objc_opt_class();
    v11 = objc_msgSend_mappedStyleForStyle_(*(a1 + 32), v9, v8, v10);
    v12 = TSUCheckedDynamicCast();

    v16 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v13, v14, v15);
    v20 = objc_msgSend_supportsBidiTablesUI(v16, v17, v18, v19);

    if ((v20 & 1) == 0)
    {
      v21 = objc_alloc_init(MEMORY[0x277D80AB8]);
      objc_msgSend_setIntValue_forProperty_(v21, v22, 0, 798);
      v24 = objc_msgSend_variationOfStyle_propertyMap_(*(a1 + 40), v23, v12, v21);

      v12 = v24;
    }
  }

  else
  {
    v12 = objc_msgSend_mappedStyleForStyle_(*(a1 + 32), v6, v8, v7);
  }

  return v12;
}

id sub_2210B5BCC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_mappedStyleForStyle_(*(a1 + 32), a2, a2, a4);

  return v4;
}

id sub_2210B5CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v4, v3, v5);

  return v3;
}

id sub_2210B5E44(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

BOOL sub_2210B5E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cell(v3, v4, v5, v6);
  v11 = objc_msgSend_cellID(v3, v8, v9, v10);
  v18 = objc_msgSend_cellStyle(v7, v12, v13, v14);
  if (v18)
  {
    v21 = objc_msgSend_defaultCellStyleForBaseCellCoord_useSoftDefault_outSource_(*(a1 + 32), v15, v11, 1, 0);
    v22 = v18 == v21;
    if (v18 == v21)
    {
      objc_msgSend_setCellStyle_(v7, v19, 0, v20);
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = objc_msgSend_textStyle(v7, v15, v16, v17);
  if (v24)
  {
    v27 = objc_msgSend_defaultTextStyleForBaseCellCoord_useSoftDefault_outSource_(*(a1 + 32), v23, v11, 1, 0);
    if (v24 == v27)
    {
      objc_msgSend_setTextStyle_(v7, v25, 0, v26);
      v22 = 1;
    }
  }

  return v22;
}

void sub_2210B6284(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (v6)
  {
    v33 = v6;
    v10 = objc_msgSend_stylesheet(v6, v7, v8, v9);
    v13 = v10;
    v14 = *(a1 + 32);
    if (v10 != v14)
    {
      if (!v10 || !v14)
      {
        if (!v10)
        {
          v15 = MEMORY[0x277D81150];
          v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableModel validateTableStylesInSameStylesheetExpectingDocSS:]_block_invoke", v12);
          v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v18);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 7278, 0, "invalid nil value for '%{public}s'", "styleStylesheet");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
LABEL_12:
          v24 = MEMORY[0x277D81150];
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableModel validateTableStylesInSameStylesheetExpectingDocSS:]_block_invoke", v12);
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v27);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 7279, 0, "Expected%{public}@ stylesheet %p on table network style %lu, got %p", *(a1 + 40), *(a1 + 32), a4, v13);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
          goto LABEL_13;
        }

LABEL_8:
        if (v14 && (objc_msgSend_isAncestorOf_(v14, v11, v13, v12) & 1) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if ((objc_msgSend_isAncestorOf_(v10, v11, v14, v12) & 1) == 0)
      {
        v14 = *(a1 + 32);
        goto LABEL_8;
      }
    }

LABEL_13:

    v6 = v33;
  }
}

void sub_2210B6A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cell(v3, v4, v5, v6);
  v11 = objc_msgSend_richTextValue(v7, v8, v9, v10);

  if (v11)
  {
    v15 = objc_msgSend_range(v11, v12, v13, v14);
    v17 = v16;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2210B6BB8;
    v21[3] = &unk_27845E530;
    v22 = *(a1 + 32);
    v23 = v3;
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v24 = v18;
    v25 = v19;
    v26 = v11;
    objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v26, v20, 0, v15, v17, v21);
  }
}

void sub_2210B6BB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v13 = objc_msgSend_stylesheet(v33, v7, v8, v9);
  if (!v13)
  {
LABEL_4:
    v19 = objc_msgSend_cellID(*(a1 + 40), v10, v11, v12);
    v20 = *(a1 + 48);
    v23 = objc_msgSend_tableStyleAreaForBaseCellCoord_(*(a1 + 56), v21, v19, v22);
    v13 = objc_msgSend_textStyleForTableStyleArea_(v20, v24, v23, v25);
    v26 = *(a1 + 32);
    v30 = objc_msgSend_propertyMap(v33, v27, v28, v29);
    v17 = objc_msgSend_variationOfStyle_propertyMap_(v26, v31, v13, v30);

    objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(*(a1 + 64), v32, v17, a3, a4, 0);
    goto LABEL_5;
  }

  v17 = objc_msgSend_stylesheet(v33, v10, v11, v12);
  if (v17 == *(a1 + 32))
  {
    v18 = objc_msgSend_parent(v33, v14, v15, v16);

    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_5:

LABEL_6:
}

void sub_2210B6D20(uint64_t a1, void *a2)
{
  v86 = a2;
  v3 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_cell(v86, v4, v5, v6);
  v11 = objc_msgSend_valueType(v7, v8, v9, v10);

  if (v11 == 4)
  {
    v15 = objc_msgSend_cell(v86, v12, v13, v14);
    objc_msgSend_copyToCell_(v15, v16, *(a1 + 32), v17);

    v18 = *(*(a1 + 40) + 696);
    v22 = objc_msgSend_cellID(v86, v19, v20, v21);
    v24 = objc_msgSend_rangeForCellID_includingBreak_(v18, v23, v22, 0);
    v28 = v25;
    if (v25)
    {
      v29 = v24;
      v30 = *(a1 + 40);
      v31 = v30[87];
      v32 = objc_msgSend_context(v30, v25, v26, v27);
      v34 = objc_msgSend_newSubstorageWithRange_context_flags_kind_(v31, v33, v29, v28, v32, 0, 5);

      if (objc_msgSend_canBeStoredInAStringValueCell(v34, v35, v36, v37))
      {
        v41 = *(a1 + 32);
        v42 = objc_msgSend_stringValue(v34, v38, v39, v40);
        objc_msgSend_setStringValue_(v41, v43, v42, v44);

        v46 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v34, v45, 0, 0);
        v50 = v46;
        if (v46)
        {
          v51 = objc_msgSend_propertyMap(v46, v47, v48, v49);
          v52 = *(a1 + 40);
          v56 = objc_msgSend_cellID(v86, v53, v54, v55);
          v59 = objc_msgSend_defaultTextStyleForBaseCellCoord_(v52, v57, v56, v58);
          v63 = objc_msgSend_documentRoot(*(a1 + 40), v60, v61, v62);
          v67 = objc_msgSend_stylesheet(v63, v64, v65, v66);
          v69 = objc_msgSend_variationOfStyle_propertyMap_(v67, v68, v59, v51);

          objc_msgSend_setTextStyle_(*(a1 + 32), v70, v69, v71);
        }
      }

      else
      {
        v75 = *(a1 + 40);
        v76 = v75[87];
        v77 = objc_msgSend_context(v75, v38, v39, v40);
        v50 = objc_msgSend_newSubstorageWithRange_context_flags_kind_(v76, v78, v29, v28, v77, 0, 5);

        objc_msgSend_setRichTextValue_(*(a1 + 32), v79, v50, v80);
      }

      objc_msgSend_setCurrentFormat_isExplicit_(*(a1 + 32), v81, *(a1 + 48), 1);
    }

    else
    {
      objc_msgSend_clearValue(*(a1 + 32), 0, v26, v27);
    }

    v82 = *(a1 + 56);
    v83 = *(a1 + 32);
    v84 = objc_msgSend_cellID(v86, v72, v73, v74);
    objc_msgSend_addCell_andCellID_(v82, v85, v83, v84);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_2210B70C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2210B7340(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = a2;
  v8 = objc_msgSend_cell(v17, v5, v6, v7);
  v12 = objc_msgSend_richTextValue(v8, v9, v10, v11);
  v13 = *(a1 + 32);

  if (v12 == v13)
  {
    *(*(*(a1 + 40) + 8) + 48) = objc_msgSend_cellID(v17, v14, v15, v16);
    *a3 = 1;
  }
}

void sub_2210B8C58(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>, uint64_t a5@<X3>)
{
  v6 = a2;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (objc_msgSend_affectsCellBorders(*(a1 + 32), a2, a3, a5))
  {
    v10 = *(*(a1 + 40) + 80);
    if (v10)
    {
      objc_msgSend_accumulateCellBordersConcurrentlyInRow_atColumns_(v10, v9, v6, a3);
    }

    else
    {
      v11 = 0uLL;
      v12 = 0;
    }

    sub_2210BC2A8(a4);
    *a4 = v11;
    a4[2] = v12;
    v12 = 0;
    v11 = 0uLL;
    v13 = &v11;
    sub_22107C2C0(&v13);
  }
}

void sub_2210B8D24(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v11 = a3;
  v12 = *(*(a1 + 32) + 224);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2210B8E34;
  v16[3] = &unk_27845E5F8;
  v19 = a5;
  v13 = *(a1 + 40);
  v15 = *(a1 + 32);
  v17 = v13;
  v18 = v15;
  if (v12)
  {
    objc_msgSend_accumulateCurrentCellsConcurrentlyInRow_rowInfo_atColumns_usingCellCreationBlock_(v12, v14, a2, v11, a4, v16);
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }
}

id sub_2210B8E34(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  if (*v5 == v5[1])
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*v5 + 8 * a3);
  }

  v10 = v6;
  if (a2 && sub_2210B8F38(a2, v7, v8, v9))
  {
    v11 = objc_msgSend_copy(*(a1 + 32), v7, v8, v9);
    objc_msgSend_inflateFromStorageRef_dataStore_suppressingTransmutation_(v11, v12, a2, *(*(a1 + 40) + 224), 1);
    objc_msgSend_setCellBorder_(v11, v13, v10, v14);
  }

  else if (v10)
  {
    v11 = objc_msgSend_copy(*(a1 + 32), v7, v8, v9);
    objc_msgSend_setCellBorder_(v11, v15, v10, v16);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL sub_2210B8F38(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (v4 != 5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSTCellStorageVersionCheck(TSTCellStorage *)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 138, 0, "Can't parse cell storage header version %d!", v4);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v12, v13, v14);
  }

  return v4 == 5;
}

void sub_2210B9338(uint64_t a1, TSUCellCoord a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (objc_msgSend_hasConditionalStyle(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_conditionalStyle(v6, v10, v11, v12);
    if (objc_msgSend_containsUidReferences(v13, v14, v15, v16))
    {
      v20 = *(a1 + 32);
      v21 = *(v20 + 216);
      v22 = objc_msgSend_ownerUID(*(v20 + 608), v17, v18, v19);
      v36.coordinate = a2;
      v36._tableUID._lower = v22;
      v36._tableUID._upper = v23;
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v37, v21, &v36);
      TSCEFormulaRewriteContext::setHostCellOverridesTableID(&v37, 0);
      v26 = objc_msgSend_copyToGeometricFormWithRewriteContext_(v13, v24, &v37, v25);

      objc_msgSend_setConditionalStyle_(v6, v27, v26, v28);
    }

    else
    {
      v26 = v13;
    }

    if (*(a1 + 40))
    {
      v29 = v26;
    }

    else
    {
      v30 = *(a1 + 32);
      v31 = *(v30 + 216);
      v36.coordinate = a2;
      v36._tableUID = *(v30 + 744);
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v37, v31, &v36);
      v29 = objc_msgSend_copyByConvertingToRelativeAncestorsWithRewriteContext_(v26, v32, &v37, v33);

      objc_msgSend_setConditionalStyle_(v6, v34, v29, v35);
    }
  }
}

void sub_2210B94B0(uint64_t a1, TSUCellCoord a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (objc_msgSend_hasFormulaContainingUidReferences(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_formulaObject(v6, v10, v11, v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 216);
    v21.coordinate = a2;
    v21._tableUID = *(v14 + 744);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v22, v15, &v21);
    v18 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v13, v16, &v22, v17);
    objc_msgSend_setFormulaObject_(v6, v19, v18, v20);
  }
}

void sub_2210B958C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v39 = a4;
  v11 = a5;
  if (a2 == 0x7FFFFFFF || (a2 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableModel setCellsConcurrently:ignoreFormula:clearImportWarnings:formulaReplacer:]_block_invoke_3", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 8048, 0, "baseCoord should be valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (!objc_msgSend_hasCommentStorage(v11, v8, v9, v10) || !objc_msgSend_hasCommentStorage(v39, v21, v22, v23) || (objc_msgSend_commentStorage(v11, v21, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend_commentStorage(v39, v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), v28, v24, v24 != v28))
  {
    if (objc_msgSend_hasCommentStorage(v11, v21, v22, v23))
    {
      v32 = objc_msgSend_commentStorage(v11, v29, v30, v31);
      objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(*(a1 + 32), v33, v32, a2, *MEMORY[0x277D805C8]);
    }

    if (objc_msgSend_hasCommentStorage(v39, v29, v30, v31))
    {
      v37 = objc_msgSend_commentStorage(v39, v34, v35, v36);
      objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(*(a1 + 32), v38, v37, a2, *MEMORY[0x277D805B8]);
    }
  }
}

void sub_2210B9788(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v37 = a4;
  v7 = a5;
  if ((objc_msgSend_hasRichText(v37, v8, v9, v10) & 1) == 0 && (objc_msgSend_hasRichText(v7, v11, v12, v13) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableModel setCellsConcurrently:ignoreFormula:clearImportWarnings:formulaReplacer:]_block_invoke_4", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 8069, 0, "cells called should have rich text");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_richTextValue(v7, v11, v12, v13);
  v30 = objc_msgSend_richTextValue(v37, v24, v25, v26);
  if (v23 != v30)
  {
    if (v23)
    {
      v31 = objc_msgSend_documentRoot(v23, v27, v28, v29);

      if (v31)
      {
        objc_msgSend_willBeRemovedFromDocumentRoot_(v23, v27, *(a1 + 32), v29);
        objc_msgSend_wasRemovedFromDocumentRoot_(v23, v32, *(a1 + 32), v33);
      }
    }

    if (v30)
    {
      v34 = objc_msgSend_documentRoot(v30, v27, v28, v29);

      if (!v34)
      {
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v30, v35, *(a1 + 32), 0);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v30, v36, *(a1 + 32), 0);
      }
    }
  }
}

void sub_2210B9ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_2210BA06C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_columnRowUIDMap(*(a1 + 32), a2, a3, a4);
  v8 = objc_msgSend_perChunkHelperWithSourceRect_columnRowUIDMap_(TSTTableModelCellModificationHelper, v7, a2, a3, v6);

  return v8;
}

uint64_t sub_2210BA0F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v10 = objc_msgSend_cell(v5, v7, v8, v9);
    v14 = objc_msgSend_copy(v10, v11, v12, v13);

    v18 = objc_msgSend_sourceRectOrigin(v6, v15, v16, v17);
    v22 = objc_msgSend_cellID(v5, v19, v20, v21);
    objc_msgSend_prepareToAddCells(v6, v23, v24, v25);
    v29 = objc_msgSend_sparseCellList(v6, v26, v27, v28);
    objc_msgSend_addCell_atUidOffset_(v29, v30, v14, (WORD2(v22) - WORD2(v18)) | ((v22 - v18) << 32));
  }

  return 0;
}

void sub_2210BA20C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_sparseCellList(v3, v4, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2210BA2FC;
  v11[3] = &unk_27845E6C0;
  v8 = v3;
  v12 = v8;
  v13 = *(a1 + 32);
  objc_msgSend_enumerateSeriallyByUidOffsetUsingBlock_(v7, v9, v11, v10);
}

void sub_2210BA2FC(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v8 = objc_msgSend_sourceRectOrigin(*(a1 + 32), v5, v6, v7);
  if (a2 + WORD2(v8) <= 0x3E7 && (a2 >> 32) + v8 <= 0xF423F)
  {
    TSUOffsetColumnRowCoordinate();
  }

  (*(*(a1 + 40) + 16))();
}