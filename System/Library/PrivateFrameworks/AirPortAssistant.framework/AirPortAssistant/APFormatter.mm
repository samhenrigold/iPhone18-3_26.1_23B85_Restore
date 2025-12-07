@interface APFormatter
+ (id)asciiFormatter:(unint64_t)formatter;
+ (id)asciiSet;
+ (id)formatterForBSFormatter:(int)formatter withMaxLen:(int64_t)len;
+ (id)hexFormatter:(unint64_t)formatter;
+ (id)ipFormatter:(unint64_t)formatter;
+ (id)ipOctetFormatter:(unint64_t)formatter;
+ (id)ipv4AddressSet;
+ (id)ipv4AddressWithPrefixSet;
+ (id)ipv6AddressSet;
+ (id)maxLengthFormatter:(unint64_t)formatter;
+ (id)multipleIPFormatter:(unint64_t)formatter;
+ (id)multipleIpAddressesSet;
+ (id)nonZeroNumberOnly:(unint64_t)only;
+ (id)numberOnlyFormatter:(unint64_t)formatter;
+ (id)phoneNumberFormatter:(unint64_t)formatter;
+ (id)phoneNumberSet;
+ (id)pogoPasswordSet;
+ (id)portRangeFormatter:(unint64_t)formatter;
+ (id)portRangeSet;
+ (id)romanFormatter:(unint64_t)formatter;
+ (id)romanSet;
+ (id)sharedIPFormatter;
+ (id)sharedIPv4PrefixFormatter;
+ (id)sharedIPv6Formatter;
+ (id)sharedMultipleIPFormatter;
+ (id)sharedPhoneNumberFormatter;
- (APFormatter)initWithCharacterSet:(id)set withMaxLength:(unint64_t)length;
- (APFormatter)initWithMaxLength:(unint64_t)length;
- (APFormatter)initWithStringOfValidCharacters:(id)characters withMaxLength:(unint64_t)length;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description;
- (BOOL)isPartialStringValid:(id)maxLength newEditingString:(id *)string errorDescription:(id *)description;
- (id)characterSet;
- (id)invertedCharacterSet;
- (void)dealloc;
- (void)setCharacterSet:(id)set;
- (void)setInvertedCharacterSet:(id)set;
@end

@implementation APFormatter

+ (id)formatterForBSFormatter:(int)formatter withMaxLen:(int64_t)len
{
  switch(formatter)
  {
    case 1:
      result = MEMORY[0x2821F9670](UTF8Formatter, sel_utf8Formatter_, len, len);
      break;
    case 2:
      result = MEMORY[0x2821F9670](APFormatter, sel_hexFormatter_, len, len);
      break;
    case 3:
      result = MEMORY[0x2821F9670](ASCII7BitFormatter, sel_ascii7BitFormatter_, len, len);
      break;
    case 4:
      result = MEMORY[0x2821F9670](APFormatter, sel_numberOnlyFormatter_, len, len);
      break;
    case 5:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedIPFormatter, *&formatter, len);
      break;
    case 6:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedIPv6Formatter, *&formatter, len);
      break;
    case 7:
      result = MEMORY[0x2821F9670](APFormatter, sel_ipOctetFormatter_, len, len);
      break;
    case 8:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedIPv4PrefixFormatter, *&formatter, len);
      break;
    case 9:
      result = MEMORY[0x2821F9670](MACFormatter, sel_macFormatter, *&formatter, len);
      break;
    case 10:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedPhoneNumberFormatter, *&formatter, len);
      break;
    case 11:
      result = MEMORY[0x2821F9670](DomainNameFormatter, sel_domainNameFormatter_, len, len);
      break;
    case 12:
      result = MEMORY[0x2821F9670](HostnameFormatter, sel_hostnameFormatter_, len, len);
      break;
    case 13:
      result = MEMORY[0x2821F9670](APFormatter, sel_portRangeFormatter_, len, len);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

- (APFormatter)initWithStringOfValidCharacters:(id)characters withMaxLength:(unint64_t)length
{
  v7 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], a2, characters, length);

  return objc_msgSend_initWithCharacterSet_withMaxLength_(self, v6, v7, length);
}

- (APFormatter)initWithCharacterSet:(id)set withMaxLength:(unint64_t)length
{
  v17.receiver = self;
  v17.super_class = APFormatter;
  v6 = [(APFormatter *)&v17 init];
  v9 = v6;
  if (v6)
  {
    objc_msgSend_setCharacterSet_(v6, v7, set, v8);
    v13 = objc_msgSend_invertedSet(set, v10, v11, v12);
    objc_msgSend_setInvertedCharacterSet_(v9, v14, v13, v15);
    v9->_maxLength = length;
  }

  return v9;
}

- (APFormatter)initWithMaxLength:(unint64_t)length
{
  v11.receiver = self;
  v11.super_class = APFormatter;
  v4 = [(APFormatter *)&v11 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setCharacterSet_(v4, v5, 0, v6);
    objc_msgSend_setInvertedCharacterSet_(v7, v8, 0, v9);
    v7->_maxLength = length;
  }

  return v7;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  if (value)
  {
    v5 = string == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    *value = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@", string, description, string);
  }

  return v6;
}

- (BOOL)isPartialStringValid:(id)maxLength newEditingString:(id *)string errorDescription:(id *)description
{
  v7 = maxLength;
  if (self->_maxLength)
  {
    v9 = objc_msgSend_UTF8ByteCount(maxLength, a2, maxLength, string);
    maxLength = self->_maxLength;
    if (v9 > maxLength)
    {
      if (string)
      {
        *string = objc_msgSend_prefixStringWithByteCount_(v7, a2, maxLength, string);
      }

      if (description)
      {
        result = 0;
        v11 = @"gErC";
LABEL_17:
        *description = v11;
        return result;
      }

      return 0;
    }
  }

  if (objc_msgSend_characterSet(self, a2, maxLength, string))
  {
    v43 = 0;
    v15 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v12, v7, v14);
    v18 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v16, @"\n", v17);
    objc_msgSend_setCharactersToBeSkipped_(v15, v19, v18, v20);
    v24 = objc_msgSend_characterSet(self, v21, v22, v23);
    objc_msgSend_scanCharactersFromSet_intoString_(v15, v25, v24, &v43);
    if ((objc_msgSend_isAtEnd(v15, v26, v27, v28) & 1) == 0)
    {
      if (string)
      {
        v42 = v43;
        if (!v43)
        {
          v42 = &stru_285145FE8;
        }

        *string = v42;
      }

      if (description)
      {
        *description = @"gErE";
      }

      return 0;
    }
  }

  if (!objc_msgSend_characterSet(self, v12, v13, v14))
  {
    return 1;
  }

  v43 = 0;
  v31 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v29, v7, v30);
  v35 = objc_msgSend_invertedCharacterSet(self, v32, v33, v34);
  objc_msgSend_scanCharactersFromSet_intoString_(v31, v36, v35, &v43);
  v40 = objc_msgSend_length(v43, v37, v38, v39);
  result = v40 == 0;
  if (v40)
  {
    if (string)
    {
      v41 = v43;
      if (!v43)
      {
        v41 = &stru_285145FE8;
      }

      *string = v41;
    }

    if (description)
    {
      v11 = @"gErE";
      goto LABEL_17;
    }
  }

  return result;
}

+ (id)romanFormatter:(unint64_t)formatter
{
  v5 = [APFormatter alloc];
  v9 = objc_msgSend_romanSet(self, v6, v7, v8);
  v11 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v10, v9, formatter);

  return v11;
}

+ (id)sharedIPFormatter
{
  result = qword_27E383448;
  if (!qword_27E383448)
  {
    v4 = [IPv4AddressFormatter alloc];
    v8 = objc_msgSend_ipv4AddressSet(self, v5, v6, v7);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v9, v8, 15);
    qword_27E383448 = result;
  }

  return result;
}

+ (id)sharedIPv6Formatter
{
  result = qword_27E383450;
  if (!qword_27E383450)
  {
    v4 = [APFormatter alloc];
    v8 = objc_msgSend_ipv6AddressSet(self, v5, v6, v7);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v9, v8, 39);
    qword_27E383450 = result;
  }

  return result;
}

+ (id)sharedIPv4PrefixFormatter
{
  result = qword_27E383458;
  if (!qword_27E383458)
  {
    v4 = [IPv4AddressWithPrefixFormatter alloc];
    v8 = objc_msgSend_ipv4AddressWithPrefixSet(self, v5, v6, v7);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v9, v8, 18);
    qword_27E383458 = result;
  }

  return result;
}

+ (id)ipFormatter:(unint64_t)formatter
{
  v5 = [IPv4AddressFormatter alloc];
  v9 = objc_msgSend_ipv4AddressSet(self, v6, v7, v8);
  v11 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v10, v9, formatter);

  return v11;
}

+ (id)ipOctetFormatter:(unint64_t)formatter
{
  v5 = [IPv4AddressOctetFormatter alloc];
  v9 = objc_msgSend_ipv4AddressSet(self, v6, v7, v8);
  v11 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v10, v9, formatter);

  return v11;
}

+ (id)sharedMultipleIPFormatter
{
  result = qword_27E383460;
  if (!qword_27E383460)
  {
    v4 = [APFormatter alloc];
    v8 = objc_msgSend_multipleIpAddressesSet(self, v5, v6, v7);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v9, v8, 49);
    qword_27E383460 = result;
  }

  return result;
}

+ (id)multipleIPFormatter:(unint64_t)formatter
{
  v5 = [APFormatter alloc];
  v9 = objc_msgSend_multipleIpAddressesSet(self, v6, v7, v8);
  v11 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v10, v9, formatter);

  return v11;
}

+ (id)maxLengthFormatter:(unint64_t)formatter
{
  v4 = [APFormatter alloc];
  v7 = objc_msgSend_initWithMaxLength_(v4, v5, formatter, v6);

  return v7;
}

+ (id)numberOnlyFormatter:(unint64_t)formatter
{
  v4 = [APFormatter alloc];
  v8 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v9, v8, formatter);

  return v10;
}

+ (id)nonZeroNumberOnly:(unint64_t)only
{
  v5 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], a2, @"123456789", v3);
  v6 = [APFormatter alloc];
  v8 = objc_msgSend_initWithCharacterSet_withMaxLength_(v6, v7, v5, only);

  return v8;
}

+ (id)portRangeFormatter:(unint64_t)formatter
{
  v4 = [APFormatter alloc];
  v8 = objc_msgSend_portRangeSet(APFormatter, v5, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v9, v8, formatter);

  return v10;
}

+ (id)sharedPhoneNumberFormatter
{
  result = qword_27E383468;
  if (!qword_27E383468)
  {
    v4 = [APFormatter alloc];
    v8 = objc_msgSend_phoneNumberSet(self, v5, v6, v7);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v9, v8, 0);
    qword_27E383468 = result;
  }

  return result;
}

+ (id)phoneNumberFormatter:(unint64_t)formatter
{
  v5 = [APFormatter alloc];
  v9 = objc_msgSend_phoneNumberSet(self, v6, v7, v8);
  v11 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v10, v9, formatter);

  return v11;
}

+ (id)asciiFormatter:(unint64_t)formatter
{
  v5 = [APFormatter alloc];
  v9 = objc_msgSend_asciiSet(self, v6, v7, v8);
  v11 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v10, v9, formatter);

  return v11;
}

+ (id)hexFormatter:(unint64_t)formatter
{
  v5 = [APFormatter alloc];
  v9 = objc_msgSend_hexSet(self, v6, v7, v8);
  v11 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v10, v9, formatter);

  return v11;
}

- (void)dealloc
{
  objc_msgSend_setCharacterSet_(self, a2, 0, v2);
  objc_msgSend_setInvertedCharacterSet_(self, v4, 0, v5);
  v6.receiver = self;
  v6.super_class = APFormatter;
  [(APFormatter *)&v6 dealloc];
}

- (void)setCharacterSet:(id)set
{
  characterSet = self->_characterSet;
  if (characterSet != set)
  {

    self->_characterSet = set;
  }
}

- (id)characterSet
{
  v2 = self->_characterSet;

  return v2;
}

- (void)setInvertedCharacterSet:(id)set
{
  invertedCharacterSet = self->_invertedCharacterSet;
  if (invertedCharacterSet != set)
  {

    self->_invertedCharacterSet = set;
  }
}

- (id)invertedCharacterSet
{
  v2 = self->_invertedCharacterSet;

  return v2;
}

+ (id)ipv4AddressSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @".", v4);
  objc_msgSend_addCharactersInString_(v2, v5, @"0123456789", v6);

  return v2;
}

+ (id)ipv4AddressWithPrefixSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"/", v4);
  v8 = objc_msgSend_ipv4AddressSet(APFormatter, v5, v6, v7);
  objc_msgSend_formUnionWithCharacterSet_(v2, v9, v8, v10);

  return v2;
}

+ (id)ipv6AddressSet
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v3, v4, @":", v5);
  objc_msgSend_addCharactersInString_(v3, v6, @"/", v7);
  v11 = objc_msgSend_hexSet(self, v8, v9, v10);
  objc_msgSend_formUnionWithCharacterSet_(v3, v12, v11, v13);
  v17 = objc_msgSend_ipv4AddressSet(self, v14, v15, v16);
  objc_msgSend_formUnionWithCharacterSet_(v3, v18, v17, v19);

  return v3;
}

- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description
{
  v14 = 0;
  isPartialStringValid_newEditingString_errorDescription = objc_msgSend_isPartialStringValid_newEditingString_errorDescription_(self, a2, *valid, &v14, description, selectedRange.location, selectedRange.length);
  if (range)
  {
    if (isPartialStringValid_newEditingString_errorDescription)
    {
      v12 = 1;
    }

    else
    {
      v12 = v14 == 0;
    }

    if (!v12)
    {
      range->location = objc_msgSend_length(v14, v8, v9, v10);
      range->length = 0;
    }
  }

  return isPartialStringValid_newEditingString_errorDescription;
}

+ (id)romanSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"(),-./:=?' ", v4);
  objc_msgSend_addCharactersInString_(v2, v5, @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", v6);
  v10 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v7, v8, v9);
  objc_msgSend_formUnionWithCharacterSet_(v2, v11, v10, v12);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "•", v14);
  objc_msgSend_addCharactersInString_(v2, v16, v15, v17);

  return v2;
}

+ (id)multipleIpAddressesSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"., ", v4);
  v8 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6, v7);
  objc_msgSend_formUnionWithCharacterSet_(v2, v9, v8, v10);

  return v2;
}

+ (id)phoneNumberSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"()-*#,.", v4);
  v8 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6, v7);
  objc_msgSend_formUnionWithCharacterSet_(v2, v9, v8, v10);

  return v2;
}

+ (id)asciiSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInRange_(v2, v3, 32, 95);
  objc_msgSend_addCharactersInRange_(v2, v4, 128, 127);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "•", v6);
  objc_msgSend_addCharactersInString_(v2, v8, v7, v9);

  return v2;
}

+ (id)pogoPasswordSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInRange_(v2, v3, 32, 95);
  objc_msgSend_addCharactersInRange_(v2, v4, 128, 127);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "•", v6);
  objc_msgSend_addCharactersInString_(v2, v8, v7, v9);

  return v2;
}

+ (id)portRangeSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @",-", v4);
  v8 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6, v7);
  objc_msgSend_formUnionWithCharacterSet_(v2, v9, v8, v10);

  return v2;
}

@end