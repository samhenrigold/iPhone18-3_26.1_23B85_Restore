@interface RAWLensCorrectionDNG
+ (id)customAttributes;
- (CGPoint)mapPoint:(CGPoint)point info:(id)info;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWLensCorrectionDNG

+ (id)customAttributes
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
  v3 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v4 = [MEMORY[0x277CBF788] vectorWithX:0.5 Y:0.5];
  v18[0] = @"inputKr";
  v6 = *MEMORY[0x277CBF7C0];
  v16[0] = *MEMORY[0x277CBF798];
  v5 = v16[0];
  v16[1] = v6;
  v17[0] = v2;
  v17[1] = v2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v7;
  v18[1] = @"inputKt";
  v14[0] = v5;
  v14[1] = v6;
  v15[0] = v3;
  v15[1] = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v19[1] = v8;
  v18[2] = @"inputCenter";
  v12[0] = v5;
  v12[1] = v6;
  v13[0] = v4;
  v13[1] = v4;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v19[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  return v10;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (CGPoint)mapPoint:(CGPoint)point info:(id)info
{
  x = point.x;
  y = point.y;
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"Kr"];
  v6 = [infoCopy objectForKeyedSubscript:@"Kt"];
  v7 = [infoCopy objectForKeyedSubscript:@"c"];
  [v5 X];
  v9 = v8;
  [v5 Y];
  v11 = v10;
  [v5 Z];
  v13 = v12;
  [v5 W];
  v15 = v14;
  [v6 X];
  v43 = v16;
  [v6 Y];
  v42 = v17;
  [v7 X];
  v41 = v18;
  [v7 Y];
  v40 = v19;
  v20 = [infoCopy objectForKeyedSubscript:@"m"];
  [v20 floatValue];
  v39 = v21;
  v22.f64[0] = v40;
  v22.f64[1] = v41;
  v23.f64[0] = v42;
  v23.f64[1] = v43;
  v24 = vcvt_f32_f64(v22);
  v25 = vcvt_f32_f64(v23);

  _Q0.f64[0] = y;
  _Q0.f64[1] = x;
  *&_Q0.f64[0] = vdiv_f32(vsub_f32(vcvt_f32_f64(_Q0), v24), vdup_lane_s32(v39, 0));
  _S2 = HIDWORD(_Q0.f64[0]);
  __asm { FMLA            S1, S2, V0.S[1] }

  *&v9 = v9;
  *&v11 = v11;
  *&v13 = v13;
  *&v15 = v15;
  v33 = vmul_n_f32(*&_Q0.f64[0], (((_S1 * *&v11) + *&v9) + (*&v13 * (_S1 * _S1))) + (*&v15 * (_S1 * (_S1 * _S1))));
  v34 = vcvtq_f64_f32(*&_Q0.f64[0]);
  v35 = vaddq_f64(v34, v34);
  v36 = vcvtq_f64_f32(v25);
  v46 = vcvtq_f64_f32(vadd_f32(vmul_n_f32(vadd_f32(v33, vcvt_f32_f64(vmlaq_n_f64(vmulq_f64(vmlaq_f64(vdupq_lane_s64(COERCE__INT64(_S1), 0), v34, v35), vextq_s8(v36, v36, 8uLL)), v36, vmulq_laneq_f64(v34, v35, 1).f64[0]))), *v39.i32), v24));

  v37 = v46.f64[1];
  v38 = v46.f64[0];
  result.y = v38;
  result.x = v37;
  return result;
}

- (id)outputImage
{
  v42[4] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLensCorrectionDNG", &unk_233945DBE, buf, 2u);
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_2338F5B1C;
    v40[3] = &unk_2789EE800;
    v40[4] = self;
    v5 = MEMORY[0x2383AC810](v40);
    [(CIImage *)self->inputImage extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v34 = [LCKernels kernelWithName:@"dngLens"];
    v14 = [LCKernels kernelWithName:@"dngLensDraft"];
    [(CIVector *)self->inputCenter X];
    v16 = v15;
    [(CIVector *)self->inputCenter Y];
    v18 = v7 + v11 * v16;
    v19 = v9 + v13 * v17;
    v20 = hypot(fmax(vabdd_f64(v7, v18), vabdd_f64(v7 + v11, v18)), fmax(vabdd_f64(v9, v19), vabdd_f64(v9 + v13, v19)));
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2338F5BA4;
    v37[3] = &unk_2789F1190;
    v37[4] = self;
    v38 = v18;
    v39 = v19;
    *&v37[5] = v20;
    v21 = MEMORY[0x2383AC810](v37);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2338F5D84;
    v35[3] = &unk_2789EF1E8;
    v22 = v21;
    v36 = v22;
    v23 = MEMORY[0x2383AC810](v35);
    if ([(NSNumber *)self->inputDraftMode BOOLValue])
    {
      v24 = v14;
    }

    else
    {
      v24 = v34;
    }

    inputImage = self->inputImage;
    inputKt = self->inputKt;
    v42[0] = self->inputKr;
    v42[1] = inputKt;
    v27 = [MEMORY[0x277CBF788] vectorWithX:v18 Y:{v19, *&v13, *&v11}];
    v42[2] = v27;
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
    v42[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    v30 = [(RAWFilter *)self apply:v24 image:inputImage extent:v23 roiCallback:v29 arguments:self->inputColorSpace inoutSpace:v7, v9, v33, v32];

    v5[2](v5);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

@end