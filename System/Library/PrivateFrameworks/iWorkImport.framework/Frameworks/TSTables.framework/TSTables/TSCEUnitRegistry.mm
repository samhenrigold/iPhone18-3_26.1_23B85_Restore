@interface TSCEUnitRegistry
+ (BOOL)unitIsMetric:(unsigned __int16)metric;
+ (TSCEPrefixedBaseUnit)prefixedUnitForString:(id)string;
+ (double)multiplierForUnit:(TSCEPrefixedBaseUnit)unit;
+ (id)baseUnitStringsForDimension:(unsigned __int8)dimension;
+ (id)convertInNumber:(const TSUDecimal *)number outNumber:(TSUDecimal *)outNumber fromUnit:(TSCEPrefixedBaseUnit)unit toUnit:(TSCEPrefixedBaseUnit)toUnit;
+ (id)currencyCodeForUnit:(unsigned __int16)unit;
+ (id)siBinaryPrefixStrings;
+ (id)siPrefixStrings;
+ (unsigned)binaryUnitPrefixForChars:(unsigned __int16)chars :(unsigned __int16)a4;
+ (unsigned)canonicalUnitForDimension:(unsigned __int8)dimension;
+ (unsigned)dimensionForUnit:(unsigned __int16)unit;
+ (unsigned)unitForCurrencyCode:(id)code;
+ (unsigned)unitForString:(id)string;
+ (unsigned)unitPrefixForCharacter:(unsigned __int16)character;
+ (void)initialize;
@end

@implementation TSCEUnitRegistry

+ (void)initialize
{
  if (qword_27CFB5430 != -1)
  {
    sub_2216F7700();
  }
}

+ (unsigned)unitForCurrencyCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    v6 = objc_msgSend_objectForKeyedSubscript_(qword_27CFB5418, v3, codeCopy, v4);
    v10 = objc_msgSend_integerValue(v6, v7, v8, v9);
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSCEUnitRegistry unitForCurrencyCode:]", v4);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 537, 0, "can't look up unit for a nil currency code");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    v10 = 0;
  }

  return v10;
}

+ (id)currencyCodeForUnit:(unsigned __int16)unit
{
  unitCopy = unit;
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  v7 = objc_msgSend_initWithInt_(v4, v5, unitCopy, v6);
  v10 = objc_msgSend_objectForKey_(qword_27CFB5420, v8, v7, v9);

  return v10;
}

+ (unsigned)canonicalUnitForDimension:(unsigned __int8)dimension
{
  if (dimension < 0xEu && ((0x3FEFu >> dimension) & 1) != 0)
  {
    return word_2217E12C2[dimension];
  }

  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry canonicalUnitForDimension:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 584, 0, "Unknown dimension found in canonicalUnitForDimension");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 6;
}

+ (id)baseUnitStringsForDimension:(unsigned __int8)dimension
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry baseUnitStringsForDimension:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 607, 0, "baseUnitStringsForDimension: only intended for unit tests, atm.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  return 0;
}

+ (id)siPrefixStrings
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry siPrefixStrings]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 622, 0, "siPrefixStrings: only intended for unit tests, atm.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

+ (id)siBinaryPrefixStrings
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry siBinaryPrefixStrings]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 632, 0, "siBinaryPrefixStrings: only intended for unit tests, atm.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

+ (unsigned)unitForString:(id)string
{
  v4 = objc_msgSend_objectForKey_(qword_27CFB5428, a2, string, v3);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_intValue(v4, v5, v6, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (double)multiplierForUnit:(TSCEPrefixedBaseUnit)unit
{
  var1 = unit.var1;
  v5 = 1.0e18;
  switch(unit.var0)
  {
    case 0u:
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry multiplierForUnit:]", v3);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v9);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 652, 0, "Shouldn't try to get the multiplier of an invalid unit prefix");
      goto LABEL_25;
    case 1u:
      break;
    case 2u:
      v5 = 1.0e15;
      break;
    case 3u:
      v5 = 1.0e12;
      break;
    case 4u:
      v5 = 1000000000.0;
      break;
    case 5u:
      v5 = 1000000.0;
      break;
    case 6u:
      v5 = 1000.0;
      break;
    case 7u:
      v12 = 0x4059000000000000;
      goto LABEL_33;
    case 8u:
      v5 = 10.0;
      break;
    case 9u:
      goto LABEL_26;
    case 0xAu:
      v5 = 0.1;
      break;
    case 0xBu:
      v5 = 0.01;
      break;
    case 0xCu:
      v5 = 0.001;
      break;
    case 0xDu:
      v5 = 0.000001;
      break;
    case 0xEu:
      v5 = 0.000000001;
      break;
    case 0xFu:
      v5 = 1.0e-12;
      break;
    case 0x10u:
      v5 = 1.0e-15;
      break;
    case 0x11u:
      v5 = 1.0e-18;
      break;
    case 0x12u:
      v5 = 1.0e24;
      break;
    case 0x13u:
      v5 = 1.0e21;
      break;
    case 0x14u:
      v5 = 1.0e-21;
      break;
    case 0x15u:
      v5 = 1.0e-24;
      break;
    case 0x16u:
      v12 = 0x44F0000000000000;
      goto LABEL_33;
    case 0x17u:
      v12 = 0x4450000000000000;
      goto LABEL_33;
    case 0x18u:
      v12 = 0x43B0000000000000;
      goto LABEL_33;
    case 0x19u:
      v12 = 0x4310000000000000;
      goto LABEL_33;
    case 0x1Au:
      v12 = 0x4270000000000000;
      goto LABEL_33;
    case 0x1Bu:
      v12 = 0x41D0000000000000;
      goto LABEL_33;
    case 0x1Cu:
      v12 = 0x4130000000000000;
      goto LABEL_33;
    case 0x1Du:
      v12 = 0x4090000000000000;
LABEL_33:
      v5 = *&v12;
      break;
    default:
      v13 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry multiplierForUnit:]", v3);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v16, v7, v10, 747, 0, "Shouldn't try to get the multiplier of an unknown unit prefix");
LABEL_25:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
LABEL_26:
      v5 = 1.0;
      break;
  }

  v23 = var1;
  v24 = &v23;
  v20 = *(sub_221309CBC(qword_27CFB5438, &v23, &unk_2217E12C0, &v24) + 18);
  if (v20 == 10)
  {
    v21 = v23 - 43;
    if (v21 > 0x25 || ((1 << v21) & 0x2E000001FFLL) == 0)
    {
      return v5 * (v5 * v5);
    }
  }

  else if (v20 == 12)
  {
    return v5 * v5;
  }

  return v5;
}

+ (unsigned)unitPrefixForCharacter:(unsigned __int16)character
{
  if (character > 116)
  {
    if (character <= 121)
    {
      if (character != 117)
      {
        if (character == 121)
        {
          return 21;
        }

        return 0;
      }
    }

    else
    {
      if (character == 122)
      {
        return 20;
      }

      if (character != 181 && character != 956)
      {
        return 0;
      }
    }

    return 13;
  }

  switch(character)
  {
    case 'M':
      return 5;
    case 'N':
    case 'O':
    case 'Q':
    case 'R':
    case 'S':
    case 'U':
    case 'V':
    case 'W':
    case 'X':
    case '[':
    case '\\':
    case ']':
    case '^':
    case '_':
    case 'b':
    case 'g':
    case 'i':
    case 'j':
    case 'l':
    case 'o':
      return 0;
    case 'P':
      return 2;
    case 'T':
      return 3;
    case 'Y':
      return 18;
    case 'Z':
      return 19;
    case 'a':
      return 17;
    case 'c':
      return 11;
    case 'd':
      return 10;
    case 'e':
      return 8;
    case 'f':
      return 16;
    case 'h':
      return 7;
    case 'k':
      return 6;
    case 'm':
      return 12;
    case 'n':
      return 14;
    case 'p':
      return 15;
    default:
      if (character == 69)
      {
        result = 1;
      }

      else
      {
        if (character != 71)
        {
          return 0;
        }

        result = 4;
      }

      break;
  }

  return result;
}

+ (unsigned)binaryUnitPrefixForChars:(unsigned __int16)chars :(unsigned __int16)a4
{
  if (a4 != 105)
  {
    return 0;
  }

  if (chars > 83)
  {
    if (chars > 89)
    {
      if (chars != 107)
      {
        if (chars == 90)
        {
          return 23;
        }

        return 0;
      }

      return 29;
    }

    else
    {
      if (chars != 84)
      {
        if (chars == 89)
        {
          return 22;
        }

        return 0;
      }

      return 26;
    }
  }

  else if (chars > 76)
  {
    if (chars != 77)
    {
      if (chars == 80)
      {
        return 25;
      }

      return 0;
    }

    return 28;
  }

  else
  {
    if (chars != 69)
    {
      if (chars == 71)
      {
        return 27;
      }

      return 0;
    }

    return 24;
  }
}

+ (TSCEPrefixedBaseUnit)prefixedUnitForString:(id)string
{
  stringCopy = string;
  v6 = objc_msgSend_unitForString_(TSCEUnitRegistry, v4, stringCopy, v5);
  if (v6)
  {
    v35.var1 = v6;
    v35.var0 = 9;
  }

  else if (objc_msgSend_length(stringCopy, v7, v8, v9))
  {
    v13 = objc_msgSend_characterAtIndex_(stringCopy, v11, 0, v12);
    v35.var0 = objc_msgSend_unitPrefixForCharacter_(TSCEUnitRegistry, v14, v13, v15);
    v18 = objc_msgSend_substringFromIndex_(stringCopy, v16, 1, v17);
    v21 = objc_msgSend_unitForString_(TSCEUnitRegistry, v19, v18, v20);
    v35.var1 = v21;

    if (!v21 && objc_msgSend_length(stringCopy, v22, v23, v24) >= 2)
    {
      v27 = objc_msgSend_characterAtIndex_(stringCopy, v25, 1, v26);
      v35.var0 = objc_msgSend_binaryUnitPrefixForChars::(TSCEUnitRegistry, v28, v13, v27);
      v31 = objc_msgSend_substringFromIndex_(stringCopy, v29, 2, v30);
      v34 = objc_msgSend_unitForString_(TSCEUnitRegistry, v32, v31, v33);
      v35.var1 = v34;

      if (v34)
      {
        p_var1 = &v35.var1;
        if (*(sub_221309CBC(qword_27CFB5438, &v35.var1, &unk_2217E12C0, &p_var1) + 18) != 13)
        {
          v35.var0 = 9;
          v35.var1 = 0;
        }
      }
    }
  }

  else
  {
    v35.var1 = 0;
    v35.var0 = 0;
  }

  return v35;
}

+ (BOOL)unitIsMetric:(unsigned __int16)metric
{
  result = 1;
  if ((metric > 0x38u || ((1 << metric) & 0x1C804E2FBE82940) == 0) && ((metric - 79) > 0x1D || ((1 << (metric - 79)) & 0x304B0041) == 0))
  {
    return 0;
  }

  return result;
}

+ (id)convertInNumber:(const TSUDecimal *)number outNumber:(TSUDecimal *)outNumber fromUnit:(TSCEPrefixedBaseUnit)unit toUnit:(TSCEPrefixedBaseUnit)toUnit
{
  toUnitCopy = toUnit;
  unitCopy = unit;
  v34 = *number;
  if (qword_27CFB5448 <= unit.var1 && qword_27CFB5448 <= toUnit.var1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry convertInNumber:outNumber:fromUnit:toUnit:]", outNumber);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 951, 0, "Invalid unit found in convert:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    TSUDecimal::operator=();
    objc_msgSend_errorForErrorType_(TSCEError, v22, 80, v23);
    goto LABEL_18;
  }

  v37._decimal.w[0] = &unitCopy.var1;
  v8 = *(sub_221309CBC(qword_27CFB5438, &unitCopy.var1, &unk_2217E12C0, &v37) + 18);
  v37._decimal.w[0] = &toUnitCopy.var1;
  v9 = *(sub_221309CBC(qword_27CFB5438, &toUnitCopy.var1, &unk_2217E12C0, &v37) + 18);
  if (v8 != v9)
  {
    var1 = unitCopy.var1;
    if (v9 != 2 || unitCopy.var1 != 29 || unitCopy.var0 != 15)
    {
      if (toUnitCopy.var1 == 29 && toUnitCopy.var0 == 15 && v8 == 2)
      {
        toUnitCopy.var0 = 9;
        toUnitCopy.var1 = 68;
        goto LABEL_21;
      }

      TSUDecimal::operator=();
      objc_msgSend_errorForErrorType_(TSCEError, v31, 81, v32);
      v24 = LABEL_18:;
      goto LABEL_40;
    }

    unitCopy.var0 = 9;
    unitCopy.var1 = 68;
  }

  var1 = unitCopy.var1;
LABEL_21:
  if (var1 == 41)
  {
    if (toUnitCopy.var1 == 41)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (var1 == 74)
  {
    if (toUnitCopy.var1 == 74)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (var1 == 42 && toUnitCopy.var1 != 42)
  {
LABEL_29:
    TSUDecimal::operator=();
    TSUDecimal::operator-=();
  }

LABEL_30:
  v37._decimal.w[0] = &unitCopy.var1;
  sub_221309EF8(qword_27CFB5440, &unitCopy.var1);
  v37 = v34;
  TSUDecimal::operator*=();
  v25 = v37;
  v37._decimal.w[0] = &toUnitCopy.var1;
  sub_221309EF8(qword_27CFB5440, &toUnitCopy.var1);
  v37 = v25;
  TSUDecimal::operator/=();
  v33 = v37;
  if (toUnitCopy.var1 == 41)
  {
    if (unitCopy.var1 != 41)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (toUnitCopy.var1 != 74)
    {
      if (toUnitCopy.var1 != 42 || unitCopy.var1 == 42)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (unitCopy.var1 != 74)
    {
LABEL_38:
      TSUDecimal::operator=();
      TSUDecimal::operator+=();
    }
  }

LABEL_39:
  objc_msgSend_multiplierForUnit_(TSCEUnitRegistry, v26, *&unitCopy, v27);
  objc_msgSend_multiplierForUnit_(TSCEUnitRegistry, v28, *&toUnitCopy, v29);
  TSUDecimal::operator=();
  v37 = v33;
  TSUDecimal::operator*=();
  v24 = 0;
  *outNumber = v37;
LABEL_40:

  return v24;
}

+ (unsigned)dimensionForUnit:(unsigned __int16)unit
{
  unitCopy = unit;
  if (qword_27CFB5448 <= unit)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEUnitRegistry dimensionForUnit:]", v3);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUnitRegistry.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 1055, 0, "unit out of bounds in dimensionForUnit:.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  v15 = &unitCopy;
  return *(sub_221309CBC(qword_27CFB5438, &unitCopy, &unk_2217E12C0, &v15) + 18);
}

@end