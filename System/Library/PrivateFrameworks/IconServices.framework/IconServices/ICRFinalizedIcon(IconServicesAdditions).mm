@interface ICRFinalizedIcon(IconServicesAdditions)
- (id)_IS_imageWithCompositingDescriptor:()IconServicesAdditions;
@end

@implementation ICRFinalizedIcon(IconServicesAdditions)

- (id)_IS_imageWithCompositingDescriptor:()IconServicesAdditions
{
  v4 = a3;
  if ([v4 appearanceVariant] == 4)
  {
    cUINamedImageDeviceClass = [v4 CUINamedImageDeviceClass];
    v6 = objc_opt_new();
    v7 = [self renderedLegacyCompatibleIconWithConfiguration:v6 forDeviceClass:cUINamedImageDeviceClass maskToIconShape:1];
  }

  else if ([v4 background] == 1)
  {
    v6 = objc_opt_new();
    v7 = [self renderedSystemGlassCompatibleIconWithConfiguration:v6];
  }

  else if ([v4 shouldApplyMask])
  {
    v6 = objc_opt_new();
    encapsulationShape = [v4 encapsulationShape];

    if (encapsulationShape)
    {
      encapsulationShape2 = [v4 encapsulationShape];
      [v6 setEncapsulationShape:encapsulationShape2];
    }

    v7 = [self renderedIconWithConfiguration:v6];
  }

  else
  {
    v10 = [v4 background] != 2;
    v6 = objc_opt_new();
    v7 = [self renderedFullBleedIconWithConfiguration:v6 excludeChicletSpecularHighlights:v10];
  }

  v11 = v7;

  if (v11)
  {
    cacheFinalizedIconOnGeneratedImage = [v4 cacheFinalizedIconOnGeneratedImage];
    v14 = objc_alloc(MEMORY[0x1E69A8988]);
    [v4 scale];
    if (cacheFinalizedIconOnGeneratedImage)
    {
      v15 = [v14 initWithCGImage:v11 scale:self finalizedIcon:?];
    }

    else
    {
      v15 = [v14 initWithCGImage:v11 scale:?];
    }

    v17 = v15;
  }

  else
  {
    v16 = _ISDefaultLog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ICRFinalizedIcon(IconServicesAdditions) _IS_imageWithCompositingDescriptor:v16];
    }

    v17 = 0;
  }

  return v17;
}

@end