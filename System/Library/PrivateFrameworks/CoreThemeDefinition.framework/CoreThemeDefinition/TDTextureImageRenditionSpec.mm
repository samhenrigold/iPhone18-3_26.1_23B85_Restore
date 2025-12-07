@interface TDTextureImageRenditionSpec
- (BOOL)isCubeMap;
- (BOOL)updatePackingPropertiesWithDocument:(id)document;
- (CGImage)_createImageRefWithURL:(id)l andDocument:(id)document format:(int *)format;
- (TDTextureRenditionSpec)texture;
- (id)associatedFileModificationDateWithDocument:(id)document;
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (id)textureFacesWithDocument:(id)document;
- (int)_pixelFormatOfCGImage:(CGImage *)image;
@end

@implementation TDTextureImageRenditionSpec

- (TDTextureRenditionSpec)texture
{
  textureLevelAssignment = [(TDTextureImageRenditionSpec *)self textureLevelAssignment];

  return [textureLevelAssignment texture];
}

- (BOOL)isCubeMap
{
  v2 = [-[TDTextureImageRenditionSpec textureLevelAssignment](self "textureLevelAssignment")];

  return [v2 cubeMap];
}

- (id)textureFacesWithDocument:(id)document
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"textureLevelAssignment.texture = %@ AND textureLevelAssignment.level=%d", -[TDTextureImageRenditionSpec texture](self, "texture"), objc_msgSend(-[TDTextureImageRenditionSpec textureLevelAssignment](self, "textureLevelAssignment"), "level")];
  v8[0] = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"textureLevelAssignment.face.identifier" ascending:1];
  v6 = [document objectsForEntity:@"TextureImageRenditionSpec" withPredicate:v5 sortDescriptors:objc_msgSend(MEMORY[0x277CBEA60] withContext:"arrayWithObjects:count:" error:{v8, 1), -[TDTextureImageRenditionSpec managedObjectContext](self, "managedObjectContext"), 0}];
  [v6 count];
  [v6 objectAtIndexedSubscript:0];
  return v6;
}

- (id)associatedFileModificationDateWithDocument:(id)document
{
  v3 = [objc_msgSend(-[TDTextureImageRenditionSpec asset](self "asset")];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];
  if (v5)
  {
    v6 = [defaultManager attributesOfItemAtPath:v3 error:0];
  }

  else
  {
    v6 = 0;
  }

  result = [v6 objectForKey:*MEMORY[0x277CCA150]];
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v8 == 1)
  {
    NSLog(&cfstr_Tdtextureimage.isa, v3);
    v9 = MEMORY[0x277CBEAA8];

    return [v9 distantFuture];
  }

  return result;
}

- (int)_pixelFormatOfCGImage:(CGImage *)image
{
  monochrome = [(TDTextureImageRenditionSpec *)self monochrome];
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  if (BitsPerComponent <= 15)
  {
    v6 = 1195456544;
  }

  else
  {
    v6 = 1195454774;
  }

  if (BitsPerComponent <= 15)
  {
    v7 = 1095911234;
  }

  else
  {
    v7 = 1380401751;
  }

  if (monochrome)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (CGImage)_createImageRefWithURL:(id)l andDocument:(id)document format:(int *)format
{
  asset = [(TDTextureImageRenditionSpec *)self asset];
  pathExtension = [l pathExtension];
  if (![pathExtension length] || objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"PNG") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"JPG") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"JPEG") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"TIFF") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"TGA"))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    NSLog(&cfstr_TextureImageAs.isa, v13, v14, l);
    return 0;
  }

  v15 = [asset sourceImageWithDocument:document];
  image = [v15 image];
  if (!v15)
  {
    return 0;
  }

  v17 = image;
  if (format)
  {
    *format = [(TDTextureImageRenditionSpec *)self _pixelFormatOfCGImage:image];
  }

  CGImageRetain(v17);
  return v17;
}

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  compressionCopy = compression;
  v49 = *MEMORY[0x277D85DE8];
  v8 = 1095911234;
  v9 = [(TDTextureImageRenditionSpec *)self production:compression];
  asset = [(TDTextureImageRenditionSpec *)self asset];
  v47 = 1095911234;
  if ([objc_msgSend(-[TDTextureImageRenditionSpec textureLevelAssignment](self "textureLevelAssignment")])
  {
    return 0;
  }

  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
  if (identifier == 1006)
  {
    v13 = objc_alloc(MEMORY[0x277D02668]);
    v14 = [v13 initWithCanvasSize:0 sliceCount:1006 layout:{*MEMORY[0x277CCA870], *(MEMORY[0x277CCA870] + 8)}];
    [v14 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
    [v14 setScaleFactor:{objc_msgSend(-[TDTextureImageRenditionSpec keySpec](self, "keySpec"), "scaleFactor")}];
    v11 = [v14 CSIRepresentationWithCompression:compressionCopy];

    return v11;
  }

  v15 = identifier;
  v16 = -[TDTextureImageRenditionSpec _createImageRefWithURL:andDocument:format:](self, "_createImageRefWithURL:andDocument:format:", [asset fileURLWithDocument:document], document, &v47);
  width = [(TDTextureImageRenditionSpec *)self width];
  height = [(TDTextureImageRenditionSpec *)self height];
  if ([v9 renditionSubtype])
  {
    v15 = [objc_msgSend(v9 "renditionSubtype")];
  }

  if ([(TDTextureImageRenditionSpec *)self parentRendition])
  {
    [(TDRenditionSpec *)self packedPoint];
    v19 = [objc_alloc(MEMORY[0x277D02668]) initWithInternalReferenceRect:v15 layout:{v17, v18, width, height}];
    v20 = objc_alloc_init(MEMORY[0x277D026D0]);
    v21 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(objc_msgSend(-[TDTextureImageRenditionSpec parentRendition](self, "parentRendition"), "keySpec"), "key")}];
    [v20 setReferenceKey:v21];
    [v19 addLayerReference:v20];
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x277D02668]) initWithTextureImageWithSize:-[TDTextureImageRenditionSpec textureFormat](self forPixelFormat:"textureFormat") cubeMap:-[TDTextureImageRenditionSpec isCubeMap](self, "isCubeMap"), width, height];
  }

  [v19 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  [v19 setPixelFormat:v47];
  [v19 setName:{objc_msgSend(asset, "name")}];
  if (v16)
  {
    CGImageGetColorSpace(v16);
    v22 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
    BitsPerComponent = CGImageGetBitsPerComponent(v16);
    monochrome = [(TDTextureImageRenditionSpec *)self monochrome];
    [document allowsExtendedRangePixelFormats];
    if ([objc_msgSend(-[TDTextureImageRenditionSpec keySpec](self "keySpec")] == 1)
    {
      if (((CGColorSpaceEqualToColorSpace() | monochrome) & 1) != 0 || BitsPerComponent < 9)
      {
        goto LABEL_19;
      }
    }

    else if (monochrome)
    {
      v8 = 1195456544;
    }

    else
    {
      v8 = 1095911234;
    }

    [v19 setPixelFormat:v8];
LABEL_19:
    CGColorSpaceRelease(v22);
  }

  v34 = compressionCopy;
  [v19 setScaleFactor:{objc_msgSend(asset, "scaleFactor", v16)}];
  [v19 setExifOrientation:{objc_msgSend(asset, "exifOrientation")}];
  [v19 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  memset(v44, 0, sizeof(v44));
  v45 = width;
  v46 = height;
  [v19 addMetrics:v44];
  selfCopy = self;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(TDTextureImageRenditionSpec *)self textureFacesWithDocument:document];
  v24 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v40 + 1) + 8 * i);
        v29 = [objc_msgSend(objc_msgSend(v28 "asset")];
        CGImageGetWidth(v29);
        CGImageGetHeight(v29);
        BitmapInfo = CGImageGetBitmapInfo(v29);
        v31 = [objc_alloc(MEMORY[0x277D02660]) initWithCGImage:v29 width:width height:height texturePixelFormat:-[TDTextureImageRenditionSpec textureFormat](selfCopy, "textureFormat")];
        [v31 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
        [v31 setPixelFormat:objc_msgSend(v19, "pixelFormat")];
        [v31 setColorSpaceID:{objc_msgSend(v19, "colorSpaceID")}];
        [v31 setSourceAlphaInfo:BitmapInfo & 0x1F];
        [v31 setTextureInterpretation:{objc_msgSend(objc_msgSend(v9, "textureInterpretation"), "identifier")}];
        [v31 setExifOrientation:{objc_msgSend(objc_msgSend(v28, "asset"), "exifOrientation")}];
        [v31 setFlipped:{objc_msgSend(v28, "flipped")}];
        [v19 addBitmap:v31];
      }

      v25 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v25);
  }

  [v19 setOptOutOfThinning:{objc_msgSend(v9, "optOutOfThinning")}];
  v11 = [v19 CSIRepresentationWithCompression:v34];

  CGImageRelease(image);
  return v11;
}

- (BOOL)updatePackingPropertiesWithDocument:(id)document
{
  asset = [(TDTextureImageRenditionSpec *)self asset];
  v11 = 0;
  v10.receiver = self;
  v10.super_class = TDTextureImageRenditionSpec;
  [(TDRenditionSpec *)&v10 updatePackingPropertiesWithDocument:document];
  v6 = -[TDTextureImageRenditionSpec _createImageRefWithURL:andDocument:format:](self, "_createImageRefWithURL:andDocument:format:", [asset fileURLWithDocument:document], document, &v11);
  AlphaInfo = CUICGImageGetAlphaInfo();
  if (AlphaInfo == 5 || AlphaInfo == 0)
  {
    [(TDTextureImageRenditionSpec *)self setOpaque:1];
  }

  if (CUIImageIsMonochrome())
  {
    [(TDTextureImageRenditionSpec *)self setMonochrome:1];
  }

  CGImageRelease(v6);
  return 1;
}

@end