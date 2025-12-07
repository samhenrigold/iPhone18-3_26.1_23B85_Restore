@interface _UICollectionLayoutFramesQueryResultElementIndexKey
- (BOOL)isEqual:(id)equal;
@end

@implementation _UICollectionLayoutFramesQueryResultElementIndexKey

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (equal && self->_index == *(equal + 2))
  {
    return objc_msgSend_isEqualToString_(self->_element, a2, *(equal + 1));
  }

  return 0;
}

@end