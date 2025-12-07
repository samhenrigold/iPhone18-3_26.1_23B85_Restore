@interface TSTFindReplace
+ (void)searchInfo:(id)info forString:(id)string options:(unint64_t)options hitBlock:(id)block;
+ (void)searchLayout:(id)layout forAnnotationsWithHitBlock:(id)block;
+ (void)searchLayout:(id)layout forString:(id)string options:(unint64_t)options hitBlock:(id)block;
@end

@implementation TSTFindReplace

+ (void)searchInfo:(id)info forString:(id)string options:(unint64_t)options hitBlock:(id)block
{
  v11 = -[TSTCellIterator initWithTableModel:]([TSTCellIterator alloc], "initWithTableModel:", [info tableModel]);
  if ([(TSTCellIterator *)v11 getNext:v20])
  {
    do
    {
      if (!v22 || v22->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType != 267 && *(&v22->mPrivate + 1) << 8 != 2304)
      {
        v13 = NSStringFromNativeTSTCell(v22, v12);
        if (v13)
        {
          v14 = v13;
          tsu_range = 0;
          v19 = 0;
          tsu_range = [(__CFString *)v13 tsu_range];
          v19 = v15;
          while (v19)
          {
            v16 = [(__CFString *)v14 rangeOfString:string searchOptions:options updatingSearchRange:&tsu_range];
            if (v16 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v6 = v6 & 0xFFFFFFFF00000000 | v21;
              (*(block + 2))(block, [TSTSearchReference searchReferenceWithTableInfo:info cellID:v6 range:v16, v17]);
            }
          }
        }
      }
    }

    while ([(TSTCellIterator *)v11 getNext:v20]);
  }
}

+ (void)searchLayout:(id)layout forString:(id)string options:(unint64_t)options hitBlock:(id)block
{
  tableInfo = [layout tableInfo];
  v11 = [[TSTLayoutCellIterator alloc] initWithLayout:layout range:TSTLayoutGetPartitionRange(layout) flags:337];
  while ([(TSTCellIterator *)v11 getNext:v23])
  {
    if (v25)
    {
      p_mCurrentCellFormat = &v25->mPrivate.mCellFormats.mCurrentCellFormat;
    }

    else
    {
      p_mCurrentCellFormat = &TSUInvalidFormat;
    }

    if (p_mCurrentCellFormat->mFormatType != 267)
    {
      v14 = NSStringFromNativeTSTCell(v25, v12);
      if (v14)
      {
        v15 = v14;
        tsu_range = 0;
        v22 = 0;
        tsu_range = [(__CFString *)v14 tsu_range];
        v22 = v16;
        while (v22)
        {
          v17 = [(__CFString *)v15 rangeOfString:string searchOptions:options updatingSearchRange:&tsu_range];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v6 = v6 & 0xFFFFFFFF00000000 | v24;
            v19 = [TSTSearchReference searchReferenceWithTableInfo:tableInfo cellID:v6 range:v17, v18];
            [layout calculatePointFromSearchReference:v19];
            [(TSTSearchReference *)v19 setSearchReferencePoint:?];
            (*(block + 2))(block, v19);
          }
        }
      }
    }
  }
}

+ (void)searchLayout:(id)layout forAnnotationsWithHitBlock:(id)block
{
  tableInfo = [layout tableInfo];

  [self p_searchInfo:tableInfo layout:layout forAnnotationsWithHitBlock:block];
}

@end