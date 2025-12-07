@interface MitigationCPU
- (MitigationCPU)initWithMetalToolBox:(id)box;
- (MitigationCPU)initWithMetalToolBox:(id)box mitigationGPU:(id)u;
- (void)hybridMitigationYUVInplaceInput:(id)input frRefTPlusOrMinus1:(id)minus1 frRefTPlusOrMinus2:(id)minus2 trRefTPlusOrMinus1:(id)orMinus1 trRefTPlusOrMinus2:(id)orMinus2 meta:(id)meta metaTPlusOrMinus1:(id)plusOrMinus1 metaTPlusOrMinus2:(id)self0 info:(id)self1 infoTPlusOrMinus1:(id)self2 infoTPlusOrMinus2:(id)self3 config:(id *)self4 trInput:(id)self5 usePastAsRef:(BOOL)self6;
@end

@implementation MitigationCPU

- (MitigationCPU)initWithMetalToolBox:(id)box mitigationGPU:(id)u
{
  objc_storeStrong(&self->_mitigationGPU, u);
  boxCopy = box;
  v7 = [(MitigationCPU *)self initWithMetalToolBox:boxCopy];

  return v7;
}

- (void)hybridMitigationYUVInplaceInput:(id)input frRefTPlusOrMinus1:(id)minus1 frRefTPlusOrMinus2:(id)minus2 trRefTPlusOrMinus1:(id)orMinus1 trRefTPlusOrMinus2:(id)orMinus2 meta:(id)meta metaTPlusOrMinus1:(id)plusOrMinus1 metaTPlusOrMinus2:(id)self0 info:(id)self1 infoTPlusOrMinus1:(id)self2 infoTPlusOrMinus2:(id)self3 config:(id *)self4 trInput:(id)self5 usePastAsRef:(BOOL)self6
{
  selfCopy = self;
  inputCopy = input;
  minus1Copy = minus1;
  minus2Copy = minus2;
  orMinus1Copy = orMinus1;
  orMinus2Copy = orMinus2;
  metaCopy = meta;
  plusOrMinus1Copy = plusOrMinus1;
  plusOrMinus2Copy = plusOrMinus2;
  infoCopy = info;
  tPlusOrMinus1Copy = tPlusOrMinus1;
  tPlusOrMinus2Copy = tPlusOrMinus2;
  trInputCopy = trInput;
  v57 = infoCopy;
  if (config->var1.var1)
  {
    v27 = matrix_identity_float3x3.columns[0];
    v28 = matrix_identity_float3x3.columns[1];
    v29 = matrix_identity_float3x3.columns[2];
    v30 = selfCopy;
  }

  else
  {
    v55 = plusOrMinus1Copy;
    v30 = selfCopy;
    calcTransform = selfCopy->_calcTransform;
    if (ref)
    {
      v32 = [infoCopy objectForKeyedSubscript:@"MetaData"];
      if (calcTransform)
      {
        objc_msgSend_ispHomographyFromMetaInfo_(calcTransform);
        v54.columns[0] = v72;
        v54.columns[1] = v71;
        v54.columns[2] = v73;
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      v34 = selfCopy->_calcTransform;
      v35 = [tPlusOrMinus1Copy objectForKeyedSubscript:@"MetaData"];
      if (v34)
      {
        objc_msgSend_ispHomographyFromMetaInfo_(v34);
        v45 = v68;
        v48 = v69;
        v51 = v70;
      }

      else
      {
        v48 = 0u;
        v51 = 0u;
        v45 = 0u;
      }

      v38 = 0;
      v28.i64[0] = v54.columns[0].i64[0];
      v27.i64[0] = v54.columns[1].i64[0];
      v74 = v54.columns[1];
      v75 = v54.columns[0];
      v29.i64[0] = v54.columns[2].i64[0];
      v76 = v54.columns[2];
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      do
      {
        *(&v77 + v38 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(&v74 + v38 * 4))), v48, *&v74.f32[v38], 1), v51, *(&v74 + v38 * 4), 2);
        v38 += 4;
      }

      while (v38 != 12);
    }

    else
    {
      v33 = [tPlusOrMinus1Copy objectForKeyedSubscript:@"MetaData"];
      if (calcTransform)
      {
        objc_msgSend_ispHomographyFromMetaInfo_(calcTransform);
        v54 = v67;
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      v36 = selfCopy->_calcTransform;
      v37 = [tPlusOrMinus2Copy objectForKeyedSubscript:@"MetaData"];
      if (v36)
      {
        objc_msgSend_ispHomographyFromMetaInfo_(v36);
        v46 = v64;
        v49 = v65;
        v52 = v66;
      }

      else
      {
        v49 = 0u;
        v52 = 0u;
        v46 = 0u;
      }

      v39 = 0;
      v74 = v46;
      v75 = v49;
      v76 = v52;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v40 = v54;
      do
      {
        *(&v77 + v39 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54.columns[0], COERCE_FLOAT(*(&v74 + v39 * 4))), v54.columns[1], *&v74.f32[v39], 1), v54.columns[2], *(&v74 + v39 * 4), 2);
        v39 += 4;
      }

      while (v39 != 12);
      v41 = v77;
      v42 = v78;
      v43 = v79;
      v41.i32[3] = 0;
      v42.i32[3] = 0;
      v50 = v42;
      v53 = v41;
      v43.i32[3] = 0;
      v47 = v43;
      v80 = __invert_f3(v40);
      v54.columns[0].i64[0] = v80.columns[1].i64[0];
      v54.columns[1].i64[0] = v80.columns[0].i64[0];
      v54.columns[2].i64[0] = v80.columns[2].i64[0];
      v80.columns[1] = v50;
      v80.columns[0] = v53;
      v80.columns[2] = v47;
      __invert_f3(v80);
      v28.i64[0] = v54.columns[0].i64[0];
      v27.i64[0] = v54.columns[1].i64[0];
      v29.i64[0] = v54.columns[2].i64[0];
    }

    plusOrMinus1Copy = v55;
  }

  LOBYTE(v44) = 0;
  [(MitigationGPU *)v30->_mitigationGPU spatialTemporalRepairThenFuseInplaceYUVInput:inputCopy frRef0:minus1Copy frRef1:minus2Copy trRef0:orMinus1Copy trRef1:orMinus2Copy hmgrphy0:metaCopy hmgrphy1:*v27.i64 metaBuf:*v28.i64 ref0MetaBuf:*v29.i64 ref1MetaBuf:plusOrMinus1Copy trInput:plusOrMinus2Copy waitForComplete:trInputCopy, v44];
}

- (MitigationCPU)initWithMetalToolBox:(id)box
{
  boxCopy = box;
  v12.receiver = self;
  v12.super_class = MitigationCPU;
  v5 = [(MitigationCPU *)&v12 init];
  if (v5)
  {
    if (boxCopy)
    {
      v6 = boxCopy;
    }

    else
    {
      v6 = objc_alloc_init(GGMMetalToolBox);
    }

    metalToolbox = v5->_metalToolbox;
    v5->_metalToolbox = v6;

    v8 = [[CalcHomography alloc] initWithMetalToolBox:v5->_metalToolbox];
    calcTransform = v5->_calcTransform;
    v5->_calcTransform = v8;

    v10 = v5;
  }

  return v5;
}

@end