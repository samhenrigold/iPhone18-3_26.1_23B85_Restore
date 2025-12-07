@interface TSTCellSpec
+ (id)cellDiffProperties;
+ (id)cellSpecFromTSKFormat:(id)format;
+ (id)defaultCellSpec;
+ (id)displayNameForInteractionType:(unsigned int)type;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (unsigned)interactionTypeForShimControlFormatType:(unsigned int)type;
+ (unsigned)shimControlFormatTypeForInteractionType:(unsigned int)type;
- (BOOL)isControl;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TSTCellSpec)init;
- (id)initFromPropertyCommandMessage:(const Message *)message unarchiver:(id)unarchiver;
- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap;
- (id)propertiesMatchingThoseInMap:(id)map;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTCellSpec

- (TSTCellSpec)init
{
  v3.receiver = self;
  v3.super_class = TSTCellSpec;
  result = [(TSTCellSpec *)&v3 init];
  result->_interactionTypeFromTheFuture = 0;
  return result;
}

+ (id)defaultCellSpec
{
  if (qword_27CFB54A0 != -1)
  {
    sub_2216F7898();
  }

  v3 = qword_27CFB5498;

  return v3;
}

- (BOOL)isControl
{
  v4 = objc_msgSend_interactionType(self, a2, v2, v3);

  return MEMORY[0x2821F9670](TSTCellSpec, sel_interactionTypeIsControl_, v4, v5);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p>", v6, v4, self);
}

+ (id)cellDiffProperties
{
  if (qword_27CFB54B0 != -1)
  {
    sub_2216F78AC();
  }

  v3 = qword_27CFB54A8;

  return v3;
}

- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap
{
  inMapCopy = inMap;
  objc_msgSend_setObject_forProperty_(setPropertyMap, v9, self, 913);
  selfCopy = self;
  if (objc_msgSend_containsProperty_(inMapCopy, v11, 913, v12))
  {
    v15 = objc_msgSend_objectForProperty_(inMapCopy, v13, 913, v14);

    selfCopy = v15;
  }

  return selfCopy;
}

- (id)propertiesMatchingThoseInMap:(id)map
{
  mapCopy = map;
  if (objc_msgSend_containsProperty_(mapCopy, v5, 913, v6))
  {
    v7 = objc_alloc(MEMORY[0x277D80AB8]);
    v10 = objc_msgSend_initWithPropertiesAndValues_(v7, v8, 913, v9, self, 0);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    v9 = objc_msgSend_interactionType(self, v5, v6, v7);
    v13 = v9 == objc_msgSend_interactionType(v8, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 16);
  if (v7 <= 3)
  {
    if ((v7 - 1) < 3)
    {
      v8 = off_27845CE58;
      goto LABEL_12;
    }

    if (!v7)
    {
      v9 = objc_alloc_init(TSTCellSpec);
LABEL_13:
      v10 = v9;
      goto LABEL_14;
    }
  }

  else
  {
    if ((v7 - 4) < 3)
    {
      v8 = off_27845CE68;
LABEL_12:
      v9 = objc_msgSend_instanceWithArchive_unarchiver_(*v8, v5, archive, unarchiverCopy);
      goto LABEL_13;
    }

    if (v7 == 7)
    {
      v8 = off_27845CE50;
      goto LABEL_12;
    }

    if (v7 == 8)
    {
      v8 = off_27845CE88;
      goto LABEL_12;
    }
  }

  v10 = objc_alloc_init(TSTCellSpec);
  objc_msgSend_setInteractionTypeFromTheFuture_(v10, v12, v7, v13);
LABEL_14:

  return v10;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v5 = objc_msgSend_interactionTypeFromTheFuture(self, a2, archive, archiver);
  *(archive + 4) |= 0x20u;
  *(archive + 16) = v5;
}

- (id)initFromPropertyCommandMessage:(const Message *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v10 = objc_msgSend_init(self, v7, v8, v9);
  if (LODWORD(message[4].var0))
  {
    v11 = objc_opt_class();
    v13 = objc_msgSend_instanceWithArchive_unarchiver_(v11, v12, message, unarchiverCopy);

    v10 = v13;
  }

  return v10;
}

+ (id)cellSpecFromTSKFormat:(id)format
{
  formatCopy = format;
  v9 = objc_msgSend_formatType(formatCopy, v4, v5, v6) - 263;
  if (v9 >= 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_cellSpecFromTSKFormat_(*off_278463C00[v9], v7, formatCopy, v8);
  }

  return v10;
}

+ (unsigned)interactionTypeForShimControlFormatType:(unsigned int)type
{
  if (objc_msgSend_isShimControlFormatType_(self, a2, *&type, v3))
  {
    return type - 100;
  }

  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTCellSpec interactionTypeForShimControlFormatType:]", v6);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSpec.mm", v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 250, 0, "Unconvertible format type.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  return 0;
}

+ (unsigned)shimControlFormatTypeForInteractionType:(unsigned int)type
{
  if (type - 4 <= 4)
  {
    return type + 100;
  }

  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTCellSpec shimControlFormatTypeForInteractionType:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSpec.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 259, 0, "Unconvertible interaction type.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 0;
}

+ (id)displayNameForInteractionType:(unsigned int)type
{
  v4 = 0;
  if (type <= 5)
  {
    if (type == 4)
    {
      v5 = sub_2214AAEA8(self, a2, *&type, v3);
      v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v11, @"Stepper", &stru_2834BADA0, @"TSTables");
    }

    else
    {
      if (type != 5)
      {
        goto LABEL_13;
      }

      v5 = sub_2214AAEA8(self, a2, *&type, v3);
      v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v8, @"Slider", &stru_2834BADA0, @"TSTables");
    }
  }

  else
  {
    switch(type)
    {
      case 6u:
        v5 = sub_2214AAEA8(self, a2, *&type, v3);
        v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v9, @"Star Rating", &stru_2834BADA0, @"TSTables");
        break;
      case 7u:
        v5 = sub_2214AAEA8(self, a2, *&type, v3);
        v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v10, @"Pop-Up Menu", &stru_2834BADA0, @"TSTables");
        break;
      case 8u:
        v5 = sub_2214AAEA8(self, a2, *&type, v3);
        v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Checkbox", &stru_2834BADA0, @"TSTables");
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = v7;

LABEL_13:

  return v4;
}

@end