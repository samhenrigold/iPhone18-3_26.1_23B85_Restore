@interface TSTFilteredTableDynamicContentDelegate
- (BOOL)cell:(id *)cell forCellID:(id)d;
- (TSTFilteredTableDynamicContentDelegate)initWithTableModel:(id)model;
- (void)dealloc;
@end

@implementation TSTFilteredTableDynamicContentDelegate

- (TSTFilteredTableDynamicContentDelegate)initWithTableModel:(id)model
{
  v6.receiver = self;
  v6.super_class = TSTFilteredTableDynamicContentDelegate;
  v4 = [(TSTFilteredTableDynamicContentDelegate *)&v6 init];
  if (v4)
  {
    v4->mTableModel = model;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTFilteredTableDynamicContentDelegate;
  [(TSTFilteredTableDynamicContentDelegate *)&v3 dealloc];
}

- (BOOL)cell:(id *)cell forCellID:(id)d
{
  v6 = objc_alloc_init(TSTCell);
  *cell = v6;
  v8 = [TSTBundle(v6 v7)];
  if (!v6 || (mPrivate = v6->mPrivate, (mPrivate & 0xFF00) == 0))
  {
    TSTCellClearValue(v6);
    *(&v6->mPrivate + 1) = 3;
    mPrivate = v6->mPrivate;
  }

  if ((mPrivate & 0xFF00) == 0x300)
  {
    mString = v6->mPrivate.mValue.mString.mString;
    if (mString != v8)
    {

      v6->mPrivate.mValue.mString.mString = v8;
      v11 = HIWORD(*&v6->mPrivate);
      v12 = -[NSString rangeOfCharacterFromSet:](v8, "rangeOfCharacterFromSet:", [MEMORY[0x277CCA900] newlineCharacterSet]);
      v13 = v11 | 1;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v11 & 0xFFFE;
      }

      *(&v6->mPrivate + 1) = v13;
      v6->mPrivate.mValue.mString.mID = 0;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetStringValueClearingID(TSTCell *, NSString *, BOOL)"}];
    [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1003, @"can't set string on non-string cell: %p", v6}];
  }

  v16 = *cell;
  headerRowCellStyle = [(TSTTableModel *)self->mTableModel headerRowCellStyle];
  v18 = v16[5];
  if (v18 != headerRowCellStyle)
  {
    v19 = headerRowCellStyle;

    v16[5] = v19;
    *(v16 + 8) = 0;
  }

  v20 = *cell;
  headerRowTextStyle = [(TSTTableModel *)self->mTableModel headerRowTextStyle];
  v22 = v20[7];
  if (v22 != headerRowTextStyle)
  {
    v23 = headerRowTextStyle;

    v20[7] = v23;
    *(v20 + 12) = 0;
  }

  return 1;
}

@end