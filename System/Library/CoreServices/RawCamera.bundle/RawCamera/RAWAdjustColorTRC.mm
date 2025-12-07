@interface RAWAdjustColorTRC
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWAdjustColorTRC

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"inputBoostAmount"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___RAWAdjustColorTRC;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

+ (id)customAttributes
{
  v141 = *MEMORY[0x277D85DE8];
  v118[0] = @"inputColorSpace";
  v115 = *MEMORY[0x277CBF798];
  v2 = v115;
  v3 = sub_2338F2BB4();
  v116 = *MEMORY[0x277CBF7A0];
  v4 = v116;
  v117[0] = v3;
  v117[1] = @"inputColorSpace";
  v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:&v115 count:2];
  v118[1] = @"inputTRCs0";
  v113[0] = *MEMORY[0x277CBF790];
  v5 = v113[0];
  v74 = v119;
  v6 = objc_opt_class();
  v114[0] = NSStringFromClass(v6);
  v114[1] = &unk_284958B88;
  v7 = *MEMORY[0x277CBF7F0];
  v113[1] = v2;
  v113[2] = v7;
  v8 = *MEMORY[0x277CBF850];
  v113[3] = v4;
  v114[2] = v8;
  v114[3] = @"inputTRCs0";
  v69 = v114[0];
  v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:4];
  v118[2] = @"inputTRCs1";
  v111[0] = v5;
  v73 = v120;
  v9 = objc_opt_class();
  v112[0] = NSStringFromClass(v9);
  v112[1] = &unk_284958B88;
  v111[1] = v2;
  v111[2] = v7;
  v111[3] = v4;
  v112[2] = v8;
  v112[3] = @"inputTRCs1";
  v72 = v112[0];
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:4];
  v121 = v68;
  v118[3] = @"inputTRCs2";
  v109[0] = v5;
  v10 = objc_opt_class();
  v110[0] = NSStringFromClass(v10);
  v110[1] = &unk_284958B88;
  v109[1] = v2;
  v109[2] = v7;
  v109[3] = v4;
  v110[2] = v8;
  v110[3] = @"inputTRCs2";
  v71 = v110[0];
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:4];
  v122 = v67;
  v118[4] = @"inputTRCs3";
  v107[0] = v5;
  v11 = objc_opt_class();
  v108[0] = NSStringFromClass(v11);
  v108[1] = &unk_284958B88;
  v107[1] = v2;
  v107[2] = v7;
  v107[3] = v4;
  v108[2] = v8;
  v108[3] = @"inputTRCs3";
  v70 = v108[0];
  v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:4];
  v118[5] = @"inputTRCs4";
  v105[0] = v5;
  v66 = v123;
  v12 = objc_opt_class();
  v64 = NSStringFromClass(v12);
  v106[0] = v64;
  v106[1] = &unk_284958B88;
  v105[1] = v2;
  v105[2] = v4;
  v105[3] = v7;
  v106[2] = @"inputTRCs4";
  v106[3] = v8;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:4];
  v124 = v65;
  v118[6] = @"inputTRCy1";
  v103[0] = v5;
  v13 = objc_opt_class();
  v62 = NSStringFromClass(v13);
  v104[0] = v62;
  v104[1] = &unk_284958B98;
  v103[1] = v2;
  v103[2] = v7;
  v103[3] = v4;
  v104[2] = v8;
  v104[3] = @"inputTRCy1";
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:4];
  v125 = v63;
  v118[7] = @"inputTRCy2";
  v101[0] = v5;
  v14 = objc_opt_class();
  v60 = NSStringFromClass(v14);
  v102[0] = v60;
  v102[1] = &unk_284958BA8;
  v101[1] = v2;
  v101[2] = v7;
  v101[3] = v4;
  v102[2] = v8;
  v102[3] = @"inputTRCy2";
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:4];
  v126 = v61;
  v118[8] = @"inputTRCy3";
  v99[0] = v5;
  v15 = objc_opt_class();
  v58 = NSStringFromClass(v15);
  v100[0] = v58;
  v100[1] = &unk_284958BB8;
  v99[1] = v2;
  v99[2] = v7;
  v99[3] = v4;
  v100[2] = v8;
  v100[3] = @"inputTRCy3";
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:4];
  v127 = v59;
  v118[9] = @"inputTRCy4";
  v97[0] = v5;
  v16 = objc_opt_class();
  v56 = NSStringFromClass(v16);
  v98[0] = v56;
  v98[1] = &unk_284958B88;
  v97[1] = v2;
  v97[2] = v7;
  v97[3] = v4;
  v98[2] = v8;
  v98[3] = @"inputTRCy4";
  v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:4];
  v118[10] = @"inputBoostAmount";
  v95[0] = v5;
  v57 = v128;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = *MEMORY[0x277CBF7D0];
  v54 = v18;
  v96[0] = v18;
  v96[1] = &unk_284958BC8;
  v20 = *MEMORY[0x277CBF7C8];
  v95[1] = v19;
  v95[2] = v20;
  v96[2] = &unk_284958B88;
  v96[3] = &unk_284958B88;
  v95[3] = v2;
  v95[4] = v7;
  v95[5] = v4;
  v96[4] = v8;
  v96[5] = @"inputBoostAmount";
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:6];
  v129 = v55;
  v118[11] = @"inputBoostShadowAmount";
  v93[0] = v5;
  v21 = objc_opt_class();
  v52 = NSStringFromClass(v21);
  v94[0] = v52;
  v94[1] = &unk_284958BC8;
  v93[1] = v19;
  v93[2] = v20;
  v94[2] = &unk_284958BD8;
  v94[3] = &unk_284958B88;
  v93[3] = v2;
  v93[4] = v7;
  v93[5] = v4;
  v94[4] = v8;
  v94[5] = @"inputBoostShadowAmount";
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:6];
  v130 = v53;
  v118[12] = @"inputBoostPreserveHueAmount";
  v91[0] = v5;
  v22 = objc_opt_class();
  v50 = NSStringFromClass(v22);
  v92[0] = v50;
  v92[1] = &unk_284958BC8;
  v91[1] = v19;
  v91[2] = v20;
  v92[2] = &unk_284958B88;
  v92[3] = &unk_284958BC8;
  v91[3] = v2;
  v91[4] = v7;
  v91[5] = v4;
  v92[4] = v8;
  v92[5] = @"inputBoostPreserveHueAmount";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:6];
  v131 = v51;
  v118[13] = @"inputBoostHDRAmount";
  v89[0] = v5;
  v23 = objc_opt_class();
  v48 = NSStringFromClass(v23);
  v90[0] = v48;
  v90[1] = &unk_284958B88;
  v89[1] = v19;
  v89[2] = v20;
  v90[2] = &unk_284958BE8;
  v90[3] = &unk_284958B88;
  v89[3] = v2;
  v89[4] = v7;
  v89[5] = v4;
  v90[4] = v8;
  v90[5] = @"inputBoostHDRAmount";
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:6];
  v132 = v49;
  v118[14] = @"inputVersion";
  v87[0] = v5;
  v24 = objc_opt_class();
  v46 = NSStringFromClass(v24);
  v88[0] = v46;
  v88[1] = &unk_284958BD8;
  v87[1] = v19;
  v87[2] = v20;
  v88[2] = &unk_284958BE8;
  v88[3] = &unk_284958BE8;
  v87[3] = v2;
  v87[4] = v7;
  v87[5] = v4;
  v88[4] = v8;
  v88[5] = @"inputVersion";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:6];
  v133 = v47;
  v118[15] = @"inputBoostPreserveRYHueAmount";
  v85[0] = v5;
  v25 = objc_opt_class();
  v44 = NSStringFromClass(v25);
  v86[0] = v44;
  v86[1] = &unk_284958BC8;
  v85[1] = v19;
  v85[2] = v20;
  v86[2] = &unk_284958B88;
  v86[3] = &unk_284958BF8;
  v85[3] = v2;
  v85[4] = v7;
  v85[5] = v4;
  v86[4] = v8;
  v86[5] = @"inputBoostPreserveRYHueAmount";
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:6];
  v134 = v45;
  v118[16] = @"inputBoostPreserveYGHueAmount";
  v83[0] = v5;
  v26 = objc_opt_class();
  v42 = NSStringFromClass(v26);
  v84[0] = v42;
  v84[1] = &unk_284958BC8;
  v83[1] = v19;
  v83[2] = v20;
  v84[2] = &unk_284958B88;
  v84[3] = &unk_284958BC8;
  v83[3] = v2;
  v83[4] = v7;
  v83[5] = v4;
  v84[4] = v8;
  v84[5] = @"inputBoostPreserveYGHueAmount";
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:6];
  v135 = v43;
  v118[17] = @"inputBoostPreserveGCHueAmount";
  v81[0] = v5;
  v27 = objc_opt_class();
  v40 = NSStringFromClass(v27);
  v82[0] = v40;
  v82[1] = &unk_284958BC8;
  v81[1] = v19;
  v81[2] = v20;
  v82[2] = &unk_284958B88;
  v82[3] = &unk_284958BC8;
  v81[3] = v2;
  v81[4] = v7;
  v81[5] = v4;
  v82[4] = v8;
  v82[5] = @"inputBoostPreserveGCHueAmount";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:6];
  v136 = v41;
  v118[18] = @"inputBoostPreserveCBHueAmount";
  v79[0] = v5;
  v28 = objc_opt_class();
  v38 = NSStringFromClass(v28);
  v80[0] = v38;
  v80[1] = &unk_284958BC8;
  v79[1] = v19;
  v79[2] = v20;
  v80[2] = &unk_284958B88;
  v80[3] = &unk_284958BC8;
  v79[3] = v2;
  v79[4] = v7;
  v79[5] = v4;
  v80[4] = v8;
  v80[5] = @"inputBoostPreserveCBHueAmount";
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:6];
  v137 = v39;
  v118[19] = @"inputBoostPreserveBMHueAmount";
  v77[0] = v5;
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v78[0] = v30;
  v78[1] = &unk_284958BC8;
  v77[1] = v19;
  v77[2] = v20;
  v78[2] = &unk_284958B88;
  v78[3] = &unk_284958BC8;
  v77[3] = v2;
  v77[4] = v7;
  v77[5] = v4;
  v78[4] = v8;
  v78[5] = @"inputBoostPreserveBMHueAmount";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:6];
  v138 = v31;
  v118[20] = @"inputBoostPreserveMRHueAmount";
  v75[0] = v5;
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v76[0] = v33;
  v76[1] = &unk_284958BC8;
  v75[1] = v19;
  v75[2] = v20;
  v76[2] = &unk_284958B88;
  v76[3] = &unk_284958BC8;
  v75[3] = v2;
  v75[4] = v7;
  v75[5] = v4;
  v76[4] = v8;
  v76[5] = @"inputBoostPreserveMRHueAmount";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:6];
  v118[21] = @"kCIRAWFilterDoesClip";
  v35 = *MEMORY[0x277CBED10];
  v139 = v34;
  v140 = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:v118 count:22];

  return v36;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (id)outputImage
{
  v173[3] = *MEMORY[0x277D85DE8];
  inputImage = self->inputImage;
  if (inputImage)
  {
    if (!self->inputBoostAmount)
    {
      v26 = inputImage;
      goto LABEL_70;
    }

    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWAdjustColorTRC", &unk_233945DBE, buf, 2u);
    }

    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = sub_23387E9A0;
    v163[3] = &unk_2789EE800;
    v163[4] = self;
    v138 = MEMORY[0x2383AC810](v163);
    [(NSNumber *)self->inputBoostPreserveHueAmount floatValue];
    v6 = v5;
    [(NSNumber *)self->inputBoostAmount doubleValue];
    v8 = v7;
    [(NSNumber *)self->inputBoostShadowAmount doubleValue];
    v10 = v9;
    [(NSNumber *)self->inputBoostHDRAmount doubleValue];
    v12 = v11;
    [(NSNumber *)self->inputTRCs0 doubleValue];
    v14 = fmin(fmax(v8, 0.0), 1.0);
    v15 = fmin(fmax(v10, 0.0), 1.0);
    v16 = 1.0;
    if (v14 > 0.0)
    {
      v16 = v15 * v13;
      if (v14 < 1.0)
      {
        v16 = 1.0 - v14 + v16 * v14;
      }
    }

    [(NSNumber *)self->inputTRCs1 doubleValue];
    v18 = 1.0;
    if (v14 > 0.0)
    {
      v18 = v17;
      if (v14 < 1.0)
      {
        v18 = 1.0 - v14 + v17 * v14;
      }
    }

    [(NSNumber *)self->inputTRCs2 doubleValue];
    v144 = 1.0;
    if (v14 > 0.0)
    {
      v144 = v19;
      if (v14 < 1.0)
      {
        v144 = 1.0 - v14 + v19 * v14;
      }
    }

    [(NSNumber *)self->inputTRCs3 doubleValue];
    v21 = 1.0;
    if (v14 > 0.0)
    {
      v21 = v20;
      if (v14 < 1.0)
      {
        v21 = 1.0 - v14 + v20 * v14;
      }
    }

    [(NSNumber *)self->inputTRCs4 doubleValue];
    v133 = v15;
    v23 = 1.0;
    if (v14 > 0.0)
    {
      v23 = v22;
      if (v14 < 1.0)
      {
        v23 = 1.0 - v14 + v22 * v14;
      }
    }

    [(NSNumber *)self->inputTRCy1 doubleValue];
    v146 = v16;
    if (v14 <= 0.0)
    {
      v25 = 0.1;
    }

    else
    {
      v25 = v24;
      if (v14 < 1.0)
      {
        v25 = (1.0 - v14) * 0.1 + v24 * v14;
      }
    }

    [(NSNumber *)self->inputTRCy2 doubleValue];
    if (v14 <= 0.0)
    {
      v28 = 0.2;
    }

    else
    {
      v28 = v27;
      if (v14 < 1.0)
      {
        v28 = (1.0 - v14) * 0.2 + v27 * v14;
      }
    }

    v132 = v12;
    [(NSNumber *)self->inputTRCy3 doubleValue];
    v30 = 0.5;
    if (v14 > 0.0)
    {
      v30 = v29;
      if (v14 < 1.0)
      {
        v30 = (1.0 - v14) * 0.5 + v29 * v14;
      }
    }

    v139 = v23;
    [(NSNumber *)self->inputTRCy4 doubleValue];
    v32 = 1.0;
    if (v14 > 0.0)
    {
      v32 = v31;
      if (v14 < 1.0)
      {
        v32 = 1.0 - v14 + v31 * v14;
      }
    }

    intValue = [(NSNumber *)self->inputVersion intValue];
    v142 = self->inputImage;
    inputReferencePoints = self->inputReferencePoints;
    v140 = intValue;
    if (inputReferencePoints)
    {
      if ([(CIVector *)inputReferencePoints count]>= 2)
      {
        inputOutputPoints = self->inputOutputPoints;
        if (inputOutputPoints)
        {
          v36 = [(CIVector *)inputOutputPoints count];
          if (v36 == [(CIVector *)self->inputReferencePoints count])
          {
            v37 = self->inputReferencePoints;
            v148 = self->inputOutputPoints;
            v38 = [(CIVector *)v37 count];
            [(CIVector *)v37 valueAtIndex:v38 - 1];
            v40 = v39;
            [(CIVector *)v148 valueAtIndex:v38 - 1];
            v42 = v41;
            [(CIVector *)v37 valueAtIndex:v38 - 2];
            v44 = v43;
            [(CIVector *)v148 valueAtIndex:v38 - 2];
            v46 = v45;
            v159[0] = MEMORY[0x277D85DD0];
            v159[1] = 3221225472;
            v159[2] = sub_23387EA28;
            v159[3] = &unk_2789EF870;
            v162 = v38;
            v145 = v37;
            v160 = v145;
            v147 = v148;
            v161 = v147;
            v154 = MEMORY[0x2383AC810](v159);
            v156 = [MEMORY[0x277CBEB28] dataWithLength:16 * v38];
            v47 = v156;
            mutableBytes = [v156 mutableBytes];
            if (v38 <= 4)
            {
              if (v38)
              {
                for (i = 0; i != v38; ++i)
                {
                  [(CIVector *)v145 valueAtIndex:i];
                  mutableBytes[i] = v89;
                  [(CIVector *)v147 valueAtIndex:i];
                  mutableBytes[v38 + i] = v90;
                }
              }
            }

            else
            {
              v49 = v145;
              memcpy(mutableBytes, [(CIVector *)v145 _values], 8 * v38);
              v50 = v147;
              memcpy(&mutableBytes[v38], [(CIVector *)v147 _values], 8 * v38);
            }

            v91 = *MEMORY[0x277CBFA78];
            v172[0] = *MEMORY[0x277CBFA70];
            v172[1] = v91;
            v173[0] = v156;
            v173[1] = @"RAWAdjustColorTRC";
            v172[2] = *MEMORY[0x277CBFA38];
            v173[2] = MEMORY[0x277CBEC38];
            v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:3];
            v92 = objc_alloc(MEMORY[0x277CBF758]);
            v93 = [v92 initWithImageProvider:v154 width:256 height:1 format:*MEMORY[0x277CBF9F8] colorSpace:0 options:v151];
            v153 = [MEMORY[0x277CBF788] vectorWithX:256.0 Y:v14 Z:v133 W:0.0];
            v94 = [MEMORY[0x277CBF788] vectorWithX:v40 Y:v42 Z:(v42 - v46) / (v40 - v44)];
            v95 = v142;
            [v93 extent];
            v97 = v96;
            v99 = v98;
            v101 = v100;
            v103 = v102;
            inputColorSpace = self->inputColorSpace;
            if (inputColorSpace)
            {
              v95 = [(CIImage *)v142 imageByColorMatchingWorkingSpaceToColorSpace:self->inputColorSpace];
            }

            v143 = v95;
            v105 = [BoostKernels kernelWithName:@"boost_lut"];
            [v95 extent];
            v107 = v106;
            v109 = v108;
            v111 = v110;
            v113 = v112;
            v158[0] = MEMORY[0x277D85DD0];
            v158[1] = 3221225472;
            v158[2] = sub_23387EBF0;
            v158[3] = &unk_2789EF848;
            v158[4] = v97;
            v158[5] = v99;
            v158[6] = v101;
            v158[7] = v103;
            v171[0] = v95;
            v171[1] = v93;
            v171[2] = v153;
            v171[3] = v94;
            v114 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:4];
            v115 = [v105 applyWithExtent:v158 roiCallback:v114 arguments:{v107, v109, v111, v113}];

            v116 = fmin(fmax(v132, 1.0), 3.0);
            if (v116 > 1.0)
            {
              v117 = [BoostKernels kernelWithName:@"boost_hdr"];
              [v115 extent];
              v119 = v118;
              v121 = v120;
              v123 = v122;
              v125 = v124;
              v170[0] = v115;
              v126 = [MEMORY[0x277CCABB0] numberWithDouble:v116];
              v170[1] = v126;
              v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:2];
              v128 = [v117 applyWithExtent:v127 arguments:{v119, v121, v123, v125}];

              v115 = v128;
            }

            if (inputColorSpace)
            {
              v129 = v115;
              v115 = [v115 imageByColorMatchingColorSpaceToWorkingSpace:inputColorSpace];
            }

            v26 = v115;

            v66 = v160;
            goto LABEL_58;
          }
        }
      }
    }

    v135 = fmin(fmax(v6, 0.0), 1.0);
    if (intValue < 7)
    {
      if (intValue < 5)
      {
        v78 = [MEMORY[0x277CBF788] vectorWithX:0.100000001 Y:0.200000003 Z:0.5 W:1.0];
        v147 = [MEMORY[0x277CBF788] vectorWithX:v25 * 1000.0 * (v18 * 0.1 / v25 + v146 * 0.1 / v25 + -2.0) Y:v25 * 100.0 * (1.0 - (v146 * 0.1 / v25 + v18 * 0.1 / v25 + v146 * 0.1 / v25 + -2.0)) Z:v25 * 10.0 * (v146 * 0.1 / v25) W:0.0];
        v79 = v18 * 0.1 / (v28 - v25);
        v80 = v144 * 0.1 / (v28 - v25) + v79 + -2.0;
        v81 = [MEMORY[0x277CBF788] vectorWithX:(v28 - v25) * v80 * 1000.0 Y:(v28 - v25) * ((1.0 - (v79 + v80)) * 100.0 + v80 * -300.0) Z:(v28 - v25) * ((1.0 - (v79 + v80)) * -20.0 + v80 * 30.0 + v79 * 10.0) W:v25 + (v28 - v25) * (1.0 - (v79 + v80) - v80 - v79)];
        v82 = v144 * 0.3 / (v30 - v28);
        v83 = v21 * 0.3 / (v30 - v28) + v82 + -2.0;
        v84 = [MEMORY[0x277CBF788] vectorWithX:(v30 - v28) * v83 * 1000.0 / 27.0 Y:(v30 - v28) * ((1.0 - (v82 + v83)) * 100.0 / 9.0 + v83 * -200.0 / 9.0) Z:(v30 - v28) * (v82 * 10.0 / 3.0 + v83 * 40.0 / 9.0 - (1.0 - (v82 + v83)) * 40.0 / 9.0) W:v28 + (v30 - v28) * ((1.0 - (v82 + v83)) * 4.0 / 9.0 - v83 * 8.0 / 27.0 - (v82 + v82) / 3.0)];
        v85 = v21 * 0.5 / (1.0 - v30);
        v86 = v139 * 0.5 / (1.0 - v30) + v85 + -2.0;
        v68 = [MEMORY[0x277CBF788] vectorWithX:(1.0 - v30) * v86 * 8.0 Y:(1.0 - v30) * ((1.0 - (v85 + v86)) * 4.0 + v86 * -12.0) Z:(1.0 - v30) * (v85 * 2.0 - ((1.0 - (v85 + v86)) * 4.0 - v86 * 6.0)) W:v30 + (1.0 - v30) * (1.0 - (v85 + v86) - v86 - v85)];
        v155 = [MEMORY[0x277CCABB0] numberWithDouble:v139];
        [MEMORY[0x277CCABB0] numberWithDouble:v135];
        v134 = v84;
        v145 = v78;
        v141 = v69 = v140 < 3;
        if (v69)
        {
          v66 = v81;
          if (v135 >= 1.0)
          {
            v135 = [BoostKernels kernelWithName:@"boost_v2_dng", 1.0, v135];
            v166[0] = v78;
            v166[1] = v147;
            v166[2] = v81;
            v166[3] = v134;
            v166[4] = v68;
            v166[5] = v155;
            v72 = v134;
            v77 = v155;
            [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:6];
          }

          else
          {
            v135 = [BoostKernels kernelWithName:@"boost_v2", 1.0, v135];
            v165[0] = v78;
            v165[1] = v147;
            v165[2] = v81;
            v165[3] = v134;
            v165[4] = v68;
            v165[5] = v155;
            v165[6] = v141;
            v72 = v134;
            v77 = v155;
            [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:7];
          }
          v71 = ;
          v70 = v135;
          v87 = [(RAWFilter *)self apply:v135 image:v142 arguments:v71 inoutSpace:self->inputColorSpace isPremultiplied:1];
        }

        else
        {
          v66 = v81;
          v136 = [BoostKernels kernelWithName:@"boost_v3"];
          v167[0] = v78;
          v167[1] = v147;
          v167[2] = v81;
          v167[3] = v134;
          v167[4] = v68;
          v167[5] = v155;
          v167[6] = v141;
          v72 = v134;
          v77 = v155;
          v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:7];
          v70 = v136;
          v87 = [(RAWFilter *)self apply:v136 image:v142 arguments:v71 inoutSpace:self->inputColorSpace isPremultiplied:1];
        }

        v76 = v87;
        v75 = v142;
        goto LABEL_57;
      }

      v149 = 0;
      v150 = 0;
    }

    else
    {
      v51 = MEMORY[0x277CBF788];
      [(NSNumber *)self->inputBoostPreserveRYHueAmount floatValue];
      v53 = v52;
      [(NSNumber *)self->inputBoostPreserveYGHueAmount floatValue];
      v55 = v54;
      [(NSNumber *)self->inputBoostPreserveGCHueAmount floatValue];
      v57 = [v51 vectorWithX:fminf(fmaxf(v53 Y:0.0) Z:{1.0), fminf(fmaxf(v55, 0.0), 1.0), fminf(fmaxf(v56, 0.0), 1.0)}];
      v58 = MEMORY[0x277CBF788];
      [(NSNumber *)self->inputBoostPreserveCBHueAmount floatValue];
      v60 = v59;
      [(NSNumber *)self->inputBoostPreserveBMHueAmount floatValue];
      v62 = v61;
      [(NSNumber *)self->inputBoostPreserveMRHueAmount floatValue];
      [v58 vectorWithX:fminf(fmaxf(v60 Y:0.0) Z:{1.0), fminf(fmaxf(v62, 0.0), 1.0), fminf(fmaxf(v63, 0.0), 1.0)}];
      v150 = v149 = v57;
    }

    v64 = [MEMORY[0x277CBF788] vectorWithX:0.100000001 Y:0.200000003 Z:0.5 W:1.0];
    v65 = sub_2337FC300(0.0, 0.0, v146, 0.1, v25, v18);
    v66 = sub_2337FC300(0.1, v25, v18, 0.2, v28, v144);
    v67 = sub_2337FC300(0.2, v28, v144, 0.5, v30, v21);
    v68 = sub_2337FC300(0.5, v30, v21, 1.0, v32, v139);
    v152 = sub_2337FC300(0.5, v30, v21, 1.0, v30 + v21 * 0.5, v21);
    [MEMORY[0x277CCABB0] numberWithDouble:v135];
    v145 = v64;
    v147 = v65;
    v141 = v69 = v140 < 7;
    if (v69)
    {
      v131 = [BoostKernels kernelWithName:@"boost_v5"];
      v168[0] = v64;
      v168[1] = v65;
      v168[2] = v66;
      v168[3] = v67;
      v168[4] = v68;
      v168[5] = v152;
      v168[6] = v141;
      v72 = v67;
      v73 = v152;
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:7];
      v75 = v131;
      v70 = v149;
      v71 = v150;
    }

    else
    {
      v131 = [BoostKernels kernelWithName:@"boost_v7"];
      v169[0] = v64;
      v169[1] = v65;
      v169[2] = v66;
      v169[3] = v67;
      v169[4] = v68;
      v169[5] = v152;
      v169[6] = v141;
      v70 = v149;
      v71 = v150;
      v169[7] = v149;
      v169[8] = v150;
      v72 = v67;
      v73 = v152;
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:9];
      v75 = v131;
    }

    v76 = [(RAWFilter *)self apply:v131 image:v142 arguments:v74 inoutSpace:self->inputColorSpace isPremultiplied:1];

    v77 = v73;
LABEL_57:

    v26 = v76;
LABEL_58:

    v138[2](v138);
    goto LABEL_70;
  }

  v26 = 0;
LABEL_70:

  return v26;
}

@end