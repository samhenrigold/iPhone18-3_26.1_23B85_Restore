@interface TSCEGridValue
+ (BOOL)valueAtGridCoordPassesCriteria:(TSCEGridAccessContext *)criteria coord:(TSCEGridCoord)coord criteria:(id)a5 outError:(id *)error;
+ (BOOL)valueAtIndexPassesCriteria:(TSCEGridAccessContext *)criteria index:(unint64_t)index criteria:(id)a5;
+ (id)emptyGrid;
+ (id)gridValue:(id)value;
+ (id)gridValue:(id)value format:(const TSCEFormat *)format;
+ (id)sortCriteriaByCost:(id)cost;
- (TSCEGridValue)init;
- (TSCEGridValue)initWithGrid:(id)grid;
- (TSCEGridValue)initWithGrid:(id)grid format:(const TSCEFormat *)format;
- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepResolveInPlace:(id)place;
- (id)resolvedValueAtGridCoord:(TSCEGridCoord)coord accessContext:(TSCEGridAccessContext *)context;
- (id)subGridValueAtGridCoord:(TSCEGridCoord)coord width:(int)width height:(int)height accessContext:(TSCEGridAccessContext *)context;
- (id)uniqueIndexForGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index considerTypeForUnique:(BOOL)unique rowOffset:(unint64_t)offset;
- (id)uniqueIndexesFor2DGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index byRowProcessing:(BOOL)processing uniqueMode:(unint64_t)mode;
- (id)valueAtGridCoord:(TSCEGridCoord)coord accessContext:(TSCEGridAccessContext *)context;
- (id)valueAtIndexNoThrow:(TSCEGridAccessContext *)throw index:(unint64_t)index;
- (unint64_t)count;
@end

@implementation TSCEGridValue

+ (id)emptyGrid
{
  v2 = objc_alloc_init(TSCEGridValue);

  return v2;
}

+ (id)gridValue:(id)value
{
  valueCopy = value;
  v4 = [TSCEGridValue alloc];
  v7 = objc_msgSend_initWithGrid_(v4, v5, valueCopy, v6);

  return v7;
}

+ (id)gridValue:(id)value format:(const TSCEFormat *)format
{
  valueCopy = value;
  v6 = [TSCEGridValue alloc];
  v8 = objc_msgSend_initWithGrid_format_(v6, v7, valueCopy, format);

  return v8;
}

- (TSCEGridValue)init
{
  v3.receiver = self;
  v3.super_class = TSCEGridValue;
  return [(TSCEValue *)&v3 init];
}

- (TSCEGridValue)initWithGrid:(id)grid
{
  gridCopy = grid;
  v9.receiver = self;
  v9.super_class = TSCEGridValue;
  v6 = [(TSCEValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grid, grid);
  }

  return v7;
}

- (TSCEGridValue)initWithGrid:(id)grid format:(const TSCEFormat *)format
{
  gridCopy = grid;
  v11.receiver = self;
  v11.super_class = TSCEGridValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:format];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_grid, grid);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TSCEGridValue;
  v4 = [(TSCEValue *)&v6 copyWithZone:0];
  objc_storeStrong(v4 + 7, self->_grid);
  return v4;
}

- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error
{
  grid = self->_grid;
  objc_msgSend_format(self, a2, grid, spec, *&index, format, error);
  v9 = objc_msgSend_gridValue_format_(TSCEGridValue, v8, grid, &v11);

  return v9;
}

- (id)deepResolveInPlace:(id)place
{
  v5 = objc_msgSend_deepResolveInPlace_(self->_grid, a2, place, v3);
  grid = self->_grid;
  self->_grid = v5;

  return self;
}

- (unint64_t)count
{
  result = self->_grid;
  if (result)
  {
    return objc_msgSend_count(result, a2, v2, v3);
  }

  return result;
}

- (id)valueAtGridCoord:(TSCEGridCoord)coord accessContext:(TSCEGridAccessContext *)context
{
  coordCopy = coord;
  v4 = objc_msgSend_valueAtGridCoord_accessContext_(self->_grid, a2, &coordCopy, context);

  return v4;
}

- (id)resolvedValueAtGridCoord:(TSCEGridCoord)coord accessContext:(TSCEGridAccessContext *)context
{
  coordCopy = coord;
  v4 = objc_msgSend_resolvedValueAtGridCoord_accessContext_(self->_grid, a2, &coordCopy, context);

  return v4;
}

- (id)valueAtIndexNoThrow:(TSCEGridAccessContext *)throw index:(unint64_t)index
{
  if (objc_msgSend_count(self, a2, throw, index) <= index)
  {
    v10 = objc_msgSend_errorForErrorType_(TSCEError, v7, 24, v8);
    v9 = objc_msgSend_errorValue_(TSCEErrorValue, v11, v10, v12);
  }

  else
  {
    v9 = objc_msgSend_valueAtIndex_accessContext_(self->_grid, v7, index, throw);
  }

  return v9;
}

- (id)subGridValueAtGridCoord:(TSCEGridCoord)coord width:(int)width height:(int)height accessContext:(TSCEGridAccessContext *)context
{
  coordCopy = coord;
  v6 = objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(self->_grid, a2, &coordCopy, *&width, *&height, context);

  return v6;
}

- (id)uniqueIndexForGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index considerTypeForUnique:(BOOL)unique rowOffset:(unint64_t)offset
{
  uniqueCopy = unique;
  v68 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, grid, spec);
  specCopy = spec;
  v67 = objc_msgSend_functionIndex(spec, v11, v12, v13);
  v17 = objc_msgSend_count(self, v14, v15, v16);
  gridCopy = grid;
  v74[0] = gridCopy;
  v74[1] = spec;
  v75 = 0;
  indexCopy = index;
  v77[0] = 0;
  *(v77 + 3) = 0;
  v78 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v79 = 0;
  v80 = 0;
  v66 = objc_msgSend_locale(gridCopy, v19, v20, v21);
  v65 = objc_msgSend_locale(v66, v22, v23, v24);
  if (v17)
  {
    v26 = 0;
    v72 = gridCopy;
    do
    {
      v27 = objc_msgSend_valueAtIndex_accessContext_(self, v25, v26, v74);
      if ((objc_msgSend_isError(v27, v28, v29, v30) & 1) == 0 && (objc_msgSend_isNil(v27, v31, v32, v33) & 1) == 0)
      {
        if (uniqueCopy)
        {
          if (objc_msgSend_isReferenceValue(v27, v34, v35, v36))
          {
            v40 = objc_msgSend_asReferenceValue(v27, v37, v38, v39);
            v42 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v40, v41, v72, 1);

            v45 = objc_msgSend_errorWithContext_(v42, v43, v72, v44);

            v27 = v42;
            objc_msgSend_canonicalKeyStringForLocale_(v42, v46, v66, v47);
          }

          else
          {
            v45 = 0;
            objc_msgSend_canonicalKeyStringForLocale_(v27, v37, v66, v39);
          }

          v56 = v55 = v45;
        }

        else
        {
          v73 = 0;
          v48 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v27, v34, gridCopy, specCopy, index, &v73);
          v49 = v73;
          v53 = v49;
          if (v67 == 345)
          {
            v54 = objc_msgSend_lowercaseStringWithLocale_(v48, v50, v65, v52);

            v55 = v53;
            v56 = v54;
          }

          else
          {
            v55 = v49;
            v56 = v48;
          }
        }

        gridCopy = v72;
        if (!v55)
        {
          gridCopy = v72;
          if (objc_msgSend_length(v56, v50, v51, v52))
          {
            v62 = objc_msgSend_objectForKey_(v68, v57, v56, v58);
            if (!v62)
            {
              v62 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v59, v60, v61);
              objc_msgSend_setObject_forKey_(v68, v63, v62, v56);
            }

            objc_msgSend_addIndex_(v62, v59, offset, v61);
          }
        }
      }

      ++v26;
      ++offset;
    }

    while (v17 != v26);
  }

  return v68;
}

- (id)uniqueIndexesFor2DGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index byRowProcessing:(BOOL)processing uniqueMode:(unint64_t)mode
{
  v151 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, grid, spec);
  v153 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13, v14);
  v165[0] = grid;
  v165[1] = spec;
  v166 = 0;
  indexCopy = index;
  v168[0] = 0;
  *(v168 + 3) = 0;
  v169 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v170 = 0;
  v171 = 0;
  v154 = v165[0];
  v18 = objc_msgSend_locale(v165[0], v15, v16, v17);
  v150 = objc_msgSend_locale(v18, v19, v20, v21);
  indexCopy2 = index;
  v164 = objc_msgSend_dimensions(self, v22, v23, v24);
  v162 = 0;
  v163 = 0;
  v160 = 0;
  v161 = 0;
  v152 = v18;
  if (processing)
  {
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v172[0] = objc_msgSend_valueAtGridCoord_accessContext_(self, v25, v26, v165);
      if (objc_msgSend_isReferenceValue(v172[0], v28, v29, v30))
      {
        v34 = objc_msgSend_asReferenceValue(v172[0], v31, v32, v33);
        v36 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v34, v35, v154, 1);
        v37 = v172[0];
        v172[0] = v36;
      }

      v38 = objc_msgSend_nativeType(v172[0], v31, v32, v33);
      if (v38 == 5)
      {
        break;
      }

      if (v38 == 7)
      {
        v159 = 0;
        v42 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v172[0], v39, v154, spec, indexCopy2, &v159);
        v43 = v159;
        v46 = objc_msgSend_lowercaseStringWithLocale_(v42, v44, v150, v45);

        v49 = objc_msgSend_stringValue_(TSCEStringValue, v47, v46, v48);
        v50 = v172[0];
        v172[0] = v49;

LABEL_14:
      }

      sub_221179A54(&v160, v172);
      row = v163.row;
      v26 = TSCEGridDimensions::nextCoordRowMajorOrder(&v164, &v163);
      v163 = v26;
      if (row != HIDWORD(v26))
      {
        v67 = [TSTGroupValueTuple alloc];
        v69 = objc_msgSend_initWithTSCEValues_locale_(v67, v68, &v160, v18);
        v72 = objc_msgSend_objectForKey_(v153, v70, v69, v71);
        v76 = v72;
        if (v72)
        {
          if (mode == 1)
          {
            v77 = objc_msgSend_unsignedIntegerValue(v72, v73, v74, v75);
            objc_msgSend_removeIndex_(v151, v78, v77, v79);
          }
        }

        else
        {
          v80 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v73, row, v75);
          objc_msgSend_setObject_forKey_(v153, v81, v80, v69);

          objc_msgSend_addIndex_(v151, v82, row, v83);
        }

        v84 = v160;
        for (i = v161; i != v84; i -= 8)
        {
          v86 = *(i - 8);
        }

        v161 = v84;

        v18 = v152;
      }

      if (v26 == 0x7FFFFFFF || HIDWORD(v26) == 0x7FFFFFFF)
      {
        goto LABEL_51;
      }
    }

    v43 = objc_msgSend_asNumberValue(v172[0], v39, v40, v41);
    if (objc_msgSend_hasUnits(v43, v51, v52, v53))
    {
      v158._tskFormat = objc_msgSend_decimalRepresentation(v43, v54, v55, v56);
      *&v158._formatType = v57;
      v59 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v57, &v158, v58);

      v60 = v59;
      v43 = v60;
    }

    else
    {
      v60 = objc_msgSend_copy(v172[0], v54, v55, v56);
    }

    v61 = v172[0];
    v172[0] = v60;

    if (!v27)
    {
      v27 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v62, 256, v18);
    }

    v63 = v172[0];
    TSCEFormat::TSCEFormat(&v157, v27, 0);
    TSCEFormat::TSCEFormat(&v158, &v157);
    objc_msgSend_setFormat_(v63, v64, &v158, v65);
    goto LABEL_14;
  }

  v87 = 0;
  v27 = 0;
  do
  {
    v172[0] = objc_msgSend_valueAtGridCoord_accessContext_(self, v25, v87, v165);
    if (objc_msgSend_isReferenceValue(v172[0], v88, v89, v90))
    {
      v94 = objc_msgSend_asReferenceValue(v172[0], v91, v92, v93);
      v96 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v94, v95, v154, 1);
      v97 = v172[0];
      v172[0] = v96;
    }

    v98 = objc_msgSend_nativeType(v172[0], v91, v92, v93);
    if (v98 == 5)
    {
      v103 = objc_msgSend_asNumberValue(v172[0], v99, v100, v101);
      if (objc_msgSend_hasUnits(v103, v111, v112, v113))
      {
        v158._tskFormat = objc_msgSend_decimalRepresentation(v103, v114, v115, v116);
        *&v158._formatType = v117;
        v119 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v117, &v158, v118);

        v120 = v119;
        v103 = v120;
      }

      else
      {
        v120 = objc_msgSend_copy(v172[0], v114, v115, v116);
      }

      v121 = v172[0];
      v172[0] = v120;

      if (!v27)
      {
        v27 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v122, 256, v18);
      }

      v123 = v172[0];
      TSCEFormat::TSCEFormat(&v155, v27, 0);
      TSCEFormat::TSCEFormat(&v158, &v155);
      objc_msgSend_setFormat_(v123, v124, &v158, v125);
    }

    else
    {
      if (v98 != 7)
      {
        goto LABEL_40;
      }

      v156 = 0;
      v102 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v172[0], v99, v154, spec, indexCopy2, &v156);
      v103 = v156;
      v106 = objc_msgSend_lowercaseStringWithLocale_(v102, v104, v150, v105);

      v109 = objc_msgSend_stringValue_(TSCEStringValue, v107, v106, v108);
      v110 = v172[0];
      v172[0] = v109;
    }

LABEL_40:
    sub_221179A54(&v160, v172);
    column = v163.column;
    v87 = TSCEGridDimensions::nextCoordColumnMajorOrder(&v164, &v163);
    v163 = v87;
    if (column != v87)
    {
      v127 = [TSTGroupValueTuple alloc];
      v129 = objc_msgSend_initWithTSCEValues_locale_(v127, v128, &v160, v18);
      v132 = objc_msgSend_objectForKey_(v153, v130, v129, v131);
      v136 = v132;
      if (v132)
      {
        if (mode == 1)
        {
          v137 = objc_msgSend_unsignedIntegerValue(v132, v133, v134, v135);
          objc_msgSend_removeIndex_(v151, v138, v137, v139);
        }
      }

      else
      {
        v140 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v133, column, v135);
        objc_msgSend_setObject_forKey_(v153, v141, v140, v129);

        objc_msgSend_addIndex_(v151, v142, column, v143);
      }

      v144 = v160;
      for (j = v161; j != v144; j -= 8)
      {
        v146 = *(j - 8);
      }

      v161 = v144;

      v18 = v152;
    }
  }

  while (v87 != 0x7FFFFFFF && (v87 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
LABEL_51:

  v158._tskFormat = &v160;
  sub_22107C2C0(&v158);

  return v151;
}

+ (id)sortCriteriaByCost:(id)cost
{
  costCopy = cost;
  if (objc_msgSend_count(costCopy, v4, v5, v6) < 2)
  {
    v9 = costCopy;
  }

  else
  {
    v9 = objc_msgSend_sortedArrayUsingComparator_(costCopy, v7, &unk_2834A2430, v8);
  }

  v10 = v9;

  return v10;
}

+ (BOOL)valueAtGridCoordPassesCriteria:(TSCEGridAccessContext *)criteria coord:(TSCEGridCoord)coord criteria:(id)a5 outError:(id *)error
{
  v61 = a5;
  v60 = criteria->var0;
  if (!v60)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSCEGridValue valueAtGridCoordPassesCriteria:coord:criteria:outError:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEGridValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 562, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v22 = objc_msgSend_count(v61, v8, v9, v10);
  if (v22)
  {
    errorCopy = error;
    v23 = 1;
    while (1)
    {
      v24 = objc_msgSend_objectAtIndex_(v61, v20, v23 - 1, v21);
      v28 = objc_msgSend_first(v24, v25, v26, v27);
      v32 = objc_msgSend_value(v28, v29, v30, v31);
      v33 = criteria->var1;
      v63 = 0;
      v35 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v32, v34, v60, v33, 0, 1, &v63);
      v36 = v63;

      if (v36)
      {
        goto LABEL_16;
      }

      v40 = objc_msgSend_second(v24, v37, v38, v39);
      if (objc_msgSend_gridKind(v35, v41, v42, v43) == 1 && objc_msgSend_count(v35, v44, v45, v46) >= 2)
      {
        break;
      }

      v49 = objc_msgSend_valueAtGridCoord_accessContext_(v35, v44, *&coord, criteria);
      v62 = 0;
      v51 = objc_msgSend_compare_outError_(v40, v50, v49, &v62);
      v52 = v62;
      v36 = v52;
      if (v52)
      {
        if (objc_msgSend_errorType(v52, v53, v54, v55) == 68)
        {
          v56 = v36;
          *errorCopy = v36;

LABEL_16:
          v40 = v35;
          v35 = v28;
          v28 = v24;
          v24 = v36;
          goto LABEL_18;
        }

        v51 = 0;
      }

      if (v23 < v22)
      {
        ++v23;
        if (v51)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    *errorCopy = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v44, v47, v48);
LABEL_18:

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

LABEL_19:

  return v51;
}

+ (BOOL)valueAtIndexPassesCriteria:(TSCEGridAccessContext *)criteria index:(unint64_t)index criteria:(id)a5
{
  indexCopy = index;
  v6 = a5;
  v12 = objc_msgSend_count(v6, v7, v8, v9);
  if (v12)
  {
    v13 = 1;
    while (1)
    {
      v14 = objc_msgSend_objectAtIndex_(v6, v10, v13 - 1, v11, indexCopy);
      v18 = objc_msgSend_first(v14, v15, v16, v17);
      v22 = objc_msgSend_value(v18, v19, v20, v21);
      v26 = objc_msgSend_gridValue(v22, v23, v24, v25);

      v30 = objc_msgSend_second(v14, v27, v28, v29);
      if (objc_msgSend_gridKind(v26, v31, v32, v33) == 1 && objc_msgSend_count(v26, v34, v35, v36) > 1)
      {
        v37 = 0;
        v38 = 1;
      }

      else
      {
        v39 = objc_msgSend_valueAtIndex_accessContext_(v26, v34, indexCopy, criteria);
        v45 = 0;
        v41 = objc_msgSend_compare_outError_(v30, v40, v39, &v45);
        v38 = (v45 == 0) & v41;

        v37 = 1;
      }

      if ((v37 & 1) == 0)
      {
        break;
      }

      if (v13++ >= v12 || !v38)
      {
        goto LABEL_12;
      }
    }

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

LABEL_12:

  return v38;
}

@end