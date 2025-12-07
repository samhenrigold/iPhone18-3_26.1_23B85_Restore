@interface TDFlattenedImageRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (void)addLayerReferencesObject:(id)object;
- (void)copyAttributesInto:(id)into;
- (void)drawFlattenedImageIntoContext:(CGContext *)context document:(id)document;
@end

@implementation TDFlattenedImageRenditionSpec

- (void)drawFlattenedImageIntoContext:(CGContext *)context document:(id)document
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = [-[TDFlattenedImageRenditionSpec keySpec](self "keySpec")];
  CGContextSaveGState(context);
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  CGContextTranslateCTM(context, (Width - [(TDFlattenedImageRenditionSpec *)self width]) * 0.5, (Height - [(TDFlattenedImageRenditionSpec *)self height]) * 0.5);
  width = [(TDFlattenedImageRenditionSpec *)self width];
  height = [(TDFlattenedImageRenditionSpec *)self height];
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = width;
  v31.size.height = height;
  CGContextClipToRect(context, v31);
  if ([-[TDFlattenedImageRenditionSpec layerReferences](self "layerReferences")])
  {
    v12 = v7;
    CGContextScaleCTM(context, v7, v7);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    layerReferences = [(TDFlattenedImageRenditionSpec *)self layerReferences];
    v14 = [layerReferences countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      v17 = Height / v12;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(layerReferences);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          reference = [v19 reference];
          v21 = [reference _createImageRefWithURL:objc_msgSend(objc_msgSend(reference andDocument:"asset") format:"fileURLWithDocument:" vectorBased:{document), document, 0, 0}];
          CGContextSetBlendMode(context, [objc_msgSend(v19 "blendMode")]);
          [objc_msgSend(v19 "opacity")];
          CGContextSetAlpha(context, v22);
          [v19 frameRect];
          v32.origin.y = v17 - v32.size.height - v23;
          CGContextDrawImage(context, v32, v21);
          CGImageRelease(v21);
        }

        v15 = [layerReferences countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }
  }

  else if ([(TDFlattenedImageRenditionSpec *)self asset])
  {
    v24 = -[TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:](self, "_createImageRefWithURL:andDocument:format:vectorBased:", [-[TDFlattenedImageRenditionSpec asset](self "asset")], document, 0, 0);
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGContextSetAlpha(context, 1.0);
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.width = width;
    v33.size.height = height;
    CGContextDrawImage(context, v33, v24);
    CGImageRelease(v24);
  }

  CGContextRestoreGState(context);
}

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  compressionCopy = compression;
  if (-[TDFlattenedImageRenditionSpec asset](self, "asset") || (result = [-[TDFlattenedImageRenditionSpec layerReferences](self "layerReferences")]) != 0)
  {
    allowsExtendedRangePixelFormats = [document allowsExtendedRangePixelFormats];
    v12 = [objc_alloc(MEMORY[0x277D02668]) initWithCanvasSize:0 sliceCount:0 layout:{-[TDFlattenedImageRenditionSpec width](self, "width"), -[TDFlattenedImageRenditionSpec height](self, "height")}];
    if ([objc_msgSend(-[TDFlattenedImageRenditionSpec keySpec](self "keySpec")] == 1)
    {
      dCopy = 3;
    }

    else
    {
      dCopy = d;
    }

    if (allowsExtendedRangePixelFormats)
    {
      if (dCopy == 3)
      {
        if ([(TDFlattenedImageRenditionSpec *)self monochrome])
        {
          v16 = 1195454774;
        }

        else
        {
          v16 = 1380401751;
        }

        [v12 setPixelFormat:v16];
        if ([(TDFlattenedImageRenditionSpec *)self monochrome])
        {
          LOWORD(d) = 6;
        }

        else
        {
          LOWORD(d) = 4;
        }
      }

      else if (dCopy == 1)
      {
        if ([(TDFlattenedImageRenditionSpec *)self monochrome])
        {
          v14 = 1195456544;
        }

        else
        {
          v14 = 1095911234;
        }

        [v12 setPixelFormat:v14];
        LOWORD(d) = 1;
      }

      else
      {
        [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
      }
    }

    else
    {
      if ([(TDFlattenedImageRenditionSpec *)self monochrome])
      {
        v15 = 1195456544;
      }

      else
      {
        v15 = 1095911234;
      }

      [v12 setPixelFormat:v15];
      LOWORD(d) = dCopy;
    }

    [v12 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"ZZZZFlattenedImage-%d.%d.%d-gamut%d", objc_msgSend(-[TDFlattenedImageRenditionSpec keySpec](self, "keySpec"), "scaleFactor"), -[TDFlattenedImageRenditionSpec opaque](self, "opaque"), -[TDFlattenedImageRenditionSpec monochrome](self, "monochrome"), objc_msgSend(objc_msgSend(-[TDFlattenedImageRenditionSpec keySpec](self, "keySpec"), "gamut"), "identifier"))}];
    [v12 setColorSpaceID:d];
    [v12 setScaleFactor:{objc_msgSend(-[TDFlattenedImageRenditionSpec keySpec](self, "keySpec"), "scaleFactor")}];
    [v12 addSliceRect:{*MEMORY[0x277CCA868], *(MEMORY[0x277CCA868] + 8), *(MEMORY[0x277CCA868] + 16), *(MEMORY[0x277CCA868] + 24)}];
    [v12 setBlendMode:0];
    [v12 setOpacity:1.0];
    if ([-[TDFlattenedImageRenditionSpec compressionType](self "compressionType")])
    {
      [v12 setCompressionType:{objc_msgSend(-[TDFlattenedImageRenditionSpec compressionType](self, "compressionType"), "identifier")}];
    }

    v17 = [objc_alloc(MEMORY[0x277D02660]) initWithPixelWidth:-[TDFlattenedImageRenditionSpec width](self pixelHeight:{"width"), -[TDFlattenedImageRenditionSpec height](self, "height")}];
    [v17 setPixelFormat:objc_msgSend(v12, "pixelFormat")];
    if ([(TDFlattenedImageRenditionSpec *)self opaque])
    {
      v18 = 6;
    }

    else
    {
      v18 = 2;
    }

    [v17 setSourceAlphaInfo:v18];
    [v17 setColorSpaceID:{objc_msgSend(v12, "colorSpaceID")}];
    [v12 addBitmap:v17];
    -[TDFlattenedImageRenditionSpec drawFlattenedImageIntoContext:document:](self, "drawFlattenedImageIntoContext:document:", [v17 bitmapContext], document);
    v19 = [v12 CSIRepresentationWithCompression:compressionCopy];

    return v19;
  }

  return result;
}

- (void)addLayerReferencesObject:(id)object
{
  v5 = [MEMORY[0x277CBEB40] orderedSetWithOrderedSet:{-[TDFlattenedImageRenditionSpec layerReferences](self, "layerReferences")}];
  [v5 addObject:object];

  [(TDFlattenedImageRenditionSpec *)self setLayerReferences:v5];
}

- (void)copyAttributesInto:(id)into
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = TDFlattenedImageRenditionSpec;
  [(TDSimpleArtworkRenditionSpec *)&v18 copyAttributesInto:?];
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  layerReferences = [(TDFlattenedImageRenditionSpec *)self layerReferences];
  v7 = [layerReferences countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(layerReferences);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = -[TDResolvedImageLayerReference initWithContext:]([TDResolvedImageLayerReference alloc], "initWithContext:", [v11 managedObjectContext]);
        -[TDResolvedImageLayerReference setName:](v12, "setName:", [v11 name]);
        [v11 frameRect];
        [(TDAbstractLayerReference *)v12 setFrameRect:?];
        -[TDResolvedImageLayerReference setOpacity:](v12, "setOpacity:", [v11 opacity]);
        -[TDResolvedImageLayerReference setBlendMode:](v12, "setBlendMode:", [v11 blendMode]);
        -[TDResolvedImageLayerReference setReference:](v12, "setReference:", [v11 reference]);
        [(TDResolvedImageLayerReference *)v12 setStack:into];
        [v5 addObject:v12];
        v13 = v12;
        ++v10;
      }

      while (v8 != v10);
      v8 = [layerReferences countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  [into setLayerReferences:v5];
}

@end