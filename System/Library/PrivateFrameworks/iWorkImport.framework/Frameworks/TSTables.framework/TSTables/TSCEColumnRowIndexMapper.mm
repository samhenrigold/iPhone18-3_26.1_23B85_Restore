@interface TSCEColumnRowIndexMapper
- (TSCEColumnRowIndexMapper)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initAsCompressionMapForIndexes:(id)indexes;
- (unsigned)mappedIndexForSourceIndex:(unsigned int)index;
@end

@implementation TSCEColumnRowIndexMapper

- (TSCEColumnRowIndexMapper)init
{
  v3.receiver = self;
  v3.super_class = TSCEColumnRowIndexMapper;
  return [(TSCEColumnRowIndexMapper *)&v3 init];
}

- (id)initAsCompressionMapForIndexes:(id)indexes
{
  indexesCopy = indexes;
  v15.receiver = self;
  v15.super_class = TSCEColumnRowIndexMapper;
  v5 = [(TSCEColumnRowIndexMapper *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22130CF08;
    v10[3] = &unk_278462D78;
    v12 = v13;
    v11 = v5;
    objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v7, v10, v8);

    _Block_object_dispose(v13, 8);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4;
  if (v4 != self)
  {
    v4->_indexMap.__table_.__max_load_factor_ = self->_indexMap.__table_.__max_load_factor_;
    sub_2211DBE28(&v4->_indexMap.__table_.__bucket_list_.__ptr_, self->_indexMap.__table_.__first_node_.__next_, 0);
  }

  return v5;
}

- (unsigned)mappedIndexForSourceIndex:(unsigned int)index
{
  indexCopy = index;
  v3 = sub_2211DC534(&self->_indexMap.__table_.__bucket_list_.__ptr_, &indexCopy);
  v4 = v3 + 5;
  if (!v3)
  {
    v4 = &indexCopy;
  }

  return *v4;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end