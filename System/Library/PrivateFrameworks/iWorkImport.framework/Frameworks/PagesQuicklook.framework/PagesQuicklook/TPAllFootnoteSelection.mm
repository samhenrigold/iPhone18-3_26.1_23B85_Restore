@interface TPAllFootnoteSelection
- (BOOL)isEqual:(id)equal;
@end

@implementation TPAllFootnoteSelection

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(equalCopy, v5, v9, v10, v11, v12, v4, v6, v7, v8);

  return isMemberOfClass;
}

@end