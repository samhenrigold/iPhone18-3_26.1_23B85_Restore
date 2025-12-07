@interface HostnameFormatter
+ (id)hostnameFormatter:(unint64_t)formatter;
+ (id)hostnameSet;
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
@end

@implementation HostnameFormatter

+ (id)hostnameFormatter:(unint64_t)formatter
{
  v5 = [HostnameFormatter alloc];
  v9 = objc_msgSend_hostnameSet(self, v6, v7, v8);
  v11 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v10, v9, formatter);

  return v11;
}

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  v10 = objc_msgSend_rangeOfString_options_(valid, a2, @".local", 4);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = objc_msgSend_length(valid, v9, 0x7FFFFFFFFFFFFFFFLL, v11);
  }

  v12 = objc_msgSend_substringToIndex_(valid, v9, v10, v11);
  v18.receiver = self;
  v18.super_class = HostnameFormatter;
  v13 = [(APFormatter *)&v18 isPartialStringValid:v12 newEditingString:string errorDescription:description];
  v16 = v13;
  if (string && (v13 & 1) == 0)
  {
    *string = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%@.local", v15, *string);
  }

  return v16;
}

+ (id)hostnameSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"-", v4);
  objc_msgSend_addCharactersInString_(v2, v5, @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", v6);
  v10 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v7, v8, v9);
  objc_msgSend_formUnionWithCharacterSet_(v2, v11, v10, v12);

  return v2;
}

@end