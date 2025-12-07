@interface UIImage(ClipUIServicesExtras)
+ (id)cps_imageNamed:()ClipUIServicesExtras;
- (id)cps_averageColorImage;
- (id)cps_imageWithNormalizedOrientation;
- (id)cps_resizedImageWithSize:()ClipUIServicesExtras;
- (void)cps_averageColorImage;
@end

@implementation UIImage(ClipUIServicesExtras)

+ (id)cps_imageNamed:()ClipUIServicesExtras
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  cps_clipUIServicesBundle = [v4 cps_clipUIServicesBundle];
  v7 = [v3 imageNamed:v5 inBundle:cps_clipUIServicesBundle withConfiguration:0];

  return v7;
}

- (id)cps_resizedImageWithSize:()ClipUIServicesExtras
{
  v6 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{a2, a3}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__UIImage_ClipUIServicesExtras__cps_resizedImageWithSize___block_invoke;
  v10[3] = &unk_278DD2968;
  v10[4] = self;
  *&v10[5] = a2;
  *&v10[6] = a3;
  v7 = [v6 imageWithActions:v10];
  v8 = [v7 imageWithRenderingMode:{objc_msgSend(self, "renderingMode")}];

  return v8;
}

- (id)cps_averageColorImage
{
  v51[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2050000000;
    v5 = getCIImageClass_softClass;
    v48 = getCIImageClass_softClass;
    if (!getCIImageClass_softClass)
    {
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __getCIImageClass_block_invoke;
      v43 = &unk_278DD24C0;
      v44 = &v45;
      __getCIImageClass_block_invoke(&v40, a2, a3, a4);
      v5 = v46[3];
    }

    v6 = v5;
    _Block_object_dispose(&v45, 8);
    selfCopy = self;
    v8 = [v5 imageWithCGImage:{objc_msgSend(self, "CGImage")}];
    [v8 extent];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2050000000;
    v17 = getCIVectorClass_softClass;
    v48 = getCIVectorClass_softClass;
    if (!getCIVectorClass_softClass)
    {
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __getCIVectorClass_block_invoke;
      v43 = &unk_278DD24C0;
      v44 = &v45;
      __getCIVectorClass_block_invoke(&v40);
      v17 = v46[3];
    }

    v18 = v17;
    _Block_object_dispose(&v45, 8);
    v53.origin.x = v10;
    v53.origin.y = v12;
    v53.size.width = v14;
    v53.size.height = v16;
    MinX = CGRectGetMinX(v53);
    v54.origin.x = v10;
    v54.origin.y = v12;
    v54.size.width = v14;
    v54.size.height = v16;
    MinY = CGRectGetMinY(v54);
    v55.origin.x = v10;
    v55.origin.y = v12;
    v55.size.width = v14;
    v55.size.height = v16;
    Width = CGRectGetWidth(v55);
    v56.origin.x = v10;
    v56.origin.y = v12;
    v56.size.width = v14;
    v56.size.height = v16;
    v22 = [v17 vectorWithX:MinX Y:MinY Z:Width W:CGRectGetHeight(v56)];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2050000000;
    v23 = getCIFilterClass_softClass;
    v48 = getCIFilterClass_softClass;
    if (!getCIFilterClass_softClass)
    {
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __getCIFilterClass_block_invoke;
      v43 = &unk_278DD24C0;
      v44 = &v45;
      __getCIFilterClass_block_invoke(&v40);
      v23 = v46[3];
    }

    v24 = v23;
    _Block_object_dispose(&v45, 8);
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v25 = getkCIInputImageKeySymbolLoc_ptr;
    v48 = getkCIInputImageKeySymbolLoc_ptr;
    if (!getkCIInputImageKeySymbolLoc_ptr)
    {
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __getkCIInputImageKeySymbolLoc_block_invoke;
      v43 = &unk_278DD24C0;
      v44 = &v45;
      v26 = CoreImageLibrary();
      v27 = dlsym(v26, "kCIInputImageKey");
      *(v44[1] + 24) = v27;
      getkCIInputImageKeySymbolLoc_ptr = *(v44[1] + 24);
      v25 = v46[3];
    }

    _Block_object_dispose(&v45, 8);
    if (!v25)
    {
      [UIImage(ClipUIServicesExtras) cps_averageColorImage];
    }

    v28 = *v25;
    v51[0] = v8;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v29 = getkCIInputExtentKeySymbolLoc_ptr;
    v48 = getkCIInputExtentKeySymbolLoc_ptr;
    v49 = v28;
    if (!getkCIInputExtentKeySymbolLoc_ptr)
    {
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __getkCIInputExtentKeySymbolLoc_block_invoke;
      v43 = &unk_278DD24C0;
      v44 = &v45;
      v30 = CoreImageLibrary();
      v31 = dlsym(v30, "kCIInputExtentKey");
      *(v44[1] + 24) = v31;
      getkCIInputExtentKeySymbolLoc_ptr = *(v44[1] + 24);
      v29 = v46[3];
    }

    _Block_object_dispose(&v45, 8);
    if (!v29)
    {
      [UIImage(ClipUIServicesExtras) cps_averageColorImage];
    }

    v50 = *v29;
    v51[1] = v22;
    v32 = MEMORY[0x277CBEAC0];
    v33 = v50;
    v34 = [v32 dictionaryWithObjects:v51 forKeys:&v49 count:2];
    v35 = [v23 filterWithName:@"CIAreaAverage" withInputParameters:v34];

    v36 = MEMORY[0x277D755B8];
    outputImage = [v35 outputImage];
    v38 = [v36 imageWithCIImage:outputImage];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)cps_imageWithNormalizedOrientation
{
  if ([self imageOrientation])
  {
    v2 = objc_alloc_init(MEMORY[0x277D75568]);
    [v2 setScale:1.0];
    v3 = objc_alloc(MEMORY[0x277D75560]);
    [self size];
    v4 = [v3 initWithSize:v2 format:?];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__UIImage_ClipUIServicesExtras__cps_imageWithNormalizedOrientation__block_invoke;
    v7[3] = &unk_278DD2990;
    v7[4] = self;
    selfCopy = [v4 imageWithActions:v7];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)cps_averageColorImage
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkCIInputImageKey(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"CPSUIImageExtras.m" lineNumber:12 description:{@"%s", dlerror()}];

  __break(1u);
}

@end