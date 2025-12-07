@interface TSTWPRep
- (id)tableLayout;
- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
@end

@implementation TSTWPRep

- (id)tableLayout
{
  objc_opt_class();
  v6 = objc_msgSend_layout(self, v3, v4, v5);
  v10 = objc_msgSend_parent(v6, v7, v8, v9);
  v11 = TSUCheckedDynamicCast();

  return v11;
}

- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  v10 = objc_msgSend_layout(self, v7, v8, v9);
  v14 = objc_msgSend_tableLayout(self, v11, v12, v13);
  CGContextSaveGState(context);
  objc_msgSend_maskRect(v10, v15, v16, v17);
  v21 = objc_msgSend_cachedCellID(v10, v18, v19, v20);
  v22 = 0x100000001;
  v26 = objc_msgSend_cachedMergeRange(v10, v23, v24, v25);
  if (v26 != 0x7FFFFFFF && (v26 & 0xFFFF00000000) != 0x7FFF00000000 && v27 >> 32 && v27)
  {
    v30 = objc_msgSend_cachedMergeRange(v10, v27, v28, v29);
    v21 = objc_msgSend_extendedPartitionRangeSingleSpaceIntersectionWithCellRange_(v14, v31, v30, v31);
    v22 = v32;
  }

  sub_2211BF2D0(v14, v21, v22);
  if (v21 == objc_msgSend_cachedCellID(v10, v33, v34, v35))
  {
    TSUAddPoints();
  }

  CGContextClipToRectSafe();
  v36.receiver = self;
  v36.super_class = TSTWPRep;
  [(TSDRep *)&v36 recursivelyDrawInContext:context keepingChildrenPassingTest:testCopy];

  CGContextRestoreGState(context);
}

@end