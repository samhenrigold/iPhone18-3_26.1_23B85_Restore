@interface _PFIndexCacheOffset
- (id)description;
@end

@implementation _PFIndexCacheOffset

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->_range.location, self->_range.length, self->_offset);
  objc_autoreleasePoolPop(v3);

  return v4;
}

@end