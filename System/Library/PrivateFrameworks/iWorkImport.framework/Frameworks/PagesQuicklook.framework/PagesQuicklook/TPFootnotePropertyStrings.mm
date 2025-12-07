@interface TPFootnotePropertyStrings
+ (id)insertStringForFootnoteKind:(int64_t)kind;
+ (id)stringForFootnoteFormat:(int64_t)format;
+ (id)stringForFootnoteKind:(int64_t)kind;
+ (id)stringForFootnoteNumbering:(int64_t)numbering;
+ (id)titleForFootnoteFormat;
+ (id)titleForFootnoteKind;
+ (id)titleForFootnoteNumbering;
@end

@implementation TPFootnotePropertyStrings

+ (id)insertStringForFootnoteKind:(int64_t)kind
{
  if (kind > 2)
  {
    v11 = &stru_288501738;
  }

  else
  {
    v3 = off_27A6A8C18[kind];
    v4 = sub_275FFFC3C(self);
    v11 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, v7, v8, v9, v10, v3, &stru_288501738, @"Pages", v6);
  }

  return v11;
}

+ (id)titleForFootnoteKind
{
  v2 = sub_275FFFC3C(self);
  v9 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v5, v6, v7, v8, @"Type", &stru_288501738, @"Pages", v4);

  return v9;
}

+ (id)titleForFootnoteFormat
{
  v2 = sub_275FFFC3C(self);
  v9 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v5, v6, v7, v8, @"Format", &stru_288501738, @"Pages", v4);

  return v9;
}

+ (id)titleForFootnoteNumbering
{
  v2 = sub_275FFFC3C(self);
  v9 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v5, v6, v7, v8, @"Numbering", &stru_288501738, @"Pages", v4);

  return v9;
}

+ (id)stringForFootnoteKind:(int64_t)kind
{
  if (kind > 2)
  {
    v11 = &stru_288501738;
  }

  else
  {
    v3 = off_27A6A8C30[kind];
    v4 = sub_275FFFC3C(self);
    v11 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, v7, v8, v9, v10, v3, &stru_288501738, @"Pages", v6);
  }

  return v11;
}

+ (id)stringForFootnoteFormat:(int64_t)format
{
  if (format < 6 && ((0x27u >> format) & 1) != 0)
  {
    return off_27A6A8C48[format];
  }

  v40 = v6;
  v15 = MEMORY[0x277D81150];
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v10, v11, v12, v13, "+[TPFootnotePropertyStrings stringForFootnoteFormat:]", v3, v4, v5, v9, v8, v7, v40);
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnotePropertyStrings.m", v18, v19, v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v26, v27, v28, v29, v30, v16, v25, 88, 0, "Only support numeric, roman, symbolic, and Arabic numeric");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v36, v37, v38, v39, v32, v33, v34, v35);
  return 0;
}

+ (id)stringForFootnoteNumbering:(int64_t)numbering
{
  if (numbering > 2)
  {
    v11 = &stru_288501738;
  }

  else
  {
    v3 = off_27A6A8C78[numbering];
    v4 = sub_275FFFC3C(self);
    v11 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, v7, v8, v9, v10, v3, &stru_288501738, @"Pages", v6);
  }

  return v11;
}

@end