uint64_t specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    v2 = *(a2 + 32);
    v4 = *a2;
    v3 = *(a2 + 16);
    if (*(result + 40))
    {
      *result = v4;
      *(result + 16) = v3;
      v5 = v2;
    }

    else
    {
      v5 = *(result + 32) + v2;
      v6 = vadd_f32(vmovn_s64(v4), vmovn_s64(*result));
      v7.i64[0] = v6.u32[0];
      v7.i64[1] = v6.u32[1];
      v8 = vaddq_f64(*(result + 16), v3);
      *result = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v4, 0x20uLL), vshrn_n_s64(*result, 0x20uLL)), 0x20uLL), v7);
      *(result + 16) = v8;
    }

    *(result + 32) = v5;
    *(result + 40) = 0;
  }

  return result;
}

void specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 16);
  v167 = *(a2 + 32);
  v168 = v2;
  v4 = *(a2 + 48);
  v169 = *(a2 + 64);
  v5 = *(a2 + 16);
  v165 = *a2;
  v166 = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v173 = *(a1 + 32);
  v174 = v7;
  v8 = *(a1 + 48);
  v175 = *(a1 + 64);
  v9 = *(a1 + 16);
  v171 = *a1;
  v172 = v9;
  v177[0] = v171;
  v177[1] = v6;
  v10 = *(a1 + 64);
  v177[3] = v8;
  v177[4] = v10;
  v177[2] = v173;
  v181 = v167;
  v182 = v4;
  v183 = *(a2 + 64);
  v180 = v3;
  v170 = *(a2 + 80);
  v176 = *(a1 + 80);
  v178 = *(a1 + 80);
  v184 = *(a2 + 80);
  v179 = v165;
  if (v170 == 9)
  {
    v11 = vorrq_s8(vorrq_s8(v166, v168), vorrq_s8(v167, v169));
    if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | *&v165.f64[1] | *&v165.f64[0]))
    {
      v42 = &v171;
LABEL_40:
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v42, &v157);
      goto LABEL_41;
    }
  }

  v12 = v172;
  LODWORD(v13) = v173;
  v14 = DWORD1(v173);
  v15 = *(&v173 + 1);
  v16 = *&v174;
  v163 = *(a1 + 56);
  v164 = *(a1 + 72);
  v17 = v172;
  v18 = DWORD1(v172);
  v19 = *(&v172 + 1);
  v20 = *&v172;
  if (v176 > 4u)
  {
    if (v176 > 6u)
    {
      if (v176 != 7)
      {
        if (v176 != 8)
        {
          v94 = *(a1 + 48);
          v159 = *(a1 + 32);
          v160 = v94;
          v161 = *(a1 + 64);
          v162 = *(a1 + 80);
          v95 = *(a1 + 16);
          v157 = *a1;
          v158 = v95;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
          v97 = v168;
          *(a1 + 32) = v167;
          *(a1 + 48) = v97;
          *(a1 + 64) = v169;
          *(a1 + 80) = v170;
          v98 = v166;
          *a1 = v165;
          *(a1 + 16) = v98;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
          _ShapeStyle_Pack.Fill.AnimatableData.negate()();
LABEL_41:
          outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
          return;
        }

        if (v170 == 8)
        {
          v129 = v171;
          v35 = *(a2 + 48);
          *&v152.m24 = *(a2 + 32);
          *&v152.m33 = v35;
          *&v152.m42 = *(a2 + 64);
          v36 = *(a2 + 16);
          *&v152.m11 = *a2;
          *&v152.m15 = v36;
          outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
          v38 = *(a1 + 48);
          v159 = *(a1 + 32);
          v160 = v38;
          v161 = *(a1 + 64);
          v162 = *(a1 + 80);
          v39 = *(a1 + 16);
          v157 = *a1;
          v158 = v39;
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
          v153 = v129;
          v154 = v12;
          *&v155 = __PAIR64__(v14, LODWORD(v13));
          *(&v155 + 1) = v15;
          *v156 = v16;
          *&v156[8] = v163;
          *&v156[24] = v164;
          _ColorMatrix.subtract(_:)(&v152);
          v40 = *v156;
          *(a1 + 32) = v155;
          *(a1 + 48) = v40;
          *(a1 + 64) = *&v156[16];
          v41 = v154;
          *a1 = v153;
          *(a1 + 16) = v41;
          *(a1 + 80) = 8;
          return;
        }

        goto LABEL_39;
      }

      if (v170 == 7)
      {
        v75 = *&v165.f64[0];
        v76 = v171.i64[0];
        v77 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v77;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v78 = *(a1 + 16);
        v157 = *a1;
        v158 = v78;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v145.i64[0] = v76;
        v151 = v75;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        specialized static ShaderVectorData.-= infix(_:_:)(&v145, &v151);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *a1 = v145.i64[0];
        *(a1 + 80) = 7;
        return;
      }

      goto LABEL_38;
    }

    if (v176 == 5)
    {
      if (v170 == 5)
      {
        v47 = v167.i8[0];
        v48 = v166.i32[3];
        v49 = v166.i8[8];
        v50 = v166.i64[0];
        v51 = *v168.i64;
        v52 = *&v167.i64[1];
        v131 = v171;
        v53 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v53;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v54 = *(a1 + 16);
        v157 = *a1;
        v158 = v54;
        v124 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v56 = vextq_s8(v131, v131, 8uLL).u64[0];
        v57 = vshll_n_s32(vzip2_s32(*v131.i8, v56), 0x20uLL);
        v58 = vzip1_s32(*v131.i8, v56);
        v59.i64[0] = v58.u32[0];
        v59.i64[1] = v58.u32[1];
        *&v144 = __PAIR64__(v14, LODWORD(v13));
        v143 = vsubq_f64(vorrq_s8(v57, v59), v124);
        v145.i64[0] = v50;
        v145.i8[8] = v49;
        v145.i32[3] = v48;
        LOBYTE(v146) = v47 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, -1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *(&v144 + 1) = v15 - v52;
        *&v152.m33 = v16 - v51;
        v60 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v60;
        *a1 = v143;
        *(a1 + 16) = v12;
        *(a1 + 32) = v144;
        *(a1 + 80) = 5;
        return;
      }
    }

    else if (v170 == 6)
    {
      v104 = DWORD2(v172);
      v105 = *v167.i32;
      v106 = HIDWORD(*(&v172 + 1));
      v121 = *(&v172 + 1);
      v107 = *&v166.i32[3];
      v108 = *&v166.i32[2];
      v109 = *&v166.i32[1];
      v110 = *v166.i32;
      v111 = *&v165.f64[1];
      v112 = *&v165.f64[0];
      v135 = v171;
      v113 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v113;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v114 = *(a1 + 16);
      v157 = *a1;
      v158 = v114;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      v116 = vextq_s8(v135, v135, 8uLL).u64[0];
      v117 = vshll_n_s32(vzip2_s32(*v135.i8, v116), 0x20uLL);
      v118 = vzip1_s32(*v135.i8, v116);
      v119.i64[0] = v118.u32[0];
      v119.i64[1] = v118.u32[1];
      v145 = vorrq_s8(v117, v119);
      v146 = v17;
      v147 = v18;
      v148 = v104;
      v149 = v106;
      v150 = v13;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(v145.i8, v112);
      _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v145.i8[8], v111);
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      *a1 = v145;
      if (v13 > v105)
      {
        v120 = v13;
      }

      else
      {
        v120 = v105;
      }

      *(a1 + 16) = v20 - v110;
      *(a1 + 20) = v19 - v109;
      *(a1 + 24) = *&v121 - v108;
      *(a1 + 28) = *(&v121 + 1) - v107;
      *(a1 + 32) = v120;
      *(a1 + 80) = 6;
      return;
    }

LABEL_38:
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v157);
    goto LABEL_39;
  }

  if (v176 > 1u)
  {
    if (v176 == 2)
    {
      if (v170 == 2)
      {
        v61 = v168.i8[0];
        v62 = v167.i32[3];
        v63 = v167.i8[8];
        v64 = v167.i64[0];
        v65 = *&v166.i64[1];
        v66 = *v166.i64;
        v132 = v171;
        v67 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v67;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v68 = *(a1 + 16);
        v157 = *a1;
        v158 = v68;
        v125 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v70 = vextq_s8(v132, v132, 8uLL).u64[0];
        v71 = vshll_n_s32(vzip2_s32(*v132.i8, v70), 0x20uLL);
        v72 = vzip1_s32(*v132.i8, v70);
        v73.i64[0] = v72.u32[0];
        v73.i64[1] = v72.u32[1];
        *&v138 = __PAIR64__(v14, LODWORD(v13));
        *(&v138 + 1) = v15;
        v136 = vsubq_f64(vorrq_s8(v71, v73), v125);
        *&v137 = *&v12 - v66;
        *(&v137 + 1) = *(&v12 + 1) - v65;
        v145.i64[0] = v64;
        v145.i8[8] = v63;
        v145.i32[3] = v62;
        LOBYTE(v146) = v61 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, -1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        LOBYTE(v152.m33) = LOBYTE(v16);
        v74 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v74;
        *a1 = v136;
        *(a1 + 16) = v137;
        *(a1 + 32) = v138;
        *(a1 + 80) = 2;
        return;
      }
    }

    else if (v176 == 3)
    {
      if (v170 == 3)
      {
        v21 = v167.i8[0];
        v22 = v166.i32[3];
        v23 = v166.i8[8];
        v24 = v166.i64[0];
        v25 = *v168.i64;
        v26 = *&v167.i64[1];
        v128 = v171;
        v27 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v27;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v28 = *(a1 + 16);
        v157 = *a1;
        v158 = v28;
        v122 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v30 = vextq_s8(v128, v128, 8uLL).u64[0];
        v31 = vshll_n_s32(vzip2_s32(*v128.i8, v30), 0x20uLL);
        v32 = vzip1_s32(*v128.i8, v30);
        v33.i64[0] = v32.u32[0];
        v33.i64[1] = v32.u32[1];
        *&v140 = __PAIR64__(v14, LODWORD(v13));
        v139 = vsubq_f64(vorrq_s8(v31, v33), v122);
        v145.i64[0] = v24;
        v145.i8[8] = v23;
        v145.i32[3] = v22;
        LOBYTE(v146) = v21 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, -1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *(&v140 + 1) = v15 - v26;
        *&v152.m33 = v16 - v25;
        v34 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v34;
        *a1 = v139;
        *(a1 + 16) = v12;
        *(a1 + 32) = v140;
        *(a1 + 80) = 3;
        return;
      }
    }

    else if (v170 == 4)
    {
      v80 = v167.i8[0];
      v81 = v166.i32[3];
      v82 = v166.i8[8];
      v83 = v166.i64[0];
      v84 = *v168.i64;
      v85 = *&v167.i64[1];
      v133 = v171;
      v86 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v86;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v87 = *(a1 + 16);
      v157 = *a1;
      v158 = v87;
      v126 = v165;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      v89 = vextq_s8(v133, v133, 8uLL).u64[0];
      v90 = vshll_n_s32(vzip2_s32(*v133.i8, v89), 0x20uLL);
      v91 = vzip1_s32(*v133.i8, v89);
      v92.i64[0] = v91.u32[0];
      v92.i64[1] = v91.u32[1];
      *&v142 = __PAIR64__(v14, LODWORD(v13));
      v141 = vsubq_f64(vorrq_s8(v90, v92), v126);
      v145.i64[0] = v83;
      v145.i8[8] = v82;
      v145.i32[3] = v81;
      LOBYTE(v146) = v80 & 1;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      ResolvedGradientVector.add(_:scaledBy:)(&v145, -1.0);
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      *(&v142 + 1) = v15 - v85;
      *&v152.m33 = v16 - v84;
      v93 = *&v152.m42;
      *(a1 + 48) = *&v152.m33;
      *(a1 + 64) = v93;
      *a1 = v141;
      *(a1 + 16) = v12;
      *(a1 + 32) = v142;
      *(a1 + 80) = 4;
      return;
    }

    goto LABEL_38;
  }

  if (v176)
  {
    if (v170 == 1)
    {
      v134 = v171;
      v99 = *&v172 - *v166.i32;
      v100 = *(&v172 + 1) - *&v166.i32[1];
      v127 = v165;
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
      v102 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v102;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v103 = *(a1 + 16);
      v157 = *a1;
      v158 = v103;
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      *a1 = vsubq_f32(v134, v127);
      *(a1 + 16) = v99;
      *(a1 + 20) = v100;
      *(a1 + 80) = 1;
      return;
    }

    goto LABEL_39;
  }

  if (v170)
  {
LABEL_39:
    v42 = &v165;
    goto LABEL_40;
  }

  if (*v166.i32 < *&v172)
  {
    v43 = *&v172;
  }

  else
  {
    v43 = *v166.i32;
  }

  v123 = v165;
  v130 = v171;
  outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData), &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
  v45 = *(a1 + 48);
  v159 = *(a1 + 32);
  v160 = v45;
  v161 = *(a1 + 64);
  v162 = *(a1 + 80);
  v46 = *(a1 + 16);
  v157 = *a1;
  v158 = v46;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
  *a1 = vsubq_f32(v130, v123);
  *(a1 + 16) = v43;
  *(a1 + 80) = 0;
}

uint64_t specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.-= infix(_:_:)(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    v2 = *(a2 + 32);
    v4 = *a2;
    v3 = *(a2 + 16);
    if (*(result + 40))
    {
      *result = v4;
      *(result + 16) = v3;
      v5 = v2;
    }

    else
    {
      v5 = *(result + 32) - v2;
      v6 = vsub_f32(vmovn_s64(*result), vmovn_s64(v4));
      v7.i64[0] = v6.u32[0];
      v7.i64[1] = v6.u32[1];
      v8 = vsubq_f64(*(result + 16), v3);
      *result = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(*result, 0x20uLL), vshrn_n_s64(v4, 0x20uLL)), 0x20uLL), v7);
      *(result + 16) = v8;
    }

    *(result + 32) = v5;
    *(result + 40) = 0;
  }

  return result;
}

void specialized Array<A>.animatableData.setter(uint64_t a1)
{
  v2 = *v1;
  if (*(a1 + 16) >= *(*v1 + 2))
  {
    v3 = *(*v1 + 2);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v26 = v1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (*(v2 + 2))
      {
LABEL_7:
        v6 = 0;
        v7 = 0;
        v8 = a1 + 40;
        v9 = v3 - 1;
        do
        {
          v10 = *v8;
          v11 = *(v8 + 8);
          v12 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 40);
          v15 = &v2[v6];
          *&v2[v6 + 88] = *(v8 - 8);
          if (v2[v6 + 85] & 1) != 0 || (v14)
          {
            *(v15 + 2) = 0u;
            *(v15 + 3) = 0u;
            *(v15 + 4) = 0u;
            *(v15 + 77) = 0;
            v15[85] = 1;
            if (v9 == v7)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v28 = v12;
            v16 = *(v15 + 6);
            v29 = *(v15 + 20);
            v30 = v15[84];
            if (one-time initialization token for legacyInterpolation != -1)
            {
              swift_once();
            }

            *&v5 = vmul_f32(v10, 0x3C0000003C000000);
            v27 = v5;
            v17 = *&v11 * 0.0078125;
            v18 = *(&v11 + 1) * 0.0078125;
            swift_beginAccess();
            if (static Color.Resolved.legacyInterpolation)
            {
              v20 = v27;
              v19 = v28;
            }

            else
            {
              if (v18 == 0.0)
              {
                v5 = v27;
              }

              else
              {
                *(&v5 + 1) = *(&v27 + 1);
                *&v5 = vmul_n_f32(*&v27, 1.0 / v18);
                v17 = v17 * (1.0 / v18);
              }

              v21 = v17 * (v17 * v17);
              v22 = vmul_f32(*&v5, vmul_f32(*&v5, *&v5));
              v23 = vsub_f32(vmul_f32(v22, 0x40270644408274ABLL), vrev64_s32(vmul_f32(v22, 0x4053B18C3FA25C2DLL)));
              v24 = vmul_n_f32(0x3EAEC16A3E6C8362, v21);
              LODWORD(v20) = vadd_f32(v23, v24).u32[0];
              HIDWORD(v20) = vsub_f32(v23, v24).i32[1];
              v25 = vmul_f32(v22, 0x3F34133EBB897F53);
              v17 = (v21 * 1.7076) + vsub_f32(v25, vdup_lane_s32(v25, 1)).f32[0];
              v19 = v28;
            }

            *(v15 + 4) = v20;
            *(v15 + 10) = v17;
            *(v15 + 11) = v18;
            *(v15 + 6) = v16;
            *(v15 + 56) = v19;
            *(v15 + 9) = v13;
            *(v15 + 20) = v29;
            v15[84] = v30;
            v15[85] = 0;
            if (v9 == v7)
            {
LABEL_23:
              *v26 = v2;
              return;
            }
          }

          v8 += 56;
          ++v7;
          v6 += 80;
        }

        while (v7 < *(v2 + 2));
      }
    }

    else
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      if (*(v2 + 2))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t specialized static _ShapeStyle_Pack.Style.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v34 = *(a1 + 32);
  v35 = v2;
  v4 = *(a1 + 48);
  v36[0] = *(a1 + 64);
  v5 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v5;
  v6 = *(a2 + 16);
  v7 = v6;
  v37[0] = *a2;
  v37[1] = v6;
  *(v40 + 14) = *(a2 + 78);
  v8 = *(a2 + 48);
  v40[0] = *(a2 + 64);
  v9 = *(a2 + 48);
  v38 = *(a2 + 32);
  v39 = v9;
  v30 = v34;
  v31 = v4;
  v32[0] = *(a1 + 64);
  *(v36 + 14) = *(a1 + 78);
  v28 = v33[0];
  v29 = v3;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  v13 = *(a1 + 112);
  v25 = v38;
  v26 = v8;
  v27[0] = *(a2 + 64);
  v14 = *(a2 + 88);
  v15 = *(a2 + 96);
  v16 = *(a2 + 104);
  v17 = *(a2 + 112);
  *(v32 + 14) = *(a1 + 78);
  *(v27 + 14) = *(a2 + 78);
  v23 = v37[0];
  v24 = v7;
  outlined init with copy of _ShapeStyle_Pack.Fill(v33, v43);
  outlined init with copy of _ShapeStyle_Pack.Fill(v37, v43);
  v18 = specialized static _ShapeStyle_Pack.Fill.== infix(_:_:)(&v28, &v23);
  v41[2] = v25;
  v41[3] = v26;
  v42[0] = v27[0];
  *(v42 + 14) = *(v27 + 14);
  v41[0] = v23;
  v41[1] = v24;
  outlined destroy of _ShapeStyle_Pack.Fill(v41);
  v43[2] = v30;
  v43[3] = v31;
  v44[0] = v32[0];
  *(v44 + 14) = *(v32 + 14);
  v43[0] = v28;
  v43[1] = v29;
  outlined destroy of _ShapeStyle_Pack.Fill(v43);
  v19 = 0;
  if ((v18 & 1) != 0 && v10 == v14)
  {
    if (v12 == 255)
    {
      if (v16 == 255)
      {
        outlined copy of GraphicsBlendMode?(v11, 255);
        outlined copy of GraphicsBlendMode?(v15, 255);
        outlined consume of GraphicsBlendMode?(v11, 255);
        goto LABEL_15;
      }
    }

    else if (v16 != 255)
    {
      if (v12)
      {
        if (v16)
        {
          outlined copy of GraphicsBlendMode?(v11, v12);
          outlined copy of GraphicsBlendMode?(v15, v16);
          outlined copy of GraphicsBlendMode?(v11, v12);
          outlined consume of GraphicsBlendMode(v11, 1);
          outlined consume of GraphicsBlendMode(v15, 1);
          outlined consume of GraphicsBlendMode?(v11, v12);
          if (v11 != v15)
          {
            goto LABEL_19;
          }

          goto LABEL_15;
        }

        swift_unknownObjectRetain();
        goto LABEL_17;
      }

      if (v16)
      {
LABEL_17:
        outlined copy of GraphicsBlendMode?(v11, v12);
        outlined copy of GraphicsBlendMode?(v15, v16);
        outlined consume of GraphicsBlendMode(v11, v12 & 1);
        outlined consume of GraphicsBlendMode(v15, v16 & 1);
        v20 = v11;
        v21 = v12;
        goto LABEL_18;
      }

      outlined copy of GraphicsBlendMode?(v11, v12);
      outlined copy of GraphicsBlendMode?(v15, v16);
      outlined consume of GraphicsBlendMode(v11, 0);
      outlined consume of GraphicsBlendMode(v15, 0);
      outlined consume of GraphicsBlendMode?(v11, v12);
      if (v11 != v15)
      {
        goto LABEL_19;
      }

LABEL_15:
      v19 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI16_ShapeStyle_PackV6EffectV_Tt1g5(v13, v17);
      return v19 & 1;
    }

    outlined copy of GraphicsBlendMode?(v11, v12);
    outlined copy of GraphicsBlendMode?(v15, v16);
    outlined consume of GraphicsBlendMode?(v11, v12);
    v20 = v15;
    v21 = v16;
LABEL_18:
    outlined consume of GraphicsBlendMode?(v20, v21);
LABEL_19:
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t outlined init with copy of (Color.ResolvedHDR, ContentStyle.MaterialStyle)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (Color.ResolvedHDR, ContentStyle.MaterialStyle), &type metadata for Color.ResolvedHDR, &type metadata for ContentStyle.MaterialStyle);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<LinearGradient._Paint>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(0, a2, a3, a4, type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void lazy protocol witness table accessor for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice()
{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Slice, &type metadata for _ShapeStyle_Pack.Slice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Slice, &type metadata for _ShapeStyle_Pack.Slice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Slice, &type metadata for _ShapeStyle_Pack.Slice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_Pack.Slice, &type metadata for _ShapeStyle_Pack.Slice, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice);
  }
}

void lazy protocol witness table accessor for type Slice<_ShapeStyle_Pack.Slice> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(255, &lazy cache variable for type metadata for Slice<_ShapeStyle_Pack.Slice>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice, &type metadata for _ShapeStyle_Pack.Slice, MEMORY[0x1E69E74D0]);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type IndexingIterator<_ShapeStyle_Pack.Slice> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(255, a2, lazy protocol witness table accessor for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice, &type metadata for _ShapeStyle_Pack.Slice, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void lazy protocol witness table accessor for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t assignWithCopy for _ShapeStyle_Pack.Style(uint64_t a1, uint64_t a2)
{
  v34 = *(a2 + 8);
  v35 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v36 = *(a2 + 64);
  v37 = *(a2 + 72);
  v38 = *(a2 + 84);
  v10 = *(a2 + 80);
  v11 = *(a2 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*a2, v34, v4, v5, v6, v7, v8, v9, v36, v37, v10 | (v38 << 32), v11);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80) | (*(a1 + 84) << 32);
  v23 = *(a1 + 85);
  *a1 = v35;
  *(a1 + 8) = v34;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v36;
  *(a1 + 72) = v37;
  *(a1 + 80) = v10;
  *(a1 + 84) = v38;
  *(a1 + 85) = v11;
  outlined consume of _ShapeStyle_Pack.Fill(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  *(a1 + 88) = *(a2 + 88);
  v24 = *(a2 + 104);
  if (*(a1 + 104) == 255)
  {
    if (v24 == 255)
    {
      v32 = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 96) = v32;
    }

    else
    {
      v29 = *(a2 + 96);
      v30 = v24 & 1;
      outlined copy of GraphicsBlendMode(v29, v24 & 1);
      *(a1 + 96) = v29;
      *(a1 + 104) = v30;
    }
  }

  else if (v24 == 255)
  {
    outlined destroy of GraphicsBlendMode(a1 + 96);
    v31 = *(a2 + 104);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v31;
  }

  else
  {
    v25 = *(a2 + 96);
    v26 = v24 & 1;
    outlined copy of GraphicsBlendMode(v25, v24 & 1);
    v27 = *(a1 + 96);
    v28 = *(a1 + 104);
    *(a1 + 96) = v25;
    *(a1 + 104) = v26;
    outlined consume of GraphicsBlendMode(v27, v28);
  }

  *(a1 + 112) = *(a2 + 112);

  return a1;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Style(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 84);
  v5 = *(a2 + 80);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80) | (*(a1 + 84) << 32);
  v17 = *(a1 + 85);
  v18 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v18;
  v19 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v19;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 84) = v4;
  outlined consume of _ShapeStyle_Pack.Fill(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
  *(a1 + 88) = *(a2 + 88);
  v20 = *(a1 + 104);
  if (v20 == 255)
  {
    goto LABEL_5;
  }

  v21 = *(a2 + 104);
  if (v21 == 255)
  {
    outlined destroy of GraphicsBlendMode(a1 + 96);
LABEL_5:
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_6;
  }

  v22 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v21 & 1;
  outlined consume of GraphicsBlendMode(v22, v20 & 1);
LABEL_6:
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Style(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Style(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_Pack.Fill(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v25 = *a2;
  v26 = *(a2 + 64);
  v27 = *(a2 + 72);
  v28 = *(a2 + 84);
  v10 = *(a2 + 80);
  v11 = *(a2 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*a2, v3, v4, v5, v6, v7, v8, v9, v26, v27, v10 | (v28 << 32), v11);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80) | (*(a1 + 84) << 32);
  v23 = *(a1 + 85);
  *a1 = v25;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v26;
  *(a1 + 72) = v27;
  *(a1 + 80) = v10;
  *(a1 + 84) = v28;
  *(a1 + 85) = v11;
  outlined consume of _ShapeStyle_Pack.Fill(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  return a1;
}

__n128 __swift_memcpy86_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 78) = *(a2 + 78);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Fill(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 84);
  v4 = *(a2 + 80);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80) | (*(a1 + 84) << 32);
  v16 = *(a1 + 85);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  *(a1 + 84) = v3;
  outlined consume of _ShapeStyle_Pack.Fill(v5, v7, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Fill(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 86))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 85);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Fill(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 86) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 86) = 0;
    }

    if (a2)
    {
      *(result + 85) = -a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_Pack.Effect(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *a1 = v3;
  *(a1 + 56) = *(a2 + 14);
  v6 = *(a2 + 72);
  if (*(a1 + 72) == 255)
  {
    if (v6 == 255)
    {
      v15 = *(a2 + 8);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 64) = v15;
    }

    else
    {
      v11 = *(a2 + 8);
      v12 = v6 & 1;
      outlined copy of GraphicsBlendMode(v11, v6 & 1);
      *(a1 + 64) = v11;
      *(a1 + 72) = v12;
    }
  }

  else if (v6 == 255)
  {
    outlined destroy of GraphicsBlendMode(a1 + 64);
    v14 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 72) = v14;
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = v6 & 1;
    outlined copy of GraphicsBlendMode(v7, v6 & 1);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    *(a1 + 64) = v7;
    *(a1 + 72) = v8;
    outlined consume of GraphicsBlendMode(v9, v10);
  }

  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Effect(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *result = *a2;
  *(result + 16) = v2;
  *(result + 32) = *(a2 + 32);
  *(result + 46) = *(a2 + 46);
  *(result + 56) = *(a2 + 56);
  v3 = *(result + 72);
  if (v3 == 255)
  {
    *(result + 64) = *(a2 + 64);
    *(result + 72) = *(a2 + 72);
  }

  else
  {
    v4 = *(a2 + 72);
    if (v4 == 255)
    {
      v7 = result;
      outlined destroy of GraphicsBlendMode(result + 64);
      result = v7;
      *(v7 + 64) = *(a2 + 64);
      *(v7 + 72) = *(a2 + 72);
    }

    else
    {
      v5 = *(result + 64);
      *(result + 64) = *(a2 + 64);
      *(result + 72) = v4 & 1;
      v6 = result;
      outlined consume of GraphicsBlendMode(v5, v3 & 1);
      return v6;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Effect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = ~a2;
    }
  }

  return result;
}

__n128 __swift_memcpy54_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Effect.Kind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 54))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Effect.Kind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 46) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 1;
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

  *(result + 54) = v3;
  return result;
}

uint64_t getEnumTag for _ShapeStyle_Pack.Effect.Kind(uint64_t a1)
{
  if (*(a1 + 53))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_Pack.Effect.Kind(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = (a2 - 1);
    *(result + 53) = 1;
  }

  else
  {
    *(result + 53) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Key(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t *assignWithCopy for _ShapeStyle_Pack.Slice(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Slice(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Slice(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Slice(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  outlined copy of _ShapeStyle_Pack.Fill.AnimatableData(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  outlined consume of _ShapeStyle_Pack.Fill.AnimatableData(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  outlined consume of _ShapeStyle_Pack.Fill.AnimatableData(v4, v6, v5, v7, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 81))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 80);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1)
{
  if (*(a1 + 80) <= 8u)
  {
    return *(a1 + 80);
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Effect.Kind.AnimatableData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 41) = v3;
  return result;
}

uint64_t getEnumTag for _ShapeStyle_Pack.Effect.Kind.AnimatableData(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_Pack.Effect.Kind.AnimatableData(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    *(result + 40) = 1;
  }

  else
  {
    *(result + 40) = 0;
  }

  return result;
}

uint64_t initializeWithCopy for ResolvedMulticolorStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 22) = *(a2 + 22);
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for ResolvedMulticolorStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 22) = *(a2 + 22);
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  v5 = v4;

  return a1;
}

uint64_t assignWithTake for ResolvedMulticolorStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 22) = *(a2 + 22);
  v3 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t type metadata completion function for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 86 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    v20 = *(v12 + 48);
    v19 = *(v12 + 56);
    v22 = *(v12 + 64);
    v23 = *(v12 + 72);
    v25 = *(v12 + 84);
    v26 = *(v12 + 80);
    v24 = *(v12 + 85);
    outlined copy of _ShapeStyle_Pack.Fill(*v12, v14, v15, v16, v17, v18, v20, v19, v22, v23, v26 | (v25 << 32), v24);
    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 24) = v16;
    *(v11 + 32) = v17;
    *(v11 + 40) = v18;
    *(v11 + 48) = v20;
    *(v11 + 56) = v19;
    *(v11 + 64) = v22;
    *(v11 + 72) = v23;
    *(v11 + 84) = v25;
    *(v11 + 80) = v26;
    *(v11 + 85) = v24;
  }

  return a1;
}

void destroy for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8) + 8;
  (*v4)(a1, AssociatedTypeWitness);
  v5 = (a1 + *(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of _ShapeStyle_Pack.Fill(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80) | (*(v5 + 84) << 32), *(v5 + 85));
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(v4, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48) + 7;
  v8 = (v7 + v4) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = *(v9 + 32);
  v15 = *(v9 + 40);
  v16 = *(v9 + 48);
  v17 = *(v9 + 56);
  v19 = *(v9 + 64);
  v20 = *(v9 + 72);
  v21 = *(v9 + 84);
  v22 = *(v9 + 80);
  LOBYTE(v4) = *(v9 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*v9, v11, v12, v13, v14, v15, v16, v17, v19, v20, v22 | (v21 << 32), v4);
  *v8 = v10;
  *(v8 + 8) = v11;
  *(v8 + 16) = v12;
  *(v8 + 24) = v13;
  *(v8 + 32) = v14;
  *(v8 + 40) = v15;
  *(v8 + 48) = v16;
  *(v8 + 56) = v17;
  *(v8 + 64) = v19;
  *(v8 + 72) = v20;
  *(v8 + 84) = v21;
  *(v8 + 80) = v22;
  *(v8 + 85) = v4;
  return a1;
}

uint64_t assignWithCopy for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  v14 = *(v9 + 40);
  v15 = *(v9 + 48);
  v16 = *(v9 + 56);
  v31 = *v9;
  v32 = *(v9 + 64);
  v33 = *(v9 + 72);
  v34 = *(v9 + 84);
  v17 = *(v9 + 80);
  LOBYTE(a2) = *(v9 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*v9, v10, v11, v12, v13, v14, v15, v16, v32, v33, v17 | (v34 << 32), a2);
  v18 = *v8;
  v19 = *(v8 + 8);
  v20 = *(v8 + 16);
  v21 = *(v8 + 24);
  v22 = *(v8 + 32);
  v23 = *(v8 + 40);
  v24 = *(v8 + 48);
  v25 = *(v8 + 56);
  v26 = *(v8 + 64);
  v27 = *(v8 + 72);
  v28 = *(v8 + 80) | (*(v8 + 84) << 32);
  v29 = *(v8 + 85);
  *v8 = v31;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v8 + 24) = v12;
  *(v8 + 32) = v13;
  *(v8 + 40) = v14;
  *(v8 + 48) = v15;
  *(v8 + 56) = v16;
  *(v8 + 64) = v32;
  *(v8 + 72) = v33;
  *(v8 + 80) = v17;
  *(v8 + 84) = v34;
  *(v8 + 85) = a2;
  outlined consume of _ShapeStyle_Pack.Fill(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  return a1;
}

uint64_t initializeWithTake for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  v12 = *(v9 + 48);
  v11 = *(v9 + 64);
  v13 = *(v9 + 32);
  *(v8 + 78) = *(v9 + 78);
  *(v8 + 48) = v12;
  *(v8 + 64) = v11;
  *(v8 + 32) = v13;
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24) + 7;
  v8 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 84);
  v10 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v8 + 80);
  v12 = *v10;
  v13 = *(v10 + 8);
  v14 = *(v10 + 16);
  v15 = *(v10 + 24);
  v16 = *(v10 + 32);
  v17 = *(v10 + 40);
  v18 = *(v10 + 48);
  v19 = *(v10 + 56);
  v20 = *(v10 + 64);
  v21 = *(v10 + 72);
  v22 = *(v10 + 85);
  v23 = *(v8 + 16);
  v24 = *(v8 + 32);
  v25 = *(v8 + 48);
  v26 = *(v8 + 64);
  *v10 = *v8;
  *(v10 + 16) = v23;
  *(v10 + 32) = v24;
  *(v10 + 48) = v25;
  *(v10 + 64) = v26;
  v27 = *(v10 + 80);
  v10 += 80;
  v28 = *(v10 + 4);
  *v10 = v11;
  *(v10 + 4) = v9;
  outlined consume of _ShapeStyle_Pack.Fill(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v27 | (v28 << 32), v22);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xF9)
  {
    v8 = 249;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2 && *(a1 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 86))
  {
    return v8 + *a1 + 1;
  }

  if (v7 < 0xF9)
  {
    v12 = *(((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 85);
    if (v12 > 6)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = *(v6 + 48);

    return v11(a1);
  }
}

double storeEnumTagSinglePayload for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v7 + 84);
  v10 = *(v7 + 64);
  if (v9 <= 0xF9)
  {
    v11 = 249;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 86;
  if (v11 >= a2)
  {
    if (v11 < a3)
    {
      *(a1 + v12) = 0;
    }

    if (a2)
    {
      if (v9 < 0xF9)
      {
        v14 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xF9)
        {
          *(v14 + 72) = 0;
          result = 0.0;
          *(v14 + 56) = 0u;
          *(v14 + 40) = 0u;
          *(v14 + 24) = 0u;
          *(v14 + 8) = 0u;
          *(v14 + 84) = 0;
          *(v14 + 80) = 0;
          *v14 = (a2 - 250);
        }

        else
        {
          *(v14 + 85) = -a2;
        }
      }

      else
      {
        v13 = *(v7 + 56);

        v13(a1, a2);
      }
    }
  }

  else
  {
    bzero(a1, v12);
    *a1 = ~v11 + a2;
    if (v11 < a3)
    {
      *(a1 + v12) = 1;
    }
  }

  return result;
}

uint64_t _ShapeStyle_RenderedShape.init(_:frame:identity:version:contentSeed:options:environment:)@<X0>(_OWORD *a1@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, __int16 *a4@<X3>, char *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  *(a7 + 144) = 0;
  *(a7 + 152) = 0;
  if (one-time initialization token for normal != -1)
  {
    v21 = a1;
    v22 = a6;
    v23 = a7;
    v24 = a11;
    v25 = a10;
    v26 = a9;
    v27 = a8;
    swift_once();
    a1 = v21;
    a8 = v27;
    a9 = v26;
    a10 = v25;
    a11 = v24;
    a7 = v23;
    a6 = v22;
  }

  v15 = static GraphicsBlendMode.normal;
  v16 = byte_1ED52F818;
  *(a7 + 248) = static GraphicsBlendMode.normal;
  *(a7 + 256) = v16;
  *(a7 + 260) = 1065353216;
  *(a7 + 264) = 0;
  v17 = a1[5];
  *(a7 + 64) = a1[4];
  *(a7 + 80) = v17;
  *(a7 + 92) = *(a1 + 92);
  v18 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v18;
  v19 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v19;
  *(a7 + 108) = v13;
  *(a7 + 112) = a8;
  *(a7 + 120) = a9;
  *(a7 + 128) = a10;
  *(a7 + 136) = a11;
  *(a7 + 160) = a8;
  *(a7 + 168) = a9;
  *(a7 + 176) = a10;
  *(a7 + 184) = a11;
  *(a7 + 192) = v12;
  *(a7 + 200) = 0;
  *(a7 + 208) = 0;
  *(a7 + 216) = 0;
  *(a7 + 224) = 3221225472;
  *(a7 + 232) = v11;
  *(a7 + 236) = v14;
  *(a7 + 240) = a6;

  return outlined copy of GraphicsBlendMode(v15, v16);
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t *a2, __int128 *a3, void *a4)
{
  v6 = *a1;
  v7 = a3[1];
  v51 = *a3;
  v52 = v7;
  v8 = a3[3];
  v53 = a3[2];
  v54 = v8;
  v9 = a3[5];
  v55 = a3[4];
  v56[0] = v9;
  *(v56 + 12) = *(a3 + 92);
  v10 = DWORD2(v56[1]) >> 29;
  if (DWORD2(v56[1]) >> 29 == 2)
  {
    v11 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v26 = v51;
      LOBYTE(v27) = v52 & 1;
      v34[0] = *v11;
      LOBYTE(v44) = v6;
      _ShapeStyle_Pack.subscript.getter(&v44, 0, &v36);
      v25 = v6;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v26, &v36, &v25);
      v48 = v40;
      v49[0] = v41;
      v49[1] = v42;
      v50 = v43;
      v44 = v36;
      v45 = v37;
      v46 = v38;
      v47 = v39;
      outlined destroy of _ShapeStyle_Pack.Style(&v44);
    }

    else
    {
      v44 = v51;
      LOBYTE(v45) = v52 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v44);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v51);
  }

  else if (v10 == 3)
  {
    if (v55)
    {
      v44 = v51;
      LOBYTE(v45) = v52;
      *(&v45 + 1) = *(&v52 + 1);
      BYTE7(v45) = (*(&v52 + 1) | ((*(&v52 + 5) | (BYTE7(v52) << 16)) << 32)) >> 48;
      *(&v45 + 5) = *(&v52 + 5);
      *(&v45 + 1) = *(&v52 + 1);
      v46 = v53;
      v47 = v54;
      LOBYTE(v48) = v55;
      *(&v48 + 1) = *(&v55 + 1);
      BYTE7(v48) = (*(&v55 + 1) | ((*(&v55 + 5) | (BYTE7(v55) << 16)) << 32)) >> 48;
      *(&v48 + 5) = *(&v55 + 5);
      *(&v48 + 1) = *(&v55 + 1);
      v49[0] = v56[0];
      *&v49[1] = *&v56[1];
      DWORD2(v49[1]) = DWORD2(v56[1]) & 0x1FFFFFFF;
      _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v44);
      return;
    }

    if (BYTE8(v51) != 2)
    {
      if (BYTE8(v51) == 255)
      {
        *(v49 + 12) = *(a3 + 92);
        v12 = a3[5];
        v48 = a3[4];
        v49[0] = v12;
        v13 = a3[1];
        v44 = *a3;
        v45 = v13;
        v14 = a3[3];
        v46 = a3[2];
        v47 = v14;
        DWORD2(v49[1]) &= 0x1FFFFFFFu;
        v15 = a4;
        outlined init with copy of GraphicsImage(&v44, &v36);
        a4 = v15;
      }

      goto LABEL_14;
    }

    v16 = *(v51 + 24);
    v17 = *(v51 + 32);
    v18 = *(v51 + 40);
    v19 = *(v51 + 44);
    v20 = *(v51 + 45);
    v21 = *(v51 + 48);
    *&v44 = *(v51 + 16);
    BYTE8(v44) = v16;
    *&v45 = v17;
    DWORD2(v45) = v18;
    BYTE12(v45) = v19;
    BYTE13(v45) = v20;
    *&v46 = v21;
    LOBYTE(v26) = v6;
    *&v36 = *a4;
    v22 = v44;
    outlined copy of Image.Location(v17);
    v23 = v21;

    specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v44, *(&v53 + 1), &v26, &v36, a2, v24);

    outlined consume of Image.Location(v17);
  }

  else if (v10 != 5 || DWORD2(v56[1]) != -1610612736 || v52 | ((*(&v52 + 1) | ((*(&v52 + 5) | (BYTE7(v52) << 16)) << 32)) << 8) | v55 | ((*(&v55 + 1) | ((*(&v55 + 5) | (BYTE7(v55) << 16)) << 32)) << 8) | v51 | *(&v51 + 1) | *(&v52 + 1) | v53 | *(&v53 + 1) | v54 | *(&v54 + 1) | *(&v55 + 1) | *&v56[0] | *(&v56[0] + 1) | *&v56[1])
  {
LABEL_14:
    *&v44 = *a4;
    LOBYTE(v26) = v6;
    _ShapeStyle_Pack.subscript.getter(&v26, 0, &v36);
    v34[0] = v6;
    v34[1] = 0;
    v35 = 0;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    outlined init with copy of _ShapeStyle_Pack.Style(&v36, &v44);
    _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v34, &v26, a3);
    v48 = v30;
    v49[0] = v31;
    v49[1] = v32;
    v50 = v33;
    v44 = v26;
    v45 = v27;
    v46 = v28;
    v47 = v29;
    outlined destroy of _ShapeStyle_Pack.Style?(&v44, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    _ShapeStyle_RenderedShape.render(style:)(&v26);
    _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
    outlined destroy of _ShapeStyle_Pack.Style(&v36);
  }
}

uint64_t _ShapeStyle_RenderedShape.background(_:)(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, 0x109uLL);
  v4 = __dst[264];
  memcpy(__srca, __src, 0x109uLL);
  v5 = *(v2 + 264);
  if (((v5 | __dst[264]) & 2) != 0)
  {
    if (v5)
    {
      LOWORD(v16[0]) = *(v2 + 108);
      outlined init with copy of _ShapeStyle_RenderedShape(__dst, v18);
      DisplayList.Item.addDrawingGroup(contentSeed:)(v16);
      *(v2 + 264) = v5 & 0xFE;
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      outlined init with copy of _ShapeStyle_RenderedShape(__dst, v18);
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    LOWORD(v18[0]) = __srca[54];
    DisplayList.Item.addDrawingGroup(contentSeed:)(v18);
    LOBYTE(__srca[132]) = v4 & 0xFE;
    goto LABEL_8;
  }

  outlined init with copy of _ShapeStyle_RenderedShape(__dst, v18);
LABEL_8:
  _ShapeStyle_RenderedShape.commitItem()(v12);
  v6 = *(v2 + 208);
  v14[2] = *(v2 + 192);
  v15[0] = v6;
  *(v15 + 12) = *(v2 + 220);
  v7 = *(v2 + 176);
  v14[0] = *(v2 + 160);
  v14[1] = v7;
  outlined destroy of DisplayList.Item(v14);
  v8 = v13[0];
  *(v2 + 192) = v12[2];
  *(v2 + 208) = v8;
  *(v2 + 220) = *(v13 + 12);
  v9 = v12[1];
  *(v2 + 160) = v12[0];
  *(v2 + 176) = v9;
  _ShapeStyle_RenderedShape.commitItem()(v18);
  DisplayList.Item.composite(_:above:)(v18, 0);
  v16[2] = v18[2];
  v17[0] = v18[3];
  *(v17 + 12) = *(&v18[3] + 12);
  v16[0] = v18[0];
  v16[1] = v18[1];
  outlined destroy of DisplayList.Item(v16);
  v10 = __srca[132];
  memcpy(v18, __srca, 0x109uLL);
  result = outlined destroy of _ShapeStyle_RenderedShape(v18);
  *(v2 + 264) |= v10;
  return result;
}

SwiftUI::Time __swiftcall _ShapeStyle_InterpolatorGroup.nextUpdate(after:)(SwiftUI::Time after)
{
  v3 = v1;
  swift_beginAccess();
  v4 = *(v2 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 240);
    result.seconds = INFINITY;
    do
    {
      v8 = v6 - 3;
      if (*(*(v6 - 1) + 16))
      {
        v8 = v6;
      }

      if (*v8 < result.seconds)
      {
        result.seconds = *v8;
      }

      v6 += 29;
      --v5;
    }

    while (v5);
  }

  else
  {
    result.seconds = INFINITY;
  }

  *v3 = result.seconds;
  return result;
}

uint64_t _ShapeStyle_InterpolatorGroup.deinit()
{
  _ShapeStyle_InterpolatorGroup.reset()();

  return v0;
}

void _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(int8x16_t **a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v30 = a2[1];
  v31 = *a2;
  v29 = *(a2 + 4);
  v6 = *(a2 + 40);
  *(v52 + 14) = *(v4 + 78);
  v7 = v4[4];
  v51 = v4[3];
  v52[0] = v7;
  v8 = v4[2];
  v49 = v4[1];
  v50 = v8;
  v48 = *v4;
  v9 = *(v4 + 22);
  v26 = *(v4 + 12);
  v27 = *(v4 + 104);
  v28 = v6;
  v10 = *(v4 + 14);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 80 * v11 - 48);
    v34 = *(v4 + 22);
    while (1)
    {
      v43 = *v12;
      v13 = v12[1];
      v14 = v12[2];
      v15 = v12[3];
      *&v46[9] = *(v12 + 57);
      v45 = v14;
      *v46 = v15;
      v44 = v13;
      *&v35[0] = a3;
      LODWORD(v13) = *(a3 + 48);
      v16 = v9 * *&v13;
      if (*&v13 == (v9 * *&v13))
      {
        outlined init with copy of _ShapeStyle_Pack.Effect(&v43, &v38);

        v17 = a3;
      }

      else
      {
        outlined init with copy of _ShapeStyle_Pack.Effect(&v43, &v38);

        GraphicsContext.copyOnWrite()();
        v17 = *&v35[0];
        *(*&v35[0] + 48) = v16;
      }

      if (v46[24] == 255)
      {
        if (one-time initialization token for normal != -1)
        {
          swift_once();
        }

        v18 = static GraphicsBlendMode.normal;
        v19 = byte_1ED52F818;
        outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
        if (v19)
        {
LABEL_8:
          outlined init with copy of _ShapeStyle_Pack.Effect(&v43, &v38);
          outlined consume of GraphicsBlendMode(v18, 1);
          if ((v46[5] & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v18 = *&v46[16];
        if (v46[24])
        {
          goto LABEL_8;
        }
      }

      if (*(v17 + 52) == v18)
      {
        outlined init with copy of _ShapeStyle_Pack.Effect(&v43, &v38);
        if ((v46[5] & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        outlined init with copy of _ShapeStyle_Pack.Effect(&v43, &v38);
        GraphicsContext.copyOnWrite()();
        v17 = *&v35[0];
        *(*&v35[0] + 52) = v18;
        if ((v46[5] & 1) == 0)
        {
LABEL_17:
          if ((v46[4] & 8) != 0)
          {
            v20 = *(a3 + 48);
            if (*(v17 + 48) != v20)
            {
              GraphicsContext.copyOnWrite()();
              *(*&v35[0] + 48) = v20;
            }
          }

          GraphicsContext.copyOnWrite()();
          if (*(*(*&v35[0] + 16) + 64) != 2)
          {
            RBColorFromLinear();
          }

          specialized RBShadowFlags.init(_:)(0);
          RBDrawingStateAddShadowStyle3();
          v9 = v34;
        }
      }

LABEL_23:
      outlined destroy of _ShapeStyle_Pack.Effect(&v43);

      if (v11 == 1)
      {
        break;
      }

      --v11;
      v12 -= 5;
      if (v11 > *(v10 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }
    }
  }

  v47 = a3;
  v21 = *(a3 + 48);

  if (v21 != (v9 * v21))
  {
    GraphicsContext.copyOnWrite()();
    a3 = v47;
    *(v47 + 48) = v9 * v21;
  }

  LOBYTE(v10) = v27;
  if (v27 == 255)
  {
LABEL_31:
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v23 = static GraphicsBlendMode.normal;
    v24 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    v22 = v26;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v22 = v26;
    v23 = v26;
    if (v27)
    {
LABEL_30:
      outlined copy of GraphicsBlendMode?(v22, v10);
      outlined consume of GraphicsBlendMode(v23, 1);
      goto LABEL_36;
    }
  }

  v25 = *(a3 + 52);
  outlined copy of GraphicsBlendMode?(v22, v10);
  if (v25 != v23)
  {
    GraphicsContext.copyOnWrite()();
    *(v47 + 52) = v23;
  }

LABEL_36:
  v40 = v50;
  v41 = v51;
  v42[0] = v52[0];
  *(v42 + 14) = *(v52 + 14);
  v38 = v48;
  v39 = v49;
  v35[0] = v31;
  v35[1] = v30;
  v36 = v29;
  v37 = v28;
  outlined init with copy of _ShapeStyle_Pack.Fill(&v48, &v43);
  _ShapeStyle_Pack.Fill.draw(_:style:in:bounds:)(a1, v35, &v47, a4);
  v45 = v40;
  *v46 = v41;
  *&v46[16] = v42[0];
  *&v46[30] = *(v42 + 14);
  v43 = v38;
  v44 = v39;
  outlined destroy of _ShapeStyle_Pack.Fill(&v43);
}

void _ShapeStyle_Pack.Fill.draw(_:style:in:bounds:)(int8x16_t **a1, _OWORD *a2, uint64_t *a3, uint64_t a4)
{
  v195 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = *(a1 + 32);
  v9 = *a4;
  v10 = *(a4 + 16);
  v11 = a2[1];
  *v190 = *a2;
  *&v190[16] = v11;
  *&v190[25] = *(a2 + 25);
  v13 = *v4;
  v12 = v4[1];
  v14 = v4[2];
  v15 = v4[3];
  v16 = v4[4];
  v17 = *(v4 + 3);
  v18 = *(v4 + 32);
  v19 = v4[9];
  v20 = *(v4 + 40);
  v21 = *(v4 + 41);
  v22 = *(v4 + 85);
  if (v22 <= 2)
  {
    if (!*(v4 + 85))
    {
      v42 = *a3;
      *&v178 = __PAIR64__(v12, v13);
      *(&v178 + 1) = __PAIR64__(v15, v14);
      *v179 = v16;
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v178);
      v175 = v183;
      v176 = v184;
      v177 = v185;
      v171 = *&v179[48];
      v172 = v180;
      v173 = v181;
      v174 = v182;
      *v169 = v178;
      *&v169[16] = *v179;
      *&v169[32] = *&v179[16];
      v170 = *&v179[32];
      v186[0] = *v190;
      v186[1] = *&v190[16];
      *(&v186[1] + 9) = *&v190[25];
      GraphicsContext.draw(_:with:style:)(a1, v169, v186, v42);
      return;
    }

    if (v22 == 1)
    {
      v34 = a2[1];
      v178 = *a2;
      *v179 = v34;
      *&v179[9] = *(a2 + 25);
      (*(*(v13 | (v12 << 32)) + 80))(a1, &v178, *a3, a4);
      return;
    }

    *v169 = *v4;
    *&v169[4] = v12;
    *&v169[8] = v14;
    *&v169[12] = v15;
    *&v169[16] = v16;
    v148 = v10;
    v155 = v9;
    if (v18 == 3 && (v17 & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v51 = a3;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&static CoreMaterialCache.shared);
      *&v178 = v17;
      BYTE8(v178) = v18;
      HIDWORD(v178) = v19;
      v179[0] = v20;
      v179[1] = v21;
      outlined copy of Material.ID(v17, v18);
      v43 = CoreMaterialCache.subscript.getter(&v178);
      outlined consume of Material.ID(v178, BYTE8(v178));
      os_unfair_lock_unlock(&static CoreMaterialCache.shared);
      a3 = v51;
      v10.i64[1] = v148.i64[1];
      *(&v9 + 1) = *(&v155 + 1);
    }

    if (*(a4 + 32))
    {
      v52 = *a1;
      v53 = *(a1 + 32);
      if (v53 > 2)
      {
        if (v53 == 5)
        {
          if (*(v52 + 16))
          {
            v113 = a3;
            if (*(v52 + 16) == 1)
            {

              RBPathGetBoundingRect();
            }

            else
            {

              v114 = MEMORY[0x193AC3640](v52 + 24);
            }

            y = v115;
            v148.i64[0] = v116;
            *&v155 = v114;
            height = v117;
            outlined destroy of Path(a1);
            a3 = v113;
          }

          else
          {
            v128 = *(v52 + 24);
            if (!v128)
            {
              __break(1u);
              goto LABEL_113;
            }

            v129 = a3;
            v130 = v128;

            PathBoundingBox = CGPathGetPathBoundingBox(v130);
            y = PathBoundingBox.origin.y;
            v148.i64[0] = *&PathBoundingBox.size.width;
            *&v155 = PathBoundingBox.origin.x;
            height = PathBoundingBox.size.height;

            outlined destroy of Path(a1);
            a3 = v129;
          }
        }

        else
        {
          if (v53 != 6)
          {
            goto LABEL_115;
          }

          y = *(MEMORY[0x1E695F050] + 8);
          height = *(MEMORY[0x1E695F050] + 24);
          v148.i64[0] = *(MEMORY[0x1E695F050] + 16);
          *&v155 = *MEMORY[0x1E695F050];
        }
      }

      else if (*(a1 + 32) && v53 != 1)
      {
        y = *(v52 + 24);
        height = *(v52 + 40);
        v148.i64[0] = *(v52 + 32);
        *&v155 = *(v52 + 16);
      }

      else
      {
        *&v155 = *a1;
        y = *(a1 + 1);
        v148.i64[0] = a1[2];
        height = *(a1 + 3);
      }
    }

    else
    {
      y = *(&v9 + 1);
      height = *&v10.i64[1];
    }

    v56 = *a3;
    outlined init with copy of Path(a1, &v178);
    outlined init with copy of PathDrawingStyle(v190, &v178);
    specialized GraphicsContext.drawMaterialEffects(_:in:body:)(v43, v56, a1, v169, v190, *&v155, y, *v148.i64, height);
    outlined destroy of PathDrawingStyle(v190);
    outlined destroy of Path(a1);

    return;
  }

  v23 = v4[5];
  if (*(v4 + 85) > 4u)
  {
    if (v22 != 5)
    {
      return;
    }

    v142 = v4[1];
    v143 = v4[3];
    v147 = v10;
    v154 = v9;
    v144 = v4;
    v191.i64[0] = *a3;

    GraphicsContext.copyOnWrite()();
    v35 = *(*(v191.i64[0] + 16) + 32);
    if (v190[40])
    {
      *(v186 + 2) = *&v190[2];
      *(&v186[1] + 2) = *&v190[18];
      *&v186[2] = *&v190[32];
      LOWORD(v186[0]) = *v190;
      v36 = v35;
      v37 = v35;
      RBShape.setStrokedPath(_:style:)(a1, v186, v38, v39, v40, v41);
    }

    else
    {
      v62 = *(v191.i64[0] + 56);
      if (v190[1])
      {
        v63 = 256;
      }

      else
      {
        v63 = 0;
      }

      v36 = *(*(v191.i64[0] + 16) + 32);
      v64 = v35;
      RBShape.setPath(_:style:shapeDistance:)(a1, v63 & 0xFFFE | v190[0] & 1, v62);
    }

    RBDrawingStateClipShape2();
    *&v178 = __PAIR64__(v142, v13);
    *(&v178 + 1) = __PAIR64__(v143, v14);
    *v179 = v16;
    *&v179[4] = v23;
    *&v179[8] = v17;
    v179[16] = v18;
    *&v179[17] = *(v144 + 33);
    v179[19] = *(v144 + 35);
    *&v179[20] = v19;
    v179[24] = v20;
    v179[25] = v21;
    *&v179[56] = *(v144 + 9);
    *&v179[42] = *(v144 + 58);
    *&v179[26] = *(v144 + 42);
    GraphicsContext.copyOnWrite()();
    v65 = v191.i64[0];
    RBDrawingStateAddColorMatrixFilter();
    if (*(a4 + 32))
    {
      v66 = *a1;
      v67 = *(a1 + 32);
      if (v67 <= 2)
      {
        v68 = *(a1 + 1);
        if (v67 >= 2)
        {
          v66 = *(v66.i64[0] + 16);
          v68 = (*a1)[2];
        }

        goto LABEL_61;
      }

      if (v67 == 5)
      {
        v118 = *a1;
        if (*(v66.i64[0] + 16))
        {
          if (*(v66.i64[0] + 16) == 1)
          {

            RBPathGetBoundingRect();
          }

          else
          {

            v119 = MEMORY[0x193AC3640](v118 + 24);
          }

          x = v119;
          v165 = v120;
          v145 = v122;
          width = v121;
          goto LABEL_108;
        }

        v131 = *(v66.i64[0] + 24);
        if (v131)
        {
          v132 = v131;

          v197 = CGPathGetPathBoundingBox(v132);
          x = v197.origin.x;
          v165 = v197.origin.y;
          v145 = v197.size.height;
          width = v197.size.width;

LABEL_108:
          outlined destroy of Path(a1);
          *v68.i64 = width;
          *v66.i64 = x;
          *&v68.i64[1] = v145;
          *&v66.i64[1] = v165;
          goto LABEL_61;
        }

LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      if (v67 != 6)
      {
        goto LABEL_115;
      }

      v66 = *MEMORY[0x1E695F050];
      v68 = *(MEMORY[0x1E695F050] + 16);
    }

    else
    {
      v68 = v147;
      v66 = v154;
    }

LABEL_61:
    v150 = v68;
    v158 = v66;
    v99 = v66.i64[1];
    v100 = v68.i64[1];
    IsNull = CGRectIsNull(*v66.i8);
    if (IsNull)
    {
      v102 = -1;
    }

    else
    {
      v102 = 0;
    }

    v103 = vdupq_n_s64(v102);
    v159 = vbicq_s8(v158, v103);
    v164 = vbicq_s8(v150, v103);
    *v194 = v159;
    *&v194[16] = v164;
    if (IsNull)
    {
      v104 = 6;
    }

    else
    {
      v104 = 0;
    }

    v194[32] = v104;
    v178 = 0uLL;
    *v179 = 2143289344;
    v179[56] = 0;
    *v169 = 256;
    memset(&v169[8], 0, 33);
    v105 = v194;
    v106 = &v178;
    v107 = v169;
    goto LABEL_76;
  }

  if (v22 == 3)
  {
    v24 = v4[1];
    v25 = v4[3];
    v136 = v7;
    v138 = v6;
    v167 = *a3;

    GraphicsContext.copyOnWrite()();
    v26 = v167;
    v27 = *(*(v167 + 16) + 32);
    v28 = v190[40];
    if (v190[40])
    {
      *(v186 + 2) = *&v190[2];
      *(&v186[1] + 2) = *&v190[18];
      *&v186[2] = *&v190[32];
      LOWORD(v186[0]) = *v190;
      v29 = v27;
      RBShape.setStrokedPath(_:style:)(a1, v186, v30, v31, v32, v33);
    }

    else
    {
      v57 = *(v167 + 56);
      if (v190[1])
      {
        v58 = 256;
      }

      else
      {
        v58 = 0;
      }

      v59 = v27;
      RBShape.setPath(_:style:shapeDistance:)(a1, v58 & 0xFFFE | v190[0] & 1, v57);
    }

    RBDrawingStateClipShape2();
    if (v28)
    {
      *v194 = *v190;
      *&v194[16] = *&v190[16];
      *&v194[32] = *&v190[32];
      Path.strokedPath(_:)(v194, &v187);
      v60 = v188;
      v61 = v187;
      v8 = v189;
    }

    else
    {
      v76 = *(a1 + 1);
      *v194 = *a1;
      *&v194[16] = v76;
      v194[32] = *(a1 + 32);
      outlined init with copy of Path.Storage(v194, &v178);
      v61 = v136;
      v60 = v138;
    }

    v137 = v61;
    v139 = v60;
    v191 = v61;
    v192 = v60;
    v193 = v8;
    *&v178 = __PAIR64__(v24, v13);
    BYTE8(v178) = v14;
    HIDWORD(v178) = v25;
    v135 = Material.ResolvedMaterial.layers.getter();
    v77 = *(v135 + 16);
    v78 = v137.i64[1];
    v79 = v139.i64[1];
    if (v77)
    {
      v80 = v135 + 32;
      v81 = v137.i64[0];
      v82 = v139.i64[0];
      v140 = v8;
      do
      {
        v83 = *v80;
        v84 = *(v80 + 16);
        v85 = *(v80 + 32);
        LOBYTE(v170) = *(v80 + 48);
        *&v169[16] = v84;
        *&v169[32] = v85;
        *v169 = v83;
        outlined init with copy of Material.Layer(v169, &v178);
        outlined copy of Path.Storage(v81, v78, v82, v79, v8);
        v86 = RBDrawingStateBeginLayer();
        type metadata accessor for GraphicsContext.Storage();
        v87 = swift_allocObject();
        *(v87 + 32) = xmmword_18DD85500;
        *(v87 + 48) = 1065353216;
        *(v87 + 56) = 0x7FF8000000000000;
        v88 = v26[2];
        v89 = *(v88 + 64);
        if (v89 == RBDrawingStateGetDefaultColorSpace())
        {
          *(v87 + 16) = v88;
        }

        else
        {
          v141 = RBDrawingStateGetDisplayList();
          v90 = v26[4];
          v91 = v26[5];
          v92 = v90;
          v157 = v91;
          if (v90 == 1)
          {
            v92 = *(v88 + 48);
            v157 = *(v88 + 56);
          }

          type metadata accessor for GraphicsContext.Storage.Shared();
          v93 = swift_allocObject();
          *(v93 + 24) = 0;
          *(v93 + 32) = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
          *(v93 + 40) = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
          *(v93 + 72) = 0;
          _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(&v178);
          v94 = v184;
          *(v93 + 208) = v183;
          *(v93 + 224) = v94;
          *(v93 + 240) = v185;
          v95 = v180;
          *(v93 + 144) = *&v179[48];
          *(v93 + 160) = v95;
          v96 = v182;
          *(v93 + 176) = v181;
          *(v93 + 192) = v96;
          v97 = *v179;
          *(v93 + 80) = v178;
          *(v93 + 96) = v97;
          v98 = *&v179[32];
          *(v93 + 112) = *&v179[16];
          *(v93 + 128) = v98;
          *(v93 + 248) = 2;
          *(v93 + 264) = 0;
          *(v93 + 272) = 0;
          *(v93 + 256) = 0;
          *(v93 + 16) = v141;
          *(v93 + 48) = v92;
          *(v93 + 56) = v157;
          *(v93 + 64) = [v141 defaultColorSpace];
          *(v87 + 16) = v93;
          v8 = v140;
          v26 = v167;
        }

        *(v87 + 24) = v86;
        *(v87 + 64) = 0;
        *&v178 = v87;

        closure #1 in Material.Layer.fill(in:shape:bounds:)(&v178, v169, a4, &v191);

        RBDrawingStateDrawLayer();

        v78 = v137.i64[1];
        v81 = v137.i64[0];
        v79 = v139.i64[1];
        v82 = v139.i64[0];
        outlined consume of Path.Storage(v137.i64[0], v137.i64[1], v139.i64[0], v139.i64[1], v8);
        outlined destroy of Material.Layer(v169);
        v80 += 56;
        --v77;
      }

      while (v77);
    }

    outlined consume of Path.Storage(v137.i64[0], v78, v139.i64[0], v79, v8);

    goto LABEL_77;
  }

  v149 = v10;
  v156 = v9;
  v187.i64[0] = __PAIR64__(v12, v13);
  v187.i64[1] = __PAIR64__(v15, v14);
  v188.i64[0] = __PAIR64__(v23, v16);
  v44 = a3;
  Color.ResolvedDuotone.colorMatrix.getter(&v178);
  v168 = *v44;

  GraphicsContext.copyOnWrite()();
  v45 = *(*(v168 + 16) + 32);
  if (v190[40])
  {
    *&v194[2] = *&v190[2];
    *&v194[18] = *&v190[18];
    *&v194[32] = *&v190[32];
    *v194 = *v190;
    v46 = v45;
    RBShape.setStrokedPath(_:style:)(a1, v194, v47, v48, v49, v50);
  }

  else
  {
    v69 = *(v168 + 56);
    if (v190[1])
    {
      v70 = 256;
    }

    else
    {
      v70 = 0;
    }

    v71 = v70 & 0xFFFE | v190[0] & 1;
    v72 = v45;
    RBShape.setPath(_:style:shapeDistance:)(a1, v71, v69);
  }

  RBDrawingStateClipShape2();
  *&v169[32] = *&v179[16];
  v170 = *&v179[32];
  v171 = *&v179[48];
  *v169 = v178;
  *&v169[16] = *v179;
  GraphicsContext.copyOnWrite()();
  v65 = v168;
  RBDrawingStateAddColorMatrixFilter();
  if (*(a4 + 32))
  {
    v73 = *a1;
    v74 = *(a1 + 32);
    if (v74 <= 2)
    {
      v75 = *(a1 + 1);
      if (v74 >= 2)
      {
        v73 = *(v73.i64[0] + 16);
        v75 = (*a1)[2];
      }

      goto LABEL_69;
    }

    if (v74 == 5)
    {
      v123 = *a1;
      if (*(v73.i64[0] + 16))
      {
        if (*(v73.i64[0] + 16) == 1)
        {

          RBPathGetBoundingRect();
        }

        else
        {

          v124 = MEMORY[0x193AC3640](v123 + 24);
        }

        v162 = v124;
        v166 = v125;
        v146 = v127;
        v153 = v126;
        goto LABEL_111;
      }

      v133 = *(v73.i64[0] + 24);
      if (v133)
      {
        v134 = v133;

        v198 = CGPathGetPathBoundingBox(v134);
        v162 = v198.origin.x;
        v166 = v198.origin.y;
        v146 = v198.size.height;
        v153 = v198.size.width;

LABEL_111:
        outlined destroy of Path(a1);
        *v75.i64 = v153;
        *v73.i64 = v162;
        *&v75.i64[1] = v146;
        *&v73.i64[1] = v166;
        goto LABEL_69;
      }

      goto LABEL_114;
    }

    if (v74 == 6)
    {
      v73 = *MEMORY[0x1E695F050];
      v75 = *(MEMORY[0x1E695F050] + 16);
      goto LABEL_69;
    }

LABEL_115:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v75 = v149;
  v73 = v156;
LABEL_69:
  v151 = v75;
  v160 = v73;
  v108 = v73.i64[1];
  v109 = v75.i64[1];
  v110 = CGRectIsNull(*v73.i8);
  if (v110)
  {
    v111 = -1;
  }

  else
  {
    v111 = 0;
  }

  v112 = vdupq_n_s64(v111);
  v164 = vbicq_s8(v151, v112);
  v192 = v164;
  v159 = vbicq_s8(v160, v112);
  v191 = v159;
  if (v110)
  {
    v104 = 6;
  }

  else
  {
    v104 = 0;
  }

  v193 = v104;
  *v169 = 0uLL;
  *&v169[16] = 2143289344;
  BYTE8(v171) = 0;
  *&v186[0] = 256;
  memset(v186 + 8, 0, 33);
  v105 = &v191;
  v106 = v169;
  v107 = v186;
LABEL_76:
  GraphicsContext.draw(_:with:style:)(v105, v106, v107, v65);
  outlined consume of Path.Storage(v159.i64[0], v159.i64[1], v164.i64[0], v164.i64[1], v104);
LABEL_77:
}

void closure #1 in Material.Layer.fill(in:shape:bounds:)(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = *(a2 + 36);
  if (v8 != 1.0 && *(*a1 + 48) != v8)
  {
    GraphicsContext.copyOnWrite()();
    *(*a1 + 48) = v8;
  }

  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  outlined copy of GraphicsBlendMode(v9, v10);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v11 = static GraphicsBlendMode.normal;
  v12 = byte_1ED52F818;
  if (v10)
  {
    if (byte_1ED52F818)
    {
      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v9, 1);
      outlined consume of GraphicsBlendMode(v11, 1);
      goto LABEL_16;
    }

    swift_unknownObjectRetain();
  }

  else if ((byte_1ED52F818 & 1) == 0)
  {
    outlined consume of GraphicsBlendMode(v9, 0);
    outlined consume of GraphicsBlendMode(v11, 0);
    if (v9 == v11)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  outlined copy of GraphicsBlendMode(v11, v12);
  outlined consume of GraphicsBlendMode(v9, v10);
  outlined consume of GraphicsBlendMode(v11, v12);
  outlined consume of GraphicsBlendMode(v9, v10);
  if (v10)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (*(*a1 + 52) != v9)
  {
    GraphicsContext.copyOnWrite()();
    *(*a1 + 52) = v9;
  }

LABEL_16:
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 1;
  v16 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  if (*(a2 + 32) > 1u)
  {
    if (*(a2 + 32) == 2)
    {
      v29 = *(a2 + 8);
      type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>, &type metadata for PathSet.Element, MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      v31 = *a4;
      v32 = *(a4 + 16);
      *(v30 + 16) = xmmword_18DDA6EB0;
      *(v30 + 32) = v31;
      *(v30 + 48) = v32;
      *(v30 + 64) = *(a4 + 32);
      *(v30 + 72) = 0;
      *(v30 + 80) = 0;
      *(v30 + 84) = 0;
      outlined copy of Material.Layer.Storage(v16, v29, v17, v18, 2);

      outlined init with copy of Path(a4, &v75);
      v33.n128_u64[0] = 0;
      specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(v16, v30, 0, 0, a1, a3, v30, v33, 0.0);

      outlined consume of Material.Layer.Storage(v16, v29, v17, v18, 2);

      return;
    }

    goto LABEL_28;
  }

  v65 = *(a2 + 16);
  v66 = *(a2 + 8);
  if (!*(a2 + 32))
  {
    v19 = HIDWORD(v15);
    v63 = *a1;
    getter of boundingRect #1 in closure #1 in Material.Layer.fill(in:shape:bounds:)(v13, a3, a4);
    x = v91.origin.x;
    y = v91.origin.y;
    width = v91.size.width;
    height = v91.size.height;
    if (CGRectIsNull(v91))
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 6;
    }

    else
    {
      v28 = 0;
      v24 = *&x;
      v25 = *&y;
      v26 = *&width;
      v27 = *&height;
    }

    *&v89[0] = v24;
    *&v89[1] = v25;
    *&v89[2] = v26;
    *&v89[3] = v27;
    v90 = v28;
    *&v75 = v16;
    *(&v75 + 1) = __PAIR64__(v19, v66);
    LODWORD(v76) = v65;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v75);
    v72 = v82;
    v73 = v83;
    v74 = v84;
    v69 = v79;
    v70 = v80;
    *v71 = *v81;
    *&v71[16] = *&v81[16];
    *v67 = v75;
    *&v67[16] = v76;
    *&v67[32] = v77;
    v68 = v78;
    v85 = 256;
    v86 = 0u;
    v87 = 0u;
    v88 = 0;
    GraphicsContext.draw(_:with:style:)(v89, v67, &v85, v63);
    outlined consume of Path.Storage(v24, v25, v26, v27, v28);
LABEL_28:

    return;
  }

  v62 = HIDWORD(v16);
  v64 = HIDWORD(v15);
  v34 = *(v18 + 16);
  v61 = HIDWORD(v17);
  if (v34)
  {

    v35 = (v18 + (v34 << 7) - 96);
    for (i = v34 - 1; ; --i)
    {
      v37 = *v35;
      v38 = v35[1];
      v39 = v35[3];
      v77 = v35[2];
      v78 = v39;
      v75 = v37;
      v76 = v38;
      v40 = v35[4];
      v41 = v35[5];
      v42 = v35[6];
      *&v81[12] = *(v35 + 108);
      v80 = v41;
      *v81 = v42;
      v79 = v40;
      v43 = v35[5];
      v69 = v35[4];
      v70 = v43;
      *v71 = v35[6];
      *&v71[12] = *(v35 + 108);
      v44 = v35[1];
      *v67 = *v35;
      *&v67[16] = v44;
      v45 = v35[3];
      *&v67[32] = v35[2];
      v68 = v45;
      outlined init with copy of GraphicsFilter(&v75, &v85);
      getter of boundingRect #1 in closure #1 in Material.Layer.fill(in:shape:bounds:)(v14, a3, a4);
      GraphicsContext.addFilter(_:in:)(v67, v46, v47, v48, v49);
      outlined destroy of GraphicsFilter(&v75);
      if (!i)
      {
        break;
      }

      v35 -= 8;
    }
  }

  else
  {
  }

  v50 = *a1;
  getter of boundingRect #1 in closure #1 in Material.Layer.fill(in:shape:bounds:)(v14, a3, a4);
  v51 = v92.origin.x;
  v52 = v92.origin.y;
  v53 = v92.size.width;
  v54 = v92.size.height;
  IsNull = CGRectIsNull(v92);
  outlined consume of Material.Layer.Storage(v16, v66, v65, v18, 1);
  if (IsNull)
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 6;
  }

  else
  {
    v60 = 0;
    v56 = *&v51;
    v57 = *&v52;
    v58 = *&v53;
    v59 = *&v54;
  }

  v85 = v56;
  *&v86 = v57;
  *(&v86 + 1) = v58;
  *&v87 = v59;
  BYTE8(v87) = v60;
  *&v75 = __PAIR64__(v66, v62);
  *(&v75 + 1) = __PAIR64__(v65, v64);
  LODWORD(v76) = v61;
  BYTE8(v79) = 0;
  *v67 = 256;
  memset(&v67[8], 0, 33);
  GraphicsContext.draw(_:with:style:)(&v85, &v75, v67, v50);
  outlined consume of Path.Storage(v56, v57, v58, v59, v60);
}

void getter of boundingRect #1 in closure #1 in Material.Layer.fill(in:shape:bounds:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (*(a1 + 48))
  {
    if ((a2[2] & 1) == 0)
    {
      v5 = *a2;
      v6 = a2[1];
      goto LABEL_9;
    }

    v3 = *a3;
    v4 = *(a3 + 32);
    if (v4 <= 2)
    {
      if (!*(a3 + 32) || v4 == 1)
      {
        v25 = a3[1];
        v28 = *a3;
LABEL_10:
        v7 = a1;
        swift_beginAccess();
        *(v7 + 16) = v28;
        *(v7 + 32) = v25;
        *(v7 + 48) = 0;
        return;
      }

      v5 = *(v3 + 16);
      v6 = *(*a3 + 32);
LABEL_9:
      v25 = v6;
      v28 = v5;
      goto LABEL_10;
    }

    if (v4 == 5)
    {
      v8 = *a3;
      if (*(v3 + 16))
      {
        v10 = a1;
        if (*(v3 + 16) == 1)
        {

          RBPathGetBoundingRect();
        }

        else
        {

          v11 = MEMORY[0x193AC3640](v8 + 24);
        }

        v27 = v13;
        v30 = v11;
        v22 = v14;
        v24 = v12;
        outlined destroy of Path(a3);
        *&v20 = v27;
        *(&v20 + 1) = v22;
        v25 = v20;
        *&v20 = v30;
        *(&v20 + 1) = v24;
        v28 = v20;
        a1 = v10;
        goto LABEL_10;
      }

      v15 = *(v3 + 24);
      if (v15)
      {
        v17 = a1;
        v18 = v15;

        PathBoundingBox = CGPathGetPathBoundingBox(v18);
        width = PathBoundingBox.size.width;
        x = PathBoundingBox.origin.x;
        height = PathBoundingBox.size.height;
        y = PathBoundingBox.origin.y;

        outlined destroy of Path(a3);
        *&v19 = width;
        *(&v19 + 1) = height;
        v25 = v19;
        *&v19 = x;
        *(&v19 + 1) = y;
        v28 = v19;
        a1 = v17;
        goto LABEL_10;
      }

      __break(1u);
    }

    else if (v4 == 6)
    {
      v5 = *MEMORY[0x1E695F050];
      v6 = *(MEMORY[0x1E695F050] + 16);
      goto LABEL_9;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized GraphicsContext.drawMaterialEffects(_:in:body:)(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, _OWORD *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = a3;
  v11 = a2;
  v64 = *a4;
  v13 = *(a4 + 16);
  v79 = a2;
  v14 = *(a1 + 16);
  if (v14)
  {

    v19 = (a1 + 44);
    v63 = a5;
    do
    {
      v23 = *(v19 - 12);
      v24 = *v19;
      switch(v24)
      {
        case 10:
          v20 = v23[6];
          v73 = v23[5];
          v74 = v20;
          *v75 = v23[7];
          *&v75[12] = *(v23 + 124);
          v21 = v23[2];
          v69 = v23[1];
          v70 = v21;
          v22 = v23[4];
          v71 = v23[3];
          v72 = v22;
          GraphicsContext.addFilter(_:in:)(&v69, a6, a7, a8, a9);
          break;
        case 5:
          v26 = *(v19 - 1);
          if ((v26 & 1) == 0)
          {
            v27 = v79;
            if (*(v79 + 52) != v23)
            {
              outlined copy of GraphicsBlendMode(*(v19 - 12), 0);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v28 = v27;
              }

              else
              {
                v33 = RBDrawingStateInit();
                type metadata accessor for GraphicsContext.Storage();
                v28 = swift_allocObject();
                *(v28 + 32) = xmmword_18DD85500;
                *(v28 + 48) = 1065353216;
                *(v28 + 56) = 0x7FF8000000000000;
                v34 = *(v27 + 16);
                v35 = *(v34 + 64);
                v60 = v33;
                if (v35 == RBDrawingStateGetDefaultColorSpace())
                {
                  *(v28 + 16) = v34;
                }

                else
                {
                  v46 = RBDrawingStateGetDisplayList();
                  v47 = *(v27 + 32);
                  v48 = *(v27 + 40);
                  v49 = v47;
                  v57 = v46;
                  v59 = v48;
                  if (v47 == 1)
                  {
                    v49 = *(v34 + 48);
                    v59 = *(v34 + 56);
                  }

                  type metadata accessor for GraphicsContext.Storage.Shared();
                  v50 = swift_allocObject();
                  *(v50 + 24) = 0;
                  *(v50 + 32) = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
                  *(v50 + 40) = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
                  *(v50 + 72) = 0;
                  _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(&v69);
                  v51 = v77;
                  *(v50 + 208) = v76;
                  *(v50 + 224) = v51;
                  *(v50 + 240) = v78;
                  v52 = v74;
                  *(v50 + 144) = v73;
                  *(v50 + 160) = v52;
                  v53 = *&v75[16];
                  *(v50 + 176) = *v75;
                  *(v50 + 192) = v53;
                  v54 = v70;
                  *(v50 + 80) = v69;
                  *(v50 + 96) = v54;
                  v55 = v72;
                  *(v50 + 112) = v71;
                  *(v50 + 128) = v55;
                  *(v50 + 248) = 2;
                  *(v50 + 264) = 0;
                  *(v50 + 272) = 0;
                  *(v50 + 256) = 0;
                  *(v50 + 16) = v57;
                  *(v50 + 48) = v49;
                  *(v50 + 56) = v59;
                  *(v50 + 64) = [v57 defaultColorSpace];
                  *(v28 + 16) = v50;
                  a5 = v63;
                }

                *(v28 + 24) = v60;
                *(v28 + 64) = 1;
                *(v28 + 48) = *(v27 + 48);
                *(v28 + 52) = *(v27 + 52);

                v79 = v28;
              }

              *(v28 + 52) = v23;
              outlined consume of DisplayList.Effect(v23, v26, 5);
            }
          }

          break;
        case 4:
          v25 = v79;
          if (*(v79 + 48) != *&v23)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              *(v25 + 48) = v23;
            }

            else
            {
              v29 = RBDrawingStateInit();
              type metadata accessor for GraphicsContext.Storage();
              v30 = swift_allocObject();
              *(v30 + 32) = xmmword_18DD85500;
              *(v30 + 48) = 1065353216;
              *(v30 + 56) = 0x7FF8000000000000;
              v31 = *(v25 + 16);
              v32 = *(v31 + 64);
              if (v32 == RBDrawingStateGetDefaultColorSpace())
              {
                *(v30 + 16) = v31;
              }

              else
              {
                v36 = RBDrawingStateGetDisplayList();
                v38 = *(v25 + 32);
                v37 = *(v25 + 40);
                v39 = v38;
                v58 = v36;
                v61 = v37;
                if (v38 == 1)
                {
                  v39 = *(v31 + 48);
                  v61 = *(v31 + 56);
                }

                type metadata accessor for GraphicsContext.Storage.Shared();
                v40 = swift_allocObject();
                *(v40 + 24) = 0;
                *(v40 + 32) = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
                *(v40 + 40) = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
                *(v40 + 72) = 0;
                _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(&v69);
                v41 = v77;
                *(v40 + 208) = v76;
                *(v40 + 224) = v41;
                *(v40 + 240) = v78;
                v42 = v74;
                *(v40 + 144) = v73;
                *(v40 + 160) = v42;
                v43 = *&v75[16];
                *(v40 + 176) = *v75;
                *(v40 + 192) = v43;
                v44 = v70;
                *(v40 + 80) = v69;
                *(v40 + 96) = v44;
                v45 = v72;
                *(v40 + 112) = v71;
                *(v40 + 128) = v45;
                *(v40 + 248) = 2;
                *(v40 + 264) = 0;
                *(v40 + 272) = 0;
                *(v40 + 256) = 0;
                *(v40 + 16) = v58;
                *(v40 + 48) = v39;
                *(v40 + 56) = v61;
                *(v40 + 64) = [v58 defaultColorSpace];
                *(v30 + 16) = v40;
                a5 = v63;
              }

              *(v30 + 24) = v29;
              *(v30 + 64) = 1;
              *(v30 + 48) = *(v25 + 48);
              *(v30 + 52) = *(v25 + 52);

              v79 = v30;
              *(v30 + 48) = v23;
            }
          }

          break;
      }

      v19 += 16;
      --v14;
    }

    while (v14);
    v11 = v79;
    v10 = a3;
  }

  else
  {
  }

  v69 = v64;
  LODWORD(v70) = v13;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v69);
  v67[8] = v76;
  v67[9] = v77;
  v68 = v78;
  v67[4] = v73;
  v67[5] = v74;
  v67[6] = *v75;
  v67[7] = *&v75[16];
  v67[0] = v69;
  v67[1] = v70;
  v67[2] = v71;
  v67[3] = v72;
  v56 = a5[1];
  v65 = *a5;
  v66[0] = v56;
  *(v66 + 9) = *(a5 + 25);
  GraphicsContext.draw(_:with:style:)(v10, v67, &v65, v11);
}

uint64_t initializeWithCopy for _ShapeStyle_RenderedShape(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v20 = *(a2 + 64);
  v21 = *(a2 + 72);
  v22 = *(a2 + 80);
  v23 = *(a2 + 88);
  v24 = *(a2 + 96);
  v25 = *(a2 + 104);
  outlined copy of _ShapeStyle_RenderedShape.Shape(*a2, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22, v23, v24, v25);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v20;
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  *(a1 + 88) = v23;
  *(a1 + 96) = v24;
  *(a1 + 104) = v25;
  *(a1 + 108) = *(a2 + 108);
  v12 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v12;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 216);
  v17 = *(a2 + 224);

  outlined copy of DisplayList.Item.Value(v14, v15, v16, v17);
  *(a1 + 200) = v14;
  *(a1 + 208) = v15;
  *(a1 + 216) = v16;
  *(a1 + 224) = v17;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  v18 = *(a2 + 248);
  LOBYTE(v15) = *(a2 + 256);
  outlined copy of GraphicsBlendMode(v18, v15);
  *(a1 + 248) = v18;
  *(a1 + 256) = v15;
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

uint64_t assignWithCopy for _ShapeStyle_RenderedShape(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v36 = *(a2 + 64);
  v37 = *(a2 + 72);
  v38 = *(a2 + 80);
  v39 = *(a2 + 88);
  v40 = *(a2 + 96);
  v41 = *(a2 + 104);
  outlined copy of _ShapeStyle_RenderedShape.Shape(*a2, v5, v6, v7, v8, v9, v10, v11, v36, v37, v38, v39, v40, v41);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v36;
  *(a1 + 72) = v37;
  *(a1 + 80) = v38;
  *(a1 + 88) = v39;
  *(a1 + 96) = v40;
  *(a1 + 104) = v41;
  outlined consume of _ShapeStyle_RenderedShape.Shape(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v24 = *(a2 + 200);
  v25 = *(a2 + 208);
  v26 = *(a2 + 216);
  v27 = *(a2 + 224);
  outlined copy of DisplayList.Item.Value(v24, v25, v26, v27);
  v28 = *(a1 + 200);
  v29 = *(a1 + 208);
  v30 = *(a1 + 216);
  v31 = *(a1 + 224);
  *(a1 + 200) = v24;
  *(a1 + 208) = v25;
  *(a1 + 216) = v26;
  *(a1 + 224) = v27;
  outlined consume of DisplayList.Item.Value(v28, v29, v30, v31);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  v32 = *(a2 + 248);
  LOBYTE(v25) = *(a2 + 256);
  outlined copy of GraphicsBlendMode(v32, v25);
  v33 = *(a1 + 248);
  v34 = *(a1 + 256);
  *(a1 + 248) = v32;
  *(a1 + 256) = v25;
  outlined consume of GraphicsBlendMode(v33, v34);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_RenderedShape(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  v5 = *(a2 + 104);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v18;
  v19 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v19;
  v20 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v20;
  *(a1 + 96) = v4;
  *(a1 + 104) = v5;
  outlined consume of _ShapeStyle_RenderedShape.Shape(v6, v7, v8, v9, v10, v11, v12, v13, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17);
  *(a1 + 108) = *(a2 + 108);
  v21 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v21;
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  v22 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v22;
  v23 = *(a2 + 224);
  v24 = *(a1 + 200);
  v25 = *(a1 + 208);
  v26 = *(a1 + 216);
  v27 = *(a1 + 224);
  v28 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v28;
  *(a1 + 224) = v23;
  outlined consume of DisplayList.Item.Value(v24, v25, v26, v27);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  v29 = *(a2 + 256);
  v30 = *(a1 + 248);
  v31 = *(a1 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = v29;
  outlined consume of GraphicsBlendMode(v30, v31);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_RenderedShape(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 265))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = (8 * *(a1 + 104)) & 0x7E00000 | (32 * *(a1 + 104)) & 0x1FC000 | (*(a1 + 104) >> 26 << 27) | *(a1 + 66) & 0x3FFF;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double storeEnumTagSinglePayload for _ShapeStyle_RenderedShape(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 264) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 265) = 1;
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
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = (-a2 >> 2) << 16;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = ((v4 >> 2) >> 5) & 0xFE00 | ((v4 >> 2) >> 3) & 0xFC0000 | ((v4 >> 2) >> 27 << 26);
      return result;
    }

    *(a1 + 265) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_RenderedShape.Shape(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v28 = *(a2 + 96);
  v29 = *(a2 + 104);
  outlined copy of _ShapeStyle_RenderedShape.Shape(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v25;
  *(a1 + 80) = v26;
  *(a1 + 88) = v27;
  *(a1 + 96) = v28;
  *(a1 + 104) = v29;
  outlined consume of _ShapeStyle_RenderedShape.Shape(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_RenderedShape.Shape(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  *(a1 + 96) = v3;
  *(a1 + 104) = v4;
  outlined consume of _ShapeStyle_RenderedShape.Shape(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_RenderedShape.Shape(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 108))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = (8 * *(a1 + 104)) & 0x7E00000 | (32 * *(a1 + 104)) & 0x1FC000 | (*(a1 + 104) >> 26 << 27) | *(a1 + 66) & 0x3FFF;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double storeEnumTagSinglePayload for _ShapeStyle_RenderedShape.Shape(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 108) = 1;
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
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = (-a2 >> 2) << 16;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = ((v4 >> 2) >> 5) & 0xFE00 | ((v4 >> 2) >> 3) & 0xFC0000 | ((v4 >> 2) >> 27 << 26);
      return result;
    }

    *(a1 + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for _ShapeStyle_RenderedShape.Shape(_DWORD *a1)
{
  v1 = a1[26] >> 29;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_RenderedShape.Shape(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 104) & 0x30301FF | (a2 << 29);
    *(result + 64) &= 0xFFFFFFFFC000FFFFLL;
    *(result + 104) = v2;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = -1610612736;
  }

  return result;
}

uint64_t initializeWithCopy for _ShapeStyle_RenderedLayers(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[9];
  v12 = a2[8];
  v13 = *(a2 + 20);

  outlined copy of _ShapeStyle_RenderedLayers.Layers(v3, v4, v5, v6, v7, v8, v9, v12, v10);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v12;
  *(a1 + 72) = v10;
  *(a1 + 80) = v13;
  return a1;
}

uint64_t *assignWithCopy for _ShapeStyle_RenderedLayers(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  *a1 = *a2;

  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v22 = v2[9];
  LODWORD(v2) = *(v2 + 20);
  outlined copy of _ShapeStyle_RenderedLayers.Layers(v4, v5, v6, v7, v8, v9, v10, v11, v22);
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  v18 = a1[7];
  v19 = a1[8];
  v20 = a1[9];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v22;
  *(a1 + 20) = v2;
  outlined consume of _ShapeStyle_RenderedLayers.Layers(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  return a1;
}

uint64_t *assignWithTake for _ShapeStyle_RenderedLayers(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[9];
  v5 = *(a2 + 20);
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  v14 = a1[9];
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 7) = *(a2 + 7);
  a1[9] = v4;
  *(a1 + 20) = v5;
  outlined consume of _ShapeStyle_RenderedLayers.Layers(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_RenderedLayers(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 84))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 56) >> 37) & 0x7FFFFFF | (BYTE2(*(a1 + 72)) << 27);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for _ShapeStyle_RenderedLayers(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 80) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 84) = 1;
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
      result = 0.0;
      *(a1 + 40) = 0u;
      v4 = -a2;
      *(a1 + 24) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 56) = v4 << 37;
      *(a1 + 64) = 0;
      *(a1 + 72) = (v4 >> 11) & 0x1F0000;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 84) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _ShapeStyle_LayerID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of _ShapeStyle_LayerID(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for _ShapeStyle_LayerID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of _ShapeStyle_LayerID(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of _ShapeStyle_LayerID(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_LayerID(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of _ShapeStyle_LayerID(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_LayerID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_LayerID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _ShapeStyle_LayerID(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_LayerID(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t initializeWithCopy for _ShapeStyle_InterpolatorGroup.Layer(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of _ShapeStyle_LayerID(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 20);
  if (*(a2 + 136))
  {
    v26 = *(a2 + 136);
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    v11 = *(a2 + 56);
    v12 = *(a2 + 64);
    v13 = *(a2 + 72);
    v14 = *(a2 + 80);
    v21 = *(a2 + 88);
    v22 = *(a2 + 96);
    v24 = *(a2 + 108);
    v25 = *(a2 + 104);
    v23 = *(a2 + 109);
    outlined copy of _ShapeStyle_Pack.Fill(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22, v25 | (v24 << 32), v23);
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v11;
    *(a1 + 64) = v12;
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v21;
    *(a1 + 96) = v22;
    *(a1 + 108) = v24;
    *(a1 + 104) = v25;
    *(a1 + 109) = v23;
    *(a1 + 112) = *(a2 + 112);
    v15 = *(a2 + 128);
    if (v15 == 255)
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
    }

    else
    {
      v16 = *(a2 + 120);
      v17 = v15 & 1;
      outlined copy of GraphicsBlendMode(v16, v15 & 1);
      *(a1 + 120) = v16;
      *(a1 + 128) = v17;
    }

    *(a1 + 136) = v26;
  }

  else
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  v18 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v18;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  v19 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v19;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 227) = *(a2 + 227);

  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for _ShapeStyle_InterpolatorGroup.Layer(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of _ShapeStyle_LayerID(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  outlined consume of _ShapeStyle_LayerID(v7, v8, v9);
  *(a1 + 20) = *(a2 + 20);
  v10 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if (v10)
    {
      v66 = *(a2 + 32);
      v68 = *(a2 + 24);
      v11 = *(a2 + 40);
      v65 = *(a2 + 48);
      v12 = *(a2 + 56);
      v13 = *(a2 + 64);
      v14 = *(a2 + 72);
      v15 = *(a2 + 80);
      v70 = *(a2 + 88);
      v72 = *(a2 + 96);
      v74 = *(a2 + 108);
      v16 = *(a2 + 104);
      v17 = *(a2 + 109);
      outlined copy of _ShapeStyle_Pack.Fill(v68, v66, v11, v65, v12, v13, v14, v15, v70, v72, v16 | (v74 << 32), v17);
      v18 = *(a1 + 24);
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      v25 = *(a1 + 80);
      v26 = *(a1 + 88);
      v27 = *(a1 + 96);
      v28 = *(a1 + 104) | (*(a1 + 108) << 32);
      v29 = *(a1 + 109);
      *(a1 + 24) = v68;
      *(a1 + 32) = v66;
      *(a1 + 40) = v11;
      *(a1 + 48) = v65;
      *(a1 + 56) = v12;
      *(a1 + 64) = v13;
      *(a1 + 72) = v14;
      *(a1 + 80) = v15;
      *(a1 + 88) = v70;
      *(a1 + 96) = v72;
      *(a1 + 104) = v16;
      *(a1 + 108) = v74;
      *(a1 + 109) = v17;
      outlined consume of _ShapeStyle_Pack.Fill(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      *(a1 + 112) = *(a2 + 112);
      v30 = *(a2 + 128);
      if (*(a1 + 128) == 255)
      {
        if (v30 == 255)
        {
          v62 = *(a2 + 120);
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 120) = v62;
        }

        else
        {
          v52 = *(a2 + 120);
          v53 = v30 & 1;
          outlined copy of GraphicsBlendMode(v52, v30 & 1);
          *(a1 + 120) = v52;
          *(a1 + 128) = v53;
        }
      }

      else if (v30 == 255)
      {
        outlined destroy of GraphicsBlendMode(a1 + 120);
        v60 = *(a2 + 128);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 128) = v60;
      }

      else
      {
        v31 = *(a2 + 120);
        v32 = v30 & 1;
        outlined copy of GraphicsBlendMode(v31, v30 & 1);
        v33 = *(a1 + 120);
        v34 = *(a1 + 128);
        *(a1 + 120) = v31;
        *(a1 + 128) = v32;
        outlined consume of GraphicsBlendMode(v33, v34);
      }

      *(a1 + 136) = *(a2 + 136);
    }

    else
    {
      outlined destroy of _ShapeStyle_Pack.Style(a1 + 24);
      v46 = *(a2 + 40);
      v47 = *(a2 + 56);
      v48 = *(a2 + 72);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 72) = v48;
      *(a1 + 56) = v47;
      *(a1 + 40) = v46;
      v49 = *(a2 + 104);
      v50 = *(a2 + 120);
      v51 = *(a2 + 136);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 136) = v51;
      *(a1 + 120) = v50;
      *(a1 + 104) = v49;
    }
  }

  else if (v10)
  {
    v35 = *(a2 + 24);
    v36 = *(a2 + 32);
    v38 = *(a2 + 40);
    v37 = *(a2 + 48);
    v39 = *(a2 + 56);
    v40 = *(a2 + 64);
    v42 = *(a2 + 72);
    v41 = *(a2 + 80);
    v67 = *(a2 + 88);
    v69 = *(a2 + 96);
    v73 = *(a2 + 108);
    v75 = *(a2 + 104);
    v71 = *(a2 + 109);
    outlined copy of _ShapeStyle_Pack.Fill(v35, v36, v38, v37, v39, v40, v42, v41, v67, v69, v75 | (v73 << 32), v71);
    *(a1 + 24) = v35;
    *(a1 + 32) = v36;
    *(a1 + 40) = v38;
    *(a1 + 48) = v37;
    *(a1 + 56) = v39;
    *(a1 + 64) = v40;
    *(a1 + 72) = v42;
    *(a1 + 80) = v41;
    *(a1 + 88) = v67;
    *(a1 + 96) = v69;
    *(a1 + 108) = v73;
    *(a1 + 104) = v75;
    *(a1 + 109) = v71;
    *(a1 + 112) = *(a2 + 112);
    v43 = *(a2 + 128);
    if (v43 == 255)
    {
      v61 = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 120) = v61;
    }

    else
    {
      v44 = *(a2 + 120);
      v45 = v43 & 1;
      outlined copy of GraphicsBlendMode(v44, v43 & 1);
      *(a1 + 120) = v44;
      *(a1 + 128) = v45;
    }

    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    v54 = *(a2 + 24);
    v55 = *(a2 + 40);
    v56 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v56;
    *(a1 + 40) = v55;
    *(a1 + 24) = v54;
    v57 = *(a2 + 88);
    v58 = *(a2 + 104);
    v59 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v59;
    *(a1 + 104) = v58;
    *(a1 + 88) = v57;
  }

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 184) = *(a2 + 184);
  v63 = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 192) = v63;
  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 228) = *(a2 + 228);
  return a1;
}

__n128 __swift_memcpy229_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 221) = *(a2 + 221);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t assignWithTake for _ShapeStyle_InterpolatorGroup.Layer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  v7 = *(a1 + 16);
  *(a1 + 16) = v4;
  outlined consume of _ShapeStyle_LayerID(v5, v6, v7);
  *(a1 + 20) = *(a2 + 20);
  if (*(a1 + 136))
  {
    v8 = *(a2 + 136);
    if (v8)
    {
      v9 = *(a2 + 108);
      v10 = *(a2 + 104);
      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v17 = *(a1 + 72);
      v18 = *(a1 + 80);
      v19 = *(a1 + 88);
      v20 = *(a1 + 96);
      v21 = *(a1 + 104) | (*(a1 + 108) << 32);
      v22 = *(a1 + 109);
      v23 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v23;
      v24 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v24;
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = v10;
      *(a1 + 108) = v9;
      outlined consume of _ShapeStyle_Pack.Fill(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      *(a1 + 112) = *(a2 + 112);
      v25 = *(a1 + 128);
      if (v25 != 255)
      {
        v26 = *(a2 + 128);
        if (v26 != 255)
        {
          v27 = *(a1 + 120);
          *(a1 + 120) = *(a2 + 120);
          *(a1 + 128) = v26 & 1;
          outlined consume of GraphicsBlendMode(v27, v25 & 1);
LABEL_10:
          *(a1 + 136) = v8;

          goto LABEL_11;
        }

        outlined destroy of GraphicsBlendMode(a1 + 120);
      }

      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_10;
    }

    outlined destroy of _ShapeStyle_Pack.Style(a1 + 24);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
LABEL_11:
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  swift_unknownObjectRelease();
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 228) = *(a2 + 228);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_InterpolatorGroup.Layer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 229))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_InterpolatorGroup.Layer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 228) = 0;
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 229) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 229) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_RenderedLayers.Layers(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v22 = *(a2 + 72);
  outlined copy of _ShapeStyle_RenderedLayers.Layers(*a2, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v22;
  outlined consume of _ShapeStyle_RenderedLayers.Layers(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_RenderedLayers.Layers(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v14;
  v15 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v15;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  outlined consume of _ShapeStyle_RenderedLayers.Layers(v5, v7, v6, v8, v9, v10, v11, v12, v13);
  return a1;
}

double storeEnumTagSinglePayload for _ShapeStyle_RenderedLayers.Layers(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 76) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      v4 = -a2;
      *a1 = 0u;
      *(a1 + 48) = v4 << 37;
      *(a1 + 56) = 0;
      *(a1 + 64) = (v4 >> 11) & 0x1F0000;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for _ShapeStyle_RenderedLayers.Layers(_DWORD *a1)
{
  v1 = a1[16];
  if (((v1 >> 28) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (v1 >> 28) & 3;
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_RenderedLayers.Layers(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 64) & 0xFFFFFFFFC000FFFFLL | (a2 << 28);
    *(result + 48) &= 0x1FFFFFFFFFuLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = 0x20000000;
    *(result + 72) = 0;
  }

  return result;
}

void lazy protocol witness table accessor for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds()
{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_RenderedShape.LayerNeeds, &unk_1F00720D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_RenderedShape.LayerNeeds, &unk_1F00720D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_RenderedShape.LayerNeeds, &unk_1F00720D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeStyle_RenderedShape.LayerNeeds, &unk_1F00720D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds);
  }
}

uint64_t assignWithCopy for CompositedItemAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  outlined copy of GraphicsBlendMode(v4, v5);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  outlined consume of GraphicsBlendMode(v6, v7);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  return a1;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for CompositedItemAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  outlined consume of GraphicsBlendMode(v5, v6);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  return a1;
}

uint64_t getEnumTagSinglePayload for CompositedItemAccumulator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CompositedItemAccumulator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider()
{
  if (!lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.CustomKeyColorProvider, &type metadata for Color.CustomKeyColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.CustomKeyColorProvider, &type metadata for Color.CustomKeyColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.CustomKeyColorProvider, &type metadata for Color.CustomKeyColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider);
  }
}

void lazy protocol witness table accessor for type Color.KeyColorProvider and conformance Color.KeyColorProvider()
{
  if (!lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.KeyColorProvider, &type metadata for Color.KeyColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.KeyColorProvider, &type metadata for Color.KeyColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.KeyColorProvider, &type metadata for Color.KeyColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider);
  }
}

void specialized ShapeStyledLeafView.contains(points:size:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  _ShapeSet.Wrapper.pathSet(in:)(&v16, a4, a5);
  v10 = 0;
  if (a1 && a2)
  {
    v11 = 0;
    v12 = 16 * a2;
    v13 = a1 + 8;
    do
    {
      v17.origin.x = 0.0;
      v17.origin.y = 0.0;
      v17.size.width = a4;
      v17.size.height = a5;
      v14 = CGRectContainsPoint(v17, *(v13 - 8));
      if (v11 < 0x41)
      {
        if (v11 == 64)
        {
          v15 = 0;
          if (!v14)
          {
LABEL_11:
            v10 &= ~v15;
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 1 << v11;
          if (!v14)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v15 = 0;
        if (!v14)
        {
          goto LABEL_11;
        }
      }

      v10 |= v15;
LABEL_5:
      v13 += 16;
      ++v11;
      v12 -= 16;
    }

    while (v12);
  }

  *a3 = v10;
}

void specialized ShapeStyledLeafView.contains(points:size:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>)
{
  if (a3)
  {
    v11 = *(*a3 + 120);

    v13 = v11(v12);
    v17 = CGRect.outset(by:)(v13, v14, v15, v16, 0.0, 0.0, a5, a6);
    v19 = v18;
    a5 = v20;
    a6 = v21;

    v22 = 0;
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v17 = 0.0;
    v19 = 0.0;
    v22 = 0;
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  if (a2)
  {
    v23 = 0;
    v24 = 16 * a2;
    v25 = a1 + 8;
    do
    {
      v28.origin.x = v17;
      v28.origin.y = v19;
      v28.size.width = a5;
      v28.size.height = a6;
      v26 = CGRectContainsPoint(v28, *(v25 - 8));
      if (v23 < 0x41)
      {
        if (v23 == 64)
        {
          v27 = 0;
          if (!v26)
          {
LABEL_14:
            v22 &= ~v27;
            goto LABEL_8;
          }
        }

        else
        {
          v27 = 1 << v23;
          if (!v26)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v27 = 0;
        if (!v26)
        {
          goto LABEL_14;
        }
      }

      v22 |= v27;
LABEL_8:
      v25 += 16;
      ++v23;
      v24 -= 16;
    }

    while (v24);
  }

LABEL_17:
  *a4 = v22;
}

uint64_t specialized ShapeStyledLeafView.contains(points:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = a5;
  v7 = a4;
  v9 = result;
  v11 = *(v5 + 19);
  if (*(v5 + 161) == 3 || v11 == 0)
  {
    *&v39[12] = *(v5 + 92);
    v13 = v5[5];
    v38 = v5[4];
    *v39 = v13;
    v14 = v5[1];
    v34 = *v5;
    v35 = v14;
    v15 = v5[3];
    v36 = v5[2];
    v37 = v15;
    v16 = 0.0;
    v17 = 0.0;
    if (v39[24] == 2)
    {
      v7 = 0.0;
      if (v11)
      {
        v16 = v11[6];
        v17 = v11[7];
      }

      if (*&v35 != 0.0)
      {
        v31 = *(&v35 + 1);
        if (BYTE8(v36) <= 3u)
        {
          v32 = *&v36;
        }

        else
        {
          v32 = *(&v35 + 1);
        }

        if (BYTE8(v36) > 3u)
        {
          v31 = *&v36;
        }

        v7 = 1.0 / *&v35 * v31;
        v6 = 1.0 / *&v35 * v32;
        if (!result)
        {
          goto LABEL_36;
        }

LABEL_12:
        if (a2)
        {
          outlined init with copy of GraphicsImage(&v34, v33);
          v18 = 0;
          v19 = 0;
          v20 = 16 * a2;
          v21 = v9 + 8;
          while (1)
          {
            v40.origin.x = v16;
            v40.origin.y = v17;
            v40.size.width = v7;
            v40.size.height = v6;
            v22 = CGRectContainsPoint(v40, *(v21 - 8));
            if (v19 < 0x41)
            {
              if (v19 == 64)
              {
                v23 = 0;
                if (!v22)
                {
LABEL_21:
                  v18 &= ~v23;
                  goto LABEL_15;
                }
              }

              else
              {
                v23 = 1 << v19;
                if (!v22)
                {
                  goto LABEL_21;
                }
              }
            }

            else
            {
              v23 = 0;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

            v18 |= v23;
LABEL_15:
            v21 += 16;
            ++v19;
            v20 -= 16;
            if (!v20)
            {
              result = outlined destroy of GraphicsImage(&v34);
              *a3 = v18;
              return result;
            }
          }
        }

LABEL_36:
        *a3 = 0;
        return result;
      }

      v6 = 0.0;
    }

    if (!result)
    {
      goto LABEL_36;
    }

    goto LABEL_12;
  }

  v24 = *(v5 + 41);
  v25 = *(v5 + 168);
  v26 = v11[8] * (a4 / v11[4]);
  v27 = v11[9] * (a5 / v11[5]);
  v33[0] = *(v5 + 161);
  LOBYTE(v34) = v25;
  SymbolVariants.Shape.path(in:cornerRadius:)(v24 | (v25 << 32), &v34, 0.0, 0.0, v26, v27);
  if (!v9 || !a2)
  {
LABEL_35:
    result = outlined destroy of Path(&v34);
    goto LABEL_36;
  }

  v28 = 0;
  v29 = v9 + 8;
  v30 = 16 * a2 - 16;
  while (v28)
  {
    if (!v30)
    {
      goto LABEL_34;
    }

    v28 = 1;
LABEL_28:
    v29 += 16;
    v30 -= 16;
  }

  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = v26;
  v41.size.height = v27;
  v28 = CGRectContainsPoint(v41, *(v29 - 8));
  if (v30)
  {
    goto LABEL_28;
  }

  if (!v28)
  {
    goto LABEL_35;
  }

LABEL_34:
  Path.contains(points:eoFill:origin:)(v9, a2, a3, 0.0, 0.0);
  return outlined destroy of Path(&v34);
}

BOOL _s7SwiftUI19ShapeStyledLeafViewPAAE7isClear6stylesSbAA01_C10Style_PackV_tFAA01_C3SetV7WrapperV_Tt0B5Tm(uint64_t a1)
{
  v6 = a1;
  v5 = 0;
  v2 = _ShapeStyle_Pack.isClear(name:)(&v5);
  v3 = 0;
  if (v2)
  {
    v6 = a1;
    v5 = 1;
    return _ShapeStyle_Pack.isClear(name:)(&v5);
  }

  return v3;
}

BOOL specialized ShapeStyledResponderData.contentPath(size:)@<W0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>)
{
  v28 = a2;
  v27 = 0;
  if (_ShapeStyle_Pack.isClear(name:)(&v27) && (v28 = a2, v27 = 1, result = _ShapeStyle_Pack.isClear(name:)(&v27)))
  {
    v11 = 6;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
  }

  else
  {
    if (a1)
    {
      v16 = *(*a1 + 120);

      v18 = v16(v17);
      v22 = CGRect.outset(by:)(v18, v19, v20, v21, 0.0, 0.0, a4, a5);
      v24 = v23;
      a4 = v25;
      a5 = v26;
    }

    else
    {
      v22 = 0.0;
      v24 = 0.0;
    }

    v29.origin.x = v22;
    v29.origin.y = v24;
    v29.size.width = a4;
    v29.size.height = a5;
    result = CGRectIsNull(v29);
    if (result)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v22;
    }

    if (result)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v24;
    }

    if (result)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a4;
    }

    if (result)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = a5;
    }

    if (result)
    {
      v11 = 6;
    }

    else
    {
      v11 = 0;
    }
  }

  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v11;
  return result;
}

void specialized closure #1 in closure #1 in ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(void *__dst@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v16 = *(a3 + 16);
  if (v16)
  {
    if (v16 > a2)
    {
      __break(1u);
      return;
    }

    memcpy(__dst, (a3 + 32), 16 * v16);
  }

  v32[0] = __dst;
  v32[1] = a2;
  v17 = *(a4 + 48);
  v18 = *(a4 + 64);
  v19 = *(a4 + 80);
  v20 = *(a4 + 88);
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 2;
  v33 = a6;
  if (v17 || v19 != 0.0)
  {
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v20 != 0.0 && a2 != 0)
  {
LABEL_13:
    v25[0] = v17;
    v25[1] = v18;
    v26 = v19;
    v27 = v20;
    specialized ViewTransform.convertGlobalToSpace(_:_:)(&v28, v25, v32);
  }

LABEL_14:
  outlined destroy of CoordinateSpace(&v28);
  v22 = *a4;
  v23 = *(a4 + 8);
  *&v25[0] = a7;
  LOBYTE(v28) = 0;
  if (_ShapeStyle_Pack.isClear(name:)(&v28) && (*&v25[0] = a7, LOBYTE(v28) = 1, _ShapeStyle_Pack.isClear(name:)(&v28)))
  {
    v24 = 0;
  }

  else
  {
    specialized ShapeStyledLeafView.contains(points:size:)(__dst, a2, a5, v25, v22, v23);
    v24 = *&v25[0];
  }

  *a8 = v24;
  a8[1] = 0x3FF0000000000000;
  a8[2] = a9;
}

void specialized closure #1 in ContentResponderHelper.addContentPath(to:kind:in:observer:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 96);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      outlined init with copy of ContentPathObservers.Observer(v8, v14);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of ContentPathObservers.Observer(v14);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          return;
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v14[1] = a2;
  swift_unknownObjectWeakInit();
  a1 = *(a3 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 96) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(a3 + 96) = a1;
  }

  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, a1);
    *(a3 + 96) = a1;
  }

  a1[2] = v13 + 1;
  outlined init with take of ContentPathObservers.Observer(v14, &a1[2 * v13 + 4]);
}

uint64_t StyledTextResponder.__allocating_init(view:styles:inputs:)(int a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  StyledTextResponder.init(view:styles:inputs:)(a1, a2, a3);
  return v6;
}

Swift::Void __swiftcall StyledTextResponderFilter.updateValue()()
{
  v1 = *v0;
  StyledTextResponder.update()();
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for AnyGesture<()>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18DDAB4D0;
    *(v2 + 32) = v1;

    AGGraphSetOutputValue();
  }
}

double StyledTextResponder.view.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;

  return result;
}

double key path getter for StyledTextResponder.view : StyledTextResponder@<D0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  *a2 = *Value;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;

  return result;
}

double StyledTextResponder.view.setter(uint64_t *a1)
{
  AGGraphSetValue();

  return result;
}

void (*StyledTextResponder.view.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2CuLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 20) = *(v1 + 40);
  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v7 = *(Value + 16);
  *v4 = *Value;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  return StyledTextResponder.view.modify;
}

void StyledTextResponder.view.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v2[3] = **a1;
  v4 = *(v2 + 16);
  v2[4] = v3;
  *(v2 + 40) = v4;
  AGGraphSetValue();

  free(v2);
}

uint64_t (*StyledTextResponder.$view.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return StyledTextResponder.$view.modify;
}

double StyledTextResponder.styles.getter@<D0>(void *a1@<X8>)
{
  *a1 = *AGGraphGetValue();

  return result;
}

double StyledTextResponder.styles.setter(uint64_t *a1)
{
  AGGraphSetValue();

  return result;
}

double (*StyledTextResponder.styles.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = *(v1 + 44);
  *a1 = *AGGraphGetValue();

  return StyledTextResponder.styles.modify;
}

double StyledTextResponder.styles.modify(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  AGGraphSetValue();

  return result;
}

uint64_t (*StyledTextResponder.$styles.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 44);
  return StyledTextResponder.$styles.modify;
}

uint64_t StyledTextResponder.inputs.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v4 = *(v1 + 112);
  v10 = *(v1 + 96);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 128);
  v6 = *(v1 + 64);
  v9[0] = *(v1 + 48);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

uint64_t StyledTextResponder.helper.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v4 = *(v1 + 256);
  v21 = *(v1 + 240);
  v22 = v4;
  v5 = *(v1 + 160);
  v6 = *(v1 + 192);
  v17 = *(v1 + 176);
  v7 = v17;
  v18 = v6;
  v8 = *(v1 + 192);
  v9 = *(v1 + 224);
  v19 = *(v1 + 208);
  v10 = v19;
  v20 = v9;
  v11 = *(v1 + 160);
  v16[0] = *(v1 + 144);
  v12 = v16[0];
  v16[1] = v11;
  v13 = *(v1 + 256);
  *(a1 + 96) = v21;
  *(a1 + 112) = v13;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 272);
  *(a1 + 128) = *(v1 + 272);
  *a1 = v12;
  *(a1 + 16) = v5;
  return outlined init with copy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v16, &v15);
}

uint64_t StyledTextResponder.helper.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 256);
  v12[6] = *(v1 + 240);
  v12[7] = v3;
  v13 = *(v1 + 272);
  v4 = *(v1 + 192);
  v12[2] = *(v1 + 176);
  v12[3] = v4;
  v5 = *(v1 + 224);
  v12[4] = *(v1 + 208);
  v12[5] = v5;
  v6 = *(v1 + 160);
  v12[0] = *(v1 + 144);
  v12[1] = v6;
  v7 = *(a1 + 80);
  *(v1 + 208) = *(a1 + 64);
  *(v1 + 224) = v7;
  v8 = *(a1 + 112);
  *(v1 + 240) = *(a1 + 96);
  *(v1 + 256) = v8;
  *(v1 + 272) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v1 + 176) = *(a1 + 32);
  *(v1 + 192) = v9;
  v10 = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = v10;
  return outlined destroy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v12);
}

void *StyledTextResponder.childSubgraph.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
  v2 = v1;
  return v1;
}

void StyledTextResponder.childSubgraph.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 280);
  *(v1 + 280) = a1;
}

void *StyledTextResponder.childViewSubgraph.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 288);
  v2 = v1;
  return v1;
}

void StyledTextResponder.childViewSubgraph.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 288);
  *(v1 + 288) = a1;
}

uint64_t StyledTextResponder.gestureGraph.getter()
{
  if (*(v0 + 296))
  {
    v1 = *(v0 + 296);
  }

  else
  {
    type metadata accessor for GestureGraph();
    v2 = swift_allocObject();

    v1 = specialized GestureGraph.init(rootResponder:)(v3, v2);
    *(v0 + 296) = v1;
  }

  return v1;
}

double StyledTextResponder.gestureGraph.setter(uint64_t a1)
{
  *(v1 + 296) = a1;

  return result;
}

double (*StyledTextResponder.gestureGraph.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = StyledTextResponder.gestureGraph.getter();
  return StyledTextResponder.gestureGraph.modify;
}

double StyledTextResponder.gestureGraph.modify(uint64_t *a1)
{
  *(a1[1] + 296) = *a1;

  return result;
}

uint64_t StyledTextResponder.bindingBridge.getter()
{
  if (*(v0 + 304))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    v1 = closure #1 in StyledTextResponder.bindingBridge.getter(v0);
    *(v0 + 304) = v1;
    *(v0 + 312) = v2;
  }

  return v1;
}

double StyledTextResponder.bindingBridge.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = a2;

  return result;
}

uint64_t closure #1 in StyledTextResponder.bindingBridge.getter(uint64_t a1)
{
  v2 = *(a1 + 96);
  v12[2] = *(a1 + 80);
  v12[3] = v2;
  v12[4] = *(a1 + 112);
  v13 = *(a1 + 128);
  v3 = *(a1 + 64);
  v12[0] = *(a1 + 48);
  v12[1] = v3;
  outlined init with copy of _ViewInputs(v12, v11);
  v4 = *(StyledTextResponder.gestureGraph.getter() + 208);

  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA30EventBindingBridgeFactoryInputV_Tt2g5(*&v12[0]))
  {
    v6 = (*(v5 + 8))(v4, a1, &protocol witness table for StyledTextResponder);
    v8 = v7;

    outlined destroy of _ViewInputs(v12);
    v9 = *(a1 + 296);
    swift_beginAccess();
    *(v9 + 200) = v8;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double (*StyledTextResponder.bindingBridge.modify(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  *a1 = StyledTextResponder.bindingBridge.getter();
  a1[1] = v3;
  return StyledTextResponder.bindingBridge.modify;
}

double StyledTextResponder.bindingBridge.modify(uint64_t a1)
{
  *(*(a1 + 16) + 304) = *a1;

  return result;
}

double StyledTextResponder._gestureContainer.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t StyledTextResponder._gestureContainer.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 320) = a1;
  return swift_unknownObjectRelease();
}

void StyledTextResponder.gestureContainer.getter()
{
  if (AGSubgraphIsValid())
  {
    swift_beginAccess();
    v1 = *(v0 + 160);
    if (v1)
    {
      v2 = *(v1 + 216);
      if (v2)
      {
        v17[0] = 0;
        v3 = one-time initialization token for kitLink;
        v4 = v2;
        if (v3 != -1)
        {
          swift_once();
        }

        v5 = static NSAttributedStringKey.kitLink;
        v6 = [v4 length];
        v7 = swift_allocObject();
        *(v7 + 16) = v17;
        v8 = swift_allocObject();
        *(v8 + 16) = partial apply for closure #1 in NSAttributedString.hasLinkAttributes.getter;
        *(v8 + 24) = v7;
        *&v20 = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
        *(&v20 + 1) = v8;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v19 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
        *(&v19 + 1) = &block_descriptor_12;
        v9 = _Block_copy(&aBlock);

        [v4 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v9}];

        _Block_release(v9);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_15;
        }

        v11 = v17[0];

        if (v11 == 1)
        {
          swift_beginAccess();
          if (*(v0 + 320))
          {
LABEL_12:
            swift_unknownObjectRetain();
            return;
          }

          if (AGSubgraphIsValid())
          {
            v12 = *(v0 + 96);
            v20 = *(v0 + 80);
            v21 = v12;
            v22 = *(v0 + 112);
            v23 = *(v0 + 128);
            v13 = *(v0 + 64);
            aBlock = *(v0 + 48);
            v19 = v13;
            v14 = aBlock;
            outlined init with copy of _ViewInputs(&aBlock, v17);
            if (!_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28GestureContainerFactoryInputV_Tt2g5(v14))
            {
LABEL_16:
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
              return;
            }

            v16 = (*(v15 + 8))(v0, &protocol witness table for StyledTextResponder);
            outlined destroy of _ViewInputs(&aBlock);
            *(v0 + 320) = v16;
            swift_unknownObjectRelease();
            if (*(v0 + 320))
            {
              goto LABEL_12;
            }

LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }
      }
    }
  }
}

uint64_t StyledTextResponder.eventSources.getter()
{
  v0 = StyledTextResponder.bindingBridge.getter();
  v1 = (*(*v0 + 160))(v0);

  return v1;
}

uint64_t StyledTextResponder.isValid.getter()
{
  swift_beginAccess();
  if (*(v0 + 320))
  {
    return AGSubgraphIsValid();
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall StyledTextResponder.detachContainer()()
{
  swift_beginAccess();
  *(v0 + 320) = 0;
  swift_unknownObjectRelease();
}

void StyledTextResponder.features.getter(__int16 *a1@<X8>)
{
  if (!AGSubgraphIsValid())
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v3 = *(v1 + 160);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + 216);
  if (!v4)
  {
    goto LABEL_9;
  }

  v16 = 0;
  v5 = one-time initialization token for kitLink;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = static NSAttributedStringKey.kitLink;
  v8 = [v6 length];
  v9 = swift_allocObject();
  *(v9 + 16) = &v16;
  v10 = swift_allocObject();
  *(v10 + 16) = closure #1 in NSAttributedString.hasLinkAttributes.getterpartial apply;
  *(v10 + 24) = v9;
  v15[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v15[3] = &block_descriptor_15;
  v11 = _Block_copy(v15);

  [v6 enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{0, v11}];

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v13 = v16;

    if (v13)
    {
      v14 = 2;
LABEL_10:
      *a1 = v14;
      return;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  __break(1u);
}

SwiftUI::ViewResponder::HitTestPolicy __swiftcall StyledTextResponder.hitTestPolicy(options:)(SwiftUI::ViewResponder::ContainsPointsOptions options)
{
  v3 = v1;
  result = swift_beginAccess();
  *v3 = *(v2 + 160) == 0;
  return result;
}

void StyledTextResponder.containsGlobalPoints(_:cacheKey:options:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  swift_beginAccess();
  if (!*(v4 + 160))
  {
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = MEMORY[0x1E69E7CC0];
    return;
  }

  swift_beginAccess();
  v9 = *(v4 + 160);
  if (v9)
  {
    v11 = *(v4 + 168);
    v10 = *(v4 + 176);
    v12 = *(v4 + 184);
    v13 = *(v4 + 272);
    if (!v13 || (v14 = *(v4 + 248), (v14 & 0x100000000) != 0) || (a2 & 0x100000000) != 0 || v14 != a2)
    {
      v17 = *(a1 + 16);
      v13 = MEMORY[0x1E69E7CC0];
      if (v17)
      {
        v43 = v8;
        if (v17 >> 59)
        {
          goto LABEL_37;
        }

        v42 = v10;
        outlined copy of ShapeStyledResponderData<StyledTextContentView>?(v9, v11, v10, v12);
        if (16 * v17) < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
        {
          v41 = &v41;
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v20 = &v41 - v19;
          memcpy(&v41 - v19, (a1 + 32), 16 * v17);
          v48[0] = v20;
          v48[1] = v17;
          v21 = *(v4 + 192);
          v22 = *(v4 + 208);
          v23 = *(v4 + 224);
          v24 = *(v4 + 232);
          v44 = 1;
          v45 = 0u;
          v46 = 0u;
          v47 = 2;
          if (v21 || v23 != 0.0 || v24 != 0.0)
          {
            aBlock = v21;
            v50 = v22;
            v51 = *&v23;
            v52 = v24;
            specialized ViewTransform.convertGlobalToSpace(_:_:)(&v44, &aBlock, v48);
          }

          outlined destroy of CoordinateSpace(&v44);
          v25 = *(v4 + 144);
          v26 = *(v4 + 152);
          v27 = v4;
          *&aBlock = v12;
          LOBYTE(v44) = 0;
          if (_ShapeStyle_Pack.isClear(name:)(&v44) && (*&aBlock = v12, LOBYTE(v44) = 1, _ShapeStyle_Pack.isClear(name:)(&v44)))
          {
            v15 = 0;
            v28 = v42;
          }

          else
          {
            v28 = v42;
            specialized ShapeStyledLeafView.contains(points:size:)(v20, v17, v11, &aBlock, v25, v26);
            v15 = aBlock;
          }

          outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v9, v11, v28, v12);
          v16 = 1.0;
          v13 = MEMORY[0x1E69E7CC0];
          v4 = v27;
        }

        else
        {
          v40 = swift_slowAlloc();
          v41 = v4;
          specialized closure #1 in closure #1 in ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(v40, v17, a1, v4 + 144, v11, v42 & 1, v12, &aBlock, v13);
          MEMORY[0x193AC4820](v40, -1, -1);
          outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v9, v11, v42, v12);
          v16 = *(&aBlock + 1);
          v15 = aBlock;
          v13 = v50;
        }

        v8 = v43;
      }

      else
      {
        v15 = 0;
        v16 = 0.0;
      }

      *(v4 + 248) = a2 & 0x1FFFFFFFFLL;
      *(v4 + 256) = v15;
      *(v4 + 264) = v16;
      *(v4 + 272) = v13;
    }

    else
    {
      v15 = *(v4 + 256);
      v16 = *(v4 + 264);
    }
  }

  else
  {
    v15 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v16 = 0.0;
  }

  swift_endAccess();
  if (!AGSubgraphIsValid())
  {
    goto LABEL_33;
  }

  v29 = *(v4 + 160);
  if (!v29)
  {
    goto LABEL_33;
  }

  v30 = *(v29 + 216);
  if (!v30)
  {
    goto LABEL_33;
  }

  v43 = v8;
  LOBYTE(v44) = 0;
  v31 = one-time initialization token for kitLink;
  v32 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = static NSAttributedStringKey.kitLink;
  v34 = [v32 length];
  v35 = swift_allocObject();
  *(v35 + 16) = &v44;
  v36 = swift_allocObject();
  *(v36 + 16) = closure #1 in NSAttributedString.hasLinkAttributes.getterpartial apply;
  *(v36 + 24) = v35;
  v51 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v52 = *&v36;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v50 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  *(&v50 + 1) = &block_descriptor_26;
  v37 = _Block_copy(&aBlock);

  [v32 enumerateAttribute:v33 inRange:0 options:v34 usingBlock:{0, v37}];

  _Block_release(v37);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v39 = v44;

  if ((v39 & ((v43 & 2) == 0)) != 0)
  {
    v16 = 16.0;
  }

LABEL_33:
  *a4 = v15;
  a4[1] = v16;
  *(a4 + 2) = v13;
}

void StyledTextResponder.addContentPath(to:kind:in:observer:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();
  if (a4)
  {
    v9 = swift_unknownObjectRetain();
    specialized closure #1 in ContentResponderHelper.addContentPath(to:kind:in:observer:)(v9, a5, v5 + 144);
    swift_unknownObjectRelease();
  }

  v10 = *(v5 + 160);
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = *(v5 + 168);
  v12 = *(v5 + 176);
  v13 = *(v5 + 184);
  v14 = *(v5 + 144);
  v15 = *(v5 + 152);
  if (v8 == 1)
  {

    goto LABEL_6;
  }

  v28 = one-time initialization token for v3;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (dyld_program_sdk_at_least())
    {
      goto LABEL_22;
    }
  }

  else if (static Semantics.forced >= v29)
  {
LABEL_22:
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    goto LABEL_26;
  }

LABEL_6:
  v33 = v12;
  specialized ShapeStyledResponderData.contentPath(size:)(v11, v13, &v34, v14, v15);
  v16 = *&v34.origin.x;
  v17 = *&v34.origin.y;
  v18 = *&v34.size.width;
  v19 = *&v34.size.height;
  v20 = v35;
  v37 = v34;
  v38 = v35;
  if (v35 <= 2u)
  {
    if (v35 >= 2u)
    {
      IsNull = CGRectIsNull(*(*&v34.origin.x + 16));
      if (IsNull)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v21 = CGRectIsNull(v34);
      outlined consume of Path.Storage(v16, v17, v18, v19, v20);
      if (v21)
      {
LABEL_9:
        outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v10, v11, v33, v13);
        v23 = v16;
        v24 = v17;
        v25 = v18;
        v26 = v19;
        v27 = v20;
LABEL_27:
        outlined consume of Path.Storage(v23, v24, v25, v26, v27);
        goto LABEL_28;
      }
    }

LABEL_24:
    v30 = *(v5 + 208);
    v39 = *(v5 + 192);
    v40 = v30;
    v41 = *(v5 + 224);
    v31.n128_f64[0] = MEMORY[0x1EEE9AC00](IsNull);
    Path.mapPoints(_:)(partial apply for closure #1 in Path.convert(to:transform:), v36, v31);
    outlined consume of Path.Storage(v16, v17, v18, v19, v20);
    Path.formTrivialUnion(_:)(v36);
    outlined destroy of Path(v36);
    outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v10, v11, v33, v13);
LABEL_28:
    swift_endAccess();
    return;
  }

  if (v35 != 5)
  {
    v12 = v33;
    if (v35 != 6)
    {
      goto LABEL_36;
    }

LABEL_26:
    outlined consume of ShapeStyledResponderData<StyledTextContentView>?(v10, v11, v12, v13);
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = 6;
    goto LABEL_27;
  }

  if (*(*&v34.origin.x + 16))
  {
    if (*(*&v34.origin.x + 16) != 1)
    {
      outlined copy of Path.Storage(*&v34.origin.x, *&v34.origin.y, *&v34.size.width, *&v34.size.height, 5u);
      if (one-time initialization token for bufferCallbacks != -1)
      {
        swift_once();
      }

LABEL_33:
      IsEmpty = RBPathIsEmpty();
      outlined consume of Path.Storage(v16, v17, v18, v19, 5u);
      if (IsEmpty)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_20:
    outlined copy of Path.Storage(*&v34.origin.x, *&v34.origin.y, *&v34.size.width, *&v34.size.height, 5u);
    goto LABEL_33;
  }

  if (*(*&v34.origin.x + 24))
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_36:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall StyledTextResponder.extendPrintTree(string:)(Swift::String *string)
{
  swift_beginAccess();
  v2 = *(v1 + 240);
  v3 = *(v1 + 256);
  v4 = *(v1 + 208);
  v20 = *(v1 + 224);
  v21 = v2;
  v22 = v3;
  v5 = *(v1 + 176);
  v6 = *(v1 + 192);
  v7 = *(v1 + 144);
  v19[1] = *(v1 + 160);
  v19[2] = v5;
  v23 = *(v1 + 272);
  v19[3] = v6;
  v19[4] = v4;
  v16 = 0;
  v17 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 2;
  v18[0] = v6;
  v18[1] = v4;
  v18[2] = v20;
  v19[0] = v7;
  outlined init with copy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v19, &v12);
  specialized ApplyViewTransform.convert(to:transform:)(v14, v18);
  outlined destroy of CoordinateSpace(v14);
  outlined destroy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v19);
  v8 = v16;
  v9 = v17;
  v12 = 0;
  v13 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  MEMORY[0x193ABEDD0](4202589, 0xE300000000000000);
  v14[0] = v8;
  v14[1] = v9;
  type metadata accessor for (CGFloat, CGFloat)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v12, v13);
}

uint64_t StyledTextResponder.bindEvent(_:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride != 2)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    return 0;
  }

  if (one-time initialization token for envValue != -1)
  {
    swift_once();
  }

  v2 = static GestureContainerFeature.envValue;
  if (static GestureContainerFeature.envValue != 2)
  {
    goto LABEL_17;
  }

  if (one-time initialization token for userDefaultsValue != -1)
  {
    swift_once();
  }

  v2 = static GestureContainerFeature.userDefaultsValue;
  if (static GestureContainerFeature.userDefaultsValue != 2)
  {
LABEL_17:
    if (v2)
    {
      goto LABEL_18;
    }

    return 0;
  }

  v16 = &type metadata for GestureContainerFeature.IOSFeature;
  lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
  v17 = v3;
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v15);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v5 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    if (!dyld_program_sdk_at_least())
    {
      return 0;
    }
  }

  else if (static Semantics.forced < v5)
  {
    return 0;
  }

LABEL_18:
  outlined init with copy of AnyTrackedValue(a1, v14);
  HitTestableEvent.init(_:)(v14, v15);
  if (v15[2] == 1)
  {
    return 0;
  }

  v7 = 0;
  if (v20)
  {
    v8 = 0;
  }

  else
  {
    v8 = v19;
  }

  if ((v8 & 0x20) == 0)
  {
    v7 = ++static ViewResponder.hitTestKey;
  }

  if ((v8 & 4) != 0)
  {
    v14[0] = v8;
    LOBYTE(v13) = (v8 & 0x20) != 0;
    v11 = ViewResponder.singlePointHitTest(globalPoint:cacheKey:options:)(v7 | (v13 << 32), v14, *&v16, v17);
    outlined destroy of GesturePhase<TappableSpatialEvent>(v15, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
    result = v11;
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    hitPoints(point:radius:)(*&v16, v17, v18);
    v12 = v8;
    v13 = 0;
    LOBYTE(v14[0]) = (v8 & 0x20) != 0;
    ViewResponder.hitTest(globalPoints:weights:mask:cacheKey:options:)(v9, v10, &v13, v7 | (LOBYTE(v14[0]) << 32), &v12, v14);
    outlined destroy of GesturePhase<TappableSpatialEvent>(v15, &lazy cache variable for type metadata for HitTestableEvent?, &type metadata for HitTestableEvent, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);

    result = v14[0];
    if (!v14[0])
    {
      return 0;
    }
  }

  return result;
}

void StyledTextResponder.makeGesture(inputs:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v7[4] = a1[4];
  v7[5] = v4;
  v8[0] = a1[6];
  *(v8 + 12) = *(a1 + 108);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v6 = a1[3];
  v7[2] = a1[2];
  v7[3] = v6;

  specialized AnyGestureResponder.makeWrappedGesture(inputs:makeChild:)(v7, v2, a2);
}

void ResolvedStyledText.gesture.getter()
{
  v1 = *(v0 + 216);
  if (!v1)
  {
LABEL_7:
    type metadata accessor for AnyGestureStorage<EmptyGesture<()>>(0);
    swift_allocObject();
    return;
  }

  v14 = 0;
  v2 = one-time initialization token for kitLink;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static NSAttributedStringKey.kitLink;
  v5 = [v3 length];
  v6 = swift_allocObject();
  *(v6 + 16) = &v14;
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in NSAttributedString.hasLinkAttributes.getterpartial apply;
  *(v7 + 24) = v6;
  aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_49_0;
  v8 = _Block_copy(aBlock);

  [v3 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v8}];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v10 = v14;

    if (v10 == 1)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      *(v11 + 24) = v0;
      type metadata accessor for AnyGestureStorage<SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>>(0);
      v12 = swift_allocObject();
      *(v12 + 16) = partial apply for closure #1 in ResolvedStyledText.gesture.getter;
      *(v12 + 24) = v11;
      swift_retain_n();
      return;
    }

    goto LABEL_7;
  }

  __break(1u);
}

Swift::Void __swiftcall StyledTextResponder.resetGesture()()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
  *(v0 + 280) = 0;

  swift_beginAccess();
  v2 = *(v0 + 288);
  *(v0 + 288) = 0;
}

uint64_t StyledTextResponder.__ivar_destroyer()
{
  v1 = *(v0 + 96);
  v8[2] = *(v0 + 80);
  v8[3] = v1;
  v8[4] = *(v0 + 112);
  v9 = *(v0 + 128);
  v2 = *(v0 + 64);
  v8[0] = *(v0 + 48);
  v8[1] = v2;
  outlined destroy of _ViewInputs(v8);

  v3 = *(v0 + 256);
  v10[6] = *(v0 + 240);
  v10[7] = v3;
  v11 = *(v0 + 272);
  v4 = *(v0 + 192);
  v10[2] = *(v0 + 176);
  v10[3] = v4;
  v5 = *(v0 + 224);
  v10[4] = *(v0 + 208);
  v10[5] = v5;
  v6 = *(v0 + 160);
  v10[0] = *(v0 + 144);
  v10[1] = v6;
  outlined destroy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(v10);

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for AnyGestureResponder.inputs.getter in conformance StyledTextResponder@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v4 = *(v1 + 112);
  v10 = *(v1 + 96);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 128);
  v6 = *(v1 + 64);
  v9[0] = *(v1 + 48);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

void *protocol witness for AnyGestureResponder.childSubgraph.getter in conformance StyledTextResponder()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childSubgraph.setter in conformance StyledTextResponder(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 280);
  *(v1 + 280) = a1;
}

void *protocol witness for AnyGestureResponder.childViewSubgraph.getter in conformance StyledTextResponder()
{
  swift_beginAccess();
  v1 = *(v0 + 288);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childViewSubgraph.setter in conformance StyledTextResponder(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 288);
  *(v1 + 288) = a1;
}

uint64_t protocol witness for AnyGestureContainingResponder.eventSources.getter in conformance StyledTextResponder()
{
  v0 = StyledTextResponder.bindingBridge.getter();
  v1 = (*(*v0 + 160))(v0);

  return v1;
}

uint64_t protocol witness for AnyGestureContainingResponder.detachContainer() in conformance StyledTextResponder()
{
  swift_beginAccess();
  *(v0 + 320) = 0;
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for AnyGestureContainingResponder.isValid.getter in conformance StyledTextResponder()
{
  swift_beginAccess();
  if (*(v0 + 320))
  {
    return AGSubgraphIsValid();
  }

  else
  {
    return 0;
  }
}

double closure #1 in ResolvedStyledText.gesture.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;

  specialized Gesture<>.openURLOnEnded()(partial apply for closure #1 in closure #1 in ResolvedStyledText.gesture.getter, v10, v11);

  v12 = swift_allocObject();
  *(v12 + 16) = _ViewInputs.base.modify;
  *(v12 + 24) = 0;
  *a3 = v14;
  *(a3 + 16) = v15;
  result = *&v16;
  *(a3 + 32) = v16;
  *(a3 + 48) = v17;
  *(a3 + 56) = partial apply for specialized closure #1 in MapGesture.init(_:);
  *(a3 + 64) = v12;
  return result;
}

uint64_t closure #1 in closure #1 in ResolvedStyledText.gesture.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v54 = a4;
  v55 = a3;
  v56 = a5;
  v11 = MEMORY[0x1E6968FB0];
  v12 = MEMORY[0x1E69E6720];
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  v25 = a2[3];
  v60 = a2[2];
  *v61 = v25;
  *&v61[10] = *(a2 + 58);
  v26 = a2[1];
  v58 = *a2;
  v59 = v26;
  v52 = a1;
  outlined init with copy of GesturePhase<TappableSpatialEvent>(a1, v18, &lazy cache variable for type metadata for URL?, v11, v12, type metadata accessor for URL?);
  v27 = *(v20 + 48);
  if (v27(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v24, v18, v19);
    v35 = v55[27];
    v36 = *(v54 + 216);
    if (v35)
    {
      v37 = v56;
      if (!v36)
      {
        goto LABEL_31;
      }

      type metadata accessor for NSAttributedString();
      v38 = v36;
      v39 = v35;
      v40 = static NSObject.== infix(_:_:)();

      if ((v40 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v37 = v56;
      if (v36)
      {
        goto LABEL_31;
      }
    }

    if (v61[25] > 1u)
    {
      if (v61[25] != 2)
      {
LABEL_31:
        type metadata accessor for URL?(0, &lazy cache variable for type metadata for GesturePhase<URL>, MEMORY[0x1E6968FB0], type metadata accessor for GesturePhase);
        swift_storeEnumTagMultiPayload();
        return (*(v20 + 8))(v24, v19);
      }
    }

    else if (!v61[25])
    {
      if (v59 == 1)
      {
        (*(v20 + 56))(v37, 1, 1, v19);
      }

      else
      {
        (*(v20 + 16))(v37, v24, v19);
        (*(v20 + 56))(v37, 0, 1, v19);
      }

      goto LABEL_31;
    }

    (*(v20 + 16))(v37, v24, v19);
    goto LABEL_31;
  }

  v54 = v19;
  outlined destroy of GesturePhase<TappableSpatialEvent>(v18, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for URL?);
  v28 = *(&v60 + 1);
  v29 = *v61;
  if (v61[25] - 1 >= 2)
  {
    if (v61[25])
    {
      v34 = MEMORY[0x1E6968FB0];
      goto LABEL_22;
    }

    if (v59 == 1)
    {
      (*(v20 + 56))(v56, 1, 1, v54);
      type metadata accessor for URL?(0, &lazy cache variable for type metadata for GesturePhase<URL>, MEMORY[0x1E6968FB0], type metadata accessor for GesturePhase);
      return swift_storeEnumTagMultiPayload();
    }
  }

  v30 = *(*v55 + 288);
  v31 = outlined init with copy of GesturePhase<TappableSpatialEvent>(&v58, v57, &lazy cache variable for type metadata for GesturePhase<TappableSpatialEvent>, &type metadata for TappableSpatialEvent, type metadata accessor for GesturePhase, type metadata accessor for AnyGesture<()>);
  v30(v31, v28, v29, a6, a7);
  outlined destroy of GesturePhase<TappableSpatialEvent>(&v58, &lazy cache variable for type metadata for GesturePhase<TappableSpatialEvent>, &type metadata for TappableSpatialEvent, type metadata accessor for GesturePhase, type metadata accessor for AnyGesture<()>);
  v32 = v54;
  if (v27(v15, 1, v54) == 1)
  {
    v33 = MEMORY[0x1E6968FB0];
    outlined destroy of GesturePhase<TappableSpatialEvent>(v15, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for URL?);
    v34 = v33;
LABEL_22:
    type metadata accessor for URL?(0, &lazy cache variable for type metadata for GesturePhase<URL>, v34, type metadata accessor for GesturePhase);
    return swift_storeEnumTagMultiPayload();
  }

  v41 = v20;
  v42 = *(v20 + 32);
  v43 = v53;
  v42(v53, v15, v32);
  v44 = v52;
  outlined destroy of GesturePhase<TappableSpatialEvent>(v52, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for URL?);
  v45 = *(v41 + 16);
  v45(v44, v43, v32);
  v46 = *(v41 + 56);
  v46(v44, 0, 1, v32);
  if (v61[25] <= 1u)
  {
    v47 = v56;
    if (!v61[25])
    {
      v48 = v56;
      if (v59 == 1)
      {
        v49 = 1;
      }

      else
      {
        v45(v56, v43, v32);
        v48 = v47;
        v49 = 0;
      }

      v46(v48, v49, 1, v32);
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  if (v61[25] == 2)
  {
LABEL_27:
    v45(v56, v43, v32);
  }

LABEL_34:
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for GesturePhase<URL>, MEMORY[0x1E6968FB0], type metadata accessor for GesturePhase);
  swift_storeEnumTagMultiPayload();
  return (*(v41 + 8))(v43, v32);
}

double specialized Gesture<>.openURLOnEnded()(uint64_t a1, uint64_t a2, double a3)
{
  v19[0] = a1;
  v19[1] = a2;
  type metadata accessor for MainActor();
  v3 = one-time initialization token for v7;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  v5 = static Semantics.v7;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16;
  v16[2] = v19;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v7 = &static Semantics.forced;
  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for specialized closure #1 in Gesture<>.openURLOnEnded(), v16, "SwiftUICore/StyledTextResponder.swift", 37, 2u, 260, v8);
    goto LABEL_15;
  }

  if (static Semantics.forced >= v5)
  {
    goto LABEL_12;
  }

LABEL_7:
  v17 = 0xD000000000000032;
  v18 = 0x800000018DD7B040;
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v10 = v17;
  v9 = v18;
  if (pthread_main_np())
  {
    goto LABEL_13;
  }

  LOBYTE(v7) = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v11 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v7))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v17);

      *(v12 + 4) = v10;
      _os_log_impl(&dword_18D018000, v11, v7, "%s This warning will become a runtime crash in a future version of SwiftUI.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x193AC4820](v13, -1, -1);
      MEMORY[0x193AC4820](v12, -1, -1);
    }

    else
    {
LABEL_13:
    }

    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for specialized closure #1 in Gesture<>.openURLOnEnded();
    *(v9 + 24) = v6;
    v6 = 0;
    _sxs5Error_pIgrzo_xsAA_pIegrzo_s8SendableRzlTR7SwiftUI14OpenURLGesture33_E86B54AF130CC92E23B03D8EFE1DCF2ELLVyAC15ModifierGestureVyAC014StateContainerQ0VyAC18ResolvedStyledTextC7gestureAELLAC03AnyQ0VyytGvg0R0L_VAC20TappableSpatialEventV10Foundation3URLVGAC09SingleTapQ0VyATGGG_Tg5TA_0();
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_15:

  return result;
}

double OpenURLGesture.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, a1, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  (*(v5 + 32))(v10 + v9, v8, a1);
  Gesture.onEnded(_:)(partial apply for closure #1 in OpenURLGesture.body.getter, v10, v11, v12, a2);

  return result;
}

double closure #1 in OpenURLGesture.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 + *(type metadata accessor for OpenURLGesture(0, a3, a4, a4) + 36));
  v6 = v5[1];
  v15 = *v5;
  *v16 = v6;
  *&v16[15] = *(v5 + 31);
  specialized Environment.wrappedValue.getter(&v11);
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v15 = v11;
  *v16 = v12;
  v16[16] = v13;
  v16[17] = v14;
  specialized OpenURLAction._open(_:prefersInApp:completion:)(a1, 2, &v15);

  return outlined consume of OpenURLAction.Handler(v7, *(&v7 + 1), v8, *(&v8 + 1), v9);
}

uint64_t protocol witness for GestureStateProtocol.init() in conformance State #1 in ResolvedStyledText.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t outlined init with copy of ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContentResponderHelper<ShapeStyledResponderData<StyledTextContentView>>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized GestureGraph.init(rootResponder:)(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a2 + 184) = 0;
  swift_weakInit();
  *(a2 + 200) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for EventBindingManager();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 48) = MEMORY[0x1E69E7CC8];
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(a2 + 208) = v3;
  v5 = MEMORY[0x1E698D3F8];
  v6 = vld1q_dup_f32(v5);
  *(a2 + 232) = v6;
  *(a2 + 248) = v6;
  *(a2 + 272) = 0x7FF0000000000000;
  if (specialized static GestureContainerFeature.isEnabled.getter())
  {
    *(a2 + 184) = &protocol witness table for StyledTextResponder;
    swift_weakAssign();
    GraphHost.Data.init()(v16);
    v7 = AGSubgraphGetCurrent();
    v8 = *(&v16[0] + 1);
    AGSubgraphSetCurrent();
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x44uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 99))
    {
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 16963;
        *&v14[0] = v8;
        type metadata accessor for AGSubgraphRef(0);
        AGGraphAddTraceEvent();
      }
    }

    *(a2 + 216) = Attribute.init<A>(body:value:flags:update:)();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v4);
    type metadata accessor for [EventID : EventType](0);
    v9 = Attribute.init<A>(body:value:flags:update:)();

    *(a2 + 220) = v9;
    *(a2 + 224) = Attribute.init<A>(body:value:flags:update:)();
    *(a2 + 228) = Attribute.init<A>(body:value:flags:update:)();
    *(a2 + 264) = Attribute.init<A>(body:value:flags:update:)();
    v14[4] = v16[4];
    v14[5] = v16[5];
    v15 = v17;
    v14[0] = v16[0];
    v14[1] = v16[1];
    v14[2] = v16[2];
    v14[3] = v16[3];
    outlined init with copy of GraphHost.Data(v16, v13);
    v10 = GraphHost.init(data:)(v14);
    v11 = *(v10 + 208);
    swift_beginAccess();
    *(v11 + 24) = &protocol witness table for GestureGraph;
    swift_unknownObjectWeakAssign();

    $defer #1 () in GestureGraph.init(rootResponder:)(v7, v16);

    outlined destroy of GraphHost.Data(v16);

    return v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double outlined copy of ShapeStyledResponderData<StyledTextContentView>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

void type metadata accessor for AnyGestureStorage<EmptyGesture<()>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyGestureStorage<EmptyGesture<()>>)
  {
    type metadata accessor for AnyGesture<()>(255, &lazy cache variable for type metadata for EmptyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for EmptyGesture);
    v3 = v2;
    lazy protocol witness table accessor for type EmptyGesture<()> and conformance EmptyGesture<A>();
    v6 = type metadata accessor for AnyGestureStorage(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AnyGestureStorage<EmptyGesture<()>>);
    }
  }
}

void lazy protocol witness table accessor for type EmptyGesture<()> and conformance EmptyGesture<A>()
{
  if (!lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>)
  {
    type metadata accessor for AnyGesture<()>(255, &lazy cache variable for type metadata for EmptyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for EmptyGesture);
    swift_getWitnessTable(protocol conformance descriptor for EmptyGesture<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>);
  }
}

void type metadata accessor for AnyGestureStorage<SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyGestureStorage<SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>>)
  {
    type metadata accessor for SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(&lazy protocol witness table cache variable for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>, type metadata accessor for SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>, protocol conformance descriptor for SizeGesture<A>);
    v6 = type metadata accessor for AnyGestureStorage(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AnyGestureStorage<SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>>);
    }
  }
}

void type metadata accessor for SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>)
  {
    type metadata accessor for _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>(255);
    v3 = v2;
    lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(&lazy protocol witness table cache variable for type _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()> and conformance _MapGesture<A, B>, type metadata accessor for _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>, "Q\\%b");
    v6 = type metadata accessor for SizeGesture(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>>);
    }
  }
}

void type metadata accessor for _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>)
  {
    type metadata accessor for OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(&lazy protocol witness table cache variable for type OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>> and conformance OpenURLGesture<A>, type metadata accessor for OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, protocol conformance descriptor for OpenURLGesture<A>);
    v5 = type metadata accessor for _MapGesture(a1, v3, MEMORY[0x1E69E7CA8] + 8, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>);
    }
  }
}

void type metadata accessor for OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>)
  {
    type metadata accessor for ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(&lazy protocol witness table cache variable for type ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>, protocol conformance descriptor for ModifierGesture<A, B>);
    v6 = type metadata accessor for OpenURLGesture(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>)
  {
    type metadata accessor for StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>(255);
    v3 = v2;
    type metadata accessor for ShapeStyledResponderData<StyledTextContentView>(255, &lazy cache variable for type metadata for SingleTapGesture<TappableSpatialEvent>, &type metadata for TappableSpatialEvent, &protocol witness table for TappableSpatialEvent, type metadata accessor for SingleTapGesture);
    v5 = v4;
    lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(&lazy protocol witness table cache variable for type StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, protocol conformance descriptor for StateContainerGesture<A, B, C>);
    v7 = v6;
    lazy protocol witness table accessor for type SingleTapGesture<TappableSpatialEvent> and conformance SingleTapGesture<A>();
    v11[0] = v3;
    v11[1] = v5;
    v11[2] = v7;
    v11[3] = v8;
    v9 = type metadata accessor for ModifierGesture(a1, v11);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>)
  {
    v4[0] = type metadata accessor for State #1 in ResolvedStyledText.gesture.getter(255);
    v4[1] = &type metadata for TappableSpatialEvent;
    v4[2] = type metadata accessor for URL();
    v4[3] = &protocol witness table for State #1 in ResolvedStyledText.gesture.getter;
    v2 = type metadata accessor for StateContainerGesture(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>);
    }
  }
}

uint64_t type metadata accessor for State #1 in ResolvedStyledText.gesture.getter(uint64_t a1)
{
  result = type metadata singleton initialization cache for State #1 in ResolvedStyledText.gesture.getter;
  if (!type metadata singleton initialization cache for State #1 in ResolvedStyledText.gesture.getter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void lazy protocol witness table accessor for type SingleTapGesture<TappableSpatialEvent> and conformance SingleTapGesture<A>()
{
  if (!lazy protocol witness table cache variable for type SingleTapGesture<TappableSpatialEvent> and conformance SingleTapGesture<A>)
  {
    type metadata accessor for ShapeStyledResponderData<StyledTextContentView>(255, &lazy cache variable for type metadata for SingleTapGesture<TappableSpatialEvent>, &type metadata for TappableSpatialEvent, &protocol witness table for TappableSpatialEvent, type metadata accessor for SingleTapGesture);
    swift_getWitnessTable(protocol conformance descriptor for SingleTapGesture<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type SingleTapGesture<TappableSpatialEvent> and conformance SingleTapGesture<A>);
  }
}

void lazy protocol witness table accessor for type SizeGesture<_MapGesture<OpenURLGesture<ModifierGesture<StateContainerGesture<State #1 in ResolvedStyledText.gesture.getter, TappableSpatialEvent, URL>, SingleTapGesture<TappableSpatialEvent>>>, ()>> and conformance SizeGesture<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3, ...)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t objectdestroy_51Tm(uint64_t a1)
{

  return swift_deallocObject();
}

double partial apply for specialized closure #1 in Gesture<>.openURLOnEnded()@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *v4;
  v5 = v4[1];
  KeyPath = swift_getKeyPath();
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 47) = 0;

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for State #1 in ResolvedStyledText.gesture.getter(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for State #1 in ResolvedStyledText.gesture.getter(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *initializeWithCopy for State #1 in ResolvedStyledText.gesture.getter(void *a1, const void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithCopy for State #1 in ResolvedStyledText.gesture.getter(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *initializeWithTake for State #1 in ResolvedStyledText.gesture.getter(void *a1, const void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithTake for State #1 in ResolvedStyledText.gesture.getter(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void type metadata completion function for State #1 in ResolvedStyledText.gesture.getter(uint64_t a1)
{
  type metadata accessor for URL?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t type metadata completion function for OpenURLGesture(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for OpenURLGesture(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 35 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 34);
    v17 = *(v11 + 32);
    outlined copy of Environment<OpenURLAction>.Content(*v11, v13, v14, v15, v17, v16);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 24) = v15;
    *(v10 + 32) = v17;
    *(v10 + 34) = v16;
  }

  return v3;
}

double destroy for OpenURLGesture(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 34);
  v10 = *(v4 + 32);

  return outlined consume of Environment<OpenURLAction>.Content(v5, v6, v7, v8, v10, v9);
}

uint64_t initializeWithCopy for OpenURLGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 34);
  v14 = *(v8 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v10, v11, v12, v14, v13);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v14;
  *(v7 + 34) = v13;
  return a1;
}

uint64_t assignWithCopy for OpenURLGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 34);
  v14 = *(v8 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*v8, v10, v11, v12, v14, v13);
  v15 = *v7;
  v16 = *(v7 + 8);
  v17 = *(v7 + 16);
  v18 = *(v7 + 24);
  v19 = *(v7 + 34);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  v20 = *(v7 + 32);
  *(v7 + 32) = v14;
  *(v7 + 34) = v13;
  outlined consume of Environment<OpenURLAction>.Content(v15, v16, v17, v18, v20, v19);
  return a1;
}

uint64_t initializeWithTake for OpenURLGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 31);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 31) = v9;
  return a1;
}

uint64_t assignWithTake for OpenURLGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 32);
  v9 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v7 + 34);
  v11 = *v9;
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  v14 = *(v9 + 24);
  v15 = *(v9 + 34);
  v16 = *(v7 + 16);
  *v9 = *v7;
  *(v9 + 16) = v16;
  v17 = *(v9 + 32);
  *(v9 + 32) = v8;
  *(v9 + 34) = v10;
  outlined consume of Environment<OpenURLAction>.Content(v11, v12, v13, v14, v17, v15);
  return a1;
}

uint64_t getEnumTagSinglePayload for OpenURLGesture(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_23;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 35;
  v9 = (((v6 + 7) & 0xFFFFFFF8) + 35) & 0xFFFFFFFB;
  v10 = (a2 - v7 + 0xFFFFFF) >> 24;
  v11 = v9 == 3 ? v10 + 1 : 2;
  v12 = v11 < 0x100 ? 1 : 2;
  v13 = v11 >= 2 ? v12 : 0;
  if (!v13)
  {
    goto LABEL_23;
  }

  if (v13 != 2)
  {
    v14 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_18;
    }

LABEL_23:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 34);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v14 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_23;
  }

LABEL_18:
  v15 = (v14 << 24) - 0x1000000;
  if (v9 == 3)
  {
    v18 = *a1 | (*(a1 + 2) << 16);
  }

  else
  {
    v15 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v15) + 1;
}

void storeEnumTagSinglePayload for OpenURLGesture(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 35;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v11 = ((a3 - v8 + 0xFFFFFF) >> 24) + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    if (v14)
    {
      if (v14 != 2)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

LABEL_32:
        if (v7 < 0xFE)
        {
          v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v18 + 16) = 0;
            *(v18 + 24) = 0;
            *(v18 + 34) = 0;
            *(v18 + 32) = 0;
            *v18 = a2 - 255;
            *(v18 + 8) = 0;
          }

          else
          {
            *(v18 + 34) = -a2;
          }
        }

        else
        {
          v17 = *(v6 + 56);

          v17();
        }

        return;
      }

      *&a1[v10] = 0;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 35);
  if (v10 == 3)
  {
    v16 = HIBYTE(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    if (!v14)
    {
      return;
    }
  }

  else
  {
    *a1 = v15;
    if (!v14)
    {
      return;
    }
  }

  if (v14 == 2)
  {
    *&a1[v10] = v16;
  }

  else
  {
    a1[v10] = v16;
  }
}

double partial apply for closure #1 in OpenURLGesture.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for OpenURLGesture(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in OpenURLGesture.body.getter(a1, v9, v6, v7);
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v7 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v3 + 16);
      v6 = *(v4 + 16);
      if (v6 > result)
      {
        v2 = a2;
        v5 = 632 * result;
        outlined init with copy of PlatformItem(v4 + 32 + 632 * result, v9);
        if (v6 > v2)
        {
          v6 = 632 * v2;
          outlined init with copy of PlatformItem(v4 + 32 + 632 * v2, v8);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
LABEL_6:
        if (*(v4 + 16) <= v7)
        {
          __break(1u);
        }

        else
        {
          result = outlined assign with take of PlatformItem(v8, v4 + 32 + v5);
          *(v3 + 16) = v4;
          if (*(v4 + 16) > v2)
          {
            result = outlined assign with take of PlatformItem(v9, v4 + 32 + v6);
            *(v3 + 16) = v4;
            return result;
          }
        }

        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

{
  if (result != a2)
  {
    v11 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v12 = *(*v3 + 16);
      if (v12 > result)
      {
        v2 = a2;
        if (v12 > a2)
        {
          v13 = v4 + 32 + 40 * result;
          v20 = *v13;
          v19 = *(v13 + 8);
          v18 = *(v13 + 16);
          v17 = *(v13 + 24);
          v9 = *(v13 + 32);
          v14 = v4 + 32 + 40 * a2;
          v10 = *v14;
          v5 = *(v14 + 8);
          v6 = *(v14 + 16);
          v7 = *(v14 + 24);
          v8 = *(v14 + 32);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_6:
            v15 = v4 + 32 + 40 * v11;
            *v15 = v10;
            *(v15 + 8) = v5;
            *(v15 + 16) = v6;
            *(v15 + 24) = v7;
            *(v15 + 32) = v8;
            v16 = v4 + 32 + 40 * v2;
            *v16 = v20;
            *(v16 + 8) = v19;
            *(v16 + 16) = v18;
            *(v16 + 24) = v17;
            *(v16 + 32) = v9;
            *v3 = v4;
            return result;
          }

LABEL_11:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          v4 = result;
          goto LABEL_6;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

{
  if (result != a2)
  {
    v7 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v3;
      v8 = *(*v3 + 16);
      if (v8 > result)
      {
        v2 = a2;
        if (v8 > a2)
        {
          v5 = *(v4 + 32 + 8 * result);
          v6 = *(v4 + 32 + 8 * a2);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_6:
            *(v4 + 32 + 8 * v7) = v6;
            *(v4 + 32 + 8 * v2) = v5;
            *v3 = v4;
            return result;
          }

LABEL_11:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          v4 = result;
          goto LABEL_6;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

{
  if (result != a2)
  {
    v9 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v3;
      v10 = *(*v3 + 16);
      if (v10 > result)
      {
        v4 = a2;
        v5 = &v74;
        v8 = 208 * result;
        v11 = (v2 + 32 + 208 * result);
        v74 = *v11;
        v12 = v11[1];
        v13 = v11[2];
        v14 = v11[4];
        v77 = v11[3];
        v78 = v14;
        v75 = v12;
        v76 = v13;
        v15 = v11[5];
        v16 = v11[6];
        v17 = v11[8];
        v81 = v11[7];
        v82 = v17;
        v79 = v15;
        v80 = v16;
        v18 = v11[9];
        v19 = v11[10];
        v20 = v11[11];
        *(v85 + 12) = *(v11 + 188);
        v84 = v19;
        v85[0] = v20;
        v83 = v18;
        if (v10 > a2)
        {
          v7 = &v86;
          v6 = 208 * a2;
          v21 = (v2 + 32 + 208 * a2);
          v86 = *v21;
          v22 = v21[1];
          v23 = v21[2];
          v24 = v21[4];
          v89 = v21[3];
          v90 = v24;
          v87 = v22;
          v88 = v23;
          v25 = v21[5];
          v26 = v21[6];
          v27 = v21[8];
          v93 = v21[7];
          v94 = v27;
          v91 = v25;
          v92 = v26;
          v28 = v21[9];
          v29 = v21[10];
          v30 = v21[11];
          *(v97 + 12) = *(v21 + 188);
          v96 = v29;
          v97[0] = v30;
          v95 = v28;
          outlined init with copy of LayoutGestureBox.Child(&v74, v72);
          outlined init with copy of LayoutGestureBox.Child(&v86, v72);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v2 = result;
LABEL_6:
        if (*(v2 + 16) <= v9)
        {
          __break(1u);
        }

        else
        {
          v31 = v2 + 32;
          v32 = (v2 + 32 + v8);
          v70[0] = *v32;
          v33 = v32[1];
          v34 = v32[2];
          v35 = v32[4];
          v70[3] = v32[3];
          v70[4] = v35;
          v70[1] = v33;
          v70[2] = v34;
          v36 = v32[5];
          v37 = v32[6];
          v38 = v32[8];
          v70[7] = v32[7];
          v70[8] = v38;
          v70[5] = v36;
          v70[6] = v37;
          v39 = v32[9];
          v40 = v32[10];
          v41 = v32[11];
          *&v71[12] = *(v32 + 188);
          v70[10] = v40;
          *v71 = v41;
          v70[9] = v39;
          *v32 = v86;
          v42 = v87;
          v43 = v88;
          v44 = v90;
          v32[3] = v89;
          v32[4] = v44;
          v32[1] = v42;
          v32[2] = v43;
          v45 = v91;
          v46 = v92;
          v47 = v94;
          v32[7] = v93;
          v32[8] = v47;
          v32[5] = v45;
          v32[6] = v46;
          v48 = v95;
          v49 = v96;
          v50 = v97[0];
          *(v32 + 188) = *(v7 + 188);
          v32[10] = v49;
          v32[11] = v50;
          v32[9] = v48;
          result = outlined destroy of LayoutGestureBox.Child(v70);
          if (*(v2 + 16) > v4)
          {
            v51 = (v31 + v6);
            v72[0] = *(v31 + v6);
            v52 = *(v31 + v6 + 16);
            v53 = *(v31 + v6 + 32);
            v54 = *(v31 + v6 + 64);
            v72[3] = *(v31 + v6 + 48);
            v72[4] = v54;
            v72[1] = v52;
            v72[2] = v53;
            v55 = *(v31 + v6 + 80);
            v56 = *(v31 + v6 + 96);
            v57 = *(v31 + v6 + 128);
            v72[7] = *(v31 + v6 + 112);
            v72[8] = v57;
            v72[5] = v55;
            v72[6] = v56;
            v58 = *(v31 + v6 + 144);
            v59 = *(v31 + v6 + 160);
            v60 = *(v31 + v6 + 176);
            *(v73 + 12) = *(v31 + v6 + 188);
            v72[10] = v59;
            v73[0] = v60;
            v72[9] = v58;
            *v51 = v74;
            v61 = v75;
            v62 = v76;
            v63 = v78;
            v51[3] = v77;
            v51[4] = v63;
            v51[1] = v61;
            v51[2] = v62;
            v64 = v79;
            v65 = v80;
            v66 = v82;
            v51[7] = v81;
            v51[8] = v66;
            v51[5] = v64;
            v51[6] = v65;
            v67 = v83;
            v68 = v84;
            v69 = v85[0];
            *(v51 + 188) = *(v5 + 188);
            v51[10] = v68;
            v51[11] = v69;
            v51[9] = v67;
            result = outlined destroy of LayoutGestureBox.Child(v72);
            *v3 = v2;
            return result;
          }
        }

        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

Swift::Void __swiftcall MultiViewResponder.updateChildren(_:)(Swift::tuple_value_OpaquePointer_changed_Bool a1)
{
  if (a1.changed)
  {
    v3 = *(*v1 + 320);

    v3(v2);
  }
}

uint64_t MultiViewResponder.bindEvent(_:)(uint64_t a1)
{
  v3 = (*(*v1 + 208))();
  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_16:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AC03C0](v7, v4);
      if (__OFADD__(v7, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v8 = *(v4 + 8 * v7 + 32);

      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }
    }

    v9 = (*(*v8 + 96))(a1);

    ++v7;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

SwiftUI::ViewResponder::HitTestPolicy __swiftcall MultiViewResponder.hitTestPolicy(options:)(SwiftUI::ViewResponder::ContainsPointsOptions options)
{
  v3 = v1;
  if ((*(*v2 + 168))(options.rawValue) >= 0.001)
  {
    result = swift_beginAccess();
    if (static HitTestPassThroughFeature.overrideValue == 2)
    {
      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v6 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      result = swift_beginAccess();
      if (byte_1ED53C51C)
      {
        result = dyld_program_sdk_at_least();
        if (result)
        {
          goto LABEL_12;
        }

LABEL_14:
        v5 = 0;
        goto LABEL_15;
      }

      if (static Semantics.forced < v6)
      {
        goto LABEL_14;
      }
    }

    else if ((static HitTestPassThroughFeature.overrideValue & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    v5 = 2;
    goto LABEL_15;
  }

  v5 = 1;
LABEL_15:
  *v3 = v5;
  return result;
}

void MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>)
{
  v5 = v4;
  v9 = *a3;
  v33[0] = *a3;
  v10 = (*(*v4 + 176))(&v32, v33);
  if (v32 == 1)
  {
    v11 = (*(*v4 + 208))(v10);
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = v11;
    return;
  }

  v31 = a2 & 0x100000000;
  v12 = *(v4 + 72);
  if (!v12 || (v13 = *(v4 + 48), (v13 & 0x100000000) != 0) || v31 || v13 != a2)
  {
    v15 = *(*v4 + 208);
    v16 = v15();
    v17 = v16;
    if (v16 >> 62)
    {
      v18 = __CocoaSet.count.getter();
      if (v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_12:
        v30 = a4;
        if (v18 < 1)
        {
          __break(1u);
          return;
        }

        v19 = 0;
        v20 = 0;
        a2 = a2;
        v21 = 0.0;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x193AC03C0](v19, v17);
          }

          else
          {
            v22 = *(v17 + 8 * v19 + 32);
          }

          v33[0] = v9;
          (*(*v22 + 176))(&v32, v33);
          if (v32 == 1)
          {
          }

          else
          {
            v32 = v9;
            v23 = *(*v22 + 184);
            LOBYTE(v33[0]) = v31 != 0;
            v23(v33, a1, a2 | ((v31 != 0) << 32), &v32);

            v24 = v33[0];
            v25 = *&v33[1];

            v20 |= v24;
            if (v21 <= v25)
            {
              v21 = v25;
            }
          }

          ++v19;
        }

        while (v18 != v19);

        a4 = v30;
        v27 = (v15)(v26);
LABEL_26:
        v29 = v27;
        *(v5 + 48) = v31 | a2;
        *(v5 + 56) = v20;
        *(v5 + 64) = v21;
        *(v5 + 72) = v27;

        *a4 = v20;
        a4[1] = v21;
        *(a4 + 2) = v29;
        return;
      }
    }

    v20 = 0;
    a2 = a2;
    v21 = 0.0;
    v27 = (v15)(v28);
    goto LABEL_26;
  }

  v14 = *(v4 + 64);
  *a4 = *(v4 + 56);
  *(a4 + 1) = v14;
  *(a4 + 2) = v12;
}

double MultiViewResponder.addContentPath(to:kind:in:observer:)(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v10 = *a2;
  if (!a4)
  {
    goto LABEL_14;
  }

  v23 = a3;
  swift_beginAccess();
  v11 = v5[10];
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_9:
    v25 = a5;
    swift_unknownObjectWeakInit();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5[10] = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v8 = 0;
  v13 = v11 + 32;
  while (1)
  {
    if (v8 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    outlined init with copy of ContentPathObservers.Observer(v13, v24);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of ContentPathObservers.Observer(v24);
    if (Strong)
    {
      swift_unknownObjectRelease();
      if (Strong == a4)
      {
        break;
      }
    }

    ++v8;
    v13 += 16;
    if (v12 == v8)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    swift_endAccess();
    v8 = v23;
LABEL_14:
    v18 = (*(*v5 + 208))();
    v11 = v18;
    if (v18 >> 62)
    {
LABEL_23:
      v19 = __CocoaSet.count.getter();
      if (!v19)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_24;
      }
    }

    if (v19 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_26:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    v5[10] = v11;
LABEL_10:
    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    if (v17 >= v16 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v11);
    }

    *(v11 + 16) = v17 + 1;
    outlined init with take of ContentPathObservers.Observer(v24, v11 + 16 * v17 + 32);
    v5[10] = v11;
  }

  v20 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x193AC03C0](v20, v11);
    }

    else
    {
      v21 = *(v11 + 8 * v20 + 32);
    }

    ++v20;
    v26[0] = v10;
    (*(*v21 + 192))(a1, v26, v8, a4, a5);
  }

  while (v19 != v20);
LABEL_24:

  return result;
}

double MultiViewResponder.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  ContentPathObservers.add(observer:)(a1, a2);
  swift_endAccess();
  return result;
}

double MultiViewResponder.children.getter()
{
  swift_beginAccess();

  return result;
}

void MultiViewResponder.features.getter(_WORD *a1@<X8>)
{
  v3 = (*(*v1 + 208))();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AC03C0](v6, v4);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      (*(*v8 + 216))(&v10);

      v7 |= v10;
      ++v6;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v4 + 8 * v6 + 32);

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v7 = 0;
LABEL_15:

  *a1 = v7;
}

void (*MultiViewResponder.children.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 40);

  return MultiViewResponder.children.modify;
}