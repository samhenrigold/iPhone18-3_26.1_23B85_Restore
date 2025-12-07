@interface TSTTableStrokePresetList
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)strokePresetListForDefaultPropertyMapForTablePresetID:(unint64_t)d colors:(id)colors;
+ (id)strokePresetListForDefaultPropertyMapWithFatStroke:(id)stroke andThinStroke:(id)thinStroke;
+ (id)strokePresetListForDefaultPropertyMapWithHorizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke;
- (BOOL)isEqual:(id)equal;
- (TSTTableStrokePresetList)init;
- (TSTTableStrokePresetList)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)exteriorStrokeForStrokePreset:(unint64_t)preset;
- (id)horizontalStrokeForStrokePreset:(unint64_t)preset;
- (id)verticalStrokeForStrokePreset:(unint64_t)preset;
- (unsigned)maskForStrokePreset:(unint64_t)preset;
- (unsigned)maskForStrokePresets:(id)presets;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setStroke:(id)stroke forPresetIndex:(unint64_t)index;
- (void)setStrokePreset:(id)preset atIndex:(unint64_t)index;
@end

@implementation TSTTableStrokePresetList

- (TSTTableStrokePresetList)init
{
  v11.receiver = self;
  v11.super_class = TSTTableStrokePresetList;
  v5 = [(TSTTableStrokePresetList *)&v11 init];
  if (v5)
  {
    v6 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v2, v3, v4);
    presets = v5->_presets;
    v5->_presets = v6;

    objc_msgSend_setCount_(v5->_presets, v8, 15, v9);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy[1];
  if (v7 == self->mCount)
  {
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = objc_msgSend_presetAtIndex_(self, v4, v8, v5);
        v12 = objc_msgSend_presetAtIndex_(equalCopy, v10, v8, v11);
        isEqual = objc_msgSend_isEqual_(v9, v13, v12, v14);

        if ((isEqual & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < self->mCount);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)setStrokePreset:(id)preset atIndex:(unint64_t)index
{
  presetCopy = preset;
  v18 = presetCopy;
  if (self->mCount <= index)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableStrokePresetList setStrokePreset:atIndex:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 106, 0, "preset index higher than count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  else
  {
    objc_msgSend_replacePointerAtIndex_withPointer_(self->_presets, presetCopy, index, presetCopy);
  }
}

+ (id)strokePresetListForDefaultPropertyMapForTablePresetID:(unint64_t)d colors:(id)colors
{
  colorsCopy = colors;
  v10 = colorsCopy;
  v11 = MEMORY[0x277D803C0];
  if (colorsCopy)
  {
    v12 = dword_2217E0DA8[d];
    v13 = objc_msgSend_objectAtIndex_(colorsCopy, v7, v12, v9);
    v16 = objc_msgSend_strokeWithColor_width_(v11, v14, v13, v15, 1.0);

    v17 = MEMORY[0x277D803C0];
    v20 = objc_msgSend_objectAtIndex_(v10, v18, v12, v19);
    v23 = objc_msgSend_strokeWithColor_width_(v17, v21, v20, v22, 1.0);

    v24 = MEMORY[0x277D803C0];
    objc_msgSend_objectAtIndex_(v10, v25, v12, v26);
  }

  else
  {
    v30 = objc_msgSend_blackColor(MEMORY[0x277D81180], v7, v8, v9);
    v16 = objc_msgSend_strokeWithColor_width_(v11, v31, v30, v32, 1.0);

    v33 = MEMORY[0x277D803C0];
    v37 = objc_msgSend_blackColor(MEMORY[0x277D81180], v34, v35, v36);
    v23 = objc_msgSend_strokeWithColor_width_(v33, v38, v37, v39, 1.0);

    v24 = MEMORY[0x277D803C0];
    objc_msgSend_blackColor(MEMORY[0x277D81180], v40, v41, v42);
  }
  v27 = ;
  v43 = objc_msgSend_strokeWithColor_width_(v24, v28, v27, v29, 1.0);

  v45 = objc_msgSend_strokePresetListForDefaultPropertyMapWithHorizontalStroke_verticalStroke_exteriorStroke_(self, v44, v16, v23, v43);

  return v45;
}

+ (id)strokePresetListForDefaultPropertyMapWithHorizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke
{
  strokeCopy = stroke;
  verticalStrokeCopy = verticalStroke;
  exteriorStrokeCopy = exteriorStroke;
  v10 = objc_alloc_init(TSTTableStrokePresetList);
  v10->mCount = 15;
  v14 = objc_msgSend_count(v10, v11, v12, v13);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v16 = dword_2217E0DC0[i];
      v17 = [TSTTableStrokePresetData alloc];
      v19 = objc_msgSend_initWithMask_horizontalStroke_verticalStroke_exteriorStroke_(v17, v18, v16, strokeCopy, verticalStrokeCopy, exteriorStrokeCopy);
      objc_msgSend_setStrokePreset_atIndex_(v10, v20, v19, i);
    }
  }

  return v10;
}

+ (id)strokePresetListForDefaultPropertyMapWithFatStroke:(id)stroke andThinStroke:(id)thinStroke
{
  strokeCopy = stroke;
  thinStrokeCopy = thinStroke;
  v7 = objc_alloc_init(TSTTableStrokePresetList);
  v7->mCount = 15;
  v11 = objc_msgSend_count(v7, v8, v9, v10);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (byte_2217E0DFC[i])
      {
        v13 = strokeCopy;
      }

      else
      {
        v13 = thinStrokeCopy;
      }

      v14 = v13;
      v15 = dword_2217E0DC0[i];
      v16 = [TSTTableStrokePresetData alloc];
      v18 = objc_msgSend_initWithMask_horizontalStroke_verticalStroke_exteriorStroke_(v16, v17, v15, v14, v14, v14);
      objc_msgSend_setStrokePreset_atIndex_(v7, v19, v18, i);
    }
  }

  return v7;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (sub_2216D838C(archive))
  {
    v9 = [TSTTableStrokePresetList alloc];
    v11 = objc_msgSend_initWithArchive_unarchiver_(v9, v10, archive, unarchiverCopy);
  }

  else
  {
    v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7, v8);
  }

  v12 = v11;

  return v12;
}

- (TSTTableStrokePresetList)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v89.receiver = self;
  v89.super_class = TSTTableStrokePresetList;
  v10 = [(TSTTableStrokePresetList *)&v89 init];
  if (!v10)
  {
LABEL_25:
    v34 = v10;
    goto LABEL_26;
  }

  v11 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v7, v8, v9);
  presets = v10->_presets;
  v10->_presets = v11;

  objc_msgSend_setCount_(v10->_presets, v13, 15, v14);
  v10->mCount = 15;
  v18 = *(archive + 18);
  if ((v18 & 0x80000000) != 0)
  {
    v71 = MEMORY[0x277D81150];
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableStrokePresetList initWithArchive:unarchiver:]", v17);
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v74);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v76, v72, v75, 172, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79);
    v18 = 0;
  }

  v19 = *(archive + 8);
  if (v19 < 1)
  {
    v26 = *(archive + 14);
    if (v26 < 0)
    {
      v80 = MEMORY[0x277D81150];
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableStrokePresetList initWithArchive:unarchiver:]", v17);
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v83);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v85, v81, v84, 189, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88);
      v26 = 0;
    }

    if (v18 != v26 || objc_msgSend_count(v10->_presets, v15, v16, v17) < v18)
    {
      v27 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableStrokePresetList initWithArchive:unarchiver:]", v17);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v30, v21, v24, 190, 0, "invalid preset count");
      goto LABEL_13;
    }

    if (v18)
    {
      for (i = 0; i != v18; ++i)
      {
        v42 = v10->_presets;
        v43 = [TSTTableStrokePresetData alloc];
        v45 = objc_msgSend_initWithArchive_unarchiver_(v43, v44, *(*(archive + 8) + 8 * i + 8), unarchiverCopy);
        objc_msgSend_replacePointerAtIndex_withPointer_(v42, v46, i, v45);
      }
    }

    goto LABEL_20;
  }

  if (v18 == v19 && objc_msgSend_count(v10->_presets, v15, v16, v17) >= v18)
  {
    v35 = 0;
    do
    {
      v36 = v10->_presets;
      v37 = [TSTTableStrokePresetData alloc];
      v39 = objc_msgSend_initWithDeprecatedArchive_unarchiver_(v37, v38, *(*(archive + 5) + 8 * v35 + 8), unarchiverCopy);
      objc_msgSend_replacePointerAtIndex_withPointer_(v36, v40, v35, v39);

      ++v35;
    }

    while (v18 != v35);
LABEL_20:
    if (v10->mCount > v18)
    {
      v47 = objc_msgSend_pointerAtIndex_(v10->_presets, v15, 0, v17);
      v51 = objc_msgSend_horizontalStroke(v47, v48, v49, v50);
      v55 = objc_msgSend_verticalStroke(v47, v52, v53, v54);
      v59 = objc_msgSend_exteriorStroke(v47, v56, v57, v58);
      v61 = objc_msgSend_strokePresetListForDefaultPropertyMapWithHorizontalStroke_verticalStroke_exteriorStroke_(TSTTableStrokePresetList, v60, v51, v55, v59);
      v62 = v18;

      if (v10->mCount > v18)
      {
        v65 = v18 + 1;
        do
        {
          v66 = v10->_presets;
          v67 = objc_msgSend_presetAtIndex_(v61, v63, v62, v64);
          objc_msgSend_replacePointerAtIndex_withPointer_(v66, v68, v62, v67);
          v62 = v65;
        }

        while (v10->mCount > v65++);
      }
    }

    goto LABEL_25;
  }

  v20 = MEMORY[0x277D81150];
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableStrokePresetList initWithArchive:unarchiver:]", v17);
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v23);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 178, 0, "invalid preset count");
LABEL_13:

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
  v34 = 0;
LABEL_26:

  return v34;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  mCount = self->mCount;
  *(archive + 4) |= 1u;
  *(archive + 18) = mCount;
  if (mCount)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = *(archive + 8);
      if (!v11)
      {
        goto LABEL_8;
      }

      v12 = *(archive + 14);
      v13 = *v11;
      if (v12 >= *v11)
      {
        break;
      }

      *(archive + 14) = v12 + 1;
LABEL_10:
      v17 = objc_msgSend_pointerAtIndex_(self->_presets, v6, v9, v7);
      objc_msgSend_saveToArchive_archiver_(v17, v18, *(*(archive + 8) + 8 * (v10 - 1) + 8), archiverCopy);

      v9 = v10;
      if (self->mCount <= v10++)
      {
        goto LABEL_11;
      }
    }

    if (v13 == *(archive + 15))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 48));
      v11 = *(archive + 8);
      v13 = *v11;
    }

    *v11 = v13 + 1;
    v14 = sub_2216E308C(*(archive + 6));
    v15 = *(archive + 14);
    v16 = *(archive + 8) + 8 * v15;
    *(archive + 14) = v15 + 1;
    *(v16 + 8) = v14;
    goto LABEL_10;
  }

LABEL_11:
}

- (id)horizontalStrokeForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStrokePresetList horizontalStrokeForStrokePreset:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 225, 0, "illegal preset index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = objc_msgSend_pointerAtIndex_(self->_presets, a2, preset, v3);
  v19 = objc_msgSend_horizontalStroke(v15, v16, v17, v18);

  return v19;
}

- (id)verticalStrokeForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStrokePresetList verticalStrokeForStrokePreset:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 234, 0, "illegal preset index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = objc_msgSend_pointerAtIndex_(self->_presets, a2, preset, v3);
  v19 = objc_msgSend_verticalStroke(v15, v16, v17, v18);

  return v19;
}

- (id)exteriorStrokeForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStrokePresetList exteriorStrokeForStrokePreset:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 243, 0, "illegal preset index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = objc_msgSend_pointerAtIndex_(self->_presets, a2, preset, v3);
  v19 = objc_msgSend_exteriorStroke(v15, v16, v17, v18);

  return v19;
}

- (unsigned)maskForStrokePreset:(unint64_t)preset
{
  if (self->mCount <= preset)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableStrokePresetList maskForStrokePreset:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStrokePresetList.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 252, 0, "illegal preset index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = objc_msgSend_pointerAtIndex_(self->_presets, a2, preset, v3);
  v19 = objc_msgSend_mask(v15, v16, v17, v18);

  return v19;
}

- (unsigned)maskForStrokePresets:(id)presets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22124149C;
  v6[3] = &unk_278461DD0;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_enumerateObjectsUsingBlock_(presets, a2, v6, v3);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setStroke:(id)stroke forPresetIndex:(unint64_t)index
{
  strokeCopy = stroke;
  v8 = objc_msgSend_presetAtIndex_(self, v6, index, v7);
  v9 = [TSTTableStrokePresetData alloc];
  v13 = objc_msgSend_mask(v8, v10, v11, v12);
  v15 = objc_msgSend_initWithMask_horizontalStroke_verticalStroke_exteriorStroke_(v9, v14, v13, strokeCopy, strokeCopy, strokeCopy);
  objc_msgSend_setStrokePreset_atIndex_(self, v16, v15, index);
}

@end