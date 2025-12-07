@interface TSTGroupNodeFormatManager
- (BOOL)mergedFormatChangedByAddingRowUID:(const TSKUIDStruct *)d andCellValue:(id)value groupBy:(id)by;
- (BOOL)mergedFormatChangedByRemovingRowUID:(const TSKUIDStruct *)d groupBy:(id)by;
- (TSTGroupNodeFormatManager)initWithArchive:(const void *)archive;
- (TSTGroupNodeFormatManager)initWithCellValue:(id)value;
- (void)encodeToArchive:(void *)archive forGroupBy:(id)by backwardCompat:(BOOL)compat;
- (void)p_recalculateMergedFormatWithGroupBy:(id)by;
- (void)reset;
- (void)unpackAfterUnarchiveForGroupBy:(id)by;
- (void)updateWithDocumentRoot:(id)root;
@end

@implementation TSTGroupNodeFormatManager

- (TSTGroupNodeFormatManager)initWithCellValue:(id)value
{
  valueCopy = value;
  v64.receiver = self;
  v64.super_class = TSTGroupNodeFormatManager;
  v5 = [(TSTGroupNodeFormatManager *)&v64 init];
  v9 = v5;
  if (!v5)
  {
    goto LABEL_20;
  }

  if (valueCopy)
  {
    v13 = objc_msgSend_valueType(valueCopy, v6, v7, v8);
    if ((v13 - 9) < 2)
    {
      goto LABEL_10;
    }

    if (v13 != 2)
    {
      if (v13)
      {
LABEL_11:
        v19 = objc_msgSend_tsceValue(valueCopy, v10, v11, v12);
        v23 = v19;
        if (v19)
        {
          objc_msgSend_format(v19, v20, v21, v22);
          formatState = v63._formatState;

          if (formatState == 1)
          {
            v28 = objc_msgSend_tsceValue(valueCopy, v25, v26, v27);
            v32 = v28;
            if (v28)
            {
              objc_msgSend_format(v28, v29, v30, v31);
            }

            else
            {
              memset(&v63, 0, sizeof(v63));
            }

            v33 = TSCEFormat::tskFormat(&v63, v29, v30, v31);

            TSCEFormat::TSCEFormat(&v63, v33, 0);
            v37 = objc_msgSend_tsceValue(valueCopy, v34, v35, v36);
            TSCEFormat::TSCEFormat(&v61, &v63);
            objc_msgSend_setFormat_(v37, v38, &v61, v39);
            v43 = objc_msgSend_locale(valueCopy, v40, v41, v42);
            v45 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v44, v37, v43);

            valueCopy = v45;
          }
        }

        else
        {
        }

        goto LABEL_18;
      }

LABEL_10:
      v9->_noFormatMergingNeeded = 1;
      goto LABEL_11;
    }

    v14 = objc_msgSend_format(valueCopy, v10, v11, v12);
    v18 = objc_msgSend_formatType(v14, v15, v16, v17);

    if (v18 == 1)
    {
      goto LABEL_10;
    }

    v52 = objc_msgSend_tsceValue(valueCopy, v10, v11, v12);
    TSCEFormat::TSCEFormat(&v62, 1);
    TSCEFormat::TSCEFormat(&v63, &v62);
    objc_msgSend_setFormat_(v52, v53, &v63, v54);
    v58 = objc_msgSend_locale(valueCopy, v55, v56, v57);
    v60 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v59, v52, v58);

    v9->_noFormatMergingNeeded = 1;
    valueCopy = v60;
    if (v60)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5->_noFormatMergingNeeded = 1;
  }

  valueCopy = 0;
LABEL_18:
  objc_storeStrong(&v9->_cellValue, valueCopy);
  if (!v9->_noFormatMergingNeeded)
  {
    v49 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v46, v47, v48);
    rowLookupKeysForFormat = v9->_rowLookupKeysForFormat;
    v9->_rowLookupKeysForFormat = v49;
  }

LABEL_20:

  return v9;
}

- (void)reset
{
  if (!self->_noFormatMergingNeeded)
  {
    if (!self->_cellValue)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupNodeFormatManager reset]", v3);
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v8);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 85, 0, "invalid nil value for '%{public}s'", "_cellValue");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    }

    v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3);
    rowLookupKeysForFormat = self->_rowLookupKeysForFormat;
    self->_rowLookupKeysForFormat = v14;

    v19 = objc_msgSend_tsceValue(self->_cellValue, v16, v17, v18);
    v29._tskFormat = 0;
    v29._formatType = 0;
    v29._formatState = 0;
    *&v29._durationFormat = 1057;
    *(&v29._durationFormat + 2) = 1;
    *&v29._baseFormat.base = -50266102;
    v29._numberFormat = 253;
    TSCEFormat::TSCEFormat(&v30, &v29);
    objc_msgSend_setFormat_(v19, v20, &v30, v21);
    v25 = objc_msgSend_locale(self->_cellValue, v22, v23, v24);
    v27 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v26, v19, v25);
    cellValue = self->_cellValue;
    self->_cellValue = v27;
  }
}

- (void)p_recalculateMergedFormatWithGroupBy:(id)by
{
  byCopy = by;
  if (!self->_noFormatMergingNeeded)
  {
    if (objc_msgSend_count(self->_rowLookupKeysForFormat, v4, v5, v6))
    {
      v179[0] = 0;
      v179[1] = v179;
      v179[2] = 0x2020000000;
      v180 = 1;
      v167._tskFormat = 0;
      *&v167._formatType = &v167;
      *&v167._durationFormat = 0x5012000000;
      *&v167._numberFormat.decimalPlaces = sub_2212D36F0;
      v168 = nullsub_34;
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v173 = v173 & 0xC080 | 0x421;
      v174 = v174 & 0xF8 | 1;
      v175 = -50266102;
      v176 = -3;
      v177 &= 0xE0u;
      v178 = 0;
      rowLookupKeysForFormat = self->_rowLookupKeysForFormat;
      v166[0] = MEMORY[0x277D85DD0];
      v166[1] = 3221225472;
      v166[2] = sub_2212D3700;
      v166[3] = &unk_278462AD0;
      v166[4] = v179;
      v166[5] = &v167;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(rowLookupKeysForFormat, v8, v166, v10);
      TSCEFormat::formatBySmashingConflicts(&v165, (*&v167._formatType + 48), v12);
      TSCEFormat::operator=(*&v167._formatType + 48, &v165);
      v16 = *(*&v167._formatType + 56);
      if (v16 == 274)
      {
        v35 = TSCEFormat::customFormat((*&v167._formatType + 48), v13, v14, v15);
        v39 = objc_msgSend_tsceValue(self->_cellValue, v36, v37, v38);
        v43 = objc_msgSend_number(v39, v40, v41, v42);
        objc_msgSend_doubleRepresentation(v43, v44, v45, v46);
        v19 = objc_msgSend_currencyCodeForValue_(v35, v47, v48, v49);

        if (v19)
        {
LABEL_6:
          v20 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v17, v19, v18);
LABEL_10:
          v50 = [TSCENumberValue alloc];
          v54 = objc_msgSend_tsceValue(self->_cellValue, v51, v52, v53);
          v58 = objc_msgSend_number(v54, v55, v56, v57);
          v165._tskFormat = objc_msgSend_decimalRepresentation(v58, v59, v60, v61);
          *&v165._formatType = v62;
          v63 = objc_msgSend_initWithDecimal_format_baseUnit_(v50, v62, &v165, *&v167._formatType + 48, v20);

          v64 = v63;
          v68 = objc_msgSend_locale(self->_cellValue, v65, v66, v67);
          v70 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v69, v64, v68);
          cellValue = self->_cellValue;
          self->_cellValue = v70;

          v72 = v64;
LABEL_22:

          _Block_object_dispose(&v167, 8);
          _Block_object_dispose(v179, 8);
          goto LABEL_23;
        }
      }

      else
      {
        if (v16 != 257)
        {
          if (objc_msgSend_valueType(self->_cellValue, v13, v14, v15) == 5 && (objc_msgSend_tsceValue(self->_cellValue, v73, v74, v75), v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend_number(v76, v77, v78, v79), v80 = objc_claimAutoreleasedReturnValue(), v84 = objc_msgSend_dimension(v80, v81, v82, v83), v80, v76, v84))
          {
            v85 = [TSCENumberValue alloc];
            v89 = objc_msgSend_tsceValue(self->_cellValue, v86, v87, v88);
            v93 = objc_msgSend_number(v89, v90, v91, v92);
            v165._tskFormat = objc_msgSend_decimalRepresentation(v93, v94, v95, v96);
            *&v165._formatType = v97;
            v98 = objc_msgSend_initWithDecimal_format_(v85, v97, &v165, *&v167._formatType + 48);

            v72 = v98;
            v64 = objc_msgSend_locale(self->_cellValue, v99, v100, v101);
            v103 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v102, v72, v64);
          }

          else
          {
            if (objc_msgSend_valueType(self->_cellValue, v73, v74, v75) != 5 || (objc_msgSend_tsceValue(self->_cellValue, v104, v105, v106), v107 = objc_claimAutoreleasedReturnValue(), objc_msgSend_number(v107, v108, v109, v110), v111 = objc_claimAutoreleasedReturnValue(), v115 = objc_msgSend_dimension(v111, v112, v113, v114), v111, v107, v115))
            {
              v19 = objc_msgSend_tsceValue(self->_cellValue, v104, v105, v106);
              TSCEFormat::TSCEFormat(&v165, (*&v167._formatType + 48));
              objc_msgSend_setFormat_(v19, v116, &v165, v117);
              v72 = objc_msgSend_locale(self->_cellValue, v118, v119, v120);
              v122 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v121, v19, v72);
              v64 = self->_cellValue;
              self->_cellValue = v122;
              goto LABEL_22;
            }

            v123 = objc_msgSend_tsceValue(self->_cellValue, v104, v105, v106);
            v127 = objc_msgSend_number(v123, v124, v125, v126);
            v131 = objc_msgSend_unit(v127, v128, v129, v130);

            if (*(*&v167._formatType + 56) == 268)
            {
              v135 = TSCEFormat::durationFormat((*&v167._formatType + 48), v132, v133, v134);
              v131 = sub_221387C78(BYTE1(v135) & 0x3F);
            }

            else
            {
              v136 = MEMORY[0x277D81150];
              v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, "[TSTGroupNodeFormatManager p_recalculateMergedFormatWithGroupBy:]", v134);
              v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v139);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v136, v141, v137, v140, 153, 0, "Expected duration format.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v142, v143, v144);
            }

            v145 = [TSCENumberValue alloc];
            v149 = objc_msgSend_tsceValue(self->_cellValue, v146, v147, v148);
            v153 = objc_msgSend_number(v149, v150, v151, v152);
            v157 = objc_msgSend_rawDecimalValue(v153, v154, v155, v156);
            v159 = objc_msgSend_initWithDecimal_format_baseUnit_(v145, v158, v157, *&v167._formatType + 48, v131);

            v72 = v159;
            v64 = objc_msgSend_locale(self->_cellValue, v160, v161, v162);
            v103 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v163, v72, v64);
          }

          v164 = self->_cellValue;
          self->_cellValue = v103;

          v19 = v72;
          goto LABEL_22;
        }

        TSCEFormat::numberFormat((*&v167._formatType + 48), v13, v14, v15);
        v19 = TSUCurrencyCodeForIndex();
        if (v19)
        {
          goto LABEL_6;
        }
      }

      v20 = 0;
      goto LABEL_10;
    }

    v21 = objc_msgSend_tsceValue(self->_cellValue, v8, v9, v10);
    v25 = objc_msgSend_copy(v21, v22, v23, v24);

    v181._tskFormat = 0;
    v181._formatType = 0;
    v181._formatState = 0;
    *&v181._durationFormat = 1057;
    *(&v181._durationFormat + 2) = 1;
    *&v181._baseFormat.base = -50266102;
    v181._numberFormat = 253;
    TSCEFormat::TSCEFormat(&v167, &v181);
    objc_msgSend_setFormat_(v25, v26, &v167, v27);
    v31 = objc_msgSend_locale(self->_cellValue, v28, v29, v30);
    v33 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v32, v25, v31);
    v34 = self->_cellValue;
    self->_cellValue = v33;
  }

LABEL_23:
}

- (BOOL)mergedFormatChangedByAddingRowUID:(const TSKUIDStruct *)d andCellValue:(id)value groupBy:(id)by
{
  valueCopy = value;
  byCopy = by;
  if (self->_noFormatMergingNeeded)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v16 = objc_msgSend_format(valueCopy, v9, v10, v11);
    if (!v16)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTGroupNodeFormatManager mergedFormatChangedByAddingRowUID:andCellValue:groupBy:]", v15);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 178, 0, "invalid nil value for '%{public}s'", "format");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }

    v29 = objc_msgSend_objectForKey_(self->_rowLookupKeysForFormat, v14, v16, v15);
    if (v29)
    {
      v13 = 0;
    }

    else
    {
      if (objc_msgSend_count(self->_rowLookupKeysForFormat, v26, v27, v28))
      {
        v13 = 1;
      }

      else
      {
        v13 = objc_msgSend_isEqual_(self->_cellValue, v30, valueCopy, v31) ^ 1;
      }

      v29 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_rowLookupKeysForFormat, v32, v29, v16);
    }

    if (!byCopy)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTGroupNodeFormatManager mergedFormatChangedByAddingRowUID:andCellValue:groupBy:]", v28);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 187, 0, "invalid nil value for '%{public}s'", "groupBy");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
    }

    v42 = objc_msgSend_lookupKeyForRowUID_(byCopy, v26, d, v28);
    objc_msgSend_addIndex_(v29, v43, v42, v44);
    if (v13)
    {
      objc_msgSend_p_recalculateMergedFormatWithGroupBy_(self, v45, byCopy, v46);
    }
  }

  return v13;
}

- (BOOL)mergedFormatChangedByRemovingRowUID:(const TSKUIDStruct *)d groupBy:(id)by
{
  v50 = *MEMORY[0x277D85DE8];
  byCopy = by;
  v9 = byCopy;
  if (self->_noFormatMergingNeeded)
  {
    goto LABEL_16;
  }

  if (!byCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTGroupNodeFormatManager mergedFormatChangedByRemovingRowUID:groupBy:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 203, 0, "invalid nil value for '%{public}s'", "groupBy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = objc_msgSend_lookupKeyForRowUID_(v9, v7, d, v8);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v23 = objc_msgSend_allKeys(self->_rowLookupKeysForFormat, v20, v21, v22);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v45, v49, 16);
  if (!v27)
  {
LABEL_15:

LABEL_16:
    v41 = 0;
    goto LABEL_17;
  }

  v28 = *v46;
LABEL_6:
  v29 = 0;
  while (1)
  {
    if (*v46 != v28)
    {
      objc_enumerationMutation(v23);
    }

    v30 = *(*(&v45 + 1) + 8 * v29);
    v31 = objc_msgSend_objectForKeyedSubscript_(self->_rowLookupKeysForFormat, v25, v30, v26);
    if (objc_msgSend_containsIndex_(v31, v32, v19, v33))
    {
      break;
    }

    if (v27 == ++v29)
    {
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v45, v49, 16);
      if (v27)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  objc_msgSend_removeIndex_(v31, v34, v19, v35);
  if (objc_msgSend_count(v31, v36, v37, v38))
  {

    goto LABEL_15;
  }

  objc_msgSend_removeObjectForKey_(self->_rowLookupKeysForFormat, v39, v30, v40);

  objc_msgSend_p_recalculateMergedFormatWithGroupBy_(self, v43, v9, v44);
  v41 = 1;
LABEL_17:

  return v41;
}

- (void)updateWithDocumentRoot:(id)root
{
  rootCopy = root;
  v27 = rootCopy;
  if (rootCopy)
  {
    v8 = objc_msgSend_documentLocale(rootCopy, v5, v6, v7);
    objc_msgSend_setLocale_(self->_cellValue, v9, v8, v10);

    cellValue = self->_cellValue;
    v15 = objc_msgSend_customFormatList(v27, v12, v13, v14);
    objc_msgSend_updateWithCustomFormatList_(cellValue, v16, v15, v17);
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNodeFormatManager updateWithDocumentRoot:]", v7);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 232, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }
}

- (TSTGroupNodeFormatManager)initWithArchive:(const void *)archive
{
  if (*(archive + 16))
  {
    v10 = *(archive + 12);
    v11 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, archive, v3);
    v6 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v12, v10, v11);

    v7 = objc_msgSend_initWithCellValue_(self, v13, v6, v14);
  }

  else
  {
    v6 = 0;
    v7 = objc_msgSend_initWithCellValue_(self, a2, 0, v3);
  }

  v52 = v7;
  if (v7)
  {
    v15 = *(archive + 8);
    v16 = *(archive + 20);
    if (v16 < 1)
    {
      if (v15 != *(archive + 14))
      {
        v30 = MEMORY[0x277D81150];
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTGroupNodeFormatManager initWithArchive:]", v9);
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v33);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 269, 0, "Expected equal size arrays for the format dictionary.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
      }

      v39 = objc_opt_new();
      upgradeRowUidsForFormat = v52->_upgradeRowUidsForFormat;
      v52->_upgradeRowUidsForFormat = v39;

      if (v15 >= 1)
      {
        for (i = 0; i != v15; ++i)
        {
          v44 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v41, *(*(archive + 5) + 8 * i + 8), v42);
          v46 = objc_opt_new();
          v47 = *(*(archive + 8) + 8 * i + 8);
          if (*(v47 + 24) >= 1)
          {
            v48 = 0;
            do
            {
              v49 = TSKUIDStruct::loadFromMessage(*(*(v47 + 32) + 8 * v48 + 8), v45);
              objc_msgSend_addUUID_(v46, v50, v49, v50);
              ++v48;
              v47 = *(*(archive + 8) + 8 * i + 8);
            }

            while (v48 < *(v47 + 24));
          }

          objc_msgSend_setObject_forKey_(v52->_upgradeRowUidsForFormat, v45, v46, v44);
        }
      }
    }

    else if (v15 == v16 || (v17 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTGroupNodeFormatManager initWithArchive:]", v9), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v20), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 252, 0, "Expected equal size arrays for the format dictionary."), v21, v18, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25), v15 >= 1))
    {
      v26 = 8;
      do
      {
        v27 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, *(*(archive + 5) + v26), v9);
        v28 = objc_opt_new();
        sub_22126A778(*(*(archive + 11) + v26), &v54);
        v53 = v28;
        TSUIndexSet::enumerateRangesUsingBlock();
        objc_msgSend_setObject_forKey_(v52->_rowLookupKeysForFormat, v29, v53, v27);

        TSUIndexSet::~TSUIndexSet(&v54);
        v26 += 8;
        --v15;
      }

      while (v15);
    }
  }

  return v52;
}

- (void)unpackAfterUnarchiveForGroupBy:(id)by
{
  v29 = *MEMORY[0x277D85DE8];
  byCopy = by;
  upgradeRowUidsForFormat = self->_upgradeRowUidsForFormat;
  if (upgradeRowUidsForFormat)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = upgradeRowUidsForFormat;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v24, v28, 16);
    if (v9)
    {
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = objc_msgSend_objectForKey_(self->_upgradeRowUidsForFormat, v7, v12, v8);
          v14 = objc_opt_new();
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = sub_2212D44EC;
          v21[3] = &unk_27845D8B0;
          v22 = byCopy;
          v15 = v14;
          v23 = v15;
          objc_msgSend_foreachUuid_(v13, v16, v21, v17);
          objc_msgSend_setObject_forKey_(self->_rowLookupKeysForFormat, v18, v15, v12);
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v24, v28, 16);
      }

      while (v9);
    }

    v19 = self->_upgradeRowUidsForFormat;
    self->_upgradeRowUidsForFormat = 0;
  }
}

- (void)encodeToArchive:(void *)archive forGroupBy:(id)by backwardCompat:(BOOL)compat
{
  byCopy = by;
  rowLookupKeysForFormat = self->_rowLookupKeysForFormat;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2212D464C;
  v18[3] = &unk_278462B48;
  archiveCopy = archive;
  v10 = byCopy;
  v19 = v10;
  compatCopy = compat;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(rowLookupKeysForFormat, v11, v18, v12);
  cellValue = self->_cellValue;
  if (cellValue)
  {
    *(archive + 4) |= 1u;
    v16 = *(archive + 12);
    if (!v16)
    {
      v17 = *(archive + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v17);
      *(archive + 12) = v16;
    }

    objc_msgSend_encodeCellValueToArchive_(cellValue, v13, v16, v14);
  }
}

@end