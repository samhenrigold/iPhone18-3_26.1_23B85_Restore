@interface CIFlashTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIFlashTransition

+ (id)customAttributes
{
  v21[11] = *MEMORY[0x1E69E9840];
  v20[0] = @"CIAttributeFilterCategories";
  v19[0] = @"CICategoryTransition";
  v19[1] = @"CICategoryVideo";
  v19[2] = @"CICategoryStillImage";
  v19[3] = @"CICategoryBuiltIn";
  v21[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v21[1] = @"6";
  v20[1] = @"CIAttributeFilterAvailable_iOS";
  v20[2] = @"CIAttributeFilterAvailable_Mac";
  v21[2] = @"10.4";
  v20[3] = @"inputCenter";
  v17[0] = @"CIAttributeDefault";
  v17[1] = @"CIAttributeType";
  v18[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v18[1] = @"CIAttributeTypePosition";
  v21[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[4] = @"inputExtent";
  v15[1] = @"CIAttributeDefault";
  v16[0] = @"CIAttributeTypeRectangle";
  v15[0] = @"CIAttributeType";
  v16[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v21[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v20[5] = @"inputColor";
  v13[0] = @"CIAttributeDefault";
  v13[1] = @"CIAttributeType";
  v14[0] = [CIColor colorWithRed:1.0 green:0.8 blue:0.6];
  v14[1] = @"CIAttributeTypeColor";
  v21[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v20[6] = @"inputTime";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1083A78;
  v12[1] = &unk_1F1083A78;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1083A88;
  v12[3] = &unk_1F1083A78;
  v11[4] = @"CIAttributeType";
  v12[4] = @"CIAttributeTypeTime";
  v21[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v20[7] = @"inputMaxStriationRadius";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1083A78;
  v10[1] = &unk_1F1083A78;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1083A98;
  v10[3] = &unk_1F1083AA8;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeScalar";
  v21[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v20[8] = @"inputStriationStrength";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083A78;
  v8[1] = &unk_1F1083A78;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1083AB8;
  v8[3] = &unk_1F1083AC8;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeScalar";
  v21[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v20[9] = @"inputStriationContrast";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1083A78;
  v6[1] = &unk_1F1083A78;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083AD8;
  v6[3] = &unk_1F1083AE8;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v21[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v20[10] = @"inputFadeThreshold";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = &unk_1F1083A78;
  v4[1] = &unk_1F1083A88;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1083A78;
  v4[3] = &unk_1F1083A88;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1083AF8;
  v4[5] = @"CIAttributeTypeScalar";
  v21[10] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:11];
}

- (id)outputImage
{
  v105 = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputTargetImage)
  {
    return 0;
  }

  [(CIVector *)self->inputExtent CGRectValue];
  IsEmpty = CGRectIsEmpty(v106);
  if (IsEmpty)
  {
    v5 = ci_logger_filter(IsEmpty, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v104 = [objc_opt_class() description];
      _os_log_impl(&dword_19CC36000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: inputExtent is nil or empty.\n", buf, 0xCu);
    }
  }

  [(NSNumber *)self->inputMaxStriationRadius floatValue];
  v99 = v6;
  [(NSNumber *)self->inputStriationStrength floatValue];
  v98 = v7;
  [(NSNumber *)self->inputStriationContrast floatValue];
  v9 = v8;
  [(NSNumber *)self->inputFadeThreshold floatValue];
  v11 = v10;
  [(NSNumber *)self->inputTime floatValue];
  v13 = v12;
  [(CIVector *)self->inputCenter X];
  v15 = v14;
  [(CIVector *)self->inputCenter Y];
  v17 = v16;
  [(CIVector *)self->inputExtent X];
  v19 = v18;
  [(CIVector *)self->inputExtent X];
  v21 = v20;
  [(CIVector *)self->inputExtent Z];
  v23 = v22;
  [(CIVector *)self->inputExtent W];
  v24.f32[0] = v15;
  v25 = v17;
  v96 = v24;
  v97 = v25;
  v24.f32[1] = v25;
  v26.f32[0] = v19;
  *&v27 = v21;
  v28.f32[0] = v23 + v26.f32[0];
  *&v29 = v29 + *&v27;
  v26.i32[1] = LODWORD(v29);
  v28.i32[1] = LODWORD(v29);
  v30 = vsub_f32(__PAIR64__(v27, v26.u32[0]), v24);
  v31 = vsub_f32(__PAIR64__(v27, v28.u32[0]), v24);
  v32 = vsub_f32(v26, v24);
  v33 = vsub_f32(v28, v24);
  v34 = fmaxf(fmaxf(fmaxf(sqrtf(vaddv_f32(vmul_f32(v30, v30))), sqrtf(vaddv_f32(vmul_f32(v31, v31)))), sqrtf(vaddv_f32(vmul_f32(v32, v32)))), sqrtf(vaddv_f32(vmul_f32(v33, v33))));
  v35 = 0.0;
  if (v13 >= v11)
  {
    v35 = 1.0;
    if (v13 < 1.0)
    {
      v36 = (v13 - v11) / (1.0 - v11);
      v35 = v36;
    }
  }

  v37 = log10f(v34) + 1.0;
  if (v11 == 0.0)
  {
    v38 = v13 / 0.000001;
  }

  else
  {
    v38 = (v13 / v11);
  }

  v40 = __exp10(v38 * v37 + -1.0);
  [(CIImage *)self->inputImage extent];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  [(CIImage *)self->inputTargetImage extent];
  v113.origin.x = v49;
  v113.origin.y = v50;
  v113.size.width = v51;
  v113.size.height = v52;
  v107.origin.x = v42;
  v107.origin.y = v44;
  v107.size.width = v46;
  v107.size.height = v48;
  v108 = CGRectUnion(v107, v113);
  x = v108.origin.x;
  y = v108.origin.y;
  width = v108.size.width;
  height = v108.size.height;
  [(CIVector *)self->inputExtent CGRectValue];
  v114.origin.x = v57;
  v114.origin.y = v58;
  v114.size.width = v59;
  v114.size.height = v60;
  v109.origin.x = x;
  v109.origin.y = y;
  v109.size.width = width;
  v109.size.height = height;
  v100 = CGRectUnion(v109, v114);
  v61 = v40;
  v62 = [CIVector vectorWithX:100.0 Y:(v61 * v61) Z:1.0 / (v99 * v61) W:v35];
  v63 = [CIVector vectorWithX:(v98 * v9) Y:(1.0 - v9) * v98 * 0.5];
  _geomKernel = [(CIFlashTransition *)self _geomKernel];
  _colorKernel = [(CIFlashTransition *)self _colorKernel];
  v66 = +[CIImage noiseImage];
  v67 = MEMORY[0x1E695F040];
  v68 = *MEMORY[0x1E695F040];
  v69 = *(MEMORY[0x1E695F040] + 8);
  v70 = *(MEMORY[0x1E695F040] + 16);
  v71 = *(MEMORY[0x1E695F040] + 24);
  v102 = [CIVector vectorWithX:v96.f32[0] Y:v97];
  v72 = [_geomKernel applyWithExtent:&__block_literal_global_32 roiCallback:v66 inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v102, 1), v68, v69, v70, v71}];
  [(CIVector *)v62 Z];
  v74 = 1.0 / v73;
  v75 = v96.f32[0] - v74;
  v76 = v97 - v74;
  v77 = v74 + v74;
  v79 = v74 + v74 == 1.79769313e308 && v75 == -8.98846567e307 && v76 == -8.98846567e307;
  v80 = v74 + v74;
  if (v79)
  {
    v77 = v67[2];
    v80 = v67[3];
    v75 = *v67;
    v76 = v67[1];
  }

  [(CIImage *)self->inputImage extent];
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  [(CIImage *)self->inputTargetImage extent];
  v115.origin.x = v89;
  v115.origin.y = v90;
  v115.size.width = v91;
  v115.size.height = v92;
  v110.origin.x = v82;
  v110.origin.y = v84;
  v110.size.width = v86;
  v110.size.height = v88;
  v111 = CGRectUnion(v110, v115);
  v116.origin.x = v75;
  v116.origin.y = v76;
  v116.size.width = v77;
  v116.size.height = v80;
  v112 = CGRectUnion(v111, v116);
  inputTargetImage = self->inputTargetImage;
  v101[0] = self->inputImage;
  v101[1] = inputTargetImage;
  inputColor = self->inputColor;
  v101[2] = self->inputCenter;
  v101[3] = inputColor;
  v101[4] = v72;
  v101[5] = v62;
  v101[6] = v63;
  v39 = [_colorKernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v101, 7), v112.origin.x, v112.origin.y, v112.size.width, v112.size.height}];
  v117.origin.x = v75;
  v117.origin.y = v76;
  v117.size.width = v77;
  v117.size.height = v80;
  if (!CGRectContainsRect(v100, v117))
  {
    return [v39 imageByCroppingToRect:{v100.origin.x, v100.origin.y, v100.size.width, v100.size.height}];
  }

  return v39;
}

@end