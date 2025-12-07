@interface VNANFDMultiDetectorOriginalRequestInfo
+ (id)originatingRequestSpecifierToDetectorClassMap;
+ (id)requestClassNameFromRequestKey:(id)key;
+ (id)requestKeyFromRequest:(id)request;
+ (id)requestPropertiesFromRequestKey:(id)key;
@end

@implementation VNANFDMultiDetectorOriginalRequestInfo

+ (id)originatingRequestSpecifierToDetectorClassMap
{
  if (+[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap]::onceToken, &__block_literal_global_61_31026);
  }

  v3 = +[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap]::requestClassToMultiDetectorClassPerRequestRevision;

  return v3;
}

void __87__VNANFDMultiDetectorOriginalRequestInfo_originatingRequestSpecifierToDetectorClassMap__block_invoke(uint64_t a1, uint64_t a2)
{
  v44[39] = *MEMORY[0x1E69E9840];
  v42 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v43[0] = v42;
  v44[0] = objc_opt_class();
  v41 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841666 error:0];
  v43[1] = v41;
  v44[1] = objc_opt_class();
  v40 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841668 error:0];
  v43[2] = v40;
  v44[2] = objc_opt_class();
  v39 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3 error:0];
  v43[3] = v39;
  v44[3] = objc_opt_class();
  v38 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841669 error:0];
  v43[4] = v38;
  v44[4] = objc_opt_class();
  v37 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841667 error:0];
  v43[5] = v37;
  v44[5] = objc_opt_class();
  v36 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841670 error:0];
  v43[6] = v36;
  v44[6] = objc_opt_class();
  v35 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841671 error:0];
  v43[7] = v35;
  v44[7] = objc_opt_class();
  v34 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v43[8] = v34;
  v44[8] = objc_opt_class();
  v33 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v43[9] = v33;
  v44[9] = objc_opt_class();
  v32 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v43[10] = v32;
  v44[10] = objc_opt_class();
  v31 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841666 error:0];
  v43[11] = v31;
  v44[11] = objc_opt_class();
  v30 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841667 error:0];
  v43[12] = v30;
  v44[12] = objc_opt_class();
  v29 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v43[13] = v29;
  v44[13] = objc_opt_class();
  v28 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v43[14] = v28;
  v44[14] = objc_opt_class();
  v27 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:2 error:0];
  v43[15] = v27;
  v44[15] = objc_opt_class();
  v26 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v43[16] = v26;
  v44[16] = objc_opt_class();
  v25 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841666 error:0];
  v43[17] = v25;
  v44[17] = objc_opt_class();
  v24 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v43[18] = v24;
  v44[18] = objc_opt_class();
  v23 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v43[19] = v23;
  v44[19] = objc_opt_class();
  v22 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:2 error:0];
  v43[20] = v22;
  v44[20] = objc_opt_class();
  v21 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v43[21] = v21;
  v44[21] = objc_opt_class();
  v20 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841666 error:0];
  v43[22] = v20;
  v44[22] = objc_opt_class();
  v19 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v43[23] = v19;
  v44[23] = objc_opt_class();
  v18 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v43[24] = v18;
  v44[24] = objc_opt_class();
  v17 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v43[25] = v17;
  v44[25] = objc_opt_class();
  v16 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841666 error:0];
  v43[26] = v16;
  v44[26] = objc_opt_class();
  v15 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v43[27] = v15;
  v44[27] = objc_opt_class();
  v14 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v43[28] = v14;
  v44[28] = objc_opt_class();
  v13 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v43[29] = v13;
  v44[29] = objc_opt_class();
  v12 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v43[30] = v12;
  v44[30] = objc_opt_class();
  v2 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841664 error:0];
  v43[31] = v2;
  v44[31] = objc_opt_class();
  v3 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3737841665 error:0];
  v43[32] = v3;
  v44[32] = objc_opt_class();
  v4 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v43[33] = v4;
  v44[33] = objc_opt_class();
  v5 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:0];
  v43[34] = v5;
  v44[34] = objc_opt_class();
  v6 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:2 error:0];
  v43[35] = v6;
  v44[35] = objc_opt_class();
  v7 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:3 error:0];
  v43[36] = v7;
  v44[36] = objc_opt_class();
  v8 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:4 error:0];
  v43[37] = v8;
  v44[37] = objc_opt_class();
  v9 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:5 error:0];
  v43[38] = v9;
  v44[38] = objc_opt_class();
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:39];
  v11 = +[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap]::requestClassToMultiDetectorClassPerRequestRevision;
  +[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap]::requestClassToMultiDetectorClassPerRequestRevision = v10;
}

+ (id)requestPropertiesFromRequestKey:(id)key
{
  v3 = [key componentsSeparatedByString:@"_"];
  v4 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];

  return v4;
}

+ (id)requestClassNameFromRequestKey:(id)key
{
  v3 = [key componentsSeparatedByString:@"_"];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (id)requestKeyFromRequest:(id)request
{
  requestCopy = request;
  v5 = NSStringFromClass([requestCopy frameworkClass]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = requestCopy;
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "upperBodyOnly")}];
    v9 = [v7 initWithFormat:@"%@%@%@", v5, @"_", v8];

    v5 = v9;
    v10 = v5;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___VNANFDMultiDetectorOriginalRequestInfo;
    v10 = objc_msgSendSuper2(&v12, sel_requestKeyFromRequest_, requestCopy);
  }

  return v10;
}

@end