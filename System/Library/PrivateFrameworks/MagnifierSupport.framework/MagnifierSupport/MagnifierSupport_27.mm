id SCNNode.init(_:)(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 32);
  v31 = *(a1 + 16);
  v32 = v11;
  v12 = *(a1 + 64);
  v33 = *(a1 + 48);
  v34 = v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v10 dimensions];
  sub_257ECFB60();
  v17 = [objc_opt_self() boxWithWidth:v14 height:v15 length:v16 chamferRadius:0.0];
  v18 = [ObjCClassFromMetadata nodeWithGeometry_];

  v19 = v18;
  [v19 setOpacity_];
  result = [v10 identifier];
  if (result)
  {
    v21 = result;
    sub_257ECCCD0();

    sub_257ECCCA0();
    (*(v3 + 8))(v9, v2);
    v22 = sub_257ECF4C0();

    [v19 setName_];

    [v10 transform];
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;

    [v19 setSimdTransform_];
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257E4F980(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v33 = a4;
  v7 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 16);
  if (v15)
  {
    v16 = (v12 + 8);
    v17 = (a3 + 96);
    while (1)
    {
      v18 = *(v17 - 8);
      v19 = *(v17 - 3);
      v36 = *(v17 - 2);
      v37 = v19;
      v20 = *(v17 - 1);
      v34 = *v17;
      v35 = v20;
      v21 = v18;
      v22 = [v21 identifier];
      if (!v22)
      {
        break;
      }

      v23 = v22;
      sub_257ECCCD0();

      v24 = sub_257ECCCA0();
      v26 = v25;
      (*v16)(v14, v7);
      if (a2)
      {
        if (v24 == a1 && v26 == a2)
        {

LABEL_13:
          v29 = v33;
          *v33 = v21;
          v30 = v36;
          v29[1] = v37;
          v29[2] = v30;
          v31 = v34;
          v29[3] = v35;
          v29[4] = v31;
          return;
        }

        v27 = sub_257ED0640();

        if (v27)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v17 += 5;
      if (!--v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v28 = v33;
    v33[3] = 0u;
    v28[4] = 0u;
    v28[1] = 0u;
    v28[2] = 0u;
    *v28 = 0u;
  }
}

uint64_t SCNBox.dimensions.getter()
{
  [v0 width];
  [v0 height];
  [v0 length];

  return sub_257ECFB40();
}

id SCNBox.dimensions.setter(float a1, float a2, float a3)
{
  [v3 setWidth_];
  [v3 setHeight_];

  return [v3 setLength_];
}

id SCNNode.tip.getter()
{
  sub_257E51910();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  LODWORD(v3) = v8;

  *&v1 = (v5 + v7) * 0.5;
  *&v2 = (v6 + v9) * 0.5;
  return [v0 convertPosition:0 toNode:{v1, v3, v2}];
}

id SCNNode.base.getter()
{
  sub_257E51910();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  LODWORD(v3) = v6;

  *&v1 = (v5 + v8) * 0.5;
  *&v2 = (v7 + v9) * 0.5;
  return [v0 convertPosition:0 toNode:{v1, v3, v2}];
}

void sub_257E4FDE8(float32x4_t a1)
{
  v2 = *v1;
  v174 = *(v1 + 32);
  v175 = *(v1 + 16);
  v172 = *(v1 + 64);
  v173 = *(v1 + 48);
  [*v1 transform];
  v163 = vsubq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v3.f32[0]), v174, *v3.f32, 1), v173, v3, 2), v172, v3, 3), a1);
  [v2 transform];
  v154 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v4.f32[0]), v174, *v4.f32, 1), v173, v4, 2), v172, v4, 3);
  [v2 transform];
  v140 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v5.f32[0]), v174, *v5.f32, 1), v173, v5, 2), v172, v5, 3);
  [v2 transform];
  v7 = v154;
  v7.i32[1] = v140.i32[1];
  v7.i32[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v6), v174, *&v6, 1), v173, v6, 2), v172, v6, 3).i32[2];
  v8 = vmulq_f32(v163, v7);
  v9 = fabsf(v8.f32[2] + vaddv_f32(*v8.f32));
  [v2 dimensions];
  if (v9 < (0.5 * v10))
  {
    v11 = v163;
    v11.i32[3] = 0;
    v164 = v11;
    [v2 transform];
    v155 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v12.f32[0]), v174, *v12.f32, 1), v173, v12, 2), v172, v12, 3);
    [v2 transform];
    v141 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v13.f32[0]), v174, *v13.f32, 1), v173, v13, 2), v172, v13, 3);
    [v2 transform];
    v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v14.f32[0]), v174, *v14.f32, 1), v173, v14, 2), v172, v14, 3);
    v16 = v155;
    v16.i32[1] = v141.i32[1];
    v16.i32[2] = v15.i32[2];
    v17 = vmulq_f32(v164, v16);
    v18 = fabsf(v17.f32[2] + vaddv_f32(*v17.f32));
    [v2 dimensions];
    if (v18 < vmuls_lane_f32(0.5, v19, 1))
    {
      [v2 transform];
      v156 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v20.f32[0]), v174, *v20.f32, 1), v173, v20, 2), v172, v20, 3);
      [v2 transform];
      v142 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v21.f32[0]), v174, *v21.f32, 1), v173, v21, 2), v172, v21, 3);
      [v2 transform];
      v23 = v156;
      v23.i32[1] = v142.i32[1];
      v23.i32[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v22), v174, *&v22, 1), v173, v22, 2), v172, v22, 3).i32[2];
      v24 = vmulq_f32(v164, v23);
      v25 = fabsf(v24.f32[2] + vaddv_f32(*v24.f32));
      [v2 dimensions];
      if (v25 < vmuls_lane_f32(0.5, v26, 2))
      {
        return;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A28, &unk_257EDD510);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_257EDBBA0;
  [v2 transform];
  v165 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v28.f32[0]), v174, *v28.f32, 1), v173, v28, 2), v172, v28, 3);
  [v2 dimensions];
  v143 = v29;
  [v2 transform];
  v157 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v30.f32[0]), v174, *v30.f32, 1), v173, v30, 2), v172, v30, 3).u32[0];
  [v2 transform];
  v139 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v31), v174, *&v31, 1), v173, v31, 2), v172, v31, 3).i32[1];
  v144 = 0.5 * v143;
  [v2 transform];
  *v165.f32 = vadd_f32(*v165.f32, vmul_n_f32(__PAIR64__(v139, v157), v144));
  *&v145 = v165.f32[2] + vmuls_lane_f32(v144, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v32.f32[0]), v174, *v32.f32, 1), v173, v32, 2), v172, v32, 3), 2);
  [v2 transform];
  v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v33.f32[0]), v174, *v33.f32, 1), v173, v33, 2), v172, v33, 3).u32[0];
  v33.i64[0] = v165.i64[0];
  v33.i64[1] = v145;
  v158 = v34;
  v166 = v33;
  [v2 transform];
  v146 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v35.f32[0]), v174, *v35.f32, 1), v173, v35, 2), v172, v35, 3);
  [v2 transform];
  *&v37 = __PAIR64__(v146.u32[1], v158);
  *(&v37 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v36), v174, *&v36, 1), v173, v36, 2), v172, v36, 3).u32[2];
  v159 = v37;
  [v2 transform];
  v146.i32[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v38.f32[0]), v174, *v38.f32, 1), v173, v38, 2), v172, v38, 3).u32[0];
  [v2 transform];
  v130 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v39.f32[0]), v174, *v39.f32, 1), v173, v39, 2), v172, v39, 3);
  [v2 transform];
  *&v41 = __PAIR64__(v130.u32[1], v146.u32[0]);
  *(&v41 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v40), v174, *&v40, 1), v173, v40, 2), v172, v40, 3).u32[2];
  v147 = v41;
  [v2 transform];
  v130.i32[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v42.f32[0]), v174, *v42.f32, 1), v173, v42, 2), v172, v42, 3).u32[0];
  [v2 transform];
  v123 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v43.f32[0]), v174, *v43.f32, 1), v173, v43, 2), v172, v43, 3);
  [v2 transform];
  v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v44.f32[0]), v174, *v44.f32, 1), v173, v44, 2), v172, v44, 3);
  *v44.f32 = vsub_f32(0, __PAIR64__(v123.u32[1], v130.u32[0]));
  v44.f32[2] = 0.0 - v45.f32[2];
  v44.i32[3] = 0;
  v131 = v44;
  [v2 dimensions];
  v124 = v46;
  [v2 dimensions];
  *(v27 + 32) = v166;
  *(v27 + 48) = v159;
  *(v27 + 64) = v147;
  *(v27 + 80) = v131;
  *(v27 + 96) = vtrn2q_s32(v124, vzip2q_s32(v124, v47)).u64[0];
  [v2 transform];
  v167 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v48.f32[0]), v174, *v48.f32, 1), v173, v48, 2), v172, v48, 3);
  [v2 dimensions];
  *&v147 = v49;
  [v2 transform];
  LODWORD(v159) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v50.f32[0]), v174, *v50.f32, 1), v173, v50, 2), v172, v50, 3).u32[0];
  [v2 transform];
  v132 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v51.f32[0]), v174, *v51.f32, 1), v173, v51, 2), v172, v51, 3);
  LODWORD(v147) = vmuls_lane_f32(0.5, *&v147, 1);
  [v2 transform];
  *v167.f32 = vadd_f32(*v167.f32, vmul_n_f32(__PAIR64__(v132.u32[1], v159), *&v147));
  *&v147 = v167.f32[2] + vmuls_lane_f32(*&v147, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v52.f32[0]), v174, *v52.f32, 1), v173, v52, 2), v172, v52, 3), 2);
  [v2 transform];
  *&v54 = v167.i64[0];
  *(&v54 + 1) = v147;
  LODWORD(v159) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v53.f32[0]), v174, *v53.f32, 1), v173, v53, 2), v172, v53, 3).u32[0];
  v168 = v54;
  [v2 transform];
  v148 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v55.f32[0]), v174, *v55.f32, 1), v173, v55, 2), v172, v55, 3);
  [v2 transform];
  *&v57 = __PAIR64__(v148.u32[1], v159);
  *(&v57 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v56), v174, *&v56, 1), v173, v56, 2), v172, v56, 3).u32[2];
  v160 = v57;
  [v2 transform];
  v148.i32[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v58.f32[0]), v174, *v58.f32, 1), v173, v58, 2), v172, v58, 3).u32[0];
  [v2 transform];
  v133 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v59.f32[0]), v174, *v59.f32, 1), v173, v59, 2), v172, v59, 3);
  [v2 transform];
  *&v61 = __PAIR64__(v133.u32[1], v148.u32[0]);
  *(&v61 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v60), v174, *&v60, 1), v173, v60, 2), v172, v60, 3).u32[2];
  v149 = v61;
  [v2 transform];
  v133.i32[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v62.f32[0]), v174, *v62.f32, 1), v173, v62, 2), v172, v62, 3).u32[0];
  [v2 transform];
  [v2 transform];
  *&v65 = __PAIR64__(v128, v133.u32[0]);
  *(&v65 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v64), v174, *&v64, 1), v173, v64, 2), v172, v64, 3).u32[2];
  v134 = v65;
  [v2 dimensions];
  v125 = v66;
  [v2 dimensions];
  *(v27 + 112) = v168;
  *(v27 + 128) = v160;
  *(v27 + 144) = v149;
  *(v27 + 160) = v134;
  *(v27 + 176) = __PAIR64__(v67, v125);
  [v2 transform];
  v169 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v68.f32[0]), v174, *v68.f32, 1), v173, v68, 2), v172, v68, 3);
  [v2 dimensions];
  v150 = v69;
  [v2 transform];
  LODWORD(v160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v70.f32[0]), v174, *v70.f32, 1), v173, v70, 2), v172, v70, 3).u32[0];
  [v2 transform];
  v135 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v71.f32[0]), v174, *v71.f32, 1), v173, v71, 2), v172, v71, 3);
  v150.i32[0] = vmuls_lane_f32(0.5, v150, 2);
  [v2 transform];
  *v169.f32 = vadd_f32(*v169.f32, vmul_n_f32(__PAIR64__(v135.u32[1], v160), v150.f32[0]));
  v150.f32[0] = v169.f32[2] + vmuls_lane_f32(v150.f32[0], vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v72.f32[0]), v174, *v72.f32, 1), v173, v72, 2), v172, v72, 3), 2);
  [v2 transform];
  LODWORD(v160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v73.f32[0]), v174, *v73.f32, 1), v173, v73, 2), v172, v73, 3).u32[0];
  *&v74 = v169.i64[0];
  *(&v74 + 1) = v150.u32[0];
  v170 = v74;
  [v2 transform];
  v151 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v75.f32[0]), v174, *v75.f32, 1), v173, v75, 2), v172, v75, 3);
  [v2 transform];
  *&v77 = __PAIR64__(v151.u32[1], v160);
  *(&v77 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v76), v174, *&v76, 1), v173, v76, 2), v172, v76, 3).u32[2];
  v161 = v77;
  [v2 transform];
  v151.i32[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v78.f32[0]), v174, *v78.f32, 1), v173, v78, 2), v172, v78, 3).u32[0];
  [v2 transform];
  v136 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v79.f32[0]), v174, *v79.f32, 1), v173, v79, 2), v172, v79, 3);
  [v2 transform];
  *&v126 = 0.0 - COERCE_FLOAT(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v80), v174, *&v80, 1), v173, v80, 2), v172, v80, 3).i32[2]);
  [v2 transform];
  v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v81.f32[0]), v174, *v81.f32, 1), v173, v81, 2), v172, v81, 3).u32[0];
  *v81.f32 = vsub_f32(0, __PAIR64__(v136.u32[1], v151.u32[0]));
  v81.i64[1] = v126;
  v136.i32[0] = v82;
  v152 = v81;
  [v2 transform];
  [v2 transform];
  *&v85 = __PAIR64__(v127.u32[1], v136.u32[0]);
  *(&v85 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, *&v84), v174, *&v84, 1), v173, v84, 2), v172, v84, 3).u32[2];
  v137 = v85;
  [v2 dimensions];
  v127.i64[0] = v86;
  [v2 dimensions];
  *(v27 + 192) = v170;
  *(v27 + 208) = v161;
  *(v27 + 224) = v152;
  *(v27 + 240) = v137;
  *(v27 + 256) = __PAIR64__(v87, v127.u32[0]);
  v178 = v27;
  v88 = MEMORY[0x277D84F90];
  v179 = MEMORY[0x277D84F90];

  sub_257BF2684(0, 3, 0);
  for (i = 0; i != 240; i += 80)
  {
    v138 = *(v27 + i + 32);
    v153 = *(v27 + i + 48);
    v162 = *(v27 + i + 80);
    v171 = *(v27 + i + 64);
    v90 = *(v27 + i + 96);
    [v2 transform];
    v93 = *(v179 + 16);
    v92 = *(v179 + 24);
    if (v93 >= v92 >> 1)
    {
      v127 = v91;
      sub_257BF2684((v92 > 1), v93 + 1, 1);
      v91 = v127;
    }

    v94 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, v91.f32[0]), v174, *v91.f32, 1), v173, v91, 2), v172, v91, 3);
    v94.i64[0] = vsubq_f32(vaddq_f32(v94, v94), v138).u64[0];
    v94.f32[2] = (v94.f32[2] + v94.f32[2]) - v138.f32[2];
    v94.i32[3] = 0;
    *&v95 = vsubq_f32(0, v153).u64[0];
    *(&v95 + 2) = 0.0 - v153.f32[2];
    HIDWORD(v95) = 0;
    *&v96 = vsubq_f32(0, v162).u64[0];
    *(&v96 + 2) = 0.0 - v162.f32[2];
    HIDWORD(v96) = 0;
    *(v179 + 16) = v93 + 1;
    v97 = v179 + 80 * v93;
    *(v97 + 32) = v94;
    *(v97 + 48) = v95;
    *(v97 + 64) = v171;
    *(v97 + 80) = v96;
    *(v97 + 96) = v90;
  }

  sub_257EB0504(v179);
  v98 = *(v27 + 16);
  if (v98)
  {
    sub_257BF2664(0, v98, 0);
    v99 = v88;
    v100 = v178 + 32;
    v101 = a1;
    do
    {
      *v102.i64 = sub_257E50E10(v101);
      v104 = v88[1].u64[0];
      v103 = v88[1].u64[1];
      v105 = v104 + 1;
      if (v104 >= v103 >> 1)
      {
        v176 = v102;
        sub_257BF2664((v103 > 1), v104 + 1, 1);
        v102 = v176;
      }

      v88[1].i64[0] = v105;
      v88[v104 + 2] = v102;
      v100 += 80;
      --v98;
      v101 = a1;
    }

    while (v98);
    goto LABEL_16;
  }

  v105 = v88[1].i64[0];
  if (v105)
  {
    v99 = v88;
LABEL_16:
    sub_257BF2644(0, v105, 0);
    v106 = v88;
    v107 = v88[1].u64[0];
    v108 = 2 * v107;
    v109 = 2;
    v110 = a1;
    do
    {
      v111 = v99[v109];
      v112 = v106[1].u64[1];
      v113 = v107 + 1;
      if (v107 >= v112 >> 1)
      {
        v177 = v99[v109];
        sub_257BF2644((v112 > 1), v107 + 1, 1);
        v111 = v177;
        v110 = a1;
      }

      v114 = vsubq_f32(v111, v110);
      v115 = vmulq_f32(v114, v114);
      v106[1].i64[0] = v113;
      v116 = &v106[v108];
      v116[2] = v111;
      v116[3].f32[0] = sqrtf(v115.f32[2] + vaddv_f32(*v115.f32));
      v108 += 2;
      ++v109;
      v107 = v113;
      --v105;
    }

    while (v105);
    goto LABEL_20;
  }

  v106 = MEMORY[0x277D84F90];
LABEL_20:

  v119 = v106[1].i64[0];
  if (v119)
  {
    v120 = v106[2];
    v121 = v119 - 1;
    if (v121)
    {
      v117.i32[0] = v106[3].i32[0];
      v122 = v106 + 5;
      do
      {
        v118.i32[0] = v122->i32[0];
        v120 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v117, v118), 0), v122[-1], v120);
        if (*v122->i32 < v117.f32[0])
        {
          v117.i32[0] = v122->i32[0];
        }

        v122 += 2;
        --v121;
      }

      while (v121);
    }
  }

  else
  {
    __break(1u);
  }
}

id DetectedObject.init()@<X0>(uint64_t a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D36CE8]) init];
  if (result)
  {
    *a1 = result;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DetectedObject.hash(into:)(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  *&v8 = MEMORY[0x28223BE20](v2, v4, v5, v6, v7).n128_u64[0];
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*v1 identifier];
  if (result)
  {
    v12 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_257E50E10(float32x4_t a1)
{
  v2 = *(v1 + 16);
  v3 = vsubq_f32(*v1, a1);
  v4 = COERCE_FLOAT(*(v1 + 8));
  v3.f32[2] = v4 - a1.f32[2];
  v5 = vmulq_f32(v2, v3);
  v5.f32[0] = v5.f32[2] + vaddv_f32(*v5.f32);
  *a1.f32 = vadd_f32(*a1.f32, vmul_n_f32(*v2.f32, v5.f32[0]));
  v6 = a1.f32[2] + vmuls_lane_f32(v5.f32[0], v2, 2);
  *v2.f32 = vsub_f32(*v1, *a1.f32);
  v2.f32[2] = v4 - v6;
  v7 = *(v1 + 48);
  v8 = vmulq_f32(v7, v2);
  v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  v10 = *(v1 + 64);
  if ((0.5 * v10.f32[0]) < fabsf(v9))
  {
    v11 = -v10.f32[0];
    if (v9 > 0.0)
    {
      LODWORD(v11) = *(v1 + 64);
    }

    v12 = v9 + (v11 * -0.5);
    *a1.f32 = vadd_f32(*a1.f32, vmul_n_f32(*v7.f32, v12));
    v6 = v6 + vmuls_lane_f32(v12, v7, 2);
  }

  a1.i64[1] = LODWORD(v6);
  v13 = vsubq_f32(*v1, a1);
  v13.f32[2] = v4 - a1.f32[2];
  v14 = *(v1 + 32);
  v15 = vmulq_f32(v14, v13);
  v16 = v15.f32[2] + vaddv_f32(*v15.f32);
  if (vmuls_lane_f32(0.5, v10, 1) < fabsf(v16))
  {
    LODWORD(v17) = HIDWORD(*(v1 + 64));
    if (v16 <= 0.0)
    {
      v17 = -v10.f32[1];
    }

    a1.i64[0] = vaddq_f32(a1, vmulq_n_f32(v14, v16 + (v17 * -0.5))).u64[0];
  }

  return *a1.i64;
}

id DetectedObject.hashValue.getter()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  sub_257ED07B0();
  result = [v9 identifier];
  if (result)
  {
    v11 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v2 + 8))(v8, v1);
    return sub_257ED0800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257E51040()
{
  v1 = [*v0 identifier];
  if (v1)
  {
    v2 = v1;
    sub_257ECCCD0();
  }

  else
  {
    __break(1u);
  }
}

double sub_257E510CC()
{
  v8.columns[3] = *(v0 + 64);
  v8.columns[1] = *(v0 + 32);
  v8.columns[2] = *(v0 + 48);
  v8.columns[0] = *(v0 + 16);
  [*v0 transform];
  v5.columns[0] = v1;
  v5.columns[1] = v2;
  v5.columns[2] = v3;
  v5.columns[3] = v4;
  v6 = v8;

  return simd_mul(v6, v5);
}

id sub_257E51138()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  sub_257ED07B0();
  result = [v9 identifier];
  if (result)
  {
    v11 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v2 + 8))(v8, v1);
    return sub_257ED0800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_257E5125C(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  *&v8 = MEMORY[0x28223BE20](v2, v4, v5, v6, v7).n128_u64[0];
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*v1 identifier];
  if (result)
  {
    v12 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_257E51368(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  sub_257ED07B0();
  result = [v10 identifier];
  if (result)
  {
    v12 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v3 + 8))(v9, v2);
    return sub_257ED0800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ObjectPointer.init(length:)(uint64_t a1, double a2)
{
  v33.receiver = v2;
  v33.super_class = type metadata accessor for ObjectPointer();
  v4 = objc_msgSendSuper2(&v33, sel_init);
  v5 = sub_257ECF4C0();
  [v4 setName_];

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_2815447E0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  sub_257ECFD50();

  if (v32 >= 2u)
  {
    v15 = objc_opt_self();
    v16 = v4;
    if (v32 == 2)
    {
      v14 = [v15 boxWithWidth:0.025 height:a2 length:2.5 chamferRadius:0.0];
    }

    else
    {
      v14 = [v15 boxWithWidth:0.025 height:a2 length:1.5 chamferRadius:0.0];
    }
  }

  else
  {
    v12 = objc_opt_self();
    v13 = v4;
    v14 = [v12 cylinderWithRadius:0.0125 height:a2];
  }

  v17 = v14;
  [v4 setGeometry_];

  v18 = v4;
  [v18 setOpacity_];
  v19 = [objc_opt_self() shapeWithNode:v18 options:0];
  v20 = [objc_opt_self() bodyWithType:2 shape:v19];

  [v18 setPhysicsBody_];
  v21 = [v18 physicsBody];
  if (v21)
  {
    v22 = v21;
    [v21 setCategoryBitMask_];
  }

  [v18 setCategoryBitMask_];
  v23 = [v18 physicsBody];

  if (v23)
  {
    [v23 setContactTestBitMask_];
  }

  [v18 simdLocalRotateBy_];
  v24 = [v18 simdLocalRotateBy_];
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);

  sub_257ECFD50();

  v29.i8[0] = v32;
  v30.i32[0] = 3;
  v29.i32[0] = vbslq_s8(vdupq_lane_s8(*&vcgtq_u8(v30, v29), 0), 0, xmmword_257EED2D0).u32[0];
  *v30.i32 = a2 * 0.5;
  v29.i32[1] = v30.i32[0];
  [v18 simdLocalTranslateBy_];

  return v18;
}

unint64_t sub_257E51910()
{
  result = qword_27F8FA5C0;
  if (!qword_27F8FA5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8FA5C0);
  }

  return result;
}

id ObjectPointer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_257E51A64(void *a1)
{
  v2 = v1;
  v47 = sub_257ECCCF0();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v5, v6, v7, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECFBA0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x28223BE20](v19, v20, v21, v22, v23).n128_u64[0];
  v26 = &v46 - v25;
  v27 = [a1 planeExtent];
  [v27 width];
  v29 = v28;

  v30 = [a1 planeExtent];
  [v30 height];
  v32 = v31;

  v33 = [objc_opt_self() planeWithWidth:v29 height:v32];
  v34 = objc_opt_self();
  v46 = v33;
  v35 = [v34 nodeWithGeometry_];
  v36 = OBJC_IVAR____TtC16MagnifierSupport5Plane_extentNode;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport5Plane_extentNode] = v35;
  v37 = v35;
  [a1 center];
  [v37 setSimdPosition_];

  v38 = *&v2[v36];
  [v38 eulerAngles];
  LODWORD(v39) = -1077342246;
  [v38 setEulerAngles_];

  sub_257ECFBB0();
  (*(v12 + 32))(&v2[OBJC_IVAR____TtC16MagnifierSupport5Plane_classification], v26, v11);
  sub_257ECFBB0();
  v40 = (*(v12 + 88))(v18, v11);
  if (v40 == *MEMORY[0x277D82D58])
  {
    goto LABEL_2;
  }

  if (v40 == *MEMORY[0x277D82D68] || v40 == *MEMORY[0x277D82D70] || v40 == *MEMORY[0x277D82D88])
  {
LABEL_10:
    [*&v2[v36] setCategoryBitMask_];
    goto LABEL_11;
  }

  if (v40 != *MEMORY[0x277D82D78] && v40 != *MEMORY[0x277D82D60])
  {
    if (v40 != *MEMORY[0x277D82D80] && v40 != *MEMORY[0x277D82D50])
    {
LABEL_2:
      (*(v12 + 8))(v18, v11);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v41 = type metadata accessor for Plane(0);
  v48.receiver = v2;
  v48.super_class = v41;
  v42 = objc_msgSendSuper2(&v48, sel_init);
  v43 = [a1 identifier];
  sub_257ECCCD0();

  sub_257ECCCA0();
  (*(v4 + 8))(v10, v47);
  v44 = sub_257ECF4C0();

  [v42 setName_];

  sub_257E51F5C();
  [v42 addChildNode_];

  return v42;
}

void sub_257E51F5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport5Plane_extentNode);
  v2 = [v1 geometry];
  if (v2)
  {
    v3 = v2;
    v6 = [v2 firstMaterial];

    if (v6)
    {
      v4 = [v6 diffuse];
      v5 = [objc_opt_self() blueColor];
      [v4 setContents_];

      [v6 setDoubleSided_];
      [v1 setOpacity_];
    }
  }
}

id sub_257E520D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

BOOL sub_257E52218(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_257E52248@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_257E52274@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_257E52350@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  [*a1 width];
  [v3 height];
  [v3 length];
  result = sub_257ECFB40();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

id (*SCNBox.dimensions.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  [v1 width];
  [v1 height];
  [v1 length];
  sub_257ECFB40();
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  return sub_257E52464;
}

id sub_257E52464(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  [*a1 setWidth_];
  [v1 setHeight_];

  return [v1 setLength_];
}

SCNVector3 __swiftcall SCNVector3.normalize()()
{
  v3 = sqrtf(((v0.n128_f32[0] * v0.n128_f32[0]) + (v1 * v1)) + (v2 * v2));
  v0.n128_f32[0] = v0.n128_f32[0] / v3;
  v4 = sub_257ECFB50(v0, v1 / v3, v2 / v3);
  result.z = v6;
  result.y = v5;
  result.x = v4;
  return result;
}

uint64_t sub_257E52540@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D13C4C(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id _s16MagnifierSupport14DetectedObjectV2eeoiySbAC_ACtFZ_0(id *a1, void **a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v12, v13, v14, v15, v16).n128_u64[0];
  v19 = &v33 - v18;
  v20 = *a2;
  result = [*a1 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  sub_257ECCCD0();

  v23 = sub_257ECCCA0();
  v25 = v24;
  v26 = *(v5 + 8);
  v26(v19, v4);
  result = [v20 identifier];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v27 = result;
  sub_257ECCCD0();

  v28 = sub_257ECCCA0();
  v30 = v29;
  v26(v11, v4);
  if (v23 == v28 && v25 == v30)
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_257ED0640();
  }

  return (v32 & 1);
}

uint64_t sub_257E52780@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D13C4C(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_257E527BC(uint64_t a1)
{
  result = sub_257C5885C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_257E527E8()
{
  result = qword_27F8FA5D8;
  if (!qword_27F8FA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5D8);
  }

  return result;
}

unint64_t sub_257E52840()
{
  result = qword_27F8FA5E0;
  if (!qword_27F8FA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5E0);
  }

  return result;
}

unint64_t sub_257E52898()
{
  result = qword_27F8FA5E8;
  if (!qword_27F8FA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5E8);
  }

  return result;
}

unint64_t sub_257E528F0()
{
  result = qword_27F8FA5F0;
  if (!qword_27F8FA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5F0);
  }

  return result;
}

unint64_t sub_257E52948()
{
  result = qword_27F8FA5F8;
  if (!qword_27F8FA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5F8);
  }

  return result;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_257E529B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257E52A00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for Plane(uint64_t a1)
{
  result = qword_27F8FA618;
  if (!qword_27F8FA618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257E52AE4(uint64_t a1)
{
  result = sub_257ECFBA0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy72_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_257E52BB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_257E52BD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

void sub_257E52C40()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport29CaptureSettingsViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257C60F40();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      sub_257EB6FD8(v7, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_257E52DDC(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257E52F98(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MagnifierSupport29CaptureSettingsViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport29CaptureSettingsViewController_speechFeedbackSubscription] = 0;
  if (a2)
  {
    v12 = sub_257ECF4C0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id sub_257E53148(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport29CaptureSettingsViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport29CaptureSettingsViewController_speechFeedbackSubscription] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_257E53318(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF4C0();
  v5 = sub_257ECCE30();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  if (!sub_257ECCEA0())
  {
    v7 = [v6 textLabel];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
      v11 = sub_257ECF4C0();
      v12 = sub_257ECF4C0();
      v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

      if (!v13)
      {
        sub_257ECF500();
        v13 = sub_257ECF4C0();
      }

      [v8 setText_];
    }

    v14 = [v6 textLabel];
    if (v14)
    {
      v15 = v14;
      [v14 setNumberOfLines_];
    }

    v16 = [v6 textLabel];
    if (v16)
    {
      v17 = v16;
      [v16 setLineBreakMode_];
    }

    v18 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = qword_2815447E0;

    if (v19 != -1)
    {
      v20 = swift_once();
    }

    MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
    sub_257ECFD50();

    v25 = sub_257C592D0(1u, v27);

    [v18 setOn_];
    [v18 addTarget:v2 action:sel_didToggleCaptureSwitch_ forControlEvents:4096];
    [v6 setAccessoryView_];
    [v6 setAccessoryType_];
  }

  return v6;
}

unint64_t sub_257E53A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for MAGOutputEvent(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

char *sub_257E53B7C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_257E53C20(uint64_t a1)
{
  if (qword_281544FE0 == -1)
  {
    goto LABEL_2;
  }

LABEL_40:
  swift_once();
LABEL_2:
  swift_beginAccess();
  v2 = qword_2815447E0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  v8 = v33;
  if ([a1 isOn])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_257BFD908(0, *(v33 + 16) + 1, 1, v33);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_257BFD908((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v8[v10 + 32] = 1;
    goto LABEL_29;
  }

  v11 = *(v33 + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

  a1 = 0;
  do
  {
    if (*(v33 + a1 + 32) == 1)
    {
      v12 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_44;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_45;
      }

      while (1)
      {
        v11 = *(v8 + 2);
        if (v12 != v11)
        {
          v27 = v8 + 32;
          v28 = &v8[a1 + 33];
          while (v12 < v11)
          {
            v30 = *v28;
            if (v30 != 1)
            {
              if (v12 != a1)
              {
                if (a1 >= v11)
                {
                  __break(1u);
                  break;
                }

                v29 = v27[a1];
                v27[a1] = v30;
                *v28 = v29;
                v11 = *(v8 + 2);
              }

              ++a1;
            }

            ++v12;
            ++v28;
            if (v12 == v11)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v11 = v12;
LABEL_19:
        if (v11 < a1)
        {
          goto LABEL_42;
        }

        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v8 = sub_257C7DF14(v8);
      }
    }

    ++a1;
  }

  while (v11 != a1);
LABEL_14:
  a1 = *(v33 + 16);
LABEL_21:
  v12 = a1;
  if (__OFADD__(v11, a1 - v11))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v8 + 3) >> 1)
  {
    if (v11 <= a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = v11;
    }

    v8 = sub_257BFD908(isUniquelyReferenced_nonNull_native, v14, 1, v8);
  }

  sub_257E53B7C(a1, v11, 0);
LABEL_29:
  v15 = swift_beginAccess();
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();

  v20 = swift_beginAccess();
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);

  sub_257ECFD50();

  v25 = sub_257D53928();
  sub_257D53B38(v8, v31, v32, v25);

  return result;
}

unint64_t sub_257E54108(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FA6A0, &qword_257EDB150);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_257E541E4()
{
  result = sub_257E5420C();
  qword_281548060 = result;
  *algn_281548068 = v1;
  qword_281548070 = v2;
  return result;
}

uint64_t sub_257E5420C()
{
  if (qword_281543D78 != -1)
  {
    swift_once();
  }

  v1 = qword_281548080;
  v0 = *algn_281548088;
  v38 = qword_281548080;
  v39 = *algn_281548088;
  HIDWORD(v33) = byte_286903AD8;
  if (byte_286903AD8)
  {
    v2 = 1684099177;
  }

  else
  {
    v2 = 0x656E6F685069;
  }

  if (byte_286903AD8)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  v36 = v2;
  v37 = v3;
  v4 = sub_257BDAB08();

  v5 = MEMORY[0x277D837D0];
  v6 = sub_257ED0150();

  if ((v6 & 1) == 0)
  {
    v38 = v1;
    v39 = v0;
    HIDWORD(v33) = byte_286903AD9;
    v2 = byte_286903AD9 ? 1684099177 : 0x656E6F685069;
    v3 = byte_286903AD9 ? 0xE400000000000000 : 0xE600000000000000;
    v36 = v2;
    v37 = v3;

    v7 = sub_257ED0150();

    if ((v7 & 1) == 0)
    {
      return 2;
    }
  }

  v36 = v2;
  v37 = v3;
  v34 = 0;
  v35 = 0xE000000000000000;

  v32[3] = v4;
  v32[0] = v5;
  v32[1] = v4;
  v8 = sub_257ED0120();
  v10 = v9;

  v38 = 44;
  v39 = 0xE100000000000000;
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v32[2] = &v38;
  v16 = sub_257D3F6FC(0x7FFFFFFFFFFFFFFFLL, 1, sub_257C119FC, v32, v8, v10, &v33);
  if (!v16[2])
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = v16;
  v18 = v16[4];
  v19 = v16[5];
  if (!((v19 ^ v18) >> 14))
  {
    goto LABEL_33;
  }

  v21 = v16[6];
  v20 = v16[7];
  sub_257E54EE0(v16[4], v19, v21, v20, 10);
  if ((v22 & 0x100) != 0)
  {

    sub_257E54948(v18, v19, v21, v20, 10);
    v24 = v23;

    if (v24)
    {
      goto LABEL_33;
    }
  }

  else if (v22)
  {
    goto LABEL_33;
  }

  if (v17[2] < 2uLL)
  {
    goto LABEL_32;
  }

  v25 = v17[8];
  v26 = v17[9];
  v28 = v17[10];
  v27 = v17[11];

  if (!((v26 ^ v25) >> 14))
  {
LABEL_33:

    return 2;
  }

  sub_257E54EE0(v25, v26, v28, v27, 10);
  if ((v29 & 0x100) != 0)
  {
    sub_257E54948(v25, v26, v28, v27, 10);
  }

  v30 = v29;

  if (v30)
  {
    return 2;
  }

  return HIDWORD(v33);
}

uint64_t sub_257E54590()
{
  result = sub_257E545B4();
  qword_281548080 = result;
  *algn_281548088 = v1;
  return result;
}

uint64_t sub_257E545B4()
{
  v46 = *MEMORY[0x277D85DE8];
  v0 = sub_257ED0830();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v39, 0x500uLL);
  uname(&v39);
  v33 = *&v39.machine[16];
  v34 = *v39.machine;
  v31 = *&v39.machine[48];
  v32 = *&v39.machine[32];
  v36 = *&v39.machine[80];
  v37 = *&v39.machine[64];
  v35 = *&v39.machine[96];
  *(&v44 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA6B8, &qword_257EED670);
  v7 = swift_allocObject();
  *&v43 = v7;
  v8 = v33;
  v7[1] = v34;
  v7[2] = v8;
  v9 = v31;
  v7[3] = v32;
  v7[4] = v9;
  v10 = *&v39.machine[112];
  v11 = v36;
  v7[5] = v37;
  v7[6] = v11;
  v7[7] = v35;
  v7[8] = v10;
  v12 = *&v39.machine[144];
  v7[9] = *&v39.machine[128];
  v7[10] = v12;
  v13 = *&v39.machine[176];
  v7[11] = *&v39.machine[160];
  v7[12] = v13;
  v14 = *&v39.machine[208];
  v7[13] = *&v39.machine[192];
  v7[14] = v14;
  v15 = *&v39.machine[240];
  v7[15] = *&v39.machine[224];
  v7[16] = v15;
  sub_257ED0810();
  *&v37 = v6;
  *&v36 = sub_257ED0820();
  sub_257ED03F0();
  sub_257ED0490();
  if (*(&v45 + 1))
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    v18 = MEMORY[0x277D84F70];
    v19 = MEMORY[0x277D84900];
    do
    {
      v42[0] = v43;
      v42[1] = v44;
      v42[2] = v45;
      sub_257E5546C(v42, &v40);

      if (swift_dynamicCast() && v38)
      {
        if ((v38 & 0x80) != 0)
        {
          __break(1u);
        }

        v40 = v38;
        v20 = sub_257ECF5C0();
        v21 = v16;
        v22 = v19;
        v23 = v18;
        v24 = v20;
        v26 = v25;
        v40 = v21;
        v41 = v17;

        v27 = v24;
        v18 = v23;
        v19 = v22;
        MEMORY[0x259C72150](v27, v26);

        v16 = v40;
        v17 = v41;
      }

      sub_257E554DC(v42);
      sub_257ED0490();
    }

    while (*(&v45 + 1));
  }

  else
  {
    v16 = 0;
  }

  (*(v29 + 8))(v37, v30);
  return v16;
}

void sub_257E548D4()
{
  v0 = sub_257ECF4C0();
  v1 = MGGetSInt32Answer();

  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    byte_281548078 = v1 != 2;
  }
}

void sub_257E54948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  sub_257E54FAC();

  v6 = sub_257ECF710();
  v8 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_257C76858(v6, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = sub_257ED0320();
      v10 = v66;
    }

    v11 = *v9;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v21 = v10 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v9)
          {
            v25 = 0;
            v26 = v9 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_125;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v25 * a5;
              if ((v25 * a5) >> 64 == (v25 * a5) >> 63)
              {
                v25 = v29 + (v27 + v28);
                if (!__OFADD__(v29, (v27 + v28)))
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (v9)
        {
          v33 = 0;
          while (1)
          {
            v34 = *v9;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_125;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 == (v33 * a5) >> 63)
            {
              v33 = v36 + (v34 + v35);
              if (!__OFADD__(v36, (v34 + v35)))
              {
                ++v9;
                if (--v10)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v12)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (v9)
        {
          v16 = 0;
          v17 = v9 + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                if (v18 < 0x61 || v18 >= v15)
                {
                  break;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = v16 * a5;
            if ((v16 * a5) >> 64 == (v16 * a5) >> 63)
            {
              v16 = v20 - (v18 + v19);
              if (!__OFSUB__(v20, (v18 + v19)))
              {
                ++v17;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v7) & 0xF;
  v67 = v8;
  v68 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v58 = 0;
        v59 = a5 + 48;
        v60 = a5 + 55;
        v61 = a5 + 87;
        if (a5 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v67;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_125;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          v65 = v58 * a5;
          if ((v58 * a5) >> 64 == (v58 * a5) >> 63)
          {
            v58 = v65 + (v63 + v64);
            if (!__OFADD__(v65, (v63 + v64)))
            {
              v62 = (v62 + 1);
              if (--v39)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v67 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_125;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 == (v41 * a5) >> 63)
          {
            v41 = v48 - (v46 + v47);
            if (!__OFSUB__(v48, (v46 + v47)))
            {
              ++v45;
              if (--v40)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v50 = 0;
      v51 = a5 + 48;
      v52 = a5 + 55;
      v53 = a5 + 87;
      if (a5 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v67 + 1;
      while (1)
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_125;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = v50 * a5;
        if ((v50 * a5) >> 64 == (v50 * a5) >> 63)
        {
          v50 = v57 + (v55 + v56);
          if (!__OFADD__(v57, (v55 + v56)))
          {
            ++v54;
            if (--v49)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_257E54EE0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_257ED0320();
  }

  result = sub_257E55000(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_257E54FAC()
{
  result = qword_27F8FA6B0;
  if (!qword_27F8FA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA6B0);
  }

  return result;
}

uint64_t sub_257E55000(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_257C76C50(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_257ECF6A0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_257C76C50(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_257C76C50(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_257ECF6A0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_257E5546C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA6C0, &unk_257EED678);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E554DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA6C0, &unk_257EED678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257E55548()
{
  result = qword_27F8FA6C8;
  if (!qword_27F8FA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA6C8);
  }

  return result;
}

unint64_t sub_257E555A0()
{
  result = qword_27F8FA6D0;
  if (!qword_27F8FA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA6D0);
  }

  return result;
}

unint64_t sub_257E55660()
{
  result = qword_27F8FA6D8;
  if (!qword_27F8FA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA6D8);
  }

  return result;
}

uint64_t sub_257E556B4()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F913300);
  __swift_project_value_buffer(v0, qword_27F913300);
  return sub_257ECCA00();
}

uint64_t sub_257E55718()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257E55808, v3, v2);
}

uint64_t sub_257E55808()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EDE770;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257E558EC;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257E558EC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257E55A2C;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257E55A2C()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete DetectDoorsIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257E55BA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4788 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F913300);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257E55C50(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E55D24, v3, v2);
}

uint64_t sub_257E55D24()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EED790, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257E55E38(uint64_t a1)
{
  v2 = sub_257E55660();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257E55E84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257E55718();
}

id sub_257E55F30(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = UIEdgeInsetsInsetRect_1(a1.n128_f64[0], a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], *&v4[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_topInset], *&v4[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_leftInset]);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for PaddingLabel();
  return objc_msgSendSuper2(&v13, sel_drawTextInRect_, v5, v7, v9, v11);
}

double sub_257E56084()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PaddingLabel();
  objc_msgSendSuper2(&v3, sel_intrinsicContentSize);
  return v1 + *&v0[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_leftInset] + *&v0[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_rightInset];
}

id sub_257E5619C(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_topInset] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_bottomInset] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_leftInset] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_rightInset] = 0x4014000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PaddingLabel();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_257E56278(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_257E5673C();
}

void sub_257E562DC(void *a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_257E5673C();
}

void (*sub_257E56344(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_257E563A8;
}

void sub_257E563A8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_257E5673C();
  }
}

uint64_t sub_257E563DC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v6 = swift_allocObject();
  v7 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount);
  v8 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_257ED6D30;
  v9 = MEMORY[0x277D83C10];
  *(v6 + 56) = v8;
  *(v6 + 64) = v9;
  *(v6 + 32) = v7;
  v10 = sub_257ECF540();

  return v10;
}

id sub_257E56544(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotImage] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_badgeView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ImageWell();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_257E5673C();
  }

  return v4;
}

id sub_257E56608(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph] = 0;
  *&v5[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount] = 0;
  *&v5[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotImage] = 0;
  *&v5[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_badgeView] = 0;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for ImageWell();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
  sub_257E5673C();
  [v10 setShowsLargeContentViewer_];
  [v10 setScalesLargeContentImage_];
  v11 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v10 addInteraction_];

  return v10;
}

void sub_257E5673C()
{
  v1 = v0;
  v91 = objc_opt_self();
  v2 = [v91 clearColor];
  [v1 setBackgroundColor_];

  [v1 setAutoresizesSubviews_];
  v3 = [v1 imageView];
  if (v3)
  {
    v4 = v3;
    [v3 setContentMode_];
  }

  v5 = [v1 imageView];
  if (v5)
  {
    v6 = v5;
    [v5 setClipsToBounds_];
  }

  v7 = [v1 imageView];
  if (v7)
  {
    v8 = v7;
    [v1 bounds];
    [v8 setFrame_];
  }

  v9 = [v1 imageView];
  if (v9)
  {
    v10 = v9;
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v11 = [v1 imageView];
  if (v11)
  {
    v12 = v11;
    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_257EDBE40;
    v15 = v12;
    v16 = [v15 widthAnchor];
    v17 = [v1 widthAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 multiplier:0.75];

    *(v14 + 32) = v18;
    v19 = [v15 heightAnchor];
    v20 = [v1 heightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 multiplier:0.75];

    *(v14 + 40) = v21;
    v22 = [v15 centerXAnchor];
    v23 = [v1 centerXAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    *(v14 + 48) = v24;
    v25 = [v15 centerYAnchor];

    v26 = [v1 centerYAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v14 + 56) = v27;
    sub_257C80FFC();
    v28 = sub_257ECF7F0();

    [v13 activateConstraints_];
  }

  v29 = [v1 imageView];
  if (v29)
  {
    if (qword_281544A78 != -1)
    {
      v90 = v29;
      swift_once();
      v29 = v90;
    }

    v30 = v29;
    [v29 setBackgroundColor_];
  }

  v31 = [v1 imageView];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 layer];

    v34 = [v91 systemYellowColor];
    v35 = [v34 CGColor];

    [v33 setBorderColor_];
  }

  v36 = [v1 imageView];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 layer];

    [v38 setBorderWidth_];
  }

  v39 = [v1 imageView];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 layer];

    [v41 setCornerRadius_];
  }

  v42 = [v1 imageView];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 layer];

    if (qword_281544A80 != -1)
    {
      swift_once();
    }

    [v44 setCornerCurve_];
  }

  v45 = [v1 imageView];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 layer];

    [v47 setMasksToBounds_];
  }

  v48 = [v1 imageView];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 layer];

    if (qword_281544A78 != -1)
    {
      swift_once();
    }

    v51 = [qword_281548308 CGColor];
    [v50 setShadowColor_];
  }

  v52 = [v1 imageView];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 layer];

    LODWORD(v55) = 1.0;
    [v54 setShadowOpacity_];
  }

  v56 = [v1 imageView];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 layer];

    [v58 setShadowOffset_];
  }

  v59 = [v1 imageView];
  if (v59)
  {
    v60 = v59;
    v61 = [v59 layer];

    [v61 setShadowRadius_];
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v62 = *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotImage];
  if (v62 || (v63 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph, swift_beginAccess(), (v62 = *&v1[v63]) != 0))
  {
    [v1 setImage:v62 forState:0];
  }

  v64 = [objc_allocWithZone(type metadata accessor for PaddingLabel()) initWithFrame_];
  v65 = *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_badgeView];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_badgeView] = v64;
  v66 = v64;

  if (v66)
  {
    v67 = v66;
    [v67 setTranslatesAutoresizingMaskIntoConstraints_];
    v68 = [v91 systemYellowColor];
    [v67 setBackgroundColor_];

    v69 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount;
    v70 = v67;
    sub_257ED0600();
    v71 = sub_257ECF4C0();

    [v70 setText_];

    v72 = [v91 blackColor];
    [v70 setTextColor_];

    v73 = [objc_opt_self() systemFontOfSize:16.0 weight:*MEMORY[0x277D743F8]];
    [v70 setFont_];

    v74 = 0.0;
    if (*&v1[v69] > 0)
    {
      v74 = 1.0;
    }

    [v70 setAlpha_];
    v75 = [v70 layer];
    [v75 setCornerRadius_];

    v76 = [v70 layer];
    [v76 setMasksToBounds_];

    [v1 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_257EDBE40;
    v78 = [v70 leftAnchor];
    v79 = [v1 leftAnchor];
    v80 = [v78 constraintEqualToAnchor:v79 constant:15.0];

    *(v77 + 32) = v80;
    v81 = [v70 bottomAnchor];
    v82 = [v1 bottomAnchor];
    v83 = [v81 constraintEqualToAnchor:v82 constant:-15.0];

    *(v77 + 40) = v83;
    v84 = [v70 widthAnchor];
    v85 = [v84 constraintGreaterThanOrEqualToConstant_];

    *(v77 + 48) = v85;
    v86 = [v70 &selRef_prepare + 2];

    v87 = [v86 constraintGreaterThanOrEqualToConstant_];
    *(v77 + 56) = v87;
    v88 = objc_opt_self();
    sub_257C80FFC();
    v89 = sub_257ECF7F0();

    [v88 activateConstraints_];
  }
}

void sub_257E572C8(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount] = a2;
  v5 = *&v2[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotImage];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotImage] = a1;
  v6 = a1;

  [v3 setImage:v6 forState:0];
  v7 = *&v3[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_badgeView];
  if (v7)
  {
    v8 = v7;
    sub_257ED0600();
    v9 = sub_257ECF4C0();

    [v8 setText_];

    v10 = 0.0;
    if (*&v3[v4] > 0)
    {
      v10 = 1.0;
    }

    [v8 setAlpha_];
  }
}

void *sub_257E57494()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_257E5755C()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v6 = swift_allocObject();
  v7 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount);
  v8 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_257ED6D30;
  v9 = MEMORY[0x277D83C10];
  *(v6 + 56) = v8;
  *(v6 + 64) = v9;
  *(v6 + 32) = v7;
  v10 = sub_257ECF540();

  return v10;
}

id sub_257E576E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_257E578B0()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    sub_257ECCB20();
  }

  else
  {
    __break(1u);
  }
}

void sub_257E579C8()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v87 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v91 = &v84 - v12;
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v88 = &v84 - v18;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v92 = &v84 - v24;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v89 = &v84 - v30;
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v93 = &v84 - v36;
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v43 = &v84 - v42;
  MEMORY[0x28223BE20](v44, v45, v46, v47, v48);
  v50 = &v84 - v49;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = objc_opt_self();
  v53 = [v52 bundleForClass_];
  v54 = sub_257ECF4C0();
  v55 = sub_257ECF4C0();
  v56 = [v53 URLForResource:v54 withExtension:v55];

  if (!v56)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_257ECCB20();

  v86 = v1;
  v58 = *(v1 + 32);
  v57 = v1 + 32;
  v59 = v58;
  v58(v50, v43, v0);
  v60 = [v52 bundleForClass_];
  v61 = sub_257ECF4C0();
  v62 = sub_257ECF4C0();
  v63 = [v60 URLForResource:v61 withExtension:v62];

  if (!v63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v90 = v50;
  v64 = v89;
  sub_257ECCB20();

  v59(v93, v64, v0);
  v65 = [v52 bundleForClass_];
  v66 = sub_257ECF4C0();
  v67 = sub_257ECF4C0();
  v68 = [v65 URLForResource:v66 withExtension:v67];

  if (!v68)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v69 = v88;
  sub_257ECCB20();

  v59(v92, v69, v0);
  v70 = [v52 bundleForClass_];
  v71 = sub_257ECF4C0();
  v72 = sub_257ECF4C0();
  v73 = [v70 URLForResource:v71 withExtension:v72];

  if (v73)
  {
    v74 = v87;
    sub_257ECCB20();

    v84 = v57;
    v85 = v59;
    v59(v91, v74, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59F0, &qword_257EDB250);
    v75 = v86;
    v76 = *(v86 + 72);
    v77 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_257EDBE50;
    v79 = v78 + v77;
    v80 = *(v75 + 16);
    v80(v79, v90, v0);
    v81 = v93;
    v80(v79 + v76, v93, v0);
    v82 = v92;
    v80(v79 + 2 * v76, v92, v0);
    v85(v79 + 3 * v76, v91, v0);
    v83 = *(v75 + 8);
    v83(v82, v0);
    v83(v81, v0);
    v83(v90, v0);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_257E57FC4()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v44 = &v44 - v13;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  v45 = &v44 - v26;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();
  v29 = [v28 bundleForClass_];
  v30 = sub_257ECF4C0();
  v31 = sub_257ECF4C0();
  v32 = [v29 URLForResource:v30 withExtension:v31];

  if (v32)
  {
    sub_257ECCB20();

    v33 = *(v1 + 32);
    v34 = v45;
    v33(v45, v20, v0);
    v35 = [v28 bundleForClass_];
    v36 = sub_257ECF4C0();
    v37 = sub_257ECF4C0();
    v38 = [v35 URLForResource:v36 withExtension:v37];

    if (v38)
    {
      sub_257ECCB20();

      v39 = v44;
      v33(v44, v7, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59F0, &qword_257EDB250);
      v40 = *(v1 + 72);
      v41 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_257ED9BD0;
      v43 = v42 + v41;
      (*(v1 + 16))(v43, v34, v0);
      v33((v43 + v40), v39, v0);
      (*(v1 + 8))(v34, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_257E58338()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    sub_257ECCB20();
  }

  else
  {
    __break(1u);
  }
}

void sub_257E58450()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v44 = &v44 - v13;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  v45 = &v44 - v26;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();
  v29 = [v28 bundleForClass_];
  v30 = sub_257ECF4C0();
  v31 = sub_257ECF4C0();
  v32 = [v29 URLForResource:v30 withExtension:v31];

  if (v32)
  {
    sub_257ECCB20();

    v33 = *(v1 + 32);
    v34 = v45;
    v33(v45, v20, v0);
    v35 = [v28 bundleForClass_];
    v36 = sub_257ECF4C0();
    v37 = sub_257ECF4C0();
    v38 = [v35 URLForResource:v36 withExtension:v37];

    if (v38)
    {
      sub_257ECCB20();

      v39 = v44;
      v33(v44, v7, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59F0, &qword_257EDB250);
      v40 = *(v1 + 72);
      v41 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_257ED9BD0;
      v43 = v42 + v41;
      (*(v1 + 16))(v43, v34, v0);
      v33((v43 + v40), v39, v0);
      (*(v1 + 8))(v34, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257E587C4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_257ECCB70();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

void sub_257E5881C()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    sub_257ECCB20();
  }

  else
  {
    __break(1u);
  }
}

void sub_257E58934()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v44 = &v44 - v13;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  v45 = &v44 - v26;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();
  v29 = [v28 bundleForClass_];
  v30 = sub_257ECF4C0();
  v31 = sub_257ECF4C0();
  v32 = [v29 URLForResource:v30 withExtension:v31];

  if (v32)
  {
    sub_257ECCB20();

    v33 = *(v1 + 32);
    v34 = v45;
    v33(v45, v20, v0);
    v35 = [v28 bundleForClass_];
    v36 = sub_257ECF4C0();
    v37 = sub_257ECF4C0();
    v38 = [v35 URLForResource:v36 withExtension:v37];

    if (v38)
    {
      sub_257ECCB20();

      v39 = v44;
      v33(v44, v7, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59F0, &qword_257EDB250);
      v40 = *(v1 + 72);
      v41 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_257ED9BD0;
      v43 = v42 + v41;
      (*(v1 + 16))(v43, v34, v0);
      v33((v43 + v40), v39, v0);
      (*(v1 + 8))(v34, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

float sub_257E58C8C(int a1)
{
  result = 1.0;
  if (!*(v1 + 16) && (*(v1 + 24) & 1) == 0 && (*(v1 + 32) & 1) == 0 && (*(v1 + 68) & 1) == 0 && (*(v1 + 76) & 1) == 0)
  {
    v3 = *(v1 + 20);
    result = *(v1 + 28);
    v4 = *(v1 + 64) * a1;
    if (v3 <= (*(v1 + 72) + v4))
    {
      v3 = *(v1 + 72) + v4;
    }

    if (v3 < result)
    {
      return v3;
    }
  }

  return result;
}

void sub_257E58CF0(uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = v3[16];
  if (v5 <= 1)
  {
    if (!v3[16] || (v3[48] & 1) != 0)
    {
      goto LABEL_22;
    }

    v9 = qword_27F8F47A0;
    if (*(v3 + 5) >= a3)
    {
      goto LABEL_52;
    }

    if (qword_27F8F47A0 != -1)
    {
      swift_once();
    }

    v3 = off_27F8FA740;
    v10 = *(off_27F8FA740 + 2);
    if (v10)
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_15:
    v11 = *(v3 + 7);
    if (v11)
    {
      v12 = 4;
      do
      {
        if (v12 - *(v11 + 16) == 4)
        {
          v24 = qword_27F8F4798;

          if (v24 != -1)
          {
            swift_once();
          }

          v25 = off_27F8FA738;
          v26 = *(off_27F8FA738 + 2);
          if (v26)
          {
            v27 = v26 - 1;
            v28 = sub_257ECCB70();
            (*(*(v28 - 8) + 16))(a2, v25 + ((*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80)) + *(*(v28 - 8) + 72) * v27, v28);

            return;
          }

          __break(1u);
          goto LABEL_61;
        }

        v13 = *(v11 + 8 * v12++);
      }

      while (v13 < a3);
      v11 = v12 - 5;
      if (qword_27F8F4798 == -1)
      {
        goto LABEL_20;
      }

LABEL_61:
      swift_once();
LABEL_20:
      v14 = off_27F8FA738;
      if (v11 < *(off_27F8FA738 + 2))
      {
        v15 = sub_257ECCB70();
        v16 = *(v15 - 8);
        v17 = *(v16 + 16);
        v18 = v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v11;
        goto LABEL_56;
      }

      __break(1u);
LABEL_63:
      swift_once();
LABEL_32:
      v3 = off_27F8FA760;
      v10 = *(off_27F8FA760 + 2);
      if (v10)
      {
LABEL_38:
        v22 = v10 - 1;
        v15 = sub_257ECCB70();
        v23 = *(v15 - 8);
        v17 = *(v23 + 16);
        v18 = &v3[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v22];
LABEL_56:
        v20 = v15;
        v19 = a2;
        goto LABEL_57;
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_22:
    if (qword_27F8F4790 != -1)
    {
      swift_once();
    }

    v6 = sub_257ECCB70();
    v7 = v6;
    v8 = qword_27F8FA720;
    goto LABEL_29;
  }

  if (v5 == 2)
  {
    goto LABEL_15;
  }

  if (v5 != 3)
  {
    if (v3[48])
    {
      if (qword_27F8F47B8 != -1)
      {
        swift_once();
      }

      v6 = sub_257ECCB70();
      v7 = v6;
      v8 = qword_27F8FA768;
      goto LABEL_29;
    }

LABEL_34:
    v21 = qword_27F8F47C0;
    if (*(v3 + 5) >= a3)
    {
      goto LABEL_48;
    }

    if (qword_27F8F47C0 != -1)
    {
      swift_once();
    }

    v3 = off_27F8FA780;
    v10 = *(off_27F8FA780 + 2);
    if (v10)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_65;
  }

  if ((v3[48] & 1) == 0)
  {
    if (*(v3 + 5) >= a3)
    {
      if (qword_27F8F47B0 == -1)
      {
LABEL_46:
        v29 = off_27F8FA760;
        v21 = *(off_27F8FA760 + 2);
        if (v21)
        {
          goto LABEL_55;
        }

        __break(1u);
LABEL_48:
        if (v21 != -1)
        {
          swift_once();
        }

        v29 = off_27F8FA780;
        v9 = *(off_27F8FA780 + 2);
        if (!v9)
        {
          __break(1u);
LABEL_52:
          if (v9 != -1)
          {
            swift_once();
          }

          v29 = off_27F8FA740;
          if (!*(off_27F8FA740 + 2))
          {
            __break(1u);
            return;
          }
        }

LABEL_55:
        v15 = sub_257ECCB70();
        v30 = *(v15 - 8);
        v17 = *(v30 + 16);
        v18 = v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        goto LABEL_56;
      }

LABEL_65:
      swift_once();
      goto LABEL_46;
    }

    if (qword_27F8F47B0 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

  if (qword_27F8F47A8 != -1)
  {
    swift_once();
  }

  v6 = sub_257ECCB70();
  v7 = v6;
  v8 = qword_27F8FA748;
LABEL_29:
  v18 = __swift_project_value_buffer(v6, v8);
  v17 = *(*(v7 - 8) + 16);
  v19 = a2;
  v20 = v7;
LABEL_57:

  v17(v19, v18, v20);
}

uint64_t sub_257E59210()
{

  return swift_deallocClassInstance();
}

unint64_t sub_257E59280()
{
  result = qword_27F8FA788;
  if (!qword_27F8FA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA788);
  }

  return result;
}

uint64_t sub_257E592EC(char a1, double a2)
{
  type metadata accessor for PitchGenerator();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 20) = 0;
  *(result + 24) = 1;
  *(result + 28) = 0;
  *(result + 32) = 1;
  *(result + 40) = a2;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 68) = 1;
  *(result + 72) = 0;
  *(result + 76) = 1;
  return result;
}

unint64_t sub_257E5935C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E0, &qword_257EDA538);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257E5ADC8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_257C03F6C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_257BEBE08(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_257E5946C(void *a1, uint64_t a2, unint64_t a3)
{
  v77 = a2;
  v5 = sub_257ECC6B0();
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v79 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECC6C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_257ECDA30();
  v19 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v20, v21, v22, v23);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v32 = &v74 - v31;
  *&v38 = MEMORY[0x28223BE20](v33, v34, v35, v36, v37).n128_u64[0];
  v40 = &v74 - v39;
  v41 = [a1 fileWrappers];
  if (!v41)
  {
    sub_257ECD340();

    v56 = sub_257ECDA20();
    v57 = sub_257ECFBE0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v76 = v12;
      v59 = v58;
      v60 = swift_slowAlloc();
      v80 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_257BF1FC8(v77, a3, &v80);
      _os_log_impl(&dword_257BAC000, v56, v57, "No package wrappers %s", v59, 0xCu);
      v61 = __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x259C74820](v60, -1, -1, v61);
      v62 = v59;
      v12 = v76;
      MEMORY[0x259C74820](v62, -1, -1);
    }

    (*(v19 + 8))(v25, v78);
    goto LABEL_12;
  }

  v42 = v41;
  sub_257E5AD28();
  v43 = sub_257ECF3D0();

  if (!*(v43 + 16) || (v44 = sub_257C03F6C(v77, a3), (v45 & 1) == 0))
  {

    sub_257ECD340();

    v49 = sub_257ECDA20();
    v50 = sub_257ECFBE0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v76 = v12;
      v53 = v52;
      v80 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_257BF1FC8(v77, a3, &v80);
      _os_log_impl(&dword_257BAC000, v49, v50, "File now found %s", v51, 0xCu);
      v54 = __swift_destroy_boxed_opaque_existential_0(v53);
      v55 = v53;
      v12 = v76;
      MEMORY[0x259C74820](v55, -1, -1, v54);
      MEMORY[0x259C74820](v51, -1, -1);
    }

    (*(v19 + 8))(v32, v78);
LABEL_12:
    sub_257ECC6A0();
    sub_257E5935C(MEMORY[0x277D84F90]);
    sub_257E5ACD0(v63);
    sub_257ECC9E0();
    sub_257ECC690();
    v12[1](v18, v11);
    swift_willThrow();
    return;
  }

  v46 = *(*(v43 + 56) + 8 * v44);

  v47 = [v46 regularFileContents];
  if (v47)
  {
    v48 = v47;
    sub_257ECCBA0();
  }

  else
  {
    sub_257ECD340();

    v64 = sub_257ECDA20();
    v65 = sub_257ECFBE0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v76 = v46;
      v67 = v66;
      v68 = swift_slowAlloc();
      v75 = v64;
      v69 = v68;
      v80 = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_257BF1FC8(v77, a3, &v80);
      v70 = v75;
      _os_log_impl(&dword_257BAC000, v75, v65, "Unable to load data %s", v67, 0xCu);
      v71 = __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x259C74820](v69, -1, -1, v71);
      v72 = v67;
      v46 = v76;
      MEMORY[0x259C74820](v72, -1, -1);
    }

    else
    {
    }

    (*(v19 + 8))(v40, v78);
    sub_257ECC6A0();
    sub_257E5935C(MEMORY[0x277D84F90]);
    sub_257E5ACD0(v73);
    sub_257ECC9E0();
    sub_257ECC690();
    v12[1](v18, v11);
    swift_willThrow();
  }
}

double sub_257E59AA8(void *a1, uint64_t a2, unint64_t a3)
{
  v71 = a3;
  v74[4] = *MEMORY[0x277D85DE8];
  v5 = sub_257ECC6B0();
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECC6C0();
  v70 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECDA30();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21, v22, v23, v24);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  v33 = &v65 - v32;
  v34 = v72;
  sub_257E5946C(a1, a2, v71);
  if (!v34)
  {
    v38 = v35;
    v65 = v33;
    v66 = 0;
    v71 = v26;
    v67 = v20;
    v68 = v19;
    v69 = v11;
    v39 = v36;
    v40 = objc_opt_self();
    v41 = v38;
    v42 = sub_257ECCB90();
    v73[0] = 0;
    v43 = [v40 propertyListWithData:v42 options:0 format:0 error:v73];

    v44 = v73[0];
    v72 = v41;
    if (v43)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE41F4(v74, v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA7A0, &qword_257EED898);
      v45 = swift_dynamicCast();
      v46 = v70;
      if (v45)
      {
        __swift_destroy_boxed_opaque_existential_0(v74);
        return sub_257BF2550(v72, v39);
      }

      else
      {
        v58 = v18;
        v59 = v39;
        v60 = v65;
        sub_257ECD340();
        v61 = sub_257ECDA20();
        v62 = sub_257ECFBE0();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_257BAC000, v61, v62, "Invalid plist format", v63, 2u);
          MEMORY[0x259C74820](v63, -1, -1);
        }

        (*(v67 + 8))(v60, v68);
        sub_257ECC6A0();
        sub_257E5935C(MEMORY[0x277D84F90]);
        sub_257E5ACD0(v64);
        sub_257ECC9E0();
        sub_257ECC690();
        (*(v46 + 8))(v58, v12);
        swift_willThrow();
        sub_257BF2550(v72, v59);
        return __swift_destroy_boxed_opaque_existential_0(v74);
      }
    }

    else
    {
      v66 = v39;
      v47 = v44;
      v48 = sub_257ECC9F0();

      swift_willThrow();
      sub_257ECD340();
      v49 = v48;
      v50 = sub_257ECDA20();
      v51 = sub_257ECFBE0();

      v52 = v18;
      if (os_log_type_enabled(v50, v51))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        v55 = v48;
        v56 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 4) = v56;
        *v54 = v56;
        _os_log_impl(&dword_257BAC000, v50, v51, "Unable to load plist %@", v53, 0xCu);
        sub_257C11B14(v54);
        MEMORY[0x259C74820](v54, -1, -1);
        MEMORY[0x259C74820](v53, -1, -1);
      }

      (*(v67 + 8))(v71, v68);
      sub_257ECC6A0();
      sub_257E5935C(MEMORY[0x277D84F90]);
      sub_257E5ACD0(v57);
      sub_257ECC9E0();
      sub_257ECC690();
      (*(v70 + 8))(v52, v12);
      swift_willThrow();
      sub_257BF2550(v72, v66);
    }
  }

  return result;
}

NSObject *sub_257E5A030(void *a1, NSObject *a2, unint64_t a3)
{
  v6 = sub_257ECC6B0();
  MEMORY[0x28223BE20](v6 - 8, v7, v8, v9, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECC6C0();
  v47 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECDA30();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22, v23, v24, v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v48;
  sub_257E5946C(a1, a2, a3);
  if (!v28)
  {
    v31 = v29;
    v32 = v30;
    v42 = v27;
    v43 = v21;
    v44 = v20;
    v45 = v19;
    v46 = v12;
    v48 = 0;
    v33 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_257E5AD74(v31, v32);
    v34 = v32;
    v35 = sub_257ECCB90();
    a2 = [v33 initWithData_];

    sub_257BF2550(v31, v34);
    if (a2)
    {
      sub_257BF2550(v31, v34);
    }

    else
    {
      v37 = v42;
      sub_257ECD340();
      a2 = sub_257ECDA20();
      v38 = sub_257ECFBE0();
      if (os_log_type_enabled(a2, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_257BAC000, a2, v38, "Unable to create image", v39, 2u);
        MEMORY[0x259C74820](v39, -1, -1);
      }

      (*(v43 + 8))(v37, v44);
      sub_257ECC6A0();
      sub_257E5935C(MEMORY[0x277D84F90]);
      sub_257E5ACD0(v40);
      v41 = v45;
      sub_257ECC9E0();
      sub_257ECC690();
      (*(v47 + 8))(v41, v13);
      swift_willThrow();
      sub_257BF2550(v31, v34);
    }
  }

  return a2;
}

void sub_257E5A374(void *a1)
{
  v3 = sub_257ECC6B0();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECC6C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECDA30();
  v90 = *(v17 - 8);
  v91 = v17;
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v82 - v29;
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v89 = &v82 - v36;
  *&v42 = MEMORY[0x28223BE20](v37, v38, v39, v40, v41).n128_u64[0];
  v95 = MEMORY[0x277D84F90];
  v43 = [a1 fileWrappers];
  if (!v43)
  {
    sub_257ECD340();
    v47 = sub_257ECDA20();
    v48 = sub_257ECFBE0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_257BAC000, v47, v48, "No package wrappers", v49, 2u);
      MEMORY[0x259C74820](v49, -1, -1);
    }

    (*(v90 + 8))(v23, v91);
    sub_257ECC6A0();
    sub_257E5935C(MEMORY[0x277D84F90]);
    sub_257E5ACD0(v50);
    sub_257ECC9E0();
    sub_257ECC690();
    (*(v10 + 8))(v16, v9);
    goto LABEL_23;
  }

  v44 = v43;
  v88 = v16;
  sub_257E5AD28();
  v45 = sub_257ECF3D0();

  sub_257E59AA8(a1, 0x746E656D75636F64, 0xEE007473696C702ELL);
  if (v1)
  {

LABEL_23:
    swift_willThrow();
    return;
  }

  v51 = v46;
  if (!*(v46 + 16) || (v52 = sub_257C03F6C(0x7473694C65676170, 0xE800000000000000), (v53 & 1) == 0))
  {

    goto LABEL_20;
  }

  sub_257BE41F4(*(v51 + 56) + 32 * v52, v94);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    sub_257ECD340();
    v64 = sub_257ECDA20();
    v65 = sub_257ECFBF0();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v88;
    if (v66)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_257BAC000, v64, v65, "Invalid page list", v68, 2u);
      MEMORY[0x259C74820](v68, -1, -1);
    }

    (*(v90 + 8))(v30, v91);
    sub_257ECC6A0();
    sub_257E5935C(MEMORY[0x277D84F90]);
    sub_257E5ACD0(v69);
    sub_257ECC9E0();
    sub_257ECC690();
    (*(v10 + 8))(v67, v9);
    goto LABEL_23;
  }

  v54 = v93;
  v85 = *(v93 + 16);
  if (v85)
  {
    v82 = v10;
    v83 = v9;
    v55 = 0;
    v56 = (v93 + 40);
    v86 = v93;
    while (1)
    {
      if (v55 >= *(v54 + 16))
      {
        __break(1u);
        return;
      }

      v57 = *(v56 - 1);
      v58 = *v56;
      v59 = *(v45 + 16);

      if (!v59)
      {
        break;
      }

      v60 = sub_257C03F6C(v57, v58);
      if ((v61 & 1) == 0)
      {
        break;
      }

      v84 = v57;
      v87 = *(*(v45 + 56) + 8 * v60);
      v62 = sub_257E5A030(v87, 0x6E702E6567616D69, 0xE900000000000067);

      v63 = v62;
      MEMORY[0x259C72300]();
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      ++v55;
      sub_257ECF860();

      v56 += 2;
      v54 = v86;
      if (v85 == v55)
      {
        goto LABEL_24;
      }
    }

    v70 = v89;
    sub_257ECD340();

    v71 = sub_257ECDA20();
    v72 = sub_257ECFBF0();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = v57;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v94[0] = v75;
      *v74 = 136315138;
      v76 = sub_257BF1FC8(v73, v58, v94);

      *(v74 + 4) = v76;
      _os_log_impl(&dword_257BAC000, v71, v72, "Could not find data for page %s", v74, 0xCu);
      v77 = __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x259C74820](v75, -1, -1, v77);
      MEMORY[0x259C74820](v74, -1, -1);
    }

    else
    {
    }

    (*(v90 + 8))(v70, v91);
    v79 = v82;
    v78 = v83;
    v80 = v88;
    sub_257ECC6A0();
    sub_257E5935C(MEMORY[0x277D84F90]);
    sub_257E5ACD0(v81);
    sub_257ECC9E0();
    sub_257ECC690();
    (*(v79 + 8))(v80, v78);
    goto LABEL_23;
  }

LABEL_24:
}

unint64_t sub_257E5ACD0(__n128 a1)
{
  result = qword_27F8FA790;
  if (!qword_27F8FA790)
  {
    sub_257ECC6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA790);
  }

  return result;
}

unint64_t sub_257E5AD28()
{
  result = qword_27F8FA798;
  if (!qword_27F8FA798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8FA798);
  }

  return result;
}

double sub_257E5AD74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_257ECC3F0();
  }

  sub_257ECC3F0();
  return result;
}

uint64_t sub_257E5ADC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E8, &qword_257EDA540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E5AE38()
{

  return swift_deallocClassInstance();
}

uint64_t String.localized.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

void String.localizedForDeviceVariant.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECF4C0();
  v5[4] = sub_257E5BD88;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_257E5BE70;
  v5[3] = &block_descriptor_60;
  v3 = _Block_copy(v5);
  v4 = AXLocStringForDeviceVariant();
  _Block_release(v3);

  if (v4)
  {
    sub_257ECF500();
  }

  else
  {
    __break(1u);
  }
}

Swift::String __swiftcall generateTextToDisplay(depth:longUnitStyle:)(Swift::Int32 depth, Swift::Bool longUnitStyle)
{
  v49 = longUnitStyle;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v48[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568, &qword_257EE4C98);
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  v50 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v48[-v22];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v24 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  swift_beginAccess();
  v25 = *(v24 + 8);
  v26 = *(v24 + 16);
  v51[0] = *v24;
  v51[1] = v25;
  v52 = v26;
  v27 = qword_2815447E0;

  if (v27 != -1)
  {
    v28 = swift_once();
  }

  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  *&v48[-16] = v51;
  sub_257ECFD50();

  v33 = v53;
  depthRoundingIncrement(for:)(depth);
  v34 = objc_opt_self();
  v35 = [v34 millimeters];
  sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
  sub_257ECC740();
  if (v33)
  {
    v36 = &selRef_feet;
  }

  else
  {
    v36 = &selRef_meters;
  }

  v37 = [v34 *v36];
  sub_257ECC770();

  sub_257ECC750();
  v38 = *(v4 + 8);
  v38(v10, v3);
  v39 = [v34 *v36];
  sub_257ECC740();
  (*(v4 + 56))(v23, 0, 1, v3);
  v40 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v40 setUnitOptions_];
  if (v49)
  {
    [v40 setUnitStyle_];
  }

  v41 = v50;
  sub_257D3E9E8(v23, v50);
  v42 = (*(v4 + 48))(v41, 1, v3);
  if (v42 == 1)
  {
    __break(1u);
  }

  else
  {
    v44 = sub_257ECFE20();
    v46 = v45;

    sub_257BE4084(v23, &qword_27F8F8568, &qword_257EE4C98);
    v38(v41, v3);
    v42 = v44;
    v43 = v46;
  }

  result._object = v43;
  result._countAndFlagsBits = v42;
  return result;
}

BOOL sub_257E5B4BC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 orientation];

  return (v1 - 3) < 2;
}

void sub_257E5B51C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 orientation];

  if (v1 == 3 || v1 == 4)
  {
    CGSizeMake();
  }
}

Swift::Double __swiftcall depthRoundingIncrement(for:)(Swift::Int32 a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2815447E0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  sub_257ECFD50();

  result = 0.5;
  v9 = 0.25;
  if (a1 >= 0x1F4)
  {
    v9 = 0.5;
  }

  if (a1 >= 0x258)
  {
    result = 1.0;
  }

  if (!v10)
  {
    return v9;
  }

  return result;
}

void String.betterAccessibilityPronounciation.getter(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D74010];
  v3 = sub_257ECF4C0();
  v4 = AXAttributedStringForBetterPronuciation();

  if (v4)
  {
    sub_257ECF500();
  }

  else
  {
    __break(1u);
  }
}

char *sub_257E5B84C(char *result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 2);
  v4 = result + 40;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = &v4[16 * v2];
  while (1)
  {
    if (v3 == v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
      sub_257D7CDE8();
      v14 = sub_257ECF420();

      return v14;
    }

    if (v2 >= v3)
    {
      break;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v9 = *v6;
    v6 += 16;
    v8 = v9;
    ++v2;
    if (v9)
    {
      v10 = *(v6 - 3);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB3C(0, *(v5 + 2) + 1, 1, v5);
        v5 = result;
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        result = sub_257BFCB3C((v11 > 1), v12 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[16 * v12];
      *(v13 + 4) = v10;
      *(v13 + 5) = v8;
      v2 = v7;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_257E5B9B0(uint64_t result, void *a2, void *a3)
{
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v7 = *(result + 16);
  v8 = result + 32;
  while (1)
  {
    if (v7 == v5)
    {
      sub_257E5BF38(a2, a3, v6);
      v13 = v12;

      return v13;
    }

    if (v5 >= v7)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_11;
    }

    v10 = *(v8 + 8 * v5++);
    if (v10)
    {
      v11 = v10;
      MEMORY[0x259C72300]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      result = sub_257ECF860();
      v6 = v14;
      v5 = v9;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_257E5BABC(void *a1, uint64_t a2, float a3)
{
  v4 = a2;
  v7 = sub_257E5C68C(a1, a2, a3);
  v8 = v4;
  if ([v3 length] < v4)
  {
    v8 = [v3 length];
  }

  if ([a1 length] < v4)
  {
    v4 = [a1 length];
  }

  if (v4 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  sub_257BD2C2C(0, &qword_27F8FA830, 0x277CCACA8);
  v11 = sub_257ECFF80();
  v12 = sub_257ECFF50();

  if (v12)
  {
    v13 = sub_257ECFF80();
    v14 = sub_257ECFF50();

    if ((v14 & 1) == 0)
    {
      if (v8 == 1 && v4 == 1)
      {
        sub_257ECFF50();
      }

      goto LABEL_28;
    }
  }

  v15 = v7 / v10;
  v16 = sub_257ECFF80();
  v17 = sub_257ECFF50();

  if (v17)
  {
    if (v8 == 1 && v4 == 1)
    {
      v18 = 0;
      goto LABEL_19;
    }

    if (v15 <= a3)
    {
LABEL_29:
      v21 = 0;
      return v21 & 1;
    }

LABEL_28:
    v21 = 1;
    return v21 & 1;
  }

  v19 = sub_257ECFF80();
  v18 = sub_257ECFF50();

  if (v8 != 1 || v4 != 1)
  {
    if (!((v15 > a3) | v18 & 1))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_19:
  v20 = sub_257ECFF50();
  if (v15 > a3 || (v18 & 1) != 0)
  {
    goto LABEL_28;
  }

  v21 = v20 ^ 1;
  return v21 & 1;
}

uint64_t sub_257E5BCF0()
{
  v0 = sub_257ECCA10();
  __swift_allocate_value_buffer(v0, qword_27F913318);
  v1 = __swift_project_value_buffer(v0, qword_27F913318);
  *v1 = type metadata accessor for MAGUtilities();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_257E5BD88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_257ECF4C0();
    v6 = sub_257ECF4C0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    a1 = sub_257ECF500();
  }

  return a1;
}

id sub_257E5BE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_257ECF500();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_257ECC3F0();
  v2(v3, v5);
  v7 = v6;

  if (v7)
  {
    v8 = sub_257ECF4C0();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

double block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

void sub_257E5BF38(id a1, id a2, unint64_t a3)
{
  v3 = a3;
  v4 = (a3 >> 62);
  if (a3 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_31:
    v27 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v10 = sub_257ECF4C0();
    [v27 initWithString_];
LABEL_32:

    return;
  }

  while ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C72E20](0, v3);
LABEL_6:
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v9 = sub_257ECF4C0();
    v10 = [v8 initWithString_];

    if (v5 < 0)
    {
      goto LABEL_37;
    }

    if (v4)
    {
      if (sub_257ED0210() < 1)
      {
        goto LABEL_35;
      }

      v11 = sub_257ED0210();
    }

    else
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_35;
      }
    }

    if (v11 < v5)
    {
      goto LABEL_36;
    }

    if ((v3 & 0xC000000000000001) == 0 || v5 == 1)
    {

      if (!v4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_257BD2C2C(0, &qword_27F8F6E48, 0x277CCA898);

      v12 = 1;
      do
      {
        v13 = v12 + 1;
        sub_257ED02F0();
        v12 = v13;
      }

      while (v5 != v13);
      if (!v4)
      {
LABEL_18:
        v3 &= 0xFFFFFFFFFFFFFF8uLL;
        v14 = v3 + 32;
        v15 = 1;
        goto LABEL_21;
      }
    }

    v3 = sub_257ED0450();
    v14 = v16;
    v15 = v17;
    v5 = v18 >> 1;
LABEL_21:
    v19 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    swift_unknownObjectRetain();
    v20 = [v19 initWithAttributedString_];
    v21 = v5 - v15;
    if (v5 == v15)
    {
LABEL_28:

      swift_unknownObjectRelease_n();
      goto LABEL_32;
    }

    if (v5 <= v15)
    {
      v22 = v15;
    }

    else
    {
      v22 = v5;
    }

    v23 = v22 - v15;
    v24 = (v14 + 8 * v15);
    v4 = &selRef_imageByApplyingSymbolConfiguration_;
    while (v23)
    {
      v25 = *v24++;
      v26 = v25;
      [v20 appendAttributedString_];
      [v20 appendAttributedString_];

      --v23;
      if (!--v21)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    v5 = sub_257ED0210();
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_257E5C1E4()
{
  result = sub_257ECF4C0();
  qword_27F913330 = result;
  return result;
}

uint64_t sub_257E5C218()
{
  v37[6] = *MEMORY[0x277D85DE8];
  if (qword_27F8F47D0 != -1)
  {
    goto LABEL_29;
  }

LABEL_2:
  v37[0] = 0;
  v1 = [v0 recognizedPointsForGroupKey:qword_27F913330 error:v37];
  v0 = v37[0];
  if (!v1)
  {
    v27 = v37[0];
    v28 = sub_257ECC9F0();

    swift_willThrow();
    goto LABEL_34;
  }

  v2 = v1;
  type metadata accessor for VNRecognizedPointKey(0);
  sub_257BD2C2C(0, &qword_27F8F5FD0, 0x277CE2DC0);
  sub_257E5D460(&qword_27F8F5028, type metadata accessor for VNRecognizedPointKey, &unk_257ED9814);
  v3 = sub_257ECF3D0();
  v4 = v0;

  v37[0] = MEMORY[0x277D84F90];
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (2)
    {
      v10 = v9;
LABEL_12:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * v11)));
      [v12 confidence];
      if (v13 <= 0.67)
      {

        v9 = v10;
        if (v7)
        {
          continue;
        }
      }

      else
      {
        sub_257ED0330();
        sub_257ED0370();
        sub_257ED0380();
        v0 = v37;
        sub_257ED0340();
        v9 = v10;
        if (v7)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_29:
      swift_once();
      goto LABEL_2;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  v14 = v37[0];
  if ((v37[0] & 0x8000000000000000) != 0 || (v37[0] & 0x4000000000000000) != 0)
  {
    v15 = sub_257ED0210();
    if (v15)
    {
LABEL_18:
      v37[0] = MEMORY[0x277D84F90];
      sub_257BF2804(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
      }

      v16 = 0;
      v17 = v37[0];
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x259C72E20](v16, v14);
        }

        else
        {
          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        [v18 location];
        v21 = v20;
        v23 = v22;

        v37[0] = v17;
        v25 = v17[2];
        v24 = v17[3];
        if (v25 >= v24 >> 1)
        {
          sub_257BF2804((v24 > 1), v25 + 1, 1);
          v17 = v37[0];
        }

        ++v16;
        v17[2] = v25 + 1;
        v26 = &v17[2 * v25];
        v26[4] = v21;
        v26[5] = v23;
      }

      while (v15 != v16);
    }
  }

  else
  {
    v15 = *(v37[0] + 2);
    if (v15)
    {
      goto LABEL_18;
    }
  }

  Mutable = CGPathCreateMutable();
  v37[0] = 0x3FF0000000000000;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = 0x3FF0000000000000;
  v37[4] = 0;
  v37[5] = 0;
  sub_257ECFC70();

  PathBoundingBox = CGPathGetPathBoundingBox(Mutable);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  PathBoundingBox.origin.x = 0.0;
  PathBoundingBox.origin.y = 0.0;
  PathBoundingBox.size.width = 1.0;
  PathBoundingBox.size.height = 1.0;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  if (CGRectContainsRect(PathBoundingBox, v42))
  {
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v40 = CGRectStandardize(v39);
    v34 = v40.size.height;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v41 = CGRectStandardize(v40);
    v35 = v41.size.width;

    *&result = v34 * v35;
    return result;
  }

LABEL_34:
  *&result = 0.0;
  return result;
}

void *sub_257E5C68C(void *a1, uint64_t a2, float a3)
{
  v4 = a2;
  v6 = a2;
  if ([v3 length] < a2)
  {
    v6 = [v47 length];
  }

  result = [a1 length];
  if (result < v4)
  {
    result = [a1 length];
    v4 = result;
  }

  if (v4 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = v8 * a3;
  if (COERCE_INT(fabs(v9)) > 2139095039)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v9 <= -9.2234e18)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v9 >= 9.2234e18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v10 = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v10 < 0)
  {
    v11 = __OFSUB__(0, v10);
    v10 = v4 - v6;
    if (v11)
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }
  }

  v12 = v9;
  if (v10 > v9)
  {
    return (v12 + 1);
  }

  if (!v6 && v4 > 0)
  {
    return v4;
  }

  if (!v4 && v6 > 0)
  {
    return v6;
  }

  sub_257BD2C2C(0, &qword_281543DA0, 0x277D82BB8);
  v13 = sub_257ECFF50();
  result = 0;
  if ((v13 & 1) == 0)
  {
    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if ((v4 - 0xFFFFFFFFFFFFFFFLL) >> 61 != 7)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v15 = 8 * v14;
    result = malloc(8 * v14);
    if (!result)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v16 = result;
    result = malloc(v15);
    v49 = result;
    if (!result)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v4 < 0)
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    *v16 = 0;
    if (!v4)
    {
      goto LABEL_94;
    }

    if (v4 >= 4)
    {
      v20 = 0;
      v19 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      v17 = 1;
      v18 = 3;
      do
      {
        v21 = vdupq_n_s64(v20);
        v22 = vorrq_s8(v21, xmmword_257ED6D30);
        v23 = &v16[v22.i64[0]];
        *v23 = v22;
        v23[1] = vaddq_s64(v21, xmmword_257EED8D0);
        v20 += 4;
      }

      while (v19 != v20);
      if (v4 == v19)
      {
LABEL_38:
        if (v6 >= 1)
        {
          v43 = v6;
          v26 = 1;
          while (1)
          {
            v46 = v26 - v12;
            if (v26 <= v12)
            {
              v46 = 1;
            }

            else if (__OFSUB__(v26, v12))
            {
              goto LABEL_88;
            }

            if (__OFADD__(v12, v26))
            {
              goto LABEL_85;
            }

            if (v12 + v26 >= v4)
            {
              v27 = v4;
            }

            else
            {
              v27 = v12 + v26;
            }

            if (__OFADD__(v26, 1))
            {
              goto LABEL_86;
            }

            v28 = 0;
            v44 = v26 + 1;
            v45 = v26;
            *v49 = v26 + 1;
            v29 = v26 - 1;
            v30 = 0x7FFFFFFFFFFFFFFFLL;
            while (1)
            {
              if ((v27 < v28 + 1 || v28 + 1 < v46) && v12 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_77;
              }

              v33 = v12;
              v34 = [v47 characterAtIndex_];
              result = [a1 characterAtIndex_];
              if (v34 == result)
              {
                v35 = v16[v28];
              }

              else
              {
                v36 = v16[v28 + 1];
                v11 = __OFADD__(v36, 1);
                v35 = v36 + 1;
                if (v11)
                {
                  goto LABEL_78;
                }

                v37 = v49[v28];
                v11 = __OFADD__(v37, 1);
                v38 = v37 + 1;
                if (v11)
                {
                  goto LABEL_79;
                }

                v39 = v16[v28];
                v11 = __OFADD__(v39, 1);
                v40 = v39 + 1;
                if (v11)
                {
                  goto LABEL_80;
                }

                if (v38 < v35)
                {
                  v35 = v38;
                }

                if (v40 < v35)
                {
                  v35 = v40;
                }
              }

              v49[v28 + 1] = v35;
              if (v35 < v30)
              {
                v30 = v35;
              }

              v41 = v28 + 1;
              v12 = v33;
              if (v28 + 1 == v4)
              {
                break;
              }

              ++v28;
              if (__OFADD__(v41, 1))
              {
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
                goto LABEL_81;
              }
            }

            if (v30 > v33)
            {
              return (v12 + 1);
            }

            *v16 = *v49;
            result = memcpy(v16 + 1, v49 + 1, 8 * v4);
            v26 = v44;
            if (v45 == v43)
            {
              v42 = v49[v4];
              free(v16);
              free(v49);
              return v42;
            }
          }
        }

LABEL_94:
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = 0;
    }

    v24 = v4 - v19;
    v25 = v19 + 1;
    do
    {
      v16[v25] = v25;
      ++v25;
      --v24;
    }

    while (v24);
    goto LABEL_38;
  }

  return result;
}

id sub_257E5CA94()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setMinimumFractionDigits_];
  [v0 setMaximumFractionDigits_];
  result = [v0 setNumberStyle_];
  qword_27F913338 = v0;
  return result;
}

uint64_t sub_257E5CB0C()
{
  sub_257ED07B0();
  MEMORY[0x259C732E0](1);
  return sub_257ED0800();
}

uint64_t sub_257E5CB78(uint64_t a1)
{
  sub_257ED07B0();
  MEMORY[0x259C732E0](1);
  return sub_257ED0800();
}

id sub_257E5CBB8(int a1, char a2, id a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, void *a9)
{
  v15 = 0.0;
  if (a2)
  {
    [a3 size];
    v15 = v16 + 5.0;
  }

  v17 = sub_257ECF4C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90, &unk_257EED9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v19 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_257BD2C2C(0, &qword_27F8F8FA0, 0x277D74300);
  *(inited + 40) = a9;
  v20 = v19;
  v21 = a9;
  sub_257BE8668(inited);
  swift_setDeallocating();
  sub_257BE4084(inited + 32, &qword_27F8F9420, &qword_257EDA500);
  _s3__C3KeyVMa_0(0);
  sub_257E5D460(&qword_27F8F8300, _s3__C3KeyVMa_0, &unk_257ED9A34);
  v22 = sub_257ECF3C0();

  [v17 drawAtPoint:v22 withAttributes:{v15, (a4 - a6) * 0.5}];

  if (a2)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = a5 + 5.0;
  }

  [a3 size];
  v25 = (a4 - v24) * 0.5;
  [a3 size];
  v27 = v26;
  [a3 size];
  return [a3 drawInRect_];
}

id sub_257E5CF4C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DoorUIAccessibilityElement();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_257E5CF94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D128B8(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_257E5CFE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D128B8(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_257E5D074(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257E5D0E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_257E5D224(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_257E5D460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257E5D4C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257E5D508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257E5D580@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v87 = a2;
  v3 = sub_257ECE750();
  v4 = *(v3 - 8);
  v85 = v3;
  v86 = v4;
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA850, &qword_257EEDAB0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v78 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA858, &qword_257EEDAB8);
  MEMORY[0x28223BE20](v79, v17, v18, v19, v20);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v78 - v28;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA860, &qword_257EEDAC0);
  MEMORY[0x28223BE20](v80, v30, v31, v32, v33);
  v35 = &v78 - v34;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA868, &qword_257EEDAC8);
  v36 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v37, v38, v39, v40);
  v83 = &v78 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
  v81 = &v78 - v47;
  v49 = *a1;
  v48 = *(a1 + 8);
  v50 = *(a1 + 16);
  v90 = *(a1 + 32);
  v91 = v50;
  v51 = swift_allocObject();
  v52 = *(a1 + 16);
  v51[1] = *a1;
  v51[2] = v52;
  v51[3] = *(a1 + 32);
  sub_257BBD7E4(v49, v48);
  sub_257BE401C(&v91, &v88, &qword_27F8FA870, &unk_257EEDAD0);
  sub_257BE401C(&v90, &v88, &qword_27F8F5E28, &qword_257EDBCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B68, &unk_257EEDAE0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B78, &unk_257EE2B80);
  v54 = sub_257D052B8();
  v88 = v53;
  v89 = v54;
  swift_getOpaqueTypeConformance2();
  sub_257ECEEA0();
  v55 = sub_257ECED80();
  v56 = sub_257ECE930();
  v57 = &v16[*(v10 + 36)];
  *v57 = v55;
  v57[8] = v56;
  sub_257E5E2B8();
  sub_257ECEC90();
  sub_257BE4084(v16, &qword_27F8FA850, &qword_257EEDAB0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = [objc_opt_self() bundleForClass_];
  v60 = sub_257ECF4C0();
  v61 = sub_257ECF4C0();
  v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

  v63 = sub_257ECF500();
  v65 = v64;

  v88 = v63;
  v89 = v65;
  sub_257BDAB08();
  sub_257ECE200();

  sub_257BE4084(v22, &qword_27F8FA858, &qword_257EEDAB8);
  v66 = v82;
  sub_257ECE740();
  sub_257E5E39C();
  sub_257E5E604(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v67 = v85;
  sub_257ECEB60();
  (*(v86 + 8))(v66, v67);
  sub_257BE4084(v29, &qword_27F8FA858, &qword_257EEDAB8);
  v68 = &v35[*(v80 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218, &qword_257EDC800);
  sub_257ECE310();
  *v68 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B28, &qword_257EECED0);
  sub_257E5E458();
  sub_257BD2D4C(&qword_27F8F7B38, &qword_27F8F7B28, &qword_257EECED0, MEMORY[0x277CE1198]);
  v69 = v81;
  sub_257ECECA0();
  sub_257BE4084(v35, &qword_27F8FA860, &qword_257EEDAC0);
  v70 = *(v36 + 16);
  v72 = v83;
  v71 = v84;
  v70(v83, v69, v84);
  v73 = v87;
  *v87 = 0;
  *(v73 + 8) = 1;
  v74 = v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA8A0, &qword_257EEDB18);
  v70(&v74[*(v75 + 48)], v72, v71);
  v76 = *(v36 + 8);
  v76(v69, v71);
  return (v76)(v72, v71);
}

void sub_257E5DC9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2;
    sub_257CD4524(0);

    if (*a1)
    {
      (*a1)();
    }
  }

  else
  {
    type metadata accessor for MFReaderBlockManager(0);
    sub_257E5E604(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager, &protocol conformance descriptor for MFReaderBlockManager);
    sub_257ECE320();
    __break(1u);
  }
}

uint64_t sub_257E5DD48()
{
  v0 = sub_257ECE1D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECEE10();
  sub_257ECEA30();
  sub_257ECE9F0();
  v9 = sub_257ECEA50();

  KeyPath = swift_getKeyPath();
  v11 = sub_257ECE930();
  sub_257ECDF40();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v30[0]) = 0;
  v20 = sub_257ECED90();
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  v21 = qword_281548308;
  v22 = sub_257ECED30();
  v23 = sub_257ECE930();
  *&v25 = v8;
  *(&v25 + 1) = KeyPath;
  *&v26 = v9;
  BYTE8(v26) = v11;
  *&v27 = v13;
  *(&v27 + 1) = v15;
  *&v28 = v17;
  *(&v28 + 1) = v19;
  v29[0] = 0;
  *&v29[8] = v20;
  *&v29[16] = v22;
  v29[24] = v23;
  *&v29[25] = 256;
  (*(v1 + 104))(v7, *MEMORY[0x277CDFA00], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B78, &unk_257EE2B80);
  sub_257D052B8();
  sub_257ECEBA0();
  (*(v1 + 8))(v7, v0);
  v30[2] = v27;
  v30[3] = v28;
  v31[0] = *v29;
  *(v31 + 11) = *&v29[11];
  v30[0] = v25;
  v30[1] = v26;
  return sub_257E5E59C(v30);
}

__n128 sub_257E5DFDC@<Q0>(__n128 *a9@<X8>)
{
  v10 = sub_257ECE5B0();
  sub_257E5E048(&v15);
  v11 = v15;
  v12 = v17;
  v13 = v18;
  result = v16;
  a9->n128_u64[0] = v10;
  a9->n128_u64[1] = 0;
  a9[1].n128_u8[0] = 1;
  a9[1].n128_u64[1] = v11;
  a9[2] = result;
  a9[3].n128_u8[0] = v12;
  a9[3].n128_u64[1] = v13;
  return result;
}

double sub_257E5E048@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE10();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_257ECF500();
  sub_257BDAB08();
  v8 = sub_257ECEAF0();
  v10 = v9;
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  LOBYTE(v7) = v11 & 1;
  *(a1 + 24) = v11 & 1;
  *(a1 + 32) = v12;
  sub_257ECC3F0();
  sub_257BD1B90(v8, v10, v7);

  sub_257C0300C(v8, v10, v7);

  return result;
}

double sub_257E5E1DC@<D0>(uint64_t *a9@<X8>)
{
  v10 = a9;
  v11 = v9[1];
  v16[0] = *v9;
  v16[1] = v11;
  v16[2] = v9[2];
  *a9 = sub_257ECE5B0();
  v10[1] = 0;
  *(v10 + 16) = 1;
  v12 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA838, &qword_257EEDA98) + 44);
  *v12 = sub_257ECE500();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA840, &qword_257EEDAA0);
  sub_257E5D580(v16, &v12[*(v13 + 44)]);
  LOBYTE(v10) = sub_257ECE930();
  v14 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA848, &qword_257EEDAA8) + 36)];
  *v14 = v10;
  result = 0.0;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  v14[40] = 1;
  return result;
}

unint64_t sub_257E5E2B8()
{
  result = qword_27F8FA878;
  if (!qword_27F8FA878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA850, &qword_257EEDAB0);
    sub_257BD2D4C(&qword_27F8FA880, &qword_27F8FA888, &qword_257EEDB10, MEMORY[0x277CDF028]);
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190, &unk_257EDC790, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA878);
  }

  return result;
}

unint64_t sub_257E5E39C()
{
  result = qword_27F8FA890;
  if (!qword_27F8FA890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA858, &qword_257EEDAB8);
    sub_257E5E2B8();
    sub_257E5E604(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA890);
  }

  return result;
}

unint64_t sub_257E5E458()
{
  result = qword_27F8FA898;
  if (!qword_27F8FA898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA860, &qword_257EEDAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA858, &qword_257EEDAB8);
    sub_257ECE750();
    sub_257E5E39C();
    sub_257E5E604(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F7CE8, &qword_27F8F6218, &qword_257EDC800, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA898);
  }

  return result;
}

uint64_t sub_257E5E59C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B78, &unk_257EE2B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257E5E604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257E5E690(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v9 = sub_257E62C80(a1, v5, v6, v7, v8);
  (*(*(*(v2 + qword_27F913350) - 8) + 8))(a1);
  return v9;
}

void *sub_257E5E75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *((*MEMORY[0x277D85000] & *v5) + qword_27F913350);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  (*(v8 + 16))(&v15 - v10, v9);
  v11 = sub_257ECE600();
  v12 = *(v8 + 8);
  v13 = v11;
  v12(a2, v7);
  if (v11)
  {
  }

  return v11;
}

id sub_257E5E894(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ActivityHostingController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27F913350), *((*MEMORY[0x277D85000] & *v4) + qword_27F913350 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_257E5E96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ActivityHostingController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27F913350), *((*MEMORY[0x277D85000] & *v4) + qword_27F913350 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t type metadata accessor for SymbolImageView(uint64_t a1)
{
  result = qword_27F8FA940;
  if (!qword_27F8FA940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257E5EA74(uint64_t a1)
{
  sub_257E5EAF8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_257E5EAF8(uint64_t a1)
{
  if (!qword_27F8FA950)
  {
    sub_257ECDF90();
    v1 = sub_257ECDFE0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F8FA950);
    }
  }
}

uint64_t sub_257E5EB6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4998, &unk_257ED6D70);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA998, &qword_257EEDD80);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v54 - v15;
  v63 = v2;
  sub_257ECE910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9A0, &qword_257EEDD88);
  sub_257BD2D4C(&qword_27F8FA9A8, &qword_27F8FA9A0, &qword_257EEDD88, MEMORY[0x277CE1198]);
  sub_257ECDF60();
  v17 = sub_257ECE260();
  v18 = sub_257ECE950();
  v19 = &v16[*(v10 + 36)];
  *v19 = v17;
  v19[8] = v18;
  v62 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9B0, &qword_257EEDD90);
  sub_257E62F24();
  sub_257BD2D4C(&qword_27F8FA9D0, &qword_27F8FA9B0, &qword_257EEDD90, MEMORY[0x277CDDF68]);
  v58 = v9;
  sub_257ECECE0();
  sub_257BE4084(v16, &qword_27F8FA998, &qword_257EEDD80);
  sub_257ECF900();
  sub_257E62FDC(v2, &v65);
  v20 = sub_257ECF8F0();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = *(v2 + 48);
  *(v21 + 64) = *(v2 + 32);
  *(v21 + 80) = v23;
  *(v21 + 96) = *(v2 + 64);
  v24 = *(v2 + 16);
  *(v21 + 32) = *v2;
  *(v21 + 48) = v24;
  v25 = sub_257ECF930();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28, v29, v30, v31);
  v32 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v54 - v32;
  sub_257ECF910();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v56 = sub_257ECE1A0();
    v57 = &v54;
    v55 = *(v56 - 8);
    MEMORY[0x28223BE20](v56, v34, v35, v36, v37);
    v39 = &v54 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_257ED02D0();

    v65 = 0xD00000000000003CLL;
    v66 = 0x8000000257F086E0;
    v64 = 120;
    v40 = sub_257ED0600();
    MEMORY[0x259C72150](v40);

    v46 = MEMORY[0x28223BE20](v41, v42, v43, v44, v45);
    (*(v26 + 16))(&v54 - v32, v33, v25, v46);
    sub_257ECE190();
    (*(v26 + 8))(v33, v25);
    v47 = v61;
    (*(v59 + 32))(v61, v58, v60);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F49A0, &unk_257EEDDB0);
    return (*(v55 + 32))(v47 + *(v48 + 36), v39, v56);
  }

  else
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F49A8, &unk_257ED6D80);
    v51 = v61;
    v52 = (v61 + *(v50 + 36));
    v53 = sub_257ECE100();
    (*(v26 + 32))(&v52[*(v53 + 20)], &v54 - v32, v25);
    *v52 = &unk_257EEDDA8;
    *(v52 + 1) = v21;
    return (*(v59 + 32))(v51, v58, v60);
  }
}

uint64_t sub_257E5F134@<X0>(uint64_t a1@<X0>, uint64_t a9@<X8>)
{
  *a9 = sub_257ECE5B0();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAB8, &qword_257EEDEF8);
  return sub_257E5F18C(a1, a9 + *(v11 + 44));
}

uint64_t sub_257E5F18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAC0, &qword_257EEDF00);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAC8, &qword_257EEDF08);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18, v20, v21, v22, v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v32 = &v71 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAD0, &qword_257EEDF10);
  v34 = v33 - 8;
  MEMORY[0x28223BE20](v33, v35, v36, v37, v38);
  v40 = &v71 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42, v43, v44, v45);
  v47 = (&v71 - v46);
  *v47 = sub_257ECF060();
  v47[1] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAD8, &qword_257EEDF18);
  sub_257E61888(a1, v47 + *(v49 + 44));
  v50 = sub_257ECE930();
  v51 = v47 + *(v34 + 44);
  *v51 = v50;
  *(v51 + 8) = 0u;
  *(v51 + 24) = 0u;
  v51[40] = 1;
  sub_257E5F584(v32);
  v52 = sub_257ECE920();
  v53 = &v32[*(v19 + 44)];
  v72 = v32;
  *v53 = v52;
  *(v53 + 8) = 0u;
  *(v53 + 24) = 0u;
  v53[40] = 1;
  sub_257E5FCD0(v17);
  LOBYTE(a1) = sub_257ECE920();
  sub_257ECDF40();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAE0, &qword_257EEDF20) + 36)];
  *v62 = a1;
  *(v62 + 1) = v55;
  *(v62 + 2) = v57;
  *(v62 + 3) = v59;
  *(v62 + 4) = v61;
  v62[40] = 0;
  LOBYTE(a1) = sub_257ECE950();
  sub_257ECDF40();
  v63 = &v17[*(v4 + 44)];
  *v63 = a1;
  *(v63 + 1) = v64;
  *(v63 + 2) = v65;
  *(v63 + 3) = v66;
  *(v63 + 4) = v67;
  v63[40] = 0;
  v73 = v40;
  sub_257BE401C(v47, v40, &qword_27F8FAAD0, &qword_257EEDF10);
  sub_257BE401C(v32, v25, &qword_27F8FAAC8, &qword_257EEDF08);
  sub_257BE401C(v17, v10, &qword_27F8FAAC0, &qword_257EEDF00);
  v68 = v74;
  sub_257BE401C(v40, v74, &qword_27F8FAAD0, &qword_257EEDF10);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAE8, &qword_257EEDF28);
  sub_257BE401C(v25, v68 + *(v69 + 48), &qword_27F8FAAC8, &qword_257EEDF08);
  sub_257BE401C(v10, v68 + *(v69 + 64), &qword_27F8FAAC0, &qword_257EEDF00);
  sub_257BE4084(v17, &qword_27F8FAAC0, &qword_257EEDF00);
  sub_257BE4084(v72, &qword_27F8FAAC8, &qword_257EEDF08);
  sub_257BE4084(v47, &qword_27F8FAAD0, &qword_257EEDF10);
  sub_257BE4084(v10, &qword_27F8FAAC0, &qword_257EEDF00);
  sub_257BE4084(v25, &qword_27F8FAAC8, &qword_257EEDF08);
  return sub_257BE4084(v73, &qword_27F8FAAD0, &qword_257EEDF10);
}

uint64_t sub_257E5F584@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = sub_257ECE5E0();
  v3 = *(v2 - 8);
  v97 = v2;
  v98 = v3;
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v96 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB48, &qword_257EEDFC8);
  MEMORY[0x28223BE20](v94, v9, v10, v11, v12);
  v14 = &v92 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB50, &qword_257EEDFD0);
  MEMORY[0x28223BE20](v95, v15, v16, v17, v18);
  v20 = &v92 - v19;
  v102 = *(v1 + 40);
  v103 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120, &qword_257EEC460);
  sub_257ECEE80();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_257ECF4C0();
  v24 = sub_257ECF4C0();
  v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

  v26 = sub_257ECF500();
  v28 = v27;

  v100 = v26;
  v101 = v28;
  sub_257BDAB08();
  sub_257ECEAF0();
  sub_257ECF0B0();
  v93 = objc_opt_self();
  v29 = [v93 systemYellowColor];
  v30 = sub_257ECED30();
  KeyPath = swift_getKeyPath();
  v32 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB58, &qword_257EEE008) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB60, &qword_257EEE010) + 36)];
  v34 = sub_257ECE2D0();
  v35 = *(v34 + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_257ECE570();
  v38 = *(*(v37 - 8) + 104);
  v38(&v33->i8[v35], v36, v37);
  *v33 = vdupq_n_s64(0x4044000000000000uLL);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB68, &qword_257EEE018);
  *(v33->i16 + *(v39 + 36)) = 256;
  sub_257ECEA40();
  sub_257ECE9E0();
  v40 = sub_257ECEA50();

  v41 = swift_getKeyPath();
  v42 = v94;
  v43 = &v14[*(v94 + 36)];
  *v43 = v41;
  v43[1] = v40;
  v44 = sub_257E63E54();
  MEMORY[0x259C71790](1, v42, v44);
  sub_257BE4084(v14, &qword_27F8FAB48, &qword_257EEDFC8);
  v45 = swift_getKeyPath();
  v46 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FABA0, &qword_257EEE058) + 36)];
  *v46 = v45;
  v46[8] = 1;
  v100 = sub_257ECED90();
  sub_257E63B50();
  v47 = sub_257ECEDF0();
  v48 = swift_getKeyPath();
  v49 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FABA8, &qword_257EEE060) + 36)];
  *v49 = v48;
  v49[1] = v47;
  LOBYTE(v47) = sub_257ECE920();
  sub_257ECDF40();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FABB0, &qword_257EEE068) + 36)];
  *v58 = v47;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  LOBYTE(v47) = sub_257ECE990();
  sub_257ECDF40();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FABB8, &qword_257EEE070) + 36)];
  *v67 = v47;
  *(v67 + 1) = v60;
  *(v67 + 2) = v62;
  *(v67 + 3) = v64;
  *(v67 + 4) = v66;
  v67[40] = 0;
  v68 = [v93 tertiaryLabelColor];
  sub_257ECED30();
  v69 = sub_257ECEDA0();

  LOBYTE(v47) = sub_257ECE930();
  v70 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FABC0, &qword_257EEE078) + 36)];
  *v70 = v69;
  v70[8] = v47;
  v71 = &v20[*(v95 + 36)];
  v38(&v71[*(v34 + 20)], v36, v37);
  __asm { FMOV            V0.2D, #10.0 }

  *v71 = _Q0;
  *&v71[*(v39 + 36)] = 256;
  v77 = v96;
  sub_257ECE5D0();
  sub_257E640A8();
  sub_257E644A4(&qword_27F8FABF8, MEMORY[0x277CDDF20], MEMORY[0x277CDDF18]);
  v78 = v99;
  v79 = v97;
  sub_257ECEB90();
  (*(v98 + 8))(v77, v79);
  sub_257BE4084(v20, &qword_27F8FAB50, &qword_257EEDFD0);
  v80 = sub_257ECED80();
  LOBYTE(v71) = sub_257ECE930();
  v81 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAC00, &qword_257EEE080) + 36);
  *v81 = v80;
  *(v81 + 8) = v71;
  LOBYTE(v80) = sub_257ECE920();
  sub_257ECDF40();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAC08, &qword_257EEE088);
  v91 = v78 + *(result + 36);
  *v91 = v80;
  *(v91 + 8) = v83;
  *(v91 + 16) = v85;
  *(v91 + 24) = v87;
  *(v91 + 32) = v89;
  *(v91 + 40) = 0;
  return result;
}

uint64_t sub_257E5FCD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE770();
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v8 = sub_257ECEFD0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAF0, &qword_257EEDF30);
  sub_257ECEFE0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  *v15 = xmmword_257EEDB60;
  (*(v9 + 104))(v15, *MEMORY[0x277CDF100], v8);
  sub_257ECEFF0();
  v38 = v1;
  sub_257ECE5B0();
  v39 = 0;
  sub_257E644A4(&qword_27F8FAAF8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_257ED0890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB00, &qword_257EEDF38);
  sub_257E63BE0();
  sub_257ECF0A0();
  v16 = sub_257ECE940();
  sub_257ECDF40();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB30, &qword_257EEDF58) + 36);
  *v25 = v16;
  *(v25 + 8) = v18;
  *(v25 + 16) = v20;
  *(v25 + 24) = v22;
  *(v25 + 32) = v24;
  *(v25 + 40) = 0;
  v26 = sub_257ECE920();
  sub_257ECDF40();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB38, &unk_257EEDF60);
  v36 = a1 + *(result + 36);
  *v36 = v26;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_257E60018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[1] = a2;
  v32[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9D8, &qword_257EEDDC0);
  MEMORY[0x28223BE20](v32[0], v3, v4, v5, v6);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9E0, &qword_257EEDDC8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = v32 - v15;
  v17 = sub_257ECE730();
  MEMORY[0x28223BE20](v17 - 8, v18, v19, v20, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9E8, &qword_257EEDDD0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24, v25, v26, v27);
  v29 = v32 - v28;
  sub_257ECE710();
  v32[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9F0, &qword_257EEDDD8);
  sub_257E63498();
  sub_257ECE020();
  sub_257ECE720();
  v32[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA40, &qword_257EEDE10);
  sub_257E637B0();
  sub_257ECE020();
  v30 = *(v32[0] + 48);
  (*(v23 + 16))(v8, v29, v22);
  (*(v10 + 16))(&v8[v30], v16, v9);
  sub_257ECE5F0();
  (*(v10 + 8))(v16, v9);
  return (*(v23 + 8))(v29, v22);
}

uint64_t sub_257E6032C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA38, &unk_257EEDE00);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v58 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAB0, &qword_257EEDEF0);
  MEMORY[0x28223BE20](v59, v10, v11, v12, v13);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA18, &qword_257EEDDE8);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA08, &qword_257EEDDE0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v58 - v28;
  if (sub_257ECF030())
  {
    v30 = swift_allocObject();
    v31 = *(a1 + 48);
    *(v30 + 48) = *(a1 + 32);
    *(v30 + 64) = v31;
    *(v30 + 80) = *(a1 + 64);
    v32 = *(a1 + 16);
    *(v30 + 16) = *a1;
    *(v30 + 32) = v32;
    sub_257E62FDC(a1, v61);
    sub_257ECEEA0();
    v33 = [objc_opt_self() systemYellowColor];
    *&v22[*(v16 + 36)] = sub_257ECED30();
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = [objc_opt_self() bundleForClass_];
    v36 = sub_257ECF4C0();
    v37 = sub_257ECF4C0();
    v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

    v39 = sub_257ECF500();
    v41 = v40;

    v61[0] = v39;
    v61[1] = v41;
    sub_257E635E0();
    sub_257BDAB08();
    sub_257ECEBF0();

    sub_257BE4084(v22, &qword_27F8FAA18, &qword_257EEDDE8);
    v42 = &qword_27F8FAA08;
    v43 = &qword_257EEDDE0;
    sub_257BE401C(v29, v15, &qword_27F8FAA08, &qword_257EEDDE0);
    swift_storeEnumTagMultiPayload();
    sub_257E63524();
    sub_257E636C4();
    sub_257ECE6F0();
    v44 = v29;
  }

  else
  {
    type metadata accessor for MAGUtilities();
    v45 = swift_getObjCClassFromMetadata();
    v46 = [objc_opt_self() bundleForClass_];
    v47 = sub_257ECF4C0();
    v48 = sub_257ECF4C0();
    v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

    v50 = sub_257ECF500();
    v52 = v51;

    v61[9] = v50;
    v61[10] = v52;
    v53 = swift_allocObject();
    v54 = *(a1 + 48);
    *(v53 + 48) = *(a1 + 32);
    *(v53 + 64) = v54;
    *(v53 + 80) = *(a1 + 64);
    v55 = *(a1 + 16);
    *(v53 + 16) = *a1;
    *(v53 + 32) = v55;
    sub_257E62FDC(a1, v61);
    sub_257BDAB08();
    sub_257ECEED0();
    v56 = [objc_opt_self() systemYellowColor];
    *&v9[*(v3 + 36)] = sub_257ECED30();
    v42 = &qword_27F8FAA38;
    v43 = &unk_257EEDE00;
    sub_257BE401C(v9, v15, &qword_27F8FAA38, &unk_257EEDE00);
    swift_storeEnumTagMultiPayload();
    sub_257E63524();
    sub_257E636C4();
    sub_257ECE6F0();
    v44 = v9;
  }

  return sub_257BE4084(v44, v42, v43);
}

uint64_t sub_257E608C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECEE10();
  *a1 = result;
  return result;
}

uint64_t sub_257E60900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C98, &qword_257EE7E00);
  v99 = *(v3 - 8);
  v100 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v97 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA38, &unk_257EEDE00);
  MEMORY[0x28223BE20](v98, v10, v11, v12, v13);
  v15 = &v97 - v14;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA98, &qword_257EEDE38);
  MEMORY[0x28223BE20](v104, v16, v17, v18, v19);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v101 = &v97 - v27;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAA0, &qword_257EEDE40);
  MEMORY[0x28223BE20](v103, v28, v29, v30, v31);
  v33 = &v97 - v32;
  v34 = sub_257ECDF30();
  MEMORY[0x28223BE20](v34 - 8, v35, v36, v37, v38);
  v40 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA88, &qword_257EEDE30);
  v97 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v42, v43, v44, v45);
  v47 = &v97 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA58, &qword_257EEDE18);
  MEMORY[0x28223BE20](v48, v49, v50, v51, v52);
  v54 = &v97 - v53;
  if (sub_257ECF030())
  {
    sub_257ECDF20();
    v55 = swift_allocObject();
    v56 = *(a1 + 48);
    *(v55 + 48) = *(a1 + 32);
    *(v55 + 64) = v56;
    *(v55 + 80) = *(a1 + 64);
    v57 = *(a1 + 16);
    *(v55 + 16) = *a1;
    *(v55 + 32) = v57;
    sub_257E62FDC(a1, v105);
    MEMORY[0x259C719D0](v40, sub_257E644F0, v55);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v59 = [objc_opt_self() bundleForClass_];
    v60 = sub_257ECF4C0();
    v61 = sub_257ECF4C0();
    v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

    v63 = sub_257ECF500();
    v65 = v64;

    v105[0] = v63;
    v105[1] = v65;
    sub_257BD2D4C(&qword_27F8FAA80, &qword_27F8FAA88, &qword_257EEDE30, MEMORY[0x277CDF028]);
    sub_257BDAB08();
    sub_257ECEBF0();

    (*(v97 + 8))(v47, v41);
    v66 = [objc_opt_self() systemYellowColor];
    v67 = sub_257ECED30();
    KeyPath = swift_getKeyPath();
    v105[0] = v67;
    v69 = sub_257ECE090();
    v70 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA68, &qword_257EEDE20) + 36)];
    *v70 = KeyPath;
    v70[1] = v69;
    LOBYTE(v69) = sub_257E614B8();
    v71 = swift_getKeyPath();
    v72 = swift_allocObject();
    *(v72 + 16) = (v69 & 1) == 0;
    v73 = &v54[*(v48 + 36)];
    *v73 = v71;
    v73[1] = sub_257C13448;
    v73[2] = v72;
    sub_257BE401C(v54, v33, &qword_27F8FAA58, &qword_257EEDE18);
    swift_storeEnumTagMultiPayload();
    sub_257E6383C();
    sub_257E63A94();
    sub_257ECE6F0();
    v74 = v54;
    v75 = &qword_27F8FAA58;
    v76 = &qword_257EEDE18;
  }

  else
  {
    v97 = v48;
    type metadata accessor for MAGUtilities();
    v77 = swift_getObjCClassFromMetadata();
    v78 = [objc_opt_self() bundleForClass_];
    v79 = sub_257ECF4C0();
    v80 = sub_257ECF4C0();
    v81 = [v78 localizedStringForKey:v79 value:0 table:v80];

    v82 = sub_257ECF500();
    v84 = v83;

    v105[9] = v82;
    v105[10] = v84;
    v85 = swift_allocObject();
    v86 = *(a1 + 48);
    *(v85 + 48) = *(a1 + 32);
    *(v85 + 64) = v86;
    *(v85 + 80) = *(a1 + 64);
    v87 = *(a1 + 16);
    *(v85 + 16) = *a1;
    *(v85 + 32) = v87;
    sub_257E62FDC(a1, v105);
    sub_257BDAB08();
    sub_257ECEED0();
    if (sub_257E614B8())
    {
      v88 = [objc_opt_self() systemYellowColor];
      v89 = sub_257ECED30();
    }

    else
    {
      v105[0] = sub_257ECED60();
      sub_257E63B50();
      v89 = sub_257ECEDF0();
    }

    v90 = v89;
    v91 = v104;
    (*(v99 + 32))(v15, v9, v100);
    *&v15[*(v98 + 36)] = v90;
    LOBYTE(v90) = sub_257E614B8();
    v92 = swift_getKeyPath();
    v93 = swift_allocObject();
    *(v93 + 16) = (v90 & 1) == 0;
    sub_257C0DD14(v15, v21, &qword_27F8FAA38, &unk_257EEDE00);
    v94 = &v21[*(v91 + 36)];
    *v94 = v92;
    v94[1] = sub_257C133DC;
    v94[2] = v93;
    v95 = v101;
    sub_257C0DD14(v21, v101, &qword_27F8FAA98, &qword_257EEDE38);
    sub_257BE401C(v95, v33, &qword_27F8FAA98, &qword_257EEDE38);
    swift_storeEnumTagMultiPayload();
    sub_257E6383C();
    sub_257E63A94();
    sub_257ECE6F0();
    v74 = v95;
    v75 = &qword_27F8FAA98;
    v76 = &qword_257EEDE38;
  }

  return sub_257BE4084(v74, v75, v76);
}

double sub_257E611C4()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v9 = qword_281548348;
  v23 = *(v0 + 40);
  v24 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120, &qword_257EEC460);
  sub_257ECEE60();
  v10 = v21;
  v11 = v22;
  v23 = *(v0 + 16);
  v24 = *(v0 + 32);
  sub_257ECEE60();
  sub_257D64370(v10, v11, v21, v22);

  v23 = *(v0 + 40);
  v24 = *(v0 + 56);
  sub_257ECEE60();
  sub_257D53434(v21, v22);

  v23 = *(v0 + 40);
  v24 = *(v0 + 56);
  sub_257ECEE60();
  v12 = v21;
  v13 = v22;
  swift_beginAccess();
  v21 = v12;
  v22 = v13;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v14 = sub_257ECF110();
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  *&v20[-16] = &v21;
  *&v20[-8] = v9 + 120;
  sub_257ECFD40();
  (*(v2 + 8))(v8, v1);

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v23) = 1;
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

uint64_t sub_257E614B8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120, &qword_257EEC460);
  sub_257ECEE60();
  if (*(v11 + 16))
  {
    sub_257C03F6C(v11, v12);
    v7 = v6;

    if (v7)
    {
      v8 = 0;
      return v8 & 1;
    }
  }

  else
  {
  }

  sub_257ECEE60();
  if (v11 || v12 != 0xE000000000000000)
  {
    v9 = sub_257ED0640();

    v8 = v9 ^ 1;
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_257E61700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  sub_257ECF900();
  *(v3 + 64) = sub_257ECF8F0();
  v5 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E61798, v5, v4);
}

uint64_t sub_257E61798()
{

  sub_257E630B8();
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
  }

  else
  {

    v2 = 0x8000000257EFA680;
    v3 = 0xD000000000000017;
  }

  v4 = *(v0 + 56);
  v5 = *(v4 + 32);
  *(v0 + 16) = *(v4 + 16);
  *(v0 + 32) = v5;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120, &qword_257EEC460);
  sub_257ECEE70();
  v6 = *(v0 + 8);

  return v6();
}

__n128 sub_257E61888@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257ECEE20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() systemYellowColor];
  v22 = sub_257ECED30();
  sub_257ECF060();
  sub_257ECE080();
  *&v25[3] = *&v25[27];
  *&v25[11] = *&v25[35];
  *&v25[19] = *&v25[43];
  v39 = *(a1 + 16);
  *&v40 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120, &qword_257EEC460);
  sub_257ECEE60();
  sub_257ECEE30();
  (*(v5 + 104))(v11, *MEMORY[0x277CE0FE0], v4);
  v13 = sub_257ECEE40();

  (*(v5 + 8))(v11, v4);
  sub_257ECF060();
  sub_257ECE080();
  LOBYTE(v39) = 1;
  *&v24[6] = *&v25[51];
  *&v24[22] = *&v25[59];
  *&v24[38] = *&v25[67];
  v14 = sub_257ECED70();
  KeyPath = swift_getKeyPath();
  v16 = sub_257ECF060();
  v26[0] = v13;
  v26[1] = 0;
  LOWORD(v27[0]) = 1;
  *(&v27[1] + 2) = *&v24[16];
  *(v27 + 2) = *v24;
  *&v27[3] = *&v24[46];
  *(&v27[3] + 1) = KeyPath;
  *(&v27[2] + 2) = *&v24[32];
  *&v28 = v14;
  *(&v28 + 1) = v16;
  v29 = v17;
  v30[0] = v13;
  v45 = v17;
  v43 = v27[3];
  v44 = v28;
  v41 = v27[1];
  v42 = v27[2];
  v39 = v13;
  v40 = v27[0];
  v30[1] = 0;
  v31 = 1;
  *&v34[14] = *&v24[46];
  v35 = KeyPath;
  *v34 = *&v24[32];
  v33 = *&v24[16];
  v32 = *v24;
  v36 = v14;
  v37 = v16;
  v38 = v17;
  sub_257BE401C(v26, &v23, &qword_27F8FAC10, &qword_257EEE090);
  sub_257BE4084(v30, &qword_27F8FAC10, &qword_257EEE090);
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAC18, &qword_257EEE098) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218, &qword_257EDC800);
  sub_257ECE310();
  *v18 = 0;
  *a2 = v22;
  *(a2 + 8) = 256;
  *(a2 + 10) = *v25;
  *(a2 + 26) = *&v25[8];
  *(a2 + 42) = *&v25[16];
  *(a2 + 56) = *&v25[23];
  v19 = v44;
  *(a2 + 128) = v43;
  *(a2 + 144) = v19;
  *(a2 + 160) = v45;
  v20 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v20;
  result = v42;
  *(a2 + 96) = v41;
  *(a2 + 112) = result;
  return result;
}

uint64_t sub_257E61C08(uint64_t a1, __n128 a2)
{
  sub_257E630B8();
  v9 = v3;
  swift_getKeyPath();
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_257E62FDC(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB18, &qword_257EEDF40);
  sub_257BD2D4C(&qword_27F8F8D60, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83980]);
  sub_257E63C64();
  return sub_257ECEF80();
}

uint64_t sub_257E61D48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_257ECE750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB20, &unk_257EEDF48);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15, v16, v17, v18);
  v20 = &v30 - v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = swift_allocObject();
  v24 = *(a2 + 48);
  *(v23 + 48) = *(a2 + 32);
  *(v23 + 64) = v24;
  v25 = *(a2 + 64);
  v26 = *(a2 + 16);
  *(v23 + 16) = *a2;
  *(v23 + 32) = v26;
  *(v23 + 80) = v25;
  *(v23 + 88) = v21;
  *(v23 + 96) = v22;
  v32 = v21;
  v33 = v22;
  v34 = a2;
  sub_257E62FDC(a2, v35);
  type metadata accessor for SymbolImageView(0);
  sub_257E644A4(&qword_27F8FAB40, type metadata accessor for SymbolImageView, &unk_257EEDBD0);

  sub_257ECEEA0();
  sub_257ECE740();
  sub_257BD2D4C(&qword_27F8FAB28, &qword_27F8FAB20, &unk_257EEDF48, MEMORY[0x277CDF028]);
  sub_257E644A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v27 = v31;
  sub_257ECEB60();
  (*(v6 + 8))(v12, v5);
  (*(v14 + 8))(v20, v13);
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB18, &qword_257EEDF40) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218, &qword_257EDC800);
  result = sub_257ECE310();
  *v28 = 0;
  return result;
}

void sub_257E62068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120, &qword_257EEC460);
  sub_257ECEE70();
  v3 = [objc_opt_self() sharedApplication];
  [v3 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

uint64_t sub_257E62114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120, &qword_257EEC460);
  sub_257ECEE60();
  if (v11 == a1 && v12 == a2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_257ED0640();
  }

  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90, &qword_257EEDFC0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SymbolImageView(0);
  v10 = (a4 + *(result + 20));
  *v10 = a1;
  v10[1] = a2;
  *(a4 + *(result + 24)) = v8 & 1;
  return result;
}

uint64_t sub_257E6225C()
{
  v1 = sub_257ECE5A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA958, &qword_257EEDC20);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = (v19 - v14);
  *v15 = sub_257ECF060();
  v15[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA960, &unk_257EEDC28);
  sub_257E624E4(v0, (v15 + *(v17 + 44)));
  if (*(v0 + *(type metadata accessor for SymbolImageView(0) + 24)) == 1)
  {
    sub_257ECE580();
  }

  else
  {
    v19[1] = MEMORY[0x277D84F90];
    sub_257E644A4(&qword_27F8F5BD0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BD8, &unk_257EE2D50);
    sub_257BD2D4C(&qword_27F8F5BE0, &qword_27F8F5BD8, &unk_257EE2D50, MEMORY[0x277D83970]);
    sub_257ED0180();
  }

  sub_257BD2D4C(&qword_27F8FA968, &qword_27F8FA958, &qword_257EEDC20, MEMORY[0x277CE11A8]);
  sub_257ECEC80();
  (*(v2 + 8))(v8, v1);
  return sub_257BE4084(v15, &qword_27F8FA958, &qword_257EEDC20);
}

uint64_t sub_257E624E4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA970, &unk_257EEDC38);
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7, v8);
  v10 = v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B50, &qword_257EE2B20);
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  v65 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v64 = v62 - v22;
  v23 = *(a1 + *(type metadata accessor for SymbolImageView(0) + 24));
  if (v23 == 1)
  {
    v24 = [objc_opt_self() systemYellowColor];
    v25 = sub_257ECED30();
  }

  else
  {
    v25 = sub_257ECED80();
  }

  v71 = v25;
  sub_257ECE010();
  v26 = v107;
  v67 = v109;
  v68 = v108;
  v27 = v110;
  v66 = v111;
  v28 = v112;
  v29 = sub_257ECF060();
  v69 = v30;
  v70 = v29;
  sub_257ECF060();
  sub_257ECE080();
  if (v23)
  {
    if (qword_27F8F47E0 != -1)
    {
      swift_once();
    }

    v31 = &qword_27F913340;
  }

  else
  {
    if (qword_27F8F47E8 != -1)
    {
      swift_once();
    }

    v31 = &qword_27F913348;
  }

  v63 = *v31;
  sub_257ECC3F0();
  sub_257ECF060();
  sub_257ECE080();
  *&v101[6] = v113[0];
  *&v101[22] = v113[1];
  *&v101[38] = v113[2];

  v32 = COERCE_DOUBLE(sub_257ECEE30());
  sub_257ECE9F0();
  v33 = sub_257ECE9D0();
  (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
  v34 = sub_257ECEA20();
  sub_257BE4084(v10, &qword_27F8FA970, &unk_257EEDC38);
  KeyPath = swift_getKeyPath();
  if (v23)
  {
    v36 = [objc_opt_self() blackColor];
    v37 = sub_257ECED30();
  }

  else
  {
    v37 = sub_257ECEDC0();
  }

  v38 = v37;
  v39 = swift_getKeyPath();
  *&v62[1] = v32;
  v86 = v32;
  v87 = *&KeyPath;
  v88 = v34;
  v89 = v39;
  v90 = v38;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62[0] = KeyPath;
  v41 = [objc_opt_self() bundleForClass_];
  v42 = sub_257ECF4C0();
  v43 = sub_257ECF4C0();
  v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

  v45 = sub_257ECF500();
  v47 = v46;

  *&v72 = v45;
  *(&v72 + 1) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C00, &unk_257EE2BB8);
  sub_257D05778();
  sub_257BDAB08();
  v48 = v64;
  sub_257ECEBF0();

  v49 = v65;
  sub_257BE401C(v48, v65, &qword_27F8F7B50, &qword_257EE2B20);
  *&v72 = v26 * 0.5;
  *(&v72 + 1) = v26;
  *&v73 = __PAIR64__(v67, v68);
  *(&v73 + 1) = v27;
  *&v74 = v66;
  *(&v74 + 1) = v28;
  *&v75 = v71;
  WORD4(v75) = 256;
  HIWORD(v75) = v106;
  *(&v75 + 10) = v105;
  *&v76 = v70;
  *(&v76 + 1) = v69;
  v78 = v103;
  v79 = v104;
  v77 = v102;
  v50 = v72;
  v51 = v73;
  v52 = v75;
  a2[2] = v74;
  a2[3] = v52;
  *a2 = v50;
  a2[1] = v51;
  v53 = v76;
  v54 = v77;
  v55 = v79;
  a2[6] = v78;
  a2[7] = v55;
  a2[4] = v53;
  a2[5] = v54;
  v56 = v63;
  *&v80[0] = v63;
  WORD4(v80[0]) = 256;
  *(v80 + 10) = *v101;
  *(&v80[3] + 1) = *&v101[46];
  *(&v80[2] + 10) = *&v101[32];
  *(&v80[1] + 10) = *&v101[16];
  v57 = v80[0];
  v58 = v80[1];
  v59 = v80[3];
  a2[10] = v80[2];
  a2[11] = v59;
  a2[8] = v57;
  a2[9] = v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA978, &qword_257EEDCA8);
  sub_257BE401C(v49, a2 + *(v60 + 64), &qword_27F8F7B50, &qword_257EE2B20);
  sub_257BE401C(&v72, &v86, &qword_27F8FA980, &unk_257EEDCB0);
  sub_257BE401C(v80, &v86, &qword_27F8F6830, &qword_257EDD220);
  sub_257BE4084(v48, &qword_27F8F7B50, &qword_257EE2B20);
  sub_257BE4084(v49, &qword_27F8F7B50, &qword_257EE2B20);
  v81 = v56;
  v82 = 256;
  v83 = *v101;
  v84 = *&v101[16];
  *v85 = *&v101[32];
  *&v85[14] = *&v101[46];
  sub_257BE4084(&v81, &qword_27F8F6830, &qword_257EDD220);
  v86 = v26 * 0.5;
  v87 = v26;
  v88 = __PAIR64__(v67, v68);
  v89 = v27;
  v90 = v66;
  v91 = v28;
  v92 = v71;
  v93 = 256;
  v94 = v105;
  v95 = v106;
  v96 = v70;
  v97 = v69;
  v99 = v103;
  v100 = v104;
  v98 = v102;
  return sub_257BE4084(&v86, &qword_27F8FA980, &unk_257EEDCB0);
}

uint64_t sub_257E62BE0()
{
  v0 = [objc_opt_self() systemYellowColor];
  result = sub_257ECED30();
  qword_27F913340 = result;
  return result;
}

void sub_257E62C20()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  sub_257ECED30();
  v1 = sub_257ECEDA0();

  qword_27F913348 = v1;
}

uint64_t sub_257E62C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x28223BE20](a1, a1, *((*MEMORY[0x277D85000] & *v5) + qword_27F913350), a4, a5);
  (*(v8 + 16))(&v10 - v7, v6);
  return sub_257ECE620();
}

uint64_t sub_257E62D68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257E62DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_257E62E10()
{
  result = qword_27F8FA988;
  if (!qword_27F8FA988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA990, qword_257EEDD20);
    sub_257BD2D4C(&qword_27F8FA968, &qword_27F8FA958, &qword_257EEDC20, MEMORY[0x277CE11A8]);
    sub_257E644A4(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA988);
  }

  return result;
}

unint64_t sub_257E62F24()
{
  result = qword_27F8FA9B8;
  if (!qword_27F8FA9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA998, &qword_257EEDD80);
    sub_257BD2D4C(&qword_27F8FA9C0, &qword_27F8FA9C8, &qword_257EEDD98, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA9B8);
  }

  return result;
}

uint64_t sub_257E63014()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_257BE3DE0;

  return sub_257E61700(v2, v3, v0 + 32);
}

void sub_257E630B8()
{
  if (qword_281544FE0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v0 = qword_281548348;
    swift_beginAccess();
    v1 = v0[12];
    v2 = v0[13];
    v41 = v0[11];
    v42 = v1;
    v43 = v2;
    v3 = qword_2815447E0;

    if (v3 != -1)
    {
      v4 = swift_once();
    }

    MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
    v39 = &v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v9 = v44;
    v10 = *(v44 + 16);
    if (v10)
    {
      break;
    }

    v11 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    if (v13)
    {
LABEL_7:
      v14 = v11 + 40;
      v15 = MEMORY[0x277D84F90];
      do
      {
        v17 = *(v14 - 1);
        v16 = *v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_257BFCB3C(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = sub_257BFCB3C((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        v20 = &v15[16 * v19];
        *(v20 + 4) = v17;
        *(v20 + 5) = v16;
        v14 += 37;
        --v13;
      }

      while (v13);
      goto LABEL_16;
    }

LABEL_15:
    v15 = MEMORY[0x277D84F90];
LABEL_16:

    v26 = 0;
    v27 = MEMORY[0x277D84F90];
LABEL_17:
    v40 = v27;
    if (v26 <= 0x2B)
    {
      v28 = 43;
    }

    else
    {
      v28 = v26;
    }

    v29 = -v28;
    v30 = &unk_286905000 + 16 * v26++;
    v31 = (v30 + 40);
    while (v29 + v26 != 1)
    {
      v33 = *(v31 - 1);
      v32 = *v31;
      v41 = v33;
      v42 = v32;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v22, v23, v24, v25);
      v39 = &v41;

      v34 = sub_257DF8ED4(sub_257C119FC, &v38, v15);

      if ((v34 & 1) == 0)
      {
        v27 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_257BF26A4(0, *(v27 + 16) + 1, 1);
          v27 = v44;
        }

        v36 = *(v27 + 16);
        v35 = *(v27 + 24);
        if (v36 >= v35 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_257BF26A4((v35 > 1), v36 + 1, 1);
          v27 = v44;
        }

        *(v27 + 16) = v36 + 1;
        v37 = v27 + 16 * v36;
        *(v37 + 32) = v33;
        *(v37 + 40) = v32;
        if (v26 == 43)
        {
LABEL_30:

          return;
        }

        goto LABEL_17;
      }

      ++v26;
      v31 += 2;
      if (v26 == 44)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v11 = sub_257C63F40(*(v44 + 16), 0);
  v12 = sub_257C67BA0(&v41, v11 + 32, v10, v9);
  sub_257C02520(v41);
  if (v12 == v10)
  {
    v13 = v11[2];
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  __break(1u);
}

unint64_t sub_257E63498()
{
  result = qword_27F8FA9F8;
  if (!qword_27F8FA9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA9F0, &qword_257EEDDD8);
    sub_257E63524();
    sub_257E636C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA9F8);
  }

  return result;
}

unint64_t sub_257E63524()
{
  result = qword_27F8FAA00;
  if (!qword_27F8FAA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA08, &qword_257EEDDE0);
    sub_257E635E0();
    sub_257E644A4(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA00);
  }

  return result;
}

unint64_t sub_257E635E0()
{
  result = qword_27F8FAA10;
  if (!qword_27F8FAA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA18, &qword_257EEDDE8);
    sub_257BD2D4C(&qword_27F8FAA20, &qword_27F8FAA28, &unk_257EEDDF0, MEMORY[0x277CDF028]);
    sub_257BD2D4C(&qword_27F8F67B0, &qword_27F8F67B8, &qword_257EDD1A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA10);
  }

  return result;
}

unint64_t sub_257E636C4()
{
  result = qword_27F8FAA30;
  if (!qword_27F8FAA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA38, &unk_257EEDE00);
    sub_257BD2D4C(&qword_27F8F8D08, &qword_27F8F8C98, &qword_257EE7E00, MEMORY[0x277CDF028]);
    sub_257BD2D4C(&qword_27F8F67B0, &qword_27F8F67B8, &qword_257EDD1A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA30);
  }

  return result;
}

unint64_t sub_257E637B0()
{
  result = qword_27F8FAA48;
  if (!qword_27F8FAA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA40, &qword_257EEDE10);
    sub_257E6383C();
    sub_257E63A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA48);
  }

  return result;
}

unint64_t sub_257E6383C()
{
  result = qword_27F8FAA50;
  if (!qword_27F8FAA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA58, &qword_257EEDE18);
    sub_257E638F4();
    sub_257BD2D4C(&qword_27F8F77D0, &qword_27F8F77D8, &qword_257EE1F00, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA50);
  }

  return result;
}

unint64_t sub_257E638F4()
{
  result = qword_27F8FAA60;
  if (!qword_27F8FAA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA68, &qword_257EEDE20);
    sub_257E639AC();
    sub_257BD2D4C(&qword_27F8F85E0, &qword_27F8F85E8, &qword_257EE5098, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA60);
  }

  return result;
}

unint64_t sub_257E639AC()
{
  result = qword_27F8FAA70;
  if (!qword_27F8FAA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA78, &qword_257EEDE28);
    sub_257BD2D4C(&qword_27F8FAA80, &qword_27F8FAA88, &qword_257EEDE30, MEMORY[0x277CDF028]);
    sub_257E644A4(&qword_27F8F5CA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA70);
  }

  return result;
}

unint64_t sub_257E63A94()
{
  result = qword_27F8FAA90;
  if (!qword_27F8FAA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA98, &qword_257EEDE38);
    sub_257E636C4();
    sub_257BD2D4C(&qword_27F8F77D0, &qword_27F8F77D8, &qword_257EE1F00, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA90);
  }

  return result;
}

unint64_t sub_257E63B50()
{
  result = qword_27F8FAAA8;
  if (!qword_27F8FAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAAA8);
  }

  return result;
}

unint64_t sub_257E63BE0()
{
  result = qword_27F8FAB08;
  if (!qword_27F8FAB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB00, &qword_257EEDF38);
    sub_257E63C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAB08);
  }

  return result;
}

unint64_t sub_257E63C64()
{
  result = qword_27F8FAB10;
  if (!qword_27F8FAB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB18, &qword_257EEDF40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB20, &unk_257EEDF48);
    sub_257ECE750();
    sub_257BD2D4C(&qword_27F8FAB28, &qword_27F8FAB20, &unk_257EEDF48, MEMORY[0x277CDF028]);
    sub_257E644A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F7CE8, &qword_27F8F6218, &qword_257EDC800, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAB10);
  }

  return result;
}

uint64_t objectdestroy_14Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_257E63E54()
{
  result = qword_27F8FAB70;
  if (!qword_27F8FAB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB48, &qword_257EEDFC8);
    sub_257E63F0C();
    sub_257BD2D4C(&qword_27F8F7BC8, &qword_27F8F7BD0, &unk_257EEC100, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAB70);
  }

  return result;
}

unint64_t sub_257E63F0C()
{
  result = qword_27F8FAB78;
  if (!qword_27F8FAB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB60, &qword_257EEE010);
    sub_257E63FC4();
    sub_257BD2D4C(&qword_27F8FAB98, &qword_27F8FAB68, &qword_257EEE018, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAB78);
  }

  return result;
}

unint64_t sub_257E63FC4()
{
  result = qword_27F8FAB80;
  if (!qword_27F8FAB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB58, &qword_257EEE008);
    sub_257BD2D4C(&qword_27F8FAB88, &qword_27F8FAB90, &qword_257EEE020, MEMORY[0x277CDF1A8]);
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0, qword_257EDF660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAB80);
  }

  return result;
}

unint64_t sub_257E640A8()
{
  result = qword_27F8FABC8;
  if (!qword_27F8FABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB50, &qword_257EEDFD0);
    sub_257E64160();
    sub_257BD2D4C(&qword_27F8FAB98, &qword_27F8FAB68, &qword_257EEE018, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FABC8);
  }

  return result;
}

unint64_t sub_257E64160()
{
  result = qword_27F8FABD0;
  if (!qword_27F8FABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FABC0, &qword_257EEE078);
    sub_257E64244(&qword_27F8FABD8, &qword_27F8FABB8, &qword_257EEE070, sub_257E642C8);
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190, &unk_257EDC790, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FABD0);
  }

  return result;
}

uint64_t sub_257E64244(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257E642F8()
{
  result = qword_27F8FABE8;
  if (!qword_27F8FABE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FABA8, &qword_257EEE060);
    sub_257E643B0();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0, qword_257EDF660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FABE8);
  }

  return result;
}

unint64_t sub_257E643B0()
{
  result = qword_27F8FABF0;
  if (!qword_27F8FABF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FABA0, &qword_257EEE058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB48, &qword_257EEDFC8);
    sub_257E63E54();
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F8C60, &qword_27F8F8C68, &qword_257EE7D80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FABF0);
  }

  return result;
}

uint64_t sub_257E644A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257E644F4(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

void sub_257E64750()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      sub_257EB6FD8(v7, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_257E649BC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector] = 0;
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_recordedFileArray] = MEMORY[0x277D84F90];
  v8 = AXIsInternalInstall();
  v9 = &unk_2869062A8;
  if (!v8)
  {
    v9 = v7;
  }

  *&v3[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_availableInternalDetectionSections] = v9;
  v10 = OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemYellowColor];
  [v13 setTintColor_];

  [v13 setClipsToBounds_];
  *&v3[v10] = v13;
  if (AXIsInternalInstall())
  {
    if (a2)
    {
      v15 = sub_257ECF4C0();
    }

    else
    {
      v15 = 0;
    }

    v18.receiver = v3;
    v18.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, v15, a3);

    return v16;
  }

  else
  {
    result = sub_257ED0410();
    __break(1u);
  }

  return result;
}

id sub_257E64D18(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v162 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v161 - v13;
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v161 - v20;
  v22 = sub_257ECDA30();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24, v25, v26, v27);
  v29 = &v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v36 = &v161 - v35;
  v37 = sub_257ECF4C0();
  v38 = sub_257ECCE30();
  v39 = [a1 dequeueReusableCellWithIdentifier:v37 forIndexPath:v38];

  v40 = sub_257ECCEA0();
  if (v40 > 1)
  {
    if (v40 == 2)
    {
      v65 = sub_257ECCE60();
      if (v65 != 1)
      {
        if (v65)
        {
          return v39;
        }

        v66 = [v39 textLabel];
        if (v66)
        {
          v67 = v66;
          v68 = sub_257ECF4C0();
          [v67 setText_];
        }

        v69 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        v70 = v163;
        if (*(v163 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector))
        {
          v71 = 1;
        }

        else
        {
          v71 = _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
        }

        [v69 setOn_];
        [v69 addTarget:v70 action:sel_didToggleAutomationSwitch_ forControlEvents:4096];
        goto LABEL_59;
      }

      v99 = [v39 textLabel];
      v100 = v163;
      if (v99)
      {
        v101 = v99;
        _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
        v102 = sub_257ECF4C0();

        [v101 setText_];
      }

      v103 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
      v104 = CGRectMake_0();
      v106 = v105;
      v108 = v107;
      v110 = v109;
      v111 = v103;
      [v111 setFrame_];
      [v111 addTarget:v100 action:sel_didTapPhotoSelector_ forControlEvents:64];
      _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
      v112 = sub_257ECF4C0();

      [v111 setTitle:v112 forState:0];

      v113 = [objc_opt_self() lightGrayColor];
      [v111 setBackgroundColor_];

      v114 = [v111 layer];
      [v114 setCornerRadius_];

      v69 = v111;
    }

    else
    {
      if (v40 != 3)
      {
        if (v40 == 4)
        {
          v41 = sub_257ECCE60();
          if (v41 <= 3)
          {
            v42 = v41;
            v43 = [v39 textLabel];
            if (v43)
            {
              v44 = v43;
              sub_257E6616C(v42);
              v45 = sub_257ECF4C0();

              [v44 setText_];
            }

            if (qword_281544FE0 != -1)
            {
              swift_once();
            }

            v46 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
            swift_beginAccess();
            v47 = *(v46 + 8);
            v48 = *(v46 + 16);
            *&v169 = *v46;
            *(&v169 + 1) = v47;
            v170 = v48;
            v49 = qword_2815447E0;

            if (v49 != -1)
            {
              v50 = swift_once();
            }

            MEMORY[0x28223BE20](v50, v51, v52, v53, v54);
            *(&v161 - 2) = &v169;
            sub_257ECFD50();

            if (v165 == v42)
            {
              v55 = 3;
            }

            else
            {
              v55 = 0;
            }

            [v39 setAccessoryType_];
            [v39 setAccessoryView_];
          }
        }

        return v39;
      }

      v72 = sub_257ECCE60();
      if (v72 != 1)
      {
        if (v72)
        {
          return v39;
        }

        v73 = [v39 textLabel];
        if (v73)
        {
          v74 = v73;
          v75 = sub_257ECF4C0();
          [v74 setText_];
        }

        v69 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        has_internal_ui = os_variant_has_internal_ui();
        v77 = v163;
        if (!has_internal_ui || (static MAGAutomationSupport.freezeFrameAutomationURL.getter(v21), v78 = sub_257ECCB70(), v79 = 1, v80 = (*(*(v78 - 8) + 48))(v21, 1, v78), sub_257BE4084(v21, &qword_27F8F5F30, &qword_257EDA9E0), v80 == 1))
        {
          v79 = *(v77 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector);
        }

        [v69 setOn_];
        [v69 addTarget:v77 action:sel_didToggleFreezeFrameSwitch_ forControlEvents:4096];
LABEL_59:
        [v39 setAccessoryView_];
        [v39 setAccessoryType_];
LABEL_88:

        return v39;
      }

      v115 = [v39 textLabel];
      if (v115)
      {
        v116 = v115;
        if (os_variant_has_internal_ui())
        {
          static MAGAutomationSupport.freezeFrameAutomationURL.getter(v14);
          v117 = sub_257ECCB70();
          (*(*(v117 - 8) + 48))(v14, 1, v117);
          sub_257BE4084(v14, &qword_27F8F5F30, &qword_257EDA9E0);
        }

        v144 = sub_257ECF4C0();

        [v116 setText_];
      }

      v145 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
      v146 = CGRectMake_0();
      v148 = v147;
      v150 = v149;
      v152 = v151;
      v153 = v145;
      [v153 setFrame_];
      [v153 addTarget:v163 action:sel_didTapPhotoSelector_ forControlEvents:64];
      if (os_variant_has_internal_ui())
      {
        v154 = v162;
        static MAGAutomationSupport.freezeFrameAutomationURL.getter(v162);
        v155 = sub_257ECCB70();
        (*(*(v155 - 8) + 48))(v154, 1, v155);
        sub_257BE4084(v154, &qword_27F8F5F30, &qword_257EDA9E0);
      }

      v156 = sub_257ECF4C0();

      [v153 setTitle:v156 forState:0];

      v157 = [objc_opt_self() lightGrayColor];
      [v153 setBackgroundColor_];

      v158 = [v153 layer];
      [v158 setCornerRadius_];

      v69 = v153;
    }

    v159 = sub_257ECF4C0();
    [v69 setAccessibilityIdentifier_];

    [v39 setAccessoryView_];
    goto LABEL_88;
  }

  if (v40)
  {
    if (v40 != 1)
    {
      return v39;
    }

    v56 = v23;
    v57 = v22;
    v58 = sub_257ECCE60();
    if (v58 == 1)
    {
      v118 = [objc_opt_self() shared];
      v119 = [v118 signDetectorProperties];

      if (v119)
      {
        v120 = sub_257ECF3D0();

        *&v169 = 0x746E65746E6F435FLL;
        *(&v169 + 1) = 0xEF6E6F6973726556;
        v121 = MEMORY[0x277D837D0];
        sub_257ED0280();
        if (*(v120 + 16) && (v122 = sub_257C03F28(&v167), (v123 & 1) != 0))
        {
          sub_257BE41F4(*(v120 + 56) + 32 * v122, &v165);
          sub_257C09D10(&v167);
          sub_257BEBE08(&v165, &v169);
        }

        else
        {
          sub_257C09D10(&v167);
          v171 = v121;
          *&v169 = 4271950;
          *(&v169 + 1) = 0xE300000000000000;
        }

        *&v165 = 0x4449746C6F42;
        *(&v165 + 1) = 0xE600000000000000;
        sub_257ED0280();
        if (*(v120 + 16) && (v130 = sub_257C03F28(&v167), (v131 & 1) != 0))
        {
          sub_257BE41F4(*(v120 + 56) + 32 * v130, v164);
          sub_257C09D10(&v167);

          sub_257BEBE08(v164, &v165);
        }

        else
        {

          sub_257C09D10(&v167);
          v166 = v121;
          *&v165 = 4271950;
          *(&v165 + 1) = 0xE300000000000000;
        }

        v132 = [v39 textLabel];
        if (!v132)
        {
          goto LABEL_75;
        }

        v127 = v132;
        v167 = 0;
        v168 = 0xE000000000000000;
        sub_257ED02D0();
        v129 = 0xD000000000000010;
        v128 = 0x8000000257F088B0;
        goto LABEL_74;
      }

      sub_257ECD450();
      v138 = sub_257ECDA20();
      v139 = sub_257ECFBD0();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&dword_257BAC000, v138, v139, "Door Sign Detection Properties is not available", v140, 2u);
        MEMORY[0x259C74820](v140, -1, -1);
      }

      (*(v56 + 8))(v29, v57);
      v137 = [v39 textLabel];
    }

    else
    {
      if (v58)
      {
        return v39;
      }

      v59 = [objc_opt_self() shared];
      v60 = [v59 doorAttributesClassifierProperties];

      if (v60)
      {
        v61 = sub_257ECF3D0();

        *&v169 = 0x746E65746E6F435FLL;
        *(&v169 + 1) = 0xEF6E6F6973726556;
        v62 = MEMORY[0x277D837D0];
        sub_257ED0280();
        if (*(v61 + 16) && (v63 = sub_257C03F28(&v167), (v64 & 1) != 0))
        {
          sub_257BE41F4(*(v61 + 56) + 32 * v63, &v165);
          sub_257C09D10(&v167);
          sub_257BEBE08(&v165, &v169);
        }

        else
        {
          sub_257C09D10(&v167);
          v171 = v62;
          *&v169 = 4271950;
          *(&v169 + 1) = 0xE300000000000000;
        }

        *&v165 = 0x4449746C6F42;
        *(&v165 + 1) = 0xE600000000000000;
        sub_257ED0280();
        if (*(v61 + 16) && (v124 = sub_257C03F28(&v167), (v125 & 1) != 0))
        {
          sub_257BE41F4(*(v61 + 56) + 32 * v124, v164);
          sub_257C09D10(&v167);

          sub_257BEBE08(v164, &v165);
        }

        else
        {

          sub_257C09D10(&v167);
          v166 = v62;
          *&v165 = 4271950;
          *(&v165 + 1) = 0xE300000000000000;
        }

        v126 = [v39 textLabel];
        if (!v126)
        {
          goto LABEL_75;
        }

        v127 = v126;
        v167 = 0;
        v168 = 0xE000000000000000;
        sub_257ED02D0();
        v128 = 0x8000000257F088D0;
        v129 = 0xD000000000000011;
LABEL_74:
        MEMORY[0x259C72150](v129, v128);
        sub_257ED0400();
        MEMORY[0x259C72150](10272, 0xE200000000000000);
        sub_257ED0400();
        MEMORY[0x259C72150](41, 0xE100000000000000);
        v133 = sub_257ECF4C0();

        [v127 setText_];

LABEL_75:
        __swift_destroy_boxed_opaque_existential_0(&v165);
        __swift_destroy_boxed_opaque_existential_0(&v169);
        return v39;
      }

      sub_257ECD450();
      v134 = sub_257ECDA20();
      v135 = sub_257ECFBD0();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        *v136 = 0;
        _os_log_impl(&dword_257BAC000, v134, v135, "Door Attributes Classifier Properties is not available", v136, 2u);
        MEMORY[0x259C74820](v136, -1, -1);
      }

      (*(v56 + 8))(v36, v57);
      v137 = [v39 textLabel];
    }

    v141 = v137;
    if (v141)
    {
      v142 = v141;
      v143 = sub_257ECF4C0();
      [v142 setText_];
    }
  }

  else if (!sub_257ECCE60())
  {
    v81 = [v39 textLabel];
    if (v81)
    {
      v82 = v81;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v84 = [objc_opt_self() bundleForClass_];
      v85 = sub_257ECF4C0();
      v86 = sub_257ECF4C0();
      v87 = [v84 localizedStringForKey:v85 value:0 table:v86];

      sub_257ECF500();
      v88 = sub_257ECF4C0();

      [v82 setText_];
    }

    v89 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v90 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__magnifierInDebugState;
    swift_beginAccess();
    v91 = *(v90 + 8);
    v92 = *(v90 + 16);
    *&v169 = *v90;
    *(&v169 + 1) = v91;
    v170 = v92;
    v93 = qword_2815447E0;

    if (v93 != -1)
    {
      v94 = swift_once();
    }

    MEMORY[0x28223BE20](v94, v95, v96, v97, v98);
    *(&v161 - 2) = &v169;
    sub_257ECFD50();

    [v89 setOn_];
    [v89 addTarget:v163 action:sel_didToggleRecordingSwitch_ forControlEvents:4096];
    [v39 setAccessoryView_];
    [v39 setAccessoryType_];
  }

  return v39;
}

uint64_t sub_257E6616C(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

void sub_257E664BC(void *a1, uint64_t a2)
{
  v4 = sub_257ECCDF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECDA30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16, v17);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = MEMORY[0x28223BE20](v20, v21, v22, v23, v24).n128_u64[0];
  v27 = v34 - v26;
  if ([a1 isOn])
  {
    *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector) = 1;
    sub_257ECD420();
    v28 = sub_257ECDA20();
    v29 = sub_257ECFBD0();
    if (!os_log_type_enabled(v28, v29))
    {
      v19 = v27;
      goto LABEL_8;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_257BAC000, v28, v29, "Enabling AR replay", v30, 2u);
    v19 = v27;
    goto LABEL_6;
  }

  *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector) = 0;
  _s16MagnifierSupport013MAGAutomationB0V16clearReplayVideoyyFZ_0();
  sub_257ECD420();
  v28 = sub_257ECDA20();
  v31 = sub_257ECFBD0();
  if (os_log_type_enabled(v28, v31))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_257BAC000, v28, v31, "Clearing automation video and disabling AR replay", v30, 2u);
LABEL_6:
    MEMORY[0x259C74820](v30, -1, -1);
  }

LABEL_8:

  (*(v13 + 8))(v19, v12);
  v32 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView);
  v34[1] = &unk_2869062F8;
  sub_257E69AC0(&qword_27F8F58A0, 255, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
  sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80, &qword_257EDD430, MEMORY[0x277D83970]);
  sub_257ED0180();
  v33 = sub_257ECCDE0();
  (*(v5 + 8))(v11, v4);
  [v32 reloadSections:v33 withRowAnimation:100];
}

uint64_t sub_257E668D0(void *a1)
{
  v44 = a1;
  v1 = sub_257ECF2A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FACA8, &unk_257EEE410);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12, v13);
  v15 = &v43 - v14;
  v45 = sub_257ECF2D0();
  v16 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v17, v18, v19, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v43 - v28;
  v30 = [objc_opt_self() sharedPhotoLibrary];
  sub_257ECF290();
  sub_257ECF250();
  v31 = sub_257ECF260();
  v43 = *(*(v31 - 8) + 56);
  v43(v15, 0, 1, v31);
  sub_257ECF2C0();
  (*(v2 + 104))(v8, *MEMORY[0x277CD9D40], v1);
  sub_257ECF2B0();
  v32 = [v44 accessibilityIdentifier];
  if (v32)
  {
    v33 = v32;
    v34 = sub_257ECF500();
    v36 = v35;

    if (v34 == 0x45535F4F544F4850 && v36 == 0xEE00524F5443454CLL)
    {

LABEL_6:
      sub_257ECF240();
      v43(v15, 0, 1, v31);
      sub_257ECF2C0();
      goto LABEL_7;
    }

    v37 = sub_257ED0640();

    if (v37)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  sub_257BD2C2C(0, &qword_27F8FACB0, 0x277CD9D78);
  v38 = v45;
  (*(v16 + 16))(v22, v29, v45);
  v39 = sub_257ECFE30();
  sub_257E69AC0(&qword_27F8FACB8, v40, type metadata accessor for InternalDetectionOptionsViewController, &unk_257EEE398);
  v41 = v46;
  swift_unknownObjectRetain();
  sub_257ECFE40();
  [v41 presentViewController:v39 animated:1 completion:0];

  return (*(v16 + 8))(v29, v38);
}

uint64_t sub_257E66D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v7 = sub_257ECF120();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_257ECF190();
  v14 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v15, v16, v17, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v21 = sub_257ECFD30();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);
  v24 = a1;
  v25 = v4;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257E69AC0(&qword_281544090, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v20, v13, v23);
  _Block_release(v23);

  (*(v30 + 8))(v13, v7);
  return (*(v14 + 8))(v20, v29);
}

void sub_257E67018(void *a1, uint64_t a2)
{
  v4 = sub_257ECCDF0();
  v5 = *(v4 - 8);
  *&v10 = MEMORY[0x28223BE20](v4, v6, v7, v8, v9).n128_u64[0];
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isOn])
  {
    *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector) = 1;
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector) = 0;
    if (qword_27F8F4648 != -1)
    {
      swift_once();
    }

    v13 = qword_27F8F87A8;
    v14 = sub_257ECF4C0();
    [v13 removeObjectForKey_];
  }

  v15 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView);
  v17[1] = &unk_286906320;
  sub_257E69AC0(&qword_27F8F58A0, 255, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
  sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80, &qword_257EDD430, MEMORY[0x277D83970]);
  sub_257ED0180();
  v16 = sub_257ECCDE0();
  (*(v5 + 8))(v12, v4);
  [v15 reloadSections:v16 withRowAnimation:100];
}

void sub_257E672F8(void *a1)
{
  v3 = sub_257ECCEB0();
  v70 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF120();
  v69 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECDA30();
  v71 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_257ECCE30();
  v72 = [a1 cellForRowAtIndexPath_];

  if (!v72)
  {
    return;
  }

  v25 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v25 animated:1];

  v26 = sub_257ECCEA0();
  v27 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_availableInternalDetectionSections);
  if (v26 < *(v27 + 16))
  {
    v28 = sub_257ECCEA0();
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v28 < *(v27 + 16))
    {
      v29 = *(v27 + v28 + 32);
      if (v29 <= 1)
      {
        if (!*(v27 + v28 + 32) && !sub_257ECCE60())
        {
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          v56 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions);
          if (*(v56 + 16))
          {
            [v72 setAccessoryType_];
            v57 = MEMORY[0x277D84F90];
          }

          else
          {

            [v72 setAccessoryType_];
            v76 = v56;
            sub_257EB0FF0(&unk_286906348);
            v57 = v76;
          }

          sub_257ECD420();

          v58 = sub_257ECDA20();
          v59 = sub_257ECFBD0();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v76 = v61;
            *v60 = 136315138;
            v62 = MEMORY[0x259C72340](v57, &type metadata for DetectionRecording);
            v64 = v63;

            v65 = sub_257BF1FC8(v62, v64, &v76);

            *(v60 + 4) = v65;
            _os_log_impl(&dword_257BAC000, v58, v59, "New people detection recording options: %s", v60, 0xCu);
            v66 = __swift_destroy_boxed_opaque_existential_0(v61);
            MEMORY[0x259C74820](v61, -1, -1, v66);
            MEMORY[0x259C74820](v60, -1, -1);
          }

          else
          {
          }

          (*(v71 + 8))(v23, v17);
          sub_257D5854C(v57);

          goto LABEL_36;
        }
      }

      else if (v29 != 2 && v29 != 3)
      {
        v28 = sub_257ECCE60();
        if (v28 < 4)
        {
          if (qword_281544FE0 == -1)
          {
LABEL_10:
            v71 = v28;
            v68[1] = qword_281548348;
            v30 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
            swift_beginAccess();
            v31 = *(v30 + 8);
            v32 = *(v30 + 16);
            v73[0] = *v30;
            v73[1] = v31;
            v74 = v32;
            v33 = qword_2815447E0;

            if (v33 != -1)
            {
              v34 = swift_once();
            }

            MEMORY[0x28223BE20](v34, v35, v36, v37, v38);
            v68[-2] = v73;
            sub_257ECFD50();

            v39 = v71;
            if (v75 != v71)
            {
              swift_beginAccess();
              v75 = v39;
              v40 = sub_257ECF110();
              MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
              v68[-2] = &v75;
              v68[-1] = v30;
              sub_257ECFD40();
              (*(v69 + 8))(v16, v10);
              swift_endAccess();
              swift_getKeyPath();
              swift_getKeyPath();
              LOBYTE(v73[0]) = 1;
              sub_257ECC3F0();
              sub_257ECDD70();
              v45 = (v70 + 8);
              MEMORY[0x259C6F970](byte_286906390, 4);
              v46 = sub_257ECCE30();
              v47 = [a1 cellForRowAtIndexPath_];

              if (v47)
              {
                [v47 setAccessoryType_];
              }

              v48 = *v45;
              (*v45)(v9, v3);
              MEMORY[0x259C6F970](byte_286906391, 4);
              v49 = sub_257ECCE30();
              v50 = [a1 cellForRowAtIndexPath_];

              if (v50)
              {
                [v50 setAccessoryType_];
              }

              v48(v9, v3);
              MEMORY[0x259C6F970](byte_286906392, 4);
              v51 = sub_257ECCE30();
              v52 = [a1 cellForRowAtIndexPath_];

              if (v52)
              {
                [v52 setAccessoryType_];
              }

              v48(v9, v3);
              MEMORY[0x259C6F970](byte_286906393, 4);
              v53 = sub_257ECCE30();
              v54 = [a1 cellForRowAtIndexPath_];

              if (v54)
              {
                [v54 setAccessoryType_];
              }

              v48(v9, v3);
              [v72 setAccessoryType_];
            }

LABEL_36:

            return;
          }

LABEL_40:
          v67 = v28;
          swift_once();
          v28 = v67;
          goto LABEL_10;
        }
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_24:
  v55 = v72;
}