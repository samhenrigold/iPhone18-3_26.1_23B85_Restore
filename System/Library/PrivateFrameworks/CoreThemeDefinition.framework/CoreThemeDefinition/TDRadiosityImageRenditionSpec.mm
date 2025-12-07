@interface TDRadiosityImageRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
@end

@implementation TDRadiosityImageRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  dCopy = d;
  compressionCopy = compression;
  if (![-[TDRadiosityImageRenditionSpec flattenedImage](self "flattenedImage")] && !objc_msgSend(objc_msgSend(-[TDRadiosityImageRenditionSpec flattenedImage](self, "flattenedImage"), "layerReferences"), "count"))
  {
    return 0;
  }

  v9 = [objc_alloc(MEMORY[0x277D02668]) initWithCanvasSize:0 sliceCount:0 layout:{-[TDRadiosityImageRenditionSpec width](self, "width"), -[TDRadiosityImageRenditionSpec height](self, "height")}];
  v10 = [objc_msgSend(-[TDRadiosityImageRenditionSpec keySpec](self "keySpec")];
  [v9 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  if ([(TDRadiosityImageRenditionSpec *)self monochrome])
  {
    v11 = 1195456544;
  }

  else
  {
    v11 = 1095911234;
  }

  [v9 setPixelFormat:v11];
  [v9 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"ZZZZRadiosityImage-%d.%d.%d", objc_msgSend(-[TDRadiosityImageRenditionSpec keySpec](self, "keySpec"), "scaleFactor"), -[TDRadiosityImageRenditionSpec opaque](self, "opaque"), -[TDRadiosityImageRenditionSpec monochrome](self, "monochrome"))}];
  if (v10 == 1)
  {
    v12 = 3;
  }

  else
  {
    v12 = dCopy;
  }

  [v9 setColorSpaceID:v12];
  [v9 setScaleFactor:{objc_msgSend(-[TDRadiosityImageRenditionSpec keySpec](self, "keySpec"), "scaleFactor")}];
  [v9 addSliceRect:{*MEMORY[0x277CCA868], *(MEMORY[0x277CCA868] + 8), *(MEMORY[0x277CCA868] + 16), *(MEMORY[0x277CCA868] + 24)}];
  [v9 setBlendMode:0];
  [v9 setOpacity:1.0];
  [v9 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  if ([-[TDRadiosityImageRenditionSpec compressionType](self "compressionType")] && objc_msgSend(-[TDRadiosityImageRenditionSpec compressionType](self, "compressionType"), "identifier") != 2)
  {
    v13 = [-[TDRadiosityImageRenditionSpec compressionType](self "compressionType")];
  }

  else
  {
    v13 = 6;
  }

  [v9 setCompressionType:v13];
  v14 = [objc_alloc(MEMORY[0x277D02660]) initWithPixelWidth:-[TDRadiosityImageRenditionSpec width](self pixelHeight:{"width"), -[TDRadiosityImageRenditionSpec height](self, "height")}];
  [v14 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  [v14 setPixelFormat:objc_msgSend(v9, "pixelFormat")];
  if ([(TDRadiosityImageRenditionSpec *)self opaque])
  {
    v15 = 6;
  }

  else
  {
    v15 = 2;
  }

  [v14 setSourceAlphaInfo:v15];
  bitmapContext = [v14 bitmapContext];
  [-[TDRadiosityImageRenditionSpec flattenedImage](self "flattenedImage")];
  CGBitmapContextGetData(bitmapContext);
  CGBitmapContextGetBytesPerRow(bitmapContext);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(bitmapContext);
  CGBitmapContextGetWidth(bitmapContext);
  CGBitmapContextGetHeight(bitmapContext);
  v37[0] = 1;
  v18 = *MEMORY[0x277CBF3A8];
  v35 = 0u;
  v36 = v18;
  *v34 = 0u;
  documentCopy = document;
  v19 = MEMORY[0x277D026B8];
  [-[TDRadiosityImageRenditionSpec keySpec](self "keySpec")];
  objc_msgSend__doRadiosityBlurOnPixelBuffer_bytesPerRow_bitsPerPixel_width_height_scaleFactor_usesGaussianBlur_adjustedSize_(v19, v37, &v36);
  if (v37[0] == 1)
  {
    [v9 addBitmap:v14];
    v20 = [v9 CSIRepresentationWithCompression:compressionCopy];
  }

  else
  {
    v33 = 0;
    v28[0] = 8;
    v28[1] = BitsPerPixel;
    ColorSpace = CGBitmapContextGetColorSpace(bitmapContext);
    v30 = 8194;
    v32 = 0;
    v31 = 0;
    v21 = MEMORY[0x24C1B1FF0](v34, v28, 0, 0, 0, 0);
    v22 = objc_alloc(MEMORY[0x277D02660]);
    v23 = [v22 initWithPixelWidth:v36.width pixelHeight:v36.height];
    [v23 setTargetPlatform:{objc_msgSend(documentCopy, "targetPlatform")}];
    [v23 setPixelFormat:objc_msgSend(v9, "pixelFormat")];
    if ([(TDRadiosityImageRenditionSpec *)self opaque])
    {
      v24 = 6;
    }

    else
    {
      v24 = 2;
    }

    [v23 setSourceAlphaInfo:v24];
    bitmapContext2 = [v23 bitmapContext];
    v38.size.width = v36.width;
    v38.size.height = v36.height;
    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    CGContextDrawImage(bitmapContext2, v38, v21);
    [v9 addBitmap:v23];
    v20 = [v9 CSIRepresentationWithCompression:compressionCopy];
    CGImageRelease(v21);

    free(v34[0]);
  }

  return v20;
}

@end