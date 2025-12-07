@interface RAWReduceNoise
+ (id)customAttributes;
+ (id)smartNoiseAdjustmentsForValue:(double)value andStatistics:(id)statistics;
+ (id)smartNoiseStatistics:(id)statistics;
- (BOOL)isBayerGreenAlignedforImage:(id)image andPattern:(int)pattern;
- (float)adjustedRNAmount;
- (id)V8OutputImage;
- (id)YAndRGBGather:(id)gather cnrRGB:(id)b sushiFactors:(id)factors crop:(CGRect)crop lumFactors:(id)lumFactors;
- (id)YAndRGBGatherOpponentColor:(id)color cnrRGB:(id)b originalY:(id)y sushiFactors:(id)factors crop:(CGRect)crop lumFactors:(id)lumFactors;
- (id)addNoise:(id)noise noise:(id)a4 amount:(float)amount;
- (id)blurGradient:(id)gradient lothresh:(float)lothresh factor:(float)factor;
- (id)blurGradientPlusCurvature:(id)curvature lothresh:(float)lothresh factor:(float)factor cthresh:(float)cthresh cfactor:(float)cfactor;
- (id)compositeThroughGradientMask:(id)mask fullSize:(id)size fullSizeMask:(id)sizeMask;
- (id)customAttributes;
- (id)directionsToCurvature:(id)curvature threshold:(float)threshold;
- (id)expandAndAddDetailsThroughGradientMask2:(id)mask2 halfSize:(id)size fullSizeDetails:(id)details soften:(float)soften sharpen:(float)sharpen;
- (id)expandAndAddDetailsThroughGradientMask3:(id)mask3 fullSize:(id)size fullSizeDetails:(id)details fullSizeMask:(id)mask amount:(float)amount sharpen:(float)sharpen interpolant:(float)interpolant;
- (id)expandAndAddDetailsThroughGradientMask:(id)mask fullSize:(id)size fullSizeDetails:(id)details fullSizeMask:(id)sizeMask amount:(float)amount contrastOverdrive:(float)overdrive interpolant:(float)interpolant;
- (id)expandAndAddDetailsWithOverdrive:(id)overdrive fullSize:(id)size contrast:(float)contrast;
- (id)expandAndMakeDetails:(id)details halfSize:(id)size;
- (id)expandAndSharpenDetailsThroughGradientMaskGather:(id)gather halfSizeY:(id)y cnrRGB:(id)b sharpen:(float)sharpen soften:(float)soften floor:(float)floor sushiFactors:(id)factors crop:(CGRect)self0 lumFactors:(id)self1;
- (id)expandAndSharpenDetailsThroughGradientMaskGatherOpponentColor:(id)color halfSizeY:(id)y cnrRGB:(id)b originalY:(id)originalY sharpen:(float)sharpen soften:(float)soften floor:(float)floor sushiFactors:(id)self0 crop:(CGRect)self1 lumFactors:(id)self2;
- (id)expandAndSharpenThroughGradientMask:(id)mask fullSizeY:(id)y sharpen:(float)sharpen;
- (id)expandAndSharpenThroughGradientMaskGather:(id)gather halfSizeY:(id)y cnrRGB:(id)b sharpen:(float)sharpen floor:(float)floor sushiFactors:(id)factors crop:(CGRect)crop lumFactors:(id)self0;
- (id)expandAndSharpenThroughGradientMaskGatherOpponentColor:(id)color halfSizeY:(id)y cnrRGB:(id)b originalY:(id)originalY sharpen:(float)sharpen floor:(float)floor sushiFactors:(id)factors crop:(CGRect)self0 lumFactors:(id)self1;
- (id)expandHalfSizeRGB:(id)b;
- (id)extractHalfSizeRGB:(id)b neutralFactors:(id)factors;
- (id)extractHalfSizeRGBHF:(id)f neutralFactors:(id)factors threshold:(float)threshold;
- (id)extractY:(id)y neutralFactors:(id)factors;
- (id)extractYOpponentColor:(id)color neutralFactors:(id)factors luminanceFactors:(id)luminanceFactors noiseVector:(id)vector;
- (id)fineGrainNoise2:(id)noise2 tinyBlurFactor:(float)factor;
- (id)fineGrainNoise:(id)noise;
- (id)gaborFiltersToLuminanceAndVectorField:(id)field thresh:(float)thresh;
- (id)gaborFiltersToSmoothedLuminanceAndGradient:(id)gradient smoothAmt:(float)amt tinyBlurFactor:(float)factor;
- (id)gaborFiltersToVectorField:(id)field;
- (id)highFrequencyIntoAlpha:(id)alpha threshold:(float)threshold neutralFactors:(id)factors;
- (id)image:(id)image croppedTo:(CGRect)to;
- (id)kernelArrayWithResourceName:(id)name;
- (id)kernelWithName:(id)name inArray:(id)array;
- (id)mergeHalfSizeCurvature:(id)curvature intoFullSizeCurvature:(id)sizeCurvature;
- (id)multiply:(id)multiply byNeutralFactors:(id)factors;
- (id)outputBoost:(id)boost;
- (id)outputCNR:(id)r E0:(CGRect)e0 E1:(CGRect)e1;
- (id)outputCNR:(id)r extent:(CGRect)extent returningDebugProduct:(BOOL *)product;
- (id)outputImage;
- (id)outputUnboost:(id)unboost;
- (id)perceptualToLinear:(id)linear;
- (id)powerBlur:(id)blur threshold:(float)threshold scale:(float)scale;
- (id)powerBlurDespeckle:(id)despeckle threshold:(float)threshold scale:(float)scale countThreshold:(int)countThreshold luminanceThreshold:(float)luminanceThreshold diffAmount:(float)amount;
- (id)powerBlurDespeckleHF:(id)f threshold:(float)threshold moireAmount:(float)amount scale:(float)scale countThreshold:(int)countThreshold luminanceThreshold:(float)luminanceThreshold diffAmount:(float)diffAmount;
- (id)powerBlurEarlyOut2:(id)out2 threshold:(float)threshold scale:(float)scale neutralThreshold:(float)neutralThreshold thresholdScale:(float)thresholdScale;
- (id)powerBlurEarlyOut2HF:(id)f threshold:(float)threshold moireAmount:(float)amount scale:(float)scale neutralThreshold:(float)neutralThreshold thresholdScale:(float)thresholdScale;
- (id)powerBlurEarlyOut:(id)out threshold:(float)threshold scale:(float)scale;
- (id)powerBlurEarlyOutHF:(id)f threshold:(float)threshold moireAmount:(float)amount scale:(float)scale;
- (id)powerBlurFS:(id)s threshold:(float)threshold neutralFactors:(id)factors;
- (id)powerBlurFSHF:(id)f threshold:(float)threshold moireAmount:(float)amount neutralFactors:(id)factors;
- (id)powerBlurHF:(id)f threshold:(float)threshold moireAmount:(float)amount scale:(float)scale;
- (id)powerBlurY:(id)y threshold:(float)threshold;
- (id)reduce:(id)reduce;
- (id)samplerForImage:(id)image;
- (id)smoothDetailsAlongDirections:(id)directions directions:(id)a4 amount:(float)amount;
- (id)smoothDetailsAlongDirectionsAtScale:(id)scale directions:(id)directions scale:(float)a5 thresh:(float)thresh smooth:(float)smooth;
- (id)smoothDetailsAlongDirectionsAtScaleAntiBloom:(id)bloom directions:(id)directions scale:(float)scale thresh:(float)thresh smooth:(float)smooth maxContrast:(float)contrast;
- (id)smoothDetailsAlongDirectionsAtScaleWithSharpen:(id)sharpen directions:(id)directions scale:(float)scale thresh:(float)thresh smooth:(float)smooth sharp:(float)sharp pscale:(float)pscale coringThreshold:(float)self0;
- (id)smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom:(id)bloom directions:(id)directions scale:(float)scale thresh:(float)thresh smooth:(float)smooth sharp:(float)sharp pscale:(float)pscale coringThreshold:(float)self0 maxContrast:(float)self1;
- (id)smoothVectorFieldAlongVectors:(id)vectors;
- (id)vectorFieldToDirectionsAndGradients:(id)gradients;
- (id)viewBlend:(id)blend sushiFactors:(id)factors crop:(CGRect)crop;
- (id)viewC:(id)c crop:(CGRect)crop;
- (id)viewD:(id)d factor:(float)factor crop:(CGRect)crop;
- (id)viewDIR:(id)r do360:(BOOL)do360 crop:(CGRect)crop;
- (id)viewG:(id)g scale:(float)scale crop:(CGRect)crop;
- (id)viewGDIR:(id)r do360:(BOOL)do360 crop:(CGRect)crop;
- (id)viewHue:(id)hue sushiFactors:(id)factors crop:(CGRect)crop;
- (id)viewRGB:(id)b sushiFactors:(id)factors crop:(CGRect)crop;
- (id)viewTG:(id)g lothresh:(float)lothresh factor:(float)factor crop:(CGRect)crop;
- (id)viewTGDIR:(id)r lothresh:(float)lothresh factor:(float)factor do360:(BOOL)do360 crop:(CGRect)crop;
- (id)viewVF:(id)f crop:(CGRect)crop;
- (id)viewY:(id)y sushiFactors:(id)factors crop:(CGRect)crop;
- (void)computeLowThreshold:(float *)threshold andFactor:(float *)factor withThreshold:(float)withThreshold andSoftness:(float)softness;
@end

@implementation RAWReduceNoise

+ (id)customAttributes
{
  v85[14] = *MEMORY[0x277D85DE8];
  v84[0] = @"inputLNRAmount";
  v81[0] = *MEMORY[0x277CBF790];
  v2 = v81[0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *MEMORY[0x277CBF798];
  v56 = v4;
  v83[0] = v4;
  v83[1] = &unk_28495DB10;
  v6 = *MEMORY[0x277CBF7D0];
  v81[1] = v5;
  v81[2] = v6;
  v7 = *MEMORY[0x277CBF7C8];
  v83[2] = &unk_28495DB10;
  v83[3] = &unk_28495DB20;
  v8 = *MEMORY[0x277CBF7F0];
  v81[3] = v7;
  v81[4] = v8;
  v9 = *MEMORY[0x277CBF850];
  v82 = *MEMORY[0x277CBF7A0];
  v10 = v82;
  v83[4] = v9;
  v83[5] = @"inputLNRAmount";
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v81 count:6];
  v85[0] = v55;
  v84[1] = @"inputCNRAmount";
  v79[0] = v2;
  v11 = objc_opt_class();
  v54 = NSStringFromClass(v11);
  v80[0] = v54;
  v80[1] = &unk_28495DB30;
  v79[1] = v5;
  v79[2] = v6;
  v80[2] = &unk_28495DB10;
  v80[3] = &unk_28495DB20;
  v79[3] = v7;
  v79[4] = v8;
  v79[5] = v10;
  v80[4] = v9;
  v80[5] = @"inputCNRAmount";
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:6];
  v85[1] = v52;
  v84[2] = @"inputSharpenAmount";
  v77[0] = v2;
  v12 = objc_opt_class();
  v53 = NSStringFromClass(v12);
  v78[0] = v53;
  v78[1] = &unk_28495DB30;
  v77[1] = v5;
  v77[2] = v6;
  v78[2] = &unk_28495DB10;
  v78[3] = &unk_28495DB20;
  v77[3] = v7;
  v77[4] = v8;
  v77[5] = v10;
  v78[4] = v9;
  v78[5] = @"inputSharpenAmount";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:6];
  v85[2] = v51;
  v84[3] = @"inputSharpenThreshold";
  v75[0] = v2;
  v13 = objc_opt_class();
  v49 = NSStringFromClass(v13);
  v76[0] = v49;
  v76[1] = &unk_28495DB10;
  v75[1] = v5;
  v75[2] = v6;
  v76[2] = &unk_28495DB40;
  v76[3] = &unk_28495DB50;
  v75[3] = v7;
  v75[4] = v8;
  v75[5] = v10;
  v76[4] = v9;
  v76[5] = @"inputSharpenThreshold";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:6];
  v85[3] = v50;
  v84[4] = @"inputContrastAmount";
  v73[0] = v2;
  v14 = objc_opt_class();
  v47 = NSStringFromClass(v14);
  v74[0] = v47;
  v74[1] = &unk_28495DB10;
  v73[1] = v5;
  v73[2] = v6;
  v74[2] = &unk_28495DB10;
  v74[3] = &unk_28495DB20;
  v73[3] = v7;
  v73[4] = v8;
  v73[5] = v10;
  v74[4] = v9;
  v74[5] = @"inputContrastAmount";
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:6];
  v85[4] = v48;
  v84[5] = @"inputDetailAmount";
  v71[0] = v2;
  v15 = objc_opt_class();
  v45 = NSStringFromClass(v15);
  v72[0] = v45;
  v72[1] = &unk_28495DB10;
  v71[1] = v5;
  v71[2] = v6;
  v72[2] = &unk_28495DB10;
  v72[3] = &unk_28495DB60;
  v71[3] = v7;
  v71[4] = v8;
  v71[5] = v10;
  v72[4] = v9;
  v72[5] = @"inputDetailAmount";
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:6];
  v85[5] = v46;
  v84[6] = @"inputNeutralFactors";
  v69[0] = v2;
  v16 = objc_opt_class();
  v42 = NSStringFromClass(v16);
  v70[0] = v42;
  v69[1] = v5;
  v17 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:1.0 Z:1.0 W:1.0];
  v18 = *MEMORY[0x277CBF840];
  v43 = v17;
  v70[1] = v17;
  v70[2] = v18;
  v69[2] = v8;
  v69[3] = v10;
  v70[3] = @"inputNeutralFactors";
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:4];
  v85[6] = v44;
  v84[7] = @"inputRepresentativeNoise";
  v67[0] = v2;
  v19 = objc_opt_class();
  v40 = NSStringFromClass(v19);
  v68[0] = v40;
  v68[1] = &unk_28495DB30;
  v67[1] = v5;
  v67[2] = v8;
  v67[3] = v10;
  v68[2] = v9;
  v68[3] = @"inputRepresentativeNoise";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:4];
  v85[7] = v41;
  v84[8] = @"inputScaleFactor";
  v65[0] = v2;
  v20 = objc_opt_class();
  v38 = NSStringFromClass(v20);
  v66[0] = v38;
  v66[1] = &unk_28495DB10;
  v65[1] = v6;
  v65[2] = v7;
  v66[2] = &unk_28495DB20;
  v66[3] = &unk_28495DB20;
  v65[3] = v5;
  v65[4] = v8;
  v65[5] = v10;
  v66[4] = v9;
  v66[5] = @"inputScaleFactor";
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:6];
  v85[8] = v39;
  v84[9] = @"inputMoireRadius";
  v63[0] = v2;
  v21 = objc_opt_class();
  v36 = NSStringFromClass(v21);
  v64[0] = v36;
  v64[1] = &unk_28495DB10;
  v63[1] = v6;
  v63[2] = v7;
  v64[2] = &unk_28495DB70;
  v64[3] = &unk_28495DB80;
  v63[3] = v5;
  v63[4] = v8;
  v22 = *MEMORY[0x277CBF818];
  v63[5] = v10;
  v64[4] = v22;
  v64[5] = @"inputMoireRadius";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:6];
  v85[9] = v37;
  v84[10] = @"inputMoireAmount";
  v61[0] = v2;
  v23 = objc_opt_class();
  v35 = NSStringFromClass(v23);
  v62[0] = v35;
  v62[1] = &unk_28495DB10;
  v61[1] = v6;
  v61[2] = v7;
  v62[2] = &unk_28495DB20;
  v62[3] = &unk_28495DB30;
  v61[3] = v5;
  v61[4] = v8;
  v61[5] = v10;
  v62[4] = v9;
  v62[5] = @"inputMoireAmount";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:6];
  v85[10] = v24;
  v84[11] = @"inputOpponentColorEnabled";
  v59[0] = v2;
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v60[0] = v26;
  v60[1] = MEMORY[0x277CBEC38];
  v59[1] = v5;
  v59[2] = v8;
  v27 = *MEMORY[0x277CBF800];
  v59[3] = v10;
  v60[2] = v27;
  v60[3] = @"inputOpponentColorEnabled";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:4];
  v85[11] = v28;
  v84[12] = @"inputShowHF";
  v57[0] = v2;
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v58[0] = v30;
  v58[1] = MEMORY[0x277CBEC28];
  v57[1] = v5;
  v57[2] = v8;
  v57[3] = v10;
  v58[2] = v27;
  v58[3] = @"inputShowHF";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];
  v84[13] = @"kCIRAWFilterDoesClip";
  v32 = *MEMORY[0x277CBED10];
  v85[12] = v31;
  v85[13] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:14];

  return v33;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

+ (id)smartNoiseStatistics:(id)statistics
{
  v12[6] = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  v4 = [statisticsCopy objectForKeyedSubscript:@"kCGImageSourceLuminanceNoiseReductionAmount"];
  v5 = [statisticsCopy objectForKeyedSubscript:@"kCGImageSourceColorNoiseReductionAmount"];
  v6 = [statisticsCopy objectForKeyedSubscript:@"kCGImageSourceNoiseReductionSharpnessAmount"];
  v7 = [statisticsCopy objectForKeyedSubscript:@"kCGImageSourceNoiseReductionContrastAmount"];
  v8 = [statisticsCopy objectForKeyedSubscript:@"kCGImageSourceNoiseReductionDetailAmount"];
  v11[0] = @"autoValue";
  v11[1] = @"lnramt";
  v12[0] = &unk_284958C68;
  v12[1] = v4;
  v11[2] = @"cnramt";
  v11[3] = @"sharpening";
  v12[2] = v5;
  v12[3] = v6;
  v11[4] = @"contrast";
  v11[5] = @"detail";
  v12[4] = v7;
  v12[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

+ (id)smartNoiseAdjustmentsForValue:(double)value andStatistics:(id)statistics
{
  v22[5] = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  v6 = [statisticsCopy objectForKeyedSubscript:@"lnramt"];
  [v6 doubleValue];
  v8 = v7;
  v9 = [statisticsCopy objectForKeyedSubscript:@"cnramt"];
  [v9 doubleValue];
  v11 = v10;
  v12 = [statisticsCopy objectForKeyedSubscript:@"sharpening"];
  v13 = [statisticsCopy objectForKeyedSubscript:@"contrast"];
  v14 = value + -0.5;
  v15 = fmax(v8 + (value + -0.5) * (1.0 - v8 + 1.0 - v8), 0.0);
  v21[0] = @"lnramt";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  v22[0] = v16;
  v21[1] = @"cnramt";
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11 + v14 * 0.35];
  v22[1] = v17;
  v22[2] = v12;
  v21[2] = @"sharpening";
  v21[3] = @"contrast";
  v22[3] = v13;
  v21[4] = @"detail";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:{fmax(v15 + -0.75, 0.0) * 4.0 * 0.5}];
  v22[4] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  return v19;
}

- (id)samplerForImage:(id)image
{
  v3 = [MEMORY[0x277CBF780] samplerWithImage:image keysAndValues:{*MEMORY[0x277CBFB58], self->inputColorSpace, 0}];

  return v3;
}

- (id)extractY:(id)y neutralFactors:(id)factors
{
  v12[1] = *MEMORY[0x277D85DE8];
  yCopy = y;
  factorsCopy = factors;
  v8 = [NRKernels kernelWithName:@"extractY"];
  v12[0] = factorsCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [(RAWFilter *)self apply:v8 image:yCopy arguments:v9 inoutSpace:self->inputColorSpace isPremultiplied:0 isAlphaOne:1];

  return v10;
}

- (id)extractYOpponentColor:(id)color neutralFactors:(id)factors luminanceFactors:(id)luminanceFactors noiseVector:(id)vector
{
  v18[3] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  factorsCopy = factors;
  luminanceFactorsCopy = luminanceFactors;
  vectorCopy = vector;
  v14 = [NRKernels kernelWithName:@"extractYOpponentColor"];
  v18[0] = factorsCopy;
  v18[1] = luminanceFactorsCopy;
  v18[2] = vectorCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v16 = [(RAWFilter *)self apply:v14 image:colorCopy arguments:v15 inoutSpace:self->inputColorSpace isPremultiplied:0];

  return v16;
}

- (id)extractHalfSizeRGB:(id)b neutralFactors:(id)factors
{
  v18[1] = *MEMORY[0x277D85DE8];
  bCopy = b;
  factorsCopy = factors;
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeScale(&v17, 0.5, 0.5);
  v8 = [NRKernels kernelWithName:@"extractHalfSizeRGB"];
  [bCopy extent];
  v16 = v17;
  v21 = CGRectApplyAffineTransform(v20, &v16);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v18[0] = factorsCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  height = [(RAWFilter *)self apply:v8 image:bCopy extent:&unk_28492DC90 roiCallback:v13 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)extractHalfSizeRGBHF:(id)f neutralFactors:(id)factors threshold:(float)threshold
{
  v26[2] = *MEMORY[0x277D85DE8];
  fCopy = f;
  factorsCopy = factors;
  memset(&v25, 0, sizeof(v25));
  CGAffineTransformMakeScale(&v25, 0.5, 0.5);
  [(RAWReduceNoise *)self adjustedRNAmount];
  if (v10 <= 2.0)
  {
    [(RAWReduceNoise *)self adjustedRNAmount];
    v11 = flt_23390A730[v12 > 1.0];
  }

  else
  {
    v11 = 0.6;
  }

  v13 = [NRKernels kernelWithName:@"extractHalfSizeRGBHF"];
  [fCopy extent];
  v14 = v11 * 0.5;
  v24 = v25;
  v15 = 1.0 / v11;
  v29 = CGRectApplyAffineTransform(v28, &v24);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v26[0] = factorsCopy;
  v20 = [MEMORY[0x277CBF788] vectorWithX:threshold Y:v14 Z:v15 W:0.0];
  v26[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  height = [(RAWFilter *)self apply:v13 image:fCopy extent:&unk_28492DCB0 roiCallback:v21 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)highFrequencyIntoAlpha:(id)alpha threshold:(float)threshold neutralFactors:(id)factors
{
  v22[2] = *MEMORY[0x277D85DE8];
  alphaCopy = alpha;
  factorsCopy = factors;
  [(RAWReduceNoise *)self adjustedRNAmount];
  if (v10 <= 2.0)
  {
    [(RAWReduceNoise *)self adjustedRNAmount];
    v11 = flt_23390A738[v12 > 1.0];
  }

  else
  {
    v11 = 0.04;
  }

  v13 = [NRKernels kernelWithName:@"highFrequencyIntoAlpha"];
  [alphaCopy extent];
  v25 = CGRectInset(v24, -1.0, -1.0);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v18 = [MEMORY[0x277CBF788] vectorWithX:threshold Y:(v11 * 0.5) Z:(1.0 / v11) W:0.0];
  v22[0] = v18;
  v22[1] = factorsCopy;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  height = [(RAWFilter *)self apply:v13 image:alphaCopy extent:&unk_28492DCD0 roiCallback:v19 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)multiply:(id)multiply byNeutralFactors:(id)factors
{
  v12[1] = *MEMORY[0x277D85DE8];
  multiplyCopy = multiply;
  factorsCopy = factors;
  v8 = [NRKernels kernelWithName:@"multiplyByNeutralFactors"];
  v12[0] = factorsCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [(RAWFilter *)self apply:v8 image:multiplyCopy arguments:v9 inoutSpace:self->inputColorSpace isPremultiplied:0];

  return v10;
}

- (id)powerBlur:(id)blur threshold:(float)threshold scale:(float)scale
{
  v20[1] = *MEMORY[0x277D85DE8];
  blurCopy = blur;
  v9 = [NRKernels kernelWithName:@"powerBlur"];
  [blurCopy extent];
  v23 = CGRectInset(v22, (scale * -2.0), (scale * -2.0));
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_233881E78;
  v18[3] = &unk_2789EE950;
  scaleCopy = scale;
  v14 = [MEMORY[0x277CBF788] vectorWithX:threshold Y:scale Z:0.0 W:0.0];
  v20[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  height = [(RAWFilter *)self apply:v9 image:blurCopy extent:v18 roiCallback:v15 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)powerBlurDespeckle:(id)despeckle threshold:(float)threshold scale:(float)scale countThreshold:(int)countThreshold luminanceThreshold:(float)luminanceThreshold diffAmount:(float)amount
{
  v27[2] = *MEMORY[0x277D85DE8];
  despeckleCopy = despeckle;
  v15 = [NRKernels kernelWithName:@"powerBlurDespeckle"];
  [despeckleCopy extent];
  v30 = CGRectInset(v29, (scale * -2.0), (scale * -2.0));
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  *&v26 = scale;
  v20 = [MEMORY[0x277CBF788] vectorWithX:threshold Y:scale Z:0.0 W:{0.0, MEMORY[0x277D85DD0], 3221225472, sub_2338820D8, &unk_2789EE950, v26}];
  v27[0] = v20;
  v21 = [MEMORY[0x277CBF788] vectorWithX:countThreshold Y:luminanceThreshold Z:amount];
  v27[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  height = [(RAWFilter *)self apply:v15 image:despeckleCopy extent:&v25 roiCallback:v22 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)powerBlurEarlyOut:(id)out threshold:(float)threshold scale:(float)scale
{
  v20[1] = *MEMORY[0x277D85DE8];
  outCopy = out;
  v9 = [NRKernels kernelWithName:@"powerBlurEarlyOut"];
  [outCopy extent];
  v23 = CGRectInset(v22, (scale * -2.0), (scale * -2.0));
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2338822F0;
  v18[3] = &unk_2789EE950;
  scaleCopy = scale;
  v14 = [MEMORY[0x277CBF788] vectorWithX:threshold Y:scale Z:0.0 W:0.0];
  v20[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  height = [(RAWFilter *)self apply:v9 image:outCopy extent:v18 roiCallback:v15 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)powerBlurEarlyOut2:(id)out2 threshold:(float)threshold scale:(float)scale neutralThreshold:(float)neutralThreshold thresholdScale:(float)thresholdScale
{
  v24[1] = *MEMORY[0x277D85DE8];
  out2Copy = out2;
  v13 = [NRKernels kernelWithName:@"powerBlurEarlyOut2"];
  [out2Copy extent];
  v27 = CGRectInset(v26, (scale * -2.0), (scale * -2.0));
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_233882518;
  v22[3] = &unk_2789EE950;
  scaleCopy = scale;
  v18 = [MEMORY[0x277CBF788] vectorWithX:threshold Y:scale Z:thresholdScale W:neutralThreshold];
  v24[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  height = [(RAWFilter *)self apply:v13 image:out2Copy extent:v22 roiCallback:v19 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)powerBlurFS:(id)s threshold:(float)threshold neutralFactors:(id)factors
{
  v19[2] = *MEMORY[0x277D85DE8];
  sCopy = s;
  factorsCopy = factors;
  v10 = [NRKernels kernelWithName:@"powerBlurFS"];
  [sCopy extent];
  v22 = CGRectInset(v21, -4.0, -4.0);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  *&v22.origin.x = threshold;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v22.origin.x];
  v19[0] = v15;
  v19[1] = factorsCopy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  height = [(RAWFilter *)self apply:v10 image:sCopy extent:&unk_28492DCF0 roiCallback:v16 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)powerBlurHF:(id)f threshold:(float)threshold moireAmount:(float)amount scale:(float)scale
{
  v22[1] = *MEMORY[0x277D85DE8];
  fCopy = f;
  v11 = [NRKernels kernelWithName:@"powerBlurHF"];
  [fCopy extent];
  v25 = CGRectInset(v24, (scale * -2.0), (scale * -2.0));
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2338828FC;
  v20[3] = &unk_2789EE950;
  scaleCopy = scale;
  v16 = [MEMORY[0x277CBF788] vectorWithX:threshold Y:scale Z:amount W:0.0];
  v22[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  height = [(RAWFilter *)self apply:v11 image:fCopy extent:v20 roiCallback:v17 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)powerBlurDespeckleHF:(id)f threshold:(float)threshold moireAmount:(float)amount scale:(float)scale countThreshold:(int)countThreshold luminanceThreshold:(float)luminanceThreshold diffAmount:(float)diffAmount
{
  v29[2] = *MEMORY[0x277D85DE8];
  fCopy = f;
  v16 = [NRKernels kernelWithName:@"powerBlurDespeckleHF"];
  [fCopy extent];
  v32 = CGRectInset(v31, (scale * -2.0), (scale * -2.0));
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_233882B64;
  v27[3] = &unk_2789EE950;
  scaleCopy = scale;
  v21 = [MEMORY[0x277CBF788] vectorWithX:threshold Y:scale Z:amount W:0.0];
  v29[0] = v21;
  v22 = [MEMORY[0x277CBF788] vectorWithX:countThreshold Y:luminanceThreshold Z:diffAmount];
  v29[1] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  height = [(RAWFilter *)self apply:v16 image:fCopy extent:v27 roiCallback:v23 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)powerBlurEarlyOutHF:(id)f threshold:(float)threshold moireAmount:(float)amount scale:(float)scale
{
  v22[1] = *MEMORY[0x277D85DE8];
  fCopy = f;
  v11 = [NRKernels kernelWithName:@"powerBlurEarlyOutHF"];
  [fCopy extent];
  v25 = CGRectInset(v24, (scale * -2.0), (scale * -2.0));
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_233882D88;
  v20[3] = &unk_2789EE950;
  scaleCopy = scale;
  v16 = [MEMORY[0x277CBF788] vectorWithX:threshold Y:scale Z:amount W:0.0];
  v22[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  height = [(RAWFilter *)self apply:v11 image:fCopy extent:v20 roiCallback:v17 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)powerBlurEarlyOut2HF:(id)f threshold:(float)threshold moireAmount:(float)amount scale:(float)scale neutralThreshold:(float)neutralThreshold thresholdScale:(float)thresholdScale
{
  v27[2] = *MEMORY[0x277D85DE8];
  fCopy = f;
  v15 = [NRKernels kernelWithName:@"powerBlurEarlyOut2HF"];
  [fCopy extent];
  v30 = CGRectInset(v29, (scale * -2.0), (scale * -2.0));
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_233882FE8;
  v25[3] = &unk_2789EE950;
  scaleCopy = scale;
  v19 = [MEMORY[0x277CBF788] vectorWithX:threshold Y:scale Z:thresholdScale W:neutralThreshold];
  v27[0] = v19;
  v20 = [MEMORY[0x277CBF788] vectorWithX:amount Y:0.0 Z:0.0 W:0.0];
  v27[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  height = [(RAWFilter *)self apply:v15 image:fCopy extent:v25 roiCallback:v21 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)powerBlurFSHF:(id)f threshold:(float)threshold moireAmount:(float)amount neutralFactors:(id)factors
{
  v22[3] = *MEMORY[0x277D85DE8];
  fCopy = f;
  factorsCopy = factors;
  v12 = [NRKernels kernelWithName:@"powerBlurFSHF"];
  [fCopy extent];
  v25 = CGRectInset(v24, -4.0, -4.0);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  *&v25.origin.x = threshold;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v25.origin.x];
  v18 = [MEMORY[0x277CBF788] vectorWithX:amount Y:0.0 Z:0.0 W:{0.0, v17, factorsCopy}];
  v22[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  height = [(RAWFilter *)self apply:v12 image:fCopy extent:&unk_28492DD10 roiCallback:v19 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)perceptualToLinear:(id)linear
{
  linearCopy = linear;
  v5 = [NRKernels kernelWithName:@"perceptualToLinear"];
  v6 = [(RAWFilter *)self apply:v5 image:linearCopy arguments:MEMORY[0x277CBEBF8] inoutSpace:self->inputColorSpace isPremultiplied:0];

  return v6;
}

- (id)expandHalfSizeRGB:(id)b
{
  bCopy = b;
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeScale(&v9, 2.0, 2.0);
  v5 = [NRKernels kernelWithName:@"expandHalfSizeRGB"];
  [bCopy extent];
  v8 = v9;
  v12 = CGRectApplyAffineTransform(v11, &v8);
  v13 = CGRectInset(v12, -1.0, -1.0);
  v6 = [(RAWFilter *)self apply:v5 image:bCopy extent:&unk_28492DD30 roiCallback:0 arguments:self->inputColorSpace inoutSpace:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];

  return v6;
}

- (id)powerBlurY:(id)y threshold:(float)threshold
{
  v16[1] = *MEMORY[0x277D85DE8];
  yCopy = y;
  v7 = [NRKernels kernelWithName:@"powerBlurY"];
  [yCopy extent];
  v19 = CGRectInset(v18, -2.0, -2.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  *&v19.origin.x = threshold;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v19.origin.x];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  height = [(RAWFilter *)self apply:v7 image:yCopy extent:&unk_28492DD50 roiCallback:v13 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)expandAndMakeDetails:(id)details halfSize:(id)size
{
  v26[1] = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  sizeCopy = size;
  memset(&v25, 0, sizeof(v25));
  CGAffineTransformMakeScale(&v25, 2.0, 2.0);
  v8 = [NRKernels kernelWithName:@"expandAndMakeDetails"];
  [detailsCopy extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [sizeCopy extent];
  v24 = v25;
  v29 = CGRectApplyAffineTransform(v28, &v24);
  v32 = CGRectInset(v29, -1.0, -1.0);
  v30.origin.x = v10;
  v30.origin.y = v12;
  v30.size.width = v14;
  v30.size.height = v16;
  v31 = CGRectUnion(v30, v32);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v26[0] = sizeCopy;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  height = [(RAWFilter *)self apply:v8 image:detailsCopy extent:&unk_28492DD70 roiCallback:v21 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)reduce:(id)reduce
{
  reduceCopy = reduce;
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeScale(&v9, 0.5, 0.5);
  v5 = [NRKernels kernelWithName:@"reduce"];
  [reduceCopy extent];
  v8 = v9;
  v12 = CGRectApplyAffineTransform(v11, &v8);
  v13 = CGRectInset(v12, -1.0, -1.0);
  v6 = [(RAWFilter *)self apply:v5 image:reduceCopy extent:&unk_28492DD90 roiCallback:0 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];

  return v6;
}

- (id)gaborFiltersToSmoothedLuminanceAndGradient:(id)gradient smoothAmt:(float)amt tinyBlurFactor:(float)factor
{
  v20[3] = *MEMORY[0x277D85DE8];
  gradientCopy = gradient;
  v9 = [NRKernels kernelWithName:@"gaborFiltersToSmoothedLuminanceAndGradient"];
  [gradientCopy extent];
  v23 = CGRectInset(v22, -3.0, -3.0);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  *&v23.origin.x = amt;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v23.origin.x];
  v15 = [MEMORY[0x277CBF788] vectorWithX:(((factor * -4.0) + 1.0) + -0.14062) Y:(factor + -0.09375) Z:-0.0625 W:{-0.0234375, v14}];
  v20[1] = v15;
  v16 = [MEMORY[0x277CBF788] vectorWithX:-0.015625 Y:-0.00390625 Z:0.0 W:0.0];
  v20[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  height = [(RAWFilter *)self apply:v9 image:gradientCopy extent:&unk_28492DDB0 roiCallback:v17 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)gaborFiltersToLuminanceAndVectorField:(id)field thresh:(float)thresh
{
  v16[1] = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  v7 = [NRKernels kernelWithName:@"gaborFiltersToLuminanceAndVectorField"];
  [fieldCopy extent];
  v19 = CGRectInset(v18, -3.0, -3.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  *&v19.origin.x = thresh;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v19.origin.x];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  height = [(RAWFilter *)self apply:v7 image:fieldCopy extent:&unk_28492DDD0 roiCallback:v13 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)gaborFiltersToVectorField:(id)field
{
  fieldCopy = field;
  v5 = [NRKernels kernelWithName:@"gaborFiltersToVectorField"];
  [fieldCopy extent];
  v10 = CGRectInset(v9, -3.0, -3.0);
  v6 = [(RAWFilter *)self apply:v5 image:fieldCopy extent:&unk_28492DDF0 roiCallback:0 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];

  return v6;
}

- (id)smoothDetailsAlongDirections:(id)directions directions:(id)a4 amount:(float)amount
{
  v31[3] = *MEMORY[0x277D85DE8];
  directionsCopy = directions;
  v9 = a4;
  v30 = 0;
  *&v10 = amount;
  [(RAWReduceNoise *)self computeScaleA:&v30 + 4 B:&v30 withSmoothingAmount:v10];
  v11 = [NRKernels kernelWithName:@"smoothDetailsAlongDirections"];
  [v9 extent];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [directionsCopy extent];
  v36 = CGRectInset(v33, -2.0, -2.0);
  v34.origin.x = v13;
  v34.origin.y = v15;
  v34.size.width = v17;
  v34.size.height = v19;
  v35 = CGRectUnion(v34, v36);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v31[0] = v9;
  LODWORD(v35.origin.x) = HIDWORD(v30);
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v35.origin.x];
  v31[1] = v24;
  LODWORD(v25) = v30;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v31[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  height = [(RAWFilter *)self apply:v11 image:directionsCopy extent:&unk_28492DE10 roiCallback:v27 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)smoothDetailsAlongDirectionsAtScale:(id)scale directions:(id)directions scale:(float)a5 thresh:(float)thresh smooth:(float)smooth
{
  v33[2] = *MEMORY[0x277D85DE8];
  scaleCopy = scale;
  directionsCopy = directions;
  v14 = [NRKernels kernelWithName:@"smoothDetailsAlongDirectionsAtScale"];
  [scaleCopy extent];
  v36 = CGRectInset(v35, -a5, -a5);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  [directionsCopy extent];
  v39.origin.x = v19;
  v39.origin.y = v20;
  v39.size.width = v21;
  v39.size.height = v22;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v38 = CGRectUnion(v37, v39);
  v23 = v38.origin.x;
  v24 = v38.origin.y;
  v25 = v38.size.width;
  v26 = v38.size.height;
  *&v32 = a5;
  v27 = [MEMORY[0x277CBF788] vectorWithX:a5 Y:thresh Z:smooth W:{0.0, MEMORY[0x277D85DD0], 3221225472, sub_233884324, &unk_2789EE950, v32, directionsCopy}];
  v33[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v29 = [(RAWFilter *)self apply:v14 image:scaleCopy extent:&v31 roiCallback:v28 arguments:self->inputColorSpace inoutSpace:v23, v24, v25, v26];

  return v29;
}

- (id)smoothDetailsAlongDirectionsAtScaleAntiBloom:(id)bloom directions:(id)directions scale:(float)scale thresh:(float)thresh smooth:(float)smooth maxContrast:(float)contrast
{
  v35[2] = *MEMORY[0x277D85DE8];
  bloomCopy = bloom;
  directionsCopy = directions;
  v16 = [NRKernels kernelWithName:@"smoothDetailsAlongDirectionsAtScaleAntiBloom"];
  [bloomCopy extent];
  v38 = CGRectInset(v37, -scale, -scale);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  [directionsCopy extent];
  v41.origin.x = v21;
  v41.origin.y = v22;
  v41.size.width = v23;
  v41.size.height = v24;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v40 = CGRectUnion(v39, v41);
  v25 = v40.origin.x;
  v26 = v40.origin.y;
  v27 = v40.size.width;
  v28 = v40.size.height;
  *&v34 = scale;
  v29 = [MEMORY[0x277CBF788] vectorWithX:scale Y:thresh Z:smooth W:{contrast, MEMORY[0x277D85DD0], 3221225472, sub_2338845B8, &unk_2789EE950, v34, directionsCopy}];
  v35[1] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v31 = [(RAWFilter *)self apply:v16 image:bloomCopy extent:&v33 roiCallback:v30 arguments:self->inputColorSpace inoutSpace:v25, v26, v27, v28];

  return v31;
}

- (id)smoothDetailsAlongDirectionsAtScaleWithSharpen:(id)sharpen directions:(id)directions scale:(float)scale thresh:(float)thresh smooth:(float)smooth sharp:(float)sharp pscale:(float)pscale coringThreshold:(float)self0
{
  v40[3] = *MEMORY[0x277D85DE8];
  sharpenCopy = sharpen;
  directionsCopy = directions;
  v18 = [NRKernels kernelWithName:@"smoothDetailsAlongDirectionsAtScaleWithSharpen"];
  [sharpenCopy extent];
  v43 = CGRectInset(v42, (scale * -2.0), (scale * -2.0));
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  [directionsCopy extent];
  v46.origin.x = v23;
  v46.origin.y = v24;
  v46.size.width = v25;
  v46.size.height = v26;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v45 = CGRectUnion(v44, v46);
  v27 = v45.origin.x;
  v28 = v45.origin.y;
  v29 = v45.size.width;
  v30 = v45.size.height;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2338848A4;
  v38[3] = &unk_2789EE950;
  scaleCopy = scale;
  v40[0] = directionsCopy;
  v31 = [MEMORY[0x277CBF788] vectorWithX:scale Y:thresh Z:smooth W:sharp];
  v40[1] = v31;
  v32 = [MEMORY[0x277CBF788] vectorWithX:pscale Y:(threshold * 0.75) Z:(2.0 / threshold)];
  v40[2] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
  v34 = [(RAWFilter *)self apply:v18 image:sharpenCopy extent:v38 roiCallback:v33 arguments:self->inputColorSpace inoutSpace:v27, v28, v29, v30];

  return v34;
}

- (id)smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom:(id)bloom directions:(id)directions scale:(float)scale thresh:(float)thresh smooth:(float)smooth sharp:(float)sharp pscale:(float)pscale coringThreshold:(float)self0 maxContrast:(float)self1
{
  v42[3] = *MEMORY[0x277D85DE8];
  bloomCopy = bloom;
  directionsCopy = directions;
  v19 = [NRKernels kernelWithName:@"smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom"];
  [bloomCopy extent];
  v45 = CGRectInset(v44, (scale * -2.0), (scale * -2.0));
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  [directionsCopy extent];
  v48.origin.x = v24;
  v48.origin.y = v25;
  v48.size.width = v26;
  v48.size.height = v27;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47 = CGRectUnion(v46, v48);
  v28 = v47.origin.x;
  v29 = v47.origin.y;
  v30 = v47.size.width;
  v31 = v47.size.height;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_233884B9C;
  v40[3] = &unk_2789EE950;
  scaleCopy = scale;
  v42[0] = directionsCopy;
  v32 = [MEMORY[0x277CBF788] vectorWithX:scale Y:thresh Z:smooth W:sharp];
  v42[1] = v32;
  v33 = [MEMORY[0x277CBF788] vectorWithX:pscale Y:(threshold * 0.75) Z:(2.0 / threshold) W:contrast];
  v42[2] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
  v35 = [(RAWFilter *)self apply:v19 image:bloomCopy extent:v40 roiCallback:v34 arguments:self->inputColorSpace inoutSpace:v28, v29, v30, v31];

  return v35;
}

- (id)blurGradient:(id)gradient lothresh:(float)lothresh factor:(float)factor
{
  v20[2] = *MEMORY[0x277D85DE8];
  gradientCopy = gradient;
  v9 = [NRKernels kernelWithName:@"blurGradient"];
  [gradientCopy extent];
  v23 = CGRectInset(v22, -1.0, -1.0);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  *&v23.origin.x = lothresh;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v23.origin.x];
  v20[0] = v14;
  *&v15 = factor;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v20[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  height = [(RAWFilter *)self apply:v9 image:gradientCopy extent:&unk_28492DE30 roiCallback:v17 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)blurGradientPlusCurvature:(id)curvature lothresh:(float)lothresh factor:(float)factor cthresh:(float)cthresh cfactor:(float)cfactor
{
  v28[4] = *MEMORY[0x277D85DE8];
  curvatureCopy = curvature;
  v13 = [NRKernels kernelWithName:@"blurGradientPlusCurvature"];
  [curvatureCopy extent];
  v31 = CGRectInset(v30, -1.0, -1.0);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  *&v31.origin.x = lothresh;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v31.origin.x];
  v28[0] = v18;
  *&v19 = factor;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v28[1] = v20;
  *&v21 = cthresh;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v28[2] = v22;
  *&v23 = cfactor;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v28[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  height = [(RAWFilter *)self apply:v13 image:curvatureCopy extent:&unk_28492DE50 roiCallback:v25 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)expandAndSharpenDetailsThroughGradientMaskGather:(id)gather halfSizeY:(id)y cnrRGB:(id)b sharpen:(float)sharpen soften:(float)soften floor:(float)floor sushiFactors:(id)factors crop:(CGRect)self0 lumFactors:(id)self1
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v40[8] = *MEMORY[0x277D85DE8];
  gatherCopy = gather;
  yCopy = y;
  bCopy = b;
  factorsCopy = factors;
  lumFactorsCopy = lumFactors;
  v38 = yCopy;
  v27 = [NRKernels kernelWithName:@"expandAndSharpenDetailsThroughGradientMaskGather"];
  v40[0] = yCopy;
  v40[1] = bCopy;
  *&v28 = sharpen;
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v40[2] = v29;
  *&v30 = soften;
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
  v40[3] = v31;
  *&v32 = floor;
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  v40[4] = v33;
  v40[5] = factorsCopy;
  v34 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v40[6] = v34;
  v40[7] = lumFactorsCopy;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:8];
  height = [(RAWFilter *)self apply:v27 image:gatherCopy extent:&unk_28492DE70 roiCallback:v35 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)expandAndSharpenDetailsThroughGradientMaskGatherOpponentColor:(id)color halfSizeY:(id)y cnrRGB:(id)b originalY:(id)originalY sharpen:(float)sharpen soften:(float)soften floor:(float)floor sushiFactors:(id)self0 crop:(CGRect)self1 lumFactors:(id)self2
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v44[9] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  yCopy = y;
  bCopy = b;
  originalYCopy = originalY;
  factorsCopy = factors;
  lumFactorsCopy = lumFactors;
  v41 = yCopy;
  v42 = bCopy;
  v30 = [NRKernels kernelWithName:@"expandAndSharpenDetailsThroughGradientMaskGatherOpponentColor"];
  v44[0] = yCopy;
  v44[1] = bCopy;
  v44[2] = originalYCopy;
  *&v31 = sharpen;
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v44[3] = v32;
  *&v33 = soften;
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  v44[4] = v34;
  *&v35 = floor;
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
  v44[5] = v36;
  v44[6] = factorsCopy;
  v37 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v44[7] = v37;
  v44[8] = lumFactorsCopy;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:9];
  height = [(RAWFilter *)self apply:v30 image:colorCopy extent:&unk_28492DE90 roiCallback:v38 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)expandAndSharpenThroughGradientMaskGather:(id)gather halfSizeY:(id)y cnrRGB:(id)b sharpen:(float)sharpen floor:(float)floor sushiFactors:(id)factors crop:(CGRect)crop lumFactors:(id)self0
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v35[7] = *MEMORY[0x277D85DE8];
  gatherCopy = gather;
  yCopy = y;
  bCopy = b;
  factorsCopy = factors;
  lumFactorsCopy = lumFactors;
  v25 = [NRKernels kernelWithName:@"expandAndSharpenThroughGradientMaskGather"];
  v35[0] = yCopy;
  v35[1] = bCopy;
  *&v26 = sharpen;
  v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v35[2] = v27;
  *&v28 = floor;
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v35[3] = v29;
  v35[4] = factorsCopy;
  v30 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v35[5] = v30;
  v35[6] = lumFactorsCopy;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:7];
  height = [(RAWFilter *)self apply:v25 image:gatherCopy extent:&unk_28492DEB0 roiCallback:v31 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)expandAndSharpenThroughGradientMaskGatherOpponentColor:(id)color halfSizeY:(id)y cnrRGB:(id)b originalY:(id)originalY sharpen:(float)sharpen floor:(float)floor sushiFactors:(id)factors crop:(CGRect)self0 lumFactors:(id)self1
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v39[8] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  yCopy = y;
  bCopy = b;
  originalYCopy = originalY;
  factorsCopy = factors;
  lumFactorsCopy = lumFactors;
  v37 = yCopy;
  v28 = [NRKernels kernelWithName:@"expandAndSharpenThroughGradientMaskGatherOpponentColor"];
  v39[0] = yCopy;
  v39[1] = bCopy;
  v39[2] = originalYCopy;
  *&v29 = sharpen;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v39[3] = v30;
  *&v31 = floor;
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v39[4] = v32;
  v39[5] = factorsCopy;
  v33 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v39[6] = v33;
  v39[7] = lumFactorsCopy;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:8];
  height = [(RAWFilter *)self apply:v28 image:colorCopy extent:&unk_28492DED0 roiCallback:v34 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)expandAndSharpenThroughGradientMask:(id)mask fullSizeY:(id)y sharpen:(float)sharpen
{
  v29[2] = *MEMORY[0x277D85DE8];
  maskCopy = mask;
  yCopy = y;
  memset(&v28, 0, sizeof(v28));
  CGAffineTransformMakeScale(&v28, 2.0, 2.0);
  v10 = [NRKernels kernelWithName:@"expandAndSharpenThroughGradientMask"];
  [yCopy extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [maskCopy extent];
  v27 = v28;
  v35 = CGRectApplyAffineTransform(v31, &v27);
  v32.origin.x = v12;
  v32.origin.y = v14;
  v32.size.width = v16;
  v32.size.height = v18;
  v33 = CGRectUnion(v32, v35);
  v34 = CGRectInset(v33, -1.0, -1.0);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v29[0] = yCopy;
  *&v34.origin.x = sharpen;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v34.origin.x];
  v29[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  height = [(RAWFilter *)self apply:v10 image:maskCopy extent:&unk_28492DEF0 roiCallback:v24 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)YAndRGBGather:(id)gather cnrRGB:(id)b sushiFactors:(id)factors crop:(CGRect)crop lumFactors:(id)lumFactors
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v25[4] = *MEMORY[0x277D85DE8];
  gatherCopy = gather;
  bCopy = b;
  factorsCopy = factors;
  lumFactorsCopy = lumFactors;
  v19 = [NRKernels kernelWithName:@"YAndRGBGather"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_233885F10;
  v24[3] = &unk_2789EF848;
  *&v24[4] = x;
  *&v24[5] = y;
  *&v24[6] = width;
  *&v24[7] = height;
  v25[0] = bCopy;
  v25[1] = factorsCopy;
  v20 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v25[2] = v20;
  v25[3] = lumFactorsCopy;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  height = [(RAWFilter *)self apply:v19 image:gatherCopy extent:v24 roiCallback:v21 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)YAndRGBGatherOpponentColor:(id)color cnrRGB:(id)b originalY:(id)y sushiFactors:(id)factors crop:(CGRect)crop lumFactors:(id)lumFactors
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v28[5] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  bCopy = b;
  yCopy = y;
  factorsCopy = factors;
  lumFactorsCopy = lumFactors;
  v22 = [NRKernels kernelWithName:@"YAndRGBGatherOpponentColor"];
  v23 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height, MEMORY[0x277D85DD0], 3221225472, sub_23388615C, &unk_2789EF848, *&x, *&y, *&width, *&height, bCopy, yCopy, factorsCopy}];
  v28[3] = v23;
  v28[4] = lumFactorsCopy;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
  height = [(RAWFilter *)self apply:v22 image:colorCopy extent:&v27 roiCallback:v24 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)expandAndAddDetailsWithOverdrive:(id)overdrive fullSize:(id)size contrast:(float)contrast
{
  v29[2] = *MEMORY[0x277D85DE8];
  overdriveCopy = overdrive;
  sizeCopy = size;
  memset(&v28, 0, sizeof(v28));
  CGAffineTransformMakeScale(&v28, 2.0, 2.0);
  v10 = [NRKernels kernelWithName:@"expandAndAddDetailsWithOverdrive"];
  [sizeCopy extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [overdriveCopy extent];
  v27 = v28;
  v32 = CGRectApplyAffineTransform(v31, &v27);
  v35 = CGRectInset(v32, -1.0, -1.0);
  v33.origin.x = v12;
  v33.origin.y = v14;
  v33.size.width = v16;
  v33.size.height = v18;
  v34 = CGRectUnion(v33, v35);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v29[0] = sizeCopy;
  *&v34.origin.x = contrast;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v34.origin.x];
  v29[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  height = [(RAWFilter *)self apply:v10 image:overdriveCopy extent:&unk_28492DF10 roiCallback:v24 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)fineGrainNoise:(id)noise
{
  noiseCopy = noise;
  v5 = [NRKernels kernelWithName:@"FineGrainNoise"];
  [noiseCopy extent];
  v10 = CGRectInset(v9, -1.0, -1.0);
  v6 = [(RAWFilter *)self apply:v5 image:noiseCopy extent:&unk_28492DF30 roiCallback:0 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];

  return v6;
}

- (id)fineGrainNoise2:(id)noise2 tinyBlurFactor:(float)factor
{
  v17[2] = *MEMORY[0x277D85DE8];
  noise2Copy = noise2;
  v7 = [NRKernels kernelWithName:@"FineGrainNoise2"];
  [noise2Copy extent];
  v20 = CGRectInset(v19, -2.0, -2.0);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v12 = [MEMORY[0x277CBF788] vectorWithX:(((factor * -4.0) + 1.0) + -0.14062) Y:(factor + -0.09375) Z:-0.0625 W:-0.0234375];
  v17[0] = v12;
  v13 = [MEMORY[0x277CBF788] vectorWithX:-0.015625 Y:-0.00390625 Z:0.0 W:0.0];
  v17[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  height = [(RAWFilter *)self apply:v7 image:noise2Copy extent:&unk_28492DF50 roiCallback:v14 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)expandAndAddDetailsThroughGradientMask:(id)mask fullSize:(id)size fullSizeDetails:(id)details fullSizeMask:(id)sizeMask amount:(float)amount contrastOverdrive:(float)overdrive interpolant:(float)interpolant
{
  v55[4] = *MEMORY[0x277D85DE8];
  maskCopy = mask;
  sizeCopy = size;
  detailsCopy = details;
  sizeMaskCopy = sizeMask;
  memset(&v54, 0, sizeof(v54));
  CGAffineTransformMakeScale(&v54, 2.0, 2.0);
  v17 = [NRKernels kernelWithName:@"expandAndAddDetailsThroughGradientMask"];
  [sizeCopy extent];
  v48 = v19;
  v49 = v18;
  v46 = v21;
  v47 = v20;
  [detailsCopy extent];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [sizeMaskCopy extent];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [maskCopy extent];
  v53 = v54;
  v58 = CGRectApplyAffineTransform(v57, &v53);
  v63 = CGRectInset(v58, -1.0, -1.0);
  v59.origin.x = v31;
  v59.origin.y = v33;
  v59.size.width = v35;
  v59.size.height = v37;
  v64 = CGRectUnion(v59, v63);
  v60.origin.x = v23;
  v60.origin.y = v25;
  v60.size.width = v27;
  v60.size.height = v29;
  v65 = CGRectUnion(v60, v64);
  v61.origin.y = v48;
  v61.origin.x = v49;
  v61.size.height = v46;
  v61.size.width = v47;
  v62 = CGRectUnion(v61, v65);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  v55[0] = sizeCopy;
  v55[1] = detailsCopy;
  v55[2] = sizeMaskCopy;
  v42 = [MEMORY[0x277CBF788] vectorWithX:amount Y:overdrive Z:interpolant W:0.0];
  v55[3] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
  height = [(RAWFilter *)self apply:v17 image:maskCopy extent:&unk_28492DF70 roiCallback:v43 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)compositeThroughGradientMask:(id)mask fullSize:(id)size fullSizeMask:(id)sizeMask
{
  v39[2] = *MEMORY[0x277D85DE8];
  maskCopy = mask;
  sizeCopy = size;
  sizeMaskCopy = sizeMask;
  v11 = [NRKernels kernelWithName:@"compositeThroughGradientMask"];
  [sizeCopy extent];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [sizeMaskCopy extent];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [maskCopy extent];
  v44.origin.x = v28;
  v44.origin.y = v29;
  v44.size.width = v30;
  v44.size.height = v31;
  v41.origin.x = v21;
  v41.origin.y = v23;
  v41.size.width = v25;
  v41.size.height = v27;
  v45 = CGRectUnion(v41, v44);
  v42.origin.x = v13;
  v42.origin.y = v15;
  v42.size.width = v17;
  v42.size.height = v19;
  v43 = CGRectUnion(v42, v45);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  v39[0] = sizeCopy;
  v39[1] = sizeMaskCopy;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  height = [(RAWFilter *)self apply:v11 image:maskCopy extent:0 roiCallback:v36 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)expandAndAddDetailsThroughGradientMask2:(id)mask2 halfSize:(id)size fullSizeDetails:(id)details soften:(float)soften sharpen:(float)sharpen
{
  v44[4] = *MEMORY[0x277D85DE8];
  mask2Copy = mask2;
  sizeCopy = size;
  detailsCopy = details;
  memset(&v43, 0, sizeof(v43));
  CGAffineTransformMakeScale(&v43, 2.0, 2.0);
  v13 = [NRKernels kernelWithName:@"expandAndAddDetailsThroughGradientMask2"];
  [mask2Copy extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [detailsCopy extent];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [sizeCopy extent];
  v42 = v43;
  v47 = CGRectApplyAffineTransform(v46, &v42);
  v51 = CGRectInset(v47, -1.0, -1.0);
  v48.origin.x = v23;
  v48.origin.y = v25;
  v48.size.width = v27;
  v48.size.height = v29;
  v52 = CGRectUnion(v48, v51);
  v49.origin.x = v15;
  v49.origin.y = v17;
  v49.size.width = v19;
  v49.size.height = v21;
  v50 = CGRectUnion(v49, v52);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  v44[0] = sizeCopy;
  v44[1] = detailsCopy;
  *&v50.origin.x = soften;
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v50.origin.x];
  v44[2] = v34;
  *&v35 = sharpen;
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
  v44[3] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
  height = [(RAWFilter *)self apply:v13 image:mask2Copy extent:&unk_28492DF90 roiCallback:v37 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)expandAndAddDetailsThroughGradientMask3:(id)mask3 fullSize:(id)size fullSizeDetails:(id)details fullSizeMask:(id)mask amount:(float)amount sharpen:(float)sharpen interpolant:(float)interpolant
{
  v55[4] = *MEMORY[0x277D85DE8];
  mask3Copy = mask3;
  sizeCopy = size;
  detailsCopy = details;
  maskCopy = mask;
  memset(&v54, 0, sizeof(v54));
  CGAffineTransformMakeScale(&v54, 2.0, 2.0);
  v17 = [NRKernels kernelWithName:@"expandAndAddDetailsThroughGradientMask3"];
  [sizeCopy extent];
  v48 = v19;
  v49 = v18;
  v46 = v21;
  v47 = v20;
  [detailsCopy extent];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [maskCopy extent];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [mask3Copy extent];
  v53 = v54;
  v58 = CGRectApplyAffineTransform(v57, &v53);
  v63 = CGRectInset(v58, -1.0, -1.0);
  v59.origin.x = v31;
  v59.origin.y = v33;
  v59.size.width = v35;
  v59.size.height = v37;
  v64 = CGRectUnion(v59, v63);
  v60.origin.x = v23;
  v60.origin.y = v25;
  v60.size.width = v27;
  v60.size.height = v29;
  v65 = CGRectUnion(v60, v64);
  v61.origin.y = v48;
  v61.origin.x = v49;
  v61.size.height = v46;
  v61.size.width = v47;
  v62 = CGRectUnion(v61, v65);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  v55[0] = sizeCopy;
  v55[1] = detailsCopy;
  v55[2] = maskCopy;
  v42 = [MEMORY[0x277CBF788] vectorWithX:amount Y:sharpen Z:interpolant W:0.0];
  v55[3] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
  height = [(RAWFilter *)self apply:v17 image:mask3Copy extent:&unk_28492DFB0 roiCallback:v43 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];

  return height;
}

- (id)addNoise:(id)noise noise:(id)a4 amount:(float)amount
{
  v31[2] = *MEMORY[0x277D85DE8];
  noiseCopy = noise;
  v9 = a4;
  if (v9 && amount >= 0.001)
  {
    amount = [NRKernels kernelWithName:@"AddNoise", amount];
    [noiseCopy extent];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v9 extent];
    v35.origin.x = v19;
    v35.origin.y = v20;
    v35.size.width = v21;
    v35.size.height = v22;
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    v34 = CGRectUnion(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    v31[0] = v9;
    *&v34.origin.x = amount;
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:v34.origin.x];
    v31[1] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    height = [(RAWFilter *)self apply:amount image:noiseCopy extent:0 roiCallback:v28 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:x, y, width, height];
  }

  else
  {
    height = noiseCopy;
  }

  return height;
}

- (id)vectorFieldToDirectionsAndGradients:(id)gradients
{
  gradientsCopy = gradients;
  v5 = [NRKernels kernelWithName:@"vectorFieldToDirectionsAndGradients"];
  v6 = [(RAWFilter *)self apply:v5 image:gradientsCopy arguments:0 inoutSpace:self->inputColorSpace isPremultiplied:0 isAlphaOne:1];

  return v6;
}

- (id)smoothVectorFieldAlongVectors:(id)vectors
{
  vectorsCopy = vectors;
  v5 = [NRKernels kernelWithName:@"smoothVectorFieldAlongVectors"];
  [vectorsCopy extent];
  v10 = CGRectInset(v9, -3.0, -3.0);
  v6 = [(RAWFilter *)self apply:v5 image:vectorsCopy extent:&unk_28492DFD0 roiCallback:0 arguments:self->inputColorSpace inoutSpace:1 isAlphaOne:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];

  return v6;
}

- (id)directionsToCurvature:(id)curvature threshold:(float)threshold
{
  v16[1] = *MEMORY[0x277D85DE8];
  curvatureCopy = curvature;
  v7 = [NRKernels kernelWithName:@"directionsToCurvature"];
  [curvatureCopy extent];
  v19 = CGRectInset(v18, -4.0, -4.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  *&v19.origin.x = threshold;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v19.origin.x];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  height = [(RAWFilter *)self apply:v7 image:curvatureCopy extent:&unk_28492DFF0 roiCallback:v13 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)mergeHalfSizeCurvature:(id)curvature intoFullSizeCurvature:(id)sizeCurvature
{
  v26[1] = *MEMORY[0x277D85DE8];
  curvatureCopy = curvature;
  sizeCurvatureCopy = sizeCurvature;
  memset(&v25, 0, sizeof(v25));
  CGAffineTransformMakeScale(&v25, 2.0, 2.0);
  v8 = [NRKernels kernelWithName:@"mergeHalfSizeCurvature"];
  [sizeCurvatureCopy extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [curvatureCopy extent];
  v24 = v25;
  v32 = CGRectApplyAffineTransform(v28, &v24);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  v30 = CGRectUnion(v29, v32);
  v31 = CGRectInset(v30, -1.0, -1.0);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v26[0] = curvatureCopy;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  height = [(RAWFilter *)self apply:v8 image:sizeCurvatureCopy extent:&unk_28492E010 roiCallback:v21 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)viewY:(id)y sushiFactors:(id)factors crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v18[2] = *MEMORY[0x277D85DE8];
  yCopy = y;
  factorsCopy = factors;
  v13 = [NRKernels kernelWithName:@"viewY"];
  v18[0] = factorsCopy;
  v14 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  height = [(RAWFilter *)self apply:v13 image:yCopy extent:0 roiCallback:v15 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)viewBlend:(id)blend sushiFactors:(id)factors crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v18[2] = *MEMORY[0x277D85DE8];
  blendCopy = blend;
  factorsCopy = factors;
  v13 = [NRKernels kernelWithName:@"viewBlend"];
  v18[0] = factorsCopy;
  v14 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  height = [(RAWFilter *)self apply:v13 image:blendCopy extent:0 roiCallback:v15 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)viewD:(id)d factor:(float)factor crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v19[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v12 = [NRKernels kernelWithName:@"viewD"];
  *&v13 = factor;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v19[0] = v14;
  v15 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v19[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  height = [(RAWFilter *)self apply:v12 image:dCopy extent:0 roiCallback:v16 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)viewTG:(id)g lothresh:(float)lothresh factor:(float)factor crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v23[3] = *MEMORY[0x277D85DE8];
  gCopy = g;
  v14 = [NRKernels kernelWithName:@"viewTG"];
  *&v15 = lothresh;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  *&v17 = factor;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:{v17, v16}];
  v23[1] = v18;
  v19 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v23[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  height = [(RAWFilter *)self apply:v14 image:gCopy extent:0 roiCallback:v20 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)viewVF:(id)f crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v15[1] = *MEMORY[0x277D85DE8];
  fCopy = f;
  v10 = [NRKernels kernelWithName:@"viewVF"];
  v11 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  height = [(RAWFilter *)self apply:v10 image:fCopy extent:0 roiCallback:v12 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)viewG:(id)g scale:(float)scale crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v19[2] = *MEMORY[0x277D85DE8];
  gCopy = g;
  v12 = [NRKernels kernelWithName:@"viewG"];
  *&v13 = scale;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v19[0] = v14;
  v15 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v19[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  height = [(RAWFilter *)self apply:v12 image:gCopy extent:0 roiCallback:v16 arguments:self->inputColorSpace inoutSpace:x, y, width, height];

  return height;
}

- (id)viewDIR:(id)r do360:(BOOL)do360 crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  do360Copy = do360;
  v19[1] = *MEMORY[0x277D85DE8];
  rCopy = r;
  if (do360Copy)
  {
    v12 = [NRKernels kernelWithName:@"viewDIR360"];
    v13 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
    v19[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    height = [(RAWFilter *)self apply:v12 image:rCopy extent:0 roiCallback:v14 arguments:self->inputColorSpace inoutSpace:0.0, 0.0, width, height];
  }

  else
  {
    v12 = [NRKernels kernelWithName:@"viewDIR180"];
    v13 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
    v18 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    height = [(RAWFilter *)self apply:v12 image:rCopy extent:0 roiCallback:v14 arguments:self->inputColorSpace inoutSpace:0.0, 0.0, width, height];
  }

  v16 = height;

  return v16;
}

- (id)viewC:(id)c crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v15[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  v10 = [NRKernels kernelWithName:@"viewC"];
  v11 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  height = [(RAWFilter *)self apply:v10 image:cCopy extent:0 roiCallback:v12 arguments:self->inputColorSpace inoutSpace:0.0, 0.0, width, height];

  return height;
}

- (id)viewGDIR:(id)r do360:(BOOL)do360 crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  do360Copy = do360;
  v19[1] = *MEMORY[0x277D85DE8];
  rCopy = r;
  if (do360Copy)
  {
    v12 = [NRKernels kernelWithName:@"viewGDIR360"];
    v13 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
    v19[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    height = [(RAWFilter *)self apply:v12 image:rCopy extent:0 roiCallback:v14 arguments:self->inputColorSpace inoutSpace:0.0, 0.0, width, height];
  }

  else
  {
    v12 = [NRKernels kernelWithName:@"viewGDIR180"];
    v13 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
    v18 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    height = [(RAWFilter *)self apply:v12 image:rCopy extent:0 roiCallback:v14 arguments:self->inputColorSpace inoutSpace:0.0, 0.0, width, height];
  }

  v16 = height;

  return v16;
}

- (id)viewTGDIR:(id)r lothresh:(float)lothresh factor:(float)factor do360:(BOOL)do360 crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  do360Copy = do360;
  v29[3] = *MEMORY[0x277D85DE8];
  rCopy = r;
  if (do360Copy)
  {
    v16 = [NRKernels kernelWithName:@"viewTGDIR360"];
    *&v17 = lothresh;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    v29[0] = v18;
    *&v19 = factor;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    v29[1] = v20;
    v21 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
    v29[2] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    height = [(RAWFilter *)self apply:v16 image:rCopy extent:0 roiCallback:v22 arguments:self->inputColorSpace inoutSpace:0.0, 0.0, width, height];
  }

  else
  {
    v16 = [NRKernels kernelWithName:@"viewTGDIR180"];
    *&v24 = lothresh;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    v28[0] = v18;
    *&v25 = factor;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
    v28[1] = v20;
    v21 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
    v28[2] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    height = [(RAWFilter *)self apply:v16 image:rCopy extent:0 roiCallback:v22 arguments:self->inputColorSpace inoutSpace:0.0, 0.0, width, height];
  }

  v26 = height;

  return v26;
}

- (id)viewRGB:(id)b sushiFactors:(id)factors crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v18[2] = *MEMORY[0x277D85DE8];
  bCopy = b;
  factorsCopy = factors;
  v13 = [NRKernels kernelWithName:@"viewRGB"];
  v18[0] = factorsCopy;
  v14 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  height = [(RAWFilter *)self apply:v13 image:bCopy extent:0 roiCallback:v15 arguments:self->inputColorSpace inoutSpace:0.0, 0.0, width, height];

  return height;
}

- (id)viewHue:(id)hue sushiFactors:(id)factors crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v18[2] = *MEMORY[0x277D85DE8];
  hueCopy = hue;
  factorsCopy = factors;
  v13 = [NRKernels kernelWithName:@"viewHue"];
  v18[0] = factorsCopy;
  v14 = [MEMORY[0x277CBF788] vectorWithCGRect:{x, y, width, height}];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  height = [(RAWFilter *)self apply:v13 image:hueCopy extent:0 roiCallback:v15 arguments:self->inputColorSpace inoutSpace:0.0, 0.0, width, height];

  return height;
}

- (void)computeLowThreshold:(float *)threshold andFactor:(float *)factor withThreshold:(float)withThreshold andSoftness:(float)softness
{
  if (withThreshold < 0.00065)
  {
    withThreshold = 0.00065;
  }

  v6 = withThreshold * softness;
  v7 = withThreshold - (v6 * 0.5);
  *threshold = v7;
  *factor = 1.0 / ((withThreshold + (v6 * 0.5)) - v7);
}

- (id)outputUnboost:(id)unboost
{
  v19[9] = *MEMORY[0x277D85DE8];
  unboostCopy = unboost;
  if ([(NSNumber *)self->inputBoostMethod intValue])
  {
    v18 = [MEMORY[0x277CBF788] vectorWithX:0.0106899999 Y:0.0437199995 Z:0.146479994 W:0.667469978];
    v17 = [MEMORY[0x277CBF788] vectorWithX:654.581604 Y:-28.2951641 Z:1.25156403 W:0.0];
    v16 = [MEMORY[0x277CBF788] vectorWithX:68.604454 Y:-10.1250257 Z:1.06397295 W:0.000645000022];
    v5 = [MEMORY[0x277CBF788] vectorWithX:5.20553207 Y:-2.30455089 Z:0.743704975 W:0.0049970001];
    v6 = [MEMORY[0x277CBF788] vectorWithX:0.753764987 Y:-0.49348101 Z:0.499689013 W:0.015873];
    v7 = [MEMORY[0x277CBF788] vectorWithX:6.54402304 Y:-12.7344961 Z:9.10175419 W:-1.99401903];
    v8 = [MEMORY[0x277CBF788] vectorWithX:232.470688 Y:-640.049011 Z:589.582336 W:-181.004013];
    LODWORD(v9) = 1074885725;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    v11 = unboostCopy;
    v12 = [NRKernels kernelWithName:@"inverseBoost"];
    v19[0] = v18;
    v19[1] = &unk_28495DB90;
    v19[2] = v17;
    v19[3] = v16;
    v19[4] = v5;
    v19[5] = v6;
    v19[6] = v7;
    v19[7] = v8;
    v19[8] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:9];
    v14 = [(RAWFilter *)self apply:v12 image:v11 arguments:v13 inoutSpace:self->inputColorSpace isPremultiplied:1];
  }

  else
  {
    v14 = unboostCopy;
  }

  return v14;
}

- (id)outputBoost:(id)boost
{
  v17[6] = *MEMORY[0x277D85DE8];
  boostCopy = boost;
  if ([(NSNumber *)self->inputBoostMethod intValue])
  {
    v16 = [MEMORY[0x277CBF788] vectorWithX:0.100000001 Y:0.200000003 Z:0.5 W:1.0];
    v5 = [MEMORY[0x277CBF788] vectorWithX:-53.0999899 Y:16.819998 Z:0.799000025 W:0.0];
    v6 = [MEMORY[0x277CBF788] vectorWithX:-12.3000026 Y:2.62000144 Z:2.41499972 W:-0.0603999913];
    v7 = [MEMORY[0x277CBF788] vectorWithX:2.64814695 Y:-4.82888758 Z:3.60077739 W:-0.11918516];
    v8 = [MEMORY[0x277CBF788] vectorWithX:0.492000163 Y:-1.72000039 Z:2.10900028 W:0.118999943];
    LODWORD(v9) = 1054951342;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    v11 = boostCopy;
    v12 = [NRKernels kernelWithName:@"boost"];
    v17[0] = v16;
    v17[1] = v5;
    v17[2] = v6;
    v17[3] = v7;
    v17[4] = v8;
    v17[5] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:6];
    v14 = [(RAWFilter *)self apply:v12 image:v11 arguments:v13 inoutSpace:self->inputColorSpace isPremultiplied:1];
  }

  else
  {
    v14 = boostCopy;
  }

  return v14;
}

- (float)adjustedRNAmount
{
  [(NSNumber *)self->inputScaleFactor floatValue];
  v4 = fminf(fmaxf(v3, 0.0), 1.0);
  [(NSNumber *)self->inputRepresentativeNoise floatValue];
  return v4 * v5;
}

- (id)outputCNR:(id)r extent:(CGRect)extent returningDebugProduct:(BOOL *)product
{
  rCopy = r;
  if (product)
  {
    *product = 0;
  }

  [(RAWReduceNoise *)self adjustedRNAmount];
  v9 = v8;
  [(NSNumber *)self->inputCNRAmount floatValue];
  v11 = v10;
  [(NSNumber *)self->inputBaselineExposure floatValue];
  v13 = v12;
  v14 = MEMORY[0x277CBF788];
  [(CIVector *)self->inputNeutralFactors X];
  v16 = v15;
  v17 = exp2f(v13);
  [(CIVector *)self->inputNeutralFactors Y];
  v19 = v18;
  [(CIVector *)self->inputNeutralFactors Z];
  v21 = [v14 vectorWithX:v16 * v17 Y:v19 * v17 Z:v20 * v17 W:1.0];
  v22 = 1.0;
  if (v9 > 1.5)
  {
    v22 = 5.0;
  }

  v23 = (v9 * 0.024249) * v11;
  if ((v23 * 3.5) >= 0.0051961)
  {
    v24 = v23 * 3.5;
  }

  else
  {
    v24 = 0.0;
  }

  if ((v23 * 1.3) >= 0.0051961)
  {
    v25 = v23 * 1.3;
  }

  else
  {
    v25 = 0.0;
  }

  if ((v23 * 0.75) >= 0.0051961)
  {
    v26 = v23 * 0.75;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = v23 * 0.2;
  if ((v22 * v27) >= 0.0051961)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0.0;
  }

  [(NSNumber *)self->inputMoireRadius floatValue];
  v30 = v29;
  [(NSNumber *)self->inputMoireAmount floatValue];
  v31 = *&v32 * 0.04;
  HIDWORD(v32) = 0;
  if ((*&v32 * 0.04) == 0.0)
  {
    v30 = 0.0;
  }

  if (v24 == 0.0 && v30 == 0.0 && ![(NSNumber *)self->inputShowHF BOOLValue])
  {
    v41 = [(RAWReduceNoise *)self multiply:rCopy byNeutralFactors:v21];
    goto LABEL_80;
  }

  if (v30 <= 0.0 && ![(NSNumber *)self->inputShowHF BOOLValue])
  {
    if (v25 != 0.0)
    {
      v47 = [(RAWReduceNoise *)self extractHalfSizeRGB:rCopy neutralFactors:v21];

      if (v24 <= 0.0)
      {
        v40 = v47;
      }

      else
      {
        LODWORD(v49) = 1.0;
        *&v48 = v24;
        v52 = [(RAWReduceNoise *)self powerBlur:v47 threshold:v48 scale:v49];

        v40 = v52;
      }

      if (v25 > 0.0)
      {
        LODWORD(v50) = 1033650332;
        LODWORD(v51) = 1076258406;
        LODWORD(v49) = 3.0;
        *&v48 = v25;
        v60 = [(RAWReduceNoise *)self powerBlurDespeckle:v40 threshold:5 scale:v48 countThreshold:v49 luminanceThreshold:v50 diffAmount:v51];

        v40 = v60;
      }

      if (v26 > 0.0)
      {
        LODWORD(v49) = 7.0;
        *&v48 = v26;
        v61 = [(RAWReduceNoise *)self powerBlurEarlyOut:v40 threshold:v48 scale:v49];

        v40 = v61;
      }

      if (v9 <= 1.5)
      {
        if (v28 <= 0.0)
        {
          goto LABEL_77;
        }

        LODWORD(v49) = 14.0;
        *&v48 = v28;
        v62 = [(RAWReduceNoise *)self powerBlurEarlyOut:v40 threshold:v48 scale:v49];
      }

      else
      {
        if (v28 <= 0.0)
        {
          goto LABEL_77;
        }

        LODWORD(v50) = 1041865114;
        LODWORD(v49) = 14.0;
        LODWORD(v51) = 5.0;
        *&v48 = v28;
        v62 = [(RAWReduceNoise *)self powerBlurEarlyOut2:v40 threshold:v48 scale:v49 neutralThreshold:v50 thresholdScale:v51];
      }

      v63 = v62;

      v40 = v63;
      goto LABEL_77;
    }

    *&v32 = v24;
    v34 = [(RAWReduceNoise *)self powerBlurFS:rCopy threshold:v21 neutralFactors:v32];
    v42 = rCopy;
LABEL_78:

    goto LABEL_79;
  }

  v33 = v25 != 0.0 || v30 > 2.0;
  if (!v33 && ![(NSNumber *)self->inputShowHF BOOLValue])
  {
    *&v32 = v24;
    v42 = [(RAWReduceNoise *)self highFrequencyIntoAlpha:rCopy threshold:v21 neutralFactors:v32];
    *&v43 = v24;
    *&v44 = v31;
    v34 = [(RAWReduceNoise *)self powerBlurFSHF:v42 threshold:v21 moireAmount:v43 neutralFactors:v44];

    goto LABEL_78;
  }

  *&v32 = v24;
  v34 = [(RAWReduceNoise *)self extractHalfSizeRGBHF:rCopy neutralFactors:v21 threshold:v32];

  if (![(NSNumber *)self->inputShowHF BOOLValue])
  {
    if (v24 > 0.0 || v30 > 0.0)
    {
      LODWORD(v37) = 1.0;
      *&v35 = v24;
      *&v36 = v31;
      v45 = [(RAWReduceNoise *)self powerBlurHF:v34 threshold:v35 moireAmount:v36 scale:v37];

      v40 = v45;
    }

    else
    {
      v40 = v34;
    }

    if (v25 > 0.0 || v30 >= 3.0)
    {
      if (v25 > 0.0)
      {
        LODWORD(v38) = 1033650332;
        LODWORD(v39) = 1076258406;
        LODWORD(v37) = 3.0;
        *&v35 = v25;
        *&v36 = v31;
        [(RAWReduceNoise *)self powerBlurDespeckleHF:v40 threshold:5 moireAmount:v35 scale:v36 countThreshold:v37 luminanceThreshold:v38 diffAmount:v39];
      }

      else
      {
        LODWORD(v37) = 3.0;
        *&v35 = v25;
        *&v36 = v31;
        [(RAWReduceNoise *)self powerBlurHF:v40 threshold:v35 moireAmount:v36 scale:v37];
      }
      v53 = ;

      v40 = v53;
    }

    if (v26 > 0.0 || v30 >= 7.0)
    {
      LODWORD(v37) = 7.0;
      *&v35 = v26;
      *&v36 = v31;
      v55 = [(RAWReduceNoise *)self powerBlurEarlyOutHF:v40 threshold:v35 moireAmount:v36 scale:v37];

      v40 = v55;
    }

    v57 = v30 < 14.0 && v28 <= 0.0;
    if (v9 <= 1.5)
    {
      if (!v57)
      {
        LODWORD(v37) = 14.0;
        *&v36 = v31;
        v58 = [(RAWReduceNoise *)self powerBlurEarlyOutHF:v40 threshold:COERCE_DOUBLE(LODWORD(v28)) moireAmount:v36 scale:v37];
        goto LABEL_64;
      }
    }

    else if (!v57)
    {
      LODWORD(v38) = 1041865114;
      LODWORD(v37) = 14.0;
      LODWORD(v39) = 5.0;
      *&v36 = v31;
      v58 = [(RAWReduceNoise *)self powerBlurEarlyOut2HF:v40 threshold:COERCE_DOUBLE(LODWORD(v28)) moireAmount:v36 scale:v37 neutralThreshold:v38 thresholdScale:v39];
LABEL_64:
      v59 = v58;

      v40 = v59;
    }

LABEL_77:
    v42 = [(RAWReduceNoise *)self perceptualToLinear:v40];

    v34 = [(RAWReduceNoise *)self expandHalfSizeRGB:v42];
    goto LABEL_78;
  }

LABEL_79:
  v41 = v34;
  rCopy = v41;
LABEL_80:
  v64 = v41;

  return v64;
}

- (id)outputImage
{
  if (self->inputImage)
  {
    doubleValue = [(NSNumber *)self->inputLNRAmount doubleValue];
    if (v4 == 0.0)
    {
      doubleValue = [(NSNumber *)self->inputCNRAmount doubleValue];
      if (v5 == 0.0)
      {
        doubleValue = [(NSNumber *)self->inputSharpenAmount doubleValue];
        if (v6 == 0.0)
        {
          doubleValue = [(NSNumber *)self->inputContrastAmount doubleValue];
          if (v7 == 0.0)
          {
            doubleValue = [(NSNumber *)self->inputDetailAmount doubleValue];
            if (v8 == 0.0)
            {
              doubleValue = [(NSNumber *)self->inputMoireAmount doubleValue];
              if (v9 == 0.0)
              {
                v8OutputImage = self->inputImage;
                goto LABEL_208;
              }
            }
          }
        }
      }
    }

    v11 = sub_23378E104(doubleValue);
    v12 = v11;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v11))
    {
      *&buf[4] = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWReduceNoise", &unk_233945DBE, &buf[4], 2u);
    }

    v445[0] = MEMORY[0x277D85DD0];
    v445[1] = 3221225472;
    v445[2] = sub_23388E644;
    v445[3] = &unk_2789EE800;
    v445[4] = self;
    v13 = MEMORY[0x2383AC810](v445);
    if ([(NSNumber *)self->inputVersion intValue]>= 8)
    {
      if (self->inputISODictionary)
      {
        v8OutputImage = [(RAWReduceNoise *)self V8OutputImage];
      }

      else
      {
        NSLog(&cfstr_V8NoiseReducti.isa);
        v8OutputImage = 0;
      }

      goto LABEL_206;
    }

    *buf = 0;
    v407 = v13;
    [(NSNumber *)self->inputScaleFactor floatValue];
    v15 = v14;
    [(RAWReduceNoise *)self adjustedRNAmount];
    v17 = v16;
    [(NSNumber *)self->inputLNRAmount floatValue];
    v19 = v18;
    [(NSNumber *)self->inputSharpenAmount floatValue];
    v21 = v20;
    [(NSNumber *)self->inputSharpenThreshold floatValue];
    v23 = exp2f(fminf(fmaxf((0.6 - v19) * 2.5, 0.0), 1.0) * v22);
    [(NSNumber *)self->inputContrastAmount floatValue];
    v25 = v24;
    [(NSNumber *)self->inputDetailAmount floatValue];
    v27 = v26;
    bOOLValue = [(NSNumber *)self->inputOpponentColorEnabled BOOLValue];
    v436 = v27;
    v439 = v23;
    v28 = fminf(fmaxf(v15, 0.0), 1.0);
    v29 = v28 * v21;
    v30 = log2f(v28);
    v31 = vcvtms_s32_f32(v30);
    if ((v31 & 0x80000000) == 0)
    {
      v32 = v25;
      goto LABEL_31;
    }

    v33 = v30 - floorf(v30);
    v32 = 0.0;
    if (v31 == -3)
    {
      v29 = v33 * v25;
    }

    else
    {
      if (v31 != -2)
      {
        v34 = v25 + ((v29 - v25) * v33);
        v35 = v25 + ((v25 - v25) * v33);
        v36 = v33 * v25;
        if (v31 == -1)
        {
          v25 = v36;
        }

        else
        {
          v25 = 0.0;
        }

        if (v31 == -1)
        {
          v29 = v34;
        }

        else
        {
          v29 = 0.0;
        }

        if (v31 == -1)
        {
          v32 = v35;
        }

LABEL_31:
        if (v17 < 1.0619)
        {
          v388 = (v17 / 1.0619) * 0.0113;
          v37 = 7.0;
          v38 = 0.381;
          v39 = 0.3;
LABEL_39:
          v390 = v39;
          goto LABEL_40;
        }

        if (v17 >= 1.1953)
        {
          if (v17 >= 1.3487)
          {
            if (v17 >= 1.4304)
            {
              if (v17 >= 1.6138)
              {
                if (v17 < 1.8297)
                {
                  v40 = (v17 + -1.6138) / 0.2159;
                  v37 = 11.0 - v40;
                  v388 = (v40 * 0.012) + 0.035;
                  v41 = 0.278;
                  v42 = -0.115;
                  goto LABEL_38;
                }

                if (v17 < 2.8337)
                {
                  v40 = (v17 + -1.8297) / 1.004;
                  v37 = (v40 * -3.0) + 10.0;
                  v388 = (v40 * 0.034) + 0.047;
                  v41 = 0.163;
                  v42 = 0.077;
                  goto LABEL_38;
                }

                if (v17 < 3.9856)
                {
                  v40 = (v17 + -2.8337) / 1.1519;
                  v37 = (v40 * -3.0) + 7.0;
                  v388 = (v40 * 0.008) + 0.081;
                  v41 = 0.24;
                  v42 = 0.06;
                  goto LABEL_38;
                }

                v390 = 1.0;
                if (v17 >= 6.1675)
                {
                  v37 = 3.5;
                  v38 = 0.333;
                  v388 = 0.206;
                }

                else
                {
                  v52 = (v17 + -3.9856) / 2.1819;
                  v37 = (v52 * -0.5) + 4.0;
                  v388 = (v52 * 0.117) + 0.089;
                  v38 = (v52 * 0.033) + 0.3;
                }
              }

              else
              {
                v47 = (v17 + -1.4304) / 0.1834;
                v388 = (v47 * 0.007) + 0.028;
                v38 = (v47 * -0.077) + 0.355;
                v390 = 1.0;
                v37 = 11.0;
              }

LABEL_40:
              if (v17 < 1.135)
              {
                v43 = 0.03;
                goto LABEL_63;
              }

              if (v17 >= 1.2804)
              {
                if (v17 >= 1.5949)
                {
                  if (v17 >= 1.7695)
                  {
                    if (v17 >= 2.5961)
                    {
                      if (v17 >= 3.8895)
                      {
                        if (v17 >= 5.9267)
                        {
                          v43 = 0.08;
LABEL_63:
                          if (v17 > 3.5)
                          {
                            v37 = 1.0;
                          }

                          v386 = v37;
                          v393 = v38;
                          v384 = v43;
                          if (v19 >= 0.5)
                          {
                            if (v17 > 5.3079)
                            {
                              v48 = 0.04;
                              goto LABEL_107;
                            }

                            if (v17 <= 3.7633)
                            {
                              if (v17 <= 2.1287)
                              {
                                if (v17 <= 1.6717)
                                {
                                  if (v17 <= 0.9414)
                                  {
                                    if (v17 <= 0.5)
                                    {
                                      v48 = 0.0021;
                                      goto LABEL_107;
                                    }

                                    v49 = (v17 + -0.5) / 0.3968;
                                    v50 = 0.0021;
                                    v51 = 0.0025;
                                  }

                                  else
                                  {
                                    v49 = (v17 + -0.9414) / 0.7303;
                                    v50 = 0.0046;
                                    v51 = 0.0052;
                                  }
                                }

                                else
                                {
                                  v49 = (v17 + -1.6717) / 0.457;
                                  v50 = 0.0098;
                                  v51 = 0.0085;
                                }
                              }

                              else
                              {
                                v49 = (v17 + -2.1287) / 1.6346;
                                v50 = 0.0183;
                                v51 = 0.0067;
                              }
                            }

                            else
                            {
                              v49 = (v17 + -3.7633) / 1.5446;
                              v50 = 0.025;
                              v51 = 0.015;
                            }
                          }

                          else
                          {
                            if (v17 > 5.9267)
                            {
                              v48 = 0.13;
                              goto LABEL_107;
                            }

                            if (v17 <= 3.8895)
                            {
                              if (v17 <= 2.5961)
                              {
                                if (v17 <= 1.7695)
                                {
                                  if (v17 <= 1.5949)
                                  {
                                    if (v17 <= 1.4104)
                                    {
                                      if (v17 <= 1.2804)
                                      {
                                        if (v17 <= 1.135)
                                        {
                                          if (v17 <= 1.0083)
                                          {
                                            if (v17 <= 0.8954)
                                            {
                                              v49 = v17 / 0.8954;
                                              v50 = 0.0087;
                                              v51 = 0.0108;
                                            }

                                            else
                                            {
                                              v49 = (v17 + -0.8954) / 0.1129;
                                              v50 = 0.0195;
                                              v51 = 0.0025;
                                            }
                                          }

                                          else
                                          {
                                            v49 = (v17 + -1.0083) / 0.1267;
                                            v50 = 0.022;
                                            v51 = 0.002;
                                          }
                                        }

                                        else
                                        {
                                          v49 = (v17 + -1.135) / 0.1454;
                                          v50 = 0.024;
                                          v51 = 0.004;
                                        }
                                      }

                                      else
                                      {
                                        v49 = (v17 + -1.2804) / 0.13;
                                        v50 = 0.028;
                                        v51 = 0.005;
                                      }
                                    }

                                    else
                                    {
                                      v49 = (v17 + -1.4104) / 0.1845;
                                      v50 = 0.033;
                                      v51 = 0.003;
                                    }
                                  }

                                  else
                                  {
                                    v49 = (v17 + -1.5949) / 0.1746;
                                    v50 = 0.036;
                                    v51 = 0.014;
                                  }
                                }

                                else
                                {
                                  v49 = (v17 + -1.7695) / 0.8266;
                                  v50 = 0.05;
                                  v51 = 0.015;
                                }
                              }

                              else
                              {
                                v49 = (v17 + -2.5961) / 1.2934;
                                v50 = 0.065;
                                v51 = 0.025;
                              }
                            }

                            else
                            {
                              v49 = (v17 + -3.8895) / 2.0372;
                              v50 = 0.09;
                              v51 = 0.04;
                            }
                          }

                          v48 = v50 + (v49 * v51);
LABEL_107:
                          v433 = v48;
                          v53 = MEMORY[0x277CBF788];
                          [(CIVector *)self->inputNeutralFactors X];
                          v55 = v54;
                          [(CIVector *)self->inputNeutralFactors Y];
                          v57 = v56;
                          [(CIVector *)self->inputNeutralFactors Z];
                          v59 = [v53 vectorWithX:1.0 / v55 Y:1.0 / v57 Z:1.0 / v58 W:1.0];
                          v395 = v25;
                          v398 = v17;
                          imageByClampingToExtent = [(CIImage *)self->inputImage imageByClampingToExtent];
                          [(CIImage *)self->inputImage extent];
                          v61 = v60;
                          v63 = v62;
                          v65 = v64;
                          v67 = v66;
                          v68 = [(RAWReduceNoise *)self outputUnboost:imageByClampingToExtent];

                          v443 = v68;
                          v69 = [(RAWReduceNoise *)self outputCNR:v61 extent:v63 returningDebugProduct:v65, v67];
                          if ([(NSNumber *)self->inputShowHF BOOLValue])
                          {
                            v8OutputImage = sub_23388E6CC(v69, v59, v61 * 0.5, v63 * 0.5, v65 * 0.5, v67 * 0.5);
                            v13 = v407;
LABEL_205:

LABEL_206:
                            v13[2](v13);

                            goto LABEL_208;
                          }

                          v378 = v32;
                          v375 = v61;
                          v382 = v59;
                          [(CIVector *)self->inputNeutralFactors X];
                          v71 = v70;
                          v373 = v63;
                          [(CIVector *)self->inputNeutralFactors Y];
                          v73 = v72;
                          [(CIVector *)self->inputNeutralFactors Z];
                          v75 = v74;
                          v371 = v65;
                          v372 = v67;
                          v376 = v29;
                          [(NSNumber *)self->inputBaselineExposure floatValue];
                          v77 = exp2f(v76);
                          v78 = MEMORY[0x277CBF788];
                          [(CIVector *)self->inputLumFactors X];
                          v80 = v79;
                          [(CIVector *)self->inputLumFactors Y];
                          v82 = v81;
                          [(CIVector *)self->inputLumFactors Z];
                          v84 = [v78 vectorWithX:v80 * v77 Y:v82 * v77 Z:v83 * v77 W:1.0];
                          v85 = MEMORY[0x277CBF788];
                          v380 = v84;
                          v381 = v69;
                          [v84 X];
                          v87 = v86;
                          [v84 Y];
                          v89 = v88;
                          [v84 Z];
                          v91 = [v85 vectorWithX:v71 * v87 Y:v73 * v89 Z:v75 * v90 W:1.0];
                          v374 = v91;
                          if (bOOLValue)
                          {
                            v92 = ((v398 * 0.01) * (v398 * 0.01)) / 0.15;
                            v93 = [MEMORY[0x277CBF788] vectorWithX:v71 * (v92 * 100.0) Y:v71 / ((v92 * 200.0) - (v92 * 100.0)) Z:v73 * (v92 * 100.0) W:v73 / ((v92 * 200.0) - (v92 * 100.0))];
                            v383 = [(RAWReduceNoise *)self extractYOpponentColor:v443 neutralFactors:self->inputNeutralFactors luminanceFactors:v84 noiseVector:v93];
                            v94 = v439;
                            v95 = v436;
                          }

                          else
                          {
                            v383 = [(RAWReduceNoise *)self extractY:v443 neutralFactors:v91];
                            v94 = v439;
                            v95 = v436;
                          }

                          v98 = v28 * v95;
                          v369 = v94 * v433;
                          v99 = v369 + v369;
                          if (v19 >= 0.5)
                          {
                            v100 = (v19 + -0.5) + (v19 + -0.5);
                          }

                          else
                          {
                            v100 = 0.0;
                          }

                          if (v19 >= 0.5)
                          {
                            v101 = 1.0;
                          }

                          else
                          {
                            v101 = v19 + v19;
                          }

                          if (v398 >= 0.5)
                          {
                            v102 = 0.0;
                          }

                          else
                          {
                            v102 = v98;
                          }

                          if (v398 >= 0.5)
                          {
                            v103 = v98;
                          }

                          else
                          {
                            v103 = 0.0;
                          }

                          v367 = v100;
                          if (v19 == 0.0 && v378 == 0.0 && v395 == 0.0 && v103 == 0.0)
                          {
                            v104 = 0;
                          }

                          else if (v100 == 0.0)
                          {
                            if (v103 == 0.0)
                            {
                              v105 = 2;
                            }

                            else
                            {
                              v105 = 3;
                            }

                            HIDWORD(v96) = 0;
                            if (v395 == 0.0 && v378 == 0.0)
                            {
                              v104 = v105;
                            }

                            else
                            {
                              v104 = 4;
                            }
                          }

                          else
                          {
                            v104 = 5;
                          }

                          LODWORD(v97) = 0.75;
                          *&v96 = v369 + v369;
                          [(RAWReduceNoise *)self computeLowThreshold:&buf[4] andFactor:buf withThreshold:v96 andSoftness:v97];
                          if (v104 > 2)
                          {
                            if (v104 == 3)
                            {
                              LODWORD(v107) = 1.0;
                              v131 = [(RAWReduceNoise *)self gaborFiltersToSmoothedLuminanceAndGradient:v383 smoothAmt:v107 tinyBlurFactor:0.0];
                              v132 = [(RAWReduceNoise *)self reduce:v131];
                              LODWORD(v134) = *buf;
                              LODWORD(v133) = *&buf[4];
                              v399 = [(RAWReduceNoise *)self blurGradient:v131 lothresh:v133 factor:v134];
                              v135 = [RAWReduceNoise expandAndMakeDetails:"expandAndMakeDetails:halfSize:" halfSize:?];
                              v136 = [(RAWReduceNoise *)self fineGrainNoise2:v135 tinyBlurFactor:0.0];
                              *&v137 = v101;
                              *&v138 = v376;
                              v389 = [RAWReduceNoise expandAndAddDetailsThroughGradientMask2:"expandAndAddDetailsThroughGradientMask2:halfSize:fullSizeDetails:soften:sharpen:" halfSize:v137 fullSizeDetails:v138 soften:? sharpen:?];
                              *&v139 = v103;
                              v140 = [RAWReduceNoise addNoise:"addNoise:noise:amount:" noise:v139 amount:?];
                              v141 = v140;
                              v387 = v136;
                              v396 = v132;
                              v391 = v131;
                              v121 = 0;
                              v122 = v135;
                              if (bOOLValue)
                              {
                                [(RAWReduceNoise *)self YAndRGBGatherOpponentColor:v140 cnrRGB:v381 originalY:v383 sushiFactors:v59 crop:v380 lumFactors:v375, v373, v371, v372];
                              }

                              else
                              {
                                [(RAWReduceNoise *)self YAndRGBGather:v140 cnrRGB:v381 sushiFactors:v59 crop:v380 lumFactors:v375, v373, v371, v372];
                              }
                              v194 = ;
                              v415 = 0;
                              v416 = 0;
                              v417 = 0;
                              v385 = 0;
                              v424 = 0;
                              v426 = 0;
                              v422 = 0;
                              v423 = 0;
                              v421 = 0;
                              v392 = 0;
                              v379 = 0;
                              v368 = 0;
                              v431 = 0;
                              v432 = 0;
                              v428 = 0;
                              v429 = 0;
                              v427 = 0;
                              v394 = 0;
                              v377 = 0;
                              v196 = v141;
                            }

                            else
                            {
                              if (v104 != 4)
                              {
                                v149 = v99;
                                if (v99 <= 0.003)
                                {
                                  LODWORD(v149) = 1.0;
                                  v150 = [(RAWReduceNoise *)self gaborFiltersToSmoothedLuminanceAndGradient:v383 smoothAmt:v149 tinyBlurFactor:0.0];
                                  v401 = v150;
                                  v402 = 0;
                                }

                                else
                                {
                                  *&v149 = v384;
                                  v150 = [(RAWReduceNoise *)self gaborFiltersToLuminanceAndVectorField:v383 thresh:v149];
                                  v401 = 0;
                                  v402 = v150;
                                }

                                v412 = v150;
                                v403 = [(RAWReduceNoise *)self reduce:?];
                                v404 = [(RAWReduceNoise *)self expandAndMakeDetails:v412 halfSize:?];
                                v406 = [(RAWReduceNoise *)self reduce:v403];
                                v405 = [(RAWReduceNoise *)self expandAndMakeDetails:v403 halfSize:?];
                                v151 = [(RAWReduceNoise *)self reduce:v406];
                                *&v152 = v369 * 0.25;
                                v153 = v151;
                                LODWORD(v154) = 992204554;
                                if ((v369 * 0.25) <= 0.0025)
                                {
                                  v121 = 0;
                                  v408 = 0;
                                  v415 = 0;
                                  v416 = 0;
                                  v417 = 0;
                                }

                                else
                                {
                                  v409 = v151;
                                  v155 = [(RAWReduceNoise *)self gaborFiltersToVectorField:v151];
                                  v156 = v155;
                                  *&v157 = v398;
                                  v158 = fminf(fmaxf((v398 * 0.69444) + -1.0, 0.0), 1.0);
                                  LODWORD(v159) = 2.5;
                                  if (v398 <= 2.5)
                                  {
                                    v200 = v155;
                                    LODWORD(v201) = 0.75;
                                    v415 = v200;
                                    *&v202 = v369 * 0.25;
                                    [(RAWReduceNoise *)self computeLowThreshold:&buf[4] andFactor:buf withThreshold:v202 andSoftness:v201];
                                    v203 = [(RAWReduceNoise *)self vectorFieldToDirectionsAndGradients:?];
                                    *&v204 = v158;
                                    v205 = [(RAWReduceNoise *)self smoothDetailsAlongDirections:v409 directions:v203 amount:v204];
                                    LODWORD(v207) = *buf;
                                    LODWORD(v206) = *&buf[4];
                                    [(RAWReduceNoise *)self blurGradient:v203 lothresh:v206 factor:v207];
                                    v408 = v192 = v205;
                                    v416 = v203;
                                  }

                                  else
                                  {
                                    v157 = [(RAWReduceNoise *)self smoothVectorFieldAlongVectors:v155, v159, v157];
                                    LODWORD(v161) = 0.75;
                                    *&v162 = v369 * 0.25;
                                    [(RAWReduceNoise *)self computeLowThreshold:&buf[4] andFactor:buf withThreshold:v162 andSoftness:v161];
                                    v163 = [(RAWReduceNoise *)self vectorFieldToDirectionsAndGradients:v157];
                                    *&v164 = v388 * 0.03;
                                    v165 = [(RAWReduceNoise *)self directionsToCurvature:v163 threshold:v164];

                                    LODWORD(v167) = *buf;
                                    LODWORD(v166) = *&buf[4];
                                    *&v168 = v386;
                                    v169 = [(RAWReduceNoise *)self blurGradientPlusCurvature:v165 lothresh:v166 factor:v167 cthresh:0.0 cfactor:v168];
                                    *&v170 = v158 * v390;
                                    LODWORD(v171) = 1.0;
                                    LODWORD(v172) = 1.0;
                                    *&v173 = v393;
                                    *&v174 = v398 * 0.02054;
                                    LODWORD(v175) = 1036831949;
                                    v176 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom:v409 directions:v169 scale:v171 thresh:0.0 smooth:v170 sharp:v173 pscale:v172 coringThreshold:v174 maxContrast:v175];
                                    *&v177 = v158 * ((v390 * 0.66667) + 0.33333);
                                    LODWORD(v178) = 2.0;
                                    LODWORD(v179) = 0.25;
                                    LODWORD(v180) = 2.0;
                                    *&v181 = v393 * 0.6;
                                    *&v182 = v398 * 0.02054;
                                    LODWORD(v183) = 1036831949;
                                    v184 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom:v176 directions:v169 scale:v178 thresh:v179 smooth:v177 sharp:v181 pscale:v180 coringThreshold:v182 maxContrast:v183];

                                    *&v185 = (v393 * 0.6) * 0.6;
                                    LODWORD(v186) = 4.0;
                                    LODWORD(v187) = 0.5;
                                    LODWORD(v188) = 3.0;
                                    *&v189 = v158 * ((v390 * 0.33333) + 0.66667);
                                    *&v190 = v398 * 0.02054;
                                    LODWORD(v191) = 1036831949;
                                    v192 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom:v184 directions:v169 scale:v186 thresh:v187 smooth:v189 sharp:v185 pscale:v188 coringThreshold:v190 maxContrast:v191];

                                    v408 = v169;
                                    v415 = v157;
                                    v416 = v165;
                                  }

                                  *&v193 = v369 * 0.25;
                                  v208 = [(RAWReduceNoise *)self powerBlurY:v409 threshold:v193];

                                  v209 = [(RAWReduceNoise *)self compositeThroughGradientMask:v208 fullSize:v192 fullSizeMask:v408];

                                  v121 = v209;
                                  v417 = v156;
                                  v153 = v121;
                                }

                                v410 = v153;
                                v152 = [(RAWReduceNoise *)self expandAndMakeDetails:v406 halfSize:v154, v152];
                                v411 = v152;
                                if ((v369 * 0.5) <= 0.003)
                                {
                                  *&v211 = v395;
                                  v250 = [(RAWReduceNoise *)self expandAndAddDetailsWithOverdrive:v410 fullSize:v152 contrast:v211];
                                  v252 = 0;
                                  v219 = 0;
                                  v212 = 0;
                                  v253 = 0;
                                  v246 = 0;
                                }

                                else
                                {
                                  v365 = [(RAWReduceNoise *)self gaborFiltersToVectorField:v406];
                                  *&v212 = v398;
                                  v363 = fminf(fmaxf((v398 * 1.3889) + -1.0, 0.0), 1.0);
                                  LODWORD(v213) = 1071225242;
                                  if (v398 <= 1.7)
                                  {
                                    v254 = v365;
                                    LODWORD(v255) = 0.75;
                                    v425 = v254;
                                    *&v256 = v369 * 0.5;
                                    [(RAWReduceNoise *)self computeLowThreshold:&buf[4] andFactor:buf withThreshold:v256 andSoftness:v255];
                                    v219 = [(RAWReduceNoise *)self vectorFieldToDirectionsAndGradients:?];
                                    *&v257 = v363;
                                    v246 = [(RAWReduceNoise *)self smoothDetailsAlongDirections:v411 directions:v219 amount:v257];
                                    LODWORD(v259) = *buf;
                                    LODWORD(v258) = *&buf[4];
                                    v223 = [(RAWReduceNoise *)self blurGradient:v219 lothresh:v258 factor:v259];
                                    v212 = v425;
                                  }

                                  else
                                  {
                                    v212 = [(RAWReduceNoise *)self smoothVectorFieldAlongVectors:v213, v212];
                                    LODWORD(v215) = 0.75;
                                    *&v216 = v369 * 0.5;
                                    [(RAWReduceNoise *)self computeLowThreshold:&buf[4] andFactor:buf withThreshold:v216 andSoftness:v215];
                                    v217 = [(RAWReduceNoise *)self vectorFieldToDirectionsAndGradients:v212];
                                    *&v218 = v388 * 0.1111;
                                    v219 = [(RAWReduceNoise *)self directionsToCurvature:v217 threshold:v218];

                                    LODWORD(v221) = *buf;
                                    LODWORD(v220) = *&buf[4];
                                    *&v222 = v386;
                                    v223 = [(RAWReduceNoise *)self blurGradientPlusCurvature:v219 lothresh:v220 factor:v221 cthresh:0.0 cfactor:v222];
                                    *&v224 = v363 * v390;
                                    LODWORD(v225) = 1.0;
                                    LODWORD(v226) = 1.0;
                                    *&v227 = v393;
                                    *&v228 = v398 * 0.02054;
                                    LODWORD(v229) = 1036831949;
                                    v230 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom:v411 directions:v223 scale:v225 thresh:0.0 smooth:v224 sharp:v227 pscale:v226 coringThreshold:v228 maxContrast:v229];
                                    *&v231 = v363 * ((v390 * 0.66667) + 0.33333);
                                    LODWORD(v232) = 2.0;
                                    LODWORD(v233) = 0.25;
                                    LODWORD(v234) = 2.0;
                                    *&v235 = v393 * 0.6;
                                    *&v236 = v398 * 0.02054;
                                    LODWORD(v237) = 1036831949;
                                    v238 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom:v230 directions:v223 scale:v232 thresh:v233 smooth:v231 sharp:v235 pscale:v234 coringThreshold:v236 maxContrast:v237];

                                    *&v239 = (v393 * 0.6) * 0.6;
                                    LODWORD(v240) = 4.0;
                                    LODWORD(v241) = 0.5;
                                    LODWORD(v242) = 3.0;
                                    *&v243 = v363 * ((v390 * 0.33333) + 0.66667);
                                    *&v244 = v398 * 0.02054;
                                    LODWORD(v245) = 1036831949;
                                    v246 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpenAntiBloom:v238 directions:v223 scale:v240 thresh:v241 smooth:v243 sharp:v239 pscale:v242 coringThreshold:v244 maxContrast:v245];
                                  }

                                  *&v249 = fminf(v367 / 0.5625, 1.0);
                                  *&v247 = 1.0 - v363;
                                  *&v248 = v395;
                                  v250 = [(RAWReduceNoise *)self expandAndAddDetailsThroughGradientMask:v410 fullSize:v411 fullSizeDetails:v246 fullSizeMask:v223 amount:v247 contrastOverdrive:v248 interpolant:v249];
                                  v252 = v223;
                                  v253 = v365;
                                }

                                v421 = v253;
                                v422 = v246;
                                v423 = v219;
                                v424 = v212;
                                v426 = v252;
                                v413 = v250;
                                if (v369 <= 0.003)
                                {
                                  v431 = 0;
                                  *&v251 = v378;
                                  v414 = [(RAWReduceNoise *)self expandAndAddDetailsWithOverdrive:v250 fullSize:v405 contrast:v251];
                                  v432 = 0;
                                  v428 = 0;
                                  v429 = 0;
                                  v427 = 0;
                                }

                                else
                                {
                                  *&v251 = v94 * v433;
                                  v251 = [(RAWReduceNoise *)self gaborFiltersToVectorField:v403, v251];
                                  v261 = v251;
                                  *&v262 = v398;
                                  v397 = fminf(fmaxf((v398 * 2.7778) + -1.0, 0.0), 1.0);
                                  LODWORD(v263) = 1068708659;
                                  if (v398 <= 1.4)
                                  {
                                    v303 = v251;
                                    LODWORD(v304) = 0.75;
                                    v430 = v303;
                                    *&v305 = v94 * v433;
                                    [(RAWReduceNoise *)self computeLowThreshold:&buf[4] andFactor:buf withThreshold:v305 andSoftness:v304];
                                    v292 = [(RAWReduceNoise *)self vectorFieldToDirectionsAndGradients:?];
                                    *&v306 = v397;
                                    v299 = [(RAWReduceNoise *)self smoothDetailsAlongDirections:v405 directions:v292 amount:v306];
                                    LODWORD(v308) = *buf;
                                    LODWORD(v307) = *&buf[4];
                                    v272 = [(RAWReduceNoise *)self blurGradient:v292 lothresh:v307 factor:v308];
                                    v262 = v430;
                                    v300 = 0;
                                  }

                                  else
                                  {
                                    v262 = [(RAWReduceNoise *)self smoothVectorFieldAlongVectors:v251, v263, v262];
                                    LODWORD(v265) = 0.75;
                                    *&v266 = v94 * v433;
                                    [(RAWReduceNoise *)self computeLowThreshold:&buf[4] andFactor:buf withThreshold:v266 andSoftness:v265];
                                    v267 = [(RAWReduceNoise *)self vectorFieldToDirectionsAndGradients:v262];
                                    *&v268 = v388 * 0.3333;
                                    v366 = [(RAWReduceNoise *)self directionsToCurvature:v267 threshold:v268];

                                    LODWORD(v270) = *buf;
                                    LODWORD(v269) = *&buf[4];
                                    *&v271 = v386;
                                    v272 = [(RAWReduceNoise *)self blurGradientPlusCurvature:v269 lothresh:v270 factor:0.0 cthresh:v271 cfactor:?];
                                    *&v273 = v397 * v390;
                                    LODWORD(v274) = 1.0;
                                    LODWORD(v275) = 1.0;
                                    *&v276 = v393;
                                    *&v277 = v398 * 0.02054;
                                    v278 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpen:v405 directions:v272 scale:v274 thresh:0.0 smooth:v273 sharp:v276 pscale:v275 coringThreshold:v277];
                                    *&v279 = v397 * ((v390 * 0.66667) + 0.33333);
                                    LODWORD(v280) = 2.0;
                                    LODWORD(v281) = 0.25;
                                    LODWORD(v282) = 2.0;
                                    *&v283 = v393 * 0.6;
                                    *&v284 = v398 * 0.02054;
                                    v285 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpen:v278 directions:v272 scale:v280 thresh:v281 smooth:v279 sharp:v283 pscale:v282 coringThreshold:v284];

                                    LODWORD(v286) = 4.0;
                                    LODWORD(v287) = 0.5;
                                    LODWORD(v288) = 3.0;
                                    *&v289 = v397 * ((v390 * 0.33333) + 0.66667);
                                    *&v290 = (v393 * 0.6) * 0.6;
                                    *&v291 = v398 * 0.02054;
                                    v292 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpen:v285 directions:v272 scale:v286 thresh:v287 smooth:v289 sharp:v290 pscale:v288 coringThreshold:v291];

                                    *&v293 = ((v393 * 0.6) * 0.6) * 0.6;
                                    LODWORD(v294) = 8.0;
                                    LODWORD(v295) = 0.75;
                                    LODWORD(v296) = 4.0;
                                    *&v297 = v397;
                                    *&v298 = v398 * 0.02054;
                                    v299 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpen:v292 directions:v272 scale:v294 thresh:v295 smooth:v297 sharp:v293 pscale:v296 coringThreshold:v298];
                                    v300 = v366;
                                  }

                                  *&v309 = fminf(v367 / 0.75, 1.0);
                                  *&v310 = 1.0 - v397;
                                  *&v311 = v378;
                                  v414 = [(RAWReduceNoise *)self expandAndAddDetailsThroughGradientMask:v413 fullSize:v405 fullSizeDetails:v299 fullSizeMask:v272 amount:v310 contrastOverdrive:v311 interpolant:v309];
                                  v431 = v272;
                                  v432 = v300;
                                  v428 = v299;
                                  v429 = v262;
                                  v427 = v261;
                                }

                                LODWORD(v302) = 0.75;
                                *&v301 = v369 + v369;
                                [(RAWReduceNoise *)self computeLowThreshold:&buf[4] andFactor:buf withThreshold:v301 andSoftness:v302];
                                if (v99 <= 0.003)
                                {
                                  if (v103 <= 0.0)
                                  {
                                    v321 = 0;
                                  }

                                  else
                                  {
                                    v321 = [(RAWReduceNoise *)self fineGrainNoise2:v404 tinyBlurFactor:0.0];
                                  }

                                  LODWORD(v313) = *buf;
                                  LODWORD(v312) = *&buf[4];
                                  v441 = [(RAWReduceNoise *)self blurGradient:v412 lothresh:v312 factor:v313];
                                  *&v354 = v101;
                                  *&v355 = v376;
                                  v356 = [(RAWReduceNoise *)self expandAndAddDetailsThroughGradientMask2:v441 halfSize:v414 fullSizeDetails:v404 soften:v354 sharpen:v355];
                                  v357 = v441;
                                  v199 = 0;
                                  v437 = 0;
                                  v358 = 0;
                                }

                                else
                                {
                                  v435 = [(RAWReduceNoise *)self smoothVectorFieldAlongVectors:v412];
                                  v438 = [(RAWReduceNoise *)self vectorFieldToDirectionsAndGradients:?];
                                  *&v314 = v388;
                                  v315 = [(RAWReduceNoise *)self directionsToCurvature:v438 threshold:v314];

                                  if (v398 > 1.4 && v398 > 3.5 && (*&v316 = v369, v369 > 0.003) && v432)
                                  {
                                    v319 = [(RAWReduceNoise *)self mergeHalfSizeCurvature:v316 intoFullSizeCurvature:?];

                                    v320 = v319;
                                  }

                                  else
                                  {
                                    v320 = v315;
                                  }

                                  v437 = v320;
                                  LODWORD(v317) = *buf;
                                  LODWORD(v316) = *&buf[4];
                                  *&v318 = v386;
                                  v322 = [(RAWReduceNoise *)self blurGradientPlusCurvature:v316 lothresh:v317 factor:0.0 cthresh:v318 cfactor:?];
                                  v323 = fminf(fmaxf((v398 * 5.5556) + -1.0, 0.0), 1.0);
                                  *&v324 = v323 * v390;
                                  LODWORD(v325) = 1.0;
                                  LODWORD(v326) = 1.0;
                                  *&v327 = v393;
                                  *&v328 = v398 * 0.02054;
                                  v329 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpen:v404 directions:v322 scale:v325 thresh:0.0 smooth:v324 sharp:v327 pscale:v326 coringThreshold:v328];
                                  *&v330 = v323 * ((v390 * 0.66667) + 0.33333);
                                  LODWORD(v331) = 2.0;
                                  LODWORD(v332) = 0.25;
                                  LODWORD(v333) = 2.0;
                                  *&v334 = v393 * 0.6;
                                  *&v335 = v398 * 0.02054;
                                  v336 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpen:v329 directions:v322 scale:v331 thresh:v332 smooth:v330 sharp:v334 pscale:v333 coringThreshold:v335];

                                  LODWORD(v337) = 4.0;
                                  LODWORD(v338) = 0.5;
                                  LODWORD(v339) = 3.0;
                                  *&v340 = v323 * ((v390 * 0.33333) + 0.66667);
                                  *&v341 = (v393 * 0.6) * 0.6;
                                  *&v342 = v398 * 0.02054;
                                  v343 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpen:v336 directions:v322 scale:v337 thresh:v338 smooth:v340 sharp:v341 pscale:v339 coringThreshold:v342];

                                  *&v344 = ((v393 * 0.6) * 0.6) * 0.6;
                                  LODWORD(v345) = 8.0;
                                  LODWORD(v346) = 0.75;
                                  LODWORD(v347) = 4.0;
                                  *&v348 = v323;
                                  *&v349 = v398 * 0.02054;
                                  v199 = [(RAWReduceNoise *)self smoothDetailsAlongDirectionsAtScaleWithSharpen:v343 directions:v322 scale:v345 thresh:v346 smooth:v348 sharp:v344 pscale:v347 coringThreshold:v349];

                                  if (v103 <= 0.0)
                                  {
                                    v321 = 0;
                                    *&v351 = v367;
                                  }

                                  else
                                  {
                                    v353 = [(RAWReduceNoise *)self fineGrainNoise2:v404 tinyBlurFactor:0.0];
                                    *&v351 = v367;
                                    v321 = v353;
                                  }

                                  *&v352 = 1.0 - *&v351;
                                  *&v350 = v323;
                                  *&v351 = v376;
                                  v356 = [(RAWReduceNoise *)self expandAndAddDetailsThroughGradientMask3:v414 fullSize:v404 fullSizeDetails:v199 fullSizeMask:v322 amount:v350 sharpen:v351 interpolant:v352];
                                  v357 = v322;
                                  v358 = v435;
                                }

                                v359 = v356;
                                v434 = v358;
                                v440 = v357;
                                v419 = v359;
                                v418 = v321;
                                if (v103 <= 0.0)
                                {
                                  v361 = v359;
                                }

                                else
                                {
                                  *&v360 = v103;
                                  v361 = [(RAWReduceNoise *)self addNoise:v359 noise:v321 amount:v360];
                                }

                                v420 = v361;
                                if (bOOLValue)
                                {
                                  [RAWReduceNoise YAndRGBGatherOpponentColor:"YAndRGBGatherOpponentColor:cnrRGB:originalY:sushiFactors:crop:lumFactors:" cnrRGB:v375 originalY:v373 sushiFactors:v371 crop:v372 lumFactors:?];
                                }

                                else
                                {
                                  [(RAWReduceNoise *)self YAndRGBGather:v375 cnrRGB:v373 sushiFactors:v371 crop:v372 lumFactors:?];
                                }
                                v194 = ;
                                v368 = v406;
                                v122 = v404;
                                v392 = v411;
                                v394 = v405;
                                v377 = v414;
                                v379 = v413;
                                v396 = v403;
                                v399 = 0;
                                v197 = v419;
                                v196 = v420;
                                v389 = v419;
                                v385 = v410;
                                v387 = v418;
                                v127 = v401;
                                v198 = v402;
                                v195 = v408;
                                goto LABEL_204;
                              }

                              LODWORD(v107) = 1.0;
                              v391 = [(RAWReduceNoise *)self gaborFiltersToSmoothedLuminanceAndGradient:v383 smoothAmt:v107 tinyBlurFactor:0.0];
                              v108 = [(RAWReduceNoise *)self reduce:?];
                              v370 = [RAWReduceNoise expandAndMakeDetails:"expandAndMakeDetails:halfSize:" halfSize:?];
                              v109 = [(RAWReduceNoise *)self reduce:v108];
                              v394 = [(RAWReduceNoise *)self expandAndMakeDetails:v108 halfSize:v109];
                              v110 = [(RAWReduceNoise *)self reduce:v109];
                              v392 = [(RAWReduceNoise *)self expandAndMakeDetails:v109 halfSize:v110];
                              *&v111 = v395;
                              v112 = [(RAWReduceNoise *)self expandAndAddDetailsWithOverdrive:v110 fullSize:v111 contrast:?];
                              *&v113 = v378;
                              v114 = [(RAWReduceNoise *)self expandAndAddDetailsWithOverdrive:v112 fullSize:v113 contrast:?];
                              v115 = [(RAWReduceNoise *)self fineGrainNoise2:0.0 tinyBlurFactor:?];
                              LODWORD(v117) = *buf;
                              LODWORD(v116) = *&buf[4];
                              v399 = [(RAWReduceNoise *)self blurGradient:v116 lothresh:v117 factor:?];
                              *&v118 = v101;
                              *&v119 = v376;
                              v389 = [RAWReduceNoise expandAndAddDetailsThroughGradientMask2:"expandAndAddDetailsThroughGradientMask2:halfSize:fullSizeDetails:soften:sharpen:" halfSize:v118 fullSizeDetails:v119 soften:? sharpen:?];
                              *&v120 = v103;
                              v364 = [RAWReduceNoise addNoise:"addNoise:noise:amount:" noise:v120 amount:?];
                              v377 = v114;
                              v379 = v112;
                              v385 = v110;
                              v387 = v115;
                              v396 = v108;
                              v368 = v109;
                              v121 = 0;
                              v122 = v370;
                              if (bOOLValue)
                              {
                                [RAWReduceNoise YAndRGBGatherOpponentColor:"YAndRGBGatherOpponentColor:cnrRGB:originalY:sushiFactors:crop:lumFactors:" cnrRGB:v375 originalY:v373 sushiFactors:v371 crop:v372 lumFactors:?];
                              }

                              else
                              {
                                [(RAWReduceNoise *)self YAndRGBGather:v375 cnrRGB:v373 sushiFactors:v371 crop:v372 lumFactors:?];
                              }
                              v194 = ;
                              v415 = 0;
                              v416 = 0;
                              v417 = 0;
                              v424 = 0;
                              v426 = 0;
                              v422 = 0;
                              v423 = 0;
                              v421 = 0;
                              v431 = 0;
                              v432 = 0;
                              v428 = 0;
                              v429 = 0;
                              v427 = 0;
                              v196 = v364;
                            }

                            v195 = 0;
                            v197 = 0;
                            v437 = 0;
                            v440 = 0;
                            v434 = 0;
                            v412 = 0;
                            v198 = 0;
                            v199 = 0;
                            v127 = v391;
                          }

                          else
                          {
                            if (v104)
                            {
                              LODWORD(v107) = 1.0;
                              v142 = [(RAWReduceNoise *)self gaborFiltersToSmoothedLuminanceAndGradient:v383 smoothAmt:v107 tinyBlurFactor:0.0];
                              v143 = [(RAWReduceNoise *)self reduce:v142];
                              LODWORD(v145) = *buf;
                              LODWORD(v144) = *&buf[4];
                              v399 = [(RAWReduceNoise *)self blurGradient:v142 lothresh:v144 factor:v145];
                              v396 = v143;
                              v121 = 0;
                              v127 = v142;
                              *&v146 = v376;
                              *&v147 = v101;
                              *&v148 = v102;
                              if (bOOLValue)
                              {
                                [RAWReduceNoise expandAndSharpenDetailsThroughGradientMaskGatherOpponentColor:"expandAndSharpenDetailsThroughGradientMaskGatherOpponentColor:halfSizeY:cnrRGB:originalY:sharpen:soften:floor:sushiFactors:crop:lumFactors:" halfSizeY:v146 cnrRGB:v147 originalY:v148 sharpen:v375 soften:v373 floor:v371 sushiFactors:v372 crop:? lumFactors:?];
                              }

                              else
                              {
                                [RAWReduceNoise expandAndSharpenDetailsThroughGradientMaskGather:"expandAndSharpenDetailsThroughGradientMaskGather:halfSizeY:cnrRGB:sharpen:soften:floor:sushiFactors:crop:lumFactors:" halfSizeY:v146 cnrRGB:v147 sharpen:v148 soften:v375 floor:v373 sushiFactors:v371 crop:v372 lumFactors:?];
                              }
                            }

                            else
                            {
                              LODWORD(v107) = 1.0;
                              v123 = [(RAWReduceNoise *)self gaborFiltersToSmoothedLuminanceAndGradient:v383 smoothAmt:v107 tinyBlurFactor:0.0];
                              v124 = [(RAWReduceNoise *)self reduce:v123];
                              LODWORD(v126) = *buf;
                              LODWORD(v125) = *&buf[4];
                              v399 = [(RAWReduceNoise *)self blurGradient:v123 lothresh:v125 factor:v126];
                              v396 = v124;
                              v121 = 0;
                              v127 = v123;
                              *&v128 = v376;
                              *&v129 = v102;
                              if (bOOLValue)
                              {
                                [RAWReduceNoise expandAndSharpenThroughGradientMaskGatherOpponentColor:"expandAndSharpenThroughGradientMaskGatherOpponentColor:halfSizeY:cnrRGB:originalY:sharpen:floor:sushiFactors:crop:lumFactors:" halfSizeY:v128 cnrRGB:v129 originalY:v375 sharpen:v373 floor:v371 sushiFactors:v372 crop:? lumFactors:?];
                              }

                              else
                              {
                                [RAWReduceNoise expandAndSharpenThroughGradientMaskGather:"expandAndSharpenThroughGradientMaskGather:halfSizeY:cnrRGB:sharpen:floor:sushiFactors:crop:lumFactors:" halfSizeY:v128 cnrRGB:v129 sharpen:v375 floor:v373 sushiFactors:v371 crop:v372 lumFactors:?];
                              }
                            }
                            v130 = ;
                            v194 = v130;
                            v195 = 0;
                            v415 = 0;
                            v416 = 0;
                            v417 = 0;
                            v385 = 0;
                            v424 = 0;
                            v426 = 0;
                            v422 = 0;
                            v423 = 0;
                            v421 = 0;
                            v392 = 0;
                            v379 = 0;
                            v368 = 0;
                            v431 = 0;
                            v432 = 0;
                            v428 = 0;
                            v429 = 0;
                            v427 = 0;
                            v394 = 0;
                            v377 = 0;
                            v196 = 0;
                            v197 = 0;
                            v389 = 0;
                            v437 = 0;
                            v440 = 0;
                            v434 = 0;
                            v387 = 0;
                            v412 = 0;
                            v198 = 0;
                            v199 = 0;
                            v122 = 0;
                          }

LABEL_204:
                          v8OutputImage = [(RAWReduceNoise *)self outputBoost:v194];

                          v13 = v407;
                          v69 = v381;
                          v59 = v382;
                          goto LABEL_205;
                        }

                        v44 = (v17 + -3.8895) / 2.0372;
                        v45 = 0.07;
                        v46 = 0.01;
                      }

                      else
                      {
                        v44 = (v17 + -2.5961) / 1.2934;
                        v45 = 0.051;
                        v46 = 0.019;
                      }
                    }

                    else
                    {
                      v44 = (v17 + -1.7695) / 0.8266;
                      v45 = 0.05;
                      v46 = 0.001;
                    }
                  }

                  else
                  {
                    v44 = (v17 + -1.5949) / 0.1746;
                    v45 = 0.038;
                    v46 = 0.012;
                  }
                }

                else
                {
                  v44 = (v17 + -1.2804) / 0.3145;
                  v45 = 0.0308;
                  v46 = 0.0072;
                }
              }

              else
              {
                v44 = (v17 + -1.135) / 0.1454;
                v45 = 0.03;
                v46 = 0.0008;
              }

              v43 = v45 + (v44 * v46);
              goto LABEL_63;
            }

            v40 = (v17 + -1.3487) / 0.0817;
            v37 = v40 + 10.0;
            v388 = (v40 * 0.002) + 0.026;
            v41 = 0.355;
            v42 = 0.0;
LABEL_38:
            v38 = v41 + (v40 * v42);
            v39 = 1.0;
            goto LABEL_39;
          }

          v40 = (v17 + -1.1953) / 0.1534;
          v37 = (v40 * 2.0) + 8.0;
          v388 = (v40 * 0.008) + 0.02;
          v41 = 0.368;
        }

        else
        {
          v40 = (v17 + -1.0619) / 0.1334;
          v37 = v40 + 7.0;
          v388 = (v40 * 0.0087) + 0.0113;
          v41 = 0.381;
        }

        v42 = -0.013;
        goto LABEL_38;
      }

      v29 = v25 + ((v25 - v25) * v33);
      v32 = v33 * v25;
    }

    v25 = 0.0;
    goto LABEL_31;
  }

  v8OutputImage = 0;
LABEL_208:

  return v8OutputImage;
}

- (id)image:(id)image croppedTo:(CGRect)to
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  imageCopy = image;
  v9 = MEMORY[0x277CBF750];
  v10 = [MEMORY[0x277CBF788] vectorWithX:x Y:y Z:width W:height];
  v11 = [v9 filterWithName:@"CICrop" keysAndValues:{@"inputImage", imageCopy, @"inputRectangle", v10, 0}];

  v12 = [v11 valueForKey:@"outputImage"];

  return v12;
}

- (BOOL)isBayerGreenAlignedforImage:(id)image andPattern:(int)pattern
{
  imageCopy = image;
  [imageCopy extent];
  v11 = CGRectIntegral(v10);
  v7 = pattern == 1633771873 || pattern == 1229539657;
  v8 = v7 ^ (v11.origin.x + v11.origin.y);

  return v8 & 1;
}

- (id)outputCNR:(id)r E0:(CGRect)e0 E1:(CGRect)e1
{
  height = e1.size.height;
  width = e1.size.width;
  y = e1.origin.y;
  x = e1.origin.x;
  v437[2] = *MEMORY[0x277D85DE8];
  rCopy = r;
  [(NSNumber *)self->inputScaleFactor floatValue];
  v392 = v10;
  intValue = [(NSNumber *)self->inputISO intValue];
  v12 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"ISOList"];
  v422 = v12;
  v13 = [v12 count];
  v385 = width;
  v386 = height;
  v383 = x;
  v384 = y;
  if (v13)
  {
    v14 = 0;
    while (1)
    {
      v15 = [v12 objectAtIndexedSubscript:v14];
      intValue2 = [v15 intValue];

      v17 = intValue != intValue2;
      if (intValue == intValue2)
      {
        v18 = 0.0;
        goto LABEL_10;
      }

      v12 = v422;
      if (intValue < intValue2)
      {
        break;
      }

      if (v13 == ++v14)
      {
        goto LABEL_6;
      }
    }

    if (!v14)
    {
      v17 = 0;
      v18 = 0.0;
      goto LABEL_12;
    }

    v19 = [v422 objectAtIndexedSubscript:--v14];
    intValue3 = [v19 intValue];

    v18 = (intValue - intValue3) / (intValue2 - intValue3);
LABEL_10:
    if (v14 != 100000)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_6:
    v17 = 0;
    v18 = 0.0;
  }

  v14 = v13 - 1;
LABEL_12:
  v391 = self->inputTrimParameters;
  v21 = [(NSDictionary *)v391 objectForKeyedSubscript:@"color"];
  v22 = [v21 objectAtIndexedSubscript:0];
  [v22 floatValue];
  v407 = v23;

  v24 = [v21 objectAtIndexedSubscript:1];
  [v24 floatValue];
  v402 = v25;

  [(RAWReduceNoise *)self adjustedRNAmount];
  v380 = v26;
  [(NSNumber *)self->inputCNRAmount floatValue];
  v389 = v27;
  v28 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FCNRa"];
  v29 = [v28 objectAtIndexedSubscript:v14];
  [v29 floatValue];
  v415 = v30;

  if (v17)
  {
    v31 = [v28 objectAtIndexedSubscript:v14 + 1];
    [v31 floatValue];
    v33 = v32;

    v415 = v415 + ((v33 - v415) * v18);
  }

  v34 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FCNRb"];

  v35 = [v34 objectAtIndexedSubscript:v14];
  [v35 floatValue];
  v420 = v36;

  if (v17)
  {
    v37 = [v34 objectAtIndexedSubscript:v14 + 1];
    [v37 floatValue];
    v39 = v38;

    v420 = v420 + ((v39 - v420) * v18);
  }

  v40 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FCNRc"];

  v41 = [v40 objectAtIndexedSubscript:v14];
  [v41 floatValue];
  v413 = v42;

  if (v17)
  {
    v43 = [v40 objectAtIndexedSubscript:v14 + 1];
    [v43 floatValue];
    v45 = v44;

    v413 = v413 + ((v45 - v413) * v18);
  }

  v46 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FCNDa"];

  v47 = [v46 objectAtIndexedSubscript:v14];
  [v47 floatValue];
  v410 = v48;

  if (v17)
  {
    v49 = [v46 objectAtIndexedSubscript:v14 + 1];
    [v49 floatValue];
    v51 = v50;

    v410 = v410 + ((v51 - v410) * v18);
  }

  v52 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FCNDb"];

  v53 = [v52 objectAtIndexedSubscript:v14];
  [v53 floatValue];
  v417 = v54;

  if (v17)
  {
    v55 = [v52 objectAtIndexedSubscript:v14 + 1];
    [v55 floatValue];
    v57 = v56;

    v417 = v417 + ((v57 - v417) * v18);
  }

  v58 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FCNDc"];

  v59 = [v58 objectAtIndexedSubscript:v14];
  [v59 floatValue];
  v408 = v60;

  if (v17)
  {
    v61 = [v58 objectAtIndexedSubscript:v14 + 1];
    [v61 floatValue];
    v63 = v62;

    v408 = v408 + ((v63 - v408) * v18);
  }

  v64 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HCNRa"];

  v65 = [v64 objectAtIndexedSubscript:v14];
  [v65 floatValue];
  v406 = v66;

  if (v17)
  {
    v67 = [v64 objectAtIndexedSubscript:v14 + 1];
    [v67 floatValue];
    v69 = v68;

    v406 = v406 + ((v69 - v406) * v18);
  }

  v70 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HCNRb"];

  v71 = [v70 objectAtIndexedSubscript:v14];
  [v71 floatValue];
  v73 = v72;

  if (v17)
  {
    v74 = [v70 objectAtIndexedSubscript:v14 + 1];
    [v74 floatValue];
    v76 = v75;

    v73 = v73 + ((v76 - v73) * v18);
  }

  v77 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HCNRc"];

  v78 = [v77 objectAtIndexedSubscript:v14];
  [v78 floatValue];
  v405 = v79;

  if (v17)
  {
    v80 = [v77 objectAtIndexedSubscript:v14 + 1];
    [v80 floatValue];
    v82 = v81;

    v405 = v405 + ((v82 - v405) * v18);
  }

  v83 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HCNDa"];

  v84 = [v83 objectAtIndexedSubscript:v14];
  [v84 floatValue];
  v404 = v85;

  if (v17)
  {
    v86 = [v83 objectAtIndexedSubscript:v14 + 1];
    [v86 floatValue];
    v88 = v87;

    v404 = v404 + ((v88 - v404) * v18);
  }

  v89 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HCNDb"];

  v90 = [v89 objectAtIndexedSubscript:v14];
  [v90 floatValue];
  v92 = v91;

  if (v17)
  {
    v93 = [v89 objectAtIndexedSubscript:v14 + 1];
    [v93 floatValue];
    v95 = v94;

    v92 = v92 + ((v95 - v92) * v18);
  }

  v96 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HCNDc"];

  v97 = [v96 objectAtIndexedSubscript:v14];
  [v97 floatValue];
  v403 = v98;

  if (v17)
  {
    v99 = [v96 objectAtIndexedSubscript:v14 + 1];
    [v99 floatValue];
    v101 = v100;

    v403 = v403 + ((v101 - v403) * v18);
  }

  v102 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QCNRa"];

  v103 = [v102 objectAtIndexedSubscript:v14];
  [v103 floatValue];
  v401 = v104;

  if (v17)
  {
    v105 = [v102 objectAtIndexedSubscript:v14 + 1];
    [v105 floatValue];
    v107 = v106;

    v401 = v401 + ((v107 - v401) * v18);
  }

  v108 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QCNRb"];

  v109 = [v108 objectAtIndexedSubscript:v14];
  [v109 floatValue];
  v111 = v110;

  if (v17)
  {
    v112 = [v108 objectAtIndexedSubscript:v14 + 1];
    [v112 floatValue];
    v114 = v113;

    v111 = v111 + ((v114 - v111) * v18);
  }

  v115 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QCNRc"];

  v116 = [v115 objectAtIndexedSubscript:v14];
  [v116 floatValue];
  v400 = v117;

  if (v17)
  {
    v118 = [v115 objectAtIndexedSubscript:v14 + 1];
    [v118 floatValue];
    v120 = v119;

    v400 = v400 + ((v120 - v400) * v18);
  }

  v121 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QCNDa"];

  v122 = [v121 objectAtIndexedSubscript:v14];
  [v122 floatValue];
  v399 = v123;

  if (v17)
  {
    v124 = [v121 objectAtIndexedSubscript:v14 + 1];
    [v124 floatValue];
    v126 = v125;

    v399 = v399 + ((v126 - v399) * v18);
  }

  v127 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QCNDb"];

  v128 = [v127 objectAtIndexedSubscript:v14];
  [v128 floatValue];
  v130 = v129;

  if (v17)
  {
    v131 = [v127 objectAtIndexedSubscript:v14 + 1];
    [v131 floatValue];
    v133 = v132;

    v130 = v130 + ((v133 - v130) * v18);
  }

  v134 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QCNDc"];

  v135 = [v134 objectAtIndexedSubscript:v14];
  [v135 floatValue];
  v398 = v136;

  if (v17)
  {
    v137 = [v134 objectAtIndexedSubscript:v14 + 1];
    [v137 floatValue];
    v139 = v138;

    v398 = v398 + ((v139 - v398) * v18);
  }

  v140 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"ECNRa"];

  v141 = [v140 objectAtIndexedSubscript:v14];
  [v141 floatValue];
  v397 = v142;

  if (v17)
  {
    v143 = [v140 objectAtIndexedSubscript:v14 + 1];
    [v143 floatValue];
    v145 = v144;

    v397 = v397 + ((v145 - v397) * v18);
  }

  v146 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"ECNRb"];

  v147 = [v146 objectAtIndexedSubscript:v14];
  [v147 floatValue];
  v149 = v148;

  if (v17)
  {
    v150 = [v146 objectAtIndexedSubscript:v14 + 1];
    [v150 floatValue];
    v152 = v151;

    v149 = v149 + ((v152 - v149) * v18);
  }

  v153 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"ECNRc"];

  v154 = [v153 objectAtIndexedSubscript:v14];
  [v154 floatValue];
  v396 = v155;

  if (v17)
  {
    v156 = [v153 objectAtIndexedSubscript:v14 + 1];
    [v156 floatValue];
    v158 = v157;

    v396 = v396 + ((v158 - v396) * v18);
  }

  v159 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"ECNDa"];

  v160 = [v159 objectAtIndexedSubscript:v14];
  [v160 floatValue];
  v395 = v161;

  if (v17)
  {
    v162 = [v159 objectAtIndexedSubscript:v14 + 1];
    [v162 floatValue];
    v164 = v163;

    v395 = v395 + ((v164 - v395) * v18);
  }

  v165 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"ECNDb"];

  v166 = [v165 objectAtIndexedSubscript:v14];
  [v166 floatValue];
  v168 = v167;

  if (v17)
  {
    v169 = [v165 objectAtIndexedSubscript:v14 + 1];
    [v169 floatValue];
    v171 = v170;

    v168 = v168 + ((v171 - v168) * v18);
  }

  v172 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"ECNDc"];

  v173 = [v172 objectAtIndexedSubscript:v14];
  [v173 floatValue];
  v394 = v174;

  if (v17)
  {
    v175 = [v172 objectAtIndexedSubscript:v14 + 1];
    [v175 floatValue];
    v177 = v176;

    v394 = v394 + ((v177 - v394) * v18);
  }

  v387 = v21;
  v388 = v172;
  v379 = (v402 * 0.33333) + (v407 * 0.66667);
  v376 = (v402 * 0.66667) + (v407 * 0.33333);
  v178 = v149 + (v402 * v168);
  v179 = fminf(fmaxf(v392, 0.0), 1.0) * (v389 + v389);
  v378 = v179 * (v73 + (v379 * v92));
  v418 = v179 * (v420 + (v407 * v417));
  v180 = fminf(v418, v378) >= 0.00001;
  v374 = v179 * v178;
  v375 = v179 * (v111 + (v376 * v130));
  v393 = v180;
  if (v375 < 0.00001)
  {
    v180 = 0;
  }

  v382 = v180;
  if ((v179 * v178) < 0.00001)
  {
    v180 = 0;
  }

  v381 = v180;
  v181 = self->inputDespeckleParameters;
  v182 = [(NSDictionary *)v181 objectForKeyedSubscript:@"enabled"];
  bOOLValue = [v182 BOOLValue];

  v183 = [(NSDictionary *)v181 objectForKeyedSubscript:@"SCSEnabled"];
  bOOLValue2 = [v183 BOOLValue];

  v184 = [(NSDictionary *)v181 objectForKeyedSubscript:@"SCSLuminanceThreshold"];
  [v184 floatValue];
  v372 = v185;

  v186 = [(NSDictionary *)v181 objectForKeyedSubscript:@"SCSSparkleThreshold"];
  [v186 floatValue];
  v371 = v187;

  v188 = [(NSDictionary *)v181 objectForKeyedSubscript:@"NCSEnabled"];
  bOOLValue3 = [v188 BOOLValue];

  v189 = [(NSDictionary *)v181 objectForKeyedSubscript:@"NCSSaturationThreshold"];
  [v189 floatValue];
  v369 = v190;

  v191 = [(NSDictionary *)v181 objectForKeyedSubscript:@"NCSRedBluePop"];
  [v191 floatValue];
  v368 = v192;

  v193 = [(NSDictionary *)v181 objectForKeyedSubscript:@"NCSContrastThreshold"];
  [v193 floatValue];
  v367 = v194;

  v195 = [(NSDictionary *)v181 objectForKeyedSubscript:@"NCSCountThreshold"];
  intValue4 = [v195 intValue];

  v196 = [(NSDictionary *)v181 objectForKeyedSubscript:@"BCSEnabled"];
  bOOLValue4 = [v196 BOOLValue];

  v197 = [(NSDictionary *)v181 objectForKeyedSubscript:@"BCSRedPop"];
  [v197 floatValue];
  v364 = v198;

  v199 = [(NSDictionary *)v181 objectForKeyedSubscript:@"BCSBlueness"];
  [v199 floatValue];
  v363 = v200;

  v201 = [(NSDictionary *)v181 objectForKeyedSubscript:@"BCSContrastThreshold"];
  [v201 floatValue];
  v362 = v202;

  [(CIVector *)self->inputNeutralFactors X];
  v204 = v203;
  [(CIVector *)self->inputNeutralFactors Y];
  v206 = v205;
  [(CIVector *)self->inputNeutralFactors Z];
  v207 = v204;
  v208 = v206;
  v210 = v209;
  v211 = [MEMORY[0x277CBF788] vectorWithX:v207 Y:v208 Z:v210 W:1.0];
  v212 = [MEMORY[0x277CBF788] vectorWithX:(1.0 / v207) Y:(1.0 / v208) Z:(1.0 / v210) W:1.0];
  CGAffineTransformMakeScale(&v426, 0.5, 0.5);
  CGAffineTransformMakeScale(&v425, 2.0, 2.0);
  [(NSNumber *)self->inputMoireRadius floatValue];
  v214 = v213;
  [(NSNumber *)self->inputMoireAmount floatValue];
  v421 = v212;
  v390 = v215 * 0.04;
  if ((v215 * 0.04) == 0.0)
  {
    v216 = 0.0;
  }

  else
  {
    v216 = v214;
  }

  if (v216 <= 0.0)
  {
    bOOLValue5 = [(NSNumber *)self->inputShowHF BOOLValue];
    *&v218 = v418;
    if (v418 < 0.00001 && !bOOLValue5)
    {
      v218 = [V8CNRKernels kernelWithName:@"multiplyByNeutralFactors", v218];
      [rCopy extent];
      v278 = v277;
      v280 = v279;
      v282 = v281;
      v284 = v283;
      v437[0] = rCopy;
      v437[1] = v211;
      v285 = [MEMORY[0x277CBEA60] arrayWithObjects:v437 count:2];
      v219 = v211;
      v238 = [v218 applyWithExtent:v285 arguments:{v278, v280, v282, v284}];

      v239 = 0;
      goto LABEL_135;
    }
  }

  else
  {
    bOOLValue5 = 1;
  }

  v219 = v211;
  v220 = [(RAWReduceNoise *)self isBayerGreenAlignedforImage:self->inputImage andPattern:[(NSNumber *)self->inputSensorPattern intValue]];
  v221 = v179 * (v413 + (v407 * v408));
  v409 = v179 * (v415 + (v407 * v410));
  v411 = v221;
  if (v220)
  {
    v222 = -1.0;
  }

  else
  {
    v222 = 1.0;
  }

  v223 = v393;
  if (v216 > 2.0)
  {
    v223 = 1;
  }

  v414 = v208 / v210;
  v416 = v208 / v207;
  if ((v223 & 1) != 0 || [(NSNumber *)self->inputShowHF BOOLValue])
  {
    v224 = "";
    if (bOOLValue5)
    {
      v224 = "HF";
    }

    v224 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "extractHRGB", v224];
    v226 = [V8CNRKernels kernelWithName:v224];

    [rCopy extent];
    v424 = v426;
    v440 = CGRectApplyAffineTransform(v439, &v424);
    v227 = v440.origin.x;
    v228 = v440.origin.y;
    v229 = v440.size.width;
    v230 = v440.size.height;
    v434[0] = rCopy;
    v434[1] = v219;
    v231 = MEMORY[0x277CBF788];
    [(NSNumber *)self->inputHighFrequencyFactor floatValue];
    v233 = [v231 vectorWithX:v232 Y:v222 Z:0.0 W:0.0];
    v434[2] = v233;
    v234 = [MEMORY[0x277CBEA60] arrayWithObjects:v434 count:3];
    v235 = [v226 applyWithExtent:&unk_28492E070 roiCallback:v234 arguments:{v227, v228, v229, v230}];

    rCopy = v235;
    if ([(NSNumber *)self->inputShowHF BOOLValue])
    {
      v238 = sub_23388E6CC(v235, v421, v383, v384, v385, v386);
      v239 = v226;
      goto LABEL_135;
    }

    if (v418 >= 0.00001 || v216 > 0.0)
    {
      if (v216 >= 1.0)
      {
        *&v237 = 0.0;
      }

      else
      {
        *&v237 = v216;
      }

      v240 = "i";
      if (v216 >= 1.0)
      {
        v240 = "";
      }

      v241 = "HF";
      if (v216 == 0.0)
      {
        v241 = "";
        v242 = 0.0;
      }

      else
      {
        v242 = *&v237;
      }

      if (v216 == 0.0)
      {
        v240 = "";
      }

      v240 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", 0.0, v237, "powerBlurL", v241, v240];
      v244 = [V8CNRKernels kernelWithName:v240];

      [v235 extent];
      v442 = CGRectInset(v441, -2.0, -2.0);
      v245 = v442.origin.x;
      v246 = v442.origin.y;
      v247 = v442.size.width;
      v248 = v442.size.height;
      v433[0] = v235;
      v249 = [MEMORY[0x277CBF788] vectorWithX:v416 Y:1.0 Z:v414 W:1.0];
      v433[1] = v249;
      v250 = [MEMORY[0x277CBF788] vectorWithX:v409 Y:v418 Z:v411 W:v390];
      v433[2] = v250;
      *&v251 = v242;
      v252 = [MEMORY[0x277CCABB0] numberWithFloat:v251];
      v433[3] = v252;
      v253 = [MEMORY[0x277CBEA60] arrayWithObjects:v433 count:4];
      v254 = [v244 applyWithExtent:&unk_28492E090 roiCallback:v253 arguments:{v245, v246, v247, v248}];

      v226 = v244;
      rCopy = v254;
    }

    if (((v216 < 1.0) & ~v393) == 0)
    {
      v255 = v179 * (v406 + (v379 * v404));
      v256 = v179 * (v405 + (v379 * v403));
      v257 = v216 < 3.0;
      v258 = v216 > 1.0;
      v259 = (v216 + -1.0) * 0.5;
      v260 = "HF";
      if (v216 <= 1.0)
      {
        v260 = "";
      }

      v261 = !v258 || !v257;
      if (!v258 || !v257)
      {
        v259 = 0.0;
      }

      v419 = v259;
      v262 = "i";
      if (v261)
      {
        v262 = "";
      }

      if (bOOLValue)
      {
        v262 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "powerBlurDespeckleL", v260, v262];
        v264 = [V8CNRKernels kernelWithName:v262];

        [rCopy extent];
        v444 = CGRectInset(v443, -6.0, -6.0);
        v265 = v444.origin.x;
        v266 = v444.origin.y;
        v267 = v444.size.width;
        v268 = v444.size.height;
        v432[0] = rCopy;
        v412 = [MEMORY[0x277CBF788] vectorWithX:v416 Y:1.0 Z:v414 W:3.0];
        v432[1] = v412;
        v269 = [MEMORY[0x277CBF788] vectorWithX:v255 Y:v378 Z:v256 W:v390];
        v432[2] = v269;
        v270 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:bOOLValue2 Z:v372 W:v371];
        v432[3] = v270;
        v271 = [MEMORY[0x277CBF788] vectorWithX:bOOLValue3 Y:v369 Z:v368 W:v367];
        v432[4] = v271;
        v272 = [MEMORY[0x277CBF788] vectorWithX:intValue4 Y:bOOLValue4 Z:v364 W:v363];
        v432[5] = v272;
        v273 = [MEMORY[0x277CBF788] vectorWithX:v362 Y:v419 Z:0.0 W:0.0];
        v432[6] = v273;
        v274 = [MEMORY[0x277CBEA60] arrayWithObjects:v432 count:7];
        v275 = [v264 applyWithExtent:&unk_28492E0B0 roiCallback:v274 arguments:{v265, v266, v267, v268}];

        rCopy = v275;
      }

      else
      {
        v2622 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "powerBlurL", v260, v262];
        v264 = [V8CNRKernels kernelWithName:v2622];

        [rCopy extent];
        v448 = CGRectInset(v447, -6.0, -6.0);
        v311 = v448.origin.x;
        v312 = v448.origin.y;
        v313 = v448.size.width;
        v314 = v448.size.height;
        v431[0] = rCopy;
        v412 = [MEMORY[0x277CBF788] vectorWithX:v416 Y:1.0 Z:v414 W:3.0];
        v431[1] = v412;
        v269 = [MEMORY[0x277CBF788] vectorWithX:v255 Y:v378 Z:v256 W:v390];
        v431[2] = v269;
        *&v315 = v419;
        v270 = [MEMORY[0x277CCABB0] numberWithFloat:v315];
        v431[3] = v270;
        v271 = [MEMORY[0x277CBEA60] arrayWithObjects:v431 count:4];
        [v264 applyWithExtent:&unk_28492E0D0 roiCallback:v271 arguments:{v311, v312, v313, v314}];
        rCopy = v272 = rCopy;
      }

      v226 = v264;
    }

    if (((v216 < 3.0) & ~v382) == 0)
    {
      v316 = 0.0;
      if (v216 <= 3.0)
      {
        v318 = "";
        v317 = "";
      }

      else
      {
        if (v216 >= 7.0)
        {
          v317 = "";
        }

        else
        {
          v316 = (v216 + -3.0) * 0.25;
          v317 = "i";
        }

        v318 = "HF";
      }

      v317 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", "powerBlurEarlyOutL", v318, v317];
      v320 = [V8CNRKernels kernelWithName:v317];

      [rCopy extent];
      v450 = CGRectInset(v449, -14.0, -14.0);
      v321 = v450.origin.x;
      v322 = v450.origin.y;
      v323 = v450.size.width;
      v324 = v450.size.height;
      v430[0] = rCopy;
      v325 = [MEMORY[0x277CBF788] vectorWithX:v416 Y:1.0 Z:v414 W:7.0];
      v430[1] = v325;
      v326 = [MEMORY[0x277CBF788] vectorWithX:(v179 * (v401 + (v376 * v399))) Y:v375 Z:(v179 * (v400 + (v376 * v398))) W:v390];
      v430[2] = v326;
      *&v327 = v316;
      v328 = [MEMORY[0x277CCABB0] numberWithFloat:v327];
      v430[3] = v328;
      v329 = [MEMORY[0x277CBEA60] arrayWithObjects:v430 count:4];
      v330 = [v320 applyWithExtent:&unk_28492E0F0 roiCallback:v329 arguments:{v321, v322, v323, v324}];

      v226 = v320;
      rCopy = v330;
    }

    if (((v216 < 7.0) & ~v381) == 0)
    {
      v331 = v179 * (v397 + (v402 * v395));
      v332 = v179 * (v396 + (v402 * v394));
      v333 = "HF";
      if (v216 <= 7.0)
      {
        v333 = "";
      }

      v334 = v216 <= 7.0 || v216 >= 14.0;
      HIDWORD(v335) = 0;
      v336 = "i";
      if (v216 > 7.0 && v216 < 14.0)
      {
        v337 = (v216 + -7.0) * 0.14286;
      }

      else
      {
        v337 = 0.0;
      }

      if (v334)
      {
        v336 = "";
      }

      LODWORD(v236) = 1.5;
      *&v335 = v380;
      if (v380 <= 1.5)
      {
        v336 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", v236, v335, "powerBlurEarlyOutL", v333, v336];
        v339 = [V8CNRKernels kernelWithName:v336];

        [rCopy extent];
        v454 = CGRectInset(v453, -28.0, -28.0);
        v349 = v454.origin.x;
        v350 = v454.origin.y;
        v351 = v454.size.width;
        v352 = v454.size.height;
        v428[0] = rCopy;
        v344 = [MEMORY[0x277CBF788] vectorWithX:v416 Y:1.0 Z:v414 W:14.0];
        v428[1] = v344;
        v345 = [MEMORY[0x277CBF788] vectorWithX:v331 Y:v374 Z:v332 W:v390];
        v428[2] = v345;
        *&v353 = v337;
        v346 = [MEMORY[0x277CCABB0] numberWithFloat:v353];
        v428[3] = v346;
        v347 = [MEMORY[0x277CBEA60] arrayWithObjects:v428 count:4];
        [v339 applyWithExtent:&unk_28492E130 roiCallback:v347 arguments:{v349, v350, v351, v352}];
      }

      else
      {
        v3362 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s%s", v236, v335, "powerBlurEarlyOut2L", v333, v336];
        v339 = [V8CNRKernels kernelWithName:v3362];

        [rCopy extent];
        v452 = CGRectInset(v451, -28.0, -28.0);
        v340 = v452.origin.x;
        v341 = v452.origin.y;
        v342 = v452.size.width;
        v343 = v452.size.height;
        v429[0] = rCopy;
        v344 = [MEMORY[0x277CBF788] vectorWithX:v416 Y:1.0 Z:v414 W:14.0];
        v429[1] = v344;
        v345 = [MEMORY[0x277CBF788] vectorWithX:v331 Y:v374 Z:v332 W:v390];
        v429[2] = v345;
        v346 = [MEMORY[0x277CBF788] vectorWithX:5.0 Y:0.150000006 Z:v337 W:0.0];
        v429[3] = v346;
        v347 = [MEMORY[0x277CBEA60] arrayWithObjects:v429 count:4];
        [v339 applyWithExtent:&unk_28492E110 roiCallback:v347 arguments:{v340, v341, v342, v343}];
      }
      v354 = ;

      v226 = v339;
      rCopy = v354;
    }

    v239 = [V8CNRKernels kernelWithName:@"expandHRGB"];

    [rCopy extent];
    v424 = v425;
    v456 = CGRectApplyAffineTransform(v455, &v424);
    v355 = v456.origin.x;
    v356 = v456.origin.y;
    v357 = v456.size.width;
    v358 = v456.size.height;
    v427 = rCopy;
    v359 = [MEMORY[0x277CBEA60] arrayWithObjects:&v427 count:1];
    v360 = [v239 applyWithExtent:&unk_28492E150 roiCallback:v359 arguments:{v355, v356, v357, v358}];

    v309 = v360;
  }

  else
  {
    if (bOOLValue5)
    {
      v286 = [V8CNRKernels kernelWithName:@"highFrequencyIntoAlpha"];
      [rCopy extent];
      v288 = v287;
      v290 = v289;
      v292 = v291;
      v294 = v293;
      v436[0] = rCopy;
      v436[1] = v211;
      v436[2] = self->inputHighFrequencyFactor;
      *&v287 = v222;
      v295 = [MEMORY[0x277CCABB0] numberWithFloat:v287];
      v436[3] = v295;
      v296 = [MEMORY[0x277CBEA60] arrayWithObjects:v436 count:4];
      v297 = [v286 applyWithExtent:&unk_28492E030 roiCallback:v296 arguments:{v288, v290, v292, v294}];

      v298 = "HF";
      v299 = v286;
      rCopy = v297;
    }

    else
    {
      v299 = 0;
      v298 = "";
    }

    v298 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%s", "powerBlurLFS", v298];
    v239 = [V8CNRKernels kernelWithName:v298];

    [rCopy extent];
    v446 = CGRectInset(v445, -4.0, -4.0);
    v301 = v446.origin.x;
    v302 = v446.origin.y;
    v303 = v446.size.width;
    v304 = v446.size.height;
    v435[0] = rCopy;
    v305 = [MEMORY[0x277CBF788] vectorWithX:v416 Y:1.0 Z:v414 W:0.0];
    v435[1] = v305;
    v306 = [MEMORY[0x277CBF788] vectorWithX:v409 Y:v418 Z:v411 W:v390];
    v435[2] = v306;
    v435[3] = v219;
    v307 = [MEMORY[0x277CBEA60] arrayWithObjects:v435 count:4];
    v308 = [v239 applyWithExtent:&unk_28492E050 roiCallback:v307 arguments:{v301, v302, v303, v304}];

    v309 = v308;
  }

  v238 = v309;
  rCopy = v309;
LABEL_135:

  return v238;
}

- (id)kernelWithName:(id)name inArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * v10);

        name = [v8 name];
        v13 = [name isEqualToString:nameCopy];

        if (v13)
        {
          v14 = v8;

          goto LABEL_12;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [nameCopy getCString:v21 maxLength:256 encoding:30];
  printf("kernel %s not found\n", v21);
  v14 = 0;
LABEL_12:

  return v14;
}

- (id)kernelArrayWithResourceName:(id)name
{
  nameCopy = name;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle pathForResource:nameCopy ofType:@"cikernel"];

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  v7 = [v6 length];
  v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  [v6 getBytes:v8 range:{0, v7}];
  v8[v7] = 0;
  v9 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:30];
  v10 = [MEMORY[0x277CBF760] kernelsWithString:v9 messageLog:0];
  free(v8);

  return v10;
}

- (id)V8OutputImage
{
  v1423[2] = *MEMORY[0x277D85DE8];
  [(NSNumber *)self->inputBaselineExposure floatValue];
  v1261 = exp2f(v3);
  v1228 = self->inputTrimParameters;
  v1223 = [(NSDictionary *)v1228 objectForKeyedSubscript:@"noise"];
  v4 = [v1223 objectAtIndexedSubscript:0];
  [v4 floatValue];
  v1365 = v5;

  v6 = [v1223 objectAtIndexedSubscript:1];
  [v6 floatValue];
  v1354 = v7;

  v1221 = [(NSDictionary *)v1228 objectForKeyedSubscript:@"smoothing"];
  v8 = [v1221 objectAtIndexedSubscript:0];
  [v8 floatValue];
  v1215 = v9;

  v10 = [v1221 objectAtIndexedSubscript:1];
  [v10 floatValue];
  v1239 = v11;

  v1222 = [(NSDictionary *)v1228 objectForKeyedSubscript:@"contrast"];
  v12 = [v1222 objectAtIndexedSubscript:0];
  [v12 floatValue];
  v14 = v13;

  v15 = [v1222 objectAtIndexedSubscript:1];
  [v15 floatValue];
  v1293 = v16;

  v1224 = [(NSDictionary *)v1228 objectForKeyedSubscript:@"outmaskDetailAmount"];
  v17 = [v1224 objectAtIndexedSubscript:0];
  [v17 floatValue];
  v19 = v18;

  v20 = [v1224 objectAtIndexedSubscript:1];
  [v20 floatValue];
  v22 = v21;

  v1225 = [(NSDictionary *)v1228 objectForKeyedSubscript:@"outmaskDetailAttenuation"];
  v23 = [v1225 objectAtIndexedSubscript:0];
  [v23 floatValue];
  v1217 = v24;

  v25 = [v1225 objectAtIndexedSubscript:1];
  [v25 floatValue];
  v1236 = v26;

  intValue = [(NSNumber *)self->inputISO intValue];
  v1243 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"ISOList"];
  v28 = [v1243 count];
  v1291 = v19;
  v1289 = v22;
  if (v28)
  {
    v29 = 0;
    while (1)
    {
      v30 = [v1243 objectAtIndexedSubscript:v29];
      intValue2 = [v30 intValue];

      v32 = intValue != intValue2;
      if (intValue == intValue2)
      {
        v33 = 0.0;
        goto LABEL_10;
      }

      if (intValue < intValue2)
      {
        break;
      }

      if (v28 == ++v29)
      {
        goto LABEL_6;
      }
    }

    if (!v29)
    {
      v32 = 0;
      v33 = 0.0;
      goto LABEL_12;
    }

    v34 = [v1243 objectAtIndexedSubscript:--v29];
    intValue3 = [v34 intValue];

    v33 = (intValue - intValue3) / (intValue2 - intValue3);
LABEL_10:
    if (v29 != 100000)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_6:
    v32 = 0;
    v33 = 0.0;
  }

  v29 = v28 - 1;
LABEL_12:
  v36 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FYMa"];
  v37 = [v36 objectAtIndexedSubscript:v29];
  [v37 floatValue];
  v1360 = v38;

  if (v32)
  {
    v39 = [v36 objectAtIndexedSubscript:v29 + 1];
    [v39 floatValue];
    v41 = v40;

    v1360 = v1360 + ((v41 - v1360) * v33);
  }

  v42 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FYMb"];

  v43 = [v42 objectAtIndexedSubscript:v29];
  [v43 floatValue];
  v1349 = v44;

  if (v32)
  {
    v45 = [v42 objectAtIndexedSubscript:v29 + 1];
    [v45 floatValue];
    v47 = v46;

    v1349 = v1349 + ((v47 - v1349) * v33);
  }

  v48 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FYMc"];

  v49 = [v48 objectAtIndexedSubscript:v29];
  [v49 floatValue];
  v1344 = v50;

  if (v32)
  {
    v51 = [v48 objectAtIndexedSubscript:v29 + 1];
    [v51 floatValue];
    v53 = v52;

    v1344 = v1344 + ((v53 - v1344) * v33);
  }

  v54 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FYSDa"];

  v55 = [v54 objectAtIndexedSubscript:v29];
  [v55 floatValue];
  r1 = v56;

  if (v32)
  {
    v57 = [v54 objectAtIndexedSubscript:v29 + 1];
    [v57 floatValue];
    v59 = v58;

    r1 = r1 + ((v59 - r1) * v33);
  }

  v60 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FYSDb"];

  v61 = [v60 objectAtIndexedSubscript:v29];
  [v61 floatValue];
  v1334 = v62;

  if (v32)
  {
    v63 = [v60 objectAtIndexedSubscript:v29 + 1];
    [v63 floatValue];
    v65 = v64;

    v1334 = v1334 + ((v65 - v1334) * v33);
  }

  v66 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FYSDc"];

  v67 = [v66 objectAtIndexedSubscript:v29];
  [v67 floatValue];
  v1332 = v68;

  if (v32)
  {
    v69 = [v66 objectAtIndexedSubscript:v29 + 1];
    [v69 floatValue];
    v71 = v70;

    v1332 = v1332 + ((v71 - v1332) * v33);
  }

  v72 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HYMa"];

  v73 = [v72 objectAtIndexedSubscript:v29];
  [v73 floatValue];
  v1330 = v74;

  if (v32)
  {
    v75 = [v72 objectAtIndexedSubscript:v29 + 1];
    [v75 floatValue];
    v77 = v76;

    v1330 = v1330 + ((v77 - v1330) * v33);
  }

  v78 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HYMb"];

  v79 = [v78 objectAtIndexedSubscript:v29];
  [v79 floatValue];
  v1328 = v80;

  if (v32)
  {
    v81 = [v78 objectAtIndexedSubscript:v29 + 1];
    [v81 floatValue];
    v83 = v82;

    v1328 = v1328 + ((v83 - v1328) * v33);
  }

  v84 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HYMc"];

  v85 = [v84 objectAtIndexedSubscript:v29];
  [v85 floatValue];
  v1326 = v86;

  if (v32)
  {
    v87 = [v84 objectAtIndexedSubscript:v29 + 1];
    [v87 floatValue];
    v89 = v88;

    v1326 = v1326 + ((v89 - v1326) * v33);
  }

  v90 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HYSDa"];

  v91 = [v90 objectAtIndexedSubscript:v29];
  [v91 floatValue];
  v1323 = v92;

  if (v32)
  {
    v93 = [v90 objectAtIndexedSubscript:v29 + 1];
    [v93 floatValue];
    v95 = v94;

    v1323 = v1323 + ((v95 - v1323) * v33);
  }

  v96 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HYSDb"];

  v97 = [v96 objectAtIndexedSubscript:v29];
  [v97 floatValue];
  v1321 = v98;

  if (v32)
  {
    v99 = [v96 objectAtIndexedSubscript:v29 + 1];
    [v99 floatValue];
    v101 = v100;

    v1321 = v1321 + ((v101 - v1321) * v33);
  }

  v102 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HYSDc"];

  v103 = [v102 objectAtIndexedSubscript:v29];
  [v103 floatValue];
  v1319 = v104;

  if (v32)
  {
    v105 = [v102 objectAtIndexedSubscript:v29 + 1];
    [v105 floatValue];
    v107 = v106;

    v1319 = v1319 + ((v107 - v1319) * v33);
  }

  v108 = logf(v1365);
  v109 = logf(v1354);
  v1287 = expf((v109 * 0.33333) + (v108 * 0.66667));
  v110 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QYMa"];

  v111 = [v110 objectAtIndexedSubscript:v29];
  [v111 floatValue];
  v1317 = v112;

  if (v32)
  {
    v113 = [v110 objectAtIndexedSubscript:v29 + 1];
    [v113 floatValue];
    v115 = v114;

    v1317 = v1317 + ((v115 - v1317) * v33);
  }

  v116 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QYMb"];

  v117 = [v116 objectAtIndexedSubscript:v29];
  [v117 floatValue];
  v1315 = v118;

  if (v32)
  {
    v119 = [v116 objectAtIndexedSubscript:v29 + 1];
    [v119 floatValue];
    v121 = v120;

    v1315 = v1315 + ((v121 - v1315) * v33);
  }

  v122 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QYMc"];

  v123 = [v122 objectAtIndexedSubscript:v29];
  [v123 floatValue];
  v1312 = v124;

  if (v32)
  {
    v125 = [v122 objectAtIndexedSubscript:v29 + 1];
    [v125 floatValue];
    v127 = v126;

    v1312 = v1312 + ((v127 - v1312) * v33);
  }

  v128 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QYSDa"];

  v129 = [v128 objectAtIndexedSubscript:v29];
  [v129 floatValue];
  v1310 = v130;

  if (v32)
  {
    v131 = [v128 objectAtIndexedSubscript:v29 + 1];
    [v131 floatValue];
    v133 = v132;

    v1310 = v1310 + ((v133 - v1310) * v33);
  }

  v134 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QYSDb"];

  v135 = [v134 objectAtIndexedSubscript:v29];
  [v135 floatValue];
  v1308 = v136;

  if (v32)
  {
    v137 = [v134 objectAtIndexedSubscript:v29 + 1];
    [v137 floatValue];
    v139 = v138;

    v1308 = v1308 + ((v139 - v1308) * v33);
  }

  v140 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QYSDc"];

  v141 = [v140 objectAtIndexedSubscript:v29];
  [v141 floatValue];
  v1306 = v142;

  if (v32)
  {
    v143 = [v140 objectAtIndexedSubscript:v29 + 1];
    [v143 floatValue];
    v145 = v144;

    v1306 = v1306 + ((v145 - v1306) * v33);
  }

  v1285 = expf((v109 * 0.66667) + (v108 * 0.33333));
  v146 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EYMa"];

  v147 = [v146 objectAtIndexedSubscript:v29];
  [v147 floatValue];
  v1304 = v148;

  if (v32)
  {
    v149 = [v146 objectAtIndexedSubscript:v29 + 1];
    [v149 floatValue];
    v151 = v150;

    v1304 = v1304 + ((v151 - v1304) * v33);
  }

  v152 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EYMb"];

  v153 = [v152 objectAtIndexedSubscript:v29];
  [v153 floatValue];
  v1302 = v154;

  if (v32)
  {
    v155 = [v152 objectAtIndexedSubscript:v29 + 1];
    [v155 floatValue];
    v157 = v156;

    v1302 = v1302 + ((v157 - v1302) * v33);
  }

  v158 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EYMc"];

  v159 = [v158 objectAtIndexedSubscript:v29];
  [v159 floatValue];
  v1300 = v160;

  if (v32)
  {
    v161 = [v158 objectAtIndexedSubscript:v29 + 1];
    [v161 floatValue];
    v163 = v162;

    v1300 = v1300 + ((v163 - v1300) * v33);
  }

  v164 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EYSDa"];

  v165 = [v164 objectAtIndexedSubscript:v29];
  [v165 floatValue];
  v167 = v166;

  if (v32)
  {
    v168 = [v164 objectAtIndexedSubscript:v29 + 1];
    [v168 floatValue];
    v170 = v169;

    v167 = v167 + ((v170 - v167) * v33);
  }

  v171 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EYSDb"];

  v172 = [v171 objectAtIndexedSubscript:v29];
  [v172 floatValue];
  v1298 = v173;

  if (v32)
  {
    v174 = [v171 objectAtIndexedSubscript:v29 + 1];
    [v174 floatValue];
    v176 = v175;

    v1298 = v1298 + ((v176 - v1298) * v33);
  }

  v177 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EYSDc"];

  v178 = [v177 objectAtIndexedSubscript:v29];
  [v178 floatValue];
  v1296 = v179;

  if (v32)
  {
    v180 = [v177 objectAtIndexedSubscript:v29 + 1];
    [v180 floatValue];
    v182 = v181;

    v1296 = v1296 + ((v182 - v1296) * v33);
  }

  v183 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FullCMa"];

  v184 = [v183 objectAtIndexedSubscript:v29];
  [v184 floatValue];
  v1214 = v185;

  if (v32)
  {
    v186 = [v183 objectAtIndexedSubscript:v29 + 1];
    [v186 floatValue];
    v188 = v187;

    v1214 = v1214 + ((v188 - v1214) * v33);
  }

  v189 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FullCMb"];

  v190 = [v189 objectAtIndexedSubscript:v29];
  [v190 floatValue];
  v1213 = v191;

  if (v32)
  {
    v192 = [v189 objectAtIndexedSubscript:v29 + 1];
    [v192 floatValue];
    v194 = v193;

    v1213 = v1213 + ((v194 - v1213) * v33);
  }

  v195 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FullCMc"];

  v196 = [v195 objectAtIndexedSubscript:v29];
  [v196 floatValue];
  v1212 = v197;

  if (v32)
  {
    v198 = [v195 objectAtIndexedSubscript:v29 + 1];
    [v198 floatValue];
    v200 = v199;

    v1212 = v1212 + ((v200 - v1212) * v33);
  }

  v201 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FullCSDa"];

  v202 = [v201 objectAtIndexedSubscript:v29];
  [v202 floatValue];
  v1211 = v203;

  if (v32)
  {
    v204 = [v201 objectAtIndexedSubscript:v29 + 1];
    [v204 floatValue];
    v206 = v205;

    v1211 = v1211 + ((v206 - v1211) * v33);
  }

  v207 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FullCSDb"];

  v208 = [v207 objectAtIndexedSubscript:v29];
  [v208 floatValue];
  v1210 = v209;

  if (v32)
  {
    v210 = [v207 objectAtIndexedSubscript:v29 + 1];
    [v210 floatValue];
    v212 = v211;

    v1210 = v1210 + ((v212 - v1210) * v33);
  }

  v213 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"FullCSDc"];

  v214 = [v213 objectAtIndexedSubscript:v29];
  [v214 floatValue];
  v1209 = v215;

  if (v32)
  {
    v216 = [v213 objectAtIndexedSubscript:v29 + 1];
    [v216 floatValue];
    v218 = v217;

    v1209 = v1209 + ((v218 - v1209) * v33);
  }

  v219 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HalfCMa"];

  v220 = [v219 objectAtIndexedSubscript:v29];
  [v220 floatValue];
  v1234 = v221;

  if (v32)
  {
    v222 = [v219 objectAtIndexedSubscript:v29 + 1];
    [v222 floatValue];
    v224 = v223;

    v1234 = v1234 + ((v224 - v1234) * v33);
  }

  v225 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HalfCMb"];

  v226 = [v225 objectAtIndexedSubscript:v29];
  [v226 floatValue];
  v1219 = v227;

  if (v32)
  {
    v228 = [v225 objectAtIndexedSubscript:v29 + 1];
    [v228 floatValue];
    v230 = v229;

    v1219 = v1219 + ((v230 - v1219) * v33);
  }

  v231 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HalfCMc"];

  v232 = [v231 objectAtIndexedSubscript:v29];
  [v232 floatValue];
  v1208 = v233;

  if (v32)
  {
    v234 = [v231 objectAtIndexedSubscript:v29 + 1];
    [v234 floatValue];
    v236 = v235;

    v1208 = v1208 + ((v236 - v1208) * v33);
  }

  v237 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HalfCSDa"];

  v238 = [v237 objectAtIndexedSubscript:v29];
  [v238 floatValue];
  v1207 = v239;

  if (v32)
  {
    v240 = [v237 objectAtIndexedSubscript:v29 + 1];
    [v240 floatValue];
    v242 = v241;

    v1207 = v1207 + ((v242 - v1207) * v33);
  }

  v243 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HalfCSDb"];

  v244 = [v243 objectAtIndexedSubscript:v29];
  [v244 floatValue];
  v1206 = v245;

  if (v32)
  {
    v246 = [v243 objectAtIndexedSubscript:v29 + 1];
    [v246 floatValue];
    v248 = v247;

    v1206 = v1206 + ((v248 - v1206) * v33);
  }

  v249 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"HalfCSDc"];

  v250 = [v249 objectAtIndexedSubscript:v29];
  [v250 floatValue];
  v1202 = v251;

  if (v32)
  {
    v252 = [v249 objectAtIndexedSubscript:v29 + 1];
    [v252 floatValue];
    v254 = v253;

    v1202 = v1202 + ((v254 - v1202) * v33);
  }

  v255 = logf(v1215);
  v256 = logf(v1239);
  v1166 = expf((v256 * 0.33333) + (v255 * 0.66667));
  v257 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QuarterCMa"];

  v258 = [v257 objectAtIndexedSubscript:v29];
  [v258 floatValue];
  v1203 = v259;

  if (v32)
  {
    v260 = [v257 objectAtIndexedSubscript:v29 + 1];
    [v260 floatValue];
    v262 = v261;

    v1203 = v1203 + ((v262 - v1203) * v33);
  }

  v263 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QuarterCMb"];

  v264 = [v263 objectAtIndexedSubscript:v29];
  [v264 floatValue];
  v1201 = v265;

  if (v32)
  {
    v266 = [v263 objectAtIndexedSubscript:v29 + 1];
    [v266 floatValue];
    v268 = v267;

    v1201 = v1201 + ((v268 - v1201) * v33);
  }

  v269 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QuarterCMc"];

  v270 = [v269 objectAtIndexedSubscript:v29];
  [v270 floatValue];
  v1200 = v271;

  if (v32)
  {
    v272 = [v269 objectAtIndexedSubscript:v29 + 1];
    [v272 floatValue];
    v274 = v273;

    v1200 = v1200 + ((v274 - v1200) * v33);
  }

  v275 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QuarterCSDa"];

  v276 = [v275 objectAtIndexedSubscript:v29];
  [v276 floatValue];
  v1199 = v277;

  if (v32)
  {
    v278 = [v275 objectAtIndexedSubscript:v29 + 1];
    [v278 floatValue];
    v280 = v279;

    v1199 = v1199 + ((v280 - v1199) * v33);
  }

  v281 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QuarterCSDb"];

  v282 = [v281 objectAtIndexedSubscript:v29];
  [v282 floatValue];
  v1198 = v283;

  if (v32)
  {
    v284 = [v281 objectAtIndexedSubscript:v29 + 1];
    [v284 floatValue];
    v286 = v285;

    v1198 = v1198 + ((v286 - v1198) * v33);
  }

  v287 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"QuarterCSDc"];

  v288 = [v287 objectAtIndexedSubscript:v29];
  [v288 floatValue];
  v1195 = v289;

  if (v32)
  {
    v290 = [v287 objectAtIndexedSubscript:v29 + 1];
    [v290 floatValue];
    v292 = v291;

    v1195 = v1195 + ((v292 - v1195) * v33);
  }

  v1165 = expf((v256 * 0.66667) + (v255 * 0.33333));
  v293 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EighthCMa"];

  v294 = [v293 objectAtIndexedSubscript:v29];
  [v294 floatValue];
  v1196 = v295;

  if (v32)
  {
    v296 = [v293 objectAtIndexedSubscript:v29 + 1];
    [v296 floatValue];
    v298 = v297;

    v1196 = v1196 + ((v298 - v1196) * v33);
  }

  v299 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EighthCMb"];

  v300 = [v299 objectAtIndexedSubscript:v29];
  [v300 floatValue];
  v1193 = v301;

  if (v32)
  {
    v302 = [v299 objectAtIndexedSubscript:v29 + 1];
    [v302 floatValue];
    v304 = v303;

    v1193 = v1193 + ((v304 - v1193) * v33);
  }

  v305 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EighthCMc"];

  v306 = [v305 objectAtIndexedSubscript:v29];
  [v306 floatValue];
  v1192 = v307;

  if (v32)
  {
    v308 = [v305 objectAtIndexedSubscript:v29 + 1];
    [v308 floatValue];
    v310 = v309;

    v1192 = v1192 + ((v310 - v1192) * v33);
  }

  v311 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EighthCSDa"];

  v312 = [v311 objectAtIndexedSubscript:v29];
  [v312 floatValue];
  v1191 = v313;

  if (v32)
  {
    v314 = [v311 objectAtIndexedSubscript:v29 + 1];
    [v314 floatValue];
    v316 = v315;

    v1191 = v1191 + ((v316 - v1191) * v33);
  }

  v317 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EighthCSDb"];

  v318 = [v317 objectAtIndexedSubscript:v29];
  [v318 floatValue];
  v1190 = v319;

  if (v32)
  {
    v320 = [v317 objectAtIndexedSubscript:v29 + 1];
    [v320 floatValue];
    v322 = v321;

    v1190 = v1190 + ((v322 - v1190) * v33);
  }

  v323 = [(NSDictionary *)self->inputISODictionary objectForKeyedSubscript:@"EighthCSDc"];

  v324 = [v323 objectAtIndexedSubscript:v29];
  v1325 = v323;
  [v324 floatValue];
  v1189 = v325;

  if (v32)
  {
    v326 = [v323 objectAtIndexedSubscript:v29 + 1];
    [v326 floatValue];
    v328 = v327;

    v1189 = v1189 + ((v328 - v1189) * v33);
  }

  if (v14 == 0.0)
  {
    v329 = 0.01;
  }

  else
  {
    v329 = v14;
  }

  if (v1293 == 0.0)
  {
    v330 = 0.01;
  }

  else
  {
    v330 = v1293;
  }

  v331 = logf(v329);
  v332 = logf(v330);
  v1294 = expf((v332 * 0.5) + (v331 * 0.5));
  [(NSNumber *)self->inputLNRAmount floatValue];
  v1226 = v333;
  v334 = ((v333 + -0.75) * -4.0) + 1.0;
  v335 = v1291 * v334;
  v336 = v1289 * v334;
  v337 = v167;
  if (v1226 <= 0.75)
  {
    v338 = v1289;
  }

  else
  {
    v338 = v336;
  }

  if (v1226 <= 0.75)
  {
    v339 = v1291;
  }

  else
  {
    v339 = v335;
  }

  v1172 = v339;
  v340 = logf(v339);
  v1162 = v338;
  v341 = logf(v338);
  HIDWORD(v1156) = expf((v341 * 0.33333) + (v340 * 0.66667));
  v1159 = expf((v341 * 0.66667) + (v340 * 0.33333));
  v342 = logf(v1217);
  v343 = logf(v1236);
  LODWORD(v1156) = expf((v343 * 0.33333) + (v342 * 0.66667));
  v344 = expf((v343 * 0.66667) + (v342 * 0.33333));
  [(NSNumber *)self->inputScaleFactor floatValue];
  v346 = v345;
  [(RAWReduceNoise *)self adjustedRNAmount];
  v1249 = v347;
  v348 = v1304 + (v1354 * v337);
  v349 = fminf(fmaxf(v346, 0.0), 1.0);
  v1247 = v349;
  if (v349 >= 1.0)
  {
    v1244 = v1360 + (v1365 * r1);
    v1251 = v1349 + (v1365 * v1334);
    v1258 = v1344 + (v1365 * v1332);
    v1179 = v1315 + (v1285 * v1308);
    v1180 = v1302 + (v1354 * v1298);
    v1163 = v1312 + (v1285 * v1306);
    v1164 = v1317 + (v1285 * v1310);
    v1177 = v1328 + (v1287 * v1321);
    v1160 = v1326 + (v1287 * v1319);
    v1161 = v1330 + (v1287 * v1323);
    v350 = v1300 + (v1354 * v1296);
  }

  else
  {
    v1244 = (v1360 + (v1365 * r1)) * (v349 * v349);
    v1251 = (v1349 + (v1365 * v1334)) * (v349 * v349);
    v1258 = (v1344 + (v1365 * v1332)) * (v349 * v349);
    v1177 = (v1328 + (v1287 * v1321)) * (v349 * v349);
    v1160 = (v1326 + (v1287 * v1319)) * (v349 * v349);
    v1161 = (v1330 + (v1287 * v1323)) * (v349 * v349);
    v1163 = (v1312 + (v1285 * v1306)) * (v349 * v349);
    v1164 = (v1317 + (v1285 * v1310)) * (v349 * v349);
    v348 = v348 * (v349 * v349);
    v1179 = (v1315 + (v1285 * v1308)) * (v349 * v349);
    v1180 = (v1302 + (v1354 * v1298)) * (v349 * v349);
    v350 = (v1300 + (v1354 * v1296)) * (v349 * v349);
  }

  [(NSNumber *)self->inputSharpenAmount floatValue];
  v352 = v351;
  [(NSNumber *)self->inputSharpenThreshold floatValue];
  v1264 = exp2f(v353);
  [(NSNumber *)self->inputContrastAmount floatValue];
  v355 = v354;
  [(NSNumber *)self->inputDetailAmount floatValue];
  v1175 = v356;
  v1158 = v344;
  v357 = v329 * v355;
  v1188 = v1294 * v355;
  v1183 = v1247 * v352;
  v358 = log2f(v1247);
  v359 = vcvtms_s32_f32(v358);
  if ((v359 & 0x80000000) != 0)
  {
    v423 = v358 - floorf(v358);
    if (v359 == -3)
    {
      v1178 = 0.0;
      v1183 = v423 * v1188;
      v1188 = 0.0;
      v1176 = 0.0;
    }

    else if (v359 == -2)
    {
      v1178 = 0.0;
      v1183 = v1188 + ((v357 - v1188) * v423);
      v1176 = v423 * v1188;
      v1188 = 0.0;
    }

    else
    {
      v1178 = 0.0;
      if (v359 == -1)
      {
        v1183 = v357 + ((v1183 - v357) * v423);
        v1176 = v1188 + ((v357 - v1188) * v423);
        v1188 = v423 * v1188;
      }

      else
      {
        v1188 = 0.0;
        v1176 = 0.0;
        v1183 = 0.0;
      }
    }
  }

  else
  {
    v1176 = v329 * v355;
    v1178 = v330 * v355;
  }

  v360 = 0.3;
  if (v1249 >= 1.0619)
  {
    v360 = 1.0;
  }

  v1216 = v360;
  v1186 = sub_23389FB1C(flt_23390AB48, flt_23390AB6C, v1249);
  v1185 = sub_23389FB1C(flt_23390AB48, flt_23390AB90, v1249);
  selfCopy = self;
  v361 = [(NSArray *)self->inputLowCurvatureThreshold objectAtIndexedSubscript:0];
  [v361 floatValue];

  v362 = [(NSArray *)self->inputLowCurvatureThreshold objectAtIndexedSubscript:1];
  [v362 floatValue];
  v1167 = v363;

  v364 = [(NSArray *)self->inputLowCurvatureThreshold objectAtIndexedSubscript:2];
  [v364 floatValue];
  v1174 = v365;

  v366 = [(NSArray *)self->inputLowCurvatureThreshold objectAtIndexedSubscript:3];
  [v366 floatValue];
  v1184 = v367;

  imageByClampingToExtent = [(CIImage *)self->inputImage imageByClampingToExtent];
  [(CIVector *)self->inputNeutralFactors X];
  v370 = v369;
  [(CIVector *)self->inputNeutralFactors Y];
  v372 = v371;
  [(CIVector *)self->inputNeutralFactors Z];
  v373 = v370;
  v374 = v372;
  v376 = v375;
  v1276 = v373;
  v1229 = v374;
  v1181 = v376;
  [MEMORY[0x277CBF788] vectorWithX:1.0 / v373 Y:1.0 / v374 Z:1.0 / v376 W:1.0];
  v1187 = v350;
  v1253 = v348;
  v1263 = v1274 = imageByClampingToExtent;
  [(CIImage *)self->inputImage extent];
  v378 = v377;
  v380 = v379;
  v382 = v381;
  v384 = v383;
  CGAffineTransformMakeScale(&v1369, 0.5, 0.5);
  v1367 = v1369;
  v1425.origin.x = v378;
  v1425.origin.y = v380;
  v1425.size.width = v382;
  v1425.size.height = v384;
  v1426 = CGRectApplyAffineTransform(v1425, &v1367);
  x = v1426.origin.x;
  y = v1426.origin.y;
  width = v1426.size.width;
  height = v1426.size.height;
  v1367 = v1369;
  v1427 = CGRectApplyAffineTransform(v1426, &v1367);
  v1367 = v1369;
  v1428 = CGRectApplyAffineTransform(v1427, &v1367);
  v1367 = v1369;
  CGRectApplyAffineTransform(v1428, &v1367);
  CGAffineTransformMakeScale(&v1368, 2.0, 2.0);
  v1170 = v380;
  v1171 = v378;
  v1168 = v384;
  v1169 = v382;
  height = [(RAWReduceNoise *)self outputCNR:imageByClampingToExtent E0:v378 E1:v380, v382, v384, x, y, width, height];
  if ([(NSNumber *)self->inputShowHF BOOLValue])
  {
    v1168 = height;
    v390 = 0;
    v1237 = 0;
    v1250 = 0;
    v1259 = 0;
    v1281 = 0;
    v1282 = 0;
    v1277 = 0;
    v1254 = 0;
    v391 = 0;
    v1366 = 0;
    v1297 = 0;
    v1295 = 0;
    v1292 = 0;
    v1290 = 0;
    v1288 = 0;
    v1299 = 0;
    v1286 = 0;
    v1301 = 0;
    v1283 = 0;
    v1311 = 0;
    v1309 = 0;
    v1307 = 0;
    v1305 = 0;
    v1303 = 0;
    v1313 = 0;
    v1284 = 0;
    v1316 = 0;
    v1279 = 0;
    v1327 = 0;
    v1235 = 0;
    v1322 = 0;
    v1320 = 0;
    v1355 = 0;
    v1280 = 0;
    v1220 = 0;
    v1272 = 0;
    v1273 = 0;
    v392 = 0;
    v1227 = 0;
    v1245 = 0;
    v1248 = 0;
    v1240 = 0;
    v1262 = 0;
    v1270 = 0;
    v1271 = 0;
    v1265 = 0;
    v1269 = 0;
    v1275 = 0;
  }

  else
  {
    v393 = MEMORY[0x277CBF788];
    [(CIVector *)self->inputLumFactors X];
    v395 = v394;
    [(CIVector *)self->inputLumFactors Y];
    v397 = v396;
    [(CIVector *)self->inputLumFactors Z];
    v399 = [v393 vectorWithX:v395 * v1276 Y:v397 * v1229 Z:v398 * v1181 W:1.0];
    v400 = [V8LNRKernels kernelWithName:@"extractY"];
    [v1274 extent];
    v402 = v401;
    v404 = v403;
    v406 = v405;
    v408 = v407;
    v1423[0] = v1274;
    v1423[1] = v399;
    v409 = [MEMORY[0x277CBEA60] arrayWithObjects:v1423 count:2];
    v1277 = v399;
    v1269 = [v400 applyWithExtent:v409 arguments:{v402, v404, v406, v408}];

    v1173 = v1251 * v1264;
    [MEMORY[0x277CBF788] vectorWithX:(v1244 * v1264) Y:(v1251 * v1264) Z:(v1258 * v1264) W:0.0];
    v1252 = v1230 = v400;
    *&v410 = v1173;
    if (v1173 <= 0.00001)
    {
      v424 = [MEMORY[0x277CBF788] vectorWithX:0.859375 Y:-0.09375 Z:-0.0625 W:-0.0234375];
      v425 = [MEMORY[0x277CBF788] vectorWithX:-0.015625 Y:-0.00390625 Z:0.0 W:0.0];
      v410 = [V8LNRKernels kernelWithName:@"gaborToSYAndG"];
      [v1269 extent];
      v427 = v426;
      v429 = v428;
      v431 = v430;
      v433 = v432;
      v1421[0] = v1269;
      v1421[1] = &unk_28495DB20;
      v1421[2] = v424;
      v1421[3] = v425;
      v420 = [MEMORY[0x277CBEA60] arrayWithObjects:v1421 count:4];
      v422 = [v410 applyWithExtent:&unk_28492E190 roiCallback:v420 arguments:{v427, v429, v431, v433}];
      v1270 = v422;
      v1271 = 0;
      v1281 = v425;
      v1282 = v424;
    }

    else
    {
      v410 = [V8LNRKernels kernelWithName:@"gaborToYAndVF", v410];
      [v1269 extent];
      v413 = v412;
      v415 = v414;
      v417 = v416;
      v419 = v418;
      v1422[0] = v1269;
      LODWORD(v412) = 0.5;
      v420 = [MEMORY[0x277CCABB0] numberWithFloat:v412];
      v1422[1] = v420;
      v421 = [MEMORY[0x277CBEA60] arrayWithObjects:v1422 count:2];
      v422 = [v410 applyWithExtent:&unk_28492E170 roiCallback:v421 arguments:{v413, v415, v417, v419}];

      v1281 = 0;
      v1282 = 0;
      v1270 = 0;
      v1271 = v422;
    }

    v1272 = v422;
    v434 = [V8LNRKernels kernelWithName:@"reduce"];

    [v1272 extent];
    v1367 = v1369;
    v1430 = CGRectApplyAffineTransform(v1429, &v1367);
    v435 = v1430.origin.x;
    v436 = v1430.origin.y;
    v437 = v1430.size.width;
    v438 = v1430.size.height;
    v1420 = v1272;
    v439 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1420 count:1];
    v1273 = [v434 applyWithExtent:&unk_28492E1B0 roiCallback:v439 arguments:{v435, v436, v437, v438}];

    v440 = [V8LNRKernels kernelWithName:@"expandAndMakeD"];

    [v1272 extent];
    v442 = v441;
    v444 = v443;
    v446 = v445;
    v448 = v447;
    [v1273 extent];
    v1367 = v1368;
    v1432 = CGRectApplyAffineTransform(v1431, &v1367);
    v1590 = CGRectInset(v1432, -1.0, -1.0);
    v1433.origin.x = v442;
    v1433.origin.y = v444;
    v1433.size.width = v446;
    v1433.size.height = v448;
    v1434 = CGRectUnion(v1433, v1590);
    v449 = v1434.origin.x;
    v450 = v1434.origin.y;
    v451 = v1434.size.width;
    v452 = v1434.size.height;
    v1419[0] = v1272;
    v1419[1] = v1273;
    v453 = [MEMORY[0x277CBEA60] arrayWithObjects:v1419 count:2];
    v1275 = [v440 applyWithExtent:&unk_28492E1D0 roiCallback:v453 arguments:{v449, v450, v451, v452}];

    v454 = [V8LNRKernels kernelWithName:@"reduce"];

    [v1273 extent];
    v1367 = v1369;
    v1436 = CGRectApplyAffineTransform(v1435, &v1367);
    v455 = v1436.origin.x;
    v456 = v1436.origin.y;
    v457 = v1436.size.width;
    v458 = v1436.size.height;
    v1418 = v1273;
    v459 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1418 count:1];
    v1279 = [v454 applyWithExtent:&unk_28492E1F0 roiCallback:v459 arguments:{v455, v456, v457, v458}];

    v460 = [V8LNRKernels kernelWithName:@"expandAndMakeD"];

    [v1273 extent];
    v462 = v461;
    v464 = v463;
    v466 = v465;
    v468 = v467;
    [v1279 extent];
    v1367 = v1368;
    v1438 = CGRectApplyAffineTransform(v1437, &v1367);
    v1591 = CGRectInset(v1438, -1.0, -1.0);
    v1439.origin.x = v462;
    v1439.origin.y = v464;
    v1439.size.width = v466;
    v1439.size.height = v468;
    v1440 = CGRectUnion(v1439, v1591);
    v469 = v1440.origin.x;
    v470 = v1440.origin.y;
    v471 = v1440.size.width;
    v472 = v1440.size.height;
    v1417[0] = v1273;
    v1417[1] = v1279;
    v473 = [MEMORY[0x277CBEA60] arrayWithObjects:v1417 count:2];
    v1280 = [v460 applyWithExtent:&unk_28492E210 roiCallback:v473 arguments:{v469, v470, v471, v472}];

    v474 = [V8LNRKernels kernelWithName:@"reduce"];

    [v1279 extent];
    v1367 = v1369;
    v1442 = CGRectApplyAffineTransform(v1441, &v1367);
    v475 = v1442.origin.x;
    v476 = v1442.origin.y;
    v477 = v1442.size.width;
    v478 = v1442.size.height;
    v1416 = v1279;
    v479 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1416 count:1];
    v1283 = [v474 applyWithExtent:&unk_28492E230 roiCallback:v479 arguments:{v475, v476, v477, v478}];

    v480 = [V8LNRKernels kernelWithName:@"expandAndMakeD"];

    [v1279 extent];
    v482 = v481;
    v484 = v483;
    v486 = v485;
    v488 = v487;
    [v1283 extent];
    v1367 = v1368;
    v1444 = CGRectApplyAffineTransform(v1443, &v1367);
    v1592 = CGRectInset(v1444, -1.0, -1.0);
    v1445.origin.x = v482;
    v1445.origin.y = v484;
    v1445.size.width = v486;
    v1445.size.height = v488;
    v1446 = CGRectUnion(v1445, v1592);
    v489 = v1446.origin.x;
    v490 = v1446.origin.y;
    v491 = v1446.size.width;
    v492 = v1446.size.height;
    v1415[0] = v1279;
    v1415[1] = v1283;
    v493 = [MEMORY[0x277CBEA60] arrayWithObjects:v1415 count:2];
    v1284 = [v480 applyWithExtent:&unk_28492E250 roiCallback:v493 arguments:{v489, v490, v491, v492}];

    v494 = [V8LNRKernels kernelWithName:@"reduce"];

    [v1283 extent];
    v1367 = v1369;
    v1448 = CGRectApplyAffineTransform(v1447, &v1367);
    v495 = v1448.origin.x;
    v496 = v1448.origin.y;
    v497 = v1448.size.width;
    v498 = v1448.size.height;
    v1414 = v1283;
    v499 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1414 count:1];
    v1324 = [v494 applyWithExtent:&unk_28492E270 roiCallback:v499 arguments:{v495, v496, v497, v498}];

    v500 = [V8LNRKernels kernelWithName:@"expandAndMakeD"];

    [v1283 extent];
    v502 = v501;
    v504 = v503;
    v506 = v505;
    v508 = v507;
    [v1324 extent];
    v1367 = v1368;
    v1450 = CGRectApplyAffineTransform(v1449, &v1367);
    v1593 = CGRectInset(v1450, -1.0, -1.0);
    v1451.origin.x = v502;
    v1451.origin.y = v504;
    v1451.size.width = v506;
    v1451.size.height = v508;
    v1452 = CGRectUnion(v1451, v1593);
    v509 = v1452.origin.x;
    v510 = v1452.origin.y;
    v511 = v1452.size.width;
    v512 = v1452.size.height;
    v1413[0] = v1283;
    v1413[1] = v1324;
    v513 = [MEMORY[0x277CBEA60] arrayWithObjects:v1413 count:2];
    v1286 = [v500 applyWithExtent:&unk_28492E290 roiCallback:v513 arguments:{v509, v510, v511, v512}];

    v514 = v1180 * v1264;
    v1182 = 0.81 / v1261;
    v1366 = v1324;
    if ((v1180 * v1264) <= 0.00001)
    {
      v592 = [V8LNRKernels kernelWithName:@"expandPlusDWithOverdrive"];

      [v1286 extent];
      v594 = v593;
      v596 = v595;
      v598 = v597;
      v600 = v599;
      [v1366 extent];
      v1367 = v1368;
      v1470 = CGRectApplyAffineTransform(v1469, &v1367);
      v1598 = CGRectInset(v1470, -1.0, -1.0);
      v1471.origin.x = v594;
      v1471.origin.y = v596;
      v1471.size.width = v598;
      v1471.size.height = v600;
      v1472 = CGRectUnion(v1471, v1598);
      v601 = v1472.origin.x;
      v602 = v1472.origin.y;
      v603 = v1472.size.width;
      v604 = v1472.size.height;
      v1406[0] = v1366;
      v1406[1] = v1286;
      *&v1472.origin.x = v1178;
      v588 = [MEMORY[0x277CCABB0] numberWithFloat:v1472.origin.x];
      v1406[2] = v588;
      v589 = [MEMORY[0x277CBEA60] arrayWithObjects:v1406 count:3];
      v1301 = [v592 applyWithExtent:&unk_28492E350 roiCallback:v589 arguments:{v601, v602, v603, v604}];
      v560 = 0;
      v1297 = 0;
      v1295 = 0;
      v1292 = 0;
      v1290 = 0;
      v1288 = 0;
      v1299 = 0;
      v1318 = v1230;
      v563 = v592;
    }

    else
    {
      v515 = [V8LNRKernels kernelWithName:@"gaborToVF"];

      [v1283 extent];
      v1454 = CGRectInset(v1453, -3.0, -3.0);
      v516 = v1454.origin.x;
      v517 = v1454.origin.y;
      v518 = v1454.size.width;
      v519 = v1454.size.height;
      v1412 = v1283;
      v520 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1412 count:1];
      v1288 = [v515 applyWithExtent:&unk_28492E2B0 roiCallback:v520 arguments:{v516, v517, v518, v519}];

      v521 = [MEMORY[0x277CBF788] vectorWithX:(v1253 * v1264) Y:v514 Z:(v1187 * v1264) W:0.0];
      v522 = [V8LNRKernels kernelWithName:@"smoothVF"];

      [v1288 extent];
      v1456 = CGRectInset(v1455, -3.0, -3.0);
      v523 = v1456.origin.x;
      v524 = v1456.origin.y;
      v525 = v1456.size.width;
      v526 = v1456.size.height;
      v1411 = v1288;
      v527 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1411 count:1];
      v1260 = v521;
      v1290 = [v522 applyWithExtent:&unk_28492E2D0 roiCallback:v527 arguments:{v523, v524, v525, v526}];

      v1255 = [V8LNRKernels kernelWithName:@"VFToGDIR"];

      [v1290 extent];
      v529 = v528;
      v531 = v530;
      v533 = v532;
      v535 = v534;
      v1410 = v1290;
      v536 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1410 count:1];
      v1292 = [v1255 applyWithExtent:v536 arguments:{v529, v531, v533, v535}];

      v537 = [V8LNRKernels kernelWithName:@"DIRToC"];

      [v1292 extent];
      v1458 = CGRectInset(v1457, -8.0, -8.0);
      v538 = v1458.origin.x;
      v539 = v1458.origin.y;
      v540 = v1458.size.width;
      v541 = v1458.size.height;
      v1409[0] = v1292;
      v1409[1] = v1283;
      v542 = [MEMORY[0x277CBF788] vectorWithX:(v1196 + (v1239 * v1191)) Y:(v1193 + (v1239 * v1190)) Z:(v1192 + (v1239 * v1189)) W:0.0];
      v543 = v537;
      v1409[2] = v542;
      v544 = [MEMORY[0x277CBEA60] arrayWithObjects:v1409 count:3];
      v1295 = [v543 applyWithExtent:&unk_28492E2F0 roiCallback:v544 arguments:{v538, v539, v540, v541}];

      v545 = [V8LNRKernels kernelWithName:@"annealGAndC"];

      [v1295 extent];
      v1460 = CGRectInset(v1459, -1.0, -1.0);
      v546 = v1460.origin.x;
      v547 = v1460.origin.y;
      v548 = v1460.size.width;
      v549 = v1460.size.height;
      [v1283 extent];
      v1594.origin.x = v550;
      v1594.origin.y = v551;
      v1594.size.width = v552;
      v1594.size.height = v553;
      v1461.origin.x = v546;
      v1461.origin.y = v547;
      v1461.size.width = v548;
      v1461.size.height = v549;
      v1462 = CGRectUnion(v1461, v1594);
      v554 = v1462.origin.x;
      v555 = v1462.origin.y;
      v556 = v1462.size.width;
      v557 = v1462.size.height;
      v1408[0] = v1295;
      v1408[1] = v1283;
      v1408[2] = v1260;
      *&v1462.origin.x = v1186;
      v558 = [MEMORY[0x277CCABB0] numberWithFloat:v1462.origin.x];
      v1408[3] = v558;
      v559 = [MEMORY[0x277CBEA60] arrayWithObjects:v1408 count:4];
      v560 = v1260;
      v1297 = [v545 applyWithExtent:&unk_28492E310 roiCallback:v559 arguments:{v554, v555, v556, v557}];

      v1299 = v1286;
      v561 = (v514 + -0.00003) / 0.00004;
      v562 = 0.0;
      if (v561 >= 0.0)
      {
        v562 = (v514 + -0.00003) / 0.00004;
        if (v561 > 1.0)
        {
          v562 = 1.0;
        }
      }

      v1361 = v562;
      v563 = [V8LNRKernels kernelWithName:@"expandPlusDThruG"];

      [v1299 extent];
      v1356 = v564;
      v1350 = v565;
      v1345 = v566;
      r1a = v567;
      [v1299 extent];
      v569 = v568;
      v571 = v570;
      v573 = v572;
      v575 = v574;
      [v1297 extent];
      v577 = v576;
      v579 = v578;
      v581 = v580;
      v583 = v582;
      [v1366 extent];
      v1367 = v1368;
      v1464 = CGRectApplyAffineTransform(v1463, &v1367);
      v1595 = CGRectInset(v1464, -1.0, -1.0);
      v1465.origin.x = v577;
      v1465.origin.y = v579;
      v1465.size.width = v581;
      v1465.size.height = v583;
      v1596 = CGRectUnion(v1465, v1595);
      v1466.origin.x = v569;
      v1466.origin.y = v571;
      v1466.size.width = v573;
      v1466.size.height = v575;
      v1597 = CGRectUnion(v1466, v1596);
      v1467.origin.x = v1356;
      v1467.origin.y = v1350;
      v1467.size.width = v1345;
      v1467.size.height = r1a;
      v1468 = CGRectUnion(v1467, v1597);
      v584 = v1468.origin.x;
      v585 = v1468.origin.y;
      v586 = v1468.size.width;
      v587 = v1468.size.height;
      *&v1468.size.height = fminf(v1226 / 0.42188, 1.0);
      v1407[0] = v1366;
      v1407[1] = v1299;
      v1407[2] = v1299;
      v1407[3] = v1297;
      v588 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:v1178 Z:*&v1468.size.height W:((((v1226 * 0.75) * 0.75) * 0.75) + ((*&v1468.size.height - (((v1226 * 0.75) * 0.75) * 0.75)) * v1361))];
      v1407[4] = v588;
      v589 = [MEMORY[0x277CBF788] vectorWithX:(v1182 * 0.0003) Y:(v1182 * 0.0009) Z:(v1182 * 0.0006) W:0.0];
      v1407[5] = v589;
      v590 = [MEMORY[0x277CBF788] vectorWithX:v1162 Y:v1236 Z:0.0 W:0.0];
      v1407[6] = v590;
      v591 = [MEMORY[0x277CBEA60] arrayWithObjects:v1407 count:7];
      v1301 = [v563 applyWithExtent:&unk_28492E330 roiCallback:v591 arguments:{v584, v585, v586, v587}];

      v1318 = v1255;
    }

    v1194 = v1249 * 0.02054;
    v1197 = v1261 * v1249;
    *&v605 = v1179 * v1264;
    LODWORD(v606) = 925353388;
    v1241 = v1179 * v1264;
    v1259 = v560;
    if ((v1179 * v1264) <= 0.00001)
    {
      v605 = [V8LNRKernels kernelWithName:@"expandPlusDWithOverdrive", v606, v605];

      [v1284 extent];
      v710 = v709;
      v712 = v711;
      v714 = v713;
      v716 = v715;
      [v1301 extent];
      v1367 = v1368;
      v1496 = CGRectApplyAffineTransform(v1495, &v1367);
      v1603 = CGRectInset(v1496, -1.0, -1.0);
      v1497.origin.x = v710;
      v1497.origin.y = v712;
      v1497.size.width = v714;
      v1497.size.height = v716;
      v1498 = CGRectUnion(v1497, v1603);
      v717 = v1498.origin.x;
      v718 = v1498.origin.y;
      v719 = v1498.size.width;
      v720 = v1498.size.height;
      v1396[0] = v1301;
      v1396[1] = v1284;
      *&v1498.origin.x = v1188;
      v721 = [MEMORY[0x277CCABB0] numberWithFloat:v1498.origin.x];
      v1396[2] = v721;
      v722 = [MEMORY[0x277CBEA60] arrayWithObjects:v1396 count:3];
      v723 = v605;
      v1316 = [v605 applyWithExtent:&unk_28492E470 roiCallback:v722 arguments:{v717, v718, v719, v720}];
      v1250 = 0;
      v1311 = 0;
      v1309 = 0;
      v1307 = 0;
      v1305 = 0;
      v1303 = 0;
      v1313 = 0;
    }

    else
    {
      v6052 = [V8LNRKernels kernelWithName:@"gaborToVF", v606, v605];

      [v1279 extent];
      v1474 = CGRectInset(v1473, -3.0, -3.0);
      v608 = v1474.origin.x;
      v609 = v1474.origin.y;
      v610 = v1474.size.width;
      v611 = v1474.size.height;
      v1405 = v1279;
      v612 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1405 count:1];
      v1303 = [v6052 applyWithExtent:&unk_28492E370 roiCallback:v612 arguments:{v608, v609, v610, v611}];

      [MEMORY[0x277CBF788] vectorWithX:(v1164 * v1264) Y:v1241 Z:(v1163 * v1264) W:0.0];
      v614 = v613 = v6052;
      v615 = [V8LNRKernels kernelWithName:@"smoothVF"];
      v1250 = v614;

      [v1303 extent];
      v1476 = CGRectInset(v1475, -3.0, -3.0);
      v616 = v1476.origin.x;
      v617 = v1476.origin.y;
      v618 = v1476.size.width;
      v619 = v1476.size.height;
      v1404 = v1303;
      v620 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1404 count:1];
      v1305 = [v615 applyWithExtent:&unk_28492E390 roiCallback:v620 arguments:{v616, v617, v618, v619}];

      v1256 = [V8LNRKernels kernelWithName:@"VFToGDIR"];

      [v1305 extent];
      v622 = v621;
      v624 = v623;
      v626 = v625;
      v628 = v627;
      v1403 = v1305;
      v629 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1403 count:1];
      v1307 = [v1256 applyWithExtent:v629 arguments:{v622, v624, v626, v628}];

      v630 = [V8LNRKernels kernelWithName:@"DIRToC"];

      [v1307 extent];
      v1478 = CGRectInset(v1477, -8.0, -8.0);
      v631 = v1478.origin.x;
      v632 = v1478.origin.y;
      v633 = v1478.size.width;
      v634 = v1478.size.height;
      v1402[0] = v1307;
      v1402[1] = v1279;
      v635 = [MEMORY[0x277CBF788] vectorWithX:(v1203 + (v1165 * v1199)) Y:(v1201 + (v1165 * v1198)) Z:(v1200 + (v1165 * v1195)) W:0.0];
      v636 = v630;
      v1402[2] = v635;
      v637 = [MEMORY[0x277CBEA60] arrayWithObjects:v1402 count:3];
      v1309 = [v636 applyWithExtent:&unk_28492E3B0 roiCallback:v637 arguments:{v631, v632, v633, v634}];

      v1231 = [V8LNRKernels kernelWithName:@"annealGAndC"];

      [v1309 extent];
      v1480 = CGRectInset(v1479, -1.0, -1.0);
      v638 = v1480.origin.x;
      v639 = v1480.origin.y;
      v640 = v1480.size.width;
      v641 = v1480.size.height;
      [v1279 extent];
      v1599.origin.x = v642;
      v1599.origin.y = v643;
      v1599.size.width = v644;
      v1599.size.height = v645;
      v1481.origin.x = v638;
      v1481.origin.y = v639;
      v1481.size.width = v640;
      v1481.size.height = v641;
      v1482 = CGRectUnion(v1481, v1599);
      v646 = v1482.origin.x;
      v647 = v1482.origin.y;
      v648 = v1482.size.width;
      v649 = v1482.size.height;
      v1401[0] = v1309;
      v1401[1] = v1279;
      v1401[2] = v1250;
      *&v1482.origin.x = v1186;
      v650 = [MEMORY[0x277CCABB0] numberWithFloat:v1482.origin.x];
      v1401[3] = v650;
      v651 = [MEMORY[0x277CBEA60] arrayWithObjects:v1401 count:4];
      v1311 = [v1231 applyWithExtent:&unk_28492E3D0 roiCallback:v651 arguments:{v646, v647, v648, v649}];

      if (v1197 <= 2.4)
      {
        v707 = v1284;
        v706 = v1231;
      }

      else
      {
        v652 = [V8LNRKernels kernelWithName:@"smoothDSharpenAntiBloom"];

        v653 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:v1167 Z:v1216 W:v1185];

        v1238 = (v1194 * 0.75);
        v1204 = (2.0 / v1194);
        v654 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:? Z:? W:?];

        v655 = v652;
        [v1284 extent];
        v1484 = CGRectInset(v1483, -2.0, -2.0);
        v656 = v1484.origin.x;
        v657 = v1484.origin.y;
        v658 = v1484.size.width;
        v659 = v1484.size.height;
        [v1311 extent];
        v1600.origin.x = v660;
        v1600.origin.y = v661;
        v1600.size.width = v662;
        v1600.size.height = v663;
        v1485.origin.x = v656;
        v1485.origin.y = v657;
        v1485.size.width = v658;
        v1485.size.height = v659;
        v1486 = CGRectUnion(v1485, v1600);
        v664 = v1486.origin.x;
        v665 = v1486.origin.y;
        v666 = v1486.size.width;
        v667 = v1486.size.height;
        v1400[0] = v1284;
        v1400[1] = v1311;
        v1400[2] = v653;
        v1400[3] = v654;
        v668 = [MEMORY[0x277CBEA60] arrayWithObjects:v1400 count:4];
        v1314 = [v652 applyWithExtent:&unk_28492E3F0 roiCallback:v668 arguments:{v664, v665, v666, v667}];

        v669 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:(v1167 + ((1.0 - v1167) * 0.25)) Z:((v1216 * 0.66667) + 0.33333) W:(v1185 * 0.6)];

        v670 = v669;
        v671 = v654;
        v672 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:v1238 Z:v1204 W:0.100000001];

        v673 = v672;
        v674 = v670;
        v675 = v673;
        v676 = [V8LNRKernels kernelWithName:@"smoothDSharpenAntiBloom"];

        [v1314 extent];
        v1488 = CGRectInset(v1487, -4.0, -4.0);
        v677 = v1488.origin.x;
        v678 = v1488.origin.y;
        v679 = v1488.size.width;
        v680 = v1488.size.height;
        [v1311 extent];
        v1601.origin.x = v681;
        v1601.origin.y = v682;
        v1601.size.width = v683;
        v1601.size.height = v684;
        v1489.origin.x = v677;
        v1489.origin.y = v678;
        v1489.size.width = v679;
        v1489.size.height = v680;
        v1490 = CGRectUnion(v1489, v1601);
        v685 = v1490.origin.x;
        v686 = v1490.origin.y;
        v687 = v1490.size.width;
        v688 = v1490.size.height;
        v1399[0] = v1314;
        v1399[1] = v1311;
        v1399[2] = v674;
        v1399[3] = v675;
        v689 = [MEMORY[0x277CBEA60] arrayWithObjects:v1399 count:4];
        v690 = [v676 applyWithExtent:&unk_28492E410 roiCallback:v689 arguments:{v685, v686, v687, v688}];

        v1232 = [MEMORY[0x277CBF788] vectorWithX:4.0 Y:(v1167 + ((1.0 - v1167) * 0.5)) Z:((v1216 * 0.33333) + 0.66667) W:((v1185 * 0.6) * 0.6)];

        v1205 = [MEMORY[0x277CBF788] vectorWithX:3.0 Y:v1238 Z:v1204 W:0.100000001];

        v691 = v690;
        v692 = [V8LNRKernels kernelWithName:@"smoothDSharpenAntiBloom"];

        [v691 extent];
        v1492 = CGRectInset(v1491, -8.0, -8.0);
        v693 = v1492.origin.x;
        v694 = v1492.origin.y;
        v695 = v1492.size.width;
        v696 = v1492.size.height;
        [v1311 extent];
        v1602.origin.x = v697;
        v1602.origin.y = v698;
        v1602.size.width = v699;
        v1602.size.height = v700;
        v1493.origin.x = v693;
        v1493.origin.y = v694;
        v1493.size.width = v695;
        v1493.size.height = v696;
        v1494 = CGRectUnion(v1493, v1602);
        v701 = v1494.origin.x;
        v702 = v1494.origin.y;
        v703 = v1494.size.width;
        v704 = v1494.size.height;
        v1398[0] = v691;
        v1398[1] = v1311;
        v1398[2] = v1232;
        v1398[3] = v1205;
        v705 = [MEMORY[0x277CBEA60] arrayWithObjects:v1398 count:4];
        v706 = v692;
        v707 = [v692 applyWithExtent:&unk_28492E430 roiCallback:v705 arguments:{v701, v702, v703, v704}];

        v1281 = v1205;
        v1282 = v1232;
      }

      v724 = (v1241 + -0.00003) / 0.00004;
      v725 = 0.0;
      if (v724 >= 0.0)
      {
        v725 = (v1241 + -0.00003) / 0.00004;
        if (v724 > 1.0)
        {
          v725 = 1.0;
        }
      }

      v1362 = v725;
      v1313 = v707;
      v723 = [V8LNRKernels kernelWithName:@"expandPlusDThruG"];

      [v1284 extent];
      v1357 = v726;
      v1351 = v727;
      v1346 = v728;
      r1b = v729;
      [v707 extent];
      v731 = v730;
      v733 = v732;
      v735 = v734;
      v737 = v736;
      [v1311 extent];
      v739 = v738;
      v741 = v740;
      v743 = v742;
      v745 = v744;
      [v1301 extent];
      v1367 = v1368;
      v1500 = CGRectApplyAffineTransform(v1499, &v1367);
      v1604 = CGRectInset(v1500, -1.0, -1.0);
      v1501.origin.x = v739;
      v1501.origin.y = v741;
      v1501.size.width = v743;
      v1501.size.height = v745;
      v1605 = CGRectUnion(v1501, v1604);
      v1502.origin.x = v731;
      v1502.origin.y = v733;
      v1502.size.width = v735;
      v1502.size.height = v737;
      v1606 = CGRectUnion(v1502, v1605);
      v1503.origin.x = v1357;
      v1503.origin.y = v1351;
      v1503.size.width = v1346;
      v1503.size.height = r1b;
      v1504 = CGRectUnion(v1503, v1606);
      v746 = v1504.origin.x;
      v747 = v1504.origin.y;
      v748 = v1504.size.width;
      v749 = v1504.size.height;
      *&v1504.origin.x = fminf(v1226 / 0.5625, 1.0);
      v1397[0] = v1301;
      v1397[1] = v1284;
      v1397[2] = v707;
      v1397[3] = v1311;
      v721 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:v1188 Z:*&v1504.origin.x W:(((v1226 * 0.75) * 0.75) + ((*&v1504.origin.x - ((v1226 * 0.75) * 0.75)) * v1362))];
      v1397[4] = v721;
      v722 = [MEMORY[0x277CBF788] vectorWithX:(v1182 * 0.0005) Y:(v1182 * 0.0015) Z:(v1182 * 0.001) W:0.0];
      v1397[5] = v722;
      v750 = [MEMORY[0x277CBF788] vectorWithX:v1159 Y:v1158 Z:0.0 W:0.0];
      v1397[6] = v750;
      v751 = [MEMORY[0x277CBEA60] arrayWithObjects:v1397 count:7];
      v1316 = [v723 applyWithExtent:&unk_28492E450 roiCallback:v751 arguments:{v746, v747, v748, v749}];

      v1318 = v1256;
    }

    *&v752 = v1177 * v1264;
    LODWORD(v753) = 925353388;
    v1242 = v1177 * v1264;
    if ((v1177 * v1264) <= 0.00001)
    {
      v752 = [V8LNRKernels kernelWithName:@"expandPlusDWithOverdrive", v753, v752];

      [v1280 extent];
      v881 = v880;
      v883 = v882;
      v885 = v884;
      v887 = v886;
      [v1316 extent];
      v1367 = v1368;
      v1532 = CGRectApplyAffineTransform(v1531, &v1367);
      v1612 = CGRectInset(v1532, -1.0, -1.0);
      v1533.origin.x = v881;
      v1533.origin.y = v883;
      v1533.size.width = v885;
      v1533.size.height = v887;
      v1534 = CGRectUnion(v1533, v1612);
      v888 = v1534.origin.x;
      v889 = v1534.origin.y;
      v890 = v1534.size.width;
      v891 = v1534.size.height;
      v1385[0] = v1316;
      v1385[1] = v1280;
      *&v1534.origin.x = v1176;
      v892 = [MEMORY[0x277CCABB0] numberWithFloat:v1534.origin.x];
      v1385[2] = v892;
      v893 = [MEMORY[0x277CBEA60] arrayWithObjects:v1385 count:3];
      v894 = v752;
      v390 = v1252;
      v1220 = [v752 applyWithExtent:&unk_28492E5B0 roiCallback:v893 arguments:{v888, v889, v890, v891}];
      v1235 = 0;
      v1237 = 0;
      v1327 = 0;
      v1322 = 0;
      v1320 = 0;
      v1355 = 0;
      v1254 = v1318;
    }

    else
    {
      v7522 = [V8LNRKernels kernelWithName:@"gaborToVF", v753, v752];

      [v1273 extent];
      v1506 = CGRectInset(v1505, -3.0, -3.0);
      v755 = v1506.origin.x;
      v756 = v1506.origin.y;
      v757 = v1506.size.width;
      v758 = v1506.size.height;
      v1395 = v1273;
      v759 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1395 count:1];
      v1320 = [v7522 applyWithExtent:&unk_28492E490 roiCallback:v759 arguments:{v755, v756, v757, v758}];

      v760 = [MEMORY[0x277CBF788] vectorWithX:(v1161 * v1264) Y:v1242 Z:(v1160 * v1264) W:0.0];
      v761 = [V8LNRKernels kernelWithName:@"smoothVF"];
      v1237 = v760;

      [v1320 extent];
      v1508 = CGRectInset(v1507, -3.0, -3.0);
      v762 = v1508.origin.x;
      v763 = v1508.origin.y;
      v764 = v1508.size.width;
      v765 = v1508.size.height;
      v1394 = v1320;
      v766 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1394 count:1];
      v1322 = [v761 applyWithExtent:&unk_28492E4B0 roiCallback:v766 arguments:{v762, v763, v764, v765}];

      v1254 = [V8LNRKernels kernelWithName:@"VFToGDIR"];

      [v1322 extent];
      v768 = v767;
      v770 = v769;
      v772 = v771;
      v774 = v773;
      v1393 = v1322;
      v775 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1393 count:1];
      v1329 = [v1254 applyWithExtent:v775 arguments:{v768, v770, v772, v774}];

      v776 = [V8LNRKernels kernelWithName:@"DIRToC"];

      [v1329 extent];
      v1510 = CGRectInset(v1509, -8.0, -8.0);
      v777 = v1510.origin.x;
      v778 = v1510.origin.y;
      v779 = v1510.size.width;
      v780 = v1510.size.height;
      v1392[0] = v1329;
      v1392[1] = v1273;
      v781 = [MEMORY[0x277CBF788] vectorWithX:(v1234 + (v1166 * v1207)) Y:(v1219 + (v1166 * v1206)) Z:(v1208 + (v1166 * v1202)) W:0.0];
      v782 = v776;
      v1392[2] = v781;
      v783 = [MEMORY[0x277CBEA60] arrayWithObjects:v1392 count:3];
      v1235 = [v782 applyWithExtent:&unk_28492E4D0 roiCallback:v783 arguments:{v777, v778, v779, v780}];

      v784 = [V8LNRKernels kernelWithName:@"annealGAndC"];

      [v1235 extent];
      v1512 = CGRectInset(v1511, -1.0, -1.0);
      v785 = v1512.origin.x;
      v786 = v1512.origin.y;
      v787 = v1512.size.width;
      v788 = v1512.size.height;
      [v1273 extent];
      v1607.origin.x = v789;
      v1607.origin.y = v790;
      v1607.size.width = v791;
      v1607.size.height = v792;
      v1513.origin.x = v785;
      v1513.origin.y = v786;
      v1513.size.width = v787;
      v1513.size.height = v788;
      v1514 = CGRectUnion(v1513, v1607);
      v793 = v1514.origin.x;
      v794 = v1514.origin.y;
      v795 = v1514.size.width;
      v796 = v1514.size.height;
      v1391[0] = v1235;
      v1391[1] = v1273;
      v1391[2] = v760;
      *&v1514.origin.x = v1186;
      v797 = [MEMORY[0x277CCABB0] numberWithFloat:v1514.origin.x];
      v1391[3] = v797;
      v798 = [MEMORY[0x277CBEA60] arrayWithObjects:v1391 count:4];
      v799 = v784;
      v390 = v1252;
      v1327 = [v784 applyWithExtent:&unk_28492E4F0 roiCallback:v798 arguments:{v793, v794, v795, v796}];

      if (v1197 <= 1.7)
      {
        v878 = v1280;
      }

      else
      {
        v800 = [V8LNRKernels kernelWithName:@"smoothDSharpen"];

        v801 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:v1174 Z:v1216 W:v1185];

        v1266 = (v1194 * 0.75);
        v1233 = (2.0 / v1194);
        v802 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:? Z:? W:?];

        [v1280 extent];
        v1516 = CGRectInset(v1515, -2.0, -2.0);
        v803 = v1516.origin.x;
        v804 = v1516.origin.y;
        v805 = v1516.size.width;
        v806 = v1516.size.height;
        [v1327 extent];
        v1608.origin.x = v807;
        v1608.origin.y = v808;
        v1608.size.width = v809;
        v1608.size.height = v810;
        v1517.origin.x = v803;
        v1517.origin.y = v804;
        v1517.size.width = v805;
        v1517.size.height = v806;
        v1518 = CGRectUnion(v1517, v1608);
        v811 = v1518.origin.x;
        v812 = v1518.origin.y;
        v813 = v1518.size.width;
        v814 = v1518.size.height;
        v1390[0] = v1280;
        v1390[1] = v1327;
        v1390[2] = v801;
        v1390[3] = v802;
        v815 = [MEMORY[0x277CBEA60] arrayWithObjects:v1390 count:4];
        v1358 = [v800 applyWithExtent:&unk_28492E510 roiCallback:v815 arguments:{v811, v812, v813, v814}];

        v816 = v802;
        v817 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:(v1174 + ((1.0 - v1174) * 0.25)) Z:((v1216 * 0.66667) + 0.33333) W:(v1185 * 0.6)];

        v818 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:v1266 Z:v1233 W:0.0];

        v819 = v817;
        v820 = [V8LNRKernels kernelWithName:@"smoothDSharpen"];

        v821 = v820;
        v822 = v818;
        v823 = v821;
        [v1358 extent];
        v1520 = CGRectInset(v1519, -4.0, -4.0);
        v824 = v1520.origin.x;
        v825 = v1520.origin.y;
        v826 = v1520.size.width;
        v827 = v1520.size.height;
        [v1327 extent];
        v1609.origin.x = v828;
        v1609.origin.y = v829;
        v1609.size.width = v830;
        v1609.size.height = v831;
        v1521.origin.x = v824;
        v1521.origin.y = v825;
        v1521.size.width = v826;
        v1521.size.height = v827;
        v1522 = CGRectUnion(v1521, v1609);
        v832 = v1522.origin.x;
        v833 = v1522.origin.y;
        v834 = v1522.size.width;
        v835 = v1522.size.height;
        v1389[0] = v1358;
        v1389[1] = v1327;
        v1389[2] = v817;
        v1389[3] = v818;
        v836 = [MEMORY[0x277CBEA60] arrayWithObjects:v1389 count:4];
        v837 = v823;
        v838 = [v823 applyWithExtent:&unk_28492E530 roiCallback:v836 arguments:{v832, v833, v834, v835}];

        v839 = (v1185 * 0.6) * 0.6;
        v840 = [MEMORY[0x277CBF788] vectorWithX:4.0 Y:(v1174 + ((1.0 - v1174) * 0.5)) Z:((v1216 * 0.33333) + 0.66667) W:v839];

        v841 = v837;
        v842 = [MEMORY[0x277CBF788] vectorWithX:3.0 Y:v1266 Z:v1233 W:0.0];

        v843 = v842;
        v844 = v838;
        v845 = v840;
        v846 = v843;
        v847 = [V8LNRKernels kernelWithName:@"smoothDSharpen"];

        [v844 extent];
        v1524 = CGRectInset(v1523, -8.0, -8.0);
        v848 = v1524.origin.x;
        v849 = v1524.origin.y;
        v850 = v1524.size.width;
        v851 = v1524.size.height;
        [v1327 extent];
        v1610.origin.x = v852;
        v1610.origin.y = v853;
        v1610.size.width = v854;
        v1610.size.height = v855;
        v1525.origin.x = v848;
        v1525.origin.y = v849;
        v1525.size.width = v850;
        v1525.size.height = v851;
        v1526 = CGRectUnion(v1525, v1610);
        v856 = v1526.origin.x;
        v857 = v1526.origin.y;
        v858 = v1526.size.width;
        v859 = v1526.size.height;
        v1388[0] = v844;
        v1388[1] = v1327;
        v1388[2] = v845;
        v1388[3] = v846;
        v860 = [MEMORY[0x277CBEA60] arrayWithObjects:v1388 count:4];
        v1359 = [v847 applyWithExtent:&unk_28492E550 roiCallback:v860 arguments:{v856, v857, v858, v859}];

        v861 = [MEMORY[0x277CBF788] vectorWithX:8.0 Y:(v1174 + ((1.0 - v1174) * 0.75)) Z:1.0 W:(v839 * 0.6)];

        v862 = [MEMORY[0x277CBF788] vectorWithX:4.0 Y:v1266 Z:v1233 W:0.0];

        v863 = v862;
        v799 = [V8LNRKernels kernelWithName:@"smoothDSharpen"];

        v864 = v861;
        [v1359 extent];
        v1528 = CGRectInset(v1527, -16.0, -16.0);
        v865 = v1528.origin.x;
        v866 = v1528.origin.y;
        v867 = v1528.size.width;
        v868 = v1528.size.height;
        [v1327 extent];
        v1611.origin.x = v869;
        v1611.origin.y = v870;
        v1611.size.width = v871;
        v1611.size.height = v872;
        v1529.origin.x = v865;
        v1529.origin.y = v866;
        v1529.size.width = v867;
        v1529.size.height = v868;
        v1530 = CGRectUnion(v1529, v1611);
        v873 = v1530.origin.x;
        v874 = v1530.origin.y;
        v875 = v1530.size.width;
        v876 = v1530.size.height;
        v1387[0] = v1359;
        v1387[1] = v1327;
        v1387[2] = v861;
        v1387[3] = v863;
        v877 = [MEMORY[0x277CBEA60] arrayWithObjects:v1387 count:4];
        v878 = [v799 applyWithExtent:&unk_28492E570 roiCallback:v877 arguments:{v873, v874, v875, v876}];

        v390 = v1252;
        v1281 = v863;
        v1282 = v864;
      }

      v895 = (v1242 + -0.00003) / 0.00004;
      v896 = 0.0;
      if (v895 >= 0.0)
      {
        v896 = (v1242 + -0.00003) / 0.00004;
        if (v895 > 1.0)
        {
          v896 = 1.0;
        }
      }

      v1363 = v896;
      v1355 = v878;
      v894 = [V8LNRKernels kernelWithName:@"expandPlusDThruG"];

      [v1280 extent];
      v1352 = v897;
      v1347 = v898;
      r1c = v899;
      v1335 = v900;
      [v878 extent];
      v902 = v901;
      v904 = v903;
      v906 = v905;
      v908 = v907;
      [v1327 extent];
      v910 = v909;
      v912 = v911;
      v914 = v913;
      v916 = v915;
      [v1316 extent];
      v1367 = v1368;
      v1536 = CGRectApplyAffineTransform(v1535, &v1367);
      v1613 = CGRectInset(v1536, -1.0, -1.0);
      v1537.origin.x = v910;
      v1537.origin.y = v912;
      v1537.size.width = v914;
      v1537.size.height = v916;
      v1614 = CGRectUnion(v1537, v1613);
      v1538.origin.x = v902;
      v1538.origin.y = v904;
      v1538.size.width = v906;
      v1538.size.height = v908;
      v1615 = CGRectUnion(v1538, v1614);
      v1539.origin.x = v1352;
      v1539.origin.y = v1347;
      v1539.size.width = r1c;
      v1539.size.height = v1335;
      v1540 = CGRectUnion(v1539, v1615);
      v917 = v1540.origin.x;
      v918 = v1540.origin.y;
      v919 = v1540.size.width;
      v920 = v1540.size.height;
      *&v1540.size.width = fminf(v1226 / 0.75, 1.0);
      v1386[0] = v1316;
      v1386[1] = v1280;
      v1386[2] = v878;
      v1386[3] = v1327;
      v892 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:v1176 Z:*&v1540.size.width W:((v1226 * 0.75) + ((*&v1540.size.width - (v1226 * 0.75)) * v1363))];
      v1386[4] = v892;
      v893 = [MEMORY[0x277CBF788] vectorWithX:(v1182 * 0.0007) Y:(v1182 * 0.0021) Z:(v1182 * 0.0014) W:0.0];
      v1386[5] = v893;
      v921 = [MEMORY[0x277CBF788] vectorWithX:*(&v1157 + 1) Y:*&v1157 Z:0.0 W:0.0];
      v1386[6] = v921;
      v922 = [MEMORY[0x277CBEA60] arrayWithObjects:v1386 count:7];
      v1220 = [v894 applyWithExtent:&unk_28492E590 roiCallback:v922 arguments:{v917, v918, v919, v920}];
    }

    v923 = (1.0 / v1261) * 0.00175;
    v1364 = v1247 * v1175;
    v1348 = 1.0 / ((((1.0 / v1261) * 0.014) / v923) + -1.0);
    v1353 = v923 * (v1348 + 1.0);
    if (v1173 <= 0.00001)
    {
      if ((v1247 * v1175) <= 0.0)
      {
        v1262 = 0;
      }

      else
      {
        v1037 = [V8LNRKernels kernelWithName:@"FGN"];

        [v1275 extent];
        v1568 = CGRectInset(v1567, -2.0, -2.0);
        v1038 = v1568.origin.x;
        v1039 = v1568.origin.y;
        v1040 = v1568.size.width;
        v1041 = v1568.size.height;
        v1374 = v1275;
        v1042 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1374 count:1];
        v1262 = [v1037 applyWithExtent:&unk_28492E6F0 roiCallback:v1042 arguments:{v1038, v1039, v1040, v1041}];

        v894 = v1037;
      }

      v1043 = [V8LNRKernels kernelWithName:@"annealG"];

      [v1272 extent];
      v1570 = CGRectInset(v1569, -1.0, -1.0);
      v1044 = v1570.origin.x;
      v1045 = v1570.origin.y;
      v1046 = v1570.size.width;
      v1047 = v1570.size.height;
      [v1272 extent];
      v1621.origin.x = v1048;
      v1621.origin.y = v1049;
      v1621.size.width = v1050;
      v1621.size.height = v1051;
      v1571.origin.x = v1044;
      v1571.origin.y = v1045;
      v1571.size.width = v1046;
      v1571.size.height = v1047;
      v1572 = CGRectUnion(v1571, v1621);
      v1052 = v1572.origin.x;
      v1053 = v1572.origin.y;
      v1054 = v1572.size.width;
      v1055 = v1572.size.height;
      v1373[0] = v1272;
      v1373[1] = v1272;
      v1373[2] = v390;
      v1056 = [MEMORY[0x277CBEA60] arrayWithObjects:v1373 count:3];
      v1248 = [v1043 applyWithExtent:&unk_28492E710 roiCallback:v1056 arguments:{v1052, v1053, v1054, v1055}];

      v1057 = [V8LNRKernels kernelWithName:@"expandPlusDThruG2"];

      [v1248 extent];
      v1059 = v1058;
      v1061 = v1060;
      v1063 = v1062;
      v1065 = v1064;
      [v1275 extent];
      v1067 = v1066;
      v1069 = v1068;
      v1071 = v1070;
      v1073 = v1072;
      [v1220 extent];
      v1367 = v1368;
      v1574 = CGRectApplyAffineTransform(v1573, &v1367);
      v1622 = CGRectInset(v1574, -1.0, -1.0);
      v1575.origin.x = v1067;
      v1575.origin.y = v1069;
      v1575.size.width = v1071;
      v1575.size.height = v1073;
      v1623 = CGRectUnion(v1575, v1622);
      v1576.origin.x = v1059;
      v1576.origin.y = v1061;
      v1576.size.width = v1063;
      v1576.size.height = v1065;
      v1577 = CGRectUnion(v1576, v1623);
      v1074 = v1577.origin.x;
      v1075 = v1577.origin.y;
      v1076 = v1577.size.width;
      v1077 = v1577.size.height;
      v1372[0] = v1220;
      v1372[1] = v1275;
      v1372[2] = v1248;
      v1078 = [MEMORY[0x277CBF788] vectorWithX:v1183 Y:1.0 Z:v1353 W:v1348];
      v1372[3] = v1078;
      v1079 = [MEMORY[0x277CBF788] vectorWithX:(v1182 * 0.004) Y:(v1182 * 0.012) Z:(v1182 * 0.008) W:0.0];
      v1372[4] = v1079;
      v1080 = [MEMORY[0x277CBF788] vectorWithX:v1172 Y:v1217 Z:0.0 W:0.0];
      v1372[5] = v1080;
      v1081 = [MEMORY[0x277CBEA60] arrayWithObjects:v1372 count:6];
      v1082 = [v1057 applyWithExtent:&unk_28492E730 roiCallback:v1081 arguments:{v1074, v1075, v1076, v1077}];
      v1245 = 0;
      v1240 = 0;
      v1265 = 0;
    }

    else
    {
      v924 = [V8LNRKernels kernelWithName:@"smoothVF"];

      [v1272 extent];
      v1542 = CGRectInset(v1541, -3.0, -3.0);
      v925 = v1542.origin.x;
      v926 = v1542.origin.y;
      v927 = v1542.size.width;
      v928 = v1542.size.height;
      v1384 = v1272;
      v929 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1384 count:1];
      v1240 = [v924 applyWithExtent:&unk_28492E5D0 roiCallback:v929 arguments:{v925, v926, v927, v928}];

      v930 = [V8LNRKernels kernelWithName:@"VFToGDIR"];

      v1254 = v930;
      [v1240 extent];
      v932 = v931;
      v934 = v933;
      v936 = v935;
      v938 = v937;
      v1383 = v1240;
      v939 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1383 count:1];
      v1246 = [v1254 applyWithExtent:v939 arguments:{v932, v934, v936, v938}];

      v940 = [V8LNRKernels kernelWithName:@"DIRToC"];

      [v1246 extent];
      v1544 = CGRectInset(v1543, -8.0, -8.0);
      v941 = v1544.origin.x;
      v942 = v1544.origin.y;
      v943 = v1544.size.width;
      v944 = v1544.size.height;
      v1382[0] = v1246;
      v1382[1] = v1272;
      v945 = [MEMORY[0x277CBF788] vectorWithX:(v1214 + (v1215 * v1211)) Y:(v1213 + (v1215 * v1210)) Z:(v1212 + (v1215 * v1209)) W:0.0];
      v1382[2] = v945;
      v946 = [MEMORY[0x277CBEA60] arrayWithObjects:v1382 count:3];
      v947 = [v940 applyWithExtent:&unk_28492E5F0 roiCallback:v946 arguments:{v941, v942, v943, v944}];

      v1245 = v947;
      v948 = [V8LNRKernels kernelWithName:@"annealGAndC"];

      [v947 extent];
      v1546 = CGRectInset(v1545, -1.0, -1.0);
      v949 = v1546.origin.x;
      v950 = v1546.origin.y;
      v951 = v1546.size.width;
      v952 = v1546.size.height;
      [v1272 extent];
      v1616.origin.x = v953;
      v1616.origin.y = v954;
      v1616.size.width = v955;
      v1616.size.height = v956;
      v1547.origin.x = v949;
      v1547.origin.y = v950;
      v1547.size.width = v951;
      v1547.size.height = v952;
      v1548 = CGRectUnion(v1547, v1616);
      v957 = v1548.origin.x;
      v958 = v1548.origin.y;
      v959 = v1548.size.width;
      v960 = v1548.size.height;
      v1381[0] = v947;
      v1381[1] = v1272;
      v1381[2] = v390;
      *&v1548.origin.x = v1186;
      v961 = [MEMORY[0x277CCABB0] numberWithFloat:v1548.origin.x];
      v1381[3] = v961;
      v962 = [MEMORY[0x277CBEA60] arrayWithObjects:v1381 count:4];
      v1248 = [v948 applyWithExtent:&unk_28492E610 roiCallback:v962 arguments:{v957, v958, v959, v960}];

      v963 = [V8LNRKernels kernelWithName:@"smoothDSharpen"];

      v964 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:v1184 Z:v1216 W:v1185];

      r1d = (v1194 * 0.75);
      v1336 = (2.0 / v1194);
      v965 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:? Z:? W:?];

      [v1275 extent];
      v1550 = CGRectInset(v1549, -2.0, -2.0);
      v966 = v1550.origin.x;
      v967 = v1550.origin.y;
      v968 = v1550.size.width;
      v969 = v1550.size.height;
      [v1248 extent];
      v1617.origin.x = v970;
      v1617.origin.y = v971;
      v1617.size.width = v972;
      v1617.size.height = v973;
      v1551.origin.x = v966;
      v1551.origin.y = v967;
      v1551.size.width = v968;
      v1551.size.height = v969;
      v1552 = CGRectUnion(v1551, v1617);
      v974 = v1552.origin.x;
      v975 = v1552.origin.y;
      v976 = v1552.size.width;
      v977 = v1552.size.height;
      v1380[0] = v1275;
      v1380[1] = v1248;
      v1380[2] = v964;
      v1380[3] = v965;
      v978 = [MEMORY[0x277CBEA60] arrayWithObjects:v1380 count:4];
      v1267 = [v963 applyWithExtent:&unk_28492E630 roiCallback:v978 arguments:{v974, v975, v976, v977}];

      v979 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:(v1184 + ((1.0 - v1184) * 0.25)) Z:((v1216 * 0.66667) + 0.33333) W:(v1185 * 0.6)];

      v980 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:r1d Z:v1336 W:0.0];

      v981 = [V8LNRKernels kernelWithName:@"smoothDSharpen"];

      [v1267 extent];
      v1554 = CGRectInset(v1553, -4.0, -4.0);
      v982 = v1554.origin.x;
      v983 = v1554.origin.y;
      v984 = v1554.size.width;
      v985 = v1554.size.height;
      [v1248 extent];
      v1618.origin.x = v986;
      v1618.origin.y = v987;
      v1618.size.width = v988;
      v1618.size.height = v989;
      v1555.origin.x = v982;
      v1555.origin.y = v983;
      v1555.size.width = v984;
      v1555.size.height = v985;
      v1556 = CGRectUnion(v1555, v1618);
      v990 = v1556.origin.x;
      v991 = v1556.origin.y;
      v992 = v1556.size.width;
      v993 = v1556.size.height;
      v1379[0] = v1267;
      v1379[1] = v1248;
      v1379[2] = v979;
      v1379[3] = v980;
      v994 = [MEMORY[0x277CBEA60] arrayWithObjects:v1379 count:4];
      v995 = [v981 applyWithExtent:&unk_28492E650 roiCallback:v994 arguments:{v990, v991, v992, v993}];

      *&v958 = (v1185 * 0.6) * 0.6;
      v996 = [MEMORY[0x277CBF788] vectorWithX:4.0 Y:(v1184 + ((1.0 - v1184) * 0.5)) Z:((v1216 * 0.33333) + 0.66667) W:*&v958];

      v997 = [MEMORY[0x277CBF788] vectorWithX:3.0 Y:r1d Z:v1336 W:0.0];

      v998 = [V8LNRKernels kernelWithName:@"smoothDSharpen"];

      [v995 extent];
      v1558 = CGRectInset(v1557, -8.0, -8.0);
      v999 = v1558.origin.x;
      v1000 = v1558.origin.y;
      v1001 = v1558.size.width;
      v1002 = v1558.size.height;
      [v1248 extent];
      v1619.origin.x = v1003;
      v1619.origin.y = v1004;
      v1619.size.width = v1005;
      v1619.size.height = v1006;
      v1559.origin.x = v999;
      v1559.origin.y = v1000;
      v1559.size.width = v1001;
      v1559.size.height = v1002;
      v1560 = CGRectUnion(v1559, v1619);
      v1007 = v1560.origin.x;
      v1008 = v1560.origin.y;
      v1009 = v1560.size.width;
      v1010 = v1560.size.height;
      v1378[0] = v995;
      v1378[1] = v1248;
      v1378[2] = v996;
      v1378[3] = v997;
      v1011 = [MEMORY[0x277CBEA60] arrayWithObjects:v1378 count:4];
      v1268 = [v998 applyWithExtent:&unk_28492E670 roiCallback:v1011 arguments:{v1007, v1008, v1009, v1010}];

      v1012 = [MEMORY[0x277CBF788] vectorWithX:8.0 Y:(v1184 + ((1.0 - v1184) * 0.75)) Z:1.0 W:(*&v958 * 0.6)];

      v1282 = v1012;
      v1013 = [MEMORY[0x277CBF788] vectorWithX:4.0 Y:r1d Z:v1336 W:0.0];

      v1281 = v1013;
      v1014 = [V8LNRKernels kernelWithName:@"smoothDSharpen"];

      [v1268 extent];
      v1562 = CGRectInset(v1561, -16.0, -16.0);
      v1015 = v1562.origin.x;
      v1016 = v1562.origin.y;
      v1017 = v1562.size.width;
      v1018 = v1562.size.height;
      [v1248 extent];
      v1620.origin.x = v1019;
      v1620.origin.y = v1020;
      v1620.size.width = v1021;
      v1620.size.height = v1022;
      v1563.origin.x = v1015;
      v1563.origin.y = v1016;
      v1563.size.width = v1017;
      v1563.size.height = v1018;
      v1564 = CGRectUnion(v1563, v1620);
      v1023 = v1564.origin.x;
      v1024 = v1564.origin.y;
      v1025 = v1564.size.width;
      v1026 = v1564.size.height;
      v1377[0] = v1268;
      v1377[1] = v1248;
      v1377[2] = v1282;
      v1377[3] = v1281;
      v1027 = [MEMORY[0x277CBEA60] arrayWithObjects:v1377 count:4];
      v1028 = [v1014 applyWithExtent:&unk_28492E690 roiCallback:v1027 arguments:{v1023, v1024, v1025, v1026}];

      v1265 = v1028;
      *&v1029 = v1364;
      if (v1364 <= 0.0)
      {
        v1262 = 0;
        v1036 = v1014;
      }

      else
      {
        v1029 = [V8LNRKernels kernelWithName:@"FGN", v1029];

        [v1275 extent];
        v1566 = CGRectInset(v1565, -2.0, -2.0);
        v1031 = v1566.origin.x;
        v1032 = v1566.origin.y;
        v1033 = v1566.size.width;
        v1034 = v1566.size.height;
        v1376 = v1275;
        v1035 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1376 count:1];
        v1262 = [v1029 applyWithExtent:&unk_28492E6B0 roiCallback:v1035 arguments:{v1031, v1032, v1033, v1034}];

        v1036 = v1029;
      }

      v1057 = [V8LNRKernels kernelWithName:@"expandPlusDThruG3"];

      [v1275 extent];
      r1e = v1083;
      v1337 = v1084;
      v1333 = v1085;
      v1331 = v1086;
      [v1028 extent];
      v1088 = v1087;
      v1090 = v1089;
      v1092 = v1091;
      v1094 = v1093;
      [v1248 extent];
      v1096 = v1095;
      v1098 = v1097;
      v1100 = v1099;
      v1102 = v1101;
      [v1220 extent];
      v1367 = v1368;
      v1579 = CGRectApplyAffineTransform(v1578, &v1367);
      v1624 = CGRectInset(v1579, -1.0, -1.0);
      v1580.origin.x = v1096;
      v1580.origin.y = v1098;
      v1580.size.width = v1100;
      v1580.size.height = v1102;
      v1625 = CGRectUnion(v1580, v1624);
      v1581.origin.x = v1088;
      v1581.origin.y = v1090;
      v1581.size.width = v1092;
      v1581.size.height = v1094;
      v1626 = CGRectUnion(v1581, v1625);
      v1582.origin.x = r1e;
      v1582.origin.y = v1337;
      v1582.size.width = v1333;
      v1582.size.height = v1331;
      v1583 = CGRectUnion(v1582, v1626);
      v1103 = v1583.origin.x;
      v1104 = v1583.origin.y;
      v1105 = v1583.size.width;
      v1106 = v1583.size.height;
      v1375[0] = v1220;
      v1375[1] = v1275;
      v1375[2] = v1028;
      v1375[3] = v1248;
      v1078 = [MEMORY[0x277CBF788] vectorWithX:v1353 Y:v1183 Z:(1.0 - v1226) W:1.0];
      v1375[4] = v1078;
      v1079 = [MEMORY[0x277CBF788] vectorWithX:(v1182 * 0.004) Y:(v1182 * 0.012) Z:(v1182 * 0.008) W:v1348];
      v1375[5] = v1079;
      v1080 = [MEMORY[0x277CBF788] vectorWithX:v1172 Y:v1217 Z:0.0 W:0.0];
      v1375[6] = v1080;
      v1081 = [MEMORY[0x277CBEA60] arrayWithObjects:v1375 count:7];
      v1082 = [v1057 applyWithExtent:&unk_28492E6D0 roiCallback:v1081 arguments:{v1103, v1104, v1105, v1106}];
    }

    v1107 = v1082;
    v1227 = v1107;
    if (v1364 > 0.0 && v1364 >= 0.001 && v1262)
    {
      v1108 = [V8LNRKernels kernelWithName:@"addFGN"];

      [v1227 extent];
      v1110 = v1109;
      v1112 = v1111;
      v1114 = v1113;
      v1116 = v1115;
      [v1262 extent];
      v1627.origin.x = v1117;
      v1627.origin.y = v1118;
      v1627.size.width = v1119;
      v1627.size.height = v1120;
      v1584.origin.x = v1110;
      v1584.origin.y = v1112;
      v1584.size.width = v1114;
      v1584.size.height = v1116;
      v1585 = CGRectUnion(v1584, v1627);
      v1121 = v1585.origin.x;
      v1122 = v1585.origin.y;
      v1123 = v1585.size.width;
      v1124 = v1585.size.height;
      v1371[0] = v1227;
      v1371[1] = v1262;
      v1371[2] = v1248;
      *&v1585.origin.x = v1364;
      v1125 = [MEMORY[0x277CCABB0] numberWithFloat:v1585.origin.x];
      v1371[3] = v1125;
      v1126 = [MEMORY[0x277CBEA60] arrayWithObjects:v1371 count:4];
      v1127 = [v1108 applyWithExtent:&unk_28492E750 roiCallback:v1126 arguments:{v1121, v1122, v1123, v1124}];

      v1218 = v1127;
      v1128 = v1108;
    }

    else
    {
      v1128 = v1057;
      v1218 = v1107;
    }

    v391 = [V8LNRKernels kernelWithName:@"YAndRGBGather"];

    [v1218 extent];
    v1130 = v1129;
    v1132 = v1131;
    v1134 = v1133;
    v1136 = v1135;
    [v1269 extent];
    v1628.origin.x = v1137;
    v1628.origin.y = v1138;
    v1628.size.width = v1139;
    v1628.size.height = v1140;
    v1586.origin.x = v1130;
    v1586.origin.y = v1132;
    v1586.size.width = v1134;
    v1586.size.height = v1136;
    v1587 = CGRectUnion(v1586, v1628);
    v1141 = v1587.origin.x;
    v1142 = v1587.origin.y;
    v1143 = v1587.size.width;
    v1144 = v1587.size.height;
    [height extent];
    v1629.origin.x = v1145;
    v1629.origin.y = v1146;
    v1629.size.width = v1147;
    v1629.size.height = v1148;
    v1588.origin.x = v1141;
    v1588.origin.y = v1142;
    v1588.size.width = v1143;
    v1588.size.height = v1144;
    v1589 = CGRectUnion(v1588, v1629);
    v1149 = v1589.origin.x;
    v1150 = v1589.origin.y;
    v1151 = v1589.size.width;
    v1152 = v1589.size.height;
    v1370[0] = v1218;
    v1370[1] = v1269;
    v1370[2] = height;
    v1370[3] = v1263;
    v1370[4] = selfCopy->inputLumFactors;
    v1153 = [MEMORY[0x277CBEA60] arrayWithObjects:v1370 count:5];
    v1154 = [v391 applyWithExtent:&unk_28492E770 roiCallback:v1153 arguments:{v1149, v1150, v1151, v1152}];
    v392 = v1218;
    v1168 = [(RAWReduceNoise *)selfCopy image:v1154 croppedTo:v1171, v1170, v1169, v1168];
  }

  return v1168;
}

@end