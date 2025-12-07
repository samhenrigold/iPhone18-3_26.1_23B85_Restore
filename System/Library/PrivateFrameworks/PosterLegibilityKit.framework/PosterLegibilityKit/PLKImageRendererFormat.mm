@interface PLKImageRendererFormat
+ (id)formatForContextType:(int64_t)type;
+ (id)formatForContextType:(int64_t)type scale:(double)scale;
+ (id)formatForContextType:(int64_t)type scale:(double)scale memoryPool:(id)pool;
+ (id)sharedFormatForLegibilityWithMaximumSize:(CGSize)size scale:(double)scale contentType:(int64_t)type legibilityDescriptor:(id)descriptor;
- (PLKImageRendererFormat)initWithScale:(double)scale contextType:(int64_t)type memoryPool:(id)pool;
- (void)dealloc;
@end

@implementation PLKImageRendererFormat

- (void)dealloc
{
  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    CGColorSpaceRelease(colorSpace);
    self->_colorSpace = 0;
  }

  v4.receiver = self;
  v4.super_class = PLKImageRendererFormat;
  [(UIGraphicsImageRendererFormat *)&v4 dealloc];
}

+ (id)formatForContextType:(int64_t)type
{
  v3 = [self alloc];
  PLKDefaultScreenScale(v3, v4);
  v5 = [v3 initWithScale:? contextType:? memoryPool:?];

  return v5;
}

+ (id)formatForContextType:(int64_t)type scale:(double)scale
{
  v4 = [[self alloc] initWithScale:? contextType:? memoryPool:?];

  return v4;
}

+ (id)formatForContextType:(int64_t)type scale:(double)scale memoryPool:(id)pool
{
  poolCopy = pool;
  v7 = [[self alloc] initWithScale:? contextType:? memoryPool:?];

  return v7;
}

- (PLKImageRendererFormat)initWithScale:(double)scale contextType:(int64_t)type memoryPool:(id)pool
{
  poolCopy = pool;
  v12.receiver = self;
  v12.super_class = PLKImageRendererFormat;
  v9 = [(UIGraphicsImageRendererFormat *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(UIGraphicsImageRendererFormat *)v9 setScale:?];
    v10->_contextType = type;
    objc_storeStrong(&v10->_memoryPool, pool);
    if (type <= 1)
    {
      v10->_colorSpace = CGColorSpaceCreateDeviceRGB();
    }
  }

  return v10;
}

+ (id)sharedFormatForLegibilityWithMaximumSize:(CGSize)size scale:(double)scale contentType:(int64_t)type legibilityDescriptor:(id)descriptor
{
  background = [descriptor background];
  [background sizeForContentSize:?];

  v8 = [MEMORY[0x277CEC5B0] plk_sharedMemoryPoolForMaxSize:? scale:? contextType:?];
  v9 = [self formatForContextType:? scale:? memoryPool:?];

  return v9;
}

@end