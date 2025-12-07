@interface TSWPShapeRepStageChunk
- (id)description;
- (void)dealloc;
@end

@implementation TSWPShapeRepStageChunk

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPShapeRepStageChunk;
  [(TSWPShapeRepStageChunk *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = TSWPShapeRepStageChunk;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: stage %d, ranges:%@", -[TSWPShapeRepStageChunk description](&v3, sel_description), self->_stageIndex, self->_storageRanges];
}

@end