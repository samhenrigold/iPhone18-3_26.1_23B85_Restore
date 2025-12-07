@interface MACFormatter
+ (BOOL)parseMACAddress:(const char *)address intoHexString:(char *)string;
+ (id)macAddressSet;
+ (id)macFormatter;
+ (id)sharedMACFormatter;
- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description;
- (MACFormatter)init;
- (id)possibleSeparators;
- (id)possibleSeparatorsInvertedSet;
- (id)userPreferredSeparator;
- (void)dealloc;
- (void)removeMACAddressSeparatorsFromString:(id)string;
- (void)setPossibleSeparators:(id)separators;
- (void)setPossibleSeparatorsInvertedSet:(id)set;
- (void)setUserPreferredSeparator:(id)separator;
@end

@implementation MACFormatter

+ (id)sharedMACFormatter
{
  result = qword_27E383478;
  if (!qword_27E383478)
  {
    result = objc_alloc_init(MACFormatter);
    qword_27E383478 = result;
  }

  return result;
}

+ (id)macFormatter
{
  v2 = objc_alloc_init(MACFormatter);

  return v2;
}

- (MACFormatter)init
{
  v5 = objc_msgSend_macAddressSet(MACFormatter, a2, v2, v3);
  v25.receiver = self;
  v25.super_class = MACFormatter;
  v8 = [(APFormatter *)&v25 initWithCharacterSet:v5 withMaxLength:17];
  if (v8)
  {
    v9 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v6, qword_27E383178, v7);
    objc_msgSend_setPossibleSeparators_(v8, v10, v9, v11);
    v15 = objc_msgSend_possibleSeparators(v8, v12, v13, v14);
    v19 = objc_msgSend_invertedSet(v15, v16, v17, v18);
    objc_msgSend_setPossibleSeparatorsInvertedSet_(v8, v20, v19, v21);
    objc_msgSend_setUserPreferredSeparator_(v8, v22, @":", v23);
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_setPossibleSeparators_(self, a2, 0, v2);
  objc_msgSend_setPossibleSeparatorsInvertedSet_(self, v4, 0, v5);
  objc_msgSend_setUserPreferredSeparator_(self, v6, 0, v7);
  v8.receiver = self;
  v8.super_class = MACFormatter;
  [(APFormatter *)&v8 dealloc];
}

+ (BOOL)parseMACAddress:(const char *)address intoHexString:(char *)string
{
  if (address)
  {
    v4 = string == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    addressCopy = address;
    v8 = strlen(address);
    for (i = 0; v8; --v8)
    {
      v11 = *addressCopy++;
      v10 = v11;
      v12 = v11 - 48;
      v13 = v11 - 97;
      v14 = v11 - 55;
      if ((v11 - 65) >= 6)
      {
        v15 = -1;
      }

      else
      {
        v15 = v14;
      }

      v16 = v10 - 87;
      if (v13 > 5)
      {
        v16 = v15;
      }

      if (v12 <= 9)
      {
        v16 = v12;
      }

      if (v16 >= 0)
      {
        i = 16 * i + v16;
      }
    }

    *string = BYTE5(i);
    string[1] = BYTE4(i);
    string[2] = BYTE3(i);
    string[3] = BYTE2(i);
    string[4] = BYTE1(i);
    string[5] = i;
  }

  return v5;
}

- (void)removeMACAddressSeparatorsFromString:(id)string
{
  v5 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], a2, string, v3);
  v8 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v6, qword_27E383178, v7);
  v12 = objc_msgSend_invertedSet(v8, v9, v10, v11);
  objc_msgSend_setScanLocation_(v5, v13, 0, v14);
  if (objc_msgSend_scanCharactersFromSet_intoString_(v5, v15, v12, 0))
  {
    v19 = 0;
    do
    {
      if ((objc_msgSend_isAtEnd(v5, v16, v17, v18) & 1) == 0)
      {
        v19 = objc_msgSend_scanLocation(v5, v20, v21, v22);
        objc_msgSend_deleteCharactersInRange_(string, v23, v19, 1);
      }

      v5 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v20, string, v22);
      v27 = objc_msgSend_length(string, v24, v25, v26);
      v30 = v19;
      if (v19 > v27)
      {
        v30 = objc_msgSend_length(string, v28, v19, v29);
      }

      objc_msgSend_setScanLocation_(v5, v28, v30, v29);
    }

    while (objc_msgSend_scanCharactersFromSet_intoString_(v5, v31, v12, 0) && !objc_msgSend_isAtEnd(v5, v32, v33, v34));
  }
}

- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description
{
  length = selectedRange.length;
  location = selectedRange.location;
  v12 = objc_msgSend_mutableCopy(*valid, a2, valid, range, string, selectedRange.location, selectedRange.length, description);
  v14 = v12;
  v16 = range->location;
  v15 = range->length;
  stringCopy = string;
  if (length <= v15)
  {
    v25 = objc_msgSend_substringWithRange_(v12, v13, location, v16 - location);
    if (objc_msgSend_length(v25, v26, v27, v28) == 1 && objc_msgSend_rangeOfString_(qword_27E383178, v21, v25, v23) != 0x7FFFFFFFFFFFFFFFLL && v21 == 1)
    {
      objc_msgSend_setUserPreferredSeparator_(self, v21, v25, v23);
      v24 = 0;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = objc_msgSend_substringWithRange_(string, v13, location, length - v15);
  if (objc_msgSend_length(v17, v18, v19, v20) != 1)
  {
LABEL_9:
    v24 = 1;
    goto LABEL_10;
  }

  v24 = objc_msgSend_rangeOfString_(qword_27E383178, v21, v17, v23) == 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
  maxLength = self->super._maxLength;
  if (maxLength)
  {
    v31 = v16 < maxLength || v24;
    if ((v31 & 1) == 0)
    {
      goto LABEL_52;
    }

    if (objc_msgSend_length(*valid, v21, v22, v23) > self->super._maxLength)
    {
      v32 = objc_msgSend_mutableCopy(*valid, v21, v22, v23);
      objc_msgSend_removeMACAddressSeparatorsFromString_(self, v33, v32, v34);
      if (objc_msgSend_length(v32, v35, v36, v37) >= 0xD)
      {
        goto LABEL_52;
      }
    }
  }

  if (objc_msgSend_characterSet(self, v21, v22, v23, stringCopy))
  {
    v39 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v21, *valid, v23);
    v42 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v40, @"\n", v41);
    objc_msgSend_setCharactersToBeSkipped_(v39, v43, v42, v44);
    v48 = objc_msgSend_characterSet(self, v45, v46, v47);
    objc_msgSend_scanCharactersFromSet_intoString_(v39, v49, v48, 0);
    if ((objc_msgSend_isAtEnd(v39, v50, v51, v52) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  if (objc_msgSend_characterSet(self, v21, v38, v23))
  {
    v54 = *valid;
    v55 = objc_msgSend_invertedCharacterSet(self, v21, v53, v23);
    objc_msgSend_rangeOfCharacterFromSet_(v54, v56, v55, v57);
    if (v21)
    {
      goto LABEL_52;
    }
  }

  v58 = length > v15 || v24;
  if (v58)
  {
    if (length <= 1)
    {
      v59 = objc_msgSend_length(stringCopy, v21, v53, v23);
      if (v59 > objc_msgSend_length(v14, v60, v61, v62) && 0xAAAAAAAAAAAAAAABLL * location - 0x5555555555555555 <= 0x5555555555555555)
      {
        objc_msgSend_deleteCharactersInRange_(v14, v21, location - 1, length);
        --range->location;
        range->length = 0;
      }
    }

    v63 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v21, v14, v23);
    objc_msgSend_setScanLocation_(v63, v64, 0, v65);
    v69 = objc_msgSend_possibleSeparatorsInvertedSet(self, v66, v67, v68);
    objc_msgSend_scanCharactersFromSet_intoString_(v63, v70, v69, 0);
    do
    {
      if (!objc_msgSend_isAtEnd(v63, v71, v72, v73) || objc_msgSend_hasSuffix_(v14, v74, @" ", v76))
      {
        v16 = objc_msgSend_scanLocation(v63, v74, v75, v76);
        objc_msgSend_deleteCharactersInRange_(v14, v77, v16, 1);
        --range->location;
      }

      v63 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v74, v14, v76);
      v81 = objc_msgSend_length(v14, v78, v79, v80);
      v84 = v16;
      if (v16 > v81)
      {
        v84 = objc_msgSend_length(v14, v82, v16, v83);
      }

      objc_msgSend_setScanLocation_(v63, v82, v84, v83);
      v88 = objc_msgSend_possibleSeparatorsInvertedSet(self, v85, v86, v87);
      objc_msgSend_scanCharactersFromSet_intoString_(v63, v89, v88, 0);
    }

    while (!objc_msgSend_isAtEnd(v63, v90, v91, v92) || (objc_msgSend_hasSuffix_(v14, v71, @" ", v73) & 1) != 0);
    if (objc_msgSend_length(v14, v71, v72, v73) >= 2)
    {
      v96 = 2;
      do
      {
        if (v96 >= self->super._maxLength)
        {
          break;
        }

        v97 = objc_msgSend_userPreferredSeparator(self, v93, v94, v95);
        objc_msgSend_insertString_atIndex_(v14, v98, v97, v96);
        ++range->location;
        v96 += 3;
      }

      while (v96 <= objc_msgSend_length(v14, v99, v100, v101));
    }

    *valid = v14;
    return 1;
  }

  v102 = v16;
  if (v16 % 3 != 2)
  {
    if (v16 % 3 == 1)
    {
      v102 = v16 + 1;
    }

    else
    {
      v102 = v16 - 1;
    }
  }

  v103 = (v16 + 1) % 3;
  if (v103 == 2)
  {
LABEL_52:
    v105 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v21, stringCopy, v23, stringCopy);
    result = 0;
    *valid = v105;
    range->location = location;
    range->length = length;
    return result;
  }

  if (v103)
  {
    return 1;
  }

  if (v16 == self->super._maxLength - 1)
  {
    objc_msgSend_deleteCharactersInRange_(v14, v21, v16 - 1, 1);
    --range->location;
    range->length = 0;
  }

  objc_msgSend_insertString_atIndex_(v14, v21, @"0", v102 - 2);
  result = 0;
  ++range->location;
  *valid = v14;
  return result;
}

- (void)setPossibleSeparators:(id)separators
{
  possibleSeparators = self->_possibleSeparators;
  if (possibleSeparators != separators)
  {

    self->_possibleSeparators = separators;
  }
}

- (id)possibleSeparators
{
  v2 = self->_possibleSeparators;

  return v2;
}

- (void)setPossibleSeparatorsInvertedSet:(id)set
{
  possibleSeparatorsInvertedSet = self->_possibleSeparatorsInvertedSet;
  if (possibleSeparatorsInvertedSet != set)
  {

    self->_possibleSeparatorsInvertedSet = set;
  }
}

- (id)possibleSeparatorsInvertedSet
{
  v2 = self->_possibleSeparatorsInvertedSet;

  return v2;
}

- (void)setUserPreferredSeparator:(id)separator
{
  userPreferredSeparator = self->_userPreferredSeparator;
  if (userPreferredSeparator != separator)
  {

    self->_userPreferredSeparator = separator;
  }
}

- (id)userPreferredSeparator
{
  v2 = self->_userPreferredSeparator;

  return v2;
}

+ (id)macAddressSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"abcdefABCDEF", v4);
  objc_msgSend_addCharactersInString_(v2, v5, qword_27E383178, v6);
  v10 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v7, v8, v9);
  objc_msgSend_formUnionWithCharacterSet_(v2, v11, v10, v12);

  return v2;
}

@end