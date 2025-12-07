@interface TSCEQuotedRefPathWord
- (TSCEQuotedRefPathWord)initWithRawString:(id)string;
- (id)description;
- (id)quoteStringIfNeeded;
- (id)trimmedStringWithPreserveFlag:(BOOL)flag;
@end

@implementation TSCEQuotedRefPathWord

- (TSCEQuotedRefPathWord)initWithRawString:(id)string
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = TSCEQuotedRefPathWord;
  v8 = [(TSCEQuotedRefPathWord *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(stringCopy, v5, v6, v7);
    rawString = v8->_rawString;
    v8->_rawString = v9;

    *&v8->_wasQuoted = 0;
  }

  return v8;
}

- (id)trimmedStringWithPreserveFlag:(BOOL)flag
{
  flagCopy = flag;
  rawString = self->_rawString;
  v7 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], a2, flag, v3);
  v10 = objc_msgSend_stringByTrimmingCharactersInSet_(rawString, v8, v7, v9);

  if (objc_msgSend_length(v10, v11, v12, v13) >= 2)
  {
    v17 = objc_msgSend_length(v10, v14, v15, v16);
    v19 = objc_msgSend_rangeOfComposedCharacterSequencesForRange_(v10, v18, 0, 1);
    v21 = v20;
    v22 = objc_msgSend_substringWithRange_(v10, v20, v19, v20);
    if (!objc_msgSend_isLeftParen_(TSCEQuotedRefPathSplitter, v23, v22, v24))
    {
LABEL_5:

      goto LABEL_6;
    }

    v26 = objc_msgSend_substringWithRange_(v10, v25, v17 - 1, 1);
    isRightParen = objc_msgSend_isRightParen_(TSCEQuotedRefPathSplitter, v27, v26, v28);

    if (isRightParen)
    {
      v31 = objc_msgSend_length(v10, v14, v30, v16);
      v32 = MEMORY[0x277CCACA8];
      v22 = objc_msgSend_substringWithRange_(v10, v33, v21, v31 + ~v21);
      v36 = objc_msgSend_stringWithFormat_(v32, v34, @"(%@)", v35, v22);

      v10 = v36;
      goto LABEL_5;
    }
  }

LABEL_6:
  if (self->_hasPreserveFlag && flagCopy)
  {
    v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"$%@", v16, v10);

    v10 = v37;
  }

  return v10;
}

- (id)quoteStringIfNeeded
{
  v3 = objc_opt_new();
  v7 = v3;
  if (self->_hasPreserveFlag)
  {
    objc_msgSend_appendString_(v3, v4, @"$", v6);
  }

  if (objc_msgSend_length(self->_rawString, v4, v5, v6) && !objc_msgSend_tsce_needsReferenceSingleQuoteEscaping(self->_rawString, v8, v9, v10))
  {
    objc_msgSend_appendString_(v7, v8, self->_rawString, v10);
  }

  else
  {
    v11 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapes(self->_rawString, v8, v9, v10);
    objc_msgSend_appendString_(v7, v12, v11, v13);
  }

  return v7;
}

- (id)description
{
  v3 = &stru_2834BADA0;
  if (self->_hasPreserveFlag)
  {
    v3 = @"$";
  }

  rawString = self->_rawString;
  if (self->_wasQuoted)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@'%@'", v2, v3, rawString);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@%@", v2, v3, rawString);
  }
  v5 = ;

  return v5;
}

@end