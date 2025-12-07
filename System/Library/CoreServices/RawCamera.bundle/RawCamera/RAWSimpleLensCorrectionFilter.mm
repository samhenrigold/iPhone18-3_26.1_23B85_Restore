@interface RAWSimpleLensCorrectionFilter
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWSimpleLensCorrectionFilter

+ (id)customAttributes
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30[0] = @"inputDistortionScaleHalfMinorRadius";
  v3 = *MEMORY[0x277CBF7E8];
  v22[0] = *MEMORY[0x277CBF7D0];
  v2 = v22[0];
  v22[1] = v3;
  v28[0] = &unk_284958A88;
  v28[1] = &unk_284958A98;
  v5 = *MEMORY[0x277CBF7C8];
  v23 = *MEMORY[0x277CBF7E0];
  v4 = v23;
  v24 = v5;
  v28[2] = &unk_284958AA8;
  v28[3] = &unk_284958AB8;
  v7 = *MEMORY[0x277CBF7C0];
  v25 = *MEMORY[0x277CBF798];
  v6 = v25;
  v26 = v7;
  v28[4] = &unk_284958AC8;
  v28[5] = &unk_284958AC8;
  v27 = *MEMORY[0x277CBF7F0];
  v8 = v27;
  v29 = *MEMORY[0x277CBF850];
  v9 = v29;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v22 count:7];
  v31[0] = v15;
  v30[1] = @"inputDistortionScaleMinorRadius";
  v20[0] = v2;
  v20[1] = v3;
  v21[0] = &unk_284958A88;
  v21[1] = &unk_284958A98;
  v20[2] = v4;
  v20[3] = v5;
  v21[2] = &unk_284958AA8;
  v21[3] = &unk_284958AB8;
  v20[4] = v6;
  v20[5] = v7;
  v21[4] = &unk_284958AC8;
  v21[5] = &unk_284958AC8;
  v20[6] = v8;
  v21[6] = v9;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];
  v31[1] = v14;
  v30[2] = @"inputDistortionScaleMajorRadius";
  v18[0] = v2;
  v18[1] = v3;
  v19[0] = &unk_284958A88;
  v19[1] = &unk_284958A98;
  v18[2] = v4;
  v18[3] = v5;
  v19[2] = &unk_284958AA8;
  v19[3] = &unk_284958AB8;
  v18[4] = v6;
  v18[5] = v7;
  v19[4] = &unk_284958AC8;
  v19[5] = &unk_284958AC8;
  v18[6] = v8;
  v19[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:7];
  v31[2] = v10;
  v30[3] = @"inputDistortionScaleMaxRadius";
  v16[0] = v2;
  v16[1] = v3;
  v17[0] = &unk_284958A88;
  v17[1] = &unk_284958A98;
  v16[2] = v4;
  v16[3] = v5;
  v17[2] = &unk_284958AA8;
  v17[3] = &unk_284958AB8;
  v16[4] = v6;
  v16[5] = v7;
  v17[4] = &unk_284958AC8;
  v17[5] = &unk_284958AC8;
  v16[6] = v8;
  v17[6] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];
  v31[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  return v12;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (id)outputImage
{
  v149 = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWSimpleLensCorrectionFilter", &unk_233945DBE, buf, 2u);
    }

    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = sub_2337FC278;
    v142[3] = &unk_2789EE800;
    v142[4] = self;
    v115 = MEMORY[0x2383AC810](v142);
    [(CIImage *)self->inputImage extent];
    v122 = v6;
    v123 = v5;
    v120 = v8;
    v121 = v7;
    *&v5 = v7;
    v9 = *&v5 * 0.5;
    *&v6 = v8;
    v10 = *&v6 * 0.5;
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (v9 <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    v13 = hypotf(v9, v10);
    *buf = 0;
    v14 = (v11 * 0.5) / v13;
    v15 = v11 / v13;
    v148.i64[0] = __PAIR64__(LODWORD(v15), LODWORD(v14));
    v16 = v12 / v13;
    v148.f32[2] = v12 / v13;
    v148.i32[3] = 1065353216;
    v145 = 0;
    *v144 = 0;
    *&v144[8] = 0;
    [(NSNumber *)self->inputDistortionScaleHalfMinorRadius floatValue];
    v18 = v14 * v17;
    v146.f32[0] = v14 * v17;
    [(NSNumber *)self->inputDistortionScaleMinorRadius floatValue];
    v20 = v15 * fminf(v19, 1.0);
    v146.f32[1] = v20;
    [(NSNumber *)self->inputDistortionScaleMajorRadius floatValue];
    v22 = v16 * fminf(v21, 1.0);
    v146.f32[2] = v22;
    [(NSNumber *)self->inputDistortionScaleMaxRadius floatValue];
    v24 = fminf(v23, 1.0);
    v146.f32[3] = v24;
    v25 = malloc_type_calloc(5uLL, 4uLL, 0x100004052888210uLL);
    v26 = malloc_type_calloc(5uLL, 4uLL, 0x100004052888210uLL);
    v27 = v26;
    v28 = 0;
    *v26 = 0;
    *v25 = 0;
    v29 = v18;
    v30 = v14;
    do
    {
      v31 = *&buf[v28 * 4];
      v32 = v30 - v31;
      v33 = v148.f32[v28 + 1];
      v34 = v33 - v31;
      v35 = v146.f32[v28 + 1];
      v36 = (v35 - v29) / (v33 - v30);
      v37 = ((v32 / v34) * *&v25[v28]) + 2.0;
      v38 = (v29 - *(&v145 + v28 * 4)) / v32;
      *&v25[v28 + 1] = ((v32 / v34) + -1.0) / v37;
      *&v26[v28 + 1] = ((((v36 - v38) * 6.0) / v34) - ((v32 / v34) * *&v26[v28])) / v37;
      ++v28;
      v29 = v35;
      v30 = v33;
    }

    while (v28 != 3);
    v116 = v18;
    *&v144[16] = 0;
    v39 = 0.0;
    do
    {
      v39 = *&v26[v28] + (*&v25[v28] * v39);
      *&v144[v28 * 4] = v39;
      --v28;
    }

    while (v28 != -1);
    v40 = v144;
    v41 = vld1q_dup_f32(v40);
    v42 = vsubq_f32(v148, vextq_s8(0, v148, 0xCuLL));
    __asm { FMOV            V3.4S, #3.0 }

    v48 = vdivq_f32(vextq_s8(v41, *&v144[4], 0xCuLL), _Q3);
    __asm { FMOV            V3.4S, #6.0 }

    v128 = vmlsq_f32(vdivq_f32(vsubq_f32(v146, vextq_s8(0, v146, 0xCuLL)), v42), vaddq_f32(v48, vdivq_f32(*&v144[4], _Q3)), v42);
    v124 = v24;
    v126 = v22;
    v50 = v24 - v22;
    v51 = *&v144[12] / 6.0;
    v52 = *&v144[16] / 3.0;
    free(v25);
    free(v27);
    _V6.D[1] = v128.i64[1];
    _S5 = 981668463;
    __asm { FMLA            S1, S5, V6.S[2] }

    if (_S1 <= (v15 + 0.001))
    {
      v112 = v128.f32[2];
    }

    else
    {
      v112 = ((v15 + 0.001) - v20) / 0.001;
    }

    __asm { FMLA            S3, S5, V6.S[3] }

    if (_S3 <= (v16 + 0.001))
    {
      v57 = v128.f32[3];
    }

    else
    {
      v57 = ((v16 + 0.001) - v126) / 0.001;
    }

    v58 = (v50 / (1.0 - v16)) + ((1.0 - v16) * (v51 + v52));
    if ((v126 + (v57 * -0.001)) > (v16 + -0.001))
    {
      v57 = ((v16 + -0.001) - v126) / -0.001;
    }

    v111 = v57;
    if ((v124 + (v58 * -0.001)) > 0.999)
    {
      v58 = (0.999 - v124) / -0.001;
    }

    v119 = [LCKernels kernelWithName:@"simpleLens"];
    v118 = [LCKernels kernelWithName:@"simpleLensDraft"];
    v59 = hypot(v121, v120);
    [MEMORY[0x277CBF788] vectorWithX:(v123 + v121 * 0.5) Y:(v122 + v120 * 0.5) Z:(2.0 / v59) W:1.0];
    v110 = v60 = v16;
    v114 = [MEMORY[0x277CBF788] vectorWithX:v14 Y:v15 Z:v60 W:1.0];
    sub_2337FC300(0.0, 0.0, v128.f32[0], v14, v116, v128.f32[1]);
    v109 = v61 = v20;
    v108 = sub_2337FC300(v14, v116, v128.f32[1], v15, v61, v112);
    v113 = sub_2337FC300(v15, v61, v112, v60, v126, v111);
    v62 = sub_2337FC300(v60, v126, v111, 1.0, v124, v58);
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = sub_2337FC408;
    v135[3] = &unk_2789EF198;
    v63 = v110;
    v136 = v63;
    v125 = v109;
    v137 = v125;
    v127 = v108;
    v138 = v127;
    v64 = v113;
    v139 = v64;
    v129 = v62;
    v140 = v129;
    v117 = v114;
    v141 = v117;
    v65 = MEMORY[0x2383AC810](v135);
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = sub_2337FC590;
    v132[3] = &unk_2789EF1C0;
    v66 = v63;
    v133 = v66;
    v67 = v65;
    v134 = v67;
    v68 = MEMORY[0x2383AC810](v132);
    if ((atomic_load_explicit(byte_280C04E80, memory_order_acquire) & 1) == 0)
    {
      sub_2338FC400();
    }

    if (byte_280C04E78 == 1)
    {
      [(NSNumber *)self->inputFocalLength floatValue];
      printf("%g, array(", v69);
      v70 = v67[2](v67, 0.001);
      printf("0.0, %.5f, ", (v70 / 0.001));
      v71 = v148.f32[0];
      v72 = v148.f32[0] * 0.5;
      v73 = v67[2](v67, v148.f32[0] * 0.5);
      printf("%.5f, %.5f, ", v72, (v73 / v72));
      v74 = v146.f32[0];
      printf("%.5f, %.5f, ", v71, (v146.f32[0] / v71));
      v75 = v148.f32[1];
      v76 = (v71 + v148.f32[1]) * 0.5;
      v77 = v67[2](v67, v76);
      printf("%.5f, %.5f, ", v76, (v77 / v76));
      v78 = v146.f32[1];
      printf("%.5f, %.5f, ", v75, (v146.f32[1] / v75));
      v79 = v148.f32[2];
      v80 = (v75 + v148.f32[2]) * 0.5;
      v81 = v67[2](v67, v80);
      printf("%.5f, %.5f, ", v80, (v81 / v80));
      v82 = v146.f32[2];
      printf("%.5f, %.5f, ", v79, (v146.f32[2] / v79));
      v83 = v148.f32[3];
      v84 = (v79 + v148.f32[3]) * 0.5;
      v85 = v67[2](v67, v84);
      printf("%.5f, %.5f, ", v84, (v85 / v84));
      v86 = v146.f32[3];
      printf("1.0, %.5f", (v146.f32[3] / v83));
      [(NSNumber *)self->inputDistortionScaleHalfMinorRadius floatValue];
      v146.f32[0] = v74 * v87;
      [(NSNumber *)self->inputDistortionScaleMinorRadius floatValue];
      v146.f32[1] = v78 * fminf(v88, 1.0);
      [(NSNumber *)self->inputDistortionScaleMajorRadius floatValue];
      v146.f32[2] = v82 * fminf(v89, 1.0);
      [(NSNumber *)self->inputDistortionScaleMaxRadius floatValue];
      v146.f32[3] = v86 * fminf(v90, 1.0);
      printf(") <!-- ");
      [(NSNumber *)self->inputDistortionScaleHalfMinorRadius floatValue];
      printf("%.4f ", v91);
      [(NSNumber *)self->inputDistortionScaleMinorRadius floatValue];
      printf("%.4f ", fminf(v92, 1.0));
      [(NSNumber *)self->inputDistortionScaleMajorRadius floatValue];
      printf("%.4f ", fminf(v93, 1.0));
      [(NSNumber *)self->inputDistortionScaleMaxRadius floatValue];
      printf("%.4f ", fminf(v94, 1.0));
      puts("-->");
    }

    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = sub_2337FC658;
    v130[3] = &unk_2789EF1E8;
    v95 = v68;
    v131 = v95;
    v96 = MEMORY[0x2383AC810](v130);
    imageByClampingToExtent = [(CIImage *)self->inputImage imageByClampingToExtent];
    bOOLValue = [(NSNumber *)self->inputDraftMode BOOLValue];
    v99 = *MEMORY[0x277CBF390];
    v100 = *(MEMORY[0x277CBF390] + 8);
    v101 = *(MEMORY[0x277CBF390] + 16);
    v102 = *(MEMORY[0x277CBF390] + 24);
    v143[0] = v66;
    v143[1] = v117;
    v143[2] = v125;
    v143[3] = v127;
    v143[4] = v64;
    v143[5] = v129;
    v103 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:6];
    if (bOOLValue)
    {
      v104 = v118;
    }

    else
    {
      v104 = v119;
    }

    v102 = [(RAWFilter *)self apply:v104 image:imageByClampingToExtent extent:v96 roiCallback:v103 arguments:self->inputColorSpace inoutSpace:v99, v100, v101, v102];

    v106 = [v102 imageByCroppingToRect:{v123, v122, v121, v120}];

    v115[2](v115);
  }

  else
  {
    v106 = 0;
  }

  return v106;
}

@end