@interface PXGTungstenRecordingFrameState
- (PXGTungstenRecordingFrameState)init;
@end

@implementation PXGTungstenRecordingFrameState

- (PXGTungstenRecordingFrameState)init
{
  v6.receiver = self;
  v6.super_class = PXGTungstenRecordingFrameState;
  v2 = [(PXGTungstenRecordingFrameState *)&v6 init];
  if (v2)
  {
    v3 = objc_msgSend_indexSet(MEMORY[0x277CCAB58]);
    spriteIndexes = v2->_spriteIndexes;
    v2->_spriteIndexes = v3;
  }

  return v2;
}

@end