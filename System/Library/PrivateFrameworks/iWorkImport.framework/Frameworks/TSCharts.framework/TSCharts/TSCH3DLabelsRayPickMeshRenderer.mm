@interface TSCH3DLabelsRayPickMeshRenderer
- (void)renderWithMeshRenderLabelInfo:(id)info;
@end

@implementation TSCH3DLabelsRayPickMeshRenderer

- (void)renderWithMeshRenderLabelInfo:(id)info
{
  v187 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v8 = objc_msgSend_renderer(infoCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_pipeline(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_processor(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_mesh(v8, v19, v20, v21, v22);

  if (!v23)
  {
    v28 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v24, v25, v26, v27, 6);
    v33 = objc_msgSend_resourceWithBuffer_(TSCH3DDataBufferResource, v29, v30, v31, v32, v28);
    objc_msgSend_setMesh_(v8, v34, v35, v36, v37, v33);
  }

  v38 = objc_msgSend_mesh(v8, v24, v25, v26, v27);
  v39 = sub_27618C648(v38);

  sub_2761EDA00(v39, 6uLL);
  v185 = 0u;
  *v186 = 0u;
  v184 = 0u;
  if (infoCopy)
  {
    objc_msgSend_translation(infoCopy, 0.0, v40, v41);
    v43 = v151;
    LODWORD(v44) = v152;
  }

  else
  {
    v152 = 0;
    v151 = 0;
    v43 = 0;
    v44 = 0.0;
  }

  v155 = 0;
  v154 = 0;
  v153 = 1065353216;
  v156 = 1065353216;
  v157 = 0;
  v158 = 0;
  v45 = 0;
  v46 = vmul_f32(v43, 0);
  v47 = vrev64_s32(v46);
  v46.f32[0] = vaddv_f32(v46);
  *v42.i32 = *&v44 * 0.0;
  *&v44 = (*&v44 + v46.f32[0]) + 0.0;
  v48 = COERCE_DOUBLE(vadd_f32(vadd_f32(vadd_f32(v43, v47), vdup_lane_s32(v42, 0)), 0));
  v159 = 1065353216;
  v160 = v48;
  v161 = LODWORD(v44);
  v162 = (v46.f32[0] + *v42.i32) + 1.0;
  if (infoCopy)
  {
    objc_msgSend_offset(infoCopy, 0.0, v48, v44);
    v45 = v140;
  }

  else
  {
    v140 = 0;
  }

  v143 = 0;
  v142 = 0;
  v141 = 1065353216;
  v144 = 1065353216;
  v145 = 0;
  v146 = 0;
  v49 = vmul_f32(v45, 0);
  v147 = 1065353216;
  v148 = vadd_f32(vadd_f32(v45, vrev64_s32(v49)), 0);
  v149 = vaddv_f32(v49) + 0.0;
  v150 = v149 + 1.0;
  *&v50 = sub_2761558A0(&v153, &v141, v163).u64[0];
  objc_msgSend_rotation(infoCopy, v50, v51, v52);
  v54 = __sincosf_stret(v53 * 0.017453);
  v55 = (1.0 - v54.__cosval) * 0.0;
  v56 = v54.__cosval + (v55 * 0.0);
  v57 = (v55 * 0.0) + 0.0;
  v58 = v54.__sinval + v57;
  v59 = v55 + 0.0;
  v60 = v59 - (v54.__sinval * 0.0);
  v61 = v57 - v54.__sinval;
  v62 = v59 + (v54.__sinval * 0.0);
  v63 = ((1.0 - v54.__cosval) * 0.0) + 0.0;
  v64 = v63 + (v54.__sinval * 0.0);
  v65 = v63 - (v54.__sinval * 0.0);
  v66 = v54.__cosval + (1.0 - v54.__cosval);
  v67 = (v56 * 0.0) + (v58 * 0.0);
  v138[0] = (v60 * 0.0) + (v56 + (v58 * 0.0));
  v138[1] = ((v56 * 0.0) + v58) + (v60 * 0.0);
  v138[2] = v60 + v67;
  v138[3] = (v60 * 0.0) + v67;
  v68 = (v56 * 0.0) + (v61 * 0.0);
  v138[4] = ((v56 * 0.0) + v61) + (v62 * 0.0);
  v138[5] = (v62 * 0.0) + (v56 + (v61 * 0.0));
  v138[6] = v62 + v68;
  v138[7] = (v62 * 0.0) + v68;
  v69 = (v64 * 0.0) + (v65 * 0.0);
  v138[8] = (v66 * 0.0) + (v64 + (v65 * 0.0));
  v138[9] = (v66 * 0.0) + (v65 + (v64 * 0.0));
  v138[10] = v66 + v69;
  v138[11] = (v66 * 0.0) + v69;
  v139 = xmmword_2764D5F20;
  *&v70 = sub_2761558A0(v163, v138, &v181).u64[0];
  if (infoCopy)
  {
    objc_msgSend_alignmentOffset(infoCopy, v70, v71, v72);
    v73 = v127;
  }

  else
  {
    v127 = 0;
    v73 = 0;
  }

  v74 = vmul_f32(v73, 0);
  v128 = 1065353216;
  v130 = 0;
  v129 = 0;
  v131 = 1065353216;
  v132 = 0;
  v133 = 0;
  v134 = 1065353216;
  v135 = vadd_f32(vadd_f32(v73, vrev64_s32(v74)), 0);
  v136 = vaddv_f32(v74) + 0.0;
  v137 = v136 + 1.0;
  *&v75 = sub_2761558A0(&v181, &v128, &v164).u64[0];
  if (infoCopy)
  {
    objc_msgSend_scale(infoCopy, v75, *v76.i64, v77);
    v76.i32[0] = v120;
    v78 = v121;
  }

  else
  {
    v78 = 0;
    v76.i32[0] = 0;
  }

  v122[0] = v76.i32[0];
  *&v122[1] = *v76.i32 * 0.0;
  *&v122[2] = *v76.i32 * 0.0;
  *&v122[3] = *v76.i32 * 0.0;
  *v76.i8 = vmul_f32(v78, 0);
  v123 = vzip1_s32(*v76.i8, v78);
  v124 = vzip1q_s32(v76, v76);
  v125 = vzip2_s32(v78, *v76.i8);
  v126 = xmmword_2764D5F20;
  sub_2761558A0(&v164, v122, &v174);
  v80 = 0;
  v81 = vmul_f32(v175, 0);
  *v82.i8 = v177;
  v83 = vadd_f32(*v174.f32, v81).u32[0];
  v84.i32[0] = vdup_lane_s32(v81, 1).u32[0];
  *v85.f32 = vmla_f32(v81, 0, *v174.f32);
  *v86.f32 = v177;
  v86.i64[1] = __PAIR64__(v177.u32[0], LODWORD(v178));
  v85.f32[2] = (v176 * 0.0) + (v174.f32[2] * 0.0);
  *v87.i8 = v179;
  v85.i32[3] = v83;
  v88 = vmlaq_f32(v85, 0, v86);
  *v86.f32 = v179;
  v86.i64[1] = __PAIR64__(v179.u32[0], LODWORD(v180));
  v89 = vaddq_f32(v86, v88);
  v86.i32[0] = vdup_lane_s32(*v174.f32, 1).u32[0];
  *&v86.u32[2] = v175;
  v86.i32[1] = v174.i32[2];
  v84.f32[1] = v176 * 0.0;
  v84.i64[1] = v174.i64[0];
  v90 = vaddq_f32(v86, v84);
  v91 = vuzp2q_s32(v82, vzip1q_s32(v82, v82));
  v92 = v91;
  v92.f32[1] = v178;
  v92.i32[3] = v91.i32[0];
  v93 = vuzp2q_s32(v87, vzip1q_s32(v87, v87));
  v94 = v93;
  v94.f32[1] = v180;
  v94.i32[3] = v93.i32[0];
  v95 = vaddq_f32(v94, vmlaq_f32(v90, 0, v92));
  v184 = v89;
  v185 = v95;
  v96 = COERCE_DOUBLE(vadd_f32(v179, vmla_f32(vmla_f32(v175, 0, *v174.f32), 0, v177)));
  *&v186[1] = v96;
  v186[0] = v180 + ((v174.f32[2] + v176) + (v178 * 0.0));
  v186[3] = v180 + ((v176 + (v174.f32[2] * 0.0)) + (v178 * 0.0));
  v181 = 0;
  *&v182[8] = 0u;
  *v182 = xmmword_2764D6880;
  v183 = xmmword_2764D6700;
  v97 = &v181;
  do
  {
    v98 = *v97++;
    v99 = &v184 + 12 * v98;
    v100 = *v39 + v80;
    v101 = *v99;
    *v100 = *v99;
    LODWORD(v101) = *(v99 + 2);
    *(v100 + 8) = LODWORD(v101);
    v80 += 12;
  }

  while (v80 != 72);
  v102 = objc_msgSend_mesh(v8, v79, v101, v96, *v95.i64);
  objc_msgSend_geometry_(v18, v103, v104, v105, v106, v102);

  v166 = 0;
  v165 = 0;
  v164 = 1065353216;
  v167 = 1065353216;
  v168 = 0;
  v169 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 1065353216;
  v173 = 1065353216;
  objc_msgSend_replace_(v18, v107, v108, v109, v110, &v164);
  v115 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v111, v112, v113, v114, 1);
  objc_msgSend_submit_(v18, v116, v117, v118, v119, v115);
}

@end