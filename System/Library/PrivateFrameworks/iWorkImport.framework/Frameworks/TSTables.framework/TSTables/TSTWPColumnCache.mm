@interface TSTWPColumnCache
- (void)invalidateObjectsWithKeysInCellRange:(TSUCellRect)range;
- (void)invalidateObjectsWithKeysInCellRegion:(id)region;
@end

@implementation TSTWPColumnCache

- (void)invalidateObjectsWithKeysInCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22168A570;
  v10[3] = &unk_2784680F8;
  v12 = origin;
  v13 = size;
  v11 = v6;
  v7 = v6;
  objc_msgSend_performSyncWriteWithUnderlyingDictionary_(self, v8, v10, v9);
}

- (void)invalidateObjectsWithKeysInCellRegion:(id)region
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22168A7A4;
  v4[3] = &unk_278468120;
  v4[4] = self;
  objc_msgSend_enumerateCellRangesUsingBlock_(region, a2, v4, v3);
}

@end