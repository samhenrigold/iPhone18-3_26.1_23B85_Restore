@interface TDRecognitionObjectRenditionSpec
- (__n128)referenceOriginTransform;
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
- (void)setReferenceOriginTransform:(__n128)transform;
@end

@implementation TDRecognitionObjectRenditionSpec

- (__n128)referenceOriginTransform
{
  [self a11];
  v10 = v2;
  [self a21];
  v9 = v3;
  [self a31];
  v8 = v4;
  [self a41];
  v5.n128_u64[0] = __PAIR64__(v9, v10);
  v5.n128_u64[1] = __PAIR64__(v6, v8);
  v11 = v5;
  [self a12];
  [self a22];
  [self a32];
  [self a42];
  [self a13];
  [self a23];
  [self a33];
  [self a43];
  [self a14];
  [self a24];
  [self a34];
  [self a44];
  return v11;
}

- (void)setReferenceOriginTransform:(__n128)transform
{
  [self setA11:?];
  HIDWORD(v6) = a2.n128_u32[1];
  LODWORD(v6) = a2.n128_u32[1];
  [self setA21:v6];
  [self setA31:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  [self setA41:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  [self setA12:transform.n128_f64[0]];
  HIDWORD(v7) = transform.n128_u32[1];
  LODWORD(v7) = transform.n128_u32[1];
  [self setA22:v7];
  [self setA32:{COERCE_DOUBLE(__PAIR64__(transform.n128_u32[1], transform.n128_u32[2]))}];
  [self setA42:{COERCE_DOUBLE(__PAIR64__(transform.n128_u32[1], transform.n128_u32[3]))}];
  [self setA13:a4.n128_f64[0]];
  HIDWORD(v8) = a4.n128_u32[1];
  LODWORD(v8) = a4.n128_u32[1];
  [self setA23:v8];
  [self setA33:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  [self setA43:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  [self setA14:a5.n128_f64[0]];
  HIDWORD(v9) = a5.n128_u32[1];
  LODWORD(v9) = a5.n128_u32[1];
  [self setA24:v9];
  [self setA34:{COERCE_DOUBLE(__PAIR64__(a5.n128_u32[1], a5.n128_u32[2]))}];

  return [self setA44:{COERCE_DOUBLE(__PAIR64__(a5.n128_u32[1], a5.n128_u32[3]))}];
}

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v14 = 0;
  v7 = [(TDRecognitionObjectRenditionSpec *)self asset:compression];
  v8 = [v7 fileURLWithDocument:document];
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v8 options:2 error:0];
  v10 = [objc_alloc(MEMORY[0x277D02668]) initWithRawData:v9 pixelFormat:1145132097 layout:1014];
  [v10 setName:{objc_msgSend(v7, "name")}];
  [(TDRecognitionObjectRenditionSpec *)self referenceOriginTransform];
  [v10 setTransformation:?];
  [v10 setObjectVersion:{-[TDRecognitionObjectRenditionSpec version](self, "version")}];
  [v10 setCompressionType:2];

  if ([objc_msgSend(-[TDRecognitionObjectRenditionSpec production](self "production")])
  {
    v11 = [-[TDRecognitionObjectRenditionSpec production](self "production")];
  }

  else
  {
    if (![v8 getResourceValue:&v14 forKey:*MEMORY[0x277CBE918] error:0])
    {
      [v10 setName:{objc_msgSend(v7, "name")}];
      goto LABEL_6;
    }

    v11 = v14;
  }

  [v10 setUtiType:v11];
LABEL_6:
  v12 = [v10 CSIRepresentationWithCompression:1];

  return v12;
}

@end