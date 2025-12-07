@interface TSTTableDataListItemCache
+ (id)cache;
- (TSTTableDataListItemCache)init;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(unsigned int)key;
@end

@implementation TSTTableDataListItemCache

+ (id)cache
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSTTableDataListItemCache)init
{
  v12.receiver = self;
  v12.super_class = TSTTableDataListItemCache;
  v3 = [(TSTTableDataListItemCache *)&v12 init];
  if (v3)
  {
    v4 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v2, 1282, 514);
    data = v3->_data;
    v3->_data = v4;

    v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7, v8);
    strongRefs = v3->_strongRefs;
    v3->_strongRefs = v9;
  }

  return v3;
}

- (void)setObject:(id)object forKey:(unsigned int)key
{
  if (objc_msgSend_count(self->_data, a2, object, *&key) <= 0x3FF)
  {
    objc_msgSend_setObject_forKey_(self->_data, v7, object, key);
    strongRefs = self->_strongRefs;

    objc_msgSend_addObject_(strongRefs, v8, object, v9);
  }
}

- (void)removeAllObjects
{
  objc_msgSend_removeAllObjects(self->_data, a2, v2, v3);
  strongRefs = self->_strongRefs;

  objc_msgSend_removeAllObjects(strongRefs, v5, v6, v7);
}

@end