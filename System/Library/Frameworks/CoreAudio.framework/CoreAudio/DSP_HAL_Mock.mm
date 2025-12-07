@interface DSP_HAL_Mock
- (id)createFactory:(int)factory;
@end

@implementation DSP_HAL_Mock

- (id)createFactory:(int)factory
{
  if (factory)
  {
    v3 = *&factory;
    v4 = objc_alloc_init(DSP_HAL_Mock_Factory);
    [(DSP_HAL_Mock_Factory *)v4 setFeatureFlag:v3];
  }

  else
  {
    v5 = objc_alloc_init(DSP_HAL_Bypass);
    v6 = v5;
    if (v5)
    {
      createFactory = [(DSP_HAL_Bypass *)v5 createFactory];
    }

    else
    {
      createFactory = 0;
    }

    v4 = createFactory;
  }

  return v4;
}

@end