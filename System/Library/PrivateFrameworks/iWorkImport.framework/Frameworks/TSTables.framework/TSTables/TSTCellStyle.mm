@interface TSTCellStyle
+ (id)categoriesCellProperties;
+ (id)cellDiffProperties;
+ (id)nonEmphasisCellProperties;
+ (id)p_regionStringForTableStyleArea:(unint64_t)area;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (id)styleIDForPreset:(unint64_t)preset andTableStyleArea:(unint64_t)area;
+ (id)textStyleIDForPreset:(unint64_t)preset andTableStyleArea:(unint64_t)area;
+ (void)initDefaultPropertyMap:(id)map forTableStyleArea:(unint64_t)area presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (void)p_initBodyRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (void)p_initFooterRowRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (void)p_initHeaderColumnRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (void)p_initHeaderRowRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
- (BOOL)isObsolete;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap optionalConcurrentStylesheet:(id)stylesheet;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)loadCellStyleFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadCellStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveCellStylePropertiesToArchive:(void *)archive archiver:(id)archiver;
- (void)saveCellStyleToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)upgradeIfNecessary;
- (void)validate;
@end

@implementation TSTCellStyle

+ (id)properties
{
  if (qword_27CFB51E0 != -1)
  {
    sub_2216F6530();
  }

  v3 = qword_27CFB51D8;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_27CFB51F0 != -1)
  {
    sub_2216F6544();
  }

  v3 = qword_27CFB51E8;

  return v3;
}

+ (id)nonEmphasisCellProperties
{
  if (qword_27CFB5200 != -1)
  {
    sub_2216F6558();
  }

  v3 = qword_27CFB51F8;

  return v3;
}

+ (id)categoriesCellProperties
{
  if (qword_27CFB5210 != -1)
  {
    sub_2216F656C();
  }

  v3 = qword_27CFB5208;

  return v3;
}

+ (id)p_regionStringForTableStyleArea:(unint64_t)area
{
  if (area - 1 < 0x11)
  {
    return off_27845F878[area - 1];
  }

  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTCellStyle p_regionStringForTableStyleArea:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 158, 0, "Unexpected value for region.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 0;
}

+ (id)styleIDForPreset:(unint64_t)preset andTableStyleArea:(unint64_t)area
{
  v4 = objc_msgSend_p_regionStringForTableStyleArea_(self, a2, area, area);
  v5 = String();

  return v5;
}

+ (id)textStyleIDForPreset:(unint64_t)preset andTableStyleArea:(unint64_t)area
{
  v4 = objc_msgSend_p_regionStringForTableStyleArea_(self, a2, area, area);
  v5 = String();

  return v5;
}

+ (void)p_initBodyRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  if (alternate <= 6 && ((1 << alternate) & 0x54) != 0)
  {
    v12 = objc_msgSend_blackColor(MEMORY[0x277D801F8], v8, v9, v10);
  }

  else
  {
    v12 = objc_msgSend_whiteColor(MEMORY[0x277D801F8], v8, v9, v10);
  }

  v14 = v12;
  objc_msgSend_setObject_forProperty_(mapCopy, v13, v12, 898);
}

+ (void)p_initHeaderRowRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  v12 = colorsCopy;
  v13 = MEMORY[0x277D801F8];
  if (colorsCopy)
  {
    v14 = objc_msgSend_objectAtIndex_(colorsCopy, v9, qword_2217E0378[4 * d + 1], v11);
    v17 = objc_msgSend_colorWithColor_(v13, v15, v14, v16);
  }

  else
  {
    v17 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D801F8], v9, v10, v11, 0.921500027, 0.921500027, 0.921500027, 1.0);
  }

  objc_msgSend_setObject_forProperty_(mapCopy, v18, v17, 898);
}

+ (void)p_initHeaderColumnRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  v12 = colorsCopy;
  v13 = MEMORY[0x277D801F8];
  if (colorsCopy)
  {
    v14 = objc_msgSend_objectAtIndex_(colorsCopy, v9, qword_2217E0378[4 * d + 2], v11);
    v17 = objc_msgSend_colorWithColor_(v13, v15, v14, v16);
  }

  else
  {
    v17 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D801F8], v9, v10, v11, 0.921500027, 0.921500027, 0.921500027, 1.0);
  }

  objc_msgSend_setObject_forProperty_(mapCopy, v18, v17, 898);
}

+ (void)p_initFooterRowRegionPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  v12 = colorsCopy;
  if (colorsCopy)
  {
    v13 = MEMORY[0x277D801F8];
    v14 = objc_msgSend_objectAtIndex_(colorsCopy, v9, qword_2217E0378[4 * d + 3], v11);
    v17 = objc_msgSend_colorWithColor_(v13, v15, v14, v16);
  }

  else
  {
    v17 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D801F8], v9, v10, v11, 235.0, 235.0, 235.0, 1.0);
  }

  objc_msgSend_setObject_forProperty_(mapCopy, v18, v17, 898);
}

+ (void)initDefaultPropertyMap:(id)map forTableStyleArea:(unint64_t)area presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  if (area <= 4)
  {
    if (area > 2)
    {
      v14 = mapCopy;
      if (area != 3)
      {
        objc_msgSend_p_initFooterRowRegionPropertyMap_presetID_colors_alternate_(self, mapCopy, mapCopy, d, colorsCopy, alternate);
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v14 = mapCopy;
    if (area == 1)
    {
LABEL_9:
      objc_msgSend_p_initBodyRegionPropertyMap_presetID_colors_alternate_(self, v14, v14, d, colorsCopy, alternate);
      goto LABEL_15;
    }

    if (area == 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = mapCopy;
    if (area - 5 < 0xA)
    {
LABEL_3:
      objc_msgSend_p_initHeaderRowRegionPropertyMap_presetID_colors_alternate_(self, v14, v14, d, colorsCopy, alternate);
      goto LABEL_15;
    }

    if (area - 15 < 2)
    {
      goto LABEL_9;
    }

    if (area == 17)
    {
LABEL_13:
      objc_msgSend_p_initHeaderColumnRegionPropertyMap_presetID_colors_alternate_(self, v14, v14, d, colorsCopy, alternate);
      goto LABEL_15;
    }
  }

  v15 = MEMORY[0x277D81150];
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSTCellStyle initDefaultPropertyMap:forTableStyleArea:presetID:colors:alternate:]", v12);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v18);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 291, 0, "Unexpected value for region.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
LABEL_15:
}

- (void)loadCellStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v9 = objc_opt_class();
  v11 = v9;
  v12 = *(archive + 4);
  if ((v12 & 0x400) != 0)
  {
    v83 = *(archive + 104);
    if (objc_msgSend_validateIntValue_forProperty_(v9, v10, &v83, 896))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v10, v83, 896);
    }

    v12 = *(archive + 4);
  }

  if (v12)
  {
    v13 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v10, *(archive + 3), unarchiverCopy);
    v82 = v13;
    v14 = objc_opt_class();
    v16 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v15, &v82, v14, 898);
    v17 = v82;

    if (v16)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v18, v17, 898);
    }

    v12 = *(archive + 4);
  }

  if ((v12 & 2) != 0)
  {
    if (*(*(archive + 4) + 24))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(*(archive + 4) + 24), unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, MEMORY[0x277D804A0], unarchiverCopy);
    }
    v43 = ;
    v81 = v43;
    v44 = objc_opt_class();
    v46 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v45, &v81, v44, 899);
    v47 = v81;

    if (v46)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v48, v47, 899);
    }

    v12 = *(archive + 4);
    if ((v12 & 4) == 0)
    {
      goto LABEL_41;
    }

LABEL_35:
    if (*(*(archive + 5) + 24))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(*(archive + 5) + 24), unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, MEMORY[0x277D804A0], unarchiverCopy);
    }
    v49 = ;
    v80 = v49;
    v50 = objc_opt_class();
    v52 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v51, &v80, v50, 902);
    v53 = v80;

    if (v52)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v54, v53, 902);
    }

    v12 = *(archive + 4);
    goto LABEL_41;
  }

  if ((v12 & 4) != 0)
  {
    goto LABEL_35;
  }

  if ((v12 & 8) == 0 && (v12 & 0x10) == 0)
  {
    if ((v12 & 0x40) != 0)
    {
      v19 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(archive + 9), unarchiverCopy);
      v77 = v19;
      v20 = objc_opt_class();
      v22 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v21, &v77, v20, 899);
      v23 = v77;

      if (v22)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v24, v23, 899);
      }

      v12 = *(archive + 4);
    }

    if ((v12 & 0x80) != 0)
    {
      v25 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(archive + 10), unarchiverCopy);
      v76 = v25;
      v26 = objc_opt_class();
      v28 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v27, &v76, v26, 902);
      v29 = v76;

      if (v28)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v30, v29, 902);
      }

      v12 = *(archive + 4);
    }

    if ((v12 & 0x100) != 0)
    {
      v31 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(archive + 11), unarchiverCopy);
      v75 = v31;
      v32 = objc_opt_class();
      v34 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v33, &v75, v32, 900);
      v35 = v75;

      if (v34)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v36, v35, 900);
      }

      v12 = *(archive + 4);
    }

    if ((v12 & 0x200) != 0)
    {
      v37 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(archive + 12), unarchiverCopy);
      v74 = v37;
      v38 = objc_opt_class();
      v40 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v39, &v74, v38, 901);
      v41 = v74;

      if (v40)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v42, v41, 901);
      }

LABEL_54:
      goto LABEL_55;
    }

    goto LABEL_55;
  }

LABEL_41:
  if ((v12 & 8) != 0)
  {
    if (*(*(archive + 6) + 24))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(*(archive + 6) + 24), unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, MEMORY[0x277D804A0], unarchiverCopy);
    }
    v55 = ;
    v79 = v55;
    v56 = objc_opt_class();
    v58 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v57, &v79, v56, 900);
    v59 = v79;

    if (v58)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v60, v59, 900);
    }

    v12 = *(archive + 4);
  }

  if ((v12 & 0x10) != 0)
  {
    if (*(*(archive + 7) + 24))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(*(archive + 7) + 24), unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, MEMORY[0x277D804A0], unarchiverCopy);
    }
    v61 = ;
    v78 = v61;
    v62 = objc_opt_class();
    v64 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v63, &v78, v62, 901);
    v41 = v78;

    if (v64)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v65, v41, 901);
    }

    goto LABEL_54;
  }

LABEL_55:
  v66 = *(archive + 4);
  if ((v66 & 0x800) != 0)
  {
    v83 = *(archive + 27);
    if (objc_msgSend_validateIntValue_forProperty_(v11, v10, &v83, 903))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v10, v83, 903);
    }

    v66 = *(archive + 4);
  }

  if ((v66 & 0x20) != 0)
  {
    v67 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80EB0], v10, *(archive + 8), unarchiverCopy);
    v73 = v67;
    v68 = objc_opt_class();
    v70 = objc_msgSend_validateObjectValue_withClass_forProperty_(v11, v69, &v73, v68, 904);
    v71 = v73;

    if (v70)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v72, v71, 904);
    }
  }
}

- (void)saveCellStylePropertiesToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = objc_opt_class();
  v8 = *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v8, v9, 896, v10))
  {
    v41 = objc_msgSend_intValueForProperty_(v8, v11, 896, v12);
    if (objc_msgSend_validateIntValue_forProperty_(v7, v13, &v41, 896))
    {
      v14 = v41 != 0;
      *(archive + 4) |= 0x400u;
      *(archive + 104) = v14;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v11, 898, v12))
  {
    v17 = objc_msgSend_objectForProperty_(v8, v15, 898, v16);
    v40 = v17;
    v18 = objc_opt_class();
    v20 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v19, &v40, v18, 898);
    v21 = v40;

    if (v20)
    {
      *(archive + 4) |= 1u;
      v23 = *(archive + 3);
      if (!v23)
      {
        v24 = *(archive + 1);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = MEMORY[0x223DA0280](v24);
        *(archive + 3) = v23;
      }

      objc_msgSend_saveToArchive_archiver_(v21, v22, v23, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v15, 903, v16))
  {
    v41 = objc_msgSend_intValueForProperty_(v8, v25, 903, v26);
    if (objc_msgSend_validateIntValue_forProperty_(v7, v27, &v41, 903))
    {
      v28 = v41;
      *(archive + 4) |= 0x800u;
      *(archive + 27) = v28;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v25, 904, v26))
  {
    v31 = objc_msgSend_objectForProperty_(v8, v29, 904, v30);
    v39 = v31;
    v32 = objc_opt_class();
    v34 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v33, &v39, v32, 904);
    v35 = v39;

    if (v34)
    {
      *(archive + 4) |= 0x20u;
      v37 = *(archive + 8);
      if (!v37)
      {
        v38 = *(archive + 1);
        if (v38)
        {
          v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
        }

        v37 = MEMORY[0x223DA03C0](v38);
        *(archive + 8) = v37;
      }

      objc_msgSend_saveToArchive_archiver_(v35, v36, v37, archiverCopy);
    }
  }
}

- (void)loadCellStyleFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = MEMORY[0x277D80BD0];
  }

  v16.receiver = self;
  v16.super_class = TSTCellStyle;
  [(TSTCellStyle *)&v16 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 10);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AB8]);
    v13 = objc_msgSend_initWithCapacity_(v9, v10, v8, v11);
    if (*(archive + 4))
    {
      objc_msgSend_loadCellStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v12, v13, *(archive + 4), unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadCellStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v12, v13, qword_2812E9B30, unarchiverCopy);
    }

    v14 = *MEMORY[0x277D80AF0];
    v15 = *(&self->super.super.super.isa + v14);
    *(&self->super.super.super.isa + v14) = v13;
  }
}

- (void)saveCellStyleToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA03A0](v8);
    *(archive + 3) = v7;
  }

  v17.receiver = self;
  v17.super_class = TSTCellStyle;
  [(TSTCellStyle *)&v17 saveToArchive:v7 archiver:archiverCopy];
  v12 = objc_msgSend_overrideCount(self, v9, v10, v11);
  if (v12)
  {
    v14 = *(archive + 4);
    *(archive + 10) = v12;
    *(archive + 4) = v14 | 6;
    v15 = *(archive + 4);
    if (!v15)
    {
      v16 = *(archive + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_2216E2ED4(v16);
      *(archive + 4) = v15;
    }

    objc_msgSend_saveCellStylePropertiesToArchive_archiver_(self, v13, v15, archiverCopy);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[162], v5);

  objc_msgSend_loadCellStyleFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221130FF0, off_2812E4498[162]);

  objc_msgSend_saveCellStyleToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)validate
{
  v5 = objc_msgSend_stylesheet(self, a2, v2, v3);

  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellStyle validate]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 391, 0, "orphaned cell style %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = objc_msgSend_stylesheet(self, v6, v7, v8);
  selfCopy = self;
  v20 = v18;
  if (objc_msgSend_containsStyle_(v20, v21, selfCopy, v22))
  {
    v26 = objc_msgSend_stylesheet(selfCopy, v23, v24, v25);

    if (v26 == v20)
    {
      return;
    }
  }

  else
  {
  }

  v29 = MEMORY[0x277D81150];
  v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTCellStyle validate]", v28);
  v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v32);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 393, 0, "Cell style not in its stylesheet");

  v38 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v38, v35, v36, v37);
}

- (BOOL)isObsolete
{
  v4 = objc_msgSend_overridePropertyMap(self, a2, v2, v3);
  v8 = objc_msgSend_allProperties(v4, v5, v6, v7);
  v9 = objc_opt_class();
  v13 = objc_msgSend_properties(v9, v10, v11, v12);
  v16 = objc_msgSend_propertySetByRemovingPropertiesFromSet_(v8, v14, v13, v15);

  LOBYTE(v4) = objc_msgSend_count(v16, v17, v18, v19) != 0;
  return v4;
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  dataCopy = data;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  if ((objc_msgSend_isVariation(self, v6, v7, v8) & 1) == 0)
  {
    if (objc_msgSend_isIdentified(self, v9, v10, v11))
    {
      v15 = objc_msgSend_styleIdentifier(self, v12, v13, v14);
      v16 = String();

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = objc_msgSend_documentRoot(self, v17, v18, v19);
        v24 = objc_msgSend_theme(v20, v21, v22, v23);
        v27 = objc_msgSend_presetsOfKind_(v24, v25, *MEMORY[0x277D80BA8], v26);

        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = sub_221130840;
        v56[3] = &unk_27845F808;
        v56[4] = &v57;
        v56[5] = v16;
        objc_msgSend_enumerateObjectsUsingBlock_(v27, v28, v56, v29);
      }
    }
  }

  if (v58[3])
  {
    objc_opt_class();
    v32 = objc_msgSend_valueForProperty_(self, v30, 898, v31);
    v33 = TSUCheckedDynamicCast();

    v37 = objc_msgSend_imageData(v33, v34, v35, v36);

    if (v37 != dataCopy)
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTCellStyle targetSizeForImageData:associatedHint:]", v40);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v44);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v42, v45, 437, 0, "Expected that the imageData would be from the style's fill");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49);
    }

    if (v33)
    {
      objc_msgSend_renderedImageSizeForObjectSize_(v33, v38, v39, v40, 1.79769313e308, 1.79769313e308);
      v51 = v50;
      v53 = v52;
    }

    else
    {
      v53 = 0x7FEFFFFFFFFFFFFFLL;
      v51 = 0x7FEFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v51 = *MEMORY[0x277CBF3A8];
    v53 = *(MEMORY[0x277CBF3A8] + 8);
  }

  _Block_object_dispose(&v57, 8);

  v54 = *&v51;
  v55 = *&v53;
  result.height = v55;
  result.width = v54;
  return result;
}

- (void)upgradeIfNecessary
{
  if ((objc_msgSend_definesProperty_(self, a2, 898, v2) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(self, v4, v5, v6);
    v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8, v9);
    objc_msgSend_setValue_forProperty_(self, v10, v11, 898);
  }
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  v12 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v9, v10, v11);
  v16 = objc_msgSend_propertyMap(self, v13, v14, v15);
  v20 = objc_msgSend_allProperties(v16, v17, v18, v19);
  objc_msgSend_addProperties_(v12, v21, v20, v22);

  v26 = objc_msgSend_propertyMap(v8, v23, v24, v25);
  v30 = objc_msgSend_allProperties(v26, v27, v28, v29);
  objc_msgSend_addProperties_(v12, v31, v30, v32);

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 5;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_221130C4C;
  v39[3] = &unk_27845F830;
  v39[4] = self;
  v33 = v8;
  v40 = v33;
  v42 = &v43;
  v34 = contextCopy;
  v41 = v34;
  objc_msgSend_enumeratePropertiesUsingBlock_(v12, v35, v39, v36);
  v37 = v44[3];

  _Block_object_dispose(&v43, 8);
  return v37;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v11 = objc_msgSend_copy(self, v8, v9, v10);
  v15 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v12, v13, v14);
  v19 = objc_msgSend_propertyMap(self, v16, v17, v18);
  v23 = objc_msgSend_allProperties(v19, v20, v21, v22);
  objc_msgSend_addProperties_(v15, v24, v23, v25);

  v29 = objc_msgSend_propertyMap(v7, v26, v27, v28);
  v33 = objc_msgSend_allProperties(v29, v30, v31, v32);
  objc_msgSend_addProperties_(v15, v34, v33, v35);

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_221130F24;
  v43[3] = &unk_27845F858;
  v43[4] = self;
  v36 = v7;
  v44 = v36;
  fractionCopy = fraction;
  v37 = v11;
  v45 = v37;
  objc_msgSend_enumeratePropertiesUsingBlock_(v15, v38, v43, v39);
  v40 = v45;
  v41 = v37;

  return v37;
}

+ (id)cellDiffProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2214CB394;
  block[3] = &unk_278462558;
  block[4] = self;
  if (qword_27CFB5688 != -1)
  {
    dispatch_once(&qword_27CFB5688, block);
  }

  v2 = qword_27CFB5680;

  return v2;
}

- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap optionalConcurrentStylesheet:(id)stylesheet
{
  mapCopy = map;
  inMapCopy = inMap;
  propertyMapCopy = propertyMap;
  setPropertyMapCopy = setPropertyMap;
  stylesheetCopy = stylesheet;
  if (objc_msgSend_containsProperty_(inMapCopy, v17, 905, v18))
  {
    v22 = objc_opt_class();
    v26 = objc_msgSend_properties(v22, v23, v24, v25);
    v29 = objc_msgSend_containsAnyPropertyInProperties_(inMapCopy, v27, v26, v28);

    if (v29)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTCellStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v31);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle+CellDiffAdditions.m", v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 49, 0, "Can't specify both a cell style and a cell style change at the same time.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
    }

    objc_msgSend_setObject_forProperty_(setPropertyMapCopy, v30, self, 905);
    v43 = objc_msgSend_objectForProperty_(inMapCopy, v41, 905, v42);
    goto LABEL_32;
  }

  v44 = objc_msgSend_stylesheet(self, v19, v20, v21);
  selfCopy = self;
  v153 = propertyMapCopy;
  if (v44)
  {
    goto LABEL_16;
  }

  v49 = MEMORY[0x277D81150];
  v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSTCellStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v47);
  v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle+CellDiffAdditions.m", v52);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v50, v53, 57, 0, "Stylesheet should not be nil. Attempting repair.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57);
  v61 = objc_msgSend_parent(selfCopy, v58, v59, v60);
  v65 = objc_msgSend_stylesheet(v61, v62, v63, v64);
  v69 = v65;
  if (v65)
  {
    v44 = v65;
  }

  else
  {
    v70 = objc_msgSend_documentRoot(selfCopy, v66, v67, v68);
    v74 = objc_msgSend_stylesheet(v70, v71, v72, v73);

    v44 = v74;
  }

  if (stylesheetCopy)
  {
    objc_msgSend_repairOrReplaceErrantStyle_(stylesheetCopy, v75, selfCopy, v76);
  }

  else
  {
    objc_msgSend_repairOrReplaceErrantStyle_(v44, v75, selfCopy, v76);
  }
  v77 = ;

  if (!v77 || !v44)
  {
    v85 = MEMORY[0x277D81150];
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSTCellStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v80);
    v87 = v86 = v44;
    v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle+CellDiffAdditions.m", v89);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v91, v87, v90, 70, 0, "No usable style or stylesheet to vary against!");

    v44 = v86;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93, v94);
    selfCopy = selfCopy;

LABEL_16:
    isVariation = objc_msgSend_isVariation(selfCopy, v45, v46, v47);
    goto LABEL_17;
  }

  selfCopy = v77;
  isVariation = objc_msgSend_isVariation(v77, v78, v79, v80);
LABEL_17:
  v151 = v44;
  if (isVariation)
  {
    v95 = objc_msgSend_overridePropertyMap(selfCopy, v82, v83, v84);
    v99 = objc_msgSend_copy(v95, v96, v97, v98);
  }

  else
  {
    v99 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v82, v83, v84);
  }

  v100 = objc_opt_class();
  v104 = objc_msgSend_properties(v100, v101, v102, v103);
  v152 = mapCopy;
  v107 = objc_msgSend_propertyMapWithProperties_(mapCopy, v105, v104, v106);

  v159[0] = MEMORY[0x277D85DD0];
  v159[1] = 3221225472;
  v159[2] = sub_2214CBA10;
  v159[3] = &unk_278464128;
  v108 = v99;
  v160 = v108;
  v109 = setPropertyMapCopy;
  v161 = v109;
  v110 = selfCopy;
  v162 = v110;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v107, v111, v159, v112);
  v113 = objc_opt_class();
  v117 = objc_msgSend_properties(v113, v114, v115, v116);
  v120 = objc_msgSend_propertyMapWithProperties_(inMapCopy, v118, v117, v119);

  v154[0] = MEMORY[0x277D85DD0];
  v154[1] = 3221225472;
  v154[2] = sub_2214CBA88;
  v154[3] = &unk_278466578;
  v121 = v108;
  v155 = v121;
  v122 = v110;
  v156 = v122;
  v123 = v153;
  v157 = v123;
  v124 = v109;
  v158 = v124;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v120, v125, v154, v126);
  if (((objc_msgSend_containsProperty_(inMapCopy, v127, 898, v128) & 1) != 0 || objc_msgSend_containsProperty_(v152, v129, 898, v131)) && (!objc_msgSend_isVariation(v122, v129, v130, v131) || (objc_msgSend_overridesProperty_(v122, v129, 898, v131) & 1) == 0))
  {
    objc_msgSend_removeValueForProperty_(v124, v129, 898, v131);
    v134 = objc_msgSend_boxedValueForProperty_(v122, v132, 898, v133);
    v138 = v134;
    if (v134)
    {
      v139 = v134;
    }

    else
    {
      v139 = objc_msgSend_null(MEMORY[0x277CBEB68], v135, v136, v137);
    }

    v141 = v139;
    objc_msgSend_setBoxedObject_forProperty_(v123, v140, v139, 898);
  }

  if (stylesheetCopy)
  {
    objc_opt_class();
    v145 = objc_msgSend_rootAncestor(v122, v142, v143, v144);
    v147 = objc_msgSend_variationOfStyle_propertyMap_(stylesheetCopy, v146, v145, v121);
    v43 = TSUDynamicCast();

    v148 = v151;
  }

  else
  {
    v145 = objc_msgSend_rootAncestor(v122, v129, v130, v131);
    v148 = v151;
    v43 = objc_msgSend_variationOfStyle_propertyMap_(v151, v149, v145, v121);
  }

  mapCopy = v152;
  propertyMapCopy = v153;
LABEL_32:

  return v43;
}

@end