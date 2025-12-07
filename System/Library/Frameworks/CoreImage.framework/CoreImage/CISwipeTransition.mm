@interface CISwipeTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISwipeTransition

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryTransition";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"6";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.4";
  v14[3] = @"inputWidth";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1084E08;
  v12[1] = &unk_1F1084E08;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F1084E18;
  v12[3] = &unk_1F1084E28;
  v11[4] = @"CIAttributeType";
  v12[4] = @"CIAttributeTypeDistance";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v14[4] = @"inputOpacity";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1084E38;
  v10[1] = &unk_1F1084E38;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1084E48;
  v10[3] = &unk_1F1084E38;
  v9[4] = @"CIAttributeIdentity";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F1084E38;
  v10[5] = @"CIAttributeTypeScalar";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v14[5] = @"inputColor";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeType";
  v8[0] = [CIColor colorWithRed:1.0 green:1.0 blue:1.0];
  v8[1] = @"CIAttributeTypeOpaqueColor";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v14[6] = @"inputExtent";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeRectangle";
  v5[0] = @"CIAttributeType";
  v6[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v14[7] = @"inputAngle";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1084E58;
  v4[1] = &unk_1F1084E68;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1084E38;
  v4[3] = &unk_1F1084E38;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeAngle";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v64 = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputAngle floatValue];
  v4 = v3;
  [(NSNumber *)self->inputWidth floatValue];
  v6 = v5;
  [(NSNumber *)self->inputOpacity floatValue];
  v8 = v7;
  [(NSNumber *)self->inputTime floatValue];
  if (!self->inputImage || !self->inputTargetImage)
  {
    return 0;
  }

  v10 = *v9.i32;
  *v9.i32 = fmaxf(v6, 0.1);
  v56 = v9;
  v11 = fminf(fmaxf(v8, 0.0), 1.0);
  [(CIVector *)self->inputExtent CGRectValue];
  IsEmpty = CGRectIsEmpty(v65);
  if (IsEmpty)
  {
    v14 = ci_logger_filter(IsEmpty, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v63 = [objc_opt_class() description];
      _os_log_impl(&dword_19CC36000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: inputExtent is nil or empty.\n", buf, 0xCu);
    }
  }

  [(CIVector *)self->inputExtent X];
  *&v15 = v15;
  v59 = *&v15;
  [(CIVector *)self->inputExtent Y];
  *&v17 = v16;
  v53 = *&v17;
  v55 = __PAIR64__(v17, LODWORD(v59));
  [(CIVector *)self->inputExtent Z];
  v18.f32[0] = *&v18 + v59;
  v57 = v18.i32[0];
  v18.f32[1] = v53;
  v54 = v18;
  [(CIVector *)self->inputExtent W];
  *&v19 = v19 + v53;
  v60 = __PAIR64__(LODWORD(v19), LODWORD(v59));
  v58 = __PAIR64__(LODWORD(v19), v57);
  v20 = __sincosf_stret(v4);
  v21 = vdiv_f32(__PAIR64__(LODWORD(v20.__sinval), LODWORD(v20.__cosval)), vdup_lane_s32(v56, 0));
  v22 = vaddv_f32(vmul_f32(v21, v55));
  v23 = vaddv_f32(vmul_f32(v21, v54));
  v24 = fminf(v22, v23);
  v25 = fmaxf(v22, v23);
  v26 = vaddv_f32(vmul_f32(v21, v60));
  v27 = fminf(v24, v26);
  v28 = fmaxf(v25, v26);
  v29 = vaddv_f32(vmul_f32(v21, v58));
  v30 = fminf(v27, v29);
  v31 = [CIVector vectorWithX:v21.f32[0] Y:v21.f32[1] Z:((1.0 - v30) + (((v30 - fmaxf(v28 W:v29)) + -1.0) * v10)), v11];
  inputColor = self->inputColor;
  if (!inputColor)
  {
    inputColor = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  }

  _kernel = [(CISwipeTransition *)self _kernel];
  v34 = *MEMORY[0x1E695F040];
  v35 = *(MEMORY[0x1E695F040] + 8);
  v36 = *(MEMORY[0x1E695F040] + 16);
  v37 = *(MEMORY[0x1E695F040] + 24);
  inputTargetImage = self->inputTargetImage;
  v61[0] = self->inputImage;
  v61[1] = inputTargetImage;
  v61[2] = inputColor;
  v61[3] = v31;
  v39 = [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v61, 4), v34, v35, v36, v37}];
  [(CIImage *)self->inputImage extent];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  [(CIImage *)self->inputTargetImage extent];
  v68.origin.x = v48;
  v68.origin.y = v49;
  v68.size.width = v50;
  v68.size.height = v51;
  v66.origin.x = v41;
  v66.origin.y = v43;
  v66.size.width = v45;
  v66.size.height = v47;
  v67 = CGRectUnion(v66, v68);
  return [v39 imageByCroppingToRect:{v67.origin.x, v67.origin.y, v67.size.width, v67.size.height}];
}

@end