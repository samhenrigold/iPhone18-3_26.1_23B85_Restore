@interface CIRippleTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIRippleTransition

- (id)outputImage
{
  v89 = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputWidth floatValue];
  v4 = v3;
  [(NSNumber *)self->inputScale floatValue];
  v6 = v5;
  [(NSNumber *)self->inputTime floatValue];
  if (!self->inputImage || !self->inputTargetImage || !self->inputShadingImage)
  {
    return 0;
  }

  v8 = v7;
  v84 = v6;
  v9 = v4 * 0.25;
  [(CIVector *)self->inputExtent CGRectValue];
  IsEmpty = CGRectIsEmpty(v90);
  if (IsEmpty)
  {
    v12 = ci_logger_filter(IsEmpty, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v88 = [objc_opt_class() description];
      _os_log_impl(&dword_19CC36000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: inputExtent is nil or empty.\n", buf, 0xCu);
    }
  }

  [(CIVector *)self->inputCenter X];
  v14 = v13;
  [(CIVector *)self->inputCenter Y];
  v16 = v15;
  [(CIVector *)self->inputExtent X];
  v18 = v17;
  [(CIVector *)self->inputExtent Y];
  v20 = v19;
  [(CIVector *)self->inputExtent Z];
  v22 = v21 + v18;
  [(CIVector *)self->inputExtent W];
  v24 = v23 + v20;
  v25 = v18 - v14;
  v26 = (v20 - v16) * (v20 - v16);
  v27 = sqrtf(v26 + (v25 * v25));
  v28 = v22 - v14;
  v29 = sqrtf(v26 + (v28 * v28));
  if (v29 <= v27)
  {
    v29 = v27;
  }

  v30 = (v24 - v16) * (v24 - v16);
  v31 = sqrtf(v30 + (v25 * v25));
  if (v31 <= v29)
  {
    v31 = v29;
  }

  v32 = sqrtf(v30 + (v28 * v28));
  if (v32 <= v31)
  {
    v32 = v31;
  }

  v33 = v9 * -9.0 + v8 * (v32 + v9 * 9.0);
  v81 = v33;
  [(CIImage *)self->inputShadingImage extent];
  v82 = v35;
  v83 = v34;
  [(CIImage *)self->inputImage extent];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [(CIImage *)self->inputTargetImage extent];
  v95.origin.x = v44;
  v95.origin.y = v45;
  v95.size.width = v46;
  v95.size.height = v47;
  v91.origin.x = v37;
  v91.origin.y = v39;
  v91.size.width = v41;
  v91.size.height = v43;
  v92 = CGRectUnion(v91, v95);
  x = v92.origin.x;
  y = v92.origin.y;
  width = v92.size.width;
  height = v92.size.height;
  [(CIVector *)self->inputExtent X];
  v53 = v52;
  [(CIVector *)self->inputExtent Y];
  v55 = v54;
  [(CIVector *)self->inputExtent Z];
  v57 = v56;
  [(CIVector *)self->inputExtent W];
  v96.size.height = v58;
  v93.origin.x = x;
  v93.origin.y = y;
  v93.size.width = width;
  v93.size.height = height;
  v96.origin.x = v53;
  v96.origin.y = v55;
  v96.size.width = v57;
  v94 = CGRectUnion(v93, v96);
  v59 = v94.origin.x;
  v60 = v94.origin.y;
  v61 = v94.size.width;
  v62 = v94.size.height;
  [(CIImage *)self->inputShadingImage extent];
  v64 = v63;
  v66 = v65;
  v67 = MEMORY[0x1E695DEC8];
  inputScale = self->inputScale;
  *&v53 = v69;
  LODWORD(v69) = LODWORD(v53);
  v70 = [MEMORY[0x1E696AD98] numberWithFloat:v69];
  LODWORD(v71) = LODWORD(v53);
  v72 = [MEMORY[0x1E696AD98] numberWithFloat:v71];
  *&v73 = v64;
  v74 = [MEMORY[0x1E696AD98] numberWithFloat:v73];
  *&v75 = v66;
  v76 = [v67 arrayWithObjects:{inputScale, v70, v72, v74, objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v75), 0}];
  _CIRippleTransition = [(CIRippleTransition *)self _CIRippleTransition];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __33__CIRippleTransition_outputImage__block_invoke;
  v85[3] = &unk_1E75C24D8;
  inputImage = self->inputImage;
  v85[4] = v76;
  v86[0] = inputImage;
  inputShadingImage = self->inputShadingImage;
  v86[1] = self->inputTargetImage;
  v86[2] = inputShadingImage;
  v86[3] = self->inputCenter;
  v86[4] = [CIVector vectorWithX:v81 Y:(1.0 / v9) Z:0.333333343 W:v84];
  v86[5] = [CIVector vectorWithX:v83 Y:v82];
  return [_CIRippleTransition applyWithExtent:v85 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v86, 6), v59, v60, v61, v62}];
}

double __33__CIRippleTransition_outputImage__block_invoke(uint64_t a1, unsigned int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = *(a1 + 32);
  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      [objc_msgSend(*(a1 + 32) objectAtIndex:{1, a3, a4, a5, a6), "floatValue"}];
      v6 = v14;
      [objc_msgSend(v7 objectAtIndex:{2), "floatValue"}];
      [objc_msgSend(v7 objectAtIndex:{3), "floatValue"}];
      [objc_msgSend(v7 objectAtIndex:{4), "floatValue"}];
    }
  }

  else
  {
    [objc_msgSend(*(a1 + 32) objectAtIndex:{0), "floatValue"}];
    if (v12 >= 0.0)
    {
      v12 = -v12;
    }

    v13 = v12;
    v16.origin.x = a3;
    v16.origin.y = a4;
    v16.size.width = a5;
    v16.size.height = a6;
    *&v6 = CGRectInset(v16, v13, v13);
  }

  return v6;
}

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryTransition";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"9";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.4";
  v12[3] = @"inputTime";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F10848B8;
  v10[1] = &unk_1F10848B8;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F10848C8;
  v10[3] = &unk_1F10848B8;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeTime";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v12[4] = @"inputWidth";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F10848C8;
  v8[1] = &unk_1F10848D8;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F10848E8;
  v8[3] = &unk_1F10848F8;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeDistance";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v12[5] = @"inputScale";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084908;
  v6[1] = &unk_1F1084908;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084918;
  v6[3] = &unk_1F1084918;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10848B8;
  v6[5] = @"CIAttributeTypeScalar";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v12[6] = @"inputExtent";
  v3[1] = @"CIAttributeDefault";
  v4[0] = @"CIAttributeTypeRectangle";
  v3[0] = @"CIAttributeType";
  v4[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:300.0 W:300.0];
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

@end