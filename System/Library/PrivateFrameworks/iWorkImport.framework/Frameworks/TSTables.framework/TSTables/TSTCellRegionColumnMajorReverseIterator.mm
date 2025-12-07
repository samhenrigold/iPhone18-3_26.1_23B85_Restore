@interface TSTCellRegionColumnMajorReverseIterator
- (TSTCellRegionColumnMajorReverseIterator)initWithCellRegion:(id)region;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d;
- (TSUCellCoord)getNext;
@end

@implementation TSTCellRegionColumnMajorReverseIterator

- (TSTCellRegionColumnMajorReverseIterator)initWithCellRegion:(id)region
{
  regionCopy = region;
  v13.receiver = self;
  v13.super_class = TSTCellRegionColumnMajorReverseIterator;
  v5 = [(TSTCellRegionColumnMajorReverseIterator *)&v13 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_fillCellRangeColMajorSet_topToBottom_(regionCopy, v6, &v5->super.mCellRangeSet, 0);
    v7->super.mBoundingCellRange.origin = objc_msgSend_boundingCellRange(regionCopy, v8, v9, v10);
    v7->super.mBoundingCellRange.size = v11;
    v7->super.mCellID = *(v7->super.mCellRangeSet.__tree_.__begin_node_ + 28);
  }

  return v7;
}

- (TSUCellCoord)getNext
{
  v6.receiver = self;
  v6.super_class = TSTCellRegionColumnMajorReverseIterator;
  getNext = [(TSTCellRegionColMajorIterator *)&v6 getNext];
  if ((*&getNext & 0xFFFF00000000) == 0x7FFF00000000 || getNext.row == 0x7FFFFFFF)
  {
    row = getNext.row;
  }

  else
  {
    row = 999999 - getNext.row;
  }

  return (*&getNext & 0xFFFFFFFF00000000 | row);
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d
{
  v5.receiver = self;
  v5.super_class = TSTCellRegionColumnMajorReverseIterator;
  0xFFFFFFFF00000000 = [(TSTCellRegionColMajorIterator *)&v5 advanceToCellID:(999999 - d.row) | *&d & 0xFFFFFFFF00000000];
  return ((999999 - 0xFFFFFFFF00000000.row) | *&0xFFFFFFFF00000000 & 0xFFFFFFFF00000000);
}

@end