@interface CRImage(CoreRecognition)
- (void)imageByCroppingTextFeature:()CoreRecognition correctedBoundingBox:padding:networkInputSize:;
@end

@implementation CRImage(CoreRecognition)

- (void)imageByCroppingTextFeature:()CoreRecognition correctedBoundingBox:padding:networkInputSize:
{
  v9 = a7;
  v10 = a8;
  [v14 vImage];
  if ([GeometricCutTools derotateContentsOf:"derotateContentsOf:inImage:andOutputTo:withPadding:networkInputSize:" inImage:? andOutputTo:? withPadding:? networkInputSize:?])
  {
    v11 = objc_alloc(MEMORY[0x277D70088]);
    v14[0] = *v15;
    v14[1] = v16;
    v12 = [v11 initWithVImageBuffer:? inColorSpace:?];
    free(v15[0]);
  }

  else
  {
    NSLog(&cfstr_CrimageImageby.isa, v9);
    v12 = 0;
  }

  return v12;
}

@end