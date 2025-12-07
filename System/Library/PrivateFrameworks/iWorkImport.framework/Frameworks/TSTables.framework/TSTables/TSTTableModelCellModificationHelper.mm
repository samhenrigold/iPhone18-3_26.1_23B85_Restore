@interface TSTTableModelCellModificationHelper
+ (id)perChunkHelperWithSourceRect:(TSUCellRect)rect columnRowUIDMap:(id)map;
- (TSTTableModelCellModificationHelper)initWithSourceRect:(TSUCellRect)rect columnRowUIDMap:(id)map;
- (TSUCellRect)sourceRect;
- (void)prepareToAddCells;
@end

@implementation TSTTableModelCellModificationHelper

- (TSTTableModelCellModificationHelper)initWithSourceRect:(TSUCellRect)rect columnRowUIDMap:(id)map
{
  size = rect.size;
  origin = rect.origin;
  mapCopy = map;
  v12.receiver = self;
  v12.super_class = TSTTableModelCellModificationHelper;
  v9 = [(TSTTableModelCellModificationHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_sourceRect.origin = origin;
    v9->_sourceRect.size = size;
    objc_storeStrong(&v9->_columnRowUIDMap, map);
    v10->_emptyCellCount = 0;
  }

  return v10;
}

+ (id)perChunkHelperWithSourceRect:(TSUCellRect)rect columnRowUIDMap:(id)map
{
  size = rect.size;
  origin = rect.origin;
  mapCopy = map;
  v7 = [TSTTableModelCellModificationHelper alloc];
  v9 = objc_msgSend_initWithSourceRect_columnRowUIDMap_(v7, v8, origin, size, mapCopy);

  return v9;
}

- (void)prepareToAddCells
{
  if (!self->_sparseCellList)
  {
    v5 = objc_msgSend_columnRowUIDMap(self, a2, v2, v3);
    v7 = v5;
    if (v5)
    {
      objc_msgSend_cellUIDRangeForCellRange_(v5, v6, *&self->_sourceRect.origin, *&self->_sourceRect.size);
    }

    else
    {
      *v19 = 0u;
      v20 = 0u;
      *v18 = 0u;
    }

    v8 = [TSTConcurrentSparseCellList alloc];
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_221086EBC(&v12, v18[0], v18[1], (v18[1] - v18[0]) >> 4);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_221086EBC(&__p, v19[1], v20, (v20 - v19[1]) >> 4);
    v10 = objc_msgSend_initWithContext_cellUIDRange_(v8, v9, 0, &v12);
    sparseCellList = self->_sparseCellList;
    self->_sparseCellList = v10;

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (v19[1])
    {
      *&v20 = v19[1];
      operator delete(v19[1]);
    }

    if (v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }
  }
}

- (TSUCellRect)sourceRect
{
  size = self->_sourceRect.size;
  origin = self->_sourceRect.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

@end