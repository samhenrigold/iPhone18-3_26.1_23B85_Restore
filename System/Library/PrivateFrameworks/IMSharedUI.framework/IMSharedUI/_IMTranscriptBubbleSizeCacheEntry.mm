@interface _IMTranscriptBubbleSizeCacheEntry
- (CGSize)size;
- (_IMTranscriptBubbleSizeCacheEntry)initWithSize:(CGSize)size maximumWidth:(double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _IMTranscriptBubbleSizeCacheEntry

- (_IMTranscriptBubbleSizeCacheEntry)initWithSize:(CGSize)size maximumWidth:(double)width
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = _IMTranscriptBubbleSizeCacheEntry;
  result = [(_IMTranscriptBubbleSizeCacheEntry *)&v8 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_maximumWidth = width;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_IMTranscriptBubbleSizeCacheEntry alloc];
  maximumWidth = self->_maximumWidth;
  v8.n128_u64[0] = *&self->_size.width;
  height = self->_size.height;

  return objc_msgSend_initWithSize_maximumWidth_(v4, v5, v6, v8, v7, height, maximumWidth);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_minimumWidth(self, v6, v7, v9, v8);
  v11 = v10.n128_u64[0];
  objc_msgSend_maximumWidth(self, v12, v13, v10, v14);
  v16 = v15.n128_u64[0];
  objc_msgSend_size(self, v17, v18, v15, v19);
  v24 = objc_msgSend_stringWithFormat_(v3, v20, @"<%@ (%p)> MINWIDTH: %f, MAXWIDTH: %f, HEIGHT: %f", v22, v21, v5, self, v11, v16, v23);

  return v24;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end