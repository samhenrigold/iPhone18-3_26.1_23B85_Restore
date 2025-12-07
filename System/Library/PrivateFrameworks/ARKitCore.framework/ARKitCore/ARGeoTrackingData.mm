@interface ARGeoTrackingData
- (ARGeoTrackingData)initWithCoder:(id)coder;
- (__n128)initWithENUOrigin:(__n128)origin vioFromENU:(__n128)u;
- (id)anchorsForCameraWithTransform:(double)transform referenceOriginTransform:(double)originTransform existingAnchors:(double)anchors anchorsToRemove:(float32x4_t)remove;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARGeoTrackingData

- (__n128)initWithENUOrigin:(__n128)origin vioFromENU:(__n128)u
{
  v9 = a7;
  v17.receiver = self;
  v17.super_class = ARGeoTrackingData;
  v10 = [(ARGeoTrackingData *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_enuOrigin, a7);
    v11[1] = a2;
    v11[2] = origin;
    v11[3] = u;
    v11[4] = a5;
  }

  return v11;
}

- (id)anchorsForCameraWithTransform:(double)transform referenceOriginTransform:(double)originTransform existingAnchors:(double)anchors anchorsToRemove:(float32x4_t)remove
{
  v181 = *MEMORY[0x1E69E9840];
  v12 = a11;
  v13 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_63];
  v89 = v12;
  v14 = [v12 filteredArrayUsingPredicate:v13];

  v16 = _ARLogGeneral_17(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    LODWORD(buf[0].f64[0]) = 138543874;
    *(buf[0].f64 + 4) = v18;
    WORD2(buf[0].f64[1]) = 2048;
    *(&buf[0].f64[1] + 6) = self;
    HIWORD(buf[1].f64[0]) = 2048;
    *&buf[1].f64[1] = [v14 count];
    _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VL geo anchors updated: %lu", buf, 0x20u);
  }

  v20 = _ARLogGeneral_17(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v183 = __invert_f4(*(self + 16));
    v23 = ARMatrix4x4Description(1, v183.columns[0], v183.columns[1], v183.columns[2], v183.columns[3]);
    LODWORD(buf[0].f64[0]) = 138543875;
    *(buf[0].f64 + 4) = v22;
    WORD2(buf[0].f64[1]) = 2048;
    *(&buf[0].f64[1] + 6) = self;
    HIWORD(buf[1].f64[0]) = 2113;
    *&buf[1].f64[1] = v23;
    _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: enuFromVIO: %{private}@", buf, 0x20u);
  }

  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v168 = 0u;
  v24 = v14;
  v25 = [v24 countByEnumeratingWithState:&v168 objects:v173 count:16];
  if (v25)
  {
    v26 = v25;
    obj = v24;
    v95 = *v169;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v169 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v168 + 1) + 8 * i);
        if ([v28 isAltitudeAvailable])
        {
          v167 = 0u;
          v166 = 0u;
          v165 = 0u;
          v164 = 0u;
          v163 = 0u;
          v162 = 0u;
          v161 = 0u;
          v160 = 0u;
          ARMatrix4x4FloatToDouble(&v160, _PromotedConst_0, unk_1C25C90A0, xmmword_1C25C90B0, unk_1C25C90C0);
          v159 = 0u;
          v158 = 0u;
          v157 = 0u;
          v156 = 0u;
          v155 = 0u;
          v153 = 0u;
          v154 = 0u;
          v152 = 0u;
          *v29.i64 = ARVisionToRenderingCoordinateTransform();
          ARMatrix4x4FloatToDouble(&v152, v29, v30, v31, v32);
          v150 = 0u;
          v151 = 0u;
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v33 = *(self + 8);
          if (v33)
          {
            objc_msgSend_ecefFromlocation(v33);
          }

          else
          {
            v142 = 0uLL;
            v143 = 0uLL;
            v140 = 0uLL;
            v141 = 0uLL;
            v138 = 0uLL;
            v139 = 0uLL;
            v136 = 0uLL;
            v137 = 0uLL;
          }

          v177 = v140;
          v178 = v141;
          v179 = v142;
          v180 = v143;
          buf[0] = v136;
          buf[1] = v137;
          v175 = v138;
          v176 = v139;
          __invert_d4();
          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
          v175 = 0u;
          v176 = 0u;
          memset(buf, 0, sizeof(buf));
          ARMatrix4x4FloatToDouble(buf, *(self + 16), *(self + 32), *(self + 48), *(self + 64));
          v34 = 0uLL;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v35 = 0uLL;
          if (v28)
          {
            objc_msgSend_ecefFromAnchor(v28);
            v35 = 0uLL;
            v36 = v136;
            v37 = v137;
            v38 = v138;
            v39 = v139;
            v40 = v140;
            v41 = v141;
            v34 = v142;
            v42 = v143;
          }

          else
          {
            v42 = 0uLL;
            v40 = 0uLL;
            v41 = 0uLL;
            v38 = 0uLL;
            v39 = 0uLL;
            v36 = 0uLL;
            v37 = 0uLL;
          }

          v43 = 0;
          v124 = v164;
          v125 = v165;
          v126 = v166;
          v127 = v167;
          v120 = v160;
          v121 = v161;
          v122 = v162;
          v123 = v163;
          v128 = v35;
          v129 = v35;
          v130 = v35;
          v131 = v35;
          v132 = v35;
          v133 = v35;
          v134 = v35;
          v135 = v35;
          do
          {
            v45 = *(&v120 + v43);
            v44 = *(&v120 + v43 + 16);
            v46 = (&v128 + v43);
            *v46 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v36, v45.f64[0]), v38, v45, 1), v40, v44.f64[0]), v34, v44, 1);
            v46[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v37, v45.f64[0]), v39, v45, 1), v41, v44.f64[0]), v42, v44, 1);
            v43 += 32;
          }

          while (v43 != 128);
          v47 = 0;
          v49 = v144;
          v48 = v145;
          v51 = v146;
          v50 = v147;
          v53 = v148;
          v52 = v149;
          v55 = v150;
          v54 = v151;
          v116 = v132;
          v117 = v133;
          v118 = v134;
          v119 = v135;
          v112 = v128;
          v113 = v129;
          v114 = v130;
          v115 = v131;
          v126 = v35;
          v127 = v35;
          v124 = v35;
          v125 = v35;
          v122 = v35;
          v123 = v35;
          v120 = v35;
          v121 = v35;
          do
          {
            v57 = *(&v112 + v47);
            v56 = *(&v112 + v47 + 16);
            v58 = (&v120 + v47);
            *v58 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v49, v57.f64[0]), v51, v57, 1), v53, v56.f64[0]), v55, v56, 1);
            v58[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v48, v57.f64[0]), v50, v57, 1), v52, v56.f64[0]), v54, v56, 1);
            v47 += 32;
          }

          while (v47 != 128);
          v59 = 0;
          v61 = buf[0];
          v60 = buf[1];
          v63 = v175;
          v62 = v176;
          v65 = v177;
          v64 = v178;
          v67 = v179;
          v66 = v180;
          v108 = v124;
          v109 = v125;
          v110 = v126;
          v111 = v127;
          v104 = v120;
          v105 = v121;
          v106 = v122;
          v107 = v123;
          v118 = v35;
          v119 = v35;
          v116 = v35;
          v117 = v35;
          v114 = v35;
          v115 = v35;
          v112 = v35;
          v113 = v35;
          do
          {
            v69 = *(&v104 + v59);
            v68 = *(&v104 + v59 + 16);
            v70 = (&v112 + v59);
            *v70 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v61, v69.f64[0]), v63, v69, 1), v65, v68.f64[0]), v67, v68, 1);
            v70[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v60, v69.f64[0]), v62, v69, 1), v64, v68.f64[0]), v66, v68, 1);
            v59 += 32;
          }

          while (v59 != 128);
          v71 = 0;
          v73 = v152;
          v72 = v153;
          v74 = v155;
          v75 = v154;
          v76 = v157;
          v77 = v156;
          v78 = v159;
          v79 = v158;
          v100 = v116;
          v101 = v117;
          v102 = v118;
          v103 = v119;
          v96 = v112;
          v97 = v113;
          v98 = v114;
          v99 = v115;
          v110 = v35;
          v111 = v35;
          v108 = v35;
          v109 = v35;
          v106 = v35;
          v107 = v35;
          v104 = v35;
          v105 = v35;
          do
          {
            v81 = *(&v96 + v71);
            v80 = *(&v96 + v71 + 16);
            v82 = (&v104 + v71);
            *v82 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v73, v81.f64[0]), v75, v81, 1), v77, v80.f64[0]), v79, v80, 1);
            v82[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v72, v81.f64[0]), v74, v81, 1), v76, v80.f64[0]), v78, v80, 1);
            v71 += 32;
          }

          while (v71 != 128);
          v100 = v108;
          v101 = v109;
          v102 = v110;
          v103 = v111;
          v96 = v104;
          v97 = v105;
          v98 = v106;
          v99 = v107;
          *&v83 = ARMatrix4x4DoubleToFloat(&v96);
          v84 = 0;
          v172[0] = v83;
          v172[1] = v85;
          v172[2] = v86;
          v172[3] = v87;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          do
          {
            *(&v96 + v84 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(remove, COERCE_FLOAT(v172[v84])), a7, *&v172[v84], 1), a8, v172[v84], 2), a9, v172[v84], 3);
            ++v84;
          }

          while (v84 != 4);
          [v28 setTransform:{v96.f64[0], v97.f64[0], v98.f64[0], v99.f64[0]}];
          [v28 setIsTracked:1];
        }
      }

      v24 = obj;
      v26 = [obj countByEnumeratingWithState:&v168 objects:v173 count:16];
    }

    while (v26);
  }

  return v24;
}

uint64_t __108__ARGeoTrackingData_anchorsForCameraWithTransform_referenceOriginTransform_existingAnchors_anchorsToRemove___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (ARGeoTrackingData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ARGeoTrackingData;
  v5 = [(ARGeoTrackingData *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"enuOrigin"];
    enuOrigin = v5->_enuOrigin;
    v5->_enuOrigin = v6;

    [coderCopy ar_decodeMatrix4x4ForKey:@"vioFromENU"];
    v5[1] = v8;
    v5[2] = v9;
    v5[3] = v10;
    v5[4] = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  enuOrigin = self->_enuOrigin;
  coderCopy = coder;
  [coderCopy encodeObject:enuOrigin forKey:@"enuOrigin"];
  [coderCopy ar_encodeMatrix4x4:@"vioFromENU" forKey:{*&self[1].super.isa, *&self[2].super.isa, *&self[3].super.isa, *&self[4].super.isa}];
}

@end