@interface TSTTextStyleToFontHeightCache
- (TSTTextStyleToFontHeightCache)init;
- (double)heightForTextStyle:(id)style;
- (void)dealloc;
- (void)removeAllObjects;
- (void)setHeight:(double)height forTextStyle:(id)style;
@end

@implementation TSTTextStyleToFontHeightCache

- (TSTTextStyleToFontHeightCache)init
{
  v15.receiver = self;
  v15.super_class = TSTTextStyleToFontHeightCache;
  v2 = [(TSTTextStyleToFontHeightCache *)&v15 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_rwLock, 0);
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6);
    textStyleReferences = v3->_textStyleReferences;
    v3->_textStyleReferences = v7;

    v12 = objc_msgSend_dictionary(MEMORY[0x277D812B8], v9, v10, v11);
    textStyleToFontHeight = v3->_textStyleToFontHeight;
    v3->_textStyleToFontHeight = v12;
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwLock);
  v3.receiver = self;
  v3.super_class = TSTTextStyleToFontHeightCache;
  [(TSTTextStyleToFontHeightCache *)&v3 dealloc];
}

- (void)setHeight:(double)height forTextStyle:(id)style
{
  pthread_rwlock_wrlock(&self->_rwLock);
  v10 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, v9, height);
  objc_msgSend_setObject_forKeyedSubscript_(self->_textStyleToFontHeight, v11, v10, style);

  objc_msgSend_addObject_(self->_textStyleReferences, v12, style, v13);

  pthread_rwlock_unlock(&self->_rwLock);
}

- (double)heightForTextStyle:(id)style
{
  pthread_rwlock_rdlock(&self->_rwLock);
  v7 = objc_msgSend_objectForKeyedSubscript_(self->_textStyleToFontHeight, v5, style, v6);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_tsu_CGFloatValue(v7, v8, v9, v10);
    v13 = v12;
  }

  else
  {
    v13 = -1.0;
  }

  pthread_rwlock_unlock(&self->_rwLock);

  return v13;
}

- (void)removeAllObjects
{
  pthread_rwlock_wrlock(&self->_rwLock);
  objc_msgSend_removeAllObjects(self->_textStyleReferences, v3, v4, v5);
  objc_msgSend_removeAllObjects(self->_textStyleToFontHeight, v6, v7, v8);

  pthread_rwlock_unlock(&self->_rwLock);
}

@end