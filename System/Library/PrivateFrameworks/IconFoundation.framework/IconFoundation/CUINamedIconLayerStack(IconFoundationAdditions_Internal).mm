@interface CUINamedIconLayerStack(IconFoundationAdditions_Internal)
- (IFImage)_IF_ImageWithSize:()IconFoundationAdditions_Internal scale:platform:appearance:appearanceVariant:tintColor:isLegacy:encapsulationShape:;
- (id)_IF_finalizedIconWithSize:()IconFoundationAdditions_Internal scale:platform:appearance:appearanceVariant:tintColor:isLegacy:;
- (id)_icrRenderingModeFromAppearanceVariant:()IconFoundationAdditions_Internal tintColor:;
- (uint64_t)_deviceClassFromPlatform:()IconFoundationAdditions_Internal;
- (unint64_t)_icrAppearanceFromAppearance:()IconFoundationAdditions_Internal;
@end

@implementation CUINamedIconLayerStack(IconFoundationAdditions_Internal)

- (uint64_t)_deviceClassFromPlatform:()IconFoundationAdditions_Internal
{
  if (a3 <= 7)
  {
    if ((a3 - 1) < 2)
    {
      return 7;
    }

    if (a3 == 4)
    {
      return 1;
    }

    goto LABEL_9;
  }

  if (a3 == 8)
  {
    return 5;
  }

  if (a3 != 16)
  {
    if (a3 == 32)
    {
      return 3;
    }

LABEL_9:
    v5 = IFDefaultLog(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CUINamedIconLayerStack(IconFoundationAdditions_Internal) *)a3 _deviceClassFromPlatform:v5];
    }

    return 1;
  }

  return 8;
}

- (unint64_t)_icrAppearanceFromAppearance:()IconFoundationAdditions_Internal
{
  v3 = a3;
  v8 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v4 = IFDefaultLog(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_1B9DEC000, v4, OS_LOG_TYPE_INFO, "Unexpected appearance requested for icon stack: %lu", &v6, 0xCu);
    }

    return 0;
  }

  return v3;
}

- (id)_icrRenderingModeFromAppearanceVariant:()IconFoundationAdditions_Internal tintColor:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (a3 == 3)
  {
    v22 = MEMORY[0x1E69A89E8];
  }

  else
  {
    if (a3 != 2)
    {
      if (a3)
      {
        v7 = IFDefaultLog(v5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 134217984;
          v25 = a3;
          _os_log_impl(&dword_1B9DEC000, v7, OS_LOG_TYPE_DEFAULT, "Unexpected appearance variant requested for icon: %lu", &v24, 0xCu);
        }
      }

      color = [MEMORY[0x1E69A89E8] color];
      goto LABEL_13;
    }

    v9 = MEMORY[0x1E69A89E8];
    if (v5)
    {
      ciColor = [v5 ciColor];
      [ciColor red];
      v12 = v11;
      ciColor2 = [v6 ciColor];
      [ciColor2 green];
      v15 = v14;
      ciColor3 = [v6 ciColor];
      [ciColor3 blue];
      v18 = v17;
      ciColor4 = [v6 ciColor];
      [ciColor4 alpha];
      v21 = [v9 tintWithRed:v12 green:v15 blue:v18 alpha:v20];

      goto LABEL_14;
    }

    v22 = MEMORY[0x1E69A89E8];
  }

  color = [v22 clear];
LABEL_13:
  v21 = color;
LABEL_14:

  return v21;
}

- (id)_IF_finalizedIconWithSize:()IconFoundationAdditions_Internal scale:platform:appearance:appearanceVariant:tintColor:isLegacy:
{
  v50 = *MEMORY[0x1E69E9840];
  v17 = a9;
  v28 = [self _deviceClassFromPlatform:a6];
  v18 = [self _icrAppearanceFromAppearance:a7];
  v19 = [self _icrRenderingModeFromAppearanceVariant:a8 tintColor:v17];
  v20 = IFDefaultLog(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    layers = [self layers];
    ciColor = [v17 ciColor];
    stringRepresentation = [ciColor stringRepresentation];
    v25 = stringRepresentation;
    *buf = 138414594;
    v24 = @"empty";
    selfCopy = self;
    if (stringRepresentation)
    {
      v24 = stringRepresentation;
    }

    v32 = 2112;
    v33 = layers;
    v34 = 2048;
    v35 = a2;
    v36 = 2048;
    v37 = a3;
    v38 = 2048;
    v39 = a5;
    v40 = 2048;
    v41 = a6;
    v42 = 2048;
    v43 = a7;
    v44 = 2048;
    v45 = a8;
    v46 = 2112;
    v47 = v24;
    v48 = 1024;
    v49 = a10;
  }

  if (a10)
  {
    [self legacyFinalizedIconWithSize:a5 scale:v28 deviceClass:v18 appearance:v19 renderingMode:{a2, a3}];
  }

  else
  {
    [self finalizedIconWithSize:a5 scale:v28 deviceClass:v18 appearance:v19 renderingMode:{a2, a3}];
  }
  v21 = ;

  return v21;
}

- (IFImage)_IF_ImageWithSize:()IconFoundationAdditions_Internal scale:platform:appearance:appearanceVariant:tintColor:isLegacy:encapsulationShape:
{
  v20 = a11;
  v21 = [self _IF_finalizedIconWithSize:a5 scale:a6 platform:a7 appearance:a8 appearanceVariant:a9 tintColor:a10 isLegacy:{a2, a3}];
  v22 = v21;
  if (v21)
  {
    v32 = 0;
    v23 = [v21 serializedDataWithError:&v32];
    v24 = v32;
    v25 = v24;
    if (!v23 || (v24 = [v23 length]) == 0)
    {
      v26 = IFDefaultLog(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CUINamedIconLayerStack(IconFoundationAdditions_Internal) _IF_ImageWithSize:v25 scale:v26 platform:? appearance:? appearanceVariant:? tintColor:? isLegacy:? encapsulationShape:?];
      }
    }

    v27 = objc_opt_new();
    v28 = v27;
    if (v20)
    {
      [v27 setEncapsulationShape:v20];
    }

    v29 = [v22 renderedIconWithConfiguration:v28];
    if (v29)
    {
      v30 = [[IFImage alloc] initWithCGImage:v29 scale:v23 layerData:a5];
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v25 = IFDefaultLog(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CUINamedIconLayerStack(IconFoundationAdditions_Internal) _IF_ImageWithSize:v25 scale:? platform:? appearance:? appearanceVariant:? tintColor:? isLegacy:? encapsulationShape:?];
    }

    v30 = 0;
  }

  return v30;
}

- (void)_deviceClassFromPlatform:()IconFoundationAdditions_Internal .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_ERROR, "Unable to map platform to device class for icon stack: %lu", &v2, 0xCu);
}

- (void)_IF_ImageWithSize:()IconFoundationAdditions_Internal scale:platform:appearance:appearanceVariant:tintColor:isLegacy:encapsulationShape:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_ERROR, "Failed to serialize finalized icon. Error: %@", &v2, 0xCu);
}

@end