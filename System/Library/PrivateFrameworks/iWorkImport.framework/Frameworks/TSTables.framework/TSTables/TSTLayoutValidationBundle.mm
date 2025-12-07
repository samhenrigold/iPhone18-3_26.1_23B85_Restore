@interface TSTLayoutValidationBundle
- (TSTLayoutValidationBundle)initWithTableInfo:(id)info;
- (double)widthOfColumn:(unsigned __int16)column handleCacheMissUsingBlock:(id)block;
- (id).cxx_construct;
- (id)generateWidthHeightCollection;
- (void)cacheWidth:(double)width ofColumn:(unsigned __int16)column;
@end

@implementation TSTLayoutValidationBundle

- (TSTLayoutValidationBundle)initWithTableInfo:(id)info
{
  v10.receiver = self;
  v10.super_class = TSTLayoutValidationBundle;
  v6 = [(TSTLayoutValidationBundle *)&v10 init];
  if (v6)
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4, v5);
    widthHeightCollections = v6->_widthHeightCollections;
    v6->_widthHeightCollections = v7;

    v6->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v6;
}

- (void)cacheWidth:(double)width ofColumn:(unsigned __int16)column
{
  columnCopy = column;
  v5 = &columnCopy;
  *(sub_2210C30DC(&self->_columnToWidth.__table_.__bucket_list_.__ptr_, &columnCopy, &unk_2217E14B0, &v5) + 3) = width;
}

- (double)widthOfColumn:(unsigned __int16)column handleCacheMissUsingBlock:(id)block
{
  columnCopy = column;
  blockCopy = block;
  v6 = sub_2210C3024(&self->_columnToWidth.__table_.__bucket_list_.__ptr_, &columnCopy);
  if (v6)
  {
    v7 = *(v6 + 3);
  }

  else
  {
    v7 = blockCopy[2](blockCopy);
  }

  return v7;
}

- (id)generateWidthHeightCollection
{
  v3 = objc_alloc_init(TSTWidthHeightCollection);
  os_unfair_lock_lock(&self->_lock);
  objc_msgSend_addObject_(self->_widthHeightCollections, v4, v3, v5);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end