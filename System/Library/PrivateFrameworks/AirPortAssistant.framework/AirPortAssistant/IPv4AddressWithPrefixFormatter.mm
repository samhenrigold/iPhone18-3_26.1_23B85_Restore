@interface IPv4AddressWithPrefixFormatter
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
@end

@implementation IPv4AddressWithPrefixFormatter

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  v22.receiver = self;
  v22.super_class = IPv4AddressWithPrefixFormatter;
  v7 = [(IPv4AddressFormatter *)&v22 isPartialStringValid:valid newEditingString:string errorDescription:?];
  if (v7)
  {
    if (objc_msgSend_length(valid, v8, v9, v10))
    {
      v13 = objc_msgSend_rangeOfString_(valid, v11, @"/", v12);
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (objc_msgSend_length(valid, v14, v15, v16) >= 0x10)
        {
          if (description)
          {
LABEL_6:
            LOBYTE(v7) = 0;
            *description = @"gErC";
            return v7;
          }

LABEL_9:
          LOBYTE(v7) = 0;
          return v7;
        }
      }

      else
      {
        v17 = objc_msgSend_substringFromIndex_(valid, v14, v13 + 1, v16);
        if (objc_msgSend_integerValue(v17, v18, v19, v20) >= 0x21)
        {
          if (description)
          {
            goto LABEL_6;
          }

          goto LABEL_9;
        }
      }
    }

    LOBYTE(v7) = 1;
  }

  return v7;
}

@end