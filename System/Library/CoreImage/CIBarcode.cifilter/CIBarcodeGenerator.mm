@interface CIBarcodeGenerator
+ (id)customAttributes;
- (CGImage)outputCGImage;
- (CGImage)outputCGImageForAztecCodeDescriptor;
- (CGImage)outputCGImageForDataMatrixCodeDescriptor;
- (CGImage)outputCGImageForPDF417CodeDescriptor;
- (CGImage)outputCGImageForQRCodeDescriptor;
- (id)outputImage;
@end

@implementation CIBarcodeGenerator

+ (id)customAttributes
{
  v6[0] = kCIAttributeFilterCategories;
  v5[0] = kCICategoryGenerator;
  v5[1] = kCICategoryVideo;
  v5[2] = kCICategoryStillImage;
  v5[3] = kCICategoryBuiltIn;
  v2 = [NSArray arrayWithObjects:v5 count:4];
  v7[0] = v2;
  v7[1] = @"11";
  v6[1] = kCIAttributeFilterAvailable_iOS;
  v6[2] = kCIAttributeFilterAvailable_Mac;
  v7[2] = @"10.13";
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v3;
}

- (CGImage)outputCGImageForQRCodeDescriptor
{
  v2 = self->inputBarcodeDescriptor;
  errorCorrectedPayload = [(CIBarcodeDescriptor *)v2 errorCorrectedPayload];
  if (errorCorrectedPayload)
  {
    maskPattern = [(CIBarcodeDescriptor *)v2 maskPattern];
    symbolVersion = [(CIBarcodeDescriptor *)v2 symbolVersion];
    v6 = [(CIBarcodeDescriptor *)v2 errorCorrectionLevel]- 72;
    if (v6 >= 0xA || ((0x231u >> v6) & 1) == 0)
    {
      sub_EE3C();
    }

    v7 = sub_9954(errorCorrectedPayload, *(&off_1C490 + v6), maskPattern, symbolVersion);
    v9 = v7;
    if (v7)
    {
      CFAutorelease(v7);
    }

    else
    {
      v10 = sub_CF0(0, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_EE68();
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGImage)outputCGImageForAztecCodeDescriptor
{
  v2 = self->inputBarcodeDescriptor;
  errorCorrectedPayload = [(CIBarcodeDescriptor *)v2 errorCorrectedPayload];
  if (errorCorrectedPayload)
  {
    v16[0] = &__kCFBooleanTrue;
    v15[0] = @"AztecOptionMessageDataIsDataCodeWords";
    v15[1] = @"AztecOptionUseCompactStyle";
    v4 = [NSNumber numberWithBool:[(CIBarcodeDescriptor *)v2 isCompact]];
    v16[1] = v4;
    v15[2] = @"AztecOptionLayers";
    v5 = [NSNumber numberWithInteger:[(CIBarcodeDescriptor *)v2 layerCount]];
    v16[2] = v5;
    v15[3] = @"AztecOptionMessageCodeWordCount";
    v6 = [NSNumber numberWithInteger:[(CIBarcodeDescriptor *)v2 dataCodewordCount]];
    v16[3] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];

    v8 = sub_5360(errorCorrectedPayload, v7);
    v9 = 0;
    v11 = v9;
    if (v8)
    {
      CFAutorelease(v8);
    }

    else
    {
      v12 = sub_CF0(v9, v10);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        if (v13)
        {
          sub_EE9C(v11);
        }
      }

      else if (v13)
      {
        sub_EE68();
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGImage)outputCGImageForPDF417CodeDescriptor
{
  v2 = self->inputBarcodeDescriptor;
  errorCorrectedPayload = [(CIBarcodeDescriptor *)v2 errorCorrectedPayload];
  if (errorCorrectedPayload)
  {
    v16[0] = &__kCFBooleanTrue;
    v15[0] = @"PDF417OptionMessageDataIsCodeWordData";
    v15[1] = @"PDF417OptionUseCompactStyle";
    v4 = [NSNumber numberWithBool:[(CIBarcodeDescriptor *)v2 isCompact]];
    v16[1] = v4;
    v15[2] = @"PDF417OptionRows";
    v5 = [NSNumber numberWithInteger:[(CIBarcodeDescriptor *)v2 rowCount]];
    v16[2] = v5;
    v15[3] = @"PDF417OptionDataColumns";
    v6 = [NSNumber numberWithInteger:[(CIBarcodeDescriptor *)v2 columnCount]];
    v16[3] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];

    v8 = sub_C45C(errorCorrectedPayload, v7);
    v9 = 0;
    v11 = v9;
    if (v8)
    {
      CFAutorelease(v8);
    }

    else
    {
      v12 = sub_CF0(v9, v10);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        if (v13)
        {
          sub_EF2C(v11);
        }
      }

      else if (v13)
      {
        sub_EE68();
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGImage)outputCGImageForDataMatrixCodeDescriptor
{
  v2 = sub_CF0(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_EFBC();
  }

  return 0;
}

- (CGImage)outputCGImage
{
  inputBarcodeDescriptor = self->inputBarcodeDescriptor;
  if (!inputBarcodeDescriptor)
  {
    return 0;
  }

  if ([(CIBarcodeDescriptor *)inputBarcodeDescriptor isMemberOfClass:objc_opt_class()])
  {

    return [(CIBarcodeGenerator *)self outputCGImageForQRCodeDescriptor];
  }

  if ([(CIBarcodeDescriptor *)self->inputBarcodeDescriptor isMemberOfClass:objc_opt_class()])
  {

    return [(CIBarcodeGenerator *)self outputCGImageForAztecCodeDescriptor];
  }

  if ([(CIBarcodeDescriptor *)self->inputBarcodeDescriptor isMemberOfClass:objc_opt_class()])
  {

    return [(CIBarcodeGenerator *)self outputCGImageForPDF417CodeDescriptor];
  }

  v4 = [(CIBarcodeDescriptor *)self->inputBarcodeDescriptor isMemberOfClass:objc_opt_class()];
  if (!v4)
  {
    v6 = sub_CF0(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_EFF0(&self->inputBarcodeDescriptor, v6);
    }

    return 0;
  }

  return [(CIBarcodeGenerator *)self outputCGImageForDataMatrixCodeDescriptor];
}

- (id)outputImage
{
  outputCGImage = [(CIBarcodeGenerator *)self outputCGImage];
  if (outputCGImage)
  {
    v5[0] = kCIImageNearestSampling;
    v5[1] = kCIImageAlphaOne;
    v6[0] = &__kCFBooleanTrue;
    v6[1] = &__kCFBooleanTrue;
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
    outputCGImage = [CIImage imageWithCGImage:outputCGImage options:v3];
  }

  return outputCGImage;
}

@end