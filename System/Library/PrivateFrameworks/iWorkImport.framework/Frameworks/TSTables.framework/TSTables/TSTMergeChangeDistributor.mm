@interface TSTMergeChangeDistributor
- (void)didMergeRange:(TSUModelCellRect)range;
- (void)didUnmergeRange:(TSUModelCellRect)range;
@end

@implementation TSTMergeChangeDistributor

- (void)didMergeRange:(TSUModelCellRect)range
{
  size = range.var0.size;
  origin = range.var0.origin;
  if (objc_msgSend_hasReceivers(self, a2, *&range.var0.origin, *&range.var0.size))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2211F0DA4;
    v8[3] = &unk_278461380;
    v8[4] = origin;
    v8[5] = size;
    objc_msgSend_distributeBlock_(self, v6, v8, v7);
  }
}

- (void)didUnmergeRange:(TSUModelCellRect)range
{
  size = range.var0.size;
  origin = range.var0.origin;
  if (objc_msgSend_hasReceivers(self, a2, *&range.var0.origin, *&range.var0.size))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2211F0E44;
    v8[3] = &unk_278461380;
    v8[4] = origin;
    v8[5] = size;
    objc_msgSend_distributeBlock_(self, v6, v8, v7);
  }
}

@end