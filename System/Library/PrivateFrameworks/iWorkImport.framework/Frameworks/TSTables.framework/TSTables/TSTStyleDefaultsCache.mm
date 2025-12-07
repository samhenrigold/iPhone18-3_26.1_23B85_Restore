@interface TSTStyleDefaultsCache
+ (id)cacheWithTableInfo:(id)info;
- (TSTStyleDefaultsCache)initWithTableInfo:(id)info;
- (id)cellStyleHandleForKey:(unint64_t)key;
- (id)textStyleHandleForKey:(unint64_t)key;
@end

@implementation TSTStyleDefaultsCache

+ (id)cacheWithTableInfo:(id)info
{
  v4 = [self alloc];
  v7 = objc_msgSend_initWithTableInfo_(v4, v5, info, v6);

  return v7;
}

- (TSTStyleDefaultsCache)initWithTableInfo:(id)info
{
  v11.receiver = self;
  v11.super_class = TSTStyleDefaultsCache;
  v4 = [(TSTStyleDefaultsCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_tableInfo = info;
    v6 = objc_alloc_init(MEMORY[0x277D81210]);
    cellStyleHandles = v5->_cellStyleHandles;
    v5->_cellStyleHandles = v6;

    v8 = objc_alloc_init(MEMORY[0x277D81210]);
    textStyleHandles = v5->_textStyleHandles;
    v5->_textStyleHandles = v8;
  }

  return v5;
}

- (id)cellStyleHandleForKey:(unint64_t)key
{
  v9 = objc_msgSend_objectForKey_(self->_cellStyleHandles, a2, key, v3);
  if (!v9)
  {
    v10 = objc_msgSend_baseTableModel(self->_tableInfo, v6, v7, v8);
    v22 = 0;
    v23 = 0;
    objc_msgSend_defaultStylesForTableStyleArea_outCellStyle_outTextStyle_(v10, v11, key, &v23, &v22);
    v12 = v23;
    v13 = v22;

    v9 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v14, v12, v15);
    v18 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v16, v13, v17);
    objc_msgSend_setObject_forKey_(self->_cellStyleHandles, v19, v9, key);
    objc_msgSend_setObject_forKey_(self->_textStyleHandles, v20, v18, key);
  }

  return v9;
}

- (id)textStyleHandleForKey:(unint64_t)key
{
  v9 = objc_msgSend_objectForKey_(self->_textStyleHandles, a2, key, v3);
  if (!v9)
  {
    v10 = objc_msgSend_baseTableModel(self->_tableInfo, v6, v7, v8);
    v22 = 0;
    v23 = 0;
    objc_msgSend_defaultStylesForTableStyleArea_outCellStyle_outTextStyle_(v10, v11, key, &v23, &v22);
    v12 = v23;
    v13 = v22;

    v16 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v14, v12, v15);
    v9 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v17, v13, v18);
    objc_msgSend_setObject_forKey_(self->_cellStyleHandles, v19, v16, key);
    objc_msgSend_setObject_forKey_(self->_textStyleHandles, v20, v9, key);
  }

  return v9;
}

@end