@interface RAWProfileGainTableMap
- (id)gainImage;
- (id)outputImage;
@end

@implementation RAWProfileGainTableMap

- (id)gainImage
{
  v19[3] = *MEMORY[0x277D85DE8];
  unsignedLongValue = [(NSNumber *)self->inputMapPointsH unsignedLongValue];
  unsignedLongValue2 = [(NSNumber *)self->inputMapPointsV unsignedLongValue];
  v5 = [(NSNumber *)self->inputMapPointsN unsignedLongValue]* unsignedLongValue;
  inputGainData = self->inputGainData;
  v7 = *MEMORY[0x277CBFA78];
  v18[0] = *MEMORY[0x277CBFA70];
  v18[1] = v7;
  v19[0] = inputGainData;
  v19[1] = @"RAWProfileGainTableMap";
  v18[2] = *MEMORY[0x277CBFA38];
  v19[2] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v9 = self->inputGainData;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2337E4A6C;
  v15[3] = &unk_2789EF0F0;
  v16 = v9;
  v17 = 4 * v5;
  v10 = v9;
  v11 = MEMORY[0x2383AC810](v15);
  v12 = objc_alloc(MEMORY[0x277CBF758]);
  v13 = [v12 initWithImageProvider:v11 width:v5 height:unsignedLongValue2 format:*MEMORY[0x277CBF9F8] colorSpace:0 options:v8];

  return v13;
}

- (id)outputImage
{
  v75[8] = *MEMORY[0x277D85DE8];
  if (qword_27DE37DD0 != -1)
  {
    sub_2338FC340();
  }

  if (!qword_27DE37DD8)
  {
    v23 = sub_2338C04C8(self, a2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_2338FC398(v23);
    }

    inputImage = self->inputImage;
    goto LABEL_21;
  }

  [(CIImage *)self->inputImage extent];
  x = v77.origin.x;
  y = v77.origin.y;
  width = v77.size.width;
  height = v77.size.height;
  if (CGRectIsEmpty(v77) || (v78.origin.x = x, v78.origin.y = y, v78.size.width = width, v78.size.height = height, CGRectIsInfinite(v78)) || ([(NSNumber *)self->inputStrength floatValue], fminf(fmaxf(v7, 0.0), 1.0) <= 0.0) || (v79.origin.x = x, v79.origin.y = y, v79.size.width = width, v79.size.height = height, CGRectIsEmpty(v79)) || (v80.origin.x = x, v80.origin.y = y, v80.size.width = width, v80.size.height = height, CGRectIsInfinite(v80)))
  {
LABEL_20:
    inputImage = self->inputImage;
LABEL_21:
    v26 = inputImage;
    goto LABEL_22;
  }

  unsignedLongValue = [(NSNumber *)self->inputMapPointsH unsignedLongValue];
  unsignedLongValue2 = [(NSNumber *)self->inputMapPointsV unsignedLongValue];
  unsignedLongValue3 = [(NSNumber *)self->inputMapPointsN unsignedLongValue];
  [(NSNumber *)self->inputMapSpacingH doubleValue];
  v12 = v11;
  [(NSNumber *)self->inputMapSpacingV doubleValue];
  v14 = v13;
  [(NSNumber *)self->inputMapOriginH doubleValue];
  v16 = v15;
  doubleValue = [(NSNumber *)self->inputMapOriginV doubleValue];
  v20 = unsignedLongValue2 * unsignedLongValue * unsignedLongValue3;
  if (!v20 || (v21 = v19, (doubleValue = [(NSData *)self->inputGainData length]) == 0) || (doubleValue = [(NSData *)self->inputGainData length], doubleValue != 4 * v20))
  {
    v25 = sub_2338C04C8(doubleValue, v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_2338FC354(v25);
    }

    goto LABEL_20;
  }

  v60 = v16;
  v22 = unsignedLongValue;
  if (v12 <= 1.0)
  {
    v58 = v12;
  }

  else
  {
    v58 = 1.0 / v22;
    v60 = 0.5 / v22;
  }

  v28 = unsignedLongValue2;
  if (v14 > 1.0)
  {
    v14 = 1.0 / v28;
    v21 = 0.5 / v28;
  }

  memset(&v74, 0, sizeof(v74));
  v73.a = v58 * v22;
  v73.b = 0.0;
  v73.c = 0.0;
  v54 = 1.0 - (v21 + v14 * (unsignedLongValue2 - 1));
  v73.d = v14 * v28;
  v73.tx = v60 - v58 * 0.5;
  v73.ty = v54 - v14 * 0.5;
  CGAffineTransformInvert(&v74, &v73);
  memset(&v73, 0, sizeof(v73));
  CGAffineTransformMakeScale(&v73, 1.0 / width, 1.0 / height);
  memset(&v72, 0, sizeof(v72));
  CGAffineTransformMakeScale(&v72, unsignedLongValue, unsignedLongValue2);
  memset(&v71, 0, sizeof(v71));
  t1 = v73;
  t2 = v74;
  CGAffineTransformConcat(&v70, &t1, &t2);
  t1 = v72;
  v29 = CGAffineTransformConcat(&v71, &v70, &t1);
  v30 = sub_23378E104(v29);
  v31 = v30;
  if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v30))
  {
    LOWORD(v70.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v31, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWProfileGainTableMap", &unk_233945DBE, &v70, 2u);
  }

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_2337E5288;
  v67[3] = &unk_2789EE800;
  v67[4] = self;
  v57 = MEMORY[0x2383AC810](v67);
  gainImage = [(RAWProfileGainTableMap *)self gainImage];
  v61 = [MEMORY[0x277CBF788] vectorWithX:width * v60 Y:height * v54 Z:width * v58 W:height * v14];
  v32 = MEMORY[0x277CBF788];
  [(CIVector *)self->inputWeights valueAtIndex:0];
  v34 = v33;
  [(CIVector *)self->inputWeights valueAtIndex:1];
  v36 = v35;
  [(CIVector *)self->inputWeights valueAtIndex:2];
  v59 = [v32 vectorWithX:v34 Y:v36 Z:v37];
  v38 = MEMORY[0x277CBF788];
  [(CIVector *)self->inputWeights valueAtIndex:3];
  v40 = v39;
  [(CIVector *)self->inputWeights valueAtIndex:4];
  v55 = [v38 vectorWithX:v40 Y:v41];
  v42 = [MEMORY[0x277CBF788] vectorWithX:unsignedLongValue Y:unsignedLongValue2 Z:unsignedLongValue3];
  v43 = self->inputImage;
  v44 = v43;
  inputColorSpace = self->inputColorSpace;
  if (inputColorSpace)
  {
    v46 = [(CIImage *)v43 imageByColorMatchingWorkingSpaceToColorSpace:self->inputColorSpace];

    v44 = v46;
  }

  v47 = qword_27DE37DD8;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_2337E5310;
  v62[3] = &unk_2789EF110;
  v63 = v71;
  v64 = unsignedLongValue;
  v65 = unsignedLongValue2;
  v66 = unsignedLongValue3;
  v75[0] = v44;
  v75[1] = gainImage;
  v75[2] = v61;
  v75[3] = v42;
  v75[4] = v59;
  v75[5] = v55;
  v48 = MEMORY[0x277CCABB0];
  [(NSNumber *)self->inputGamma floatValue];
  v49 = [v48 numberWithFloat:?];
  v75[6] = v49;
  v50 = MEMORY[0x277CCABB0];
  [(NSNumber *)self->inputStrength floatValue];
  v51 = [v50 numberWithFloat:?];
  v75[7] = v51;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:8];
  v26 = [v47 applyWithExtent:v62 roiCallback:v52 arguments:{x, y, width, height}];

  if (inputColorSpace)
  {
    v53 = [(CIImage *)v26 imageByColorMatchingColorSpaceToWorkingSpace:inputColorSpace];

    v26 = v53;
  }

  v57[2]();
LABEL_22:

  return v26;
}

@end