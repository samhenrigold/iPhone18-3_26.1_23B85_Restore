@interface CIInpaintFilter
+ (BOOL)dumpInpaintImages;
+ (NSNumber)defaultMaskDilateSize;
+ (NSNumber)defaultMaskToSurroundRatio;
+ (NSNumber)defaultRefinementMultipass;
+ (double)getMaskMarginFactor;
+ (double)getRefineQualityBar;
+ (double)smallBlurSize;
+ (id)customAttributes;
+ (id)defaultExcludeMaskSurroundMultiplier;
+ (id)defaultFeatherAmount;
+ (id)defaultRefinementModel;
+ (id)loadModel:(id)model;
+ (id)loadModelConfig;
+ (id)loadRefinementModel:(id)model;
+ (id)refine:(id)refine hires:(id)hires mask:(id)mask colorSpace:(CGColorSpace *)space orientation:(int)orientation hint:(id)hint scale:(float)scale dumpImageIndex:(int)self0;
+ (id)repairTile:(id)tile mask:(id)mask colorSpace:(CGColorSpace *)space orientation:(int)orientation hint:(id)hint version:(int)version scale:(float)scale dumpImageIndex:(int)self0 dumpTileIndex:(int)self1;
+ (id)userDefaults;
+ (int)modelDimensionForVersion:(int)version hint:(id)hint;
- (CGRect)outputMaskSurroundExtent;
- (double)maskCoverage;
- (double)maskToSurroundRatio;
- (float)dilateSize;
- (float)estimateFinalQuality;
- (float)featherAmount;
- (id)blendBack:(id)back mask:(id)mask;
- (id)outputImage;
- (id)outputImageAndRect:(CGRect *)rect strategy:(id *)strategy allowDump:(BOOL)dump;
- (id)outputStrategy;
@end

@implementation CIInpaintFilter

+ (id)userDefaults
{
  if ((atomic_load_explicit(&qword_18D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_18D50))
  {
    qword_18D48 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.coreimage"];
    __cxa_guard_release(&qword_18D50);
  }

  v2 = qword_18D48;

  return v2;
}

+ (double)smallBlurSize
{
  if ((atomic_load_explicit(&qword_18D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_18D60))
  {
    qword_18D58 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.coreimage"];
    __cxa_guard_release(&qword_18D60);
  }

  dictionaryRepresentation = [qword_18D58 dictionaryRepresentation];
  v3 = [dictionaryRepresentation objectForKeyedSubscript:@"CIInpaintFilter.smallBlurSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v4 = 2.0, (objc_opt_isKindOfClass()))
  {
    doubleValue = [v3 doubleValue];
    v7 = v6;
    v9 = sub_A028(doubleValue, v8);
    v4 = fmin(fmax(v7, 0.0), 10.0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [objc_opt_class() description];
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = v4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.smallBlurSize default set to %g.", &v12, 0x16u);
    }
  }

  return v4;
}

+ (NSNumber)defaultRefinementMultipass
{
  userDefaults = [self userDefaults];
  dictionaryRepresentation = [userDefaults dictionaryRepresentation];

  v4 = [dictionaryRepresentation objectForKeyedSubscript:@"CIInpaintFilter.inputRefinementMultipass"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 BOOLValue]);

    v8 = sub_A028(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v12 = 138543618;
      v13 = v9;
      v14 = 1024;
      bOOLValue = [v5 BOOLValue];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputRefinementMultipass default set to %d.", &v12, 0x12u);
    }

    v4 = v5;
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (NSNumber)defaultMaskDilateSize
{
  userDefaults = [self userDefaults];
  dictionaryRepresentation = [userDefaults dictionaryRepresentation];

  v4 = [dictionaryRepresentation objectForKeyedSubscript:@"CIInpaintFilter.inputMaskDilateSize"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intValue]);

    v8 = sub_A028(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v12 = 138543618;
      v13 = v9;
      v14 = 1024;
      intValue = [v5 intValue];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputMaskDilateSize default set to %d.", &v12, 0x12u);
    }

    v4 = v5;
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)defaultFeatherAmount
{
  userDefaults = [self userDefaults];
  dictionaryRepresentation = [userDefaults dictionaryRepresentation];

  v4 = [dictionaryRepresentation objectForKeyedSubscript:@"CIInpaintFilter.inputFeatherAmount"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [v4 floatValue];
    v5 = [NSNumber numberWithFloat:?];

    v8 = sub_A028(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      [v5 floatValue];
      v13 = 138543618;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputFeatherAmount default set to %f.", &v13, 0x16u);
    }

    v4 = v5;
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (NSNumber)defaultMaskToSurroundRatio
{
  userDefaults = [self userDefaults];
  dictionaryRepresentation = [userDefaults dictionaryRepresentation];

  v4 = [dictionaryRepresentation objectForKeyedSubscript:@"CIInpaintFilter.inputMaskToSurroundRatio"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [v4 floatValue];
    v5 = [NSNumber numberWithFloat:?];

    v8 = sub_A028(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      [v5 floatValue];
      v13 = 138543618;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputMaskToSurroundRatio default set to %f.", &v13, 0x16u);
    }

    v4 = v5;
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)defaultExcludeMaskSurroundMultiplier
{
  userDefaults = [self userDefaults];
  dictionaryRepresentation = [userDefaults dictionaryRepresentation];

  v4 = [dictionaryRepresentation objectForKeyedSubscript:@"CIInpaintFilter.inputExcludeMaskSurroundMultiplier"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [v4 floatValue];
    v5 = [NSNumber numberWithFloat:?];

    v8 = sub_A028(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      [v5 floatValue];
      v13 = 138543618;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputExcludeMaskSurroundMultiplier default set to %f.", &v13, 0x16u);
    }

    v4 = v5;
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)defaultRefinementModel
{
  userDefaults = [self userDefaults];
  dictionaryRepresentation = [userDefaults dictionaryRepresentation];

  v4 = [dictionaryRepresentation objectForKeyedSubscript:@"CIInpaintFilter.inputRefinementModel"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 BOOLValue]);

    v8 = sub_A028(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v12 = 138543618;
      v13 = v9;
      v14 = 1024;
      bOOLValue = [v5 BOOLValue];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.inputRefinementModel default set to %d.", &v12, 0x12u);
    }

    v4 = v5;
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)dumpInpaintImages
{
  userDefaults = [self userDefaults];
  dictionaryRepresentation = [userDefaults dictionaryRepresentation];

  v4 = [dictionaryRepresentation objectForKeyedSubscript:@"dumpInpaintImages"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 hasPrefix:@"/"] & 1) != 0 || (objc_msgSend(v4, "isEqual:", &__kCFBooleanTrue) & 1) != 0 || (objc_msgSend(v4, "isEqual:", &off_152D8))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:@"1"];
  }

  return v5;
}

+ (double)getRefineQualityBar
{
  if ((atomic_load_explicit(&qword_18D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_18D70))
  {
    qword_18D68 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.coreimage"];
    __cxa_guard_release(&qword_18D70);
  }

  dictionaryRepresentation = [qword_18D68 dictionaryRepresentation];
  v3 = [dictionaryRepresentation objectForKeyedSubscript:@"refineQualityBar"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v4 = 0.75, (objc_opt_isKindOfClass()))
  {
    doubleValue = [v3 doubleValue];
    v7 = v6;
    v9 = sub_A028(doubleValue, v8);
    v4 = fmin(fmax(v7, 0.5), 1.0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [objc_opt_class() description];
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = v4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.refineQualityBar default set to %g.", &v12, 0x16u);
    }
  }

  return v4;
}

+ (double)getMaskMarginFactor
{
  if ((atomic_load_explicit(&qword_18D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_18D80))
  {
    qword_18D78 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.coreimage"];
    __cxa_guard_release(&qword_18D80);
  }

  dictionaryRepresentation = [qword_18D78 dictionaryRepresentation];
  v3 = [dictionaryRepresentation objectForKeyedSubscript:@"maskMarginFactor"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    doubleValue = [v3 doubleValue];
    v6 = v5;
    v8 = sub_A028(doubleValue, v7);
    v9 = fmin(fmax(v6, 1.0), 1.5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [objc_opt_class() description];
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintModel.maskMarginFactor default set to %g.", &v12, 0x16u);
    }
  }

  else
  {
    v9 = 1.05;
  }

  return v9;
}

+ (id)customAttributes
{
  v53[0] = @"inputVersion";
  v51[0] = kCIAttributeType;
  v51[1] = kCIAttributeMin;
  v52[0] = kCIAttributeTypeInteger;
  v52[1] = &off_152F0;
  v51[2] = kCIAttributeMax;
  v51[3] = kCIAttributeDefault;
  v52[2] = &off_152D8;
  v52[3] = &off_152D8;
  v32 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:4];
  v54[0] = v32;
  v53[1] = @"inputMaskToSurroundRatio";
  v49[0] = kCIAttributeType;
  v49[1] = kCIAttributeMin;
  v50[0] = kCIAttributeTypeScalar;
  v50[1] = &off_15380;
  v50[2] = &off_15390;
  v49[2] = kCIAttributeMax;
  v49[3] = kCIAttributeDefault;
  defaultMaskToSurroundRatio = [self defaultMaskToSurroundRatio];
  v4 = &off_153A0;
  v31 = defaultMaskToSurroundRatio;
  if (defaultMaskToSurroundRatio)
  {
    v4 = defaultMaskToSurroundRatio;
  }

  v50[3] = v4;
  v30 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
  v54[1] = v30;
  v53[2] = @"inputMaskCoverage";
  v47[0] = kCIAttributeType;
  v47[1] = kCIAttributeMin;
  v48[0] = kCIAttributeTypeScalar;
  v48[1] = &off_153B0;
  v47[2] = kCIAttributeMax;
  v47[3] = kCIAttributeDefault;
  v48[2] = &off_15390;
  v48[3] = &off_15390;
  v29 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
  v54[2] = v29;
  v53[3] = @"inputExcludeMaskSurroundMultiplier";
  v45[0] = kCIAttributeType;
  v45[1] = kCIAttributeMin;
  v46[0] = kCIAttributeTypeScalar;
  v46[1] = &off_15390;
  v46[2] = &off_153C0;
  v45[2] = kCIAttributeMax;
  v45[3] = kCIAttributeDefault;
  defaultExcludeMaskSurroundMultiplier = [self defaultExcludeMaskSurroundMultiplier];
  v6 = &off_153D0;
  v28 = defaultExcludeMaskSurroundMultiplier;
  if (defaultExcludeMaskSurroundMultiplier)
  {
    v6 = defaultExcludeMaskSurroundMultiplier;
  }

  v46[3] = v6;
  v27 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];
  v54[3] = v27;
  v53[4] = @"inputMultipass";
  v43[0] = kCIAttributeType;
  v43[1] = kCIAttributeMin;
  v44[0] = kCIAttributeTypeInteger;
  v44[1] = &off_152F0;
  v43[2] = kCIAttributeMax;
  v43[3] = kCIAttributeDefault;
  v44[2] = &off_15308;
  v44[3] = &off_152F0;
  v26 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];
  v54[4] = v26;
  v53[5] = @"inputMaskDilateSize";
  v41[0] = kCIAttributeType;
  v41[1] = kCIAttributeMin;
  v42[0] = kCIAttributeTypeInteger;
  v42[1] = &off_152F0;
  v42[2] = &off_15320;
  v41[2] = kCIAttributeMax;
  v41[3] = kCIAttributeDefault;
  v7 = +[CIInpaintFilter defaultMaskDilateSize];
  v25 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &off_152F0;
  }

  v42[3] = v8;
  v24 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
  v54[5] = v24;
  v53[6] = @"inputTileProgressive";
  v39[0] = kCIAttributeType;
  v39[1] = kCIAttributeMin;
  v40[0] = kCIAttributeTypeBoolean;
  v40[1] = &__kCFBooleanFalse;
  v39[2] = kCIAttributeMax;
  v39[3] = kCIAttributeDefault;
  v40[2] = &__kCFBooleanTrue;
  v40[3] = &__kCFBooleanFalse;
  v23 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
  v54[6] = v23;
  v53[7] = @"inputRefinementModel";
  v37 = kCIAttributeDefault;
  defaultRefinementModel = [self defaultRefinementModel];
  v22 = defaultRefinementModel;
  if (defaultRefinementModel)
  {
    v10 = defaultRefinementModel;
  }

  else
  {
    v10 = &__kCFBooleanTrue;
  }

  v38 = v10;
  v21 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v54[7] = v21;
  v53[8] = @"inputRefinementMultipass";
  v35[0] = kCIAttributeType;
  v35[1] = kCIAttributeMin;
  v36[0] = kCIAttributeTypeBoolean;
  v36[1] = &__kCFBooleanFalse;
  v36[2] = &__kCFBooleanTrue;
  v35[2] = kCIAttributeMax;
  v35[3] = kCIAttributeDefault;
  defaultRefinementMultipass = [self defaultRefinementMultipass];
  v12 = defaultRefinementMultipass;
  if (defaultRefinementMultipass)
  {
    v13 = defaultRefinementMultipass;
  }

  else
  {
    v13 = &__kCFBooleanTrue;
  }

  v36[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
  v54[8] = v14;
  v53[9] = @"inputFeatherAmount";
  v33[0] = kCIAttributeType;
  v33[1] = kCIAttributeMin;
  v34[0] = kCIAttributeTypeScalar;
  v34[1] = &off_153B0;
  v34[2] = &off_153E0;
  v33[2] = kCIAttributeMax;
  v33[3] = kCIAttributeDefault;
  defaultFeatherAmount = [self defaultFeatherAmount];
  v16 = defaultFeatherAmount;
  v17 = &off_15338;
  if (defaultFeatherAmount)
  {
    v17 = defaultFeatherAmount;
  }

  v34[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];
  v54[9] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:10];

  return v19;
}

+ (id)loadModelConfig
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3FCC;
  block[3] = &unk_144E0;
  block[4] = self;
  if (qword_18D88 != -1)
  {
    dispatch_once(&qword_18D88, block);
  }

  v2 = qword_18D90;

  return v2;
}

+ (id)loadModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = modelCopy;
LABEL_14:
    v11 = v7;
    goto LABEL_18;
  }

  if (modelCopy)
  {
    v8 = sub_A028(isKindOfClass, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      sub_B690();
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_4450;
    v22[3] = &unk_144E0;
    v22[4] = self;
    if (qword_18DA0 != -1)
    {
      dispatch_once(&qword_18DA0, v22);
    }

    v7 = qword_18D98;
    goto LABEL_14;
  }

  v9 = modelCopy;
  loadModelConfig = [self loadModelConfig];
  v23 = 0;
  v11 = [MLModel modelWithContentsOfURL:v9 configuration:loadModelConfig error:&v23];
  v12 = v23;

  v13 = [v11 valueForKeyPath:@"modelDescription.metadata.MLModelDescriptionKey"];
  v15 = v13;
  if (v11)
  {
    v16 = sub_A028(v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [objc_opt_class() description];
      path = [v9 path];
      *buf = 138543874;
      v25 = v17;
      v26 = 2114;
      v27 = v15;
      v28 = 2114;
      v29 = path;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintFilter using inpaint model %{public}@ at path: %{public}@.", buf, 0x20u);
    }
  }

  else
  {
    v16 = sub_A028(v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = [objc_opt_class() description];
      path2 = [v9 path];
      sub_B6D4(v19, path2, buf);
    }
  }

LABEL_18:

  return v11;
}

+ (id)loadRefinementModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = modelCopy;
  if ((isKindOfClass & 1) == 0)
  {
    if (modelCopy == &__kCFBooleanFalse || modelCopy == &off_152F0)
    {
      v8 = 0;
      goto LABEL_12;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4904;
    block[3] = &unk_144E0;
    block[4] = self;
    if (qword_18DB0 != -1)
    {
      dispatch_once(&qword_18DB0, block);
    }

    v6 = qword_18DA8;
  }

  v8 = v6;
LABEL_12:

  return v8;
}

- (double)maskToSurroundRatio
{
  inputMaskToSurroundRatio = self->inputMaskToSurroundRatio;
  if (inputMaskToSurroundRatio)
  {
    [(NSNumber *)inputMaskToSurroundRatio doubleValue];
  }

  else
  {
    v3 = 0.25;
  }

  return fmin(fmax(v3, 0.1), 1.0);
}

- (double)maskCoverage
{
  inputMaskCoverage = self->inputMaskCoverage;
  v3 = 1.0;
  if (inputMaskCoverage)
  {
    [(NSNumber *)inputMaskCoverage doubleValue];
  }

  return fmin(fmax(v3, 0.0), 1.0);
}

- (float)featherAmount
{
  inputFeatherAmount = self->inputFeatherAmount;
  if (inputFeatherAmount)
  {
    [(NSNumber *)inputFeatherAmount floatValue];
  }

  else
  {
    v3 = 2.0;
  }

  return fminf(fmaxf(v3, 0.0), 10.0);
}

- (float)dilateSize
{
  inputMaskDilateSize = self->inputMaskDilateSize;
  v3 = 0.0;
  if (inputMaskDilateSize)
  {
    [(NSNumber *)inputMaskDilateSize floatValue];
  }

  return fminf(fmaxf(v3, 0.0), 500.0);
}

+ (int)modelDimensionForVersion:(int)version hint:(id)hint
{
  hintCopy = hint;
  if (version)
  {
    if (version == 1)
    {
      v6 = [CIInpaintFilter loadModel:hintCopy];
      v7 = sub_4E4C(v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 512;
  }

  return v7;
}

+ (id)repairTile:(id)tile mask:(id)mask colorSpace:(CGColorSpace *)space orientation:(int)orientation hint:(id)hint version:(int)version scale:(float)scale dumpImageIndex:(int)self0 dumpTileIndex:(int)self1
{
  v12 = *&version;
  tileCopy = tile;
  maskCopy = mask;
  hintCopy = hint;
  v91 = hintCopy;
  v18 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
  space = v18;
  if (space)
  {
    spaceCopy = space;
  }

  else
  {
    spaceCopy = v18;
  }

  v90 = spaceCopy;
  v20 = &ApplyOldInpaintModel__metaData;
  v21 = [CIInpaintFilter modelDimensionForVersion:v12 hint:hintCopy];
  v22 = [maskCopy imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&off_15410];

  if (v12 != 1)
  {
    if (v12)
    {
      imageByInsertingIntermediate = [tileCopy imageByInsertingIntermediate];
      goto LABEL_22;
    }

    v88 = [NSBundle bundleForClass:objc_opt_class()];
    if (hintCopy)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v25 = hintCopy;
LABEL_15:
        v91 = v25;
        v26 = [v88 pathForResource:? ofType:?];
        v53 = [CIIF_EspressoWrapper cachedEspressoWrapper:v26];
        v27 = v53;
        if (v53)
        {
          v55 = sub_A028(v53, v54);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [objc_opt_class() description];
            *buf = 138543618;
            v100 = v56;
            v101 = 2114;
            v102 = v26;
            _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "%{public}@: CIInpaintFilter using v0 inpaint model at path: %{public}@.", buf, 0x16u);
          }
        }

        else
        {
          v55 = sub_A028(0, v54);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v57 = [objc_opt_class() description];
            sub_B800(v57, v26, buf);
          }
        }

        imageByInsertingIntermediate = [ApplyOldInpaintModel apply:tileCopy mask:v22 tileSize:v21 model:v27];
        goto LABEL_21;
      }

      v52 = sub_A028(isKindOfClass, v24);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        sub_B7BC();
      }
    }

    v25 = @"inp_gen_eds2_00_q16";
    goto LABEL_15;
  }

  v88 = [CIInpaintFilter loadModel:hintCopy];
  v26 = [tileCopy imageByColorMatchingWorkingSpaceToColorSpace:v90];
  v20 = &CGAffineTransformMakeScale_ptr;
  v27 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_pre (__sample s, __sample mask) { float m = (mask.r > 0.01) ? 1.0 : 0.0 return vec4(0.5 - m, (clamp(s.rgb, 0.0, 1.0)*2.0 - 1.0)*(1.0 - m)); }"];;
  [v26 extent];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v98[0] = v26;
  v98[1] = v22;
  v36 = [NSArray arrayWithObjects:v98 count:2];
  v37 = [v27 applyWithExtent:v36 arguments:{v29, v31, v33, v35}];

  v96[0] = @"inputModel";
  v96[1] = @"_logName";
  v97[0] = v88;
  v97[1] = @"CIInpaintRepair";
  v38 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];
  v39 = [v37 imageByApplyingFilter:@"CICoreMLModelFilter" withInputParameters:v38];

  v40 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_post (__sample s) __attribute__((preserves_opacity)) { return vec4((s.rgb+1.0)/2.0, s.a) }"];;
  [v39 extent];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v95 = v39;
  v49 = [NSArray arrayWithObjects:&v95 count:1];
  v50 = [v40 applyWithExtent:v49 arguments:{v42, v44, v46, v48}];

  imageByInsertingIntermediate = [v50 imageByColorMatchingColorSpaceToWorkingSpace:v90];

LABEL_21:
LABEL_22:
  if (index)
  {
    v58 = sub_58F8(index, tileIndex, "inpaint");
    LODWORD(v20) = llroundf(scale * 100.0);
    v59 = [NSString stringWithFormat:@"%@_inrgb_scale%d.png", v58, v20];
    v60 = sub_59F8(v22);
    v61 = tileCopy;
    v62 = v60;
    [v61 extent];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    [v62 extent];
    v107.origin.x = v71;
    v107.origin.y = v72;
    v107.size.width = v73;
    v107.size.height = v74;
    v105.origin.x = v64;
    v105.origin.y = v66;
    v105.size.width = v68;
    v105.size.height = v70;
    v106 = CGRectIntersection(v105, v107);
    x = v106.origin.x;
    y = v106.origin.y;
    width = v106.size.width;
    height = v106.size.height;
    if (CGRectIsEmpty(v106))
    {
      v79 = +[CIImage emptyImage];
    }

    else
    {
      v80 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_timesMask (__sample a, __sample b) { return a * b.r }"];;
      v103[0] = v61;
      v103[1] = v62;
      v81 = [NSArray arrayWithObjects:v103 count:2];
      v79 = [v80 applyWithExtent:v81 arguments:{x, y, width, height}];
    }

    sub_5B28(v79, v90, v59, orientation);
    v82 = [NSString stringWithFormat:@"%@_inmask_scale%d.png", v58, v20];

    sub_5D84(v22, v82, orientation);
    v93[0] = kCIInputBackgroundImageKey;
    v93[1] = kCIInputMaskImageKey;
    v94[0] = v61;
    v94[1] = v22;
    v83 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:2];
    v84 = [imageByInsertingIntermediate imageByApplyingFilter:@"CIBlendWithRedMask" withInputParameters:v83];

    v85 = [NSString stringWithFormat:@"%@_outblend_scale%d.png", v58, v20];

    sub_5B28(v84, v90, v85, orientation);
  }

  CGColorSpaceRelease(space);

  return imageByInsertingIntermediate;
}

+ (id)refine:(id)refine hires:(id)hires mask:(id)mask colorSpace:(CGColorSpace *)space orientation:(int)orientation hint:(id)hint scale:(float)scale dumpImageIndex:(int)self0
{
  refineCopy = refine;
  hiresCopy = hires;
  maskCopy = mask;
  hintCopy = hint;
  v16 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
  space = v16;
  if (space)
  {
    spaceCopy = space;
  }

  else
  {
    spaceCopy = v16;
  }

  v18 = sub_7148(refineCopy, spaceCopy);

  v181 = sub_7148(hiresCopy, spaceCopy);
  v180 = v18;

  v170 = [CIInpaintFilter loadRefinementModel:hintCopy];
  v182 = sub_4E4C(v170);
  v188 = [CIFilter filterWithName:@"CICoreMLModelFilter"];
  [v188 setValue:v170 forKey:@"inputModel"];
  [v188 setValue:@"CIInpaintRefine" forKey:@"_logName"];
  v19 = [CIImage imageYCC444:v18 matrix:601 fullRange:1 precision:8 colorSpace:0];
  v20 = [CIImage imageYCC444:v181 matrix:601 fullRange:1 precision:8 colorSpace:0];
  v21 = sub_71B4(v19);

  v176 = sub_71B4(v20);
  v179 = v21;

  +[CIInpaintFilter smallBlurSize];
  v23 = v22;
  v171 = sub_72F0(v21);
  [v171 extent];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  imageByClampingToExtent = [v171 imageByClampingToExtent];

  v33 = [CIVector vectorWithValues:&unk_DAE8 count:25];
  v199 = spaceCopy;
  *&v205.a = @"inputWeights";
  *&v206.a = v33;
  v34 = [NSDictionary dictionaryWithObjects:&v206 forKeys:&v205 count:1];
  v35 = [imageByClampingToExtent imageByApplyingFilter:@"CIConvolution5X5" withInputParameters:v34];

  v177 = [v35 imageByCroppingToRect:{v25, v27, v29, v31}];

  [v181 extent];
  v37 = v182;
  v183 = llround(v38 / v182);
  v39 = spaceCopy;
  indexCopy2 = index;
  v41 = 0;
  if (v183 >= 1)
  {
    v42 = 0;
    v43 = 1;
    LODWORD(v36) = llroundf(scale * 100.0);
    v194 = v36;
    v44 = v183;
    do
    {
      v175 = v42;
      v45 = (v42 * v182);
      v46 = 0;
      v174 = v43;
      v198 = v43;
      do
      {
        v185 = v44;
        v186 = v46;
        v47 = v46;
        v190 = sub_742C(v180, v46, v45, v37, v37);
        v189 = v41;
        v197 = sub_742C(v181, v47, v45, v37, v37);
        v196 = sub_742C(maskCopy, v47, v45, v37, v37);
        v48 = sub_7510(v196, 0.125);
        if (indexCopy2)
        {
          if (v183 == 1)
          {
            v49 = 0;
          }

          else
          {
            v49 = v198;
          }

          v50 = sub_58F8(indexCopy2, v49, "refine");
          v194 = [NSString stringWithFormat:@"%@_inlr_scale%d.png", v50, v194];
          v52 = sub_75B4(v190, v39);
          sub_5B28(v52, v39, v194, orientation);

          v1942 = [NSString stringWithFormat:@"%@_inhr_scale%d.png", v50, v194];

          v54 = sub_75B4(v197, v199);
          sub_5B28(v54, v199, v1942, orientation);

          v1943 = [NSString stringWithFormat:@"%@_inmask_scale%d.png", v50, v194];

          sub_5D84(v196, v1943, orientation);
        }

        v193 = sub_742C(v179, v47, v45, v37, v37);
        v187 = sub_742C(v177, v47, v45, v37, v37);
        v192 = sub_742C(v176, v47, v45, v37, v37);
        v56 = v48;
        v57 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_threshNegInf (__sample s) __attribute__((outputFormat(kCIFormatRh))) { float negInf = -1.0E20 float v = (s.r>0.01) ? negInf : 0.0; return vec4(v, 0, 0, 1); }"];;
        [v56 extent];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;
        *&v206.a = v56;
        v66 = [NSArray arrayWithObjects:&v206 count:1];
        v191 = [v57 applyWithExtent:v66 arguments:{v59, v61, v63, v65}];

        v203[0] = @"in_img_1";
        v203[1] = @"in_img_2";
        v204[0] = v193;
        v204[1] = v192;
        v203[2] = @"in_attn_mask";
        v204[2] = v191;
        v67 = [NSDictionary dictionaryWithObjects:v204 forKeys:v203 count:3];
        [v188 setValue:v67 forKey:@"inputImage"];

        outputImage = [v188 outputImage];
        v69 = sub_72F0(outputImage);

        v200 = v69;
        [v200 extent];
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v77 = v76;
        imageByClampingToExtent2 = [v200 imageByClampingToExtent];

        v79 = [imageByClampingToExtent2 imageByApplyingGaussianBlurWithSigma:v23];

        v80 = [v79 imageByCroppingToRect:{v71, v73, v75, v77}];

        v81 = v200;
        v82 = v80;
        v83 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_y_diff (__sample a, __sample b) __attribute__((outputFormat(kCIFormatRh))) { return vec4(a.r - b.r, 0.0, 0.0, 1.0) }"];;
        [v81 extent];
        v85 = v84;
        v87 = v86;
        v89 = v88;
        v91 = v90;
        *&v206.a = v81;
        *&v206.b = v82;
        v92 = [NSArray arrayWithObjects:&v206 count:2];
        v93 = [v83 applyWithExtent:v92 arguments:{v85, v87, v89, v91}];
        v184 = v81;

        v94 = v187;
        v95 = v93;
        v96 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_y_plus_y (__sample a, __sample b) __attribute__((outputFormat(kCIFormatRh))) { return vec4(a.r + b.r, 0.0, 0.0, 1.0) }"];;
        [v94 extent];
        v98 = v97;
        v100 = v99;
        v102 = v101;
        v104 = v103;
        [v95 extent];
        v210.origin.x = v105;
        v210.origin.y = v106;
        v210.size.width = v107;
        v210.size.height = v108;
        v208.origin.x = v98;
        v208.origin.y = v100;
        v208.size.width = v102;
        v208.size.height = v104;
        v209 = CGRectUnion(v208, v210);
        x = v209.origin.x;
        y = v209.origin.y;
        width = v209.size.width;
        height = v209.size.height;
        *&v206.a = v94;
        *&v206.b = v95;
        v113 = [NSArray arrayWithObjects:&v206 count:2];
        v114 = [v96 applyWithExtent:v113 arguments:{x, y, width, height}];

        v115 = v114;
        v116 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_y_clamp_m1p1 (__sample a) __attribute__((outputFormat(kCIFormatRh))) { float Y = clamp(a.r, -1.0, 1.0) return vec4(Y, 0.0, 0.0, 1.0); }"];;
        [v115 extent];
        v118 = v117;
        v120 = v119;
        v122 = v121;
        v124 = v123;
        *&v206.a = v115;
        v125 = [NSArray arrayWithObjects:&v206 count:1];
        v126 = [v116 applyWithExtent:v125 arguments:{v118, v120, v122, v124}];

        v127 = v193;
        v128 = v126;
        v129 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_replace_y (__sample a, __sample b) __attribute__((preserves_opacity)) { return vec4(b.r * a.a, a.gb, a.a) }"];;
        [v127 extent];
        v131 = v130;
        v133 = v132;
        v135 = v134;
        v137 = v136;
        *&v206.a = v127;
        *&v206.b = v128;
        v138 = [NSArray arrayWithObjects:&v206 count:2];
        v139 = [v129 applyWithExtent:v138 arguments:{v131, v133, v135, v137}];

        v140 = v139;
        v141 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_ycc_neg1pos1_to_01 (__sample s) __attribute__((preserves_opacity)) { s.rgb = (s.rgb + 1.0) / 2.0 s.rgb = clamp(s.rgb, 0.0, s.a); return s; }"];;
        [v140 extent];
        v143 = v142;
        v145 = v144;
        v147 = v146;
        v149 = v148;
        *&v206.a = v140;
        v150 = [NSArray arrayWithObjects:&v206 count:1];
        v151 = [v141 applyWithExtent:v150 arguments:{v143, v145, v147, v149}];

        v152 = [CIImage imageWithYCCImage:v151 matrix:601 fullRange:1 precision:8 colorSpace:0];

        if (index)
        {
          if (v183 == 1)
          {
            v153 = 0;
          }

          else
          {
            v153 = v198;
          }

          v154 = sub_58F8(index, v153, "refine");
          v1944 = [NSString stringWithFormat:@"%@_out_scale%d.png", v154, v194];
          v156 = sub_75B4(v152, v199);
          sub_5B28(v156, v199, v1944, orientation);

          v201[0] = kCIInputBackgroundImageKey;
          v201[1] = kCIInputMaskImageKey;
          v202[0] = v197;
          v202[1] = v196;
          v157 = [NSDictionary dictionaryWithObjects:v202 forKeys:v201 count:2];
          v158 = [v152 imageByApplyingFilter:@"CIBlendWithRedMask" withInputParameters:v157];

          v1945 = [NSString stringWithFormat:@"%@_outblend_scale%d.png", v154, v194];

          v160 = sub_75B4(v158, v199);
          sub_5B28(v160, v199, v1945, orientation);
        }

        v161 = v152;
        memset(&v206, 0, sizeof(v206));
        CGAffineTransformMakeTranslation(&v206, v47, v45);
        v205 = v206;
        v162 = [v161 imageByApplyingTransform:&v205];

        if (v189)
        {
          v163 = [v162 imageByCompositingOverImage:?];
        }

        else
        {
          v163 = v162;
        }

        v46 = v186 + v182;
        ++v198;
        v44 = v185 - 1;
        v41 = v163;
        v39 = v199;
        indexCopy2 = index;
      }

      while (v185 != 1);
      v42 = v175 + 1;
      v43 = v174 + 2;
      v44 = v183;
    }

    while (v175 + 1 != v183);
  }

  if (indexCopy2)
  {
    v164 = sub_58F8(indexCopy2, 0, "refine");
    v165 = [NSString stringWithFormat:@"%@_result_scale%d.png", v164, llroundf(scale * 200.0)];
    v166 = sub_75B4(v41, v39);
    sub_5B28(v166, v39, v165, orientation);

    v39 = v199;
  }

  v167 = sub_75B4(v41, v39);

  CGColorSpaceRelease(space);

  return v167;
}

- (id)blendBack:(id)back mask:(id)mask
{
  backCopy = back;
  maskCopy = mask;
  [(CIImage *)self->inputImage extent];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(CIImage *)self->inputExcludeMask imageByCroppingToRect:?];
  [v16 extent];
  if (CGRectIsEmpty(v48))
  {
    v17 = maskCopy;
  }

  else
  {
    v18 = sub_59F8(self->inputExcludeMask);
    v19 = maskCopy;
    v20 = v18;
    [v19 extent];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v20 extent];
    v51.origin.x = v29;
    v51.origin.y = v30;
    v51.size.width = v31;
    v51.size.height = v32;
    v49.origin.x = v22;
    v49.origin.y = v24;
    v49.size.width = v26;
    v49.size.height = v28;
    v50 = CGRectIntersection(v49, v51);
    x = v50.origin.x;
    y = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
    if (CGRectIsEmpty(v50))
    {
      v17 = +[CIImage emptyImage];
    }

    else
    {
      v37 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_andMasks (__sample a, __sample b) __attribute__((outputFormat(kCIFormatRh))) { return vec4(clamp(a.x, 0.0, 1.0) * clamp(b.x, 0.0, 1.0), 0.0, 0.0, 1.0) }"];;
      v46[0] = v19;
      v46[1] = v20;
      v38 = [NSArray arrayWithObjects:v46 count:2];
      v17 = [v37 applyWithExtent:v38 arguments:{x, y, width, height}];
    }
  }

  inputImage = self->inputImage;
  v44[0] = kCIInputBackgroundImageKey;
  v44[1] = kCIInputMaskImageKey;
  v45[0] = inputImage;
  v45[1] = v17;
  v40 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  v41 = [backCopy imageByApplyingFilter:@"CIBlendWithRedMask" withInputParameters:v40];

  v42 = [v41 imageByCroppingToRect:{v9, v11, v13, v15}];

  return v42;
}

- (float)estimateFinalQuality
{
  [(CIImage *)self->inputImage extent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = self->inputMaskImage;
  v46 = v6;
  v47 = v4;
  v45 = v8;
  r2 = v10;
  v12 = [(CIImage *)v11 imageByCroppingToRect:v4, v6, v8, v10];

  [v12 extent];
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  v17 = 0.0;
  if (!CGRectIsEmpty(v50))
  {
    v18 = [(CIImage *)self->inputExcludeMask imageByCroppingToRect:v4, v6, v8, r2];
    [v18 extent];
    v19 = v51.origin.x;
    v20 = v51.origin.y;
    v21 = v51.size.width;
    v44 = v51.size.height;
    IsEmpty = CGRectIsEmpty(v51);
    inputVersion = self->inputVersion;
    if (inputVersion)
    {
      intValue = [(NSNumber *)inputVersion intValue];
    }

    else
    {
      intValue = 1;
    }

    v43 = v19;
    v25 = [CIInpaintFilter modelDimensionForVersion:intValue hint:self->inputModel];
    v17 = 0.0;
    if (v25)
    {
      [(CIInpaintFilter *)self maskToSurroundRatio];
      v42 = v26;
      [(CIInpaintFilter *)self maskCoverage];
      v41 = v27;
      inputExcludeMaskSurroundMultiplier = [(CIInpaintFilter *)self inputExcludeMaskSurroundMultiplier];
      [inputExcludeMaskSurroundMultiplier doubleValue];
      v30 = v29;

      v31 = v30 <= 1.0 || IsEmpty;
      if ((v31 & 1) == 0)
      {
        v32 = fmin(width, height);
        v33 = -(v32 - 1.0 / sqrt(v42) * v32) * -0.5;
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        v53 = CGRectInset(v52, v33, v33);
        v57.origin.x = v43;
        v57.size.height = v44;
        v57.origin.y = v20;
        v57.size.width = v21;
        if (CGRectIntersectsRect(v53, v57))
        {
          v54.origin.x = sub_9DF8(x, y, width, height, ceil(width * v30));
          v58.origin.y = v46;
          v58.origin.x = v47;
          v58.size.width = v45;
          v58.size.height = r2;
          v55 = CGRectIntersection(v54, v58);
          x = v55.origin.x;
          y = v55.origin.y;
          width = v55.size.width;
          height = v55.size.height;
        }
      }

      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v56.size.height = height;
      if (!CGRectIsEmpty(v56))
      {
        bOOLValue = [(NSNumber *)self->inputRefinementMultipass BOOLValue];
        inputRefinementModel = [(CIInpaintFilter *)self inputRefinementModel];
        v36 = [CIInpaintFilter loadRefinementModel:inputRefinementModel];

        +[CIInpaintFilter getRefineQualityBar];
        v38 = v37;
        memset(v49, 0, sizeof(v49));
        sub_7CEC(v25, v49, x, y, width, height, v47, v46, v45, r2, v42, v41);
        v39 = *v49;
        if (*v49 <= v38)
        {
          if (v36)
          {
            v39 = fmin(*v49 + *v49, 1.0);
            if (((v39 <= v38) & bOOLValue) == 1)
            {
              v39 = fmin(v39 + v39, 1.0);
            }
          }
        }

        v17 = v39;
      }
    }
  }

  return v17;
}

- (id)outputImageAndRect:(CGRect *)rect strategy:(id *)strategy allowDump:(BOOL)dump
{
  dumpCopy = dump;
  [(CIImage *)self->inputImage extent];
  v161 = v7;
  v162 = v6;
  v159 = v9;
  v160 = v8;
  [(CIInpaintFilter *)self estimateFinalQuality];
  v11 = v10;
  [(CIInpaintFilter *)self featherAmount];
  v13 = v12 / v11;
  if (v11 == 0.0)
  {
    v13 = 0.0;
  }

  v14 = roundf(v13);
  if (v13 >= 3.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  [(CIInpaintFilter *)self dilateSize];
  v17 = fmaxf(v15, v16);
  v18 = self->inputMaskImage;
  if (v17 == 0.0)
  {
    v158 = 0;
  }

  else
  {
    v167 = @"inputMaximumDistance";
    *&v19 = v17;
    v20 = [NSNumber numberWithFloat:v19];
    v168 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v168 forKeys:&v167 count:1];
    v22 = [(CIImage *)v18 imageByApplyingFilter:@"CIDistanceGradientFromRedMask" withInputParameters:v21];

    [(CIImage *)v18 extent];
    v171 = CGRectInset(v170, -v17, -v17);
    v172 = CGRectIntegral(v171);
    x = v172.origin.x;
    y = v172.origin.y;
    width = v172.size.width;
    height = v172.size.height;
    v27 = sub_59F8(v22);
    v158 = [v27 imageByCroppingToRect:{x, y, width, height}];

    v28 = [(CIImage *)v158 imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&off_15410];

    v18 = v28;
  }

  v159 = [(CIImage *)v18 imageByCroppingToRect:v162, v161, v160, v159];

  [v159 extent];
  v30 = v173.origin.x;
  v31 = v173.origin.y;
  v32 = v173.size.width;
  v33 = v173.size.height;
  if (CGRectIsEmpty(v173))
  {
    v34 = self->inputImage;
    goto LABEL_68;
  }

  v1592 = [(CIImage *)self->inputExcludeMask imageByCroppingToRect:v162, v161, v160, v159];
  [v1592 extent];
  v148 = v174.origin.y;
  v150 = v174.origin.x;
  v143 = v174.size.height;
  v146 = v174.size.width;
  IsEmpty = CGRectIsEmpty(v174);
  v36 = +[CIImage blackImage];
  v37 = [v159 imageByCompositingOverImage:v36];
  v38 = [v37 imageByCroppingToRect:{v162, v161, v160, v159}];

  v159 = v38;
  v156 = v159;
  if (!IsEmpty)
  {
    inputExcludeMask = [(CIInpaintFilter *)self inputExcludeMask];
    v40 = v159;
    v41 = inputExcludeMask;
    v157 = v40;
    [v40 extent];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    [v41 extent];
    v187.origin.x = v50;
    v187.origin.y = v51;
    v187.size.width = v52;
    v187.size.height = v53;
    v175.origin.x = v43;
    v175.origin.y = v45;
    v175.size.width = v47;
    v175.size.height = v49;
    v176 = CGRectUnion(v175, v187);
    v54 = v176.origin.x;
    v55 = v176.origin.y;
    v56 = v176.size.width;
    v57 = v176.size.height;
    if (CGRectIsEmpty(v176))
    {
      v58 = +[CIImage emptyImage];
    }

    else
    {
      [v40 extent];
      if (CGRectIsEmpty(v177))
      {
        v58 = v41;
      }

      else
      {
        [v41 extent];
        if (!CGRectIsEmpty(v178))
        {
          v136 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_orMasks (__sample a, __sample b) __attribute__((outputFormat(kCIFormatRh))) { return vec4(1.0 - clamp(1.0-a.x, 0.0, 1.0) * clamp(1.0-b.x, 0.0, 1.0), 0.0, 0.0, 1.0) }"];;
          *buf = v40;
          *&buf[8] = v41;
          v137 = [NSArray arrayWithObjects:buf count:2];
          v59 = [v136 applyWithExtent:v137 arguments:{v54, v55, v56, v57}];

          goto LABEL_19;
        }

        v58 = v40;
      }
    }

    v59 = v58;
LABEL_19:

    v60 = sub_9200(v59);

    v156 = v60;
  }

  inputVersion = self->inputVersion;
  if (inputVersion)
  {
    intValue = [(NSNumber *)inputVersion intValue];
  }

  else
  {
    intValue = 1;
  }

  v63 = [CIInpaintFilter modelDimensionForVersion:intValue hint:self->inputModel];
  v65 = v63;
  if (!v63)
  {
    size = CGRectNull.size;
    rect->origin = CGRectNull.origin;
    rect->size = size;
    v77 = sub_A028(v63, v64);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      sub_B858();
    }

    v34 = 0;
    goto LABEL_67;
  }

  [(CIInpaintFilter *)self maskToSurroundRatio];
  v67 = v66;
  [(CIInpaintFilter *)self maskCoverage];
  v69 = v68;
  inputExcludeMaskSurroundMultiplier = [(CIInpaintFilter *)self inputExcludeMaskSurroundMultiplier];
  [inputExcludeMaskSurroundMultiplier doubleValue];
  v72 = v71;

  v73 = v72 <= 1.0 || IsEmpty;
  if ((v73 & 1) == 0)
  {
    v74 = fmin(v32, v33);
    v75 = -(v74 - 1.0 / sqrt(v67) * v74) * -0.5;
    v179.origin.x = v30;
    v179.origin.y = v31;
    v179.size.width = v32;
    v179.size.height = v33;
    v180 = CGRectInset(v179, v75, v75);
    v188.origin.y = v148;
    v188.origin.x = v150;
    v188.size.height = v143;
    v188.size.width = v146;
    if (CGRectIntersectsRect(v180, v188))
    {
      v181.origin.x = sub_9DF8(v30, v31, v32, v33, ceil(v32 * v72));
      v189.origin.y = v161;
      v189.origin.x = v162;
      v189.size.height = v159;
      v189.size.width = v160;
      v182 = CGRectIntersection(v181, v189);
      v30 = v182.origin.x;
      v31 = v182.origin.y;
      v32 = v182.size.width;
      v33 = v182.size.height;
    }
  }

  v183.origin.x = v30;
  v183.origin.y = v31;
  v183.size.width = v32;
  v183.size.height = v33;
  if (!CGRectIsEmpty(v183))
  {
    inputColorSpace = self->inputColorSpace;
    v79 = +[NSNull null];
    if (inputColorSpace == v79)
    {
    }

    else
    {
      v80 = self->inputColorSpace;

      if (!v80 || (v81 = CFGetTypeID(v80), v81 == CGColorSpaceGetTypeID()) && CGColorSpaceGetModel(v80) == kCGColorSpaceModelRGB)
      {
LABEL_42:
        properties = [(CIImage *)self->inputImage properties];
        v83 = [properties objectForKeyedSubscript:@"Orientation"];
        intValue2 = [v83 intValue];

        LOBYTE(properties) = [(NSNumber *)self->inputRefinementMultipass BOOLValue];
        inputRefinementModel = [(CIInpaintFilter *)self inputRefinementModel];
        v144 = properties;
        v85 = [CIInpaintFilter loadRefinementModel:inputRefinementModel];

        if (+[CIInpaintFilter dumpInpaintImages]&& dumpCopy)
        {
          v86 = ++dword_18DD8;
        }

        else
        {
          v86 = 0;
        }

        +[CIInpaintFilter getRefineQualityBar];
        v88 = v87;
        v166 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_7CEC(v65, buf, v30, v31, v32, v33, v162, v161, v160, v159, v67, v69);
        v89 = *&buf[16];
        v90 = *&v166;
        v92 = *buf;
        v91 = *&buf[8];
        v93 = *(&v166 + 1);
        v149 = sub_939C(self->inputImage, *(&v166 + 1), 1, *&buf[8], *&buf[16], *&buf[24], *&v166, *buf);
        v94 = sub_939C(v156, v93, 0, v91, *&v89, *(&v89 + 1), v90, v92);
        v95 = v92;
        *&v96 = v95;
        v147 = v94;
        v97 = [CIInpaintFilter repairTile:v149 mask:v94 colorSpace:v80 orientation:intValue2 hint:self->inputModel version:intValue scale:v96 dumpImageIndex:v86 dumpTileIndex:?];
        v98 = v97;
        if (v92 <= v88 && v85)
        {
          v99 = v92 + v92;
          v142 = sub_939C(self->inputImage, 2 * v93, 1, v91, *&v89, *(&v89 + 1), v90, v92 + v92);
          v141 = sub_939C(v156, 2 * v93, 1, v91, *&v89, *(&v89 + 1), v90, v92 + v92);
          sub_7510(v98, 2.0);
          v140 = LODWORD(v138) = v86;
          *&v100 = v92;
          v101 = [CIInpaintFilter refine:"refine:hires:mask:colorSpace:orientation:hint:scale:dumpImageIndex:" hires:v100 mask:v138 colorSpace:? orientation:? hint:? scale:? dumpImageIndex:?];

          v102 = fmin(v92 + v92, 1.0);
          if (((v102 <= v88) & v144) == 1)
          {
            v103 = v92 * 4.0;
            v104 = 4 * v93;
            v145 = sub_939C(self->inputImage, v104, 1, v91, *&v89, *(&v89 + 1), v90, v103);
            v105 = sub_939C(v156, v104, 1, v91, *&v89, *(&v89 + 1), v90, v103);
            v106 = sub_7510(v101, 2.0);
            *&v107 = v99;
            LODWORD(v139) = v86;
            v108 = v105;
            v98 = [CIInpaintFilter refine:v106 hires:v145 mask:v105 colorSpace:v80 orientation:intValue2 hint:self->inputRefinementModel scale:v107 dumpImageIndex:v139];

            v109 = sub_951C(v98, v91, *&v89, *(&v89 + 1), v90, 1.0 / v103);
            *strategy = [NSString stringWithFormat:@"One Tile, Refined4, Scale %.3f", fmin(v102 + v102, 1.0)];
          }

          else
          {
            v109 = sub_951C(v101, v91, *&v89, *(&v89 + 1), v90, 1.0 / v99);
            *strategy = [NSString stringWithFormat:@"One Tile, Refined, Scale %.3f", *&v102];
            v98 = v101;
          }
        }

        else
        {
          v109 = sub_951C(v97, v91, *&v89, *(&v89 + 1), v90, 1.0 / v92);
          *strategy = [NSString stringWithFormat:@"One Tile, Scale %.3f", *&v92];
        }

        inputMaskImage = v158;
        if (!v158)
        {
          inputMaskImage = self->inputMaskImage;
        }

        v34 = [(CIInpaintFilter *)self blendBack:v109 mask:inputMaskImage];
        v111 = *&buf[8];
        v113 = *&buf[16];
        v112 = *&v166;

        if (v86)
        {
          v112 = [(CIImage *)self->inputImage imageByCroppingToRect:v111, v113, v112];
          v184.origin.y = v161;
          v184.origin.x = v162;
          v184.size.height = v159;
          v184.size.width = v160;
          v190.origin.x = v111;
          *&v190.origin.y = v113;
          v190.size.height = v112;
          if (!CGRectContainsRect(v184, v190))
          {
            v115 = sub_9644(self->inputImage, v162, v161, v160, v159);
            v116 = [v115 imageByCroppingToRect:{v111, v113, v112}];

            v112 = v116;
          }

          v117 = sub_58F8(v86, 0, "inpaint");
          v117 = [NSString stringWithFormat:@"%@_in_full.png", v117];
          sub_5B28(v112, v80, v117, intValue2);
          v119 = [v156 imageByCroppingToRect:{v111, v113, v112}];
          v185.origin.y = v161;
          v185.origin.x = v162;
          v185.size.height = v159;
          v185.size.width = v160;
          v191.origin.x = v111;
          *&v191.origin.y = v113;
          v191.size.height = v112;
          if (!CGRectContainsRect(v185, v191))
          {
            v120 = sub_9644(v119, v162, v161, v160, v159);
            v121 = [v120 imageByCroppingToRect:{v111, v113, v112}];

            v119 = v121;
          }

          v1172 = [NSString stringWithFormat:@"%@_mask_full.png", v117];

          sub_5D84(v119, v1172, intValue2);
        }

        bOOLValue = [(NSNumber *)self->inputShowSurround BOOLValue];
        if (bOOLValue)
        {
          v186.origin.x = v111;
          *&v186.origin.y = v113;
          v186.size.height = v112;
          bOOLValue = CGRectIsEmpty(v186);
          if (!bOOLValue)
          {
            v163[0] = kCIInputExtentKey;
            v1122 = [CIVector vectorWithCGRect:v111, v113, v112];
            v164[0] = v1122;
            v164[1] = &off_15350;
            v163[1] = kCIInputRadiusKey;
            v163[2] = kCIInputColorKey;
            v126 = +[CIColor redColor];
            v163[3] = kCIInputWidthKey;
            v164[2] = v126;
            v164[3] = &off_15368;
            v127 = [NSDictionary dictionaryWithObjects:v164 forKeys:v163 count:4];
            v128 = [CIFilter filterWithName:@"CIRoundedRectangleStrokeGenerator" withInputParameters:v127];
            outputImage = [v128 outputImage];

            v130 = [outputImage imageByCompositingOverImage:v34];

            inputImage = [(CIInpaintFilter *)self inputImage];
            [inputImage extent];
            v34 = [v130 imageByCroppingToRect:?];
          }
        }

        rect->origin.x = v111;
        *&rect->origin.y = v113;
        rect->size.height = v112;
        if (dumpCopy)
        {
          v132 = sub_A028(bOOLValue, v124);
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            v133 = [objc_opt_class() description];
            v134 = *strategy;
            *buf = 138543618;
            *&buf[4] = v133;
            *&buf[12] = 2114;
            *&buf[14] = v134;
            _os_log_impl(&dword_0, v132, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@\n", buf, 0x16u);
          }
        }

        goto LABEL_67;
      }
    }

    v80 = 0;
    goto LABEL_42;
  }

  v34 = self->inputImage;
LABEL_67:

LABEL_68:

  return v34;
}

- (id)outputImage
{
  memset(v5, 0, sizeof(v5));
  v4 = 0;
  v2 = [(CIInpaintFilter *)self outputImageAndRect:v5 strategy:&v4 allowDump:1];

  return v2;
}

- (id)outputStrategy
{
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  v2 = [(CIInpaintFilter *)self outputImageAndRect:v6 strategy:&v5 allowDump:0];
  v3 = v5;

  return v3;
}

- (CGRect)outputMaskSurroundExtent
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0;
  v2 = [(CIInpaintFilter *)self outputImageAndRect:&v8 strategy:&v7 allowDump:0];
  v4 = *(&v8 + 1);
  v3 = *&v8;
  v6 = *(&v9 + 1);
  v5 = *&v9;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end