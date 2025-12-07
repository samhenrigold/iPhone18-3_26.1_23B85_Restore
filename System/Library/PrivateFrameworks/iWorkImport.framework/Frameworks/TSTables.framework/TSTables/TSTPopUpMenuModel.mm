@interface TSTPopUpMenuModel
+ (id)cellValueFromCell:(id)cell locale:(id)locale;
+ (id)p_PopUpMenuModelDefaultWithContext:(id)context locale:(id)locale;
+ (id)p_cellValueFromCellWithCustomFormat:(id)format locale:(id)locale;
+ (id)popupMenuModelDeletingItemFromModel:(id)model index:(unint64_t)index;
+ (id)popupMenuModelEditingItemInModel:(id)model index:(unint64_t)index newContent:(id)content;
+ (id)popupMenuModelFromTable:(id)table region:(id)region initialValue:(BOOL *)value overflow:(BOOL *)overflow;
+ (id)popupMenuModelReorderingModel:(id)model fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
+ (void)p_appendChoices:(id)choices uniquelyToChoices:(id)toChoices;
- (BOOL)BOOLeanAtIndex:(unint64_t)index;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChoices:(id)choices;
- (BOOL)p_BOOLeanForListItem:(id)item;
- (TSTPopUpMenuModel)initWithItems:(id)items context:(id)context;
- (double)numberAtIndex:(unint64_t)index;
- (double)p_numberForListItem:(id)item;
- (id)copyWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateAtIndex:(unint64_t)index;
- (id)description;
- (id)displayStringAtIndex:(unint64_t)index;
- (id)formatAtIndex:(unint64_t)index;
- (id)p_dateForListItem:(id)item;
- (id)p_listItemAtIndex:(unint64_t)index;
- (id)p_stringForListItem:(id)item;
- (id)popUpItemFromBoolean:(BOOL)boolean;
- (id)popUpItemFromDate:(id)date format:(id)format;
- (id)popUpItemFromNumber:(double)number format:(id)format;
- (id)popUpItemFromString:(id)string;
- (id)stringAtIndex:(unint64_t)index;
- (int)p_mcListTypeForArgType:(char)type;
- (int)p_mcListTypeOfListItem:(id)item;
- (int)valueTypeOfItemAtIndex:(unint64_t)index;
- (void)didInitFromSOS;
- (void)loadFromArchive:(const void *)archive;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTPopUpMenuModel

- (TSTPopUpMenuModel)initWithItems:(id)items context:(id)context
{
  itemsCopy = items;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = TSTPopUpMenuModel;
  v9 = [(TSTPopUpMenuModel *)&v15 initWithContext:contextCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_items, items);
    v10->_count = objc_msgSend_count(itemsCopy, v11, v12, v13);
  }

  return v10;
}

- (void)didInitFromSOS
{
  v6.receiver = self;
  v6.super_class = TSTPopUpMenuModel;
  [(TSTPopUpMenuModel *)&v6 didInitFromSOS];
  self->_count = objc_msgSend_count(self->_items, v3, v4, v5);
}

- (BOOL)isEqualToChoices:(id)choices
{
  choicesCopy = choices;
  if (self == choicesCopy)
  {
    goto LABEL_10;
  }

  count = self->_count;
  if (count != objc_msgSend_count(self->_items, v4, v5, v6))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unarchiving is incomplete. Equality comparison is bogus and can lead to document corruption. Crashing now.", "[TSTPopUpMenuModel isEqualToChoices:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", 76);
    v38 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSTPopUpMenuModel isEqualToChoices:]", v40);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v41, v44, 76, 1, "Unarchiving is incomplete. Equality comparison is bogus and can lead to document corruption. Crashing now.");

    TSUCrashBreakpoint();
    abort();
  }

  v12 = objc_msgSend_count(self->_items, v9, v10, v11);
  v16 = objc_msgSend_choices(choicesCopy, v13, v14, v15);
  v20 = objc_msgSend_count(v16, v17, v18, v19);

  if (v12 != v20)
  {
    LOBYTE(isEqualToCellValue) = 0;
    goto LABEL_12;
  }

  if (!v12)
  {
LABEL_10:
    LOBYTE(isEqualToCellValue) = 1;
  }

  else
  {
    v23 = 0;
    v24 = v12 - 1;
    do
    {
      v25 = objc_msgSend_objectAtIndexedSubscript_(self->_items, v21, v23, v22);
      v29 = objc_msgSend_choices(choicesCopy, v26, v27, v28);
      v32 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, v23, v31);

      isEqualToCellValue = objc_msgSend_isEqualToCellValue_(v25, v33, v32, v34);
      if (!isEqualToCellValue)
      {
        break;
      }
    }

    while (v24 != v23++);
  }

LABEL_12:

  return isEqualToCellValue;
}

- (id)description
{
  v4 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"TSTPopUpMenuModel: (\n"), v2;
  v10 = objc_msgSend_count(self->_items, v5, v6, v7);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = objc_msgSend_objectAtIndex_(self->_items, v8, i, v9);
      v16 = objc_msgSend_displayString(v12, v13, v14, v15);
      objc_msgSend_appendFormat_(v4, v17, @"\t%@,\n", v18, v16);
    }
  }

  objc_msgSend_appendString_(v4, v8, @""), v9);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToChoices = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToChoices = objc_msgSend_isEqualToChoices_(self, v5, equalCopy, v6);
    }

    else
    {
      isEqualToChoices = 0;
    }
  }

  return isEqualToChoices;
}

- (id)p_listItemAtIndex:(unint64_t)index
{
  v6 = objc_msgSend_choices(self, a2, index, v3);
  v10 = objc_msgSend_count(v6, v7, v8, v9);

  if (v10 <= index)
  {
    v17 = 0;
  }

  else
  {
    v14 = objc_msgSend_choices(self, v11, v12, v13);
    v17 = objc_msgSend_objectAtIndex_(v14, v15, index, v16);
  }

  return v17;
}

- (int)p_mcListTypeForArgType:(char)type
{
  if (type < 8 && ((0xADu >> type) & 1) != 0)
  {
    return dword_2217F3084[type];
  }

  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTPopUpMenuModel p_mcListTypeForArgType:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 155, 0, "Unexpected TSCEArgumentType for popup list.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 0;
}

- (int)p_mcListTypeOfListItem:(id)item
{
  itemCopy = item;
  v8 = itemCopy;
  if (itemCopy)
  {
    v9 = objc_msgSend_valueType(itemCopy, v5, v6, v7);
    v12 = objc_msgSend_p_mcListTypeForArgType_(self, v10, v9, v11);
  }

  else
  {
    v12 = objc_msgSend_p_mcListTypeForArgType_(self, v5, 0, v7);
  }

  v13 = v12;

  return v13;
}

- (double)p_numberForListItem:(id)item
{
  itemCopy = item;
  v10 = 0.0;
  if (objc_msgSend_p_mcListTypeOfListItem_(self, v5, itemCopy, v6) == 5)
  {
    v11 = objc_msgSend_numberValue(itemCopy, v7, v8, v9);
    objc_msgSend_rawDoubleValue(v11, v12, v13, v14);
    v10 = v15;
  }

  return v10;
}

- (id)p_stringForListItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend_p_mcListTypeOfListItem_(self, v5, itemCopy, v6) == 7)
  {
    v10 = objc_msgSend_stringValue(itemCopy, v7, v8, v9);
    v14 = objc_msgSend_asString(v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)p_dateForListItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend_p_mcListTypeOfListItem_(self, v5, itemCopy, v6) == 3)
  {
    v10 = objc_msgSend_dateValue(itemCopy, v7, v8, v9);
    v14 = objc_msgSend_asDate(v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)p_BOOLeanForListItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend_p_mcListTypeOfListItem_(self, v5, itemCopy, v6) == 2)
  {
    v10 = objc_msgSend_BOOLeanValue(itemCopy, v7, v8, v9);
    v14 = objc_msgSend_asBool(v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int)valueTypeOfItemAtIndex:(unint64_t)index
{
  selfCopy = self;
  v5 = objc_msgSend_p_listItemAtIndex_(self, a2, index, v3);
  LODWORD(selfCopy) = objc_msgSend_p_mcListTypeOfListItem_(selfCopy, v6, v5, v7);

  return selfCopy;
}

- (double)numberAtIndex:(unint64_t)index
{
  v5 = objc_msgSend_p_listItemAtIndex_(self, a2, index, v3);
  objc_msgSend_p_numberForListItem_(self, v6, v5, v7);
  v9 = v8;

  return v9;
}

- (id)stringAtIndex:(unint64_t)index
{
  v5 = objc_msgSend_p_listItemAtIndex_(self, a2, index, v3);
  v8 = objc_msgSend_p_stringForListItem_(self, v6, v5, v7);

  return v8;
}

- (id)dateAtIndex:(unint64_t)index
{
  v5 = objc_msgSend_p_listItemAtIndex_(self, a2, index, v3);
  v8 = objc_msgSend_p_dateForListItem_(self, v6, v5, v7);

  return v8;
}

- (id)formatAtIndex:(unint64_t)index
{
  v4 = objc_msgSend_p_listItemAtIndex_(self, a2, index, v3);
  v8 = objc_msgSend_format(v4, v5, v6, v7);

  return v8;
}

- (BOOL)BOOLeanAtIndex:(unint64_t)index
{
  selfCopy = self;
  v5 = objc_msgSend_p_listItemAtIndex_(self, a2, index, v3);
  LOBYTE(selfCopy) = objc_msgSend_p_BOOLeanForListItem_(selfCopy, v6, v5, v7);

  return selfCopy;
}

- (id)displayStringAtIndex:(unint64_t)index
{
  v6 = objc_msgSend_choices(self, a2, index, v3);
  v10 = objc_msgSend_count(v6, v7, v8, v9);

  if (v10 <= index)
  {
    v17 = 0;
  }

  else
  {
    v14 = objc_msgSend_choices(self, v11, v12, v13);
    v17 = objc_msgSend_objectAtIndex_(v14, v15, index, v16);

    if (v17)
    {
      v21 = objc_msgSend_displayString(v17, v18, v19, v20);
      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_6:

  return v21;
}

- (id)popUpItemFromNumber:(double)number format:(id)format
{
  formatCopy = format;
  if (objc_msgSend_formatType(formatCopy, v6, v7, v8) == 268)
  {
    v9 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(&v22, formatCopy, 0);
    v11 = objc_msgSend_initWithDecimal_format_baseUnit_(v9, v10, v23, &v22, 6);
  }

  else
  {
    v18 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(&v22, formatCopy, 0);
    v11 = objc_msgSend_initWithDecimal_format_(v18, v19, v23, &v22);
  }

  v12 = [TSCENumberCellValue alloc];
  v16 = objc_msgSend_objectLocale(self, v13, v14, v15);
  v20 = objc_msgSend_initWithNumberValue_locale_(v12, v17, v11, v16);

  return v20;
}

- (id)popUpItemFromBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  v5 = [TSCEBooleanCellValue alloc];
  v9 = objc_msgSend_objectLocale(self, v6, v7, v8);
  v11 = objc_msgSend_initWithBoolean_locale_(v5, v10, booleanCopy, v9);

  return v11;
}

- (id)popUpItemFromString:(id)string
{
  stringCopy = string;
  v5 = [TSCEStringCellValue alloc];
  v9 = objc_msgSend_objectLocale(self, v6, v7, v8);
  v11 = objc_msgSend_initWithString_locale_(v5, v10, stringCopy, v9);

  return v11;
}

- (id)popUpItemFromDate:(id)date format:(id)format
{
  dateCopy = date;
  formatCopy = format;
  TSCEFormat::TSCEFormat(&v18, formatCopy, 0);
  v9 = objc_msgSend_dateValue_format_(TSCEDateValue, v8, dateCopy, &v18);
  v10 = [TSCEDateCellValue alloc];
  v14 = objc_msgSend_objectLocale(self, v11, v12, v13);
  v16 = objc_msgSend_initWithDateValue_locale_(v10, v15, v9, v14);

  return v16;
}

- (void)loadFromArchive:(const void *)archive
{
  v6 = *(archive + 6);
  v7 = *(archive + 12);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v133 = objc_msgSend_initWithCapacity_(v16, v17, v6, v18);
    if (v6 < 1)
    {
LABEL_42:
      v89 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v19, v133, v20);
      items = self->_items;
      self->_items = v89;

      return;
    }

    v21 = 8;
    while (1)
    {
      v22 = *(*(archive + 4) + v21);
      v23 = *(v22 + 56);
      if (v23 <= 2)
      {
        break;
      }

      if (v23 == 3)
      {
        v55 = [TSCEDateCellValue alloc];
        v56 = *(v22 + 32);
        v61 = objc_msgSend_objectLocale(self, v63, v64, v65);
        if (v56)
        {
          goto LABEL_35;
        }

        v62 = objc_msgSend_initWithArchive_locale_(v55, v60, TSCE::_DateCellValueArchive_default_instance_, v61);
LABEL_36:
        v32 = v62;

        objc_msgSend_addObject_(v133, v69, v32, v70);
        goto LABEL_38;
      }

      if (v23 == 4)
      {
        v55 = [TSCENumberCellValue alloc];
        v56 = *(v22 + 40);
        v61 = objc_msgSend_objectLocale(self, v66, v67, v68);
        if (!v56)
        {
          v62 = objc_msgSend_initWithArchive_locale_(v55, v60, &TSCE::_NumberCellValueArchive_default_instance_, v61);
          goto LABEL_36;
        }

LABEL_35:
        v62 = objc_msgSend_initWithArchive_locale_(v55, v60, v56, v61);
        goto LABEL_36;
      }

      if (v23 != 5)
      {
        goto LABEL_41;
      }

      v24 = [TSCEStringCellValue alloc];
      v25 = *(v22 + 48);
      v30 = objc_msgSend_objectLocale(self, v26, v27, v28);
      if (v25)
      {
        v31 = objc_msgSend_initWithArchive_locale_(v24, v29, v25, v30);
      }

      else
      {
        v31 = objc_msgSend_initWithArchive_locale_(v24, v29, &TSCE::_StringCellValueArchive_default_instance_, v30);
      }

      v32 = v31;

      v36 = objc_msgSend_format(v32, v33, v34, v35);
      v40 = objc_msgSend_formatType(v36, v37, v38, v39);

      if (v40 == 1)
      {
        objc_msgSend_willModifyForUpgrade(self, v41, v42, v43);
        v47 = objc_msgSend_displayString(v32, v44, v45, v46);
        v48 = [TSCEStringCellValue alloc];
        v52 = objc_msgSend_objectLocale(self, v49, v50, v51);
        v54 = objc_msgSend_initWithString_locale_(v48, v53, v47, v52);

        v32 = v54;
      }

      objc_msgSend_addObject_(v133, v41, v32, v43);
LABEL_38:

LABEL_39:
      v21 += 8;
      if (!--v6)
      {
        goto LABEL_42;
      }
    }

    if (v23 == 1)
    {
      v71 = [TSCENilCellValue alloc];
      v75 = objc_msgSend_objectLocale(self, v72, v73, v74);
      v32 = objc_msgSend_initWithLocale_(v71, v76, v75, v77);

      objc_msgSend_addObject_(v133, v78, v32, v79);
      goto LABEL_38;
    }

    if (v23 != 2)
    {
LABEL_41:
      v80 = MEMORY[0x277D81150];
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTPopUpMenuModel loadFromArchive:]", v20);
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v83);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v85, v81, v84, 343, 0, "We are not handling this type of TSCECellValue");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88);
      goto LABEL_39;
    }

    v55 = [TSCEBooleanCellValue alloc];
    v56 = *(v22 + 24);
    v61 = objc_msgSend_objectLocale(self, v57, v58, v59);
    if (v56)
    {
      goto LABEL_35;
    }

    v62 = objc_msgSend_initWithArchive_locale_(v55, v60, TSCE::_BooleanCellValueArchive_default_instance_, v61);
    goto LABEL_36;
  }

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTPopUpMenuModel loadFromArchive:]", v3);
    if (v6 && v7)
    {
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v13, v14, 373, 0, "TSTPopUpMenuModel Archiving: Only one of item and tsce_item should exist");
    }

    else
    {
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v128, v13, v14, 376, 0, "TSTPopUpMenuModel Archiving: No items to unarchive");
    }

    v132 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v132, v129, v130, v131);
  }

  else
  {
    v91 = objc_alloc(MEMORY[0x277CBEB18]);
    v94 = objc_msgSend_initWithCapacity_(v91, v92, v7, v93);
    v98 = v94;
    v134 = v94;
    if (v7 >= 1)
    {
      v99 = 8;
      do
      {
        v100 = *(*(archive + 7) + v99);
        v101 = objc_msgSend_objectLocale(self, v95, v96, v97);
        v103 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v102, v100, v101);

        objc_opt_class();
        v104 = TSUDynamicCast();
        v108 = v104;
        if (v104)
        {
          v109 = objc_msgSend_stringValue(v104, v105, v106, v107);
          v113 = v109;
          if (v109)
          {
            objc_msgSend_format(v109, v110, v111, v112);

            if (DWORD2(v135) > 1)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v135 = 0u;
          }

          objc_msgSend_willModifyForUpgrade(self, v105, v114, v107);
          v118 = objc_msgSend_displayString(v108, v115, v116, v117);
          v119 = [TSCEStringCellValue alloc];
          v123 = objc_msgSend_objectLocale(self, v120, v121, v122);
          v125 = objc_msgSend_initWithString_locale_(v119, v124, v118, v123);

          v103 = v125;
          v98 = v134;
        }

LABEL_53:
        objc_msgSend_addObject_(v98, v105, v103, v107);

        v99 += 8;
        --v7;
      }

      while (v7);
    }

    v126 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v95, v98, v97);
    v127 = self->_items;
    self->_items = v126;
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  self->_count = 0;
  v5 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithDescriptor_(v5, v6, off_2812E4498[26], v7);

  operator new();
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v6 = objc_msgSend_count(self->_items, a2, archive, archiver);
  if (v6)
  {
    v9 = v6;
    v10 = 0;
    v11 = v6 - 1;
    while (1)
    {
      v12 = objc_msgSend_objectAtIndex_(self->_items, v7, v10, v8);
      v16 = objc_msgSend_valueType(v12, v13, v14, v15);
      if (v11 == v10 && v16 == 7)
      {
        v20 = objc_msgSend_displayString(v12, v17, v18, v19);
        v24 = objc_msgSend_length(v20, v21, v22, v23);

        if (!v24)
        {
          goto LABEL_13;
        }
      }

      v25 = *(archive + 7);
      if (!v25)
      {
        goto LABEL_11;
      }

      v26 = *(archive + 12);
      v27 = *v25;
      if (v26 >= *v25)
      {
        break;
      }

      *(archive + 12) = v26 + 1;
      objc_msgSend_encodeCellValueToArchive_(v12, v17, *&v25[2 * v26 + 2], v19);
LABEL_13:

      if (v9 == ++v10)
      {
        return;
      }
    }

    if (v27 == *(archive + 13))
    {
LABEL_11:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 40));
      v25 = *(archive + 7);
      v27 = *v25;
    }

    *v25 = v27 + 1;
    v28 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(*(archive + 5));
    v29 = *(archive + 12);
    v30 = *(archive + 7) + 8 * v29;
    *(archive + 12) = v29 + 1;
    *(v30 + 8) = v28;
    objc_msgSend_encodeCellValueToArchive_(v12, v31, v28, v32);
    goto LABEL_13;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2215ABA24, off_2812E4498[26]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithItems_context_(v5, v6, self->_items, contextCopy);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_context(self, a2, zone, v3);
  v8 = objc_msgSend_copyWithContext_(self, v6, v5, v7);

  return v8;
}

+ (id)popupMenuModelFromTable:(id)table region:(id)region initialValue:(BOOL *)value overflow:(BOOL *)overflow
{
  tableCopy = table;
  regionCopy = region;
  v14 = objc_msgSend_documentRoot(tableCopy, v11, v12, v13);
  v18 = objc_msgSend_documentLocale(v14, v15, v16, v17);

  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 1;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 1;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_2215AA6F0;
  v64 = sub_2215AA700;
  v65 = 0;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = [TSCENilCellValue alloc];
  v23 = objc_msgSend_initWithLocale_(v20, v21, v18, v22, v18);
  objc_msgSend_addObject_(v19, v24, v23, v25);
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = sub_2215AA6F0;
  v58[4] = sub_2215AA700;
  v59 = 0;
  v27 = objc_msgSend_prunedCellRegionAgainstTable_behavior_(regionCopy, v26, tableCopy, 1);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_2215AA708;
  v48[3] = &unk_2784673C8;
  v51 = &v70;
  v52 = &v78;
  v53 = &v60;
  v54 = &v66;
  selfCopy = self;
  v28 = v18;
  v49 = v28;
  v29 = v19;
  v50 = v29;
  v55 = &v74;
  v56 = v58;
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(tableCopy, v30, v27, 2, 0x20000000, v48);
  if (objc_msgSend_count(v29, v31, v32, v33) == 1)
  {
    v37 = objc_msgSend_context(tableCopy, v34, v35, v36);
    v39 = objc_msgSend_p_PopUpMenuModelDefaultWithContext_locale_(TSTPopUpMenuModel, v38, v37, v28);

    *(v79 + 24) = 1;
  }

  else if (*(v71 + 24) == 1 && *(v67 + 24) == 1)
  {
    v39 = objc_msgSend_popupModel(v61[5], v34, v35, v36);
    *(v75 + 24) = 0;
  }

  else
  {
    v40 = [TSTPopUpMenuModel alloc];
    v44 = objc_msgSend_context(tableCopy, v41, v42, v43);
    v39 = objc_msgSend_initWithItems_context_(v40, v45, v29, v44);
  }

  if (overflow)
  {
    *overflow = *(v75 + 24);
  }

  if (value)
  {
    *value = *(v79 + 24);
  }

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

  return v39;
}

+ (void)p_appendChoices:(id)choices uniquelyToChoices:(id)toChoices
{
  v30 = *MEMORY[0x277D85DE8];
  choicesCopy = choices;
  toChoicesCopy = toChoices;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = choicesCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v12)
  {
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        v16 = 0;
        v17 = objc_msgSend_count(toChoicesCopy, v9, v10, v11, v25);
        if (v17)
        {
          while (1)
          {
            v18 = objc_msgSend_objectAtIndex_(toChoicesCopy, v9, v16, v11);
            isEqualToCellValue = objc_msgSend_isEqualToCellValue_(v15, v19, v18, v20);

            if (isEqualToCellValue)
            {
              break;
            }

            if (v17 == ++v16)
            {
              goto LABEL_11;
            }
          }
        }

        if (v16 == v17)
        {
LABEL_11:
          v22 = objc_msgSend_copy(v15, v9, v10, v11);
          objc_msgSend_addObject_(toChoicesCopy, v23, v22, v24);
        }

        ++v14;
      }

      while (v14 != v12);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v25, v29, 16);
    }

    while (v12);
  }
}

+ (id)p_PopUpMenuModelDefaultWithContext:(id)context locale:(id)locale
{
  v44[4] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  localeCopy = locale;
  v6 = [TSCENilCellValue alloc];
  v9 = objc_msgSend_initWithLocale_(v6, v7, localeCopy, v8);
  v13 = sub_2214AAEA8(v9, v10, v11, v12);
  v15 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"Item 1", &stru_2834BADA0, @"TSTables");

  v16 = [TSCEStringCellValue alloc];
  v18 = objc_msgSend_initWithString_locale_(v16, v17, v15, localeCopy);
  v22 = sub_2214AAEA8(v18, v19, v20, v21);
  v24 = objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"Item 2", &stru_2834BADA0, @"TSTables");

  v25 = [TSCEStringCellValue alloc];
  v27 = objc_msgSend_initWithString_locale_(v25, v26, v24, localeCopy);
  v31 = sub_2214AAEA8(v27, v28, v29, v30);
  v33 = objc_msgSend_localizedStringForKey_value_table_(v31, v32, @"Item 3", &stru_2834BADA0, @"TSTables");

  v34 = [TSCEStringCellValue alloc];
  v36 = objc_msgSend_initWithString_locale_(v34, v35, v33, localeCopy);
  v37 = [TSTPopUpMenuModel alloc];
  v44[0] = v9;
  v44[1] = v18;
  v44[2] = v27;
  v44[3] = v36;
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v44, 4);
  v41 = objc_msgSend_initWithItems_context_(v37, v40, v39, contextCopy);

  return v41;
}

+ (id)p_cellValueFromCellWithCustomFormat:(id)format locale:(id)locale
{
  localeCopy = locale;
  v9 = objc_msgSend_formattedValue(format, v6, v7, v8);
  if (objc_msgSend_length(v9, v10, v11, v12))
  {
    TSCEFormat::TSCEFormat(v22, 260);
    v14 = objc_msgSend_stringValue_format_(TSCEStringValue, v13, v9, v22);
    v15 = [TSCEStringCellValue alloc];
    v17 = objc_msgSend_initWithStringValue_locale_(v15, v16, v14, localeCopy);
  }

  else
  {
    v18 = [TSCENilCellValue alloc];
    v17 = objc_msgSend_initWithLocale_(v18, v19, localeCopy, v20);
  }

  return v17;
}

+ (id)cellValueFromCell:(id)cell locale:(id)locale
{
  cellCopy = cell;
  localeCopy = locale;
  v11 = objc_msgSend_currentFormat(cellCopy, v8, v9, v10);
  if (objc_msgSend_formatType(v11, v12, v13, v14) == 267)
  {
    v16 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v15, 256, localeCopy);

    v11 = v16;
  }

  TSCEFormat::TSCEFormat(&v103, v11, 0);
  v23 = objc_msgSend_formatType(v11, v17, v18, v19) - 270;
  if (v23 <= 4 && v23 != 3)
  {
    v24 = objc_msgSend_p_cellValueFromCellWithCustomFormat_locale_(self, v20, cellCopy, localeCopy);
LABEL_6:
    v25 = v24;
    goto LABEL_7;
  }

  v27 = objc_msgSend_valueType(cellCopy, v20, v21, v22);
  v25 = 0;
  if (v27 <= 5)
  {
    if (v27 <= 2)
    {
      if (v27)
      {
        if (v27 != 2)
        {
          goto LABEL_7;
        }

        v45 = [TSCENumberValue alloc];
        objc_msgSend_numberDoubleValue(cellCopy, v46, v47, v48);
        TSUDecimal::operator=();
        v33 = objc_msgSend_initWithDecimal_format_(v45, v49, v102, &v103);
        v50 = [TSCENumberCellValue alloc];
        v36 = objc_msgSend_initWithNumberValue_locale_(v50, v51, v33, localeCopy);
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 == 3)
      {
        v77 = [TSCEStringCellValue alloc];
        v33 = objc_msgSend_stringValue(cellCopy, v78, v79, v80);
        v36 = objc_msgSend_initWithString_locale_(v77, v81, v33, localeCopy);
        goto LABEL_32;
      }

      if (v27 != 4)
      {
        v31 = objc_msgSend_dateValue(cellCopy, v28, v29, v30);
        v33 = objc_msgSend_dateValue_format_(TSCEDateValue, v32, v31, &v103);

        v34 = [TSCEDateCellValue alloc];
        v36 = objc_msgSend_initWithDateValue_locale_(v34, v35, v33, localeCopy);
LABEL_32:
        v25 = v36;
        goto LABEL_33;
      }
    }

LABEL_24:
    v52 = [TSCENilCellValue alloc];
    v24 = objc_msgSend_initWithLocale_(v52, v53, localeCopy, v54);
    goto LABEL_6;
  }

  if (v27 <= 7)
  {
    if (v27 == 6)
    {
      v71 = [TSCEBooleanCellValue alloc];
      v75 = objc_msgSend_BOOLValue(cellCopy, v72, v73, v74);
      v24 = objc_msgSend_initWithBoolean_locale_(v71, v76, v75, localeCopy);
      goto LABEL_6;
    }

    v55 = objc_msgSend_asDurationFormat(v11, v28, v29, v30);
    objc_msgSend_durationTimeIntervalValue(cellCopy, v56, v57, v58);
    v62 = objc_msgSend_durationUnitLargestWithTimeInterval_(v55, v59, v60, v61);
    v63 = sub_221387C78(v62);

    v64 = [TSCENumberValue alloc];
    objc_msgSend_durationTimeIntervalValue(cellCopy, v65, v66, v67);
    TSUDecimal::operator=();
    v33 = objc_msgSend_initWithDecimal_format_baseUnit_(v64, v68, v102, &v103, v63);
    v69 = [TSCENumberCellValue alloc];
    v36 = objc_msgSend_initWithNumberValue_locale_(v69, v70, v33, localeCopy);
    goto LABEL_32;
  }

  if (v27 == 8)
  {
    goto LABEL_24;
  }

  if (v27 != 9)
  {
    if (v27 != 10)
    {
      goto LABEL_7;
    }

    if (v103._formatType == 257)
    {
      v37 = objc_msgSend_asCurrencyFormat(v11, v28, v29, v30);
      v41 = objc_msgSend_currencyCode(v37, v38, v39, v40);

      v44 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v42, v41, v43);
    }

    else
    {
      v44 = 0;
    }

    v95 = [TSCENumberValue alloc];
    objc_msgSend_currencyDoubleValue(cellCopy, v96, v97, v98);
    TSUDecimal::operator=();
    v33 = objc_msgSend_initWithDecimal_format_baseUnit_(v95, v99, v102, &v103, v44);
    v100 = [TSCENumberCellValue alloc];
    v36 = objc_msgSend_initWithNumberValue_locale_(v100, v101, v33, localeCopy);
    goto LABEL_32;
  }

  v82 = [TSCEStringCellValue alloc];
  v33 = objc_msgSend_richTextValue(cellCopy, v83, v84, v85);
  v89 = objc_msgSend_string(v33, v86, v87, v88);
  v93 = objc_msgSend_tsu_stringWithoutAttachmentCharacters(v89, v90, v91, v92);
  v25 = objc_msgSend_initWithString_locale_(v82, v94, v93, localeCopy);

LABEL_33:
LABEL_7:

  return v25;
}

+ (id)popupMenuModelDeletingItemFromModel:(id)model index:(unint64_t)index
{
  modelCopy = model;
  v9 = objc_msgSend_choices(modelCopy, v6, v7, v8);
  v13 = objc_msgSend_mutableCopy(v9, v10, v11, v12);

  objc_msgSend_removeObjectAtIndex_(v13, v14, index, v15);
  v16 = [TSTPopUpMenuModel alloc];
  v20 = objc_msgSend_context(modelCopy, v17, v18, v19);
  v22 = objc_msgSend_initWithItems_context_(v16, v21, v13, v20);

  return v22;
}

+ (id)popupMenuModelEditingItemInModel:(id)model index:(unint64_t)index newContent:(id)content
{
  modelCopy = model;
  contentCopy = content;
  v13 = objc_msgSend_choices(modelCopy, v10, v11, v12);
  v17 = objc_msgSend_mutableCopy(v13, v14, v15, v16);

  v18 = [TSTCell alloc];
  v22 = objc_msgSend_objectLocale(modelCopy, v19, v20, v21);
  v25 = objc_msgSend_initWithLocale_(v18, v23, v22, v24);

  objc_msgSend_parseContentFromString_flags_(v25, v26, contentCopy, 0);
  v30 = objc_msgSend_objectLocale(modelCopy, v27, v28, v29);
  v32 = objc_msgSend_cellValueFromCell_locale_(self, v31, v25, v30);

  if (objc_msgSend_count(v17, v33, v34, v35) <= index)
  {
    objc_msgSend_addObject_(v17, v36, v32, v37);
  }

  else
  {
    objc_msgSend_setObject_atIndexedSubscript_(v17, v36, v32, index);
  }

  v38 = [TSTPopUpMenuModel alloc];
  v42 = objc_msgSend_context(modelCopy, v39, v40, v41);
  v44 = objc_msgSend_initWithItems_context_(v38, v43, v17, v42);

  return v44;
}

+ (id)popupMenuModelReorderingModel:(id)model fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  modelCopy = model;
  v11 = objc_msgSend_choices(modelCopy, v8, v9, v10);
  v15 = objc_msgSend_mutableCopy(v11, v12, v13, v14);

  if (objc_msgSend_count(v15, v16, v17, v18) <= index)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSTPopUpMenuModel popupMenuModelReorderingModel:fromIndex:toIndex:]", v21);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 766, 0, "Bad index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  if (objc_msgSend_count(v15, v19, v20, v21) <= toIndex)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "+[TSTPopUpMenuModel popupMenuModelReorderingModel:fromIndex:toIndex:]", v32);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPopUpMenuModel.mm", v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 767, 0, "Bad index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
  }

  v42 = objc_msgSend_objectAtIndex_(v15, v31, index, v32);
  objc_msgSend_removeObjectAtIndex_(v15, v43, index, v44);
  objc_msgSend_insertObject_atIndex_(v15, v45, v42, toIndex);
  v46 = [TSTPopUpMenuModel alloc];
  v50 = objc_msgSend_context(modelCopy, v47, v48, v49);
  v52 = objc_msgSend_initWithItems_context_(v46, v51, v15, v50);

  return v52;
}

@end