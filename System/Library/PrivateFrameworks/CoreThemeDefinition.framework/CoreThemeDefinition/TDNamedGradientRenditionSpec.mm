@interface TDNamedGradientRenditionSpec
- (CGPoint)gradientEndPoint;
- (CGPoint)gradientStartPoint;
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (void)setGradientEndPoint:(CGPoint)point;
- (void)setGradientStartPoint:(CGPoint)point;
@end

@implementation TDNamedGradientRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v32 = *MEMORY[0x277D85DE8];
  production = [objc_msgSend(-[TDNamedGradientRenditionSpec production](self production];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  colorStops = [(TDNamedGradientRenditionSpec *)self colorStops];
  v11 = [colorStops countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(colorStops);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        [v8 addObject:{objc_msgSend(v15, "colorName")}];
        [v9 addObject:{objc_msgSend(v15, "stop")}];
      }

      v12 = [colorStops countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  v16 = objc_alloc(MEMORY[0x277D02668]);
  v17 = [-[TDNamedGradientRenditionSpec gradientType](self "gradientType")];
  [(TDNamedGradientRenditionSpec *)self gradientStartPoint];
  v19 = v18;
  v21 = v20;
  [(TDNamedGradientRenditionSpec *)self gradientEndPoint];
  v24 = [v16 initWithGradientNamed:production type:v17 startPoint:v8 endPoint:v9 colorNames:v19 colorStops:{v21, v22, v23}];
  [v24 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  [v24 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  [v24 setPreserveForArchiveOnly:{-[TDNamedGradientRenditionSpec preserveForArchiveOnly](self, "preserveForArchiveOnly")}];
  v25 = [v24 CSIRepresentationWithCompression:0];

  return v25;
}

- (CGPoint)gradientStartPoint
{
  [-[TDNamedGradientRenditionSpec gradientStartX](self "gradientStartX")];
  v4 = v3;
  [-[TDNamedGradientRenditionSpec gradientStartY](self "gradientStartY")];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)setGradientStartPoint:(CGPoint)point
{
  y = point.y;
  *&point.x = point.x;
  -[TDNamedGradientRenditionSpec setGradientStartX:](self, "setGradientStartX:", [MEMORY[0x277CCABB0] numberWithFloat:point.x]);
  *&v5 = y;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];

  [(TDNamedGradientRenditionSpec *)self setGradientStartY:v6];
}

- (CGPoint)gradientEndPoint
{
  [-[TDNamedGradientRenditionSpec gradientEndX](self "gradientEndX")];
  v4 = v3;
  [-[TDNamedGradientRenditionSpec gradientEndY](self "gradientEndY")];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)setGradientEndPoint:(CGPoint)point
{
  y = point.y;
  *&point.x = point.x;
  -[TDNamedGradientRenditionSpec setGradientEndX:](self, "setGradientEndX:", [MEMORY[0x277CCABB0] numberWithFloat:point.x]);
  *&v5 = y;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];

  [(TDNamedGradientRenditionSpec *)self setGradientEndY:v6];
}

@end