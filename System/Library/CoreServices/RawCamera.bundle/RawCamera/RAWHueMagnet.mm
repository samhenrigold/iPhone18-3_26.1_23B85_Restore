@interface RAWHueMagnet
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWHueMagnet

+ (id)customAttributes
{
  v61 = *MEMORY[0x277D85DE8];
  v52[0] = @"inputColorSpace";
  v49 = *MEMORY[0x277CBF798];
  v2 = v49;
  v3 = sub_2338F2BB4();
  v50 = *MEMORY[0x277CBF7A0];
  v4 = v50;
  v51[0] = v3;
  v51[1] = @"inputColorSpace";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v49 count:2];
  v53 = v34;
  v52[1] = @"inputVersion";
  v47[0] = *MEMORY[0x277CBF790];
  v5 = v47[0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *MEMORY[0x277CBF7D0];
  v28 = v7;
  v48[0] = v7;
  v48[1] = &unk_284958C08;
  v9 = *MEMORY[0x277CBF7C8];
  v47[1] = v8;
  v47[2] = v9;
  v48[2] = &unk_284958C18;
  v48[3] = &unk_284958C28;
  v10 = *MEMORY[0x277CBF7F0];
  v47[3] = v2;
  v47[4] = v10;
  v11 = *MEMORY[0x277CBF850];
  v47[5] = v4;
  v48[4] = v11;
  v48[5] = @"inputVersion";
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:6];
  v52[2] = @"inputHueMagMR";
  v45[0] = v5;
  v29 = v54;
  v12 = objc_opt_class();
  v33 = NSStringFromClass(v12);
  v46[0] = v33;
  v46[1] = &unk_284958C38;
  v45[1] = v8;
  v45[2] = v9;
  v46[2] = &unk_284958C48;
  v46[3] = &unk_284958C58;
  v45[3] = v2;
  v45[4] = v10;
  v45[5] = v4;
  v46[4] = v11;
  v46[5] = @"inputHueMagMR";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:6];
  v55 = v32;
  v52[3] = @"inputHueMagRY";
  v43[0] = v5;
  v13 = objc_opt_class();
  v31 = NSStringFromClass(v13);
  v44[0] = v31;
  v44[1] = &unk_284958C38;
  v43[1] = v8;
  v43[2] = v9;
  v44[2] = &unk_284958C48;
  v44[3] = &unk_284958C58;
  v43[3] = v2;
  v43[4] = v10;
  v43[5] = v4;
  v44[4] = v11;
  v44[5] = @"inputHueMagRY";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:6];
  v56 = v30;
  v52[4] = @"inputHueMagYG";
  v41[0] = v5;
  v14 = objc_opt_class();
  v26 = NSStringFromClass(v14);
  v42[0] = v26;
  v42[1] = &unk_284958C38;
  v41[1] = v8;
  v41[2] = v9;
  v42[2] = &unk_284958C48;
  v42[3] = &unk_284958C58;
  v41[3] = v2;
  v41[4] = v10;
  v41[5] = v4;
  v42[4] = v11;
  v42[5] = @"inputHueMagYG";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:6];
  v57 = v27;
  v52[5] = @"inputHueMagGC";
  v39[0] = v5;
  v15 = objc_opt_class();
  v24 = NSStringFromClass(v15);
  v40[0] = v24;
  v40[1] = &unk_284958C38;
  v39[1] = v8;
  v39[2] = v9;
  v40[2] = &unk_284958C48;
  v40[3] = &unk_284958C58;
  v39[3] = v2;
  v39[4] = v10;
  v39[5] = v4;
  v40[4] = v11;
  v40[5] = @"inputHueMagGC";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:6];
  v58 = v25;
  v52[6] = @"inputHueMagCB";
  v37[0] = v5;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v38[0] = v17;
  v38[1] = &unk_284958C38;
  v37[1] = v8;
  v37[2] = v9;
  v38[2] = &unk_284958C48;
  v38[3] = &unk_284958C58;
  v37[3] = v2;
  v37[4] = v10;
  v37[5] = v4;
  v38[4] = v11;
  v38[5] = @"inputHueMagCB";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];
  v59 = v18;
  v52[7] = @"inputHueMagBM";
  v35[0] = v5;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v36[0] = v20;
  v36[1] = &unk_284958C38;
  v35[1] = v8;
  v35[2] = v9;
  v36[2] = &unk_284958C48;
  v36[3] = &unk_284958C58;
  v35[3] = v2;
  v35[4] = v10;
  v35[5] = v4;
  v36[4] = v11;
  v36[5] = @"inputHueMagBM";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:6];
  v60 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:v52 count:8];

  return v22;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (id)outputImage
{
  v63[1] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWHueMagnet", &unk_233945DBE, buf, 2u);
    }

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_233880218;
    v56[3] = &unk_2789EE800;
    v56[4] = self;
    v5 = MEMORY[0x2383AC810](v56);
    [(NSNumber *)self->inputHueMagMR doubleValue];
    v7 = v6;
    [(NSNumber *)self->inputHueMagRY doubleValue];
    v9 = v8;
    [(NSNumber *)self->inputHueMagYG doubleValue];
    v11 = v10;
    [(NSNumber *)self->inputHueMagGC doubleValue];
    v13 = v12;
    [(NSNumber *)self->inputHueMagCB doubleValue];
    v15 = v14;
    [(NSNumber *)self->inputHueMagBM doubleValue];
    v16 = fmin(fmax(v7, -0.2), 0.2);
    v17 = fmin(fmax(v9, -0.2), 0.2);
    v18 = fmin(fmax(v11, -0.2), 0.2);
    v20 = fabs(v16);
    v21 = fabs(v17);
    v22 = fabs(v18);
    v52 = fmin(fmax(v15, -0.2), 0.2);
    v53 = fmin(fmax(v13, -0.2), 0.2);
    v23 = fabs(v53);
    v51 = fmin(fmax(v19, -0.2), 0.2);
    v54 = fabs(v51);
    v55 = fabs(v52);
    v24 = self->inputImage;
    if (v20 >= 0.001 || v21 >= 0.001 || v22 >= 0.001 || v23 >= 0.001 || (v25.n128_f64[0] = v55, v55 >= 0.001) || (v25.n128_f64[0] = v54, v54 >= 0.001))
    {
      if (v20 >= 0.001)
      {
        v26 = [HMKernels kernelWithName:@"RAWHueMagnetMR", v25.n128_f64[0]];
        v27 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
        v63[0] = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
        v29 = [(RAWFilter *)self apply:v26 image:v24 arguments:v28 inoutSpace:self->inputColorSpace isPremultiplied:1];

        v24 = v29;
      }

      if (v21 >= 0.001)
      {
        v30 = [HMKernels kernelWithName:@"RAWHueMagnetRY"];
        v31 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
        v62 = v31;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
        v33 = [(RAWFilter *)self apply:v30 image:v24 arguments:v32 inoutSpace:self->inputColorSpace isPremultiplied:1];

        v24 = v33;
      }

      if (v22 >= 0.001)
      {
        v34 = [HMKernels kernelWithName:@"RAWHueMagnetYG"];
        v35 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
        v61 = v35;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
        v37 = [(RAWFilter *)self apply:v34 image:v24 arguments:v36 inoutSpace:self->inputColorSpace isPremultiplied:1];

        v24 = v37;
      }

      if (v23 >= 0.001)
      {
        v38 = [HMKernels kernelWithName:@"RAWHueMagnetGC"];
        v39 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
        v60 = v39;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
        v41 = [(RAWFilter *)self apply:v38 image:v24 arguments:v40 inoutSpace:self->inputColorSpace isPremultiplied:1];

        v24 = v41;
      }

      if (v55 >= 0.001)
      {
        v42 = [HMKernels kernelWithName:@"RAWHueMagnetCB", v55];
        v43 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
        v59 = v43;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
        v45 = [(RAWFilter *)self apply:v42 image:v24 arguments:v44 inoutSpace:self->inputColorSpace isPremultiplied:1];

        v24 = v45;
      }

      v25.n128_f64[0] = v54;
      if (v54 >= 0.001)
      {
        v46 = [HMKernels kernelWithName:@"RAWHueMagnetBM", v54];
        v47 = [MEMORY[0x277CCABB0] numberWithDouble:v51];
        v58 = v47;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        v49 = [(RAWFilter *)self apply:v46 image:v24 arguments:v48 inoutSpace:self->inputColorSpace isPremultiplied:1];

        v24 = v49;
      }
    }

    v5[2](v5, v25);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end