@interface TSWPShapeRepMagicMoveTextChunk
- (TSWPShapeRepMagicMoveTextChunk)init;
- (_NSRange)range;
- (id)description;
- (void)dealloc;
@end

@implementation TSWPShapeRepMagicMoveTextChunk

- (TSWPShapeRepMagicMoveTextChunk)init
{
  v3.receiver = self;
  v3.super_class = TSWPShapeRepMagicMoveTextChunk;
  result = [(TSWPShapeRepMagicMoveTextChunk *)&v3 init];
  if (result)
  {
    result->_isVisible = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPShapeRepMagicMoveTextChunk;
  [(TSWPShapeRepMagicMoveTextChunk *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = TSWPShapeRepMagicMoveTextChunk;
  v4 = [(TSWPShapeRepMagicMoveTextChunk *)&v6 description];
  return [v3 stringWithFormat:@"%@: %@ {rep:%@, range:%@, hasListLabel:%d, stage:%d}", v4, self->_stringValue, self->_rep, NSStringFromRange(self->_range), self->_hasListLabel, self->_stageIndex];
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end