@interface RAWConvert
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)customAttributes;
- (CCameraProfile)cameraProfile;
- (CMatrix)matrixFromArray:(SEL)array rowCount:(id)count columnCount:(unint64_t)columnCount;
- (CWhitePoint)neutralWhitePointWithProfile:(void *)profile;
- (id)blendFactor;
- (id)customAttributes;
- (id)inputNeutralXY;
- (id)outputImage;
- (id)outputMatrix;
- (void)setInputNeutral:(id)neutral;
@end

@implementation RAWConvert

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"inputNeutral"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___RAWConvert;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (void)setInputNeutral:(id)neutral
{
  neutralCopy = neutral;
  if (self->inputNeutral != neutralCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || ![(NSArray *)neutralCopy isEqualToArray:self->inputNeutral])
    {
      [(RAWConvert *)self willChangeValueForKey:@"inputNeutral"];
      objc_storeStrong(&self->inputNeutral, neutral);
      [(RAWConvert *)self didChangeValueForKey:@"inputNeutral"];
    }
  }
}

+ (id)customAttributes
{
  v111[19] = *MEMORY[0x277D85DE8];
  v110[0] = @"inputColorSpace";
  v108 = *MEMORY[0x277CBF798];
  v2 = v108;
  v109 = sub_2338F2BB4();
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
  v111[0] = v72;
  v110[1] = @"inputNeutral";
  v106[0] = *MEMORY[0x277CBF790];
  v3 = v106[0];
  v4 = objc_opt_class();
  v71 = NSStringFromClass(v4);
  v107[0] = v71;
  v106[1] = v2;
  null = [MEMORY[0x277CBEB68] null];
  v107[1] = null;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
  v111[1] = v69;
  v110[2] = @"inputRange";
  v103[0] = v3;
  v5 = objc_opt_class();
  v67 = NSStringFromClass(v5);
  v104[0] = v67;
  v104[1] = &unk_284958D18;
  v6 = *MEMORY[0x277CBF7F0];
  v103[1] = v2;
  v103[2] = v6;
  v105 = *MEMORY[0x277CBF850];
  v7 = v105;
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:3];
  v111[2] = v68;
  v110[3] = @"inputFactor";
  v101[0] = v3;
  v8 = objc_opt_class();
  v65 = NSStringFromClass(v8);
  v102[0] = v65;
  v102[1] = &unk_284958D18;
  v101[1] = v2;
  v101[2] = v6;
  v102[2] = v7;
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];
  v111[3] = v66;
  v110[4] = @"inputCalibrationIlluminant1";
  v99[0] = v3;
  v9 = objc_opt_class();
  v63 = NSStringFromClass(v9);
  v100[0] = v63;
  v100[1] = v7;
  v99[1] = v6;
  v99[2] = v2;
  v100[2] = &unk_2849587F8;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:3];
  v111[4] = v64;
  v110[5] = @"inputCalibrationIlluminant2";
  v97[0] = v3;
  v10 = objc_opt_class();
  v61 = NSStringFromClass(v10);
  v98[0] = v61;
  v98[1] = v7;
  v97[1] = v6;
  v97[2] = v2;
  v98[2] = &unk_284958810;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:3];
  v111[5] = v62;
  v110[6] = @"inputXYZtoCamera1";
  v95[0] = v3;
  v11 = objc_opt_class();
  v58 = NSStringFromClass(v11);
  v96[0] = v58;
  v95[1] = v2;
  null2 = [MEMORY[0x277CBEB68] null];
  v96[1] = null2;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];
  v111[6] = v60;
  v110[7] = @"inputXYZtoCamera2";
  v93[0] = v3;
  v12 = objc_opt_class();
  v55 = NSStringFromClass(v12);
  v94[0] = v55;
  v93[1] = v2;
  null3 = [MEMORY[0x277CBEB68] null];
  v94[1] = null3;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
  v111[7] = v57;
  v110[8] = @"inputCameraCalibration1";
  v91[0] = v3;
  v13 = objc_opt_class();
  v52 = NSStringFromClass(v13);
  v92[0] = v52;
  v91[1] = v2;
  null4 = [MEMORY[0x277CBEB68] null];
  v92[1] = null4;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
  v111[8] = v54;
  v110[9] = @"inputCameraCalibration2";
  v89[0] = v3;
  v14 = objc_opt_class();
  v49 = NSStringFromClass(v14);
  v90[0] = v49;
  v89[1] = v2;
  null5 = [MEMORY[0x277CBEB68] null];
  v90[1] = null5;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  v111[9] = v51;
  v110[10] = @"inputReduction1";
  v87[0] = v3;
  v15 = objc_opt_class();
  v46 = NSStringFromClass(v15);
  v88[0] = v46;
  v87[1] = v2;
  null6 = [MEMORY[0x277CBEB68] null];
  v88[1] = null6;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
  v111[10] = v48;
  v110[11] = @"inputReduction2";
  v85[0] = v3;
  v16 = objc_opt_class();
  v43 = NSStringFromClass(v16);
  v86[0] = v43;
  v85[1] = v2;
  null7 = [MEMORY[0x277CBEB68] null];
  v86[1] = null7;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v111[11] = v45;
  v110[12] = @"inputForwardMatrix1";
  v83[0] = v3;
  v17 = objc_opt_class();
  v40 = NSStringFromClass(v17);
  v83[1] = v2;
  v84[0] = v40;
  null8 = [MEMORY[0x277CBEB68] null];
  v84[1] = null8;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  v111[12] = v42;
  v110[13] = @"inputForwardMatrix2";
  v81[0] = v3;
  v18 = objc_opt_class();
  v37 = NSStringFromClass(v18);
  v81[1] = v2;
  v82[0] = v37;
  null9 = [MEMORY[0x277CBEB68] null];
  v82[1] = null9;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
  v111[13] = v39;
  v110[14] = @"inputShouldUseForwardMatrix";
  v79[0] = v3;
  v19 = objc_opt_class();
  v36 = NSStringFromClass(v19);
  v79[1] = v2;
  v80[0] = v36;
  null10 = [MEMORY[0x277CBEB68] null];
  v80[1] = null10;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  v111[14] = v21;
  v110[15] = @"inputShouldRecoverHighlights";
  v77[0] = v3;
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v77[1] = v2;
  v24 = MEMORY[0x277CBEC28];
  v78[0] = v23;
  v78[1] = MEMORY[0x277CBEC28];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  v111[15] = v25;
  v110[16] = @"inputShouldLinearize";
  v75[0] = v3;
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v76[0] = v27;
  v76[1] = v24;
  v28 = *MEMORY[0x277CBF7A0];
  v75[1] = v2;
  v75[2] = v28;
  v76[2] = @"ShouldLinearize";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
  v111[16] = v29;
  v111[17] = v24;
  v110[17] = @"kCIRAWFilterDoesClip";
  v110[18] = @"inputBlacks";
  v73[0] = v3;
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v73[1] = v2;
  v74[0] = v31;
  null11 = [MEMORY[0x277CBEB68] null];
  v74[1] = null11;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v111[18] = v33;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:19];

  return v35;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (CMatrix)matrixFromArray:(SEL)array rowCount:(id)count columnCount:(unint64_t)columnCount
{
  countCopy = count;
  if (countCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v10 = [countCopy count], a6 <= 0xA) && columnCount <= 0xA && v10)
  {
    sub_2337DF9C8(retstr, columnCount, a6);
    if (columnCount)
    {
      v11 = 0;
      v12 = 0;
      while (!a6)
      {
LABEL_14:
        ++v12;
        v11 += a6;
        if (v12 >= columnCount)
        {
          goto LABEL_17;
        }
      }

      v13 = 0;
      v14 = v11;
      while (v14 < [countCopy count])
      {
        v15 = [countCopy objectAtIndexedSubscript:v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 doubleValue];
          v17 = v16;
          v20[0] = sub_2337DFCEC(retstr, v12);
          v20[1] = v18;
          *sub_2337DFD6C(v20, v13) = v17;
        }

        ++v13;
        ++v14;
        if (v13 >= a6)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    sub_2337DFDF8(retstr);
  }

LABEL_17:

  return result;
}

- (id)inputNeutralXY
{
  v10[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_cameraProfile(self, a2);
  [(RAWConvert *)self neutralWhitePointWithProfile:v9];
  v4 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v10[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  sub_2337D35EC(v9);

  return v7;
}

- (id)outputMatrix
{
  gamma[3] = *MEMORY[0x277D85DE8];
  objc_msgSend_cameraProfile(self, a2);
  [(RAWConvert *)self neutralWhitePointWithProfile:v69];
  v68.f64[0] = v3;
  v68.f64[1] = v4;
  sub_2337DF9CC(&v65, 3u, 3u, 0.6097, v5, v6, v7, v8, v9, 0x3FCA474538EF34D7);
  v10 = self->inputColorSpace;
  if (v10 != sub_2338F2BB4())
  {
    gamma[2] = 1.0;
    *gamma = xmmword_23390ABE8;
    *whitePoint = xmmword_23390AC00;
    whitePoint[2] = 0.824899971;
    blackPoint = 0.0;
    v92 = 0;
    v93 = 0;
    v86 = 0;
    v88 = 0u;
    v85 = 0u;
    matrix = 1.0;
    v87 = 0x3FF0000000000000;
    v89 = 0;
    v90 = 0x3FF0000000000000;
    v79 = 0;
    v81 = 0u;
    v78 = 0u;
    v77 = 0x3FF0000000000000;
    v80 = 0x3FF0000000000000;
    v82 = 0;
    v83 = 0x3FF0000000000000;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v11 = CGColorSpaceCreateCalibratedRGB(whitePoint, &blackPoint, gamma, &matrix);
    MEMORY[0x2383AB720](v11, 0);
    CGColorTransformConvertColorComponents();
    CGColorTransformConvertColorComponents();
    CGColorTransformConvertColorComponents();
    CGColorSpaceRelease(v11);
    CGColorTransformRelease();
    sub_2337DF9CC(&v63, 3u, 3u, *&v72 * 0.9642, v12, v13, v14, v15, v16, COERCE__INT64(*(&v73 + 1) * 0.9642));
    sub_2337E004C(&v65, &v63);
    if (*(&v63 + 1))
    {
      v64 = *(&v63 + 1);
      operator delete(*(&v63 + 1));
    }
  }

  sub_2337DF874(&v60, &v65);
  sub_23381A514(v69, &v68, &v60, &matrix);
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  sub_2337DF9CC(&v77, 3u, 1u, 1.0, v17, v18, v19, v20, v21, 0x3FF0000000000000);
  sub_2337E0720(&matrix, &v63);
  sub_2337E032C(&v63, &v77, &v72);
  if (*(&v63 + 1))
  {
    v64 = *(&v63 + 1);
    operator delete(*(&v63 + 1));
  }

  v22 = sub_2337E0EE4(&v72);
  *&v63 = sub_2337DFCEC(&v72, 0);
  *(&v63 + 1) = v23;
  v24 = *sub_2337DFD6C(&v63, 0);
  v25 = sub_2337E0EE4(&v72);
  *&v63 = sub_2337DFCEC(&v72, 1u);
  *(&v63 + 1) = v26;
  v27 = *sub_2337DFD6C(&v63, 0);
  v28 = sub_2337E0EE4(&v72);
  *&v63 = sub_2337DFCEC(&v72, 2u);
  *(&v63 + 1) = v29;
  v30 = *sub_2337DFD6C(&v63, 0);
  v70[0] = @"inputRVector";
  v31 = MEMORY[0x277CBF788];
  *&v63 = sub_2337DFCEC(&matrix, 0);
  *(&v63 + 1) = v32;
  v33 = *sub_2337DFD6C(&v63, 0);
  *&gamma[0] = sub_2337DFCEC(&matrix, 0);
  gamma[1] = v34;
  v35 = *sub_2337DFD6C(gamma, 1u);
  *&whitePoint[0] = sub_2337DFCEC(&matrix, 0);
  whitePoint[1] = v36;
  v37 = [v31 vectorWithX:v33 Y:v35 Z:{*sub_2337DFD6C(whitePoint, 2u)}];
  v71[0] = v37;
  v70[1] = @"inputGVector";
  v38 = MEMORY[0x277CBF788];
  *&blackPoint = sub_2337DFCEC(&matrix, 1u);
  v92 = v39;
  v40 = *sub_2337DFD6C(&blackPoint, 0);
  v59[0] = sub_2337DFCEC(&matrix, 1u);
  v59[1] = v41;
  v42 = *sub_2337DFD6C(v59, 1u);
  v58[0] = sub_2337DFCEC(&matrix, 1u);
  v58[1] = v43;
  v44 = [v38 vectorWithX:v40 Y:v42 Z:{*sub_2337DFD6C(v58, 2u)}];
  v71[1] = v44;
  v70[2] = @"inputBVector";
  v45 = MEMORY[0x277CBF788];
  v57[0] = sub_2337DFCEC(&matrix, 2u);
  v57[1] = v46;
  v47 = *sub_2337DFD6C(v57, 0);
  v56[0] = sub_2337DFCEC(&matrix, 2u);
  v56[1] = v48;
  v49 = *sub_2337DFD6C(v56, 1u);
  v55[0] = sub_2337DFCEC(&matrix, 2u);
  v55[1] = v50;
  v51 = [v45 vectorWithX:v47 Y:v49 Z:{*sub_2337DFD6C(v55, 2u)}];
  v71[2] = v51;
  v70[3] = @"inputFactors";
  v52 = [MEMORY[0x277CBF788] vectorWithX:v22 / v24 Y:v25 / v27 Z:v28 / v30];
  v71[3] = v52;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:4];

  if (*(&v72 + 1))
  {
    *&v73 = *(&v72 + 1);
    operator delete(*(&v72 + 1));
  }

  if (v78)
  {
    *(&v78 + 1) = v78;
    operator delete(v78);
  }

  if (v85)
  {
    *(&v85 + 1) = v85;
    operator delete(v85);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  sub_2337D35EC(v69);

  return v53;
}

- (id)blendFactor
{
  objc_msgSend_cameraProfile(self, a2);
  [(RAWConvert *)self neutralWhitePointWithProfile:v8];
  v7[0] = v3;
  v7[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:{sub_23381B524(v8, v7)}];
  sub_2337D35EC(v8);

  return v5;
}

- (id)outputImage
{
  v93[3] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    outputMatrix = [(RAWConvert *)self outputMatrix];
    v4 = outputMatrix;
    if (outputMatrix)
    {
      v90 = outputMatrix;
      v5 = sub_23378E104(outputMatrix);
      v6 = v5;
      if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23371F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWConvert", &unk_233945DBE, buf, 2u);
      }

      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = sub_2338A4680;
      v91[3] = &unk_2789EE800;
      v91[4] = self;
      v88 = MEMORY[0x2383AC810](v91);
      v7 = self->inputImage;
      v89 = sub_2338F28E4();
      if ([(NSNumber *)self->inputShouldLinearize BOOLValue])
      {
        v8 = [RAWKernels kernelWithName:@"raw_srgb_to_linear"];
        v9 = [(RAWFilter *)self apply:v8 image:v7 arguments:0 inoutSpace:v89 isPremultiplied:1];

        v7 = v9;
      }

      inputBlacks = self->inputBlacks;
      null = [MEMORY[0x277CBEB68] null];
      if (inputBlacks == null || ([(CIVector *)self->inputBlacks X], v12 == 0.0) || ([(CIVector *)self->inputBlacks Y], v13 == 0.0))
      {
        v15 = 0;
      }

      else
      {
        [(CIVector *)self->inputBlacks Z];
        v15 = v14 != 0.0;
      }

      intValue = [(NSNumber *)self->inputTargetRange intValue];
      intValue2 = [(NSNumber *)self->inputRange intValue];
      if ([(NSNumber *)self->inputTargetRange intValue]<= 0 || [(NSNumber *)self->inputRange intValue]<= 0 || ([(NSNumber *)self->inputFactor floatValue], v18 <= 0.0))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v19 = intValue != intValue2 || v15;
      if (v19 == 1)
      {
        if (v15)
        {
          v20 = self->inputBlacks;
        }

        else
        {
          v20 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
        }

        v23 = v20;
        [(NSNumber *)self->inputTargetRange floatValue];
        v25 = v24;
        [(NSNumber *)self->inputRange floatValue];
        v27 = v26;
        [(NSNumber *)self->inputFactor floatValue];
        v29 = v28;
        v30 = MEMORY[0x277CBF788];
        [(CIVector *)v23 X];
        v32 = v31;
        [(CIVector *)v23 Y];
        v34 = v33;
        [(CIVector *)v23 Z];
        v35 = (v25 / (v27 * v29));
        v37 = [v30 vectorWithX:v35 * v32 / -65535.0 Y:-(v34 * v35) / 65535.0 Z:-(v36 * v35) / 65535.0 W:0.0];
        v38 = [MEMORY[0x277CBF788] vectorWithX:v35 Y:0.0 Z:0.0 W:0.0];
        v39 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:v35 Z:0.0 W:0.0];
        v40 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:v35 W:0.0];
        v41 = [(RAWFilter *)self applyMatrixToImage:v7 vectorR:v38 vectorG:v39 vectorB:v40 vectorBias:v37 inSpace:v89 outSpace:?];

        v42 = MEMORY[0x277CBF788];
        [(NSNumber *)self->inputRange floatValue];
        LODWORD(v35) = v43;
        [(NSNumber *)self->inputRange floatValue];
        v45 = v44;
        [(CIVector *)v23 X];
        v47 = v46;
        [(NSNumber *)self->inputRange floatValue];
        LODWORD(v32) = v48;
        [(NSNumber *)self->inputRange floatValue];
        LODWORD(v34) = v49;
        [(CIVector *)v23 Y];
        v51 = v50;
        [(NSNumber *)self->inputRange floatValue];
        v53 = v52;
        [(NSNumber *)self->inputRange floatValue];
        v55 = v54;
        [(CIVector *)v23 Z];
        v22 = [v42 vectorWithX:*&v35 / (v47 + v45) Y:*&v32 / (v51 + *&v34) Z:v53 / (v56 + v55) W:0.0];

        v7 = v41;
      }

      else
      {
        v22 = 0;
      }

      if ([(NSNumber *)self->inputShouldRecoverHighlights BOOLValue])
      {
        v57 = [v90 objectForKeyedSubscript:@"inputFactors"];
        [v57 X];
        v59 = v58;
        [v57 Y];
        v61 = v60;
        [v57 Z];
        v62 = v59;
        v63 = v61;
        v65 = v64;
        v66 = v62;
        v67 = v63;
        v68 = v65;
        if (v22)
        {
          [v22 X];
          v70 = v69;
          [v22 Y];
          v72 = v71;
          [v22 Z];
          v73 = v70;
          v66 = v62 * v73;
          v74 = v72;
          v67 = v63 * v74;
          *&v75 = v75;
          v68 = v65 * *&v75;
        }

        v76 = v67 * 0.9;
        if ((v67 * 0.9) > v66)
        {
          v76 = v66;
        }

        if (v76 <= v68)
        {
          v77 = v76;
        }

        else
        {
          v77 = v68;
        }

        v78 = [MEMORY[0x277CBF788] vectorWithX:v66 Y:v77 Z:v68];
        v79 = [MEMORY[0x277CBF788] vectorWithX:1.0 / v62 Y:1.0 / v63 Z:1.0 / v65];
        v80 = [RAWKernels kernelWithName:@"RAWRecoverHighlightsV2"];
        v93[0] = v57;
        v93[1] = v78;
        v93[2] = v79;
        v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:3];
        v82 = [(RAWFilter *)self apply:v80 image:v7 arguments:v81 inoutSpace:v89 isPremultiplied:1];

        v7 = v82;
      }

      v83 = [v90 objectForKeyedSubscript:@"inputRVector"];
      v84 = [v90 objectForKeyedSubscript:@"inputGVector"];
      v85 = [v90 objectForKeyedSubscript:@"inputBVector"];
      v21 = [(RAWFilter *)self applyMatrixToImage:v7 vectorR:v83 vectorG:v84 vectorB:v85 vectorBias:0 inSpace:v89 outSpace:self->inputColorSpace];

      v88[2](v88);
      v4 = v90;
    }

    else
    {
      v21 = self->inputImage;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (CCameraProfile)cameraProfile
{
  sub_233813F5C(&v9);
  [(NSArray *)self->inputXYZtoCamera1 count];
  intValue = [(NSNumber *)self->inputCalibrationIlluminant1 intValue];
  intValue2 = [(NSNumber *)self->inputCalibrationIlluminant2 intValue];
  objc_msgSend_matrixFromArray_rowCount_columnCount_(self);
  sub_2337E004C(v12, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self);
  sub_2337E004C(v13, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self);
  sub_2337E004C(v14, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self);
  sub_2337E004C(v15, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self);
  sub_2337E004C(v19, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self);
  sub_2337E004C(v20, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self);
  sub_2337E004C(v16, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  objc_msgSend_matrixFromArray_rowCount_columnCount_(self);
  sub_2337E004C(v17, v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  intValue3 = [(NSNumber *)self->inputShouldUseForwardMatrix intValue];
  sub_2338A4E4C(retstr, &v9);
  return sub_2337D35EC(&v9);
}

- (CWhitePoint)neutralWhitePointWithProfile:(void *)profile
{
  v27 = 0.0;
  v28 = 0.0;
  v5 = [(NSArray *)self->inputNeutral count];
  if (!v5)
  {
    v26 = 0.0;
    v8 = 0.0;
    goto LABEL_6;
  }

  v6 = [(NSArray *)self->inputNeutral objectAtIndexedSubscript:0];
  [v6 doubleValue];
  v8 = v7;

  v26 = v8;
  if (v5 == 1)
  {
LABEL_6:
    v25 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    goto LABEL_7;
  }

  v9 = [(NSArray *)self->inputNeutral objectAtIndexedSubscript:1];
  [v9 doubleValue];
  v11 = v10;

  v25 = v11;
  v12 = 0.0;
  if (v5 >= 3)
  {
    v13 = [(NSArray *)self->inputNeutral objectAtIndexedSubscript:2];
    [v13 doubleValue];
    v12 = v14;
  }

LABEL_7:
  v24 = v12;
  v15 = v5 == 2 && v8 < 1.0;
  if (v15 && (v8 > 0.0 ? (v16 = v11 < 1.0) : (v16 = 0), v16 && v11 > 0.0))
  {
    v17 = v11;
  }

  else if (v5 == 2 && v8 >= 2000.0 && v8 <= 50000.0)
  {
    sub_23381946C(&v27, v8, v11);
    v8 = v27;
    v17 = v28;
  }

  else
  {
    v17 = 0.0;
    if (v5 == 3 && v8 > 0.0 && v11 > 0.0)
    {
      v8 = 0.0;
      if (v12 > 0.0)
      {
        __p = 0;
        v22 = 0;
        v23 = 0;
        sub_2337F207C(&__p, &v26);
        sub_2337F207C(&__p, &v25);
        sub_2337F207C(&__p, &v24);
        v8 = sub_23381B95C(profile, &__p);
        v17 = v18;
        if (__p)
        {
          v22 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      v8 = 0.0;
    }
  }

  v19 = v8;
  v20 = v17;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

@end