@interface TSTConcurrentStylesheet
- (TSTConcurrentStylesheet)initWithStylesheet:(id)stylesheet;
- (id)repairOrReplaceErrantStyle:(id)style;
- (id)variationOfStyle:(id)style propertyMap:(id)map;
@end

@implementation TSTConcurrentStylesheet

- (TSTConcurrentStylesheet)initWithStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v15.receiver = self;
  v15.super_class = TSTConcurrentStylesheet;
  v6 = [(TSTConcurrentStylesheet *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stylesheet, stylesheet);
    v7->_repairOrReplaceLock._os_unfair_lock_opaque = 0;
    v9 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v8, 512, 512);
    repairOrReplaceMap = v7->_repairOrReplaceMap;
    v7->_repairOrReplaceMap = v9;

    v7->_variationLock._os_unfair_lock_opaque = 0;
    v12 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v11, 0, 512);
    variationMap = v7->_variationMap;
    v7->_variationMap = v12;

    __dmb(0xBu);
  }

  return v7;
}

- (id)repairOrReplaceErrantStyle:(id)style
{
  styleCopy = style;
  os_unfair_lock_lock(&self->_repairOrReplaceLock);
  v9 = objc_msgSend_objectForKey_(self->_repairOrReplaceMap, v5, styleCopy, v6);
  if (!v9)
  {
    v9 = objc_msgSend_repairOrReplaceErrantStyle_(self->_stylesheet, v7, styleCopy, v8);
    objc_msgSend_setObject_forKey_(self->_repairOrReplaceMap, v10, v9, styleCopy);
  }

  os_unfair_lock_unlock(&self->_repairOrReplaceLock);

  return v9;
}

- (id)variationOfStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  v8 = [TSTConcurrentStylesheetKey alloc];
  v10 = objc_msgSend_initWithStyle_andPropertyMap_(v8, v9, styleCopy, mapCopy);
  stylesheet = self->_stylesheet;
  v15 = objc_msgSend_stylesheet(styleCopy, v12, v13, v14);

  if (stylesheet != v15)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentStylesheet variationOfStyle:propertyMap:]", v17);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentStylesheet.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 130, 0, "stylesheet used should be same as the one owning the style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  os_unfair_lock_lock(&self->_variationLock);
  v30 = objc_msgSend_objectForKey_(self->_variationMap, v27, v10, v28);
  if (!v30)
  {
    v30 = objc_msgSend_variationOfStyle_propertyMap_(self->_stylesheet, v29, styleCopy, mapCopy);
    objc_msgSend_setObject_forKey_(self->_variationMap, v31, v30, v10);
  }

  os_unfair_lock_unlock(&self->_variationLock);

  return v30;
}

@end