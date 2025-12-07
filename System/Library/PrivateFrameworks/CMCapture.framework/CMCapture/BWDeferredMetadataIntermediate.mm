@interface BWDeferredMetadataIntermediate
- (BWDeferredMetadataIntermediate)initWithCoder:(id)coder;
- (BWDeferredMetadataIntermediate)initWithMetadata:(id)metadata tag:(id)tag bufferTag:(id)bufferTag URL:(id)l;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWDeferredMetadataIntermediate

- (BWDeferredMetadataIntermediate)initWithMetadata:(id)metadata tag:(id)tag bufferTag:(id)bufferTag URL:(id)l
{
  if (bufferTag)
  {
    v9.receiver = self;
    v9.super_class = BWDeferredMetadataIntermediate;
    v7 = [(BWDeferredDictionaryIntermediate *)&v9 initWithDictionary:metadata tag:tag URL:l];
    if (v7)
    {
      v7->_bufferTag = bufferTag;
    }
  }

  else
  {
    [(BWDeferredMetadataIntermediate *)self initWithMetadata:a2 tag:metadata bufferTag:tag URL:0, l];
    return 0;
  }

  return v7;
}

- (BWDeferredMetadataIntermediate)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BWDeferredMetadataIntermediate;
  v4 = [(BWDeferredDictionaryIntermediate *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_bufferTag = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bufferTag"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BWDeferredMetadataIntermediate;
  [(BWDeferredDictionaryIntermediate *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_bufferTag forKey:@"bufferTag"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredMetadataIntermediate;
  [(BWDeferredDictionaryIntermediate *)&v3 dealloc];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSDictionary *)[(BWDeferredDictionaryIntermediate *)self dictionary] description];
  if ([(NSString *)v5 length]>= 0x201)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...}", -[NSString substringToIndex:](v5, "substringToIndex:", 512)];
  }

  [string appendFormat:@"<%@ %p>: tag:%@ bufferTag:%@ metadata:%@", objc_opt_class(), self, -[BWDeferredIntermediate tag](self, "tag"), self->_bufferTag, v5];
  objc_autoreleasePoolPop(v4);
  v6 = [string copy];

  return v6;
}

@end