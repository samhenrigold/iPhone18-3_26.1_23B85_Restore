@interface TSTCellToggleControlSpec
+ (id)cellSpecFromTSKFormat:(id)format;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)toggleControlSpec;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateFormatAndValue:(id)value;
- (TSTCellToggleControlSpec)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTCellToggleControlSpec

+ (id)toggleControlSpec
{
  v2 = objc_alloc_init(TSTCellToggleControlSpec);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)validateFormatAndValue:(id)value
{
  valueCopy = value;
  v7 = objc_msgSend_getCurrentFormat(valueCopy, v4, v5, v6);
  v11 = objc_msgSend_formatType(v7, v8, v9, v10);

  v15 = v11 == 263 && objc_msgSend_valueType(valueCopy, v12, v13, v14) == 6;
  return v15;
}

+ (id)cellSpecFromTSKFormat:(id)format
{
  formatCopy = format;
  if (objc_msgSend_formatType(formatCopy, v4, v5, v6) != 263)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSTCellToggleControlSpec cellSpecFromTSKFormat:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellToggleControlSpec.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 68, 0, "Expected checkbox format.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = objc_alloc_init(TSTCellToggleControlSpec);

  return v18;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSTCellToggleControlSpec alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy);

  return v8;
}

- (TSTCellToggleControlSpec)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v19.receiver = self;
  v19.super_class = TSTCellToggleControlSpec;
  v7 = [(TSTCellSpec *)&v19 init:archive];
  if (v7)
  {
    v8 = *(archive + 16) == 8;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellToggleControlSpec initWithArchive:unarchiver:]", v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellToggleControlSpec.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 82, 0, "Wrong interaction type for a checkbox.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  return v7;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v5 = objc_msgSend_interactionType(self, a2, archive, archiver);
  *(archive + 4) |= 0x20u;
  *(archive + 16) = v5;
}

@end