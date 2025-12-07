@interface WEPKeyFormatter
+ (id)sharedWEPKeyFormatter;
+ (id)wepKeyFormatter:(unint64_t)formatter;
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
@end

@implementation WEPKeyFormatter

+ (id)sharedWEPKeyFormatter
{
  result = qword_27E383470;
  if (!qword_27E383470)
  {
    v3 = [WEPKeyFormatter alloc];
    result = objc_msgSend_initWithMaxByteCount_maxLength_(v3, v4, 64, 64);
    qword_27E383470 = result;
  }

  return result;
}

+ (id)wepKeyFormatter:(unint64_t)formatter
{
  v4 = [WEPKeyFormatter alloc];
  v6 = objc_msgSend_initWithMaxByteCount_maxLength_(v4, v5, formatter, formatter);

  return v6;
}

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  v9 = @"$";
  if (objc_msgSend_hasPrefix_(valid, a2, @"$", string))
  {
    v12 = 1;
  }

  else
  {
    v9 = @"0x";
    if ((objc_msgSend_hasPrefix_(valid, v10, @"0x", v11) & 1) == 0 && !objc_msgSend_hasPrefix_(valid, v10, @"0X", v11))
    {
      goto LABEL_7;
    }

    v12 = 2;
  }

  v31 = 0;
  v13 = MEMORY[0x277CCAC80];
  v14 = objc_msgSend_substringFromIndex_(valid, v10, v12, v11);
  v17 = objc_msgSend_scannerWithString_(v13, v15, v14, v16);
  v21 = objc_msgSend_hexSet(APFormatter, v18, v19, v20);
  objc_msgSend_scanCharactersFromSet_intoString_(v17, v22, v21, &v31);
  if (objc_msgSend_isAtEnd(v17, v23, v24, v25))
  {
LABEL_7:
    v30.receiver = self;
    v30.super_class = WEPKeyFormatter;
    return [(UTF8Formatter *)&v30 isPartialStringValid:valid newEditingString:string errorDescription:description];
  }

  if (string)
  {
    v29 = v31;
    if (!v31)
    {
      v29 = &stru_285145FE8;
    }

    *string = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%@%@", v27, v9, v29);
  }

  if (description)
  {
    *description = @"gErE";
  }

  return 0;
}

@end