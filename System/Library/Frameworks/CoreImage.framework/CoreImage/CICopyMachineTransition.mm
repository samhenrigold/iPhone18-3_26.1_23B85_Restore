@interface CICopyMachineTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICopyMachineTransition

+ (id)customAttributes
{
  v17[9] = *MEMORY[0x1E69E9840];
  v16[0] = @"CIAttributeFilterCategories";
  v15[0] = @"CICategoryTransition";
  v15[1] = @"CICategoryVideo";
  v15[2] = @"CICategoryStillImage";
  v15[3] = @"CICategoryBuiltIn";
  v17[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v17[1] = @"6";
  v16[1] = @"CIAttributeFilterAvailable_iOS";
  v16[2] = @"CIAttributeFilterAvailable_Mac";
  v17[2] = @"10.4";
  v16[3] = @"inputTime";
  v13[0] = @"CIAttributeMin";
  v13[1] = @"CIAttributeSliderMin";
  v14[0] = &unk_1F1083188;
  v14[1] = &unk_1F1083188;
  v13[2] = @"CIAttributeSliderMax";
  v13[3] = @"CIAttributeDefault";
  v14[2] = &unk_1F1083198;
  v14[3] = &unk_1F1083188;
  v13[4] = @"CIAttributeType";
  v14[4] = @"CIAttributeTypeTime";
  v17[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  v16[4] = @"inputAngle";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F1083188;
  v12[1] = &unk_1F1083188;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeDefault";
  v12[2] = &unk_1F10831A8;
  v12[3] = &unk_1F1083188;
  v11[4] = @"CIAttributeIdentity";
  v11[5] = @"CIAttributeType";
  v12[4] = &unk_1F1083188;
  v12[5] = @"CIAttributeTypeAngle";
  v17[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v16[5] = @"inputWidth";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F10831B8;
  v10[1] = &unk_1F10831B8;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F10831C8;
  v10[3] = &unk_1F10831D8;
  v9[4] = @"CIAttributeIdentity";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F10831D8;
  v10[5] = @"CIAttributeTypeDistance";
  v17[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v16[6] = @"inputOpacity";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083188;
  v8[1] = &unk_1F1083188;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F10831E8;
  v8[3] = &unk_1F10831F8;
  v7[4] = @"CIAttributeIdentity";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F10831F8;
  v8[5] = @"CIAttributeTypeScalar";
  v17[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v16[7] = @"inputExtent";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeRectangle";
  v5[0] = @"CIAttributeType";
  v6[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v17[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v16[8] = @"inputColor";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIColor colorWithRed:0.6 green:1.0 blue:0.8];
  v4[1] = @"CIAttributeTypeOpaqueColor";
  v17[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];
}

- (id)outputImage
{
  v90 = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputTargetImage)
  {
    return 0;
  }

  [(CIVector *)self->inputExtent CGRectValue];
  IsEmpty = CGRectIsEmpty(v91);
  if (IsEmpty)
  {
    v5 = ci_logger_filter(IsEmpty, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v89 = [objc_opt_class() description];
      _os_log_impl(&dword_19CC36000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: inputExtent is nil or empty.\n", buf, 0xCu);
    }
  }

  [(NSNumber *)self->inputAngle floatValue];
  v7 = v6;
  [(NSNumber *)self->inputWidth floatValue];
  *&v9 = fmax(v8, 0.1);
  *v9.i32 = *v9.i32;
  v78 = v9;
  [(NSNumber *)self->inputOpacity floatValue];
  v80 = v10;
  [(NSNumber *)self->inputTime floatValue];
  v12 = v11;
  [(CIVector *)self->inputExtent X];
  *&v13 = v13;
  v84 = *&v13;
  [(CIVector *)self->inputExtent X];
  *&v15 = v14;
  v72 = *&v15;
  v76 = __PAIR64__(v15, LODWORD(v84));
  [(CIVector *)self->inputExtent Z];
  v16.f32[0] = *&v16 + v84;
  v81 = v16.i32[0];
  v16.f32[1] = v72;
  v74 = v16;
  [(CIVector *)self->inputExtent W];
  *&v17 = v17 + v72;
  v85 = __PAIR64__(LODWORD(v17), LODWORD(v84));
  v82 = __PAIR64__(LODWORD(v17), v81);
  v18 = __sincosf_stret(v7);
  v19 = vdiv_f32(__PAIR64__(LODWORD(v18.__sinval), LODWORD(v18.__cosval)), vdup_lane_s32(v78, 0));
  v20 = vaddv_f32(vmul_f32(v19, v76));
  v21 = vaddv_f32(vmul_f32(v19, v74));
  v22 = fminf(v20, v21);
  v23 = fmaxf(v20, v21);
  v24 = vaddv_f32(vmul_f32(v19, v85));
  v25 = fminf(v22, v24);
  v26 = fmaxf(v23, v24);
  v79 = v19;
  v27 = vaddv_f32(vmul_f32(v19, v82));
  v77 = fminf(v25, v27);
  v75 = (v77 - fmaxf(v26, v27)) + -1.0;
  if (v12 >= 0.65)
  {
    v83 = 1.0 - (((v12 + -0.65) / 0.35) * ((v12 + -0.65) / 0.35));
    v86 = 1.0;
    v73 = -5.88235235;
    [(CIVector *)self->inputExtent X:0x3FF346F0A0000000];
  }

  else
  {
    v86 = 0.0;
    v73 = -1.20481932;
    v83 = v12 / 0.65;
    [(CIVector *)self->inputExtent X:0x4017878760000000];
  }

  v30 = v28;
  [(CIVector *)self->inputExtent Y];
  v32 = v31;
  [(CIVector *)self->inputExtent Z];
  v34 = v33;
  [(CIVector *)self->inputExtent W];
  v36 = v35;
  [(CIImage *)self->inputImage extent];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  [(CIImage *)self->inputTargetImage extent];
  v95.origin.x = v45;
  v95.origin.y = v46;
  v95.size.width = v47;
  v95.size.height = v48;
  v92.origin.x = v38;
  v92.origin.y = v40;
  v92.size.width = v42;
  v92.size.height = v44;
  v93 = CGRectUnion(v92, v95);
  v96.origin.x = v30;
  v96.origin.y = v32;
  v96.size.width = v34;
  v96.size.height = v36;
  v94 = CGRectUnion(v93, v96);
  x = v94.origin.x;
  y = v94.origin.y;
  width = v94.size.width;
  height = v94.size.height;
  v53 = [CIVector vectorWithX:v73 Y:v71 Z:v70];
  v54 = [CIVector vectorWithX:-v79.f32[0] Y:-v79.f32[1] Z:-v75 W:((v77 + -1.0) + 1.0)];
  [(CIColor *)self->inputColor red];
  v56 = v55;
  [(CIColor *)self->inputColor green];
  v58 = v57;
  [(CIColor *)self->inputColor blue];
  v60 = v59;
  [(CIColor *)self->inputColor alpha];
  v62 = [CIVector vectorWithX:v56 Y:v58 Z:v60 W:v61];
  v63 = [CIVector vectorWithX:v83 Y:v80 Z:v86];
  _kernel = [(CICopyMachineTransition *)self _kernel];
  v65 = *MEMORY[0x1E695F040];
  v66 = *(MEMORY[0x1E695F040] + 8);
  v67 = *(MEMORY[0x1E695F040] + 16);
  v68 = *(MEMORY[0x1E695F040] + 24);
  inputTargetImage = self->inputTargetImage;
  v87[0] = self->inputImage;
  v87[1] = inputTargetImage;
  v87[2] = v53;
  v87[3] = v54;
  v87[4] = v62;
  v87[5] = v63;
  return [objc_msgSend(_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v87, 6), v65, v66, v67, v68), "imageByCroppingToRect:", x, y, width, height}];
}

@end