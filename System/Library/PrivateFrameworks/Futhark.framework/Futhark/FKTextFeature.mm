@interface FKTextFeature
+ (id)featureFromConcompIndex:(int)index session:(FKSession *)session scaling:(id *)scaling type:(int64_t)type createDiacriticFeatures:(BOOL)features featureID:(int64_t *)d;
+ (id)featureFromSequenceIndex:(int)index session:(FKSession *)session scaling:(id *)scaling createConcompFeatures:(BOOL)features createDiacriticFeatures:(BOOL)diacriticFeatures featureID:(int64_t *)d;
- (CGRect)boundingBox;
- (FKTextFeature)initWithType:(int64_t)type boundingBox:(CGRect *)box corners:(id)corners featureID:(int64_t)d session:(FKSession *)session backingIndex:(id)index scale:(int)scale;
- (NSArray)candidates;
- (void)dealloc;
@end

@implementation FKTextFeature

- (FKTextFeature)initWithType:(int64_t)type boundingBox:(CGRect *)box corners:(id)corners featureID:(int64_t)d session:(FKSession *)session backingIndex:(id)index scale:(int)scale
{
  v46[4] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = FKTextFeature;
  v15 = [(FKTextFeature *)&v44 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    v15->_backingIndex.seqInd = index.var0;
    v15->_session = session;
    v15->_scale = scale;
    if (corners)
    {
      v15->_corners = corners;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = [corners countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v41;
        __asm { FMOV            V0.2D, #1.0 }

        v36 = _Q0;
        v25 = 0uLL;
        v35 = *MEMORY[0x1E695EFF8];
        do
        {
          v26 = 0;
          do
          {
            v37 = v25;
            if (*v41 != v19)
            {
              objc_enumerationMutation(corners);
            }

            v27 = *(*(&v40 + 1) + 8 * v26);
            point = v35;
            if (CGPointMakeWithDictionaryRepresentation(v27, &point))
            {
              v36 = vbslq_s8(vcgtq_f64(v36, point), point, v36);
              v25 = vbslq_s8(vcgtq_f64(v37, point), v37, point);
            }

            else
            {
              v25 = v37;
            }

            ++v26;
          }

          while (v18 != v26);
          v38 = v25;
          v28 = [corners countByEnumeratingWithState:&v40 objects:v45 count:16];
          v25 = v38;
          v18 = v28;
        }

        while (v28);
      }

      else
      {
        __asm { FMOV            V0.2D, #1.0 }

        v36 = _Q0;
        v25 = 0uLL;
      }

      v16->_boundingBox.origin = v36;
      v16->_boundingBox.size = vsubq_f64(v25, v36);
      v16->_featureID = d;
    }

    else if (box)
    {
      size = box->size;
      v15->_boundingBox.origin = box->origin;
      v15->_boundingBox.size = size;
      x = box->origin.x;
      size.width = box->origin.y;
      v46[0] = CGPointCreateDictionaryRepresentation(*(&size - 8));
      v47.x = box->origin.x;
      v47.y = box->origin.y + box->size.height;
      v46[1] = CGPointCreateDictionaryRepresentation(v47);
      v31 = vaddq_f64(box->origin, box->size);
      y = v31.y;
      v46[2] = CGPointCreateDictionaryRepresentation(v31);
      v48.y = box->origin.y;
      v48.x = box->origin.x + box->size.width;
      v46[3] = CGPointCreateDictionaryRepresentation(v48);
      v16->_corners = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
    }

    else
    {
      return 0;
    }
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FKTextFeature;
  [(FKTextFeature *)&v3 dealloc];
}

+ (id)featureFromConcompIndex:(int)index session:(FKSession *)session scaling:(id *)scaling type:(int64_t)type createDiacriticFeatures:(BOOL)features featureID:(int64_t *)d
{
  typeCopy = type;
  v15 = 0;
  var2 = scaling->var2;
  v17 = 0.5;
  if (!var2)
  {
    v17 = 0.0;
  }

  v18 = session->var22 + 100 * index;
  v19 = (1 << var2);
  LOWORD(v8) = *(v18 + 40);
  x = scaling->var1.x;
  y = scaling->var1.y;
  v22 = x + v19 * (v8 - v17);
  LOWORD(v9) = *(v18 + 41);
  *&v23 = v17 + v9;
  v24 = x + v19 * *&v23;
  LOWORD(v23) = *(v18 + 42);
  v25 = y + v19 * (v23 - v17);
  LOWORD(v10) = *(v18 + 43);
  v26 = y + v19 * (v17 + v10);
  width = scaling->var0.width;
  height = scaling->var0.height;
  v29 = v22 / width;
  v30 = v25 / height;
  v31 = (v24 - v22 + 1.0) / width;
  v32 = (v26 - v25 + 1.0) / height;
  v50 = v22 / width;
  v51 = v25 / height;
  v52 = v31;
  v53 = v32;
  v33 = (*d)++;
  if (type == 1 && features)
  {
    v35 = *(v18 + 16);
    v34 = v18 + 64;
    if (v35 == -1)
    {
      v15 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      v37 = 0;
      v38 = 1;
      do
      {
        v39 = *&v34[4 * v37];
        if (v39 == -1)
        {
          break;
        }

        v40 = v38;
        v41 = [FKTextFeature featureFromConcompIndex:v39 session:session scaling:scaling type:2 createDiacriticFeatures:0 featureID:d];
        [v15 addObject:v41];
        [v41 boundingBox];
        v56.origin.x = v42;
        v56.origin.y = v43;
        v56.size.width = v44;
        v56.size.height = v45;
        v54.origin.x = v29;
        v54.origin.y = v30;
        v54.size.width = v31;
        v54.size.height = v32;
        v55 = CGRectUnion(v54, v56);
        v29 = v55.origin.x;
        v30 = v55.origin.y;
        v31 = v55.size.width;
        v32 = v55.size.height;
        v38 = 0;
        v37 = 1;
      }

      while ((v40 & 1) != 0);
      v50 = v29;
      v51 = v30;
      v52 = v31;
      v53 = v32;
      typeCopy = 1;
    }
  }

  v46 = [FKTextFeature alloc];
  LODWORD(v49) = scaling->var2;
  v47 = [(FKTextFeature *)v46 initWithType:typeCopy boundingBox:&v50 corners:0 featureID:v33 session:session backingIndex:index scale:v49];
  [(FKTextFeature *)v47 setSubFeatures:v15];
  return v47;
}

+ (id)featureFromSequenceIndex:(int)index session:(FKSession *)session scaling:(id *)scaling createConcompFeatures:(BOOL)features createDiacriticFeatures:(BOOL)diacriticFeatures featureID:(int64_t *)d
{
  diacriticFeaturesCopy = diacriticFeatures;
  featuresCopy = features;
  indexCopy2 = index;
  v98[4] = *MEMORY[0x1E69E9840];
  v17 = session->var29 + 104 * index;
  v18 = *(v17 + 8);
  v19 = *(v17 + 9);
  v20 = *(v17 + 12);
  v21 = v20;
  v22 = *(v17 + 10);
  v23 = *(v17 + 13);
  v24 = (v23 + 1);
  if (scaling->var2)
  {
    v25 = v18 > v19;
    v26 = 2 * (v22 + v18);
    v96 = v26;
    v97 = 1;
    v27 = 2 * (v22 + v19);
    v95 = v27;
    v8.i16[0] = v20;
    v8.i16[1] = v23;
    v9.i32[0] = *(v17 + 7);
    v28 = vzip1_s32(v8, v9);
    v98[0] = vadd_s16(vadd_s16(v28, v28), 0x100000001);
    if (*(v17 + 5) < 1)
    {
      v37 = 0.5;
    }

    else
    {
      featuresCopy2 = features;
      v29 = 0;
      do
      {
        v94 = 0;
        v30 = (session->var22 + 100 * *(*(v17 + 1) + 4 * v29));
        v94 = vadd_s16(vadd_s16(v30[10], v30[10]), 0x100000001);
        FKSequenceAdjustSlantedLines(session, v98, &v94, v25, &v96, &v95, &v97);
        v31 = 0;
        v32 = v30 + 8;
        v33 = 1;
        do
        {
          v34 = v32->i32[v31];
          if (v34 == -1)
          {
            break;
          }

          v35 = v33;
          v36 = (session->var22 + 100 * v34);
          v94 = vadd_s16(vadd_s16(v36[10], v36[10]), 0x100000001);
          FKSequenceAdjustSlantedLines(session, v98, &v94, v25, &v96, &v95, &v97);
          v33 = 0;
          v31 = 1;
        }

        while ((v35 & 1) != 0);
        ++v29;
      }

      while (v29 < *(v17 + 5));
      v27 = v95;
      v26 = v96;
      v37 = vcvtd_n_f64_s32(v97, 1uLL);
      v20 = *(v17 + 12);
      v23 = *(v17 + 13);
      indexCopy2 = index;
      featuresCopy = featuresCopy2;
    }

    v38 = vcvtd_n_f64_s32(v26, 1uLL);
    v39 = vcvtd_n_f64_s32(v27, 1uLL);
    v10 = -0.5;
    v21 = v21 + -0.5;
    v24 = v24 + 0.5;
  }

  else
  {
    v38 = v18;
    v39 = v19;
    v37 = v22;
  }

  if (v39 >= v38)
  {
    LOWORD(v10) = *(v17 + 14);
    v40 = v10;
    v41 = (*(v17 + 15) + 1);
  }

  else
  {
    v40 = (*(v17 + 15) + 1);
    LOWORD(v10) = *(v17 + 14);
    v41 = v10;
  }

  v42 = v38 + v37;
  v43 = (v23 + 1);
  v44 = v39 + v37;
  v45 = v20 - (v39 - v38);
  v46 = v24 - v21 + v40;
  v47 = v43 - (v39 - v38);
  v48 = v24 - v21 + v41;
  v49 = v20 * v46 - v40 * v45;
  v50 = v20 - v45;
  v51 = v21 * v39 - v38 * v24;
  v52 = v38 - v39;
  v53 = v40 - v46;
  v54 = v50 * v52 - (v40 - v46) * (v21 - v24);
  v55 = (v49 * (v21 - v24) - v50 * v51) / v54;
  v56 = (v49 * v52 - (v40 - v46) * v51) / v54;
  v57 = v21 * v44 - v42 * v24;
  v58 = v42 - v44;
  v59 = v50 * v58 - v53 * (v21 - v24);
  v60 = (v49 * (v21 - v24) - v50 * v57) / v59;
  v61 = (v49 * v58 - v53 * v57) / v59;
  v62 = v43 * v48 - v41 * v47;
  v63 = v43 - v47;
  v64 = v62 * (v21 - v24) - v63 * v51;
  v65 = v41 - v48;
  v66 = v62 * v52 - v65 * v51;
  v67 = -(v65 * (v21 - v24));
  v68 = v63 * v52 - v65 * (v21 - v24);
  v69 = v64 / v68;
  v70 = v66 / v68;
  v71 = v62 * v58 - v65 * v57;
  v72 = v67 + v63 * v58;
  v73 = (v62 * (v21 - v24) - v63 * v57) / v72;
  v74 = v71 / v72;
  v75 = (1 << scaling->var2);
  x = scaling->var1.x;
  y = scaling->var1.y;
  height = scaling->var0.height;
  v99.x = (x + v75 * v55) / scaling->var0.width;
  v99.y = (y + v75 * v56) / height;
  v79 = (x + v75 * v60) / scaling->var0.width;
  v80 = (y + v75 * v61) / height;
  v81 = (x + v75 * v69) / scaling->var0.width;
  v82 = (y + v75 * v70) / height;
  v83 = (x + v75 * v73) / scaling->var0.width;
  v84 = (y + v75 * v74) / height;
  v98[0] = CGPointCreateDictionaryRepresentation(v99);
  v100.x = v79;
  v100.y = v80;
  v98[1] = CGPointCreateDictionaryRepresentation(v100);
  v101.x = v83;
  v101.y = v84;
  v98[2] = CGPointCreateDictionaryRepresentation(v101);
  v102.x = v81;
  v102.y = v82;
  v98[3] = CGPointCreateDictionaryRepresentation(v102);
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:4];
  v86 = [FKTextFeature alloc];
  LODWORD(v91) = scaling->var2;
  v87 = [(FKTextFeature *)v86 initWithType:0 boundingBox:0 corners:v85 featureID:(*d)++ session:session backingIndex:indexCopy2 scale:v91];
  if (featuresCopy && *(v17 + 5) >= 1)
  {
    v88 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (*(v17 + 5) >= 1)
    {
      v89 = 0;
      do
      {
        [v88 addObject:{+[FKTextFeature featureFromConcompIndex:session:scaling:type:createDiacriticFeatures:featureID:](FKTextFeature, "featureFromConcompIndex:session:scaling:type:createDiacriticFeatures:featureID:", *(*(v17 + 1) + 4 * v89++), session, scaling, 1, diacriticFeaturesCopy, d)}];
      }

      while (v89 < *(v17 + 5));
    }

    [(FKTextFeature *)v87 setSubFeatures:v88];
  }

  return v87;
}

- (NSArray)candidates
{
  v15 = *MEMORY[0x1E69E9840];
  candidates = self->_candidates;
  if (!candidates)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    FKRecognizeGetCandidates(self->_session->var22 + 100 * self->_backingIndex.seqInd, v13, v11);
    candidates = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i != 56; i += 4)
    {
      if (!*(v13 + i))
      {
        break;
      }

      v5 = [FKTextCandidate alloc];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11 + i];
      *&v7 = *(v13 + i) / 100.0;
      v8 = [(FKTextCandidate *)v5 initWithText:v6 confidence:v7];
      v9 = v8;
      [(NSArray *)candidates addObject:v8];
    }

    self->_candidates = candidates;
  }

  return candidates;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end