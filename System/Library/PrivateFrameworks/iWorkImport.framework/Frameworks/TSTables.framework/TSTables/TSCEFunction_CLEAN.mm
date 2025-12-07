@interface TSCEFunction_CLEAN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CLEAN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v9 = v7;
  v49 = 0;
  if (v7)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v49);
    v10 = v49;
  }

  else
  {
    v10 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  v48 = v10;
  v11 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, v8, context, spec, 0, &v48);
  v12 = v48;

  if (v12)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
  }

  else
  {
    v16 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v13, a0123456789Abcd, 11452);
    v18 = objc_msgSend_characterSetWithRange_(MEMORY[0x277CCAB50], v17, 19969, 20900);
    objc_msgSend_addCharactersInString_(v18, v19, v16, v20);
    objc_msgSend_addCharactersInRange_(v18, v21, 44032, 11172);
    v24 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v22, v11, v23);
    objc_msgSend_setCharactersToBeSkipped_(v24, v25, 0, v26);
    v30 = 0;
    v46 = 0;
    v47[0] = 0;
    *(v47 + 7) = 0;
    while ((objc_msgSend_isAtEnd(v24, v27, v28, v29) & 1) == 0)
    {
      if (objc_msgSend_scanCharactersFromSet_intoString_(v24, v31, v18, 0))
      {
        v37 = objc_msgSend_scanLocation(v24, v34, v35, v36);
        v45[0] = v30;
        v45[1] = v37 - v30;
        sub_2210780F0(&v50, v45, v44, v38, v39);
        sub_221077424(&v46, v44, context);
      }

      objc_msgSend_scanUpToCharactersFromSet_intoString_(v24, v34, v18, 0);
      v30 = objc_msgSend_scanLocation(v24, v40, v41, v42);
    }

    v15 = sub_2210789F4(&v46, v31, v32, v33);
  }

  return v15;
}

@end