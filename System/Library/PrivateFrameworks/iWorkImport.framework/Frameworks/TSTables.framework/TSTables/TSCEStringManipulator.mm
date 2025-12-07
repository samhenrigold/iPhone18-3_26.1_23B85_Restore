@interface TSCEStringManipulator
- (TSCEStringManipulator)init;
@end

@implementation TSCEStringManipulator

- (TSCEStringManipulator)init
{
  v114.receiver = self;
  v114.super_class = TSCEStringManipulator;
  v2 = [(TSCEStringManipulator *)&v114 init];
  v3 = v2;
  if (v2)
  {
    straightQuote = v2->_straightQuote;
    v2->_straightQuote = @"'";

    straightQuoteEscaped = v3->_straightQuoteEscaped;
    v3->_straightQuoteEscaped = @"''";

    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = objc_msgSend_initWithFormat_(v6, v7, @"'%C", v8, 65287);
    fullwidthApostropheEscaped = v3->_fullwidthApostropheEscaped;
    v3->_fullwidthApostropheEscaped = v9;

    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_initWithFormat_(v11, v12, @"%C", v13, 8217);
    rightSingleQuotationMark = v3->_rightSingleQuotationMark;
    v3->_rightSingleQuotationMark = v14;

    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_msgSend_initWithFormat_(v16, v17, @"'%C", v18, 8217);
    rightSingleQuotationMarkEscaped = v3->_rightSingleQuotationMarkEscaped;
    v3->_rightSingleQuotationMarkEscaped = v19;

    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = objc_msgSend_initWithFormat_(v21, v22, @"%C", v23, 8216);
    leftSingleQuotationMark = v3->_leftSingleQuotationMark;
    v3->_leftSingleQuotationMark = v24;

    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    v29 = objc_msgSend_initWithFormat_(v26, v27, @"'%C", v28, 8216);
    leftSingleQuotationMarkEscaped = v3->_leftSingleQuotationMarkEscaped;
    v3->_leftSingleQuotationMarkEscaped = v29;

    v31 = objc_alloc(MEMORY[0x277CCACA8]);
    v34 = objc_msgSend_initWithFormat_(v31, v32, @"%C", v33, 65287);
    fullwidthApostrophe = v3->_fullwidthApostrophe;
    v3->_fullwidthApostrophe = v34;

    v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"%C%C%C%%C", v37, 0xFFFFLL, 65520, 65520);
    v39 = objc_alloc(MEMORY[0x277CCACA8]);
    v42 = objc_msgSend_initWithFormat_(v39, v40, v38, v41, 65532);
    temporaryStraightQuoteString = v3->_temporaryStraightQuoteString;
    v3->_temporaryStraightQuoteString = v42;

    v44 = objc_alloc(MEMORY[0x277CCACA8]);
    v47 = objc_msgSend_initWithFormat_(v44, v45, v38, v46, 65533);
    temporaryFullwidthApostropheString = v3->_temporaryFullwidthApostropheString;
    v3->_temporaryFullwidthApostropheString = v47;

    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    v52 = objc_msgSend_initWithFormat_(v49, v50, v38, v51, 65534);
    temporaryLeftSingleQuoteString = v3->_temporaryLeftSingleQuoteString;
    v3->_temporaryLeftSingleQuoteString = v52;

    v54 = objc_alloc(MEMORY[0x277CCACA8]);
    v57 = objc_msgSend_initWithFormat_(v54, v55, v38, v56, 0xFFFFLL);
    temporaryRightSingleQuoteString = v3->_temporaryRightSingleQuoteString;
    v3->_temporaryRightSingleQuoteString = v57;

    v62 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v59, v60, v61);
    singleQuoteCharacterSet = v3->_singleQuoteCharacterSet;
    v3->_singleQuoteCharacterSet = v62;

    v67 = objc_msgSend_tsce_periodCharacterSet(MEMORY[0x277CCA900], v64, v65, v66);
    periodCharacterSet = v3->_periodCharacterSet;
    v3->_periodCharacterSet = v67;

    v72 = objc_msgSend_tsce_internationalColonCharacterSet(MEMORY[0x277CCA900], v69, v70, v71);
    colonCharacterSet = v3->_colonCharacterSet;
    v3->_colonCharacterSet = v72;

    v76 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v74, @" ", v75);
    asciiSpaceCharacterSet = v3->_asciiSpaceCharacterSet;
    v3->_asciiSpaceCharacterSet = v76;

    v81 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v78, v79, v80);
    intlWhitespaceCharacterSet = v3->_intlWhitespaceCharacterSet;
    v3->_intlWhitespaceCharacterSet = v81;

    v86 = objc_msgSend_tsce_characterSetRequiringSingleQuotes(MEMORY[0x277CCA900], v83, v84, v85);
    requiringSingleQuotesCharacterSet = v3->_requiringSingleQuotesCharacterSet;
    v3->_requiringSingleQuotesCharacterSet = v86;

    v91 = objc_msgSend_mutableCopy(v3->_intlWhitespaceCharacterSet, v88, v89, v90);
    objc_msgSend_formUnionWithCharacterSet_(v91, v92, v3->_singleQuoteCharacterSet, v93);
    v97 = objc_msgSend_copy(v91, v94, v95, v96);
    singleQuoteOrWhitespaceCharacterSet = v3->_singleQuoteOrWhitespaceCharacterSet;
    v3->_singleQuoteOrWhitespaceCharacterSet = v97;

    v101 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v99, @"%C%C%C%C%C%C%C%C%C%C", v100, 34, 8220, 8221, 171, 187, 8222, 8223, 12317, 12318, 1524);
    v104 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v102, @"'%C%C%C%C%C%C%C", v103, 65287, 8217, 8216, 8218, 8219, 8249, 8250);
    v107 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v105, v101, v106);
    doubleCurlyQuoteCharacterSet = v3->_doubleCurlyQuoteCharacterSet;
    v3->_doubleCurlyQuoteCharacterSet = v107;

    v111 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v109, v104, v110);
    singleCurlyQuoteCharacterSet = v3->_singleCurlyQuoteCharacterSet;
    v3->_singleCurlyQuoteCharacterSet = v111;
  }

  return v3;
}

@end