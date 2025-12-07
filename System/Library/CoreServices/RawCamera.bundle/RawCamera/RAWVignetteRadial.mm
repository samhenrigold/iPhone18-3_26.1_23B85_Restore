@interface RAWVignetteRadial
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWVignetteRadial

+ (id)customAttributes
{
  v49 = *MEMORY[0x277D85DE8];
  v43[0] = @"inputVignetteK0";
  v40[0] = *MEMORY[0x277CBF790];
  v2 = v40[0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *MEMORY[0x277CBF798];
  v28 = v4;
  v42[0] = v4;
  v42[1] = &unk_284958D08;
  v6 = *MEMORY[0x277CBF7F0];
  v40[1] = v5;
  v40[2] = v6;
  v7 = *MEMORY[0x277CBF850];
  v41 = *MEMORY[0x277CBF7A0];
  v8 = v41;
  v42[2] = v7;
  v42[3] = @"inputVignetteK0";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v40 count:4];
  v44[0] = v29;
  v43[1] = @"inputVignetteK1";
  v38[0] = v2;
  v9 = objc_opt_class();
  v27 = NSStringFromClass(v9);
  v39[0] = v27;
  v39[1] = &unk_284958D08;
  v38[1] = v5;
  v38[2] = v6;
  v38[3] = v8;
  v39[2] = v7;
  v39[3] = @"inputVignetteK1";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v44[1] = v26;
  v43[2] = @"inputVignetteK2";
  v36[0] = v2;
  v10 = objc_opt_class();
  v24 = NSStringFromClass(v10);
  v37[0] = v24;
  v37[1] = &unk_284958D08;
  v36[1] = v5;
  v36[2] = v6;
  v36[3] = v8;
  v37[2] = v7;
  v37[3] = @"inputVignetteK2";
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  v43[3] = @"inputVignetteK3";
  v34[0] = v2;
  v25 = v45;
  v11 = objc_opt_class();
  v23 = NSStringFromClass(v11);
  v35[0] = v23;
  v35[1] = &unk_284958D08;
  v34[1] = v5;
  v34[2] = v6;
  v34[3] = v8;
  v35[2] = v7;
  v35[3] = @"inputVignetteK3";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
  v46 = v12;
  v43[4] = @"inputVignetteK4";
  v32[0] = v2;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v33[0] = v14;
  v33[1] = &unk_284958D08;
  v32[1] = v5;
  v32[2] = v6;
  v32[3] = v8;
  v33[2] = v7;
  v33[3] = @"inputVignetteK4";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
  v47 = v15;
  v43[5] = @"inputCenter";
  v30[0] = v2;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v31[0] = v17;
  v30[1] = v5;
  v18 = [MEMORY[0x277CBF788] vectorWithX:0.5 Y:0.5];
  v30[2] = v6;
  v19 = *MEMORY[0x277CBF838];
  v31[1] = v18;
  v31[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v48 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:6];

  return v21;
}

- (id)outputImage
{
  v56[3] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    bOOLValue = [(NSNumber *)self->inputVignetteExecute BOOLValue];
    inputImage = self->inputImage;
    if (!bOOLValue)
    {
      v10 = inputImage;
      goto LABEL_6;
    }

    [(CIImage *)inputImage extent];
    x = v58.origin.x;
    y = v58.origin.y;
    width = v58.size.width;
    height = v58.size.height;
    IsInfinite = CGRectIsInfinite(v58);
    if (IsInfinite)
    {
      NSLog(&cfstr_Rawvignetterad_0.isa);
      v10 = self->inputImage;
LABEL_6:
      v11 = v10;
      goto LABEL_16;
    }

    v12 = sub_23378E104(IsInfinite);
    v13 = v12;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWVignetteRadial", &unk_233945DBE, buf, 2u);
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_2338A22A4;
    v54[3] = &unk_2789EE800;
    v54[4] = self;
    v14 = MEMORY[0x2383AC810](v54);
    [(CIVector *)self->inputVignetteCenter X];
    v53 = v15;
    [(CIVector *)self->inputVignetteCenter Y];
    v17 = v16;
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    MinX = CGRectGetMinX(v59);
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    MaxX = CGRectGetMaxX(v60);
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    MinY = CGRectGetMinY(v61);
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    MaxY = CGRectGetMaxY(v62);
    v22 = hypot(fmax(vabdd_f64(MinX, width * v53), vabdd_f64(MaxX, width * v53)), fmax(vabdd_f64(MinY, height * v17), vabdd_f64(MaxY, height * v17)));
    v23 = MEMORY[0x277CBF788];
    [(CIVector *)self->inputVignetteCenter X];
    v25 = v24;
    [(CIVector *)self->inputVignetteCenter Y];
    v27 = v26;
    [(NSNumber *)self->inputVignetteK4 floatValue];
    v29 = [v23 vectorWithX:width * v25 Y:height * v27 Z:v28 W:(1.0 / (v22 * v22))];
    v30 = MEMORY[0x277CBF788];
    [(NSNumber *)self->inputVignetteK0 floatValue];
    v32 = v31;
    [(NSNumber *)self->inputVignetteK1 floatValue];
    v34 = v33;
    [(NSNumber *)self->inputVignetteK2 floatValue];
    LODWORD(v22) = v35;
    [(NSNumber *)self->inputVignetteK3 floatValue];
    v37 = [v30 vectorWithX:v32 Y:v34 Z:*&v22 W:v36];
    v38 = [GainMapKernels kernelWithName:@"GainMapParametric"];
    v39 = self->inputImage;
    v40 = self->inputColorSpace;
    if (v40)
    {
      v41 = [(CIImage *)v39 imageByColorMatchingWorkingSpaceToColorSpace:v40];

      v39 = v41;
    }

    [(CIImage *)v39 extent];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v56[0] = v39;
    v56[1] = v29;
    v56[2] = v37;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
    v11 = [v38 applyWithExtent:v50 arguments:{v43, v45, v47, v49}];

    if (v40)
    {
      v51 = [v11 imageByColorMatchingColorSpaceToWorkingSpace:v40];

      v11 = v51;
    }

    v14[2](v14);
  }

  else
  {
    v11 = 0;
  }

LABEL_16:

  return v11;
}

@end