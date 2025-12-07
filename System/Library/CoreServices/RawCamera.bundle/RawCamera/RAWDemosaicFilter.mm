@interface RAWDemosaicFilter
- (CGRect)regionOf:(int)of destRect:(CGRect)rect userInfo:(id)info;
- (id)blacks;
- (id)crop;
- (id)exposureFactor;
- (id)noiseModel;
- (id)outputImage;
- (id)phaseFor:(int)for;
- (id)phaseForBayer;
- (id)phaseForQuadra;
- (id)phaseForXtrans;
- (id)range;
- (int)forceVersion;
- (int)sensorType;
- (int)versionfor:(int)versionfor;
@end

@implementation RAWDemosaicFilter

- (int)forceVersion
{
  v2 = getenv(qword_27DE37C60);
  if (!v2)
  {
    return -1;
  }

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  intValue = [v3 intValue];

  return intValue;
}

- (CGRect)regionOf:(int)of destRect:(CGRect)rect userInfo:(id)info
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  infoCopy = info;
  v10 = [infoCopy objectAtIndexedSubscript:2];
  [v10 floatValue];
  v12 = v11;

  v13 = [infoCopy objectAtIndexedSubscript:3];
  [v13 floatValue];
  v15 = v14;

  v34.origin.x = x + v12;
  v34.origin.y = y + v15;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectInset(v34, -1.0, -1.0);
  v16 = v35.origin.x;
  v17 = v35.origin.y;
  v18 = v35.size.width;
  v19 = v35.size.height;
  v20 = [infoCopy objectAtIndexedSubscript:0];
  [v20 floatValue];
  v22 = v21;

  v23 = [infoCopy objectAtIndexedSubscript:1];
  [v23 floatValue];
  v25 = v24;

  v39.size.width = v22;
  v39.size.height = v25;
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v36.origin.x = v16;
  v36.origin.y = v17;
  v36.size.width = v18;
  v36.size.height = v19;
  v37 = CGRectIntersection(v36, v39);
  v26 = v37.origin.x;
  v27 = v37.origin.y;
  v28 = v37.size.width;
  v29 = v37.size.height;

  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (id)crop
{
  [(CIImage *)self->inputImage extent];
  v7 = v6;
  inputCropRect = self->inputCropRect;
  if (inputCropRect)
  {
    [(CIVector *)inputCropRect X];
    v10 = v9;
    [(CIVector *)self->inputCropRect Y];
    v12 = v11;
    [(CIVector *)self->inputCropRect W];
    v14 = v7 - (v12 + v13);
    [(CIVector *)self->inputCropRect Z];
    v16 = v15;
    [(CIVector *)self->inputCropRect W];
    v7 = v17;
  }

  else
  {
    v10 = v3;
    v14 = v4;
    v16 = v5;
  }

  v18 = MEMORY[0x277CBF788];

  return [v18 vectorWithX:v10 Y:v14 Z:v16 W:v7];
}

- (id)range
{
  v2 = MEMORY[0x277CCABB0];
  [(NSNumber *)self->inputRange floatValue];
  *&v3 = 65535.0 / *&v3;

  return [v2 numberWithFloat:v3];
}

- (id)blacks
{
  v3 = MEMORY[0x277CBF788];
  [(CIVector *)self->inputBlacks X];
  v5 = fmax(v4, 0.0) / 65535.0;
  [(CIVector *)self->inputBlacks Y];
  v7 = fmax(v6, 0.0) / 65535.0;
  [(CIVector *)self->inputBlacks Z];
  v9 = fmax(v8, 0.0) / 65535.0;
  [(CIVector *)self->inputBlacks W];
  v11 = fmax(v10, 0.0) / 65535.0;

  return [v3 vectorWithX:v5 Y:v7 Z:v9 W:v11];
}

- (id)noiseModel
{
  inputRepresentativeNoise = self->inputRepresentativeNoise;
  if (!inputRepresentativeNoise)
  {
    inputRepresentativeNoise = &unk_284958B68;
  }

  v4 = inputRepresentativeNoise;
  inputNoiseModel = self->inputNoiseModel;
  if (inputNoiseModel)
  {
    v6 = inputNoiseModel;
  }

  else
  {
    v6 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0];
  }

  v7 = v6;
  if (!self->inputNoiseModel && self->inputRepresentativeNoise)
  {
    v8 = MEMORY[0x277CBF788];
    [(NSNumber *)v4 floatValue];
    v10 = [v8 vectorWithX:0.0 Y:((v9 / 100.0) * 1.0954)];

    v7 = v10;
  }

  v11 = MEMORY[0x277CBF788];
  [(NSNumber *)v4 floatValue];
  v13 = v12;
  [v7 X];
  v15 = v14;
  [v7 Y];
  v17 = [v11 vectorWithX:v13 Y:v15 Z:v16];

  return v17;
}

- (id)exposureFactor
{
  v2 = MEMORY[0x277CCABB0];
  [(NSNumber *)self->inputBaselineExposure floatValue];
  *&v4 = exp2f(v3) + 1.0;

  return [v2 numberWithFloat:v4];
}

- (int)versionfor:(int)versionfor
{
  intValue = [(NSNumber *)self->inputVersion intValue];
  if (intValue)
  {
    v5 = intValue;
  }

  else
  {
    v5 = -1;
  }

  if (v5 <= 7)
  {
    v6 = 7;
  }

  else
  {
    v6 = 8;
  }

  if (!versionfor)
  {
    v5 = v6;
  }

  if (versionfor == 1)
  {
    v5 = v6;
  }

  if (versionfor == 2)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (id)phaseFor:(int)for
{
  if (for == 2)
  {
    phaseForXtrans = [(RAWDemosaicFilter *)self phaseForXtrans];
  }

  else if (for == 1)
  {
    phaseForXtrans = [(RAWDemosaicFilter *)self phaseForQuadra];
  }

  else
  {
    if (for)
    {
      [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0];
    }

    else
    {
      [(RAWDemosaicFilter *)self phaseForBayer];
    }
    phaseForXtrans = ;
  }

  return phaseForXtrans;
}

- (id)phaseForXtrans
{
  v30[18] = *MEMORY[0x277D85DE8];
  intValue = [(NSNumber *)self->inputPattern intValue];
  v4 = intValue & 0x7F;
  if (v4 < 0x13)
  {
    [(CIImage *)self->inputImage extent];
    v7 = llround(v6) % 6;
    v8 = ~v7;
    v29 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:v8];
    v30[0] = v29;
    v28 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:v8];
    v30[1] = v28;
    v27 = [MEMORY[0x277CBF788] vectorWithX:3.0 Y:v8];
    v30[2] = v27;
    v26 = [MEMORY[0x277CBF788] vectorWithX:4.0 Y:v8];
    v30[3] = v26;
    v25 = [MEMORY[0x277CBF788] vectorWithX:5.0 Y:v8];
    v30[4] = v25;
    v24 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:v8];
    v30[5] = v24;
    v23 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:(-2 - v7)];
    v30[6] = v23;
    v22 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:(-2 - v7)];
    v30[7] = v22;
    v21 = [MEMORY[0x277CBF788] vectorWithX:3.0 Y:(-2 - v7)];
    v30[8] = v21;
    v20 = [MEMORY[0x277CBF788] vectorWithX:4.0 Y:(-2 - v7)];
    v30[9] = v20;
    v9 = [MEMORY[0x277CBF788] vectorWithX:5.0 Y:(-2 - v7)];
    v30[10] = v9;
    v10 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:(-2 - v7)];
    v30[11] = v10;
    v11 = (-3 - v7);
    v12 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:v11];
    v30[12] = v12;
    v13 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:v11];
    v30[13] = v13;
    v14 = [MEMORY[0x277CBF788] vectorWithX:3.0 Y:v11];
    v30[14] = v14;
    v15 = [MEMORY[0x277CBF788] vectorWithX:4.0 Y:v11];
    v30[15] = v15;
    v16 = [MEMORY[0x277CBF788] vectorWithX:5.0 Y:v11];
    v30[16] = v16;
    v17 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:v11];
    v30[17] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:18];
    v5 = [v18 objectAtIndexedSubscript:v4];
  }

  else
  {
    printf("unexpected xtrans pattern %d 0x%x\n", intValue, intValue);
    v5 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0];
  }

  return v5;
}

- (id)phaseForQuadra
{
  [(CIImage *)self->inputImage extent];
  v4 = v3;
  intValue = [(NSNumber *)self->inputPattern intValue];
  v6 = llround(v4) & 1;
  v7 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0];
  if (intValue > 1094795584)
  {
    if (intValue == 1094795585)
    {
      v8 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:(2 * v6)];
      goto LABEL_11;
    }

    if (intValue == 1364283729)
    {
      v8 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:(2 * v6)];
      goto LABEL_11;
    }

LABEL_8:
    printf("unsupported bayer pattern %d 0x%x\n", intValue, intValue);
    goto LABEL_12;
  }

  if (intValue == 336860180)
  {
    v8 = [MEMORY[0x277CBF788] vectorWithX:2.0 Y:((2 * v6) ^ 2u)];
    goto LABEL_11;
  }

  if (intValue != 353703189)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:((2 * v6) ^ 2u)];
LABEL_11:
  v9 = v8;

  v7 = v9;
LABEL_12:

  return v7;
}

- (id)phaseForBayer
{
  [(CIImage *)self->inputImage extent];
  v4 = v3;
  intValue = [(NSNumber *)self->inputPattern intValue];
  v6 = llround(v4) & 1;
  v7 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0];
  if (intValue > 1229539656)
  {
    if (intValue == 1229539657)
    {
      v8 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:v6];
      goto LABEL_11;
    }

    if (intValue == 1633771873)
    {
      v8 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:(v6 ^ 1)];
      goto LABEL_11;
    }

LABEL_8:
    printf("unsupported bayer pattern %d 0x%x\n", intValue, intValue);
    goto LABEL_12;
  }

  if (intValue == -1802201964)
  {
    v8 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:(v6 ^ 1)];
    goto LABEL_11;
  }

  if (intValue != 370546198)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x277CBF788] vectorWithX:1.0 Y:v6];
LABEL_11:
  v9 = v8;

  v7 = v9;
LABEL_12:

  return v7;
}

- (int)sensorType
{
  intValue = [(NSNumber *)self->inputPattern intValue];
  v3 = 0;
  if (intValue <= 1094795584)
  {
    if (intValue <= 353703188)
    {
      if (intValue != -1802201964)
      {
        v4 = 336860180;
        goto LABEL_14;
      }

      return v3;
    }

    if (intValue != 353703189)
    {
      v5 = 370546198;
LABEL_10:
      if (intValue != v5)
      {
        return 2 * (intValue >> 8 == 8487297);
      }

      return v3;
    }

    return 1;
  }

  if (intValue <= 1364283728)
  {
    if (intValue != 1094795585)
    {
      v5 = 1229539657;
      goto LABEL_10;
    }

    return 1;
  }

  if (intValue != 1633771873)
  {
    v4 = 1364283729;
LABEL_14:
    if (intValue == v4)
    {
      return 1;
    }

    return 2 * (intValue >> 8 == 8487297);
  }

  return v3;
}

- (id)outputImage
{
  v103[3] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWDemosaicFilter", &unk_233945DBE, buf, 2u);
    }

    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = sub_2338789E8;
    v92[3] = &unk_2789EE800;
    v92[4] = self;
    v69 = MEMORY[0x2383AC810](v92);
    sensorType = [(RAWDemosaicFilter *)self sensorType];
    v6 = [(RAWDemosaicFilter *)self versionfor:sensorType];
    v88 = [(RAWDemosaicFilter *)self phaseFor:sensorType];
    forceVersion = [(RAWDemosaicFilter *)self forceVersion];
    if (forceVersion >= 0)
    {
      v8 = forceVersion;
    }

    else
    {
      v8 = v6;
    }

    v68 = v8;
    v74 = [DMKernels kernelWithName:@"deXtrans_v7"];
    v73 = [DMKernels kernelWithName:@"deXtrans_v8"];
    v71 = [DMKernels kernelWithName:@"deXtrans_v7_8bit"];
    v82 = [DMKernels kernelWithName:@"deXtrans_draft"];
    v72 = [DMKernels kernelWithName:@"deBayer_v7"];
    v70 = [DMKernels kernelWithName:@"deBayer_v7_8bit"];
    v81 = [DMKernels kernelWithName:@"deBayer_draft"];
    v77 = [DMKernels kernelWithName:@"despeckle_v7"];
    v76 = [DMKernels kernelWithName:@"despeckle_v8"];
    v75 = [DMKernels kernelWithName:@"deBayer_v8"];
    v84 = [DMKernels kernelWithName:@"deQuadra_draft"];
    range = [(RAWDemosaicFilter *)self range];
    exposureFactor = [(RAWDemosaicFilter *)self exposureFactor];
    crop = [(RAWDemosaicFilter *)self crop];
    blacks = [(RAWDemosaicFilter *)self blacks];
    noiseModel = [(RAWDemosaicFilter *)self noiseModel];
    [(CIImage *)self->inputImage extent];
    v11 = v10;
    v13 = v12;
    [crop X];
    v15 = v14;
    [crop Y];
    v17 = v16;
    [crop Z];
    v19 = v18;
    [crop W];
    v21 = v20;
    v22 = [MEMORY[0x277CBF788] vectorWithX:v11 Y:v13];
    [(NSNumber *)self->inputDespeckle floatValue];
    v24 = v23;
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = sub_233878A70;
    v91[3] = &unk_2789EF848;
    *&v91[4] = v11;
    *&v91[5] = v13;
    v91[6] = v15;
    v91[7] = v17;
    v85 = MEMORY[0x2383AC810](v91);
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = sub_233878B00;
    v90[3] = &unk_2789EF848;
    *&v90[4] = v11;
    *&v90[5] = v13;
    v90[6] = v15;
    v90[7] = v17;
    v83 = MEMORY[0x2383AC810](v90);
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = sub_233878B30;
    v89[3] = &unk_2789EF848;
    *&v89[4] = v11;
    *&v89[5] = v13;
    v89[6] = v15;
    v89[7] = v17;
    v80 = MEMORY[0x2383AC810](v89);
    _imageBySamplingNearest = [(CIImage *)self->inputImage _imageBySamplingNearest];
    v26 = [_imageBySamplingNearest imageByColorMatchingWorkingSpaceToColorSpace:sub_2338F28E4()];

    if (sensorType == 2)
    {
      if ([(NSNumber *)self->inputDraftMode BOOLValue])
      {
        v39 = v82;
        v97[0] = v26;
        v97[1] = blacks;
        v97[2] = range;
        v97[3] = v88;
        v97[4] = v22;
        v97[5] = crop;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:6];
        v40 = MEMORY[0x2383AC810](v83);
        v43 = v42;
      }

      else
      {
        inputScaleFactor = self->inputScaleFactor;
        if (inputScaleFactor && ([(NSNumber *)inputScaleFactor doubleValue], v47 < 0.6))
        {
          v39 = v71;
          v40 = MEMORY[0x2383AC810](v80);
          v96[0] = v26;
          v96[1] = blacks;
          v96[2] = range;
          v96[3] = v88;
          v96[4] = v22;
          v96[5] = crop;
          v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:6];
        }

        else
        {
          if (v68 == 8)
          {
            v39 = v73;
            v40 = MEMORY[0x2383AC810](v80);
            v94[0] = v26;
            v94[1] = blacks;
            v94[2] = range;
            v94[3] = v88;
            v94[4] = v22;
            v94[5] = crop;
            v94[6] = noiseModel;
            v94[7] = exposureFactor;
            v94[8] = self->inputFactors;
            [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:9];
          }

          else
          {
            v39 = v74;
            v40 = MEMORY[0x2383AC810](v80);
            v95[0] = v26;
            v95[1] = blacks;
            v95[2] = range;
            v95[3] = v88;
            v95[4] = v22;
            v95[5] = crop;
            [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:6];
          }
          v48 = ;
        }

        v43 = v48;
      }
    }

    else
    {
      if (sensorType == 1)
      {
        _imageBySamplingNearest2 = [v26 _imageBySamplingNearest];

        v39 = v84;
        v40 = MEMORY[0x2383AC810](v85);
        v98[0] = _imageBySamplingNearest2;
        v98[1] = blacks;
        v98[2] = range;
        v98[3] = v88;
        v98[4] = v22;
        v98[5] = crop;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:6];
      }

      else
      {
        if (sensorType)
        {
          v44 = v26;
          v45 = v44;
LABEL_43:

          v69[2](v69);
          goto LABEL_45;
        }

        bOOLValue = [(NSNumber *)self->inputDraftMode BOOLValue];
        LODWORD(v28) = 1.0;
        v29 = fminf(v24, 1.0);
        if (!bOOLValue && (v28 = v29, v29 > 0.01) || v68 == 8)
        {
          v30 = MEMORY[0x277CCABB0];
          [(NSNumber *)self->inputDespeckle floatValue];
          *&v32 = (v31 * 1.25) + (v31 * 1.25);
          v33 = [v30 numberWithFloat:v32];
          [(NSNumber *)self->inputDespeckle floatValue];
          if (v34 <= 0.5)
          {
            v37 = &unk_284958B68;
          }

          else
          {
            [(NSNumber *)self->inputDespeckle floatValue];
            v36 = [MEMORY[0x277CCABB0] numberWithDouble:{fmax(v35 * -4.99394315 * v35 + v35 * 20.886197 * v35 * v35 + v35 * -11.5599299 + 5.66767614, 1.25)}];

            v37 = &unk_284958B78;
            v33 = v36;
          }

          [v26 extent];
          if (v68 == 8)
          {
            v53 = v49;
            v54 = v50;
            v55 = v51;
            v56 = v52;
            v102[0] = v26;
            v102[1] = v22;
            v102[2] = v88;
            v102[3] = v33;
            v102[4] = v37;
            v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:5];
            [v76 applyWithExtent:&unk_28492C370 roiCallback:v57 arguments:{v53, v54, v55, v56}];
            v26 = v58 = v26;
          }

          else
          {
            v59 = v49;
            v60 = v50;
            v61 = v51;
            v62 = v52;
            v103[0] = v26;
            v103[1] = v22;
            *&v49 = v29;
            v57 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
            v103[2] = v57;
            v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:3];
            v63 = [v77 applyWithExtent:&unk_28492C350 roiCallback:v58 arguments:{v59, v60, v61, v62}];

            v26 = v63;
          }
        }

        _imageBySamplingNearest2 = [v26 _imageBySamplingNearest];

        if ([(NSNumber *)self->inputDraftMode BOOLValue])
        {
          v39 = v81;
          v40 = MEMORY[0x2383AC810](v85);
          v101[0] = _imageBySamplingNearest2;
          v101[1] = blacks;
          v101[2] = range;
          v101[3] = v88;
          v101[4] = v22;
          v101[5] = crop;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:6];
        }

        else if (v68 == 8)
        {
          v39 = v75;
          v40 = MEMORY[0x2383AC810](v83);
          v99[0] = _imageBySamplingNearest2;
          v99[1] = blacks;
          v99[2] = range;
          v99[3] = v88;
          v99[4] = v22;
          v99[5] = crop;
          v99[6] = noiseModel;
          v99[7] = exposureFactor;
          v99[8] = self->inputFactors;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:9];
        }

        else
        {
          v64 = self->inputScaleFactor;
          if (!v64 || ([(NSNumber *)v64 doubleValue], v65 = v70, v66 >= 0.6))
          {
            v65 = v72;
          }

          v39 = v65;
          v40 = MEMORY[0x2383AC810](v83);
          v100[0] = _imageBySamplingNearest2;
          v100[1] = blacks;
          v100[2] = range;
          v100[3] = v88;
          v100[4] = v22;
          v100[5] = crop;
          v100[6] = self->inputRepresentativeNoise;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:7];
        }
      }

      v43 = v41;
      v26 = _imageBySamplingNearest2;
    }

    v44 = [v39 applyWithExtent:v40 roiCallback:v43 arguments:{0.0, 0.0, v19, v21}];

    v45 = [v44 imageByColorMatchingColorSpaceToWorkingSpace:sub_2338F28E4()];

    goto LABEL_43;
  }

  v45 = 0;
LABEL_45:

  return v45;
}

@end