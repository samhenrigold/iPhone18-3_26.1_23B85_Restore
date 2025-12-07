@interface CIPageCurlTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPageCurlTransition

- (id)outputImage
{
  v135 = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputExtent CGRectValue];
  IsEmpty = CGRectIsEmpty(v137);
  if (IsEmpty)
  {
    v5 = ci_logger_filter(IsEmpty, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = [objc_opt_class() description];
      _os_log_impl(&dword_19CC36000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: inputExtent is nil or empty.\n", &buf, 0xCu);
    }
  }

  [(NSNumber *)self->inputAngle doubleValue];
  v7 = v6;
  [(NSNumber *)self->inputTime doubleValue];
  v127 = fmax(v8, 0.0);
  [(NSNumber *)self->inputRadius doubleValue];
  v10 = fmax(v9, 0.01);
  [(NSNumber *)self->inputRadius doubleValue];
  v114 = fmax(v11, 0.0);
  [(CIImage *)self->inputImage extent];
  inputBacksideImage = self->inputBacksideImage;
  v115 = v14;
  v117 = v13;
  r1_16 = v16;
  r1_24 = v15;
  if (inputBacksideImage)
  {
    inputImage = [(CIImage *)inputBacksideImage imageByCroppingToRect:?];
  }

  else
  {
    inputImage = self->inputImage;
  }

  [(CIImage *)self->inputShadingImage extent];
  v18 = [CIVector vectorWithCGRect:?];
  [(CIVector *)self->inputExtent X];
  v20 = v19;
  [(CIVector *)self->inputExtent Y];
  v22 = v21;
  [(CIVector *)self->inputExtent Z];
  v24 = v20 + v23;
  [(CIVector *)self->inputExtent W];
  v123 = v22 + v25;
  [(CIVector *)self->inputExtent Z];
  v125 = v20 + v26 * 0.5;
  [(CIVector *)self->inputExtent W];
  v28 = v22 + v27 * 0.5;
  v29 = __sincos_stret(v7);
  v30 = __sincos_stret(v7 + v7);
  v31 = -(v29.__sinval * v22);
  v32 = v31 - v20 * v29.__cosval;
  v33 = v31 - v24 * v29.__cosval;
  v34 = fmin(v32, v33);
  v35 = fmax(v32, v33);
  v36 = -(v29.__sinval * v123);
  v37 = v36 - v20 * v29.__cosval;
  v38 = fmin(v34, v37);
  v39 = v36 - v24 * v29.__cosval;
  v40 = fmax(fmax(v35, v37), v39);
  v41 = -(v40 - v127 * (v114 + v40 - fmin(v38, v39)));
  v42 = v29.__sinval * v125 - v29.__cosval * v28;
  v43 = -v29.__sinval / v10;
  v44 = v41 / v10;
  v122 = -v29.__cosval / v10;
  v124 = v41 / v10;
  v45 = -(v29.__cosval * v10);
  v46 = -(v29.__sinval * v10);
  v47 = v29.__sinval * v42 + v29.__cosval * v41;
  v48 = v42;
  v49 = v29.__sinval * v41 - v29.__cosval * v42;
  v126 = v45;
  v50 = v47 + v45 * 0.5 * 3.14159265;
  v51 = v49 + v46 * 0.5 * 3.14159265;
  v128 = v49;
  v104 = v30.__sinval * v51 + v30.__cosval * v50;
  v105 = v51;
  r1a = *MEMORY[0x1E695F050];
  r1_8 = v43;
  v98 = *(MEMORY[0x1E695F050] + 8);
  v52 = *(MEMORY[0x1E695F050] + 24);
  v93 = *(MEMORY[0x1E695F050] + 16);
  buf.a = v122;
  buf.b = -v29.__sinval;
  buf.c = v43;
  buf.d = v29.__cosval;
  v53 = v43;
  buf.tx = v44;
  buf.ty = v48;
  v54 = v48;
  v119 = v48;
  v120 = v46;
  v131.a = v45;
  v131.b = v46;
  v55 = v46;
  v131.c = -v29.__sinval;
  v131.d = v29.__cosval;
  v107 = v50;
  v102 = v30.__sinval * v50 - v30.__cosval * v51;
  v131.tx = v47;
  v121 = v47;
  v131.ty = v49;
  v136.x = v117;
  v136.y = v115;
  *&v149.origin.x = pageCurlMapInverse(v136, &buf, &v131).n128_u64[0];
  v149.origin.y = v56;
  v149.size.width = 0.0;
  v149.size.height = 0.0;
  v138.origin.x = r1a;
  v138.size.width = v93;
  v138.origin.y = v98;
  v138.size.height = v52;
  v139 = CGRectUnion(v138, v149);
  y = v139.origin.y;
  x = v139.origin.x;
  height = v139.size.height;
  width = v139.size.width;
  buf.a = v122;
  buf.b = -v29.__sinval;
  v139.origin.y = v115 + r1_16;
  buf.c = v53;
  buf.d = v29.__cosval;
  buf.tx = v124;
  buf.ty = v54;
  v131.a = v126;
  v131.b = v55;
  v131.c = -v29.__sinval;
  v131.d = v29.__cosval;
  v131.tx = v47;
  v131.ty = v128;
  v139.origin.x = v117;
  *&v150.origin.x = pageCurlMapInverse(v139.origin, &buf, &v131).n128_u64[0];
  v150.origin.y = v57;
  v150.size.width = 0.0;
  v150.size.height = 0.0;
  v140.origin.y = y;
  v140.origin.x = x;
  v140.size.height = height;
  v140.size.width = width;
  v141 = CGRectUnion(v140, v150);
  v95 = v141.origin.y;
  v100 = v141.origin.x;
  v86 = v141.size.height;
  v90 = v141.size.width;
  buf.a = v122;
  buf.b = -v29.__sinval;
  v141.origin.x = v117 + r1_24;
  buf.c = r1_8;
  buf.d = v29.__cosval;
  buf.tx = v124;
  buf.ty = v119;
  v131.a = v126;
  v131.b = v120;
  v131.c = -v29.__sinval;
  v131.d = v29.__cosval;
  v131.tx = v47;
  v131.ty = v128;
  v141.origin.y = v115;
  *&v151.origin.x = pageCurlMapInverse(v141.origin, &buf, &v131).n128_u64[0];
  v151.origin.y = v58;
  v151.size.width = 0.0;
  v151.size.height = 0.0;
  v142.origin.y = v95;
  v142.origin.x = v100;
  v142.size.height = v86;
  v142.size.width = v90;
  v143 = CGRectUnion(v142, v151);
  v96 = v143.origin.y;
  v101 = v143.origin.x;
  v87 = v143.size.height;
  v91 = v143.size.width;
  buf.a = v122;
  buf.b = -v29.__sinval;
  buf.c = r1_8;
  buf.d = v29.__cosval;
  buf.tx = v124;
  buf.ty = v119;
  v131.a = v126;
  v131.b = v120;
  v131.c = -v29.__sinval;
  v131.d = v29.__cosval;
  v131.tx = v47;
  v131.ty = v128;
  v143.origin.x = v117 + r1_24;
  v143.origin.y = v115 + r1_16;
  *&v152.origin.x = pageCurlMapInverse(v143.origin, &buf, &v131).n128_u64[0];
  v152.origin.y = v59;
  v152.size.width = 0.0;
  v152.size.height = 0.0;
  v144.origin.y = v96;
  v144.origin.x = v101;
  v144.size.height = v87;
  v144.size.width = v91;
  v145 = CGRectUnion(v144, v152);
  v60 = v145.origin.x;
  v61 = v145.origin.y;
  v62 = v145.size.width;
  v63 = v145.size.height;
  v131.a = v122;
  r1 = -v29.__sinval;
  v131.b = -v29.__sinval;
  v131.c = r1_8;
  v131.d = v29.__cosval;
  v131.tx = v124;
  v131.ty = v119;
  v145.origin.y = v115;
  v145.origin.x = v117;
  v145.size.height = r1_16;
  v145.size.width = r1_24;
  v64 = CriticalPointsDOD(v145, &v131, &buf);
  if (v64 >= 1)
  {
    v65 = v64;
    p_b = &buf.b;
    do
    {
      v153.origin.x = *(p_b - 1);
      v153.origin.y = *p_b;
      v153.size.width = 0.0;
      v153.size.height = 0.0;
      v146.origin.x = v60;
      v146.origin.y = v61;
      v146.size.width = v62;
      v146.size.height = v63;
      v147 = CGRectUnion(v146, v153);
      v60 = v147.origin.x;
      v61 = v147.origin.y;
      v62 = v147.size.width;
      v63 = v147.size.height;
      p_b += 2;
      --v65;
    }

    while (v65);
  }

  r1_24a = -v30.__cosval;
  v116 = v105 + v102;
  v118 = v107 + v104;
  v106 = -v30.__sinval;
  [(CIImage *)self->inputShadingImage extent];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  [(CIImage *)self->inputImage extent];
  v88 = v75;
  v92 = v76;
  v97 = v77;
  v103 = v78;
  v148.origin.x = v68;
  v148.origin.y = v70;
  v148.size.width = v72;
  v148.size.height = v74;
  if (CGRectIsEmpty(v148))
  {
    _CIPageCurlTransNoEmap = [(CIPageCurlTransition *)self _CIPageCurlTransNoEmap];
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __35__CIPageCurlTransition_outputImage__block_invoke;
    v130[3] = &__block_descriptor_240_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    *&v130[4] = v122;
    *&v130[5] = -v29.__sinval;
    *&v130[6] = r1_8;
    v130[7] = *&v29.__cosval;
    *&v130[8] = v124;
    *&v130[9] = v119;
    *&v130[10] = v126;
    *&v130[11] = v120;
    *&v130[12] = -v29.__sinval;
    v130[13] = *&v29.__cosval;
    *&v130[14] = v121;
    *&v130[15] = v128;
    *&v130[16] = -v30.__cosval;
    *&v130[17] = -v30.__sinval;
    *&v130[18] = -v30.__sinval;
    v130[19] = *&v30.__cosval;
    *&v130[20] = v107 + v104;
    *&v130[21] = v116;
    v130[22] = v88;
    v130[23] = v92;
    v130[24] = v97;
    v130[25] = v103;
    *&v130[26] = v68;
    *&v130[27] = v70;
    *&v130[28] = v72;
    *&v130[29] = v74;
    v133[0] = self->inputImage;
    v133[1] = inputImage;
    v133[2] = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:? Z:? W:?];
    v133[3] = [CIVector vectorWithX:v124 Y:v119];
    v133[4] = [CIVector vectorWithX:v126 Y:r1 Z:v120 W:v29.__cosval];
    v133[5] = [CIVector vectorWithX:v121 Y:v128];
    v133[6] = [CIVector vectorWithX:r1_24a Y:v106 Z:v106 W:v30.__cosval];
    v133[7] = [CIVector vectorWithX:v118 Y:v116];
    v133[8] = [MEMORY[0x1E696AD98] numberWithDouble:v114];
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:9];
    v81 = v130;
    v82 = _CIPageCurlTransNoEmap;
  }

  else
  {
    _CIPageCurlTransition = [(CIPageCurlTransition *)self _CIPageCurlTransition];
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = __35__CIPageCurlTransition_outputImage__block_invoke_2;
    v129[3] = &__block_descriptor_240_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    *&v129[4] = v122;
    *&v129[5] = -v29.__sinval;
    *&v129[6] = r1_8;
    v129[7] = *&v29.__cosval;
    *&v129[8] = v124;
    *&v129[9] = v119;
    *&v129[10] = v126;
    *&v129[11] = v120;
    *&v129[12] = -v29.__sinval;
    v129[13] = *&v29.__cosval;
    *&v129[14] = v121;
    *&v129[15] = v128;
    *&v129[16] = -v30.__cosval;
    *&v129[17] = -v30.__sinval;
    *&v129[18] = -v30.__sinval;
    v129[19] = *&v30.__cosval;
    *&v129[20] = v107 + v104;
    *&v129[21] = v116;
    v129[22] = v88;
    v129[23] = v92;
    v129[24] = v97;
    v129[25] = v103;
    *&v129[26] = v68;
    *&v129[27] = v70;
    *&v129[28] = v72;
    *&v129[29] = v74;
    v132[0] = self->inputImage;
    v132[1] = inputImage;
    v132[2] = self->inputShadingImage;
    v132[3] = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:? Z:? W:?];
    v132[4] = [CIVector vectorWithX:v124 Y:v119];
    v132[5] = [CIVector vectorWithX:v126 Y:r1 Z:v120 W:v29.__cosval];
    v132[6] = [CIVector vectorWithX:v121 Y:v128];
    v132[7] = [CIVector vectorWithX:r1_24a Y:v106 Z:v106 W:v30.__cosval];
    v132[8] = [CIVector vectorWithX:v118 Y:v116];
    v132[9] = [MEMORY[0x1E696AD98] numberWithDouble:v114];
    v132[10] = v18;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:11];
    v81 = v129;
    v82 = _CIPageCurlTransition;
  }

  result = [v82 applyWithExtent:v81 roiCallback:v80 arguments:{v60, v61, v62, v63}];
  if (result)
  {
    if (self->inputTargetImage)
    {
      return [[CIFilter valueForKey:@"CISourceOverCompositing" filterWithName:result keysAndValues:@"inputBackgroundImage", self->inputTargetImage, 0], "valueForKey:", @"outputImage"];
    }
  }

  return result;
}

void __35__CIPageCurlTransition_outputImage__block_invoke(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = *(a1 + 48);
  v13[0] = *(a1 + 32);
  v13[1] = v6;
  v7 = *(a1 + 80);
  v13[2] = *(a1 + 64);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v10 = *(a1 + 144);
  v11[0] = *(a1 + 128);
  v11[1] = v10;
  v11[2] = *(a1 + 160);
  pageCurlROI(a2, v13, v12, v11, a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], a6.n128_f64[0], *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200));
}

void __35__CIPageCurlTransition_outputImage__block_invoke_2(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 48);
  v13[0] = *(a1 + 32);
  v13[1] = v6;
  v7 = *(a1 + 80);
  v13[2] = *(a1 + 64);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v10 = *(a1 + 144);
  v11[0] = *(a1 + 128);
  v11[1] = v10;
  v11[2] = *(a1 + 160);
  pageCurlROI(a2, v13, v12, v11, a3, a4, a5, a6, *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200));
}

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryTransition";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"9";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputRadius";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084448;
  v6[1] = &unk_1F1084448;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084458;
  v6[3] = &unk_1F1084468;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeDistance";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[4] = @"inputExtent";
  v3[1] = @"CIAttributeDefault";
  v4[0] = @"CIAttributeTypeRectangle";
  v3[0] = @"CIAttributeType";
  v4[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

@end