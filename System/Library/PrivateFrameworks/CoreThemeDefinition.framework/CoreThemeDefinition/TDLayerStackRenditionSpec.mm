@interface TDLayerStackRenditionSpec
- (CGSize)canvasSize;
- (CGSize)primitiveCanvasSize;
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (void)awakeFromFetch;
- (void)prepareForDeletion;
- (void)setCanvasSize:(CGSize)size;
@end

@implementation TDLayerStackRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = [(TDLayerStackRenditionSpec *)self asset:compression];
  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
  v9 = 1018;
  if (identifier == 1019)
  {
    v9 = 1019;
  }

  if (identifier == 1002)
  {
    v10 = 1002;
  }

  else
  {
    v10 = v9;
  }

  if (v7)
  {
    v11 = [v7 imageStackDataWithDocument:document];
    v12 = objc_alloc(MEMORY[0x277D02668]);
    [(TDLayerStackRenditionSpec *)self canvasSize];
    v13 = [v12 initWithLayerStackData:v11 type:v10 withCanvasSize:?];
    [v13 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
    [v13 setScaleFactor:{objc_msgSend(v7, "scaleFactor")}];
    [v13 setUtiType:@"public.layeredimage"];
    [v13 setName:{objc_msgSend(v7, "name")}];
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277D02668]);
    [(TDLayerStackRenditionSpec *)self canvasSize];
    v13 = [v14 initWithLayerStackData:0 type:v10 withCanvasSize:?];
  }

  layerReferences = [(TDLayerStackRenditionSpec *)self layerReferences];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [layerReferences countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(layerReferences);
        }

        [v13 addLayerReference:{objc_msgSend(*(*(&v22 + 1) + 8 * v19++), "cuiLayerReference")}];
      }

      while (v17 != v19);
      v17 = [layerReferences countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  [v13 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  v20 = [v13 CSIRepresentationWithCompression:1];

  return v20;
}

- (void)setCanvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(TDLayerStackRenditionSpec *)self willChangeValueForKey:@"canvasSize"];
  [(TDLayerStackRenditionSpec *)self setPrimitiveCanvasSize:width, height];
  [(TDLayerStackRenditionSpec *)self didChangeValueForKey:@"canvasSize"];
  v8.width = width;
  v8.height = height;
  v6 = NSStringFromSize(v8);

  [(TDLayerStackRenditionSpec *)self setCanvasSizeString:v6];
}

- (CGSize)canvasSize
{
  [(TDLayerStackRenditionSpec *)self willAccessValueForKey:@"canvasSize"];
  [(TDLayerStackRenditionSpec *)self primitiveCanvasSize];
  v4 = v3;
  v6 = v5;
  [(TDLayerStackRenditionSpec *)self didAccessValueForKey:@"canvasSize"];
  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)awakeFromFetch
{
  v4.receiver = self;
  v4.super_class = TDLayerStackRenditionSpec;
  [(TDLayerStackRenditionSpec *)&v4 awakeFromFetch];
  v3 = NSSizeFromString([(TDLayerStackRenditionSpec *)self canvasSizeString]);
  [(TDLayerStackRenditionSpec *)self setPrimitiveCanvasSize:v3.width, v3.height];
}

- (void)prepareForDeletion
{
  v3.receiver = self;
  v3.super_class = TDLayerStackRenditionSpec;
  [(TDLayerStackRenditionSpec *)&v3 prepareForDeletion];
  if ([(TDLayerStackRenditionSpec *)self asset])
  {
    if ([objc_msgSend(-[TDLayerStackRenditionSpec asset](self "asset")] <= 1)
    {
      [-[TDLayerStackRenditionSpec managedObjectContext](self "managedObjectContext")];
    }
  }
}

- (CGSize)primitiveCanvasSize
{
  width = self->primitiveCanvasSize.width;
  height = self->primitiveCanvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end