@interface TSTTableStyle
+ (id)nonEmphasisTableProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (int)defaultIntValueForProperty:(int)property;
+ (unint64_t)presetIDForStyleID:(id)d;
+ (void)initDefaultPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate;
+ (void)initDefaultStrokePresetListInPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison;
- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver;
- (TSTTableStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform;
- (id)exteriorStrokeForStrokePreset:(unint64_t)preset;
- (id)horizontalStrokeForStrokePreset:(unint64_t)preset;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)strokeForStrokePreset:(unint64_t)preset;
- (id)verticalStrokeForStrokePreset:(unint64_t)preset;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unsigned)maskForStrokePreset:(unint64_t)preset;
- (unsigned)maskForStrokePresets:(id)presets;
- (void)loadTableStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveTableStylePropertiesToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)validate;
@end

@implementation TSTTableStyle

+ (id)properties
{
  if (qword_27CFB5268 != -1)
  {
    sub_2216F6CA8();
  }

  v3 = qword_27CFB5260;

  return v3;
}

+ (id)propertiesAllowingNSNull
{
  if (qword_27CFB5278 != -1)
  {
    sub_2216F6CBC();
  }

  v3 = qword_27CFB5270;

  return v3;
}

+ (id)nonEmphasisTableProperties
{
  if (qword_27CFB5288 != -1)
  {
    sub_2216F6CD0();
  }

  v3 = qword_27CFB5280;

  return v3;
}

+ (unint64_t)presetIDForStyleID:(id)d
{
  v3 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(d, a2, @"tableStyle", &stru_2834BADA0);
  v5 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v4, @"table", &stru_2834BADA0);

  v8 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v6, @"-", v7);
  v11 = objc_msgSend_stringByTrimmingCharactersInSet_(v5, v9, v8, v10);

  v15 = objc_msgSend_integerValue(v11, v12, v13, v14);
  return v15;
}

+ (int)defaultIntValueForProperty:(int)property
{
  if (property == 798)
  {
    return -1;
  }

  else
  {
    return 0x80000000;
  }
}

+ (void)initDefaultStrokePresetListInPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors
{
  mapCopy = map;
  v8 = objc_msgSend_strokePresetListForDefaultPropertyMapForTablePresetID_colors_(TSTTableStrokePresetList, v7, d, colors);
  objc_msgSend_setObject_forProperty_(mapCopy, v9, v8, 787);
}

+ (void)initDefaultPropertyMap:(id)map presetID:(unint64_t)d colors:(id)colors alternate:(unint64_t)alternate
{
  mapCopy = map;
  colorsCopy = colors;
  sub_22117AB24(mapCopy, d, colorsCopy);
  objc_msgSend_setIntValue_forProperty_(mapCopy, v9, 1, 799);
  objc_msgSend_setIntValue_forProperty_(mapCopy, v10, 0, 768);
  objc_msgSend_setIntValue_forProperty_(mapCopy, v11, 0, 769);
  objc_msgSend_setIntValue_forProperty_(mapCopy, v12, 0, 798);
  v14 = objc_msgSend_strokePresetListForDefaultPropertyMapForTablePresetID_colors_(TSTTableStrokePresetList, v13, d, colorsCopy);
  objc_msgSend_setObject_forProperty_(mapCopy, v15, v14, 787);
}

- (TSTTableStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = TSTTableStyle;
  return [(TSTTableStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

- (id)strokeForStrokePreset:(unint64_t)preset
{
  v5 = objc_msgSend_valueForProperty_(self, a2, 787, v3);
  v8 = objc_msgSend_horizontalStrokeForStrokePreset_(v5, v6, preset, v7);

  return v8;
}

- (id)horizontalStrokeForStrokePreset:(unint64_t)preset
{
  v5 = objc_msgSend_valueForProperty_(self, a2, 787, v3);
  v8 = objc_msgSend_horizontalStrokeForStrokePreset_(v5, v6, preset, v7);

  return v8;
}

- (id)verticalStrokeForStrokePreset:(unint64_t)preset
{
  v5 = objc_msgSend_valueForProperty_(self, a2, 787, v3);
  v8 = objc_msgSend_verticalStrokeForStrokePreset_(v5, v6, preset, v7);

  return v8;
}

- (id)exteriorStrokeForStrokePreset:(unint64_t)preset
{
  v5 = objc_msgSend_valueForProperty_(self, a2, 787, v3);
  v8 = objc_msgSend_exteriorStrokeForStrokePreset_(v5, v6, preset, v7);

  return v8;
}

- (unsigned)maskForStrokePreset:(unint64_t)preset
{
  v5 = objc_msgSend_valueForProperty_(self, a2, 787, v3);
  LODWORD(preset) = objc_msgSend_maskForStrokePreset_(v5, v6, preset, v7);

  return preset;
}

- (unsigned)maskForStrokePresets:(id)presets
{
  presetsCopy = presets;
  v7 = objc_msgSend_valueForProperty_(self, v5, 787, v6);
  v10 = objc_msgSend_maskForStrokePresets_(v7, v8, presetsCopy, v9);

  return v10;
}

- (void)loadTableStylePropertiesIntoPropertyMap:(id)map fromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  mapCopy = map;
  unarchiverCopy = unarchiver;
  v10 = objc_opt_class();
  v14 = v10;
  v15 = *(archive + 6);
  if ((v15 & 4) != 0)
  {
    v584[0] = *(archive + 560);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v11, v584, 769))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v11, v584[0] != 0, 769);
    }

    v15 = *(archive + 6);
  }

  if ((v15 & 0x10) != 0)
  {
    v584[0] = *(archive + 562);
    if (objc_msgSend_validateIntValue_forProperty_(v14, v11, v584, 768))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v11, v584[0], 768);
    }
  }

  if ((*(archive + 16) & 2) != 0)
  {
    v16 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v11, *(archive + 5), unarchiverCopy);
    v583 = v16;
    v17 = objc_opt_class();
    v19 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v18, &v583, v17, 770);
    v20 = v583;

    if (v19)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v21, v20, 770);
    }
  }

  if ((*(archive + 24) & 8) != 0)
  {
    v584[0] = *(archive + 561);
    if (objc_msgSend_validateIntValue_forProperty_(v14, v11, v584, 799))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v11, v584[0], 799);
    }
  }

  v22 = *(archive + 4);
  if ((v22 & 0x100) != 0)
  {
    v121 = MEMORY[0x277D804A0];
    if (*(*(archive + 12) + 24))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 12) + 24), unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, MEMORY[0x277D804A0], unarchiverCopy);
    }
    v122 = ;
    v582 = v122;
    v123 = objc_opt_class();
    v125 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v124, &v582, v123, 771);
    v126 = v582;

    if (v125)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v127, v126, 771);
    }

    v128 = *(archive + 4);
    if ((v128 & 0x8000) != 0)
    {
      if (*(*(archive + 19) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 19) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v129 = ;
      v581 = v129;
      v130 = objc_opt_class();
      v132 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v131, &v581, v130, 772);
      v133 = v581;

      if (v132)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v134, v133, 772);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x20000) != 0)
    {
      if (*(*(archive + 21) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 21) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v135 = ;
      v580 = v135;
      v136 = objc_opt_class();
      v138 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v137, &v580, v136, 774);
      v139 = v580;

      if (v138)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v140, v139, 774);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x10000) != 0)
    {
      if (*(*(archive + 20) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 20) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v141 = ;
      v579 = v141;
      v142 = objc_opt_class();
      v144 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v143, &v579, v142, 773);
      v145 = v579;

      if (v144)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v146, v145, 773);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 8) != 0)
    {
      if (*(*(archive + 7) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 7) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v147 = ;
      v578 = v147;
      v148 = objc_opt_class();
      v150 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v149, &v578, v148, 782);
      v151 = v578;

      if (v150)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v152, v151, 782);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 4) != 0)
    {
      if (*(*(archive + 6) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 6) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v153 = ;
      v577 = v153;
      v154 = objc_opt_class();
      v156 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v155, &v577, v154, 779);
      v157 = v577;

      if (v156)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v158, v157, 779);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x200) != 0)
    {
      if (*(*(archive + 13) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 13) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v159 = ;
      v576 = v159;
      v160 = objc_opt_class();
      v162 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v161, &v576, v160, 781);
      v163 = v576;

      if (v162)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v164, v163, 781);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x400) != 0)
    {
      if (*(*(archive + 14) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 14) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v165 = ;
      v575 = v165;
      v166 = objc_opt_class();
      v168 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v167, &v575, v166, 780);
      v169 = v575;

      if (v168)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v170, v169, 780);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x10) != 0)
    {
      if (*(*(archive + 8) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 8) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v171 = ;
      v574 = v171;
      v172 = objc_opt_class();
      v174 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v173, &v574, v172, 778);
      v175 = v574;

      if (v174)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v176, v175, 778);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x20) != 0)
    {
      if (*(*(archive + 9) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 9) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v177 = ;
      v573 = v177;
      v178 = objc_opt_class();
      v180 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v179, &v573, v178, 775);
      v181 = v573;

      if (v180)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v182, v181, 775);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x800) != 0)
    {
      if (*(*(archive + 15) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 15) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v183 = ;
      v572 = v183;
      v184 = objc_opt_class();
      v186 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v185, &v572, v184, 776);
      v187 = v572;

      if (v186)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v188, v187, 776);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x1000) != 0)
    {
      if (*(*(archive + 16) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 16) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v189 = ;
      v571 = v189;
      v190 = objc_opt_class();
      v192 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v191, &v571, v190, 777);
      v193 = v571;

      if (v192)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v194, v193, 777);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x80) != 0)
    {
      if (*(*(archive + 11) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 11) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v195 = ;
      v570 = v195;
      v196 = objc_opt_class();
      v198 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v197, &v570, v196, 786);
      v199 = v570;

      if (v198)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v200, v199, 786);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x40) != 0)
    {
      if (*(*(archive + 10) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 10) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v201 = ;
      v569 = v201;
      v202 = objc_opt_class();
      v204 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v203, &v569, v202, 783);
      v205 = v569;

      if (v204)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v206, v205, 783);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x2000) != 0)
    {
      if (*(*(archive + 17) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 17) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v207 = ;
      v568 = v207;
      v208 = objc_opt_class();
      v210 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v209, &v568, v208, 785);
      v211 = v568;

      if (v210)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v212, v211, 785);
      }

      v128 = *(archive + 4);
    }

    if ((v128 & 0x4000) != 0)
    {
      if (*(*(archive + 18) + 24))
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(*(archive + 18) + 24), unarchiverCopy);
      }

      else
      {
        objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, v121, unarchiverCopy);
      }
      v213 = ;
      v567 = v213;
      v214 = objc_opt_class();
      v216 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v215, &v567, v214, 784);
      v119 = v567;

      if (v216)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v217, v119, 784);
      }

      goto LABEL_189;
    }
  }

  else
  {
    if (v22 < 0)
    {
      v23 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 35), unarchiverCopy);
      v566 = v23;
      v24 = objc_opt_class();
      v26 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v25, &v566, v24, 771);
      v27 = v566;

      if (v26)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v28, v27, 771);
      }
    }

    v29 = *(archive + 5);
    if (v29)
    {
      v30 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 36), unarchiverCopy);
      v565 = v30;
      v31 = objc_opt_class();
      v33 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v32, &v565, v31, 772);
      v34 = v565;

      if (v33)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v35, v34, 772);
      }

      v29 = *(archive + 5);
    }

    if ((v29 & 4) != 0)
    {
      v36 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 38), unarchiverCopy);
      v564 = v36;
      v37 = objc_opt_class();
      v39 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v38, &v564, v37, 774);
      v40 = v564;

      if (v39)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v41, v40, 774);
      }

      v29 = *(archive + 5);
    }

    if ((v29 & 2) != 0)
    {
      v42 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 37), unarchiverCopy);
      v563 = v42;
      v43 = objc_opt_class();
      v45 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v44, &v563, v43, 773);
      v46 = v563;

      if (v45)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v47, v46, 773);
      }
    }

    v48 = *(archive + 4);
    if ((v48 & 0x100000) != 0)
    {
      v49 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 24), unarchiverCopy);
      v562 = v49;
      v50 = objc_opt_class();
      v52 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v51, &v562, v50, 782);
      v53 = v562;

      if (v52)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v54, v53, 782);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x80000) != 0)
    {
      v55 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 23), unarchiverCopy);
      v561 = v55;
      v56 = objc_opt_class();
      v58 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v57, &v561, v56, 779);
      v59 = v561;

      if (v58)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v60, v59, 779);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x200000) != 0)
    {
      v61 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 25), unarchiverCopy);
      v560 = v61;
      v62 = objc_opt_class();
      v64 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v63, &v560, v62, 781);
      v65 = v560;

      if (v64)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v66, v65, 781);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x400000) != 0)
    {
      v67 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 26), unarchiverCopy);
      v559 = v67;
      v68 = objc_opt_class();
      v70 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v69, &v559, v68, 780);
      v71 = v559;

      if (v70)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v72, v71, 780);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x800000) != 0)
    {
      v73 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 27), unarchiverCopy);
      v558 = v73;
      v74 = objc_opt_class();
      v76 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v75, &v558, v74, 778);
      v77 = v558;

      if (v76)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v78, v77, 778);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x1000000) != 0)
    {
      v79 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 28), unarchiverCopy);
      v557 = v79;
      v80 = objc_opt_class();
      v82 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v81, &v557, v80, 775);
      v83 = v557;

      if (v82)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v84, v83, 775);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x2000000) != 0)
    {
      v85 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 29), unarchiverCopy);
      v556 = v85;
      v86 = objc_opt_class();
      v88 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v87, &v556, v86, 776);
      v89 = v556;

      if (v88)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v90, v89, 776);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x4000000) != 0)
    {
      v91 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 30), unarchiverCopy);
      v555 = v91;
      v92 = objc_opt_class();
      v94 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v93, &v555, v92, 777);
      v95 = v555;

      if (v94)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v96, v95, 777);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x10000000) != 0)
    {
      v97 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 32), unarchiverCopy);
      v554 = v97;
      v98 = objc_opt_class();
      v100 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v99, &v554, v98, 786);
      v101 = v554;

      if (v100)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v102, v101, 786);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x8000000) != 0)
    {
      v103 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 31), unarchiverCopy);
      v553 = v103;
      v104 = objc_opt_class();
      v106 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v105, &v553, v104, 783);
      v107 = v553;

      if (v106)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v108, v107, 783);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x20000000) != 0)
    {
      v109 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 33), unarchiverCopy);
      v552 = v109;
      v110 = objc_opt_class();
      v112 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v111, &v552, v110, 785);
      v113 = v552;

      if (v112)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v114, v113, 785);
      }

      v48 = *(archive + 4);
    }

    if ((v48 & 0x40000000) != 0)
    {
      v115 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v11, *(archive + 34), unarchiverCopy);
      v551 = v115;
      v116 = objc_opt_class();
      v118 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v117, &v551, v116, 784);
      v119 = v551;

      if (v118)
      {
        objc_msgSend_setObject_forProperty_(mapCopy, v120, v119, 784);
      }

LABEL_189:
    }
  }

  if ((objc_msgSend_isVariation(self, v11, v12, v13) & 1) == 0 && objc_msgSend_fileFormatVersion(unarchiverCopy, v218, v219, v220) < *MEMORY[0x277D80950])
  {
    v221 = objc_msgSend_objectForProperty_(mapCopy, v218, 771, v220);
    v224 = objc_msgSend_objectForProperty_(mapCopy, v222, 772, v223);
    v228 = v224;
    if (v221 && !v224)
    {
      objc_msgSend_willModifyForUpgrade(self, v225, v226, v227);
      objc_msgSend_setObject_forProperty_(mapCopy, v229, v221, 772);
    }
  }

  isVariation = objc_msgSend_isVariation(self, v218, v219, v220);
  v234 = *(archive + 5);
  if (isVariation)
  {
    if ((v234 & 8) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_210;
  }

  if ((v234 & 8) != 0)
  {
LABEL_210:
    v274 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 39), unarchiverCopy);
    v550 = v274;
    v275 = objc_opt_class();
    v277 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v276, &v550, v275, 808);
    v278 = v550;

    if (v277)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v279, v278, 808);
    }

    v234 = *(archive + 5);
    goto LABEL_213;
  }

  if ((v234 & 0x40000) == 0 && (v234 & 0x100) == 0 && (v234 & 0x2000) == 0)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v231, 2, v233);
    objc_opt_class();
    v237 = objc_msgSend_objectForProperty_(mapCopy, v235, 783, v236);
    v238 = TSUCheckedDynamicCast();

    objc_opt_class();
    v241 = objc_msgSend_objectForProperty_(mapCopy, v239, 784, v240);
    v242 = TSUCheckedDynamicCast();

    v245 = objc_msgSend_deriveCategoryTopStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v243, v238, v244);
    v248 = objc_msgSend_deriveCategoryBottomStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v246, v238, v247);
    v254 = objc_msgSend_deriveCategoryInteriorStrokeFromFooterRowVerticalStroke_(TSTTableStyleNetwork, v249, v242, v250);
    if (v245)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v251, v245, 808);
      objc_msgSend_setObject_forProperty_(mapCopy, v255, v245, 809);
      objc_msgSend_setObject_forProperty_(mapCopy, v256, v245, 810);
      objc_msgSend_setObject_forProperty_(mapCopy, v257, v245, 811);
      objc_msgSend_setObject_forProperty_(mapCopy, v258, v245, 812);
    }

    if (v248)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v251, v248, 813);
      objc_msgSend_setObject_forProperty_(mapCopy, v259, v248, 814);
      objc_msgSend_setObject_forProperty_(mapCopy, v260, v248, 815);
      objc_msgSend_setObject_forProperty_(mapCopy, v261, v248, 816);
      objc_msgSend_setObject_forProperty_(mapCopy, v262, v248, 817);
    }

    v263 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], v251, v252, v253, 0.0, self);
    objc_msgSend_setObject_forProperty_(mapCopy, v264, v263, 818);
    objc_msgSend_setObject_forProperty_(mapCopy, v265, v263, 819);
    objc_msgSend_setObject_forProperty_(mapCopy, v266, v263, 820);
    objc_msgSend_setObject_forProperty_(mapCopy, v267, v263, 821);
    objc_msgSend_setObject_forProperty_(mapCopy, v268, v263, 822);
    if (v254)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v269, v254, 823);
      objc_msgSend_setObject_forProperty_(mapCopy, v270, v254, 824);
      objc_msgSend_setObject_forProperty_(mapCopy, v271, v254, 825);
      objc_msgSend_setObject_forProperty_(mapCopy, v272, v254, 826);
      objc_msgSend_setObject_forProperty_(mapCopy, v273, v254, 827);
    }

    self = v511;
    goto LABEL_288;
  }

LABEL_213:
  if ((v234 & 0x10) != 0)
  {
    v280 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 40), unarchiverCopy);
    v549 = v280;
    v281 = objc_opt_class();
    v283 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v282, &v549, v281, 809);
    v284 = v549;

    if (v283)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v285, v284, 809);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x20) != 0)
  {
    v286 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 41), unarchiverCopy);
    v548 = v286;
    v287 = objc_opt_class();
    v289 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v288, &v548, v287, 810);
    v290 = v548;

    if (v289)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v291, v290, 810);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x40) != 0)
  {
    v292 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 42), unarchiverCopy);
    v547 = v292;
    v293 = objc_opt_class();
    v295 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v294, &v547, v293, 811);
    v296 = v547;

    if (v295)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v297, v296, 811);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x80) != 0)
  {
    v298 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 43), unarchiverCopy);
    v546 = v298;
    v299 = objc_opt_class();
    v301 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v300, &v546, v299, 812);
    v302 = v546;

    if (v301)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v303, v302, 812);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x40000) != 0)
  {
    v304 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 54), unarchiverCopy);
    v545 = v304;
    v305 = objc_opt_class();
    v307 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v306, &v545, v305, 818);
    v308 = v545;

    if (v307)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v309, v308, 818);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x80000) != 0)
  {
    v310 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 55), unarchiverCopy);
    v544 = v310;
    v311 = objc_opt_class();
    v313 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v312, &v544, v311, 819);
    v314 = v544;

    if (v313)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v315, v314, 819);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x100000) != 0)
  {
    v316 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 56), unarchiverCopy);
    v543 = v316;
    v317 = objc_opt_class();
    v319 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v318, &v543, v317, 820);
    v320 = v543;

    if (v319)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v321, v320, 820);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x200000) != 0)
  {
    v322 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 57), unarchiverCopy);
    v542 = v322;
    v323 = objc_opt_class();
    v325 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v324, &v542, v323, 821);
    v326 = v542;

    if (v325)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v327, v326, 821);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x400000) != 0)
  {
    v328 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 58), unarchiverCopy);
    v541 = v328;
    v329 = objc_opt_class();
    v331 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v330, &v541, v329, 822);
    v332 = v541;

    if (v331)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v333, v332, 822);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x100) != 0)
  {
    v334 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 44), unarchiverCopy);
    v540 = v334;
    v335 = objc_opt_class();
    v337 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v336, &v540, v335, 813);
    v338 = v540;

    if (v337)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v339, v338, 813);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x200) != 0)
  {
    v340 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 45), unarchiverCopy);
    v539 = v340;
    v341 = objc_opt_class();
    v343 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v342, &v539, v341, 814);
    v344 = v539;

    if (v343)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v345, v344, 814);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x400) != 0)
  {
    v346 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 46), unarchiverCopy);
    v538 = v346;
    v347 = objc_opt_class();
    v349 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v348, &v538, v347, 815);
    v350 = v538;

    if (v349)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v351, v350, 815);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x800) != 0)
  {
    v352 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 47), unarchiverCopy);
    v537 = v352;
    v353 = objc_opt_class();
    v355 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v354, &v537, v353, 816);
    v356 = v537;

    if (v355)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v357, v356, 816);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x1000) != 0)
  {
    v358 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 48), unarchiverCopy);
    v536 = v358;
    v359 = objc_opt_class();
    v361 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v360, &v536, v359, 817);
    v362 = v536;

    if (v361)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v363, v362, 817);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x2000) != 0)
  {
    v364 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 49), unarchiverCopy);
    v535 = v364;
    v365 = objc_opt_class();
    v367 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v366, &v535, v365, 823);
    v368 = v535;

    if (v367)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v369, v368, 823);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x4000) != 0)
  {
    v370 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 50), unarchiverCopy);
    v534 = v370;
    v371 = objc_opt_class();
    v373 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v372, &v534, v371, 824);
    v374 = v534;

    if (v373)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v375, v374, 824);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x8000) != 0)
  {
    v376 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 51), unarchiverCopy);
    v533 = v376;
    v377 = objc_opt_class();
    v379 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v378, &v533, v377, 825);
    v380 = v533;

    if (v379)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v381, v380, 825);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x10000) != 0)
  {
    v382 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 52), unarchiverCopy);
    v532 = v382;
    v383 = objc_opt_class();
    v385 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v384, &v532, v383, 826);
    v386 = v532;

    if (v385)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v387, v386, 826);
    }

    v234 = *(archive + 5);
  }

  if ((v234 & 0x20000) != 0)
  {
    v242 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v231, *(archive + 53), unarchiverCopy);
    v531 = v242;
    v388 = objc_opt_class();
    v390 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v389, &v531, v388, 827);
    v238 = v531;

    if (v390)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v391, v238, 827);
    }

LABEL_288:
  }

  v392 = objc_msgSend_isVariation(self, v231, v232, v233);
  v395 = *(archive + 5);
  if (v392)
  {
    if ((v395 & 0x800000) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_295;
  }

  if ((v395 & 0x800000) != 0)
  {
LABEL_295:
    v424 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 59), unarchiverCopy);
    v530 = v424;
    v425 = objc_opt_class();
    v427 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v426, &v530, v425, 828);
    v428 = v530;

    if (v427)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v429, v428, 828);
    }

    v395 = *(archive + 5);
    goto LABEL_298;
  }

  if ((v395 & 0x1000000) == 0)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v393, 2, v394);
    v397 = objc_msgSend_deriveBodyPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v396, 0, mapCopy);
    v399 = objc_msgSend_deriveBodyPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v398, 0, mapCopy);
    v517 = objc_msgSend_deriveBodyPivotDeEmphasisHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v400, 0, mapCopy);
    v516 = objc_msgSend_deriveBodyPivotEmphasisVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v401, 0, mapCopy);
    v515 = objc_msgSend_deriveHeaderColumnPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v402, 0, mapCopy);
    v514 = objc_msgSend_deriveHeaderColumnPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v403, 0, mapCopy);
    v513 = objc_msgSend_deriveHeaderColumnPivotSeparatorStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v404, 0, mapCopy);
    selfCopy = self;
    v406 = objc_msgSend_deriveHeaderRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v405, 0, mapCopy);
    v408 = objc_msgSend_deriveHeaderRowPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v407, 0, mapCopy);
    v410 = objc_msgSend_deriveHeaderRowPivotTitleStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v409, 0, mapCopy);
    v412 = objc_msgSend_deriveFooterRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v411, 0, mapCopy);
    objc_msgSend_setObject_forProperty_(mapCopy, v413, v397, 828);
    objc_msgSend_setObject_forProperty_(mapCopy, v414, v399, 829);
    objc_msgSend_setObject_forProperty_(mapCopy, v415, v517, 830);
    objc_msgSend_setObject_forProperty_(mapCopy, v416, v516, 831);
    objc_msgSend_setObject_forProperty_(mapCopy, v417, v515, 832);
    objc_msgSend_setObject_forProperty_(mapCopy, v418, v514, 833);
    objc_msgSend_setObject_forProperty_(mapCopy, v419, v513, 834);
    objc_msgSend_setObject_forProperty_(mapCopy, v420, v406, 835);
    objc_msgSend_setObject_forProperty_(mapCopy, v421, v408, 836);
    objc_msgSend_setObject_forProperty_(mapCopy, v422, v410, 837);
    objc_msgSend_setObject_forProperty_(mapCopy, v423, v412, 838);

    self = selfCopy;
LABEL_337:

    goto LABEL_338;
  }

LABEL_298:
  if ((v395 & 0x1000000) != 0)
  {
    v430 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 60), unarchiverCopy);
    v529 = v430;
    v431 = objc_opt_class();
    v433 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v432, &v529, v431, 829);
    v434 = v529;

    if (v433)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v435, v434, 829);
    }

    v395 = *(archive + 5);
  }

  if ((v395 & 0x2000000) != 0)
  {
    v436 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 61), unarchiverCopy);
    v528 = v436;
    v437 = objc_opt_class();
    v439 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v438, &v528, v437, 830);
    v440 = v528;

    if (v439)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v441, v440, 830);
    }

    v395 = *(archive + 5);
  }

  if ((v395 & 0x4000000) != 0)
  {
    v442 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 62), unarchiverCopy);
    v527 = v442;
    v443 = objc_opt_class();
    v445 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v444, &v527, v443, 831);
    v446 = v527;

    if (v445)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v447, v446, 831);
    }

    v395 = *(archive + 5);
  }

  if ((v395 & 0x8000000) != 0)
  {
    v448 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 63), unarchiverCopy);
    v526 = v448;
    v449 = objc_opt_class();
    v451 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v450, &v526, v449, 832);
    v452 = v526;

    if (v451)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v453, v452, 832);
    }

    v395 = *(archive + 5);
  }

  if ((v395 & 0x10000000) != 0)
  {
    v454 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 64), unarchiverCopy);
    v525 = v454;
    v455 = objc_opt_class();
    v457 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v456, &v525, v455, 833);
    v458 = v525;

    if (v457)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v459, v458, 833);
    }

    v395 = *(archive + 5);
  }

  if ((v395 & 0x20000000) != 0)
  {
    v460 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 65), unarchiverCopy);
    v524 = v460;
    v461 = objc_opt_class();
    v463 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v462, &v524, v461, 834);
    v464 = v524;

    if (v463)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v465, v464, 834);
    }

    v395 = *(archive + 5);
  }

  if ((v395 & 0x40000000) != 0)
  {
    v466 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 66), unarchiverCopy);
    v523 = v466;
    v467 = objc_opt_class();
    v469 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v468, &v523, v467, 835);
    v470 = v523;

    if (v469)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v471, v470, 835);
    }

    v395 = *(archive + 5);
  }

  if (v395 < 0)
  {
    v472 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 67), unarchiverCopy);
    v522 = v472;
    v473 = objc_opt_class();
    v475 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v474, &v522, v473, 836);
    v476 = v522;

    if (v475)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v477, v476, 836);
    }
  }

  v478 = *(archive + 6);
  if (v478)
  {
    v479 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 68), unarchiverCopy);
    v521 = v479;
    v480 = objc_opt_class();
    v482 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v481, &v521, v480, 837);
    v483 = v521;

    if (v482)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v484, v483, 837);
    }

    v478 = *(archive + 6);
  }

  if ((v478 & 2) != 0)
  {
    v399 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v393, *(archive + 69), unarchiverCopy);
    v520 = v399;
    v485 = objc_opt_class();
    v487 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v486, &v520, v485, 838);
    v397 = v520;

    if (v487)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v488, v397, 838);
    }

    goto LABEL_337;
  }

LABEL_338:
  v489 = *(archive + 6);
  if ((v489 & 0x20) != 0)
  {
    v584[0] = *(archive + 563);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v14, v393, v584, 788))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v393, v584[0] != 0, 788);
    }

    v489 = *(archive + 6);
  }

  if ((v489 & 0x40) != 0)
  {
    v584[0] = *(archive + 564);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v14, v393, v584, 789))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v393, v584[0] != 0, 789);
    }

    v489 = *(archive + 6);
  }

  if ((v489 & 0x80) != 0)
  {
    v584[0] = *(archive + 565);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v14, v393, v584, 790))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v393, v584[0] != 0, 790);
    }

    v489 = *(archive + 6);
  }

  if ((v489 & 0x100) != 0)
  {
    v584[0] = *(archive + 566);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v14, v393, v584, 792))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v393, v584[0] != 0, 792);
    }

    v489 = *(archive + 6);
  }

  if ((v489 & 0x200) != 0)
  {
    v584[0] = *(archive + 567);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v14, v393, v584, 794))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v393, v584[0] != 0, 794);
    }

    v489 = *(archive + 6);
  }

  if ((v489 & 0x800) != 0)
  {
    v584[0] = *(archive + 572);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v14, v393, v584, 796))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v393, v584[0] != 0, 796);
    }

    v489 = *(archive + 6);
  }

  if ((v489 & 0x4000) != 0)
  {
    v584[0] = *(archive + 575);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v14, v393, v584, 791))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v393, v584[0] != 0, 791);
    }

    v489 = *(archive + 6);
  }

  if ((v489 & 0x2000) != 0)
  {
    v584[0] = *(archive + 574);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v14, v393, v584, 793))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v393, v584[0] != 0, 793);
    }

    v489 = *(archive + 6);
  }

  if ((v489 & 0x8000) != 0)
  {
    v584[0] = *(archive + 576);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v14, v393, v584, 795))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v393, v584[0] != 0, 795);
    }
  }

  if (*(archive + 16))
  {
    v490 = objc_alloc(MEMORY[0x277CCACA8]);
    v493 = objc_msgSend_tsp_initWithProtobufString_(v490, v491, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL, v492);
    v519 = v493;
    v494 = objc_opt_class();
    v496 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v495, &v519, v494, 797);
    v497 = v519;

    if (v496)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v498, v497, 797);
    }
  }

  if (*(archive + 26))
  {
    v584[0] = *(archive + 145);
    if (objc_msgSend_validateIntValue_forProperty_(v14, v393, v584, 798))
    {
      objc_msgSend_setIntValue_forProperty_(mapCopy, v393, v584[0], 798);
    }
  }

  if ((*(archive + 18) & 4) != 0)
  {
    v499 = objc_msgSend_instanceWithArchive_unarchiver_(TSTTableStrokePresetList, v393, *(archive + 22), unarchiverCopy);
    v518 = v499;
    v500 = objc_opt_class();
    v502 = objc_msgSend_validateObjectValue_withClass_forProperty_(v14, v501, &v518, v500, 787);
    v503 = v518;

    if (v502)
    {
      objc_msgSend_setObject_forProperty_(mapCopy, v504, v503, 787);
    }
  }

  if ((objc_msgSend_containsProperty_(mapCopy, v393, 798, v394) & 1) == 0 && (objc_msgSend_isVariation(self, v505, v506, v507) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v508, 2, v509);
    objc_msgSend_setIntValue_forProperty_(mapCopy, v510, 0, 798);
  }
}

- (void)saveTableStylePropertiesToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = objc_opt_class();
  v8 = *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]);
  if (objc_msgSend_containsProperty_(v8, v9, 769, v10))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v11, 769, v12);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v13, &v613, 769))
    {
      v14 = v613 != 0;
      *(archive + 6) |= 4u;
      *(archive + 560) = v14;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v11, 768, v12))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v15, 768, v16);
    if (objc_msgSend_validateIntValue_forProperty_(v7, v17, &v613, 768))
    {
      v18 = v613 != 0;
      *(archive + 6) |= 0x10u;
      *(archive + 562) = v18;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v15, 770, v16))
  {
    v21 = objc_msgSend_objectForProperty_(v8, v19, 770, v20);
    v612 = v21;
    v22 = objc_opt_class();
    v24 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v23, &v612, v22, 770);
    v25 = v612;

    if (v24)
    {
      *(archive + 4) |= 2u;
      v27 = *(archive + 5);
      if (!v27)
      {
        v28 = *(archive + 1);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = MEMORY[0x223DA0280](v28);
        *(archive + 5) = v27;
      }

      objc_msgSend_saveToArchive_archiver_(v25, v26, v27, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v19, 799, v20))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v29, 799, v30);
    if (objc_msgSend_validateIntValue_forProperty_(v7, v31, &v613, 799))
    {
      v32 = v613 != 0;
      *(archive + 6) |= 8u;
      *(archive + 561) = v32;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v29, 771, v30))
  {
    v35 = objc_msgSend_objectForProperty_(v8, v33, 771, v34);
    v611 = v35;
    v36 = objc_opt_class();
    v38 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v37, &v611, v36, 771);
    v39 = v611;

    if (v38)
    {
      *(archive + 4) |= 0x80000000;
      v41 = *(archive + 35);
      if (!v41)
      {
        v42 = *(archive + 1);
        if (v42)
        {
          v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
        }

        v41 = MEMORY[0x223DA0290](v42);
        *(archive + 35) = v41;
      }

      objc_msgSend_saveToArchive_archiver_(v39, v40, v41, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v33, 772, v34))
  {
    v45 = objc_msgSend_objectForProperty_(v8, v43, 772, v44);
    v610 = v45;
    v46 = objc_opt_class();
    v48 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v47, &v610, v46, 772);
    v49 = v610;

    if (v48)
    {
      *(archive + 5) |= 1u;
      v51 = *(archive + 36);
      if (!v51)
      {
        v52 = *(archive + 1);
        if (v52)
        {
          v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
        }

        v51 = MEMORY[0x223DA0290](v52);
        *(archive + 36) = v51;
      }

      objc_msgSend_saveToArchive_archiver_(v49, v50, v51, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v43, 774, v44))
  {
    v55 = objc_msgSend_objectForProperty_(v8, v53, 774, v54);
    v609 = v55;
    v56 = objc_opt_class();
    v58 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v57, &v609, v56, 774);
    v59 = v609;

    if (v58)
    {
      *(archive + 5) |= 4u;
      v61 = *(archive + 38);
      if (!v61)
      {
        v62 = *(archive + 1);
        if (v62)
        {
          v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
        }

        v61 = MEMORY[0x223DA0290](v62);
        *(archive + 38) = v61;
      }

      objc_msgSend_saveToArchive_archiver_(v59, v60, v61, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v53, 773, v54))
  {
    v65 = objc_msgSend_objectForProperty_(v8, v63, 773, v64);
    v608 = v65;
    v66 = objc_opt_class();
    v68 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v67, &v608, v66, 773);
    v69 = v608;

    if (v68)
    {
      *(archive + 5) |= 2u;
      v71 = *(archive + 37);
      if (!v71)
      {
        v72 = *(archive + 1);
        if (v72)
        {
          v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
        }

        v71 = MEMORY[0x223DA0290](v72);
        *(archive + 37) = v71;
      }

      objc_msgSend_saveToArchive_archiver_(v69, v70, v71, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v63, 782, v64))
  {
    v75 = objc_msgSend_objectForProperty_(v8, v73, 782, v74);
    v607 = v75;
    v76 = objc_opt_class();
    v78 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v77, &v607, v76, 782);
    v79 = v607;

    if (v78)
    {
      *(archive + 4) |= 0x100000u;
      v81 = *(archive + 24);
      if (!v81)
      {
        v82 = *(archive + 1);
        if (v82)
        {
          v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
        }

        v81 = MEMORY[0x223DA0290](v82);
        *(archive + 24) = v81;
      }

      objc_msgSend_saveToArchive_archiver_(v79, v80, v81, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v73, 779, v74))
  {
    v85 = objc_msgSend_objectForProperty_(v8, v83, 779, v84);
    v606 = v85;
    v86 = objc_opt_class();
    v88 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v87, &v606, v86, 779);
    v89 = v606;

    if (v88)
    {
      *(archive + 4) |= 0x80000u;
      v91 = *(archive + 23);
      if (!v91)
      {
        v92 = *(archive + 1);
        if (v92)
        {
          v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
        }

        v91 = MEMORY[0x223DA0290](v92);
        *(archive + 23) = v91;
      }

      objc_msgSend_saveToArchive_archiver_(v89, v90, v91, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v83, 781, v84))
  {
    v95 = objc_msgSend_objectForProperty_(v8, v93, 781, v94);
    v605 = v95;
    v96 = objc_opt_class();
    v98 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v97, &v605, v96, 781);
    v99 = v605;

    if (v98)
    {
      *(archive + 4) |= 0x200000u;
      v101 = *(archive + 25);
      if (!v101)
      {
        v102 = *(archive + 1);
        if (v102)
        {
          v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
        }

        v101 = MEMORY[0x223DA0290](v102);
        *(archive + 25) = v101;
      }

      objc_msgSend_saveToArchive_archiver_(v99, v100, v101, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v93, 780, v94))
  {
    v105 = objc_msgSend_objectForProperty_(v8, v103, 780, v104);
    v604 = v105;
    v106 = objc_opt_class();
    v108 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v107, &v604, v106, 780);
    v109 = v604;

    if (v108)
    {
      *(archive + 4) |= 0x400000u;
      v111 = *(archive + 26);
      if (!v111)
      {
        v112 = *(archive + 1);
        if (v112)
        {
          v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
        }

        v111 = MEMORY[0x223DA0290](v112);
        *(archive + 26) = v111;
      }

      objc_msgSend_saveToArchive_archiver_(v109, v110, v111, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v103, 778, v104))
  {
    v115 = objc_msgSend_objectForProperty_(v8, v113, 778, v114);
    v603 = v115;
    v116 = objc_opt_class();
    v118 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v117, &v603, v116, 778);
    v119 = v603;

    if (v118)
    {
      *(archive + 4) |= 0x800000u;
      v121 = *(archive + 27);
      if (!v121)
      {
        v122 = *(archive + 1);
        if (v122)
        {
          v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
        }

        v121 = MEMORY[0x223DA0290](v122);
        *(archive + 27) = v121;
      }

      objc_msgSend_saveToArchive_archiver_(v119, v120, v121, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v113, 775, v114))
  {
    v125 = objc_msgSend_objectForProperty_(v8, v123, 775, v124);
    v602 = v125;
    v126 = objc_opt_class();
    v128 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v127, &v602, v126, 775);
    v129 = v602;

    if (v128)
    {
      *(archive + 4) |= 0x1000000u;
      v131 = *(archive + 28);
      if (!v131)
      {
        v132 = *(archive + 1);
        if (v132)
        {
          v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
        }

        v131 = MEMORY[0x223DA0290](v132);
        *(archive + 28) = v131;
      }

      objc_msgSend_saveToArchive_archiver_(v129, v130, v131, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v123, 776, v124))
  {
    v135 = objc_msgSend_objectForProperty_(v8, v133, 776, v134);
    v601 = v135;
    v136 = objc_opt_class();
    v138 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v137, &v601, v136, 776);
    v139 = v601;

    if (v138)
    {
      *(archive + 4) |= 0x2000000u;
      v141 = *(archive + 29);
      if (!v141)
      {
        v142 = *(archive + 1);
        if (v142)
        {
          v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
        }

        v141 = MEMORY[0x223DA0290](v142);
        *(archive + 29) = v141;
      }

      objc_msgSend_saveToArchive_archiver_(v139, v140, v141, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v133, 777, v134))
  {
    v145 = objc_msgSend_objectForProperty_(v8, v143, 777, v144);
    v600 = v145;
    v146 = objc_opt_class();
    v148 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v147, &v600, v146, 777);
    v149 = v600;

    if (v148)
    {
      *(archive + 4) |= 0x4000000u;
      v151 = *(archive + 30);
      if (!v151)
      {
        v152 = *(archive + 1);
        if (v152)
        {
          v152 = *(v152 & 0xFFFFFFFFFFFFFFFELL);
        }

        v151 = MEMORY[0x223DA0290](v152);
        *(archive + 30) = v151;
      }

      objc_msgSend_saveToArchive_archiver_(v149, v150, v151, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v143, 786, v144))
  {
    v155 = objc_msgSend_objectForProperty_(v8, v153, 786, v154);
    v599 = v155;
    v156 = objc_opt_class();
    v158 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v157, &v599, v156, 786);
    v159 = v599;

    if (v158)
    {
      *(archive + 4) |= 0x10000000u;
      v161 = *(archive + 32);
      if (!v161)
      {
        v162 = *(archive + 1);
        if (v162)
        {
          v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
        }

        v161 = MEMORY[0x223DA0290](v162);
        *(archive + 32) = v161;
      }

      objc_msgSend_saveToArchive_archiver_(v159, v160, v161, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v153, 783, v154))
  {
    v165 = objc_msgSend_objectForProperty_(v8, v163, 783, v164);
    v598 = v165;
    v166 = objc_opt_class();
    v168 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v167, &v598, v166, 783);
    v169 = v598;

    if (v168)
    {
      *(archive + 4) |= 0x8000000u;
      v171 = *(archive + 31);
      if (!v171)
      {
        v172 = *(archive + 1);
        if (v172)
        {
          v172 = *(v172 & 0xFFFFFFFFFFFFFFFELL);
        }

        v171 = MEMORY[0x223DA0290](v172);
        *(archive + 31) = v171;
      }

      objc_msgSend_saveToArchive_archiver_(v169, v170, v171, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v163, 785, v164))
  {
    v175 = objc_msgSend_objectForProperty_(v8, v173, 785, v174);
    v597 = v175;
    v176 = objc_opt_class();
    v178 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v177, &v597, v176, 785);
    v179 = v597;

    if (v178)
    {
      *(archive + 4) |= 0x20000000u;
      v181 = *(archive + 33);
      if (!v181)
      {
        v182 = *(archive + 1);
        if (v182)
        {
          v182 = *(v182 & 0xFFFFFFFFFFFFFFFELL);
        }

        v181 = MEMORY[0x223DA0290](v182);
        *(archive + 33) = v181;
      }

      objc_msgSend_saveToArchive_archiver_(v179, v180, v181, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v173, 784, v174))
  {
    v185 = objc_msgSend_objectForProperty_(v8, v183, 784, v184);
    v596 = v185;
    v186 = objc_opt_class();
    v188 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v187, &v596, v186, 784);
    v189 = v596;

    if (v188)
    {
      *(archive + 4) |= 0x40000000u;
      v191 = *(archive + 34);
      if (!v191)
      {
        v192 = *(archive + 1);
        if (v192)
        {
          v192 = *(v192 & 0xFFFFFFFFFFFFFFFELL);
        }

        v191 = MEMORY[0x223DA0290](v192);
        *(archive + 34) = v191;
      }

      objc_msgSend_saveToArchive_archiver_(v189, v190, v191, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v183, 808, v184))
  {
    v195 = objc_msgSend_objectForProperty_(v8, v193, 808, v194);
    v595 = v195;
    v196 = objc_opt_class();
    v198 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v197, &v595, v196, 808);
    v199 = v595;

    if (v198)
    {
      *(archive + 5) |= 8u;
      v201 = *(archive + 39);
      if (!v201)
      {
        v202 = *(archive + 1);
        if (v202)
        {
          v202 = *(v202 & 0xFFFFFFFFFFFFFFFELL);
        }

        v201 = MEMORY[0x223DA0290](v202);
        *(archive + 39) = v201;
      }

      objc_msgSend_saveToArchive_archiver_(v199, v200, v201, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v193, 809, v194))
  {
    v205 = objc_msgSend_objectForProperty_(v8, v203, 809, v204);
    v594 = v205;
    v206 = objc_opt_class();
    v208 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v207, &v594, v206, 809);
    v209 = v594;

    if (v208)
    {
      *(archive + 5) |= 0x10u;
      v211 = *(archive + 40);
      if (!v211)
      {
        v212 = *(archive + 1);
        if (v212)
        {
          v212 = *(v212 & 0xFFFFFFFFFFFFFFFELL);
        }

        v211 = MEMORY[0x223DA0290](v212);
        *(archive + 40) = v211;
      }

      objc_msgSend_saveToArchive_archiver_(v209, v210, v211, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v203, 810, v204))
  {
    v215 = objc_msgSend_objectForProperty_(v8, v213, 810, v214);
    v593 = v215;
    v216 = objc_opt_class();
    v218 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v217, &v593, v216, 810);
    v219 = v593;

    if (v218)
    {
      *(archive + 5) |= 0x20u;
      v221 = *(archive + 41);
      if (!v221)
      {
        v222 = *(archive + 1);
        if (v222)
        {
          v222 = *(v222 & 0xFFFFFFFFFFFFFFFELL);
        }

        v221 = MEMORY[0x223DA0290](v222);
        *(archive + 41) = v221;
      }

      objc_msgSend_saveToArchive_archiver_(v219, v220, v221, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v213, 811, v214))
  {
    v225 = objc_msgSend_objectForProperty_(v8, v223, 811, v224);
    v592 = v225;
    v226 = objc_opt_class();
    v228 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v227, &v592, v226, 811);
    v229 = v592;

    if (v228)
    {
      *(archive + 5) |= 0x40u;
      v231 = *(archive + 42);
      if (!v231)
      {
        v232 = *(archive + 1);
        if (v232)
        {
          v232 = *(v232 & 0xFFFFFFFFFFFFFFFELL);
        }

        v231 = MEMORY[0x223DA0290](v232);
        *(archive + 42) = v231;
      }

      objc_msgSend_saveToArchive_archiver_(v229, v230, v231, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v223, 812, v224))
  {
    v235 = objc_msgSend_objectForProperty_(v8, v233, 812, v234);
    v591 = v235;
    v236 = objc_opt_class();
    v238 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v237, &v591, v236, 812);
    v239 = v591;

    if (v238)
    {
      *(archive + 5) |= 0x80u;
      v241 = *(archive + 43);
      if (!v241)
      {
        v242 = *(archive + 1);
        if (v242)
        {
          v242 = *(v242 & 0xFFFFFFFFFFFFFFFELL);
        }

        v241 = MEMORY[0x223DA0290](v242);
        *(archive + 43) = v241;
      }

      objc_msgSend_saveToArchive_archiver_(v239, v240, v241, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v233, 818, v234))
  {
    v245 = objc_msgSend_objectForProperty_(v8, v243, 818, v244);
    v590 = v245;
    v246 = objc_opt_class();
    v248 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v247, &v590, v246, 818);
    v249 = v590;

    if (v248)
    {
      *(archive + 5) |= 0x40000u;
      v251 = *(archive + 54);
      if (!v251)
      {
        v252 = *(archive + 1);
        if (v252)
        {
          v252 = *(v252 & 0xFFFFFFFFFFFFFFFELL);
        }

        v251 = MEMORY[0x223DA0290](v252);
        *(archive + 54) = v251;
      }

      objc_msgSend_saveToArchive_archiver_(v249, v250, v251, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v243, 819, v244))
  {
    v255 = objc_msgSend_objectForProperty_(v8, v253, 819, v254);
    v589 = v255;
    v256 = objc_opt_class();
    v258 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v257, &v589, v256, 819);
    v259 = v589;

    if (v258)
    {
      *(archive + 5) |= 0x80000u;
      v261 = *(archive + 55);
      if (!v261)
      {
        v262 = *(archive + 1);
        if (v262)
        {
          v262 = *(v262 & 0xFFFFFFFFFFFFFFFELL);
        }

        v261 = MEMORY[0x223DA0290](v262);
        *(archive + 55) = v261;
      }

      objc_msgSend_saveToArchive_archiver_(v259, v260, v261, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v253, 820, v254))
  {
    v265 = objc_msgSend_objectForProperty_(v8, v263, 820, v264);
    v588 = v265;
    v266 = objc_opt_class();
    v268 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v267, &v588, v266, 820);
    v269 = v588;

    if (v268)
    {
      *(archive + 5) |= 0x100000u;
      v271 = *(archive + 56);
      if (!v271)
      {
        v272 = *(archive + 1);
        if (v272)
        {
          v272 = *(v272 & 0xFFFFFFFFFFFFFFFELL);
        }

        v271 = MEMORY[0x223DA0290](v272);
        *(archive + 56) = v271;
      }

      objc_msgSend_saveToArchive_archiver_(v269, v270, v271, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v263, 821, v264))
  {
    v275 = objc_msgSend_objectForProperty_(v8, v273, 821, v274);
    v587 = v275;
    v276 = objc_opt_class();
    v278 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v277, &v587, v276, 821);
    v279 = v587;

    if (v278)
    {
      *(archive + 5) |= 0x200000u;
      v281 = *(archive + 57);
      if (!v281)
      {
        v282 = *(archive + 1);
        if (v282)
        {
          v282 = *(v282 & 0xFFFFFFFFFFFFFFFELL);
        }

        v281 = MEMORY[0x223DA0290](v282);
        *(archive + 57) = v281;
      }

      objc_msgSend_saveToArchive_archiver_(v279, v280, v281, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v273, 822, v274))
  {
    v285 = objc_msgSend_objectForProperty_(v8, v283, 822, v284);
    v586 = v285;
    v286 = objc_opt_class();
    v288 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v287, &v586, v286, 822);
    v289 = v586;

    if (v288)
    {
      *(archive + 5) |= 0x400000u;
      v291 = *(archive + 58);
      if (!v291)
      {
        v292 = *(archive + 1);
        if (v292)
        {
          v292 = *(v292 & 0xFFFFFFFFFFFFFFFELL);
        }

        v291 = MEMORY[0x223DA0290](v292);
        *(archive + 58) = v291;
      }

      objc_msgSend_saveToArchive_archiver_(v289, v290, v291, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v283, 813, v284))
  {
    v295 = objc_msgSend_objectForProperty_(v8, v293, 813, v294);
    v585 = v295;
    v296 = objc_opt_class();
    v298 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v297, &v585, v296, 813);
    v299 = v585;

    if (v298)
    {
      *(archive + 5) |= 0x100u;
      v301 = *(archive + 44);
      if (!v301)
      {
        v302 = *(archive + 1);
        if (v302)
        {
          v302 = *(v302 & 0xFFFFFFFFFFFFFFFELL);
        }

        v301 = MEMORY[0x223DA0290](v302);
        *(archive + 44) = v301;
      }

      objc_msgSend_saveToArchive_archiver_(v299, v300, v301, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v293, 814, v294))
  {
    v305 = objc_msgSend_objectForProperty_(v8, v303, 814, v304);
    v584 = v305;
    v306 = objc_opt_class();
    v308 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v307, &v584, v306, 814);
    v309 = v584;

    if (v308)
    {
      *(archive + 5) |= 0x200u;
      v311 = *(archive + 45);
      if (!v311)
      {
        v312 = *(archive + 1);
        if (v312)
        {
          v312 = *(v312 & 0xFFFFFFFFFFFFFFFELL);
        }

        v311 = MEMORY[0x223DA0290](v312);
        *(archive + 45) = v311;
      }

      objc_msgSend_saveToArchive_archiver_(v309, v310, v311, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v303, 815, v304))
  {
    v315 = objc_msgSend_objectForProperty_(v8, v313, 815, v314);
    v583 = v315;
    v316 = objc_opt_class();
    v318 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v317, &v583, v316, 815);
    v319 = v583;

    if (v318)
    {
      *(archive + 5) |= 0x400u;
      v321 = *(archive + 46);
      if (!v321)
      {
        v322 = *(archive + 1);
        if (v322)
        {
          v322 = *(v322 & 0xFFFFFFFFFFFFFFFELL);
        }

        v321 = MEMORY[0x223DA0290](v322);
        *(archive + 46) = v321;
      }

      objc_msgSend_saveToArchive_archiver_(v319, v320, v321, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v313, 816, v314))
  {
    v325 = objc_msgSend_objectForProperty_(v8, v323, 816, v324);
    v582 = v325;
    v326 = objc_opt_class();
    v328 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v327, &v582, v326, 816);
    v329 = v582;

    if (v328)
    {
      *(archive + 5) |= 0x800u;
      v331 = *(archive + 47);
      if (!v331)
      {
        v332 = *(archive + 1);
        if (v332)
        {
          v332 = *(v332 & 0xFFFFFFFFFFFFFFFELL);
        }

        v331 = MEMORY[0x223DA0290](v332);
        *(archive + 47) = v331;
      }

      objc_msgSend_saveToArchive_archiver_(v329, v330, v331, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v323, 817, v324))
  {
    v335 = objc_msgSend_objectForProperty_(v8, v333, 817, v334);
    v581 = v335;
    v336 = objc_opt_class();
    v338 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v337, &v581, v336, 817);
    v339 = v581;

    if (v338)
    {
      *(archive + 5) |= 0x1000u;
      v341 = *(archive + 48);
      if (!v341)
      {
        v342 = *(archive + 1);
        if (v342)
        {
          v342 = *(v342 & 0xFFFFFFFFFFFFFFFELL);
        }

        v341 = MEMORY[0x223DA0290](v342);
        *(archive + 48) = v341;
      }

      objc_msgSend_saveToArchive_archiver_(v339, v340, v341, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v333, 823, v334))
  {
    v345 = objc_msgSend_objectForProperty_(v8, v343, 823, v344);
    v580 = v345;
    v346 = objc_opt_class();
    v348 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v347, &v580, v346, 823);
    v349 = v580;

    if (v348)
    {
      *(archive + 5) |= 0x2000u;
      v351 = *(archive + 49);
      if (!v351)
      {
        v352 = *(archive + 1);
        if (v352)
        {
          v352 = *(v352 & 0xFFFFFFFFFFFFFFFELL);
        }

        v351 = MEMORY[0x223DA0290](v352);
        *(archive + 49) = v351;
      }

      objc_msgSend_saveToArchive_archiver_(v349, v350, v351, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v343, 824, v344))
  {
    v355 = objc_msgSend_objectForProperty_(v8, v353, 824, v354);
    v579 = v355;
    v356 = objc_opt_class();
    v358 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v357, &v579, v356, 824);
    v359 = v579;

    if (v358)
    {
      *(archive + 5) |= 0x4000u;
      v361 = *(archive + 50);
      if (!v361)
      {
        v362 = *(archive + 1);
        if (v362)
        {
          v362 = *(v362 & 0xFFFFFFFFFFFFFFFELL);
        }

        v361 = MEMORY[0x223DA0290](v362);
        *(archive + 50) = v361;
      }

      objc_msgSend_saveToArchive_archiver_(v359, v360, v361, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v353, 825, v354))
  {
    v365 = objc_msgSend_objectForProperty_(v8, v363, 825, v364);
    v578 = v365;
    v366 = objc_opt_class();
    v368 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v367, &v578, v366, 825);
    v369 = v578;

    if (v368)
    {
      *(archive + 5) |= 0x8000u;
      v371 = *(archive + 51);
      if (!v371)
      {
        v372 = *(archive + 1);
        if (v372)
        {
          v372 = *(v372 & 0xFFFFFFFFFFFFFFFELL);
        }

        v371 = MEMORY[0x223DA0290](v372);
        *(archive + 51) = v371;
      }

      objc_msgSend_saveToArchive_archiver_(v369, v370, v371, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v363, 826, v364))
  {
    v375 = objc_msgSend_objectForProperty_(v8, v373, 826, v374);
    v577 = v375;
    v376 = objc_opt_class();
    v378 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v377, &v577, v376, 826);
    v379 = v577;

    if (v378)
    {
      *(archive + 5) |= 0x10000u;
      v381 = *(archive + 52);
      if (!v381)
      {
        v382 = *(archive + 1);
        if (v382)
        {
          v382 = *(v382 & 0xFFFFFFFFFFFFFFFELL);
        }

        v381 = MEMORY[0x223DA0290](v382);
        *(archive + 52) = v381;
      }

      objc_msgSend_saveToArchive_archiver_(v379, v380, v381, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v373, 827, v374))
  {
    v385 = objc_msgSend_objectForProperty_(v8, v383, 827, v384);
    v576 = v385;
    v386 = objc_opt_class();
    v388 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v387, &v576, v386, 827);
    v389 = v576;

    if (v388)
    {
      *(archive + 5) |= 0x20000u;
      v391 = *(archive + 53);
      if (!v391)
      {
        v392 = *(archive + 1);
        if (v392)
        {
          v392 = *(v392 & 0xFFFFFFFFFFFFFFFELL);
        }

        v391 = MEMORY[0x223DA0290](v392);
        *(archive + 53) = v391;
      }

      objc_msgSend_saveToArchive_archiver_(v389, v390, v391, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v383, 828, v384))
  {
    v395 = objc_msgSend_objectForProperty_(v8, v393, 828, v394);
    v575 = v395;
    v396 = objc_opt_class();
    v398 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v397, &v575, v396, 828);
    v399 = v575;

    if (v398)
    {
      *(archive + 5) |= 0x800000u;
      v401 = *(archive + 59);
      if (!v401)
      {
        v402 = *(archive + 1);
        if (v402)
        {
          v402 = *(v402 & 0xFFFFFFFFFFFFFFFELL);
        }

        v401 = MEMORY[0x223DA0290](v402);
        *(archive + 59) = v401;
      }

      objc_msgSend_saveToArchive_archiver_(v399, v400, v401, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v393, 829, v394))
  {
    v405 = objc_msgSend_objectForProperty_(v8, v403, 829, v404);
    v574 = v405;
    v406 = objc_opt_class();
    v408 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v407, &v574, v406, 829);
    v409 = v574;

    if (v408)
    {
      *(archive + 5) |= 0x1000000u;
      v411 = *(archive + 60);
      if (!v411)
      {
        v412 = *(archive + 1);
        if (v412)
        {
          v412 = *(v412 & 0xFFFFFFFFFFFFFFFELL);
        }

        v411 = MEMORY[0x223DA0290](v412);
        *(archive + 60) = v411;
      }

      objc_msgSend_saveToArchive_archiver_(v409, v410, v411, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v403, 830, v404))
  {
    v415 = objc_msgSend_objectForProperty_(v8, v413, 830, v414);
    v573 = v415;
    v416 = objc_opt_class();
    v418 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v417, &v573, v416, 830);
    v419 = v573;

    if (v418)
    {
      *(archive + 5) |= 0x2000000u;
      v421 = *(archive + 61);
      if (!v421)
      {
        v422 = *(archive + 1);
        if (v422)
        {
          v422 = *(v422 & 0xFFFFFFFFFFFFFFFELL);
        }

        v421 = MEMORY[0x223DA0290](v422);
        *(archive + 61) = v421;
      }

      objc_msgSend_saveToArchive_archiver_(v419, v420, v421, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v413, 831, v414))
  {
    v425 = objc_msgSend_objectForProperty_(v8, v423, 831, v424);
    v572 = v425;
    v426 = objc_opt_class();
    v428 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v427, &v572, v426, 831);
    v429 = v572;

    if (v428)
    {
      *(archive + 5) |= 0x4000000u;
      v431 = *(archive + 62);
      if (!v431)
      {
        v432 = *(archive + 1);
        if (v432)
        {
          v432 = *(v432 & 0xFFFFFFFFFFFFFFFELL);
        }

        v431 = MEMORY[0x223DA0290](v432);
        *(archive + 62) = v431;
      }

      objc_msgSend_saveToArchive_archiver_(v429, v430, v431, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v423, 832, v424))
  {
    v435 = objc_msgSend_objectForProperty_(v8, v433, 832, v434);
    v571 = v435;
    v436 = objc_opt_class();
    v438 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v437, &v571, v436, 832);
    v439 = v571;

    if (v438)
    {
      *(archive + 5) |= 0x8000000u;
      v441 = *(archive + 63);
      if (!v441)
      {
        v442 = *(archive + 1);
        if (v442)
        {
          v442 = *(v442 & 0xFFFFFFFFFFFFFFFELL);
        }

        v441 = MEMORY[0x223DA0290](v442);
        *(archive + 63) = v441;
      }

      objc_msgSend_saveToArchive_archiver_(v439, v440, v441, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v433, 833, v434))
  {
    v445 = objc_msgSend_objectForProperty_(v8, v443, 833, v444);
    v570 = v445;
    v446 = objc_opt_class();
    v448 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v447, &v570, v446, 833);
    v449 = v570;

    if (v448)
    {
      *(archive + 5) |= 0x10000000u;
      v451 = *(archive + 64);
      if (!v451)
      {
        v452 = *(archive + 1);
        if (v452)
        {
          v452 = *(v452 & 0xFFFFFFFFFFFFFFFELL);
        }

        v451 = MEMORY[0x223DA0290](v452);
        *(archive + 64) = v451;
      }

      objc_msgSend_saveToArchive_archiver_(v449, v450, v451, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v443, 834, v444))
  {
    v455 = objc_msgSend_objectForProperty_(v8, v453, 834, v454);
    v569 = v455;
    v456 = objc_opt_class();
    v458 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v457, &v569, v456, 834);
    v459 = v569;

    if (v458)
    {
      *(archive + 5) |= 0x20000000u;
      v461 = *(archive + 65);
      if (!v461)
      {
        v462 = *(archive + 1);
        if (v462)
        {
          v462 = *(v462 & 0xFFFFFFFFFFFFFFFELL);
        }

        v461 = MEMORY[0x223DA0290](v462);
        *(archive + 65) = v461;
      }

      objc_msgSend_saveToArchive_archiver_(v459, v460, v461, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v453, 835, v454))
  {
    v465 = objc_msgSend_objectForProperty_(v8, v463, 835, v464);
    v568 = v465;
    v466 = objc_opt_class();
    v468 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v467, &v568, v466, 835);
    v469 = v568;

    if (v468)
    {
      *(archive + 5) |= 0x40000000u;
      v471 = *(archive + 66);
      if (!v471)
      {
        v472 = *(archive + 1);
        if (v472)
        {
          v472 = *(v472 & 0xFFFFFFFFFFFFFFFELL);
        }

        v471 = MEMORY[0x223DA0290](v472);
        *(archive + 66) = v471;
      }

      objc_msgSend_saveToArchive_archiver_(v469, v470, v471, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v463, 836, v464))
  {
    v475 = objc_msgSend_objectForProperty_(v8, v473, 836, v474);
    v567 = v475;
    v476 = objc_opt_class();
    v478 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v477, &v567, v476, 836);
    v479 = v567;

    if (v478)
    {
      *(archive + 5) |= 0x80000000;
      v481 = *(archive + 67);
      if (!v481)
      {
        v482 = *(archive + 1);
        if (v482)
        {
          v482 = *(v482 & 0xFFFFFFFFFFFFFFFELL);
        }

        v481 = MEMORY[0x223DA0290](v482);
        *(archive + 67) = v481;
      }

      objc_msgSend_saveToArchive_archiver_(v479, v480, v481, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v473, 837, v474))
  {
    v485 = objc_msgSend_objectForProperty_(v8, v483, 837, v484);
    v566 = v485;
    v486 = objc_opt_class();
    v488 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v487, &v566, v486, 837);
    v489 = v566;

    if (v488)
    {
      *(archive + 6) |= 1u;
      v491 = *(archive + 68);
      if (!v491)
      {
        v492 = *(archive + 1);
        if (v492)
        {
          v492 = *(v492 & 0xFFFFFFFFFFFFFFFELL);
        }

        v491 = MEMORY[0x223DA0290](v492);
        *(archive + 68) = v491;
      }

      objc_msgSend_saveToArchive_archiver_(v489, v490, v491, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v483, 838, v484))
  {
    v495 = objc_msgSend_objectForProperty_(v8, v493, 838, v494);
    v565 = v495;
    v496 = objc_opt_class();
    v498 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v497, &v565, v496, 838);
    v499 = v565;

    if (v498)
    {
      *(archive + 6) |= 2u;
      v501 = *(archive + 69);
      if (!v501)
      {
        v502 = *(archive + 1);
        if (v502)
        {
          v502 = *(v502 & 0xFFFFFFFFFFFFFFFELL);
        }

        v501 = MEMORY[0x223DA0290](v502);
        *(archive + 69) = v501;
      }

      objc_msgSend_saveToArchive_archiver_(v499, v500, v501, archiverCopy);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v493, 788, v494))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v503, 788, v504);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v505, &v613, 788))
    {
      v506 = v613 != 0;
      *(archive + 6) |= 0x20u;
      *(archive + 563) = v506;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v503, 789, v504))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v507, 789, v508);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v509, &v613, 789))
    {
      v510 = v613 != 0;
      *(archive + 6) |= 0x40u;
      *(archive + 564) = v510;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v507, 790, v508))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v511, 790, v512);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v513, &v613, 790))
    {
      v514 = v613 != 0;
      *(archive + 6) |= 0x80u;
      *(archive + 565) = v514;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v511, 792, v512))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v515, 792, v516);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v517, &v613, 792))
    {
      v518 = v613 != 0;
      *(archive + 6) |= 0x100u;
      *(archive + 566) = v518;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v515, 794, v516))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v519, 794, v520);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v521, &v613, 794))
    {
      v522 = v613 != 0;
      *(archive + 6) |= 0x200u;
      *(archive + 567) = v522;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v519, 796, v520))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v523, 796, v524);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v525, &v613, 796))
    {
      v526 = v613 != 0;
      *(archive + 6) |= 0x800u;
      *(archive + 572) = v526;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v523, 791, v524))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v527, 791, v528);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v529, &v613, 791))
    {
      v530 = v613 != 0;
      *(archive + 6) |= 0x4000u;
      *(archive + 575) = v530;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v527, 793, v528))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v531, 793, v532);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v533, &v613, 793))
    {
      v534 = v613 != 0;
      *(archive + 6) |= 0x2000u;
      *(archive + 574) = v534;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v531, 795, v532))
  {
    v613 = objc_msgSend_intValueForProperty_(v8, v535, 795, v536);
    if (objc_msgSend_validateIntValueAsBool_forProperty_(v7, v537, &v613, 795))
    {
      v538 = v613 != 0;
      *(archive + 6) |= 0x8000u;
      *(archive + 576) = v538;
    }
  }

  if (objc_msgSend_containsProperty_(v8, v535, 797, v536))
  {
    v541 = objc_msgSend_objectForProperty_(v8, v539, 797, v540);
    v564 = v541;
    v542 = objc_opt_class();
    v544 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v543, &v564, v542, 797);
    v545 = v564;

    if (v544)
    {
      *(archive + 4) |= 1u;
      v546 = google::protobuf::internal::ArenaStringPtr::Mutable();
      objc_msgSend_tsp_saveToProtobufString_(v545, v547, v546, v548);
    }
  }

  if (objc_msgSend_containsProperty_(v8, v539, 798, v540))
  {
    v551 = objc_msgSend_intValueForProperty_(v8, v549, 798, v550);
    v613 = v551;
    if (TSWP::WritingDirectionType_IsValid(v551))
    {
      if (objc_msgSend_validateIntValue_forProperty_(v7, v549, &v613, 798))
      {
        v552 = v613;
        *(archive + 6) |= 0x10000u;
        *(archive + 145) = v552;
      }
    }
  }

  if (objc_msgSend_containsProperty_(v8, v549, 787, v550))
  {
    v555 = objc_msgSend_objectForProperty_(v8, v553, 787, v554);
    v563 = v555;
    v556 = objc_opt_class();
    v558 = objc_msgSend_validateObjectValue_withClass_forProperty_(v7, v557, &v563, v556, 787);
    v559 = v563;

    if (v558)
    {
      *(archive + 4) |= 0x40000u;
      v561 = *(archive + 22);
      if (!v561)
      {
        v562 = *(archive + 1);
        if (v562)
        {
          v562 = *(v562 & 0xFFFFFFFFFFFFFFFELL);
        }

        v561 = sub_2216E3160(v562);
        *(archive + 22) = v561;
      }

      objc_msgSend_saveToArchive_archiver_(v559, v560, v561, archiverCopy);
    }
  }
}

- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[160], v6);

  if (*(v7 + 24))
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = MEMORY[0x277D80BD0];
  }

  v23.receiver = self;
  v23.super_class = TSTTableStyle;
  [(TSTTableStyle *)&v23 loadFromArchive:v8 unarchiver:unarchiverCopy];
  v9 = *(v7 + 40);
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D80AB8]);
    v13 = objc_msgSend_initWithCapacity_(v10, v11, v9, v12);
    if (*(v7 + 32))
    {
      v14 = *(v7 + 32);
    }

    else
    {
      v14 = &unk_2812E9C60;
    }

    sub_2216D9570(v22, v14);
    objc_msgSend_loadTableStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v15, v13, v22, unarchiverCopy);
    if ((v22[18] & 4) != 0)
    {
      v18 = objc_msgSend_containsProperty_(v13, v16, 787, v17);
    }

    else
    {
      v18 = 1;
    }

    v19 = *MEMORY[0x277D80AF0];
    v20 = *(&self->super.super.super.isa + v19);
    *(&self->super.super.super.isa + v19) = v13;

    sub_2216D9B78(v22);
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_221181DC4, off_2812E4498[160]);

  *(v6 + 16) |= 1u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA03A0](v8);
    *(v6 + 24) = v7;
  }

  v17.receiver = self;
  v17.super_class = TSTTableStyle;
  [(TSTTableStyle *)&v17 saveToArchive:v7 archiver:archiverCopy];
  v12 = objc_msgSend_overrideCount(self, v9, v10, v11);
  if (v12)
  {
    v14 = *(v6 + 16);
    *(v6 + 40) = v12;
    *(v6 + 16) = v14 | 6;
    v15 = *(v6 + 32);
    if (!v15)
    {
      v16 = *(v6 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_2216E31EC(v16);
      *(v6 + 32) = v15;
    }

    objc_msgSend_saveTableStylePropertiesToArchive_archiver_(self, v13, v15, archiverCopy);
  }
}

- (void)validate
{
  v5 = objc_msgSend_stylesheet(self, a2, v2, v3);

  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableStyle validate]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyle.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 929, 0, "orphaned table style %@", self);

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
  v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTTableStyle validate]", v28);
  v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyle.mm", v32);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 932, 0, "Table style not in its stylesheet");

  v38 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v38, v35, v36, v37);
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison
{
  comparisonCopy = comparison;
  v8 = objc_msgSend_curatedTableStylePropertySetForCrossDocumentPasteMasterComparison(TSTTableStyleNetwork, v5, v6, v7);
  LOBYTE(self) = objc_msgSend_hasEqualValues_forProperties_(self, v9, comparisonCopy, v8);

  return self;
}

- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform
{
  v6 = *&property;
  valueCopy = value;
  v12 = valueCopy;
  if ((v6 - 771) > 0xF)
  {
    v17 = *&transform->c;
    v21 = *&transform->a;
    v22 = v17;
    v23 = *&transform->tx;
    v20.receiver = self;
    v20.super_class = TSTTableStyle;
    v16 = [(TSTTableStyle *)&v20 boxedValueForProperty:v6 oldBoxedValue:valueCopy transformedByTransform:&v21];
  }

  else if (!valueCopy || objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10, v11) == valueCopy)
  {
    v16 = v12;
  }

  else
  {
    v15 = *&transform->c;
    v21 = *&transform->a;
    v22 = v15;
    v23 = *&transform->tx;
    v16 = objc_msgSend_strokeByTransformingByTransform_(v12, v13, &v21, v14);
  }

  v18 = v16;

  return v18;
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
  v39[2] = sub_221181A20;
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
  v43[2] = sub_221181CF8;
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

@end