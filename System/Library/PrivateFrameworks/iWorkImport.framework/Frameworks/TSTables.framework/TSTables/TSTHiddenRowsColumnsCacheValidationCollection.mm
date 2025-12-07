@interface TSTHiddenRowsColumnsCacheValidationCollection
- (TSTHiddenRowsColumnsCacheValidationCollection)init;
@end

@implementation TSTHiddenRowsColumnsCacheValidationCollection

- (TSTHiddenRowsColumnsCacheValidationCollection)init
{
  v24.receiver = self;
  v24.super_class = TSTHiddenRowsColumnsCacheValidationCollection;
  v5 = [(TSTHiddenRowsColumnsCacheValidationCollection *)&v24 init];
  if (v5)
  {
    v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v2, v3, v4);
    visible = v5->_visible;
    v5->_visible = v6;

    v11 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v10);
    hidden = v5->_hidden;
    v5->_hidden = v11;

    v16 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v13, v14, v15);
    userVisible = v5->_userVisible;
    v5->_userVisible = v16;

    v21 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v18, v19, v20);
    userHidden = v5->_userHidden;
    v5->_userHidden = v21;
  }

  return v5;
}

@end