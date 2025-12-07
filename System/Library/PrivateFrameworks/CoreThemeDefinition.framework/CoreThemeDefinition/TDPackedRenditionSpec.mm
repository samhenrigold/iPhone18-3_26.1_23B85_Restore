@interface TDPackedRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (id)renditionPackName;
@end

@implementation TDPackedRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  compressionCopy = compression;
  v59 = *MEMORY[0x277D85DE8];
  packedRenditions = [-[TDPackedRenditionSpec packedRenditions](self packedRenditions];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __86__TDPackedRenditionSpec_createCSIRepresentationWithCompression_colorSpaceID_document___block_invoke;
  v56[3] = &unk_278EBB540;
  documentCopy = document;
  v56[4] = document;
  v9 = [packedRenditions sortedArrayUsingComparator:v56];
  if (![v9 count])
  {
    return 0;
  }

  v46 = compressionCopy;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *v53;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v52 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 |= [v18 allowsPaletteImageCompression];
          v13 |= [v18 allowsHevcCompression];
          v14 |= [v18 allowsDeepmapCompression];
          v15 |= [v18 allowsDeepmap2Compression];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v11);
  }

  else
  {
    LOBYTE(v12) = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 0;
    LOBYTE(v15) = 0;
  }

  allowsExtendedRangePixelFormats = [documentCopy allowsExtendedRangePixelFormats];
  monochrome = [(TDPackedRenditionSpec *)self monochrome];
  v22 = [objc_alloc(MEMORY[0x277D02668]) initWithCanvasSize:0 sliceCount:1004 layout:{-[TDPackedRenditionSpec width](self, "width"), -[TDPackedRenditionSpec height](self, "height")}];
  [v22 setTargetPlatform:{objc_msgSend(documentCopy, "targetPlatform")}];
  v23 = [objc_msgSend(-[TDPackedRenditionSpec keySpec](self "keySpec")];
  if (monochrome)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  if (monochrome)
  {
    v25 = 1195456544;
  }

  else
  {
    v25 = 1095911234;
  }

  if (allowsExtendedRangePixelFormats)
  {
    v26 = 4;
  }

  else
  {
    v26 = 3;
  }

  if (allowsExtendedRangePixelFormats)
  {
    v27 = 6;
  }

  else
  {
    v27 = 2;
  }

  if (monochrome)
  {
    v28 = 1195454774;
  }

  else
  {
    v28 = 1380401751;
  }

  if (monochrome)
  {
    v26 = v27;
  }

  if (v23 == 1)
  {
    v29 = v28;
  }

  else
  {
    v29 = v25;
  }

  if (v23 == 1)
  {
    v30 = v26;
  }

  else
  {
    v30 = v24;
  }

  [v22 setPixelFormat:v29];
  alphaCrop = [(TDPackedRenditionSpec *)self alphaCrop];
  [v22 setName:{-[TDPackedRenditionSpec renditionPackName](self, "renditionPackName")}];
  if ([-[TDPackedRenditionSpec compressionType](self "compressionType")])
  {
    [v22 setCompressionType:{objc_msgSend(-[TDPackedRenditionSpec compressionType](self, "compressionType"), "identifier")}];
  }

  [v22 setAllowsMultiPassEncoding:1];
  [v22 setAllowsPaletteImageCompression:v12 & 1];
  [v22 setAllowsHevcCompression:v13 & 1];
  [v22 setAllowsDeepmapImageCompression:v14 & 1];
  [v22 setAllowsDeepmap2ImageCompression:v15 & 1];
  [v22 setColorSpaceID:v30];
  [v22 setScaleFactor:{objc_msgSend(-[TDPackedRenditionSpec keySpec](self, "keySpec"), "scaleFactor")}];
  [v22 addSliceRect:{*MEMORY[0x277CCA868], *(MEMORY[0x277CCA868] + 8), *(MEMORY[0x277CCA868] + 16), *(MEMORY[0x277CCA868] + 24)}];
  [v22 setBlendMode:0];
  [v22 setOpacity:1.0];
  [v22 setPreserveForArchiveOnly:{-[TDPackedRenditionSpec preserveForArchiveOnly](self, "preserveForArchiveOnly")}];
  v32 = [objc_alloc(MEMORY[0x277D02660]) initWithPixelWidth:-[TDPackedRenditionSpec width](self pixelHeight:{"width"), -[TDPackedRenditionSpec height](self, "height")}];
  [v32 setTargetPlatform:{objc_msgSend(documentCopy, "targetPlatform")}];
  [v32 setAllowsMultiPassEncoding:1];
  [v32 setPixelFormat:objc_msgSend(v22, "pixelFormat")];
  [v32 setColorSpaceID:{objc_msgSend(v22, "colorSpaceID")}];
  if ([(TDPackedRenditionSpec *)self opaque])
  {
    v33 = 6;
  }

  else
  {
    v33 = 2;
  }

  [v32 setSourceAlphaInfo:v33];
  v34 = v22;
  [v22 addBitmap:v32];
  v45 = v32;
  bitmapContext = [v32 bitmapContext];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v36 = [v9 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v49;
    do
    {
      v39 = v9;
      for (j = 0; j != v37; ++j)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(v39);
        }

        v41 = *(*(&v48 + 1) + 8 * j);
        if (alphaCrop)
        {
          v42 = objc_alloc_init(MEMORY[0x277D026D0]);
          v43 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(objc_msgSend(v41, "keySpec"), "key")}];
          [v42 setReferenceKey:v43];
          [v34 addLayerReference:v42];
        }

        [v41 drawPackableRenditionInContext:bitmapContext withDocument:documentCopy];
      }

      v9 = v39;
      v37 = [v39 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v37);
  }

  v19 = [v34 CSIRepresentationWithCompression:v46];

  return v19;
}

uint64_t __86__TDPackedRenditionSpec_createCSIRepresentationWithCompression_colorSpaceID_document___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [objc_msgSend(a2 "keySpec")];
  v6 = [objc_msgSend(a3 "keySpec")];
  v7 = [*(a1 + 32) untrimmedRenditionKeyFormat];

  return MEMORY[0x282157470](v5, v6, v7);
}

- (id)renditionPackName
{
  alphaCrop = [(TDPackedRenditionSpec *)self alphaCrop];
  v4 = MEMORY[0x277CCACA8];
  v5 = [-[TDPackedRenditionSpec keySpec](self "keySpec")];
  opaque = [(TDPackedRenditionSpec *)self opaque];
  monochrome = [(TDPackedRenditionSpec *)self monochrome];
  v8 = [objc_msgSend(-[TDPackedRenditionSpec keySpec](self "keySpec")];
  if (alphaCrop)
  {
    v9 = @"ZZZZExplicitlyPackedAsset-%d.%d.%d-gamut%d";
  }

  else
  {
    v9 = @"ZZZZPackedAsset-%d.%d.%d-gamut%d";
  }

  return [v4 stringWithFormat:v9, v5, opaque, monochrome, v8];
}

@end