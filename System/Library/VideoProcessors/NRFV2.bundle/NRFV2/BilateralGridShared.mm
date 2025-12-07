@interface BilateralGridShared
+ (id)getSharedInstanceOrRelease:(BOOL)release;
- (id)getShaders:(id)shaders normalizeGridConfidence:(BOOL)confidence;
@end

@implementation BilateralGridShared

- (id)getShaders:(id)shaders normalizeGridConfidence:(BOOL)confidence
{
  confidenceCopy = confidence;
  shadersCopy = shaders;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  shadersCopy2 = shaders;
  if (!shadersCopy2)
  {
    v10 = [BilateralGridShaders alloc];
    shadersCopy2 = objc_msgSend_initWithMetal_normalizeGridConfidence_(v10, v11, shadersCopy, confidenceCopy);
    if (shadersCopy2)
    {
      objc_storeStrong(p_shaders, shadersCopy2);
    }

    else
    {
      sub_29587942C();
    }
  }

  return shadersCopy2;
}

+ (id)getSharedInstanceOrRelease:(BOOL)release
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2260;
  if (release)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C2260)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(BilateralGridShared);
    v5 = qword_2A18C2260;
  }

  qword_2A18C2260 = v6;

LABEL_6:
  v7 = qword_2A18C2260;
  objc_sync_exit(v4);

  return v7;
}

@end