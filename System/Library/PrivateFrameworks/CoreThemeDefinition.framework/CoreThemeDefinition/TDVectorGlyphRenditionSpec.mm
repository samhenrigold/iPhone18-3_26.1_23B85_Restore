@interface TDVectorGlyphRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
@end

@implementation TDVectorGlyphRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v30[3] = *MEMORY[0x277D85DE8];
  v7 = [(TDVectorGlyphRenditionSpec *)self asset:compression];
  v27 = 0;
  v8 = +[TDVectorGlyphReader vectorGlyphReaderWithURL:platform:error:](TDVectorGlyphReader, "vectorGlyphReaderWithURL:platform:error:", [v7 fileURLWithDocument:document], objc_msgSend(document, "targetPlatform"), 0);
  if (!-[TDVectorGlyphReader vectorGlyphWithWeight:size:error:](v8, "vectorGlyphWithWeight:size:error:", [objc_msgSend(-[TDVectorGlyphRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDVectorGlyphRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"), &v27))
  {
    goto LABEL_12;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v10 = *MEMORY[0x277D014B0];
  v29[0] = *MEMORY[0x277D014A8];
  v29[1] = v10;
  v30[0] = MEMORY[0x277CBEC38];
  v30[1] = MEMORY[0x277CBEC38];
  v29[2] = @"kCGSVGOmitHeaders";
  v30[2] = MEMORY[0x277CBEC38];
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  if (!CGSVGDocumentWriteToData())
  {

    CGSVGDocumentRelease();
LABEL_12:
    v21 = 0;
    v11 = v8;
    goto LABEL_13;
  }

  v11 = [objc_alloc(MEMORY[0x277D02668]) initWithRawData:v9 pixelFormat:1398163232 layout:1017];
  -[TDVectorGlyphReader setTargetPlatform:](v11, "setTargetPlatform:", [document targetPlatform]);
  [(TDVectorGlyphReader *)v11 setIsVectorBased:1];
  -[TDVectorGlyphReader setName:](v11, "setName:", [v7 name]);
  -[TDVectorGlyphReader setScaleFactor:](v11, "setScaleFactor:", [-[TDVectorGlyphRenditionSpec keySpec](self "keySpec")]);
  [(TDVectorGlyphReader *)v11 setCompressionType:2];
  -[TDVectorGlyphReader setTemplateRenderingMode:](v11, "setTemplateRenderingMode:", [objc_msgSend(-[TDVectorGlyphRenditionSpec production](self "production")]);
  -[TDVectorGlyphReader setOptOutOfThinning:](v11, "setOptOutOfThinning:", [-[TDVectorGlyphRenditionSpec production](self "production")]);
  -[TDVectorGlyphReader setIsFlippable:](v11, "setIsFlippable:", [-[TDVectorGlyphRenditionSpec production](self "production")]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  avaliablePointSizes = [(TDVectorGlyphRenditionSpec *)self avaliablePointSizes];
  v14 = [avaliablePointSizes countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(avaliablePointSizes);
        }

        [v12 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * v17++), "pointSize")}];
      }

      while (v15 != v17);
      v15 = [avaliablePointSizes countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v15);
  }

  [(TDVectorGlyphReader *)v8 defaultPointSize];
  [(TDVectorGlyphReader *)v11 setStandardVectorSize:v18];
  [(TDVectorGlyphReader *)v11 setVectorSizes:v12];

  -[TDVectorGlyphReader baselineForVectorGlyphWithWeight:size:](v8, "baselineForVectorGlyphWithWeight:size:", [objc_msgSend(-[TDVectorGlyphRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDVectorGlyphRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"));
  *&v19 = v19;
  [(TDVectorGlyphReader *)v11 setBaseline:v19];
  -[TDVectorGlyphReader capHeightForVectorGlyphWithWeight:size:](v8, "capHeightForVectorGlyphWithWeight:size:", [objc_msgSend(-[TDVectorGlyphRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDVectorGlyphRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"));
  *&v20 = v20;
  [(TDVectorGlyphReader *)v11 setCapHeight:v20];
  -[TDVectorGlyphReader alignmentRectInsetsForVectorGlyphWithWeight:size:](v8, "alignmentRectInsetsForVectorGlyphWithWeight:size:", [objc_msgSend(-[TDVectorGlyphRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDVectorGlyphRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier"));
  [(TDVectorGlyphReader *)v11 setAlignmentRectInsets:?];
  [(TDVectorGlyphReader *)v8 templateVersion];
  [(TDVectorGlyphReader *)v11 setTemplateVersion:?];
  -[TDVectorGlyphReader setInterpolatable:](v11, "setInterpolatable:", -[TDVectorGlyphReader isInterpolatableForWeight:size:](v8, "isInterpolatableForWeight:size:", [objc_msgSend(-[TDVectorGlyphRenditionSpec keySpec](self "keySpec")], objc_msgSend(objc_msgSend(-[TDVectorGlyphRenditionSpec keySpec](self, "keySpec"), "glyphSize"), "identifier")));
  -[TDVectorGlyphReader setVectorGlyphRenderingMode:](v11, "setVectorGlyphRenderingMode:", [objc_msgSend(-[TDVectorGlyphRenditionSpec production](self "production")]);
  [(TDVectorGlyphReader *)v11 setVectorContainsMulticolorLayers:[(TDVectorGlyphReader *)v8 containsMulticolorLayers]];
  [(TDVectorGlyphReader *)v11 setVectorContainsHierarchicalLayers:[(TDVectorGlyphReader *)v8 containsHierarchicalLayers]];
  v21 = [(TDVectorGlyphReader *)v11 CSIRepresentationWithCompression:0];
  CGSVGDocumentRelease();

LABEL_13:
  return v21;
}

@end