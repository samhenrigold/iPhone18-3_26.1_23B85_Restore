@interface BWMattingV2InferenceConfiguration
+ (unsigned)mattingOutputTypeForAttachedMediaKey:(id)key;
- (void)dealloc;
@end

@implementation BWMattingV2InferenceConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMattingV2InferenceConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

+ (unsigned)mattingOutputTypeForAttachedMediaKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, 0x1F21AABD0))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 8;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 16;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 32;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 64;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 512;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 1024;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 4096;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 0x2000;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 128;
  }

  return 0;
}

@end