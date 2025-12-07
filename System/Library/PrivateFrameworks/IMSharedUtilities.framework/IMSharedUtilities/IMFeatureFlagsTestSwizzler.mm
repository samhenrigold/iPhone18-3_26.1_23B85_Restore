@interface IMFeatureFlagsTestSwizzler
- (IMFeatureFlagsTestSwizzler)initWithFeature:(SEL)feature enabled:(BOOL)enabled;
- (SEL)feature;
- (SEL)testMethod;
- (void)dealloc;
- (void)swizzle;
- (void)unswizzle;
@end

@implementation IMFeatureFlagsTestSwizzler

- (IMFeatureFlagsTestSwizzler)initWithFeature:(SEL)feature enabled:(BOOL)enabled
{
  v36.receiver = self;
  v36.super_class = IMFeatureFlagsTestSwizzler;
  v6 = [(IMFeatureFlagsTestSwizzler *)&v36 init];
  v8 = v6;
  if (!v6)
  {
    return v8;
  }

  if ((IMIsRunningInUnitTesting(v6, v7) & 1) == 0)
  {
    v32 = MEMORY[0x1E695DF30];
    v33 = @"IMFeatureFlagsNotRunningUnitTests";
    v34 = @"Swizzling for testing is not permitted outside of testing.";
    goto LABEL_24;
  }

  v8->_enabled = enabled;
  if (feature)
  {
    featureCopy = feature;
  }

  else
  {
    featureCopy = 0;
  }

  v8->_feature = featureCopy;
  v10 = [[IMSwizzledMethod alloc] initWithClass:objc_opt_class() selector:feature];
  originalMethod = v8->_originalMethod;
  v8->_originalMethod = v10;

  enabled = v8->_enabled;
  p_testMethod = &v8->_testMethod;
  v14 = MEMORY[0x1E696AEC0];
  v15 = NSStringFromSelector(feature);
  v16 = v15;
  if (enabled)
  {
    v17 = [v14 stringWithFormat:@"%@_SwizzledOnForTests", v15];
    v18 = NSSelectorFromString(v17);
    v19 = sub_1A861F8F4;
  }

  else
  {
    v17 = [v14 stringWithFormat:@"%@_SwizzledOffForTests", v15];
    v18 = NSSelectorFromString(v17);
    v19 = sub_1A861F8FC;
  }

  v20 = v19;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  *p_testMethod = v21;

  v22 = +[IMFeatureFlags sharedFeatureFlags];
  v23 = objc_opt_respondsToSelector();

  if ((v23 & 1) == 0)
  {
    v24 = objc_opt_class();
    v25 = *p_testMethod ? *p_testMethod : 0;
    if (!class_addMethod(v24, v25, v20, [(IMSwizzledMethod *)v8->_originalMethod typeEncoding]))
    {
      v32 = MEMORY[0x1E695DF30];
      v33 = @"IMFeatureFlagsCreatingTestMethodFailed";
      v34 = @"Creating test method failed";
LABEL_24:
      v35 = [v32 exceptionWithName:v33 reason:v34 userInfo:0];
      objc_exception_throw(v35);
    }
  }

  v26 = [IMSwizzledMethod alloc];
  v27 = objc_opt_class();
  if (*p_testMethod)
  {
    v28 = *p_testMethod;
  }

  else
  {
    v28 = 0;
  }

  v29 = [(IMSwizzledMethod *)v26 initWithClass:v27 selector:v28];
  replacementMethod = v8->_replacementMethod;
  v8->_replacementMethod = v29;

  return v8;
}

- (void)swizzle
{
  if ([(IMFeatureFlagsTestSwizzler *)self isSwizzled])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = @"IMFeatureFlagTestSwizzerSwizzlingFailedAlreadySwizzling";
    v5 = @"Already swizzing a test";
    goto LABEL_8;
  }

  if (![(IMSwizzledMethod *)self->_originalMethod swizzleWithMethod:self->_replacementMethod])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = @"IMFeatureFlagTestSwizzerFailed";
    v5 = @"Failed to swizzle test method";
LABEL_8:
    v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
    objc_exception_throw(v6);
  }

  v7 = [(IMSwizzledMethod *)self->_originalMethod description];
  NSLog(&cfstr_Imfeatureflags_1.isa, v7);
}

- (void)unswizzle
{
  if (![(IMFeatureFlagsTestSwizzler *)self isSwizzled])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = @"IMFeatureFlagTestSwizzerUnswizzlingFailedNotSwizzling";
    v5 = @"Not swizzling a test";
    goto LABEL_8;
  }

  if (![(IMSwizzledMethod *)self->_originalMethod unswizzle])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = @"IMFeatureFlagTestSwizzerFailed";
    v5 = @"Failed to unswizzle test method";
LABEL_8:
    v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
    objc_exception_throw(v6);
  }

  v7 = [(IMSwizzledMethod *)self->_originalMethod description];
  NSLog(&cfstr_Imfeatureflags_2.isa, v7);
}

- (void)dealloc
{
  if ([(IMFeatureFlagsTestSwizzler *)self isSwizzled])
  {
    [(IMFeatureFlagsTestSwizzler *)self unswizzle];
  }

  v3.receiver = self;
  v3.super_class = IMFeatureFlagsTestSwizzler;
  [(IMFeatureFlagsTestSwizzler *)&v3 dealloc];
}

- (SEL)feature
{
  if (self->_feature)
  {
    return self->_feature;
  }

  else
  {
    return 0;
  }
}

- (SEL)testMethod
{
  if (self->_testMethod)
  {
    return self->_testMethod;
  }

  else
  {
    return 0;
  }
}

@end