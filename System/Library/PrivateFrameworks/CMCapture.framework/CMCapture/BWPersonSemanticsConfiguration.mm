@interface BWPersonSemanticsConfiguration
+ (unsigned)personSemanticForAttachedMediaKey:(id)key;
- (id)description;
@end

@implementation BWPersonSemanticsConfiguration

- (id)description
{
  v3.receiver = self;
  v3.super_class = BWPersonSemanticsConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p> enabledSemantics:%u appliesFinalCropRect:%d portraitOrientationSupportEnabled:%d", -[BWInferenceConfiguration description](&v3, sel_description), self, self->_enabledSemantics, self->_appliesFinalCropRect, self->_portraitOrientationSupportEnabled];
}

+ (unsigned)personSemanticForAttachedMediaKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, 0x1F219E750))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 2;
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
    return 1024;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 256;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 512;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 2048;
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    return 4096;
  }

  if ([key hasPrefix:0x1F219E970])
  {
    return 128;
  }

  return 0;
}

@end