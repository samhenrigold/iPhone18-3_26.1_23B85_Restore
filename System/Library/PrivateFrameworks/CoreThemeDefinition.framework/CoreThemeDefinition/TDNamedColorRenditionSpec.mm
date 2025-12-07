@interface TDNamedColorRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (void)setColorPropertiesFromCGColor:(CGColor *)color;
@end

@implementation TDNamedColorRenditionSpec

- (void)setColorPropertiesFromCGColor:(CGColor *)color
{
  if (TDColorSpaceGetExtendedRangeSRGB___once != -1)
  {
    TDColorSpaceGetExtendedRangeSRGB_cold_1();
  }

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(TDColorSpaceGetExtendedRangeSRGB_sExtendedRangeSRGBColorSpace, kCGRenderingIntentRelativeColorimetric, color, 0);
  [(TDNamedColorRenditionSpec *)self willChangeValueForKey:@"colorSpaceID"];
  [(TDNamedColorRenditionSpec *)self setColorSpaceID:4];
  [(TDNamedColorRenditionSpec *)self didChangeValueForKey:@"colorSpaceID"];
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  NumberOfComponents = CGColorGetNumberOfComponents(CopyByMatchingToColorSpace);
  v8 = 1.0;
  if (NumberOfComponents > 1)
  {
    if (NumberOfComponents == 2)
    {
      v9 = *Components;
      v8 = Components[1];
      goto LABEL_13;
    }

    if (NumberOfComponents == 3)
    {
      v11 = *Components;
      v10 = Components[1];
      v9 = Components[2];
      goto LABEL_14;
    }

LABEL_10:
    v11 = *Components;
    v10 = Components[1];
    v9 = Components[2];
    v8 = Components[3];
    goto LABEL_14;
  }

  if (!NumberOfComponents)
  {
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    goto LABEL_14;
  }

  if (NumberOfComponents != 1)
  {
    goto LABEL_10;
  }

  v9 = *Components;
LABEL_13:
  v10 = v9;
  v11 = v9;
LABEL_14:
  [(TDNamedColorRenditionSpec *)self willChangeValueForKey:@"red"];
  [(TDNamedColorRenditionSpec *)self willChangeValueForKey:@"green"];
  [(TDNamedColorRenditionSpec *)self willChangeValueForKey:@"blue"];
  [(TDNamedColorRenditionSpec *)self willChangeValueForKey:@"alpha"];
  [(TDNamedColorRenditionSpec *)self setRed:v11];
  [(TDNamedColorRenditionSpec *)self setGreen:v10];
  [(TDNamedColorRenditionSpec *)self setBlue:v9];
  [(TDNamedColorRenditionSpec *)self setAlpha:v8];
  [(TDNamedColorRenditionSpec *)self didChangeValueForKey:@"red"];
  [(TDNamedColorRenditionSpec *)self didChangeValueForKey:@"green"];
  [(TDNamedColorRenditionSpec *)self didChangeValueForKey:@"blue"];
  [(TDNamedColorRenditionSpec *)self didChangeValueForKey:@"alpha"];

  CGColorRelease(CopyByMatchingToColorSpace);
}

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v22[2] = *MEMORY[0x277D85DE8];
  production = [objc_msgSend(-[TDNamedColorRenditionSpec production](self production];
  if (([(TDNamedColorRenditionSpec *)self colorSpaceID]| 4) == 6)
  {
    v8 = MEMORY[0x277CCABB0];
    [(TDNamedColorRenditionSpec *)self red];
    v22[0] = [v8 numberWithDouble:?];
    v9 = MEMORY[0x277CCABB0];
    [(TDNamedColorRenditionSpec *)self alpha];
    v22[1] = [v9 numberWithDouble:?];
    v10 = MEMORY[0x277CBEA60];
    v11 = v22;
    v12 = 2;
  }

  else
  {
    v13 = MEMORY[0x277CCABB0];
    [(TDNamedColorRenditionSpec *)self red];
    v21[0] = [v13 numberWithDouble:?];
    v14 = MEMORY[0x277CCABB0];
    [(TDNamedColorRenditionSpec *)self green];
    v21[1] = [v14 numberWithDouble:?];
    v15 = MEMORY[0x277CCABB0];
    [(TDNamedColorRenditionSpec *)self blue];
    v21[2] = [v15 numberWithDouble:?];
    v16 = MEMORY[0x277CCABB0];
    [(TDNamedColorRenditionSpec *)self alpha];
    v21[3] = [v16 numberWithDouble:?];
    v10 = MEMORY[0x277CBEA60];
    v11 = v21;
    v12 = 4;
  }

  v17 = [v10 arrayWithObjects:v11 count:v12];
  v18 = [objc_alloc(MEMORY[0x277D02668]) initWithColorNamed:production colorSpaceID:-[TDNamedColorRenditionSpec colorSpaceID](self components:"colorSpaceID") linkedToSystemColorWithName:{v17, -[TDNamedColorRenditionSpec systemColorName](self, "systemColorName")}];
  [v18 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  [v18 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  [v18 setPreserveForArchiveOnly:{-[TDNamedColorRenditionSpec preserveForArchiveOnly](self, "preserveForArchiveOnly")}];
  v19 = [v18 CSIRepresentationWithCompression:0];

  return v19;
}

@end