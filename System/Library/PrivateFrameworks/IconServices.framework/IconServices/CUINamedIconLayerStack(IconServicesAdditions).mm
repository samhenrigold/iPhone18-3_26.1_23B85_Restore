@interface CUINamedIconLayerStack(IconServicesAdditions)
- (id)_IS_finalizedIconWithCompositingDescriptor:()IconServicesAdditions;
- (id)_IS_imageWithCompositingDescriptor:()IconServicesAdditions;
- (id)_IS_imageWithSize:()IconServicesAdditions scale:platform:appearance:appearanceVariant:tintColor:isLegacy:background:;
@end

@implementation CUINamedIconLayerStack(IconServicesAdditions)

- (id)_IS_finalizedIconWithCompositingDescriptor:()IconServicesAdditions
{
  v4 = a3;
  cUINamedImageDeviceClass = [v4 CUINamedImageDeviceClass];
  iCRAppearance = [v4 ICRAppearance];
  iCRRenderingMode = [v4 ICRRenderingMode];
  scale = [v4 scale];
  *&v9 = v9;
  v10 = llroundf(*&v9);
  v11 = _ISDefaultLog(scale);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(CUINamedIconLayerStack(IconServicesAdditions) *)self _IS_finalizedIconWithCompositingDescriptor:v4, v11];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 size];
    v14 = [self finalizedIconWithSize:v10 scale:cUINamedImageDeviceClass deviceClass:iCRAppearance appearance:iCRRenderingMode renderingMode:objc_msgSend(v4 layoutDirection:"languageDirection") isLegacyContent:{objc_msgSend(v4, "useLegacyCompatibilityMode"), v12, v13}];
  }

  else
  {
    useLegacyCompatibilityMode = [v4 useLegacyCompatibilityMode];
    [v4 size];
    if (useLegacyCompatibilityMode)
    {
      [self legacyFinalizedIconWithSize:v10 scale:cUINamedImageDeviceClass deviceClass:iCRAppearance appearance:iCRRenderingMode renderingMode:?];
    }

    else
    {
      [self finalizedIconWithSize:v10 scale:cUINamedImageDeviceClass deviceClass:iCRAppearance appearance:iCRRenderingMode renderingMode:?];
    }
    v14 = ;
  }

  v16 = v14;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v18 = _ISDefaultLog(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CUINamedIconLayerStack(IconServicesAdditions) _IS_finalizedIconWithCompositingDescriptor:v18];
    }
  }

  return v16;
}

- (id)_IS_imageWithCompositingDescriptor:()IconServicesAdditions
{
  v4 = a3;
  v5 = [self _IS_finalizedIconWithCompositingDescriptor:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _IS_imageWithCompositingDescriptor:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_IS_imageWithSize:()IconServicesAdditions scale:platform:appearance:appearanceVariant:tintColor:isLegacy:background:
{
  v19 = a9;
  v20 = objc_alloc_init(ISCompositingDescriptor);
  [(ISCompositingDescriptor *)v20 setSize:a2, a3];
  [(ISCompositingDescriptor *)v20 setScale:a5];
  [(ISCompositingDescriptor *)v20 setPlatform:a6];
  [(ISCompositingDescriptor *)v20 setAppearance:a7];
  [(ISCompositingDescriptor *)v20 setAppearanceVariant:a8];
  [(ISCompositingDescriptor *)v20 setTintColor:v19];

  [(ISCompositingDescriptor *)v20 setUseLegacyCompatibilityMode:a10];
  [(ISCompositingDescriptor *)v20 setBackground:a11];
  v21 = [self _IS_imageWithCompositingDescriptor:v20];

  return v21;
}

- (void)_IS_finalizedIconWithCompositingDescriptor:()IconServicesAdditions .cold.1(void *a1, void *a2, NSObject *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v19 = [a1 layers];
  [a2 size];
  v6 = v5;
  [a2 size];
  v8 = v7;
  [a2 scale];
  v10 = v9;
  v11 = [a2 platform];
  v12 = [a2 appearance];
  v13 = [a2 appearanceVariant];
  v14 = [a2 tintColor];
  v15 = [v14 ciColor];
  v16 = [v15 stringRepresentation];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"no_colour";
  }

  *buf = 138414594;
  v22 = a1;
  v23 = 2112;
  v24 = v19;
  v25 = 2048;
  v26 = v6;
  v27 = 2048;
  v28 = v8;
  v29 = 2048;
  v30 = v10;
  v31 = 2048;
  v32 = v11;
  v33 = 2048;
  v34 = v12;
  v35 = 2048;
  v36 = v13;
  v37 = 2112;
  v38 = v18;
  v39 = 1024;
  v40 = [a2 useLegacyCompatibilityMode];
}

@end