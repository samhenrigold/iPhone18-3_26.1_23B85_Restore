@interface MinMaxIntFormatter
+ (id)formatterForMin:(int64_t)min max:(int64_t)max;
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
- (MinMaxIntFormatter)initWithMin:(int64_t)min max:(int64_t)max;
@end

@implementation MinMaxIntFormatter

+ (id)formatterForMin:(int64_t)min max:(int64_t)max
{
  v6 = [MinMaxIntFormatter alloc];
  v8 = objc_msgSend_initWithMin_max_(v6, v7, min, max);

  return v8;
}

- (MinMaxIntFormatter)initWithMin:(int64_t)min max:(int64_t)max
{
  v7 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], a2, min, max);
  v15.receiver = self;
  v15.super_class = MinMaxIntFormatter;
  v8 = [(APFormatter *)&v15 initWithCharacterSet:v7 withMaxLength:0];
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setMinimum_(v8, v9, min, v10);
    objc_msgSend_setMaximum_(v11, v12, max, v13);
  }

  return v11;
}

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  v36.receiver = self;
  v36.super_class = MinMaxIntFormatter;
  v9 = [APFormatter isPartialStringValid:sel_isPartialStringValid_newEditingString_errorDescription_ newEditingString:? errorDescription:?];
  if (v9)
  {
    if (objc_msgSend_length(valid, v10, v11, v12))
    {
      v16 = objc_msgSend_integerValue(valid, v13, v14, v15);
      if (v16 < objc_msgSend_minimum(self, v17, v18, v19))
      {
        if (string)
        {
          v23 = MEMORY[0x277CCACA8];
          v24 = objc_msgSend_minimum(self, v20, v21, v22);
          *string = objc_msgSend_stringWithFormat_(v23, v25, @"%ld", v26, v24);
        }

        if (description)
        {
          v27 = @"gErG";
LABEL_13:
          LOBYTE(v9) = 0;
          *description = v27;
          return v9;
        }

        goto LABEL_15;
      }

      if (v16 > objc_msgSend_maximum(self, v20, v21, v22))
      {
        if (string)
        {
          v31 = MEMORY[0x277CCACA8];
          v32 = objc_msgSend_maximum(self, v28, v29, v30);
          *string = objc_msgSend_stringWithFormat_(v31, v33, @"%ld", v34, v32);
        }

        if (description)
        {
          v27 = @"gErF";
          goto LABEL_13;
        }

LABEL_15:
        LOBYTE(v9) = 0;
        return v9;
      }
    }

    LOBYTE(v9) = 1;
  }

  return v9;
}

@end