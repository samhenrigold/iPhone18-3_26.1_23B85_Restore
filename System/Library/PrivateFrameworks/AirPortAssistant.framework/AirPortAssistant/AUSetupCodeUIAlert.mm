@interface AUSetupCodeUIAlert
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (void)dealloc;
- (void)formatSetupCodeWithSender:(id)sender;
- (void)prepareToShow;
@end

@implementation AUSetupCodeUIAlert

- (void)dealloc
{
  self->_selectionRange = 0;
  v3.receiver = self;
  v3.super_class = AUSetupCodeUIAlert;
  [(AUUIAlert *)&v3 dealloc];
}

- (void)prepareToShow
{
  v17.receiver = self;
  v17.super_class = AUSetupCodeUIAlert;
  [(AUTextFieldUIAlert *)&v17 prepareToShow];
  self->_selectionRange = 0;
  v6 = objc_msgSend_textField(self, v3, v4, v5);
  objc_msgSend_setKeyboardType_(v6, v7, 4, v8);
  v9 = sub_23EB6CD3C(@"kSetupCodePlaceholder", @"SetupRecommendations");
  objc_msgSend_setPlaceholder_(v6, v10, v9, v11);
  objc_msgSend_setDelegate_(v6, v12, self, v13);
  objc_msgSend_addTarget_action_forControlEvents_(v6, v14, self, sel_formatSetupCodeWithSender_, 0x20000);
  objc_msgSend_enableOKAction_(self, v15, 0, v16);
}

- (void)formatSetupCodeWithSender:(id)sender
{
  v6 = MEMORY[0x277CCAB68];
  v7 = objc_msgSend_text(sender, a2, sender, v3);
  v11 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v8, v9, v10);
  v15 = objc_msgSend_invertedSet(v11, v12, v13, v14);
  v18 = objc_msgSend_componentsSeparatedByCharactersInSet_(v7, v16, v15, v17);
  v21 = objc_msgSend_componentsJoinedByString_(v18, v19, &stru_285145FE8, v20);
  v24 = objc_msgSend_stringWithString_(v6, v22, v21, v23);
  if (objc_msgSend_length(v24, v25, v26, v27) >= 9)
  {
    v31 = MEMORY[0x277CCAB68];
    v32 = objc_msgSend_substringToIndex_(v24, v28, 7, v30);
    v24 = objc_msgSend_stringWithString_(v31, v33, v32, v34);
  }

  v35 = objc_msgSend_length(v24, v28, v29, v30) == 8;
  objc_msgSend_enableOKAction_(self, v36, v35, v37);
  if (objc_msgSend_length(v24, v38, v39, v40) == 3)
  {
    objc_msgSend_appendFormat_(v24, v41, @"-", v43);
  }

  else if (objc_msgSend_length(v24, v41, v42, v43) >= 4)
  {
    objc_msgSend_insertString_atIndex_(v24, v44, @"-", 3);
  }

  if (objc_msgSend_length(v24, v44, v45, v46) == 6)
  {
    objc_msgSend_appendFormat_(v24, v47, @"-", v49);
  }

  else if (objc_msgSend_length(v24, v47, v48, v49) >= 7)
  {
    objc_msgSend_insertString_atIndex_(v24, v50, @"-", 6);
  }

  objc_msgSend_setText_(sender, v50, v24, v51);
  selectionRange = self->_selectionRange;
  if (selectionRange)
  {

    MEMORY[0x2821F9670](sender, sel_setSelectedTextRange_, selectionRange, v52);
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  location = range.location;
  v9 = objc_msgSend_text(field, a2, field, range.location, range.length);

  self->_selectionRange = 0;
  if (objc_msgSend_isEqualToString_(string, v10, &stru_285145FE8, v11))
  {
    v15 = objc_msgSend_selectedTextRange(field, v12, v13, v14);
    v19 = objc_msgSend_start(v15, v16, v17, v18);
    v21 = objc_msgSend_positionFromPosition_offset_(field, v20, v19, -1);
    v25 = objc_msgSend_selectedTextRange(field, v22, v23, v24);
    v29 = objc_msgSend_start(v25, v26, v27, v28);
    v31 = objc_msgSend_positionFromPosition_offset_(field, v30, v29, -1);
    v33 = objc_msgSend_textRangeFromPosition_toPosition_(field, v32, v21, v31);
    self->_selectionRange = objc_msgSend_copy(v33, v34, v35, v36);
    LOBYTE(v37) = 1;
    return v37;
  }

  if (location != objc_msgSend_length(v9, v12, v13, v14))
  {
    v41 = objc_msgSend_substringFromIndex_(v9, v38, location, v40);
    v42 = 1;
    v45 = objc_msgSend_substringToIndex_(v41, v43, 1, v44);
    if (objc_msgSend_isEqualToString_(v45, v46, @"-", v47))
    {
      if (location + 1 == objc_msgSend_length(v9, v38, v39, v40))
      {
        v48 = 0;
LABEL_9:
        self->_selectionRange = v48;
        goto LABEL_10;
      }

      v42 = 2;
    }

    v49 = objc_msgSend_selectedTextRange(field, v38, v39, v40);
    v53 = objc_msgSend_start(v49, v50, v51, v52);
    v55 = objc_msgSend_positionFromPosition_offset_(field, v54, v53, v42);
    v59 = objc_msgSend_selectedTextRange(field, v56, v57, v58);
    v63 = objc_msgSend_end(v59, v60, v61, v62);
    v65 = objc_msgSend_positionFromPosition_offset_(field, v64, v63, v42);
    v67 = objc_msgSend_textRangeFromPosition_toPosition_(field, v66, v55, v65);
    v48 = objc_msgSend_copy(v67, v68, v69, v70);
    goto LABEL_9;
  }

LABEL_10:
  v71 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v38, v39, v40);
  v75 = objc_msgSend_invertedSet(v71, v72, v73, v74);
  v78 = objc_msgSend_componentsSeparatedByCharactersInSet_(v9, v76, v75, v77);
  v81 = objc_msgSend_componentsJoinedByString_(v78, v79, &stru_285145FE8, v80);
  v85 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v82, v83, v84);
  v89 = objc_msgSend_invertedSet(v85, v86, v87, v88);
  v92 = objc_msgSend_componentsSeparatedByCharactersInSet_(string, v90, v89, v91);
  v95 = objc_msgSend_componentsJoinedByString_(v92, v93, &stru_285145FE8, v94);
  v37 = objc_msgSend_length(v95, v96, v97, v98);
  if (v37)
  {
    v102 = objc_msgSend_length(v81, v99, v100, v101);
    LOBYTE(v37) = (objc_msgSend_length(v95, v103, v104, v105) + v102) < 9;
  }

  return v37;
}

@end