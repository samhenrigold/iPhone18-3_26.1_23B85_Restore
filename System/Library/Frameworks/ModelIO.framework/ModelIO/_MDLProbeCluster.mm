@interface _MDLProbeCluster
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCluster:(id)cluster;
- (unint64_t)hash;
- (void)calculateCentroidNotIncludingSamplesinArray:(id)array;
@end

@implementation _MDLProbeCluster

- (BOOL)isEmpty
{
  v12 = objc_msgSend_probes(self, a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v24 = objc_msgSend_count(v12, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19) == 0;

  return v24;
}

- (BOOL)isEqualToCluster:(id)cluster
{
  clusterCopy = cluster;
  if (clusterCopy && (objc_msgSend_centroid(self, v4, v5, v6, v12, v13, v14, v15, v7, v8, v9, v10), v74 = v16, objc_msgSend_centroid(clusterCopy, v17, v18, v19, v16, v24, v25, v26, v20, v21, v22, v23), v37 = vceqq_f32(v74, v36), v37.n128_u64[0] = vmovn_s32(v37), (v37.n128_u8[0] & 1) != 0) && (objc_msgSend_centroid(self, v27, v28, v29, v37, v74, v34, v35, v30, v31, v32, v33), v75 = v38, objc_msgSend_centroid(clusterCopy, v39, v40, v41, v38, v46, v47, v48, v42, v43, v44, v45), v59 = vceqq_f32(v75, v58), v59.n128_u64[0] = vmovn_s32(v59), (v59.n128_u8[2] & 1) != 0))
  {
    objc_msgSend_centroid(self, v49, v50, v51, v59, v75, v56, v57, v52, v53, v54, v55);
    v76 = v60;
    objc_msgSend_centroid(clusterCopy, v61, v62, v63, v60, v68, v69, v70, v64, v65, v66, v67);
    v72 = vmovn_s32(vceqq_f32(v76, v71)).i8[4];
  }

  else
  {
    v72 = 0;
  }

  return v72 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToCluster = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToCluster = objc_msgSend_isEqualToCluster_(self, v5, equalCopy, v6, v11, v12, v13, v14, v7, v8, v9, v10);
    }

    else
    {
      isEqualToCluster = 0;
    }
  }

  return isEqualToCluster;
}

- (unint64_t)hash
{
  objc_msgSend_centroid(self, a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  if (v20.n128_f32[0] == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = v20.n128_u32[0];
  }

  objc_msgSend_centroid(self, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v35.n128_u32[0] = v35.n128_u32[1];
  v36 = v35.n128_u32[1];
  if (v35.n128_f32[1] == 0.0)
  {
    v36 = 0;
  }

  v37 = v36 ^ v24;
  objc_msgSend_centroid(self, v25, v26, v27, v35, v32, v33, v34, v28, v29, v30, v31);
  v39 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  return v37 ^ v39;
}

- (void)calculateCentroidNotIncludingSamplesinArray:(id)array
{
  v43 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = self->_probes;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v38, v42, v10, v11, v12, v13, 16, v7, v8, v9);
  if (!v20)
  {

    v37 = 0u;
LABEL_13:
    v36 = v37;
    goto LABEL_14;
  }

  v24 = 0;
  v25 = *v39;
  v26 = 0uLL;
  v37 = 0u;
  do
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v39 != v25)
      {
        objc_enumerationMutation(v5);
      }

      v28 = *(*(&v38 + 1) + 8 * i);
      if ((objc_msgSend_containsObject_(arrayCopy, v14, v28, v15, v26, v21, v22, v23, v16, v17, v18, v19, *&v37, v38) & 1) == 0)
      {
        objc_msgSend_position(v28, v14, v29, v15, v26, v21, v22, v23, v16, v17, v18, v19);
        v21 = vaddq_f32(v26, v37);
        v37 = v21;
        ++v24;
      }
    }

    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, &v38, v42, v26, v21, v22, v23, 16, v17, v18, v19);
  }

  while (v20);

  if (v24 < 1)
  {
    goto LABEL_13;
  }

  *v30.i32 = v24;
  __asm { FMOV            V1.4S, #1.0 }

  v36 = vmulq_f32(v37, vdivq_f32(_Q1, vdupq_lane_s32(v30, 0)));
LABEL_14:
  *self->_centroid = v36;
}

@end